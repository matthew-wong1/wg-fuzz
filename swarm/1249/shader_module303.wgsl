struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_div_f32(-1987f, 1403f), -1747f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -517f), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 0u), 22u)]))));
    global1 = Struct_1(false | select(true, _wgslsmith_f_op_f32(global1.b.x - global1.b.x) > _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 22u)] + 780f), any(!vec4<bool>(global1.a, false, true, true))), global1.b, select(vec2<bool>(any(vec3<bool>(global1.a, true, false)), true), global1.c, !select(select(vec2<bool>(global1.c.x, false), global1.c, true), !global1.c, global1.c)), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(149f, _wgslsmith_f_op_f32(2138f * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], -526f)) * _wgslsmith_div_f32(-1281f, 597f))) - _wgslsmith_f_op_vec3_f32(-var_0.yyz)) * _wgslsmith_f_op_vec3_f32(abs(var_0.xxw)));
    let var_2 = reverseBits(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 1u, u_input.a.x), min(u_input.a, vec3<u32>(1u, 7624u, 0u))) & u_input.a) & u_input.a;
    var var_3 = !(!(!select(global1.c, select(vec2<bool>(global1.a, global1.d), vec2<bool>(global1.c.x, false), true), vec2<bool>(global1.c.x, false))));
    return true;
}

