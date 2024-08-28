struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -527f;

var<private> global1: Struct_3;

var<private> global2: i32 = -1i;

var<private> global3: array<vec3<bool>, 24>;

var<private> global4: Struct_3;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> u32 {
    global3 = array<vec3<bool>, 24>();
    var var_0 = arg_1;
    global1 = Struct_3(arg_1.e, global1.b, ~global4.b.e.a.xz, global4.b.e, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.c, global1.b.c, -530f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.e * vec3<f32>(729f, -122f, var_0.c)) * global4.e))));
    let var_1 = ~global4.a.d;
    global2 = min(-global4.b.e.a.x, -38288i);
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(~(~global1.b.a)), reverseBits(firstTrailingBit(global4.b.a) >> (vec4<u32>(13980u, 1u, 25827u, 41639u) % vec4<u32>(32u)))), 69086u);
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(round(-733f));
    var var_1 = !(!global3[_wgslsmith_index_u32(global4.a.c, 24u)]);
    return Struct_3(Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -12162i, u_input.d) & u_input.a, -global4.b.e.a, _wgslsmith_add_vec3_i32(global1.a.a, vec3<i32>(global1.a.a.x, arg_1.x, arg_1.x))), vec3<i32>(~(-1i), ~u_input.d, ~arg_1.x)), 4294967295u, 1u, 0u, _wgslsmith_mult_u32(~1u, 1u)), Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.b.e.c, 60050u, u_input.e, global4.a.b), global4.b.a), 1u, _wgslsmith_mod_u32(34998u, global4.d.e), global4.d.c & global4.b.b) >> (vec4<u32>(_wgslsmith_mod_u32(6391u, 40752u), 42240u, func_3(global1.b.c, Struct_2(vec4<u32>(u_input.e, global1.b.b, global1.b.a.x, global1.a.c), 4294967295u, 526f, u_input.a, global1.d), true), global4.a.b) % vec4<u32>(32u)), global4.b.e.c, _wgslsmith_f_op_f32(global1.e.x - global1.e.x), vec3<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.b), vec4<i32>(u_input.b.x, global1.d.a.x, global1.c.x, 0i)), ~(global1.a.a.x | -40437i), 36960i), global1.d), vec2<i32>(1i, arg_1.x), Struct_1(vec3<i32>(global4.b.d.x, i32(-1i) * -global4.c.x, firstTrailingBit(global4.b.e.a.x)), func_3(var_0, global1.b, false), global1.b.b, ~(~select(global1.a.e, u_input.c, true)), ~(~global1.a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(floor(global1.b.c)), _wgslsmith_f_op_f32(sign(global1.e.x))))));
}

fn func_1() -> Struct_1 {
    var var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.c - _wgslsmith_f_op_f32(max(global1.e.x, global4.e.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-421f, global1.b.c, true)) - _wgslsmith_f_op_f32(round(1284f)))) <= _wgslsmith_f_op_f32(-global1.b.c));
    global1 = func_2(all(vec4<bool>(true, true, true, true)), vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(-28422i, global1.a.a.x), global4.b.e.a.yy, u_input.b.xz), _wgslsmith_f_op_f32(trunc(global4.e.x)));
    global4 = func_2(any(vec4<bool>(all(global3[_wgslsmith_index_u32(81811u, 24u)]), all(vec3<bool>(true, true, true)), true, all(vec4<bool>(true, true, true, true)))), vec2<i32>(0i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b) | ~_wgslsmith_dot_vec2_i32(global1.b.d.zz, global1.d.a.xz)), 151f);
    var var_1 = global1.b.c >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-211f)) + func_2(1u <= (global4.b.b >> (1u % 32u)), -vec2<i32>(u_input.d, -1i), _wgslsmith_div_f32(global4.e.x, 129f)).b.c);
    let var_2 = ~(-12242i);
    return Struct_1(-(~vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), 1i, -2147483647i)), 79525u >> (func_3(global4.e.x, global4.b, !(-569f == global1.e.x)) % 32u), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.e, 30738u << (global1.d.e % 32u)), _wgslsmith_mult_u32(1u, 0u)) >> (global1.b.b % 32u), 11313u, ~_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(32623u, 4294967295u, u_input.c), global4.b.a.zzz), _wgslsmith_add_u32(1u, 0u << (global4.a.b % 32u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    global1 = Struct_3(arg_1, Struct_2(~(global1.b.a << (vec4<u32>(global4.d.b, global1.b.a.x, 37766u, global4.d.e) % vec4<u32>(32u))), _wgslsmith_div_u32(~0u, arg_0.b), -663f, vec3<i32>(global4.b.e.a.x, arg_0.d.x, ~2147483647i), func_1()), vec2<i32>(arg_0.d.x, _wgslsmith_div_i32(i32(-1i) * -7683i, u_input.d)), global1.a, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(975f * arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(535f)) * _wgslsmith_f_op_f32(-global4.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -383f))))));
    var var_0 = Struct_1(arg_1.a, ~78657u, ~arg_1.c, ~(~global4.b.e.e) << (_wgslsmith_mod_u32(0u, ~_wgslsmith_mod_u32(4294967295u, global4.b.a.x)) % 32u), arg_0.a.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f))));
    let var_1 = Struct_3(arg_1, global1.b, global1.b.d.yx, arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(floor(783f)), _wgslsmith_f_op_f32(select(arg_2, -743f, true)))))));
    global2 = -34885i;
    return select(select(!vec3<bool>(628f <= var_1.e.x, false, true), vec3<bool>(true, true, true != any(global3[_wgslsmith_index_u32(global4.a.b, 24u)])), any(vec2<bool>(true, true))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~arg_0.a.x, u_input.e), _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(func_2(true, vec2<i32>(u_input.d, global4.c.x), 579f).a.c, ~var_0.d, ~0u))), 24u)], !global3[_wgslsmith_index_u32(~16976u, 24u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true && (false || any(vec2<bool>(false, true))), any(func_4(Struct_2(select(global1.b.a, vec4<u32>(1u, 24155u, 29067u, 9525u), vec4<bool>(true, false, false, true)), ~u_input.e, -113f, vec3<i32>(1i, global1.b.e.a.x, global4.b.d.x), func_1()), Struct_1(vec3<i32>(global1.a.a.x, 2147483647i, -17211i), ~u_input.e, firstTrailingBit(u_input.e), 7541u >> (0u % 32u), 86585u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.e.x))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(431f)) - 343f);
    var var_1 = max(vec3<i32>(~reverseBits(global1.a.a.x), (14900i >> (0u % 32u)) & (-2147483647i & u_input.a.x), global4.d.a.x | firstLeadingBit(-12342i)), countOneBits(u_input.a));
    var var_2 = global1.b;
    var var_3 = select(vec3<bool>(false, !var_0.x, var_0.x), !vec3<bool>(var_0.x, select(global4.e.x == -1348f, false, var_0.x), !(!var_0.x)), all(!vec3<bool>(any(vec2<bool>(false, var_0.x)), !var_0.x, var_0.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.e.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_2.c, 1091f)), _wgslsmith_f_op_f32(-global4.b.c), true)), _wgslsmith_div_f32(275f, _wgslsmith_f_op_f32(var_2.c - -728f)), global4.b.c));
    let x = u_input.a;
    s_output = StorageBuffer(global4.b.a.x, _wgslsmith_mod_i32(var_1.x, _wgslsmith_mod_i32(global1.b.e.a.x, ~1i)), vec2<u32>(var_2.b, u_input.e), ~var_2.d.zy);
}