fn func_2(arg_0: i32) -> Struct_5 {
    global1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b))))), vec2<bool>(global1.d, func_3(~(1i << (u_input.b % 32u)))), func_3(-arg_0));
    var var_0 = vec3<u32>(abs(u_input.b), ~(((u_input.b << (1007u % 32u)) << ((u_input.a.x >> (u_input.b % 32u)) % 32u)) << (u_input.a.x % 32u)), ~19708u);
    var var_1 = select(-(~(-reverseBits(vec4<i32>(-12886i, arg_0, arg_0, -2147483647i)))), vec4<i32>(_wgslsmith_div_i32(-(~u_input.c), arg_0), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, arg_0), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(u_input.c, 2147483647i))), select(vec2<i32>(1i, arg_0), vec2<i32>(9228i, 2147483647i), global1.d) & firstLeadingBit(vec2<i32>(u_input.c, -1i))), ~(-19788i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~u_input.c, -2147483647i, u_input.c ^ 1i), arg_0, -(1159i << (1u % 32u)))), !vec4<bool>(false & (global0[_wgslsmith_index_u32(var_0.x, 22u)] >= global1.b.x), global1.a, all(vec3<bool>(true, true, true)), !global1.c.x));
    var_0 = vec3<u32>(4294967295u, u_input.b, var_0.x);
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_1.x, i32(-1i) * -29046i), var_1.x, 37645i);
    return Struct_5(var_1.xz, u_input.a.x ^ u_input.b);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = firstLeadingBit(~_wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_1.a.x, u_input.c, arg_0.a.x, -1i)) >> (~vec4<u32>(u_input.b, u_input.b, u_input.b, arg_0.b) % vec4<u32>(32u)), reverseBits(-vec4<i32>(-1i, 1i, 2147483647i, 13845i))));
    global0 = array<f32, 22>();
    let var_1 = -_wgslsmith_div_i32(0i, -11988i | var_0.x);
    global1 = Struct_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.zx) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-704f + 1000f)))), !(!vec2<bool>(true, !arg_3.x)), true);
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, select(u_input.a, vec3<u32>(73191u, arg_1.b, u_input.a.x), true)), vec3<u32>(1u, arg_1.b & arg_1.b, arg_0.b | u_input.a.x)), 22903u), u_input.a.zy);
    return Struct_1(global1.c.x && (!arg_3.x | (-692f < _wgslsmith_f_op_f32(max(-240f, global0[_wgslsmith_index_u32(arg_0.b, 22u)])))), vec2<f32>(_wgslsmith_f_op_f32(round(-402f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(max(arg_2.x, global1.b.x)))) + -218f)), arg_3, !(!(arg_1.a.x > ~(-2147483647i))));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_3(func_4(func_2(firstTrailingBit(~u_input.c)), func_2(~_wgslsmith_sub_i32(2667i, 30321i)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-379f, global1.b.x))), global1.c), Struct_2(func_4(Struct_5(min(arg_1.yy, vec2<i32>(3786i, u_input.c)), u_input.b), func_2(u_input.c), _wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1343f, 1490f, global1.b.x))), global1.c)));
    var var_1 = vec4<bool>(!all(!vec4<bool>(arg_0, false, true, arg_2)), !arg_2, arg_1.x <= _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -2147483647i, u_input.c), vec3<i32>(arg_1.x, arg_1.x, -88263i)), select(reverseBits(arg_1.xyz), vec3<i32>(u_input.c, arg_1.x, -1i), !vec3<bool>(false, var_0.a.d, global1.a))), func_3(_wgslsmith_sub_i32(u_input.c << (4294967295u % 32u), firstLeadingBit(u_input.c))) & any(vec2<bool>(all(vec2<bool>(false, false)), func_3(-16973i))));
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.b.x)), var_0.b.a.b.x)) > _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.b, u_input.b, 28272u), vec4<u32>(u_input.a.x, 1u, u_input.b, u_input.b)), 22u)]), true);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - -450f)))) + -1704f);
    let var_4 = vec4<f32>(-669f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 22u)]))), -178f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.b.x * global1.b.x))))))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(718f)) + global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, 35965u), vec4<u32>(0u, u_input.a.x, 0u, 1u)), 22u)]) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b.x))) + 1125f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.xy + _wgslsmith_f_op_vec2_f32(-global1.b)) + vec2<f32>(_wgslsmith_div_f32(-931f, _wgslsmith_div_f32(global1.b.x, global1.b.x)), _wgslsmith_f_op_f32(func_4(Struct_5(arg_1.xy, 1u), Struct_5(arg_1.xx, 7243u), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], var_0.a.b.x, global1.b.x), var_1.xx).b.x + _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a.x, 22u)]))))), vec2<bool>(false, false == any(vec3<bool>(false, global1.a, false))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(abs(4294967295u), 22u)];
    global1 = func_1(any(vec2<bool>(true & (u_input.c >= u_input.c), u_input.c < u_input.c)), vec4<i32>(u_input.c >> ((~u_input.b << (abs(u_input.b) % 32u)) % 32u), ~u_input.c | -firstLeadingBit(-1i), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(21160i, u_input.c, u_input.c, -37708i), vec4<i32>(-48707i, u_input.c, -20754i, u_input.c) << (vec4<u32>(67757u, 0u, 4294967295u, u_input.b) % vec4<u32>(32u)), global1.c.x), ~vec4<i32>(2147483647i, -32971i, u_input.c, -1i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 12488u, 4294967295u, 62009u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b)) % vec4<u32>(32u))), -41146i), true);
    global1 = func_1(true, _wgslsmith_add_vec4_i32(vec4<i32>(-abs(-38916i), ~u_input.c, -1i & _wgslsmith_sub_i32(u_input.c, u_input.c), 27618i), -abs(vec4<i32>(-12554i, u_input.c, u_input.c, u_input.c))), false);
    var var_1 = Struct_5(_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(u_input.c, 1i)), abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c))), -vec2<i32>(u_input.c, 0i)) ^ -(vec2<i32>(-1i, u_input.c) & (vec2<i32>(-48278i, u_input.c) << (vec2<u32>(4058u, 4294967295u) % vec2<u32>(32u)))), 1u);
    var var_2 = vec3<bool>(any(!vec3<bool>(true, false, global1.a && global1.c.x)), !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(619f - global0[_wgslsmith_index_u32(var_1.b, 22u)]))) > _wgslsmith_f_op_f32(select(func_1(global1.c.x, vec4<i32>(var_1.a.x, var_1.a.x, u_input.c, u_input.c), true).b.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.b, 22u)]), any(vec4<bool>(global1.a, global1.a, false, global1.a))))), -55377i >= ~_wgslsmith_dot_vec4_i32(max(vec4<i32>(5038i, 20044i, var_1.a.x, 1i), vec4<i32>(var_1.a.x, 21298i, 0i, 24108i)), vec4<i32>(u_input.c, var_1.a.x, u_input.c, -1i) << (vec4<u32>(35194u, var_1.b, u_input.a.x, u_input.b) % vec4<u32>(32u))));
    var var_3 = vec4<bool>(u_input.a.x == 25772u, !(all(vec2<bool>(true, true)) | (~33267u < select(39265u, 3303u, global1.a))), true, var_2.x || global1.a);
    var_2 = var_3.wyw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-647f + global0[_wgslsmith_index_u32(0u, 22u)]) + _wgslsmith_f_op_f32(-global1.b.x)), select(vec4<i32>(-26916i, _wgslsmith_div_i32(-14302i >> (var_1.b % 32u), countOneBits(u_input.c)), abs(25533i), reverseBits(~1i)), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(39366i, u_input.c, 0i, -2147483647i)), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-6483i, -1i, u_input.c, 1i), vec4<i32>(-1i, 2147483647i, var_1.a.x, u_input.c)))), false));
}

