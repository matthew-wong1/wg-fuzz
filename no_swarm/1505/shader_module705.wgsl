struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 29>;

var<private> global3: vec4<i32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = arg_1;
    let var_1 = Struct_1(countOneBits(vec4<i32>(2147483647i, ~(-u_input.b), global3.x, _wgslsmith_mod_i32(arg_1.a.x, -arg_1.c.x))), !arg_1.b, global0.c);
    let var_2 = max(~reverseBits(vec2<i32>(global0.a.x, var_1.c.x)), ~(vec2<i32>(-1i >> (arg_2 % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, arg_3.c.x, 21067i, 23282i), vec4<i32>(-8736i, arg_3.c.x, 1i, u_input.b))) | max(abs(vec2<i32>(u_input.e.x, global0.a.x)), arg_3.a.wx << (u_input.c % vec2<u32>(32u)))));
    global3 = var_0.c << (_wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(global1.x, u_input.c.x, 1u, global1.x)), vec4<u32>(arg_2, u_input.d, arg_2, u_input.d)), vec4<u32>(1u, 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 26536u, 23349u, 21079u), vec4<u32>(0u, u_input.d, arg_2, arg_2)), 3045u), vec4<u32>(4294967295u, 25065u, ~(~arg_2), _wgslsmith_mult_u32(1u, global1.x) >> (77126u % 32u))) % vec4<u32>(32u));
    var var_3 = select(select(vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1577f) <= _wgslsmith_f_op_f32(exp2(arg_0.x))), vec2<bool>(all(!vec3<bool>(true, var_0.b, false)), var_0.b), select(vec2<bool>(any(vec2<bool>(false, arg_1.b)), var_1.b), !vec2<bool>(false, var_0.b), vec2<bool>(arg_3.b || false, true))), select(vec2<bool>(var_1.b, false), select(vec2<bool>(any(vec4<bool>(true, arg_3.b, var_1.b, false)), arg_1.b), select(!vec2<bool>(true, arg_1.b), select(vec2<bool>(false, arg_1.b), vec2<bool>(arg_1.b, true), vec2<bool>(true, var_1.b)), vec2<bool>(true, arg_3.b)), arg_1.b), select(global1.x, ~u_input.c.x, false) < arg_2), any(!select(!vec4<bool>(var_0.b, arg_3.b, false, true), select(vec4<bool>(false, var_1.b, false, false), vec4<bool>(arg_3.b, true, var_0.b, false), arg_3.b), !arg_1.b)));
    return 68772u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> vec4<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-336f, -1437f)))), _wgslsmith_f_op_f32(select(-401f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(818f, 511f)))), any(!select(vec4<bool>(true, false, global0.b, false), vec4<bool>(false, true, true, true), arg_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1282f))))));
    let var_1 = -vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(-global3.xw, global0.a.zw), global0.c.x, ~_wgslsmith_div_i32(arg_0.c.x, 1i));
    let var_2 = firstLeadingBit(~(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, -1i), vec2<i32>(var_1.x, 1i)), i32(-1i) * -8221i, -2147483647i)));
    var var_3 = arg_0;
    global0 = Struct_1(~(-(~(u_input.e << (vec4<u32>(47585u, 1u, 1u, arg_3.x) % vec4<u32>(32u))))), var_3.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(~var_3.a.zw, _wgslsmith_sub_vec2_i32(var_2.xz, var_1.xw)), -abs(1448i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a.x, var_2.x), u_input.e.zz)), select(vec4<i32>(-1i, -75249i, 1i, 0i), global0.c, !(!vec4<bool>(var_3.b, arg_1.b, global0.b, arg_1.b))), arg_1.c));
    return reverseBits(abs(vec4<u32>(22389u, global1.x & 40605u, 7181u ^ u_input.c.x, 1u))) & abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 14834u, 51113u, u_input.d), vec4<u32>(10701u, u_input.d, 0u, 577u)) << (abs(min(vec4<u32>(arg_3.x, u_input.d, 1u, 2147u), vec4<u32>(44274u, 4294967295u, 1u, arg_3.x))) % vec4<u32>(32u)));
}

fn func_2() -> u32 {
    global1 = func_4(Struct_1(vec4<i32>(~(u_input.e.x ^ global3.x), _wgslsmith_dot_vec2_i32(global0.a.zz & global0.a.zw, vec2<i32>(-1i, -2147483647i)), 18748i, max(-global0.c.x, global0.a.x | global3.x)), select(global1.x, _wgslsmith_clamp_u32(u_input.a, global1.x, 982u), !global0.b) > 1835u, vec4<i32>(1i, u_input.b, u_input.b, firstTrailingBit(global0.c.x))), global2[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(417f, -470f, 1000f, 1000f) + vec4<f32>(-807f, -349f, -357f, 1163f)))), Struct_1(_wgslsmith_div_vec4_i32(u_input.e, u_input.e), any(vec3<bool>(true, true, true)), vec4<i32>(global0.a.x >> (93083u % 32u), -54454i, -1i << (u_input.d % 32u), -41167i)), min(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 1u, 12019u, global1.x) ^ vec4<u32>(global1.x, u_input.c.x, 42336u, global1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, global1.x, u_input.a, u_input.d), vec4<u32>(4294967295u, 1u, u_input.c.x, global1.x))), _wgslsmith_clamp_u32(u_input.a ^ global1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(87555u, u_input.a), vec2<u32>(u_input.d, global1.x)), _wgslsmith_clamp_u32(1u, global1.x, global1.x))), Struct_1(~(u_input.e | global0.c), !global0.b | (u_input.e.x != 22355i), -(~vec4<i32>(-1i, global0.a.x, 2147483647i, u_input.b)))), 29u)], 11881i, _wgslsmith_clamp_vec3_u32(global1.yxw, abs(global1.xyx), global1.xxw));
    global0 = global2[_wgslsmith_index_u32(~abs(max(~firstLeadingBit(u_input.a), ~(global1.x & global1.x))), 29u)];
    global3 = u_input.e;
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1470f))) + 525f)));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(global1.wy & abs(vec2<u32>(u_input.c.x, 62041u))), ~vec2<u32>(_wgslsmith_mult_u32(u_input.a, 4294967295u), 4294967295u)), 29u)];
    return ~59400u;
}

fn func_1(arg_0: bool) -> f32 {
    global0 = Struct_1(u_input.e, !((~global3.x >> (func_2() % 32u)) > 1i), vec4<i32>(25960i, abs(-26577i), u_input.b, global0.a.x) | (vec4<i32>(u_input.b | 0i, u_input.e.x, global3.x, max(-13621i, global3.x)) | global0.a));
    var var_0 = global2[_wgslsmith_index_u32(countOneBits(4294967295u), 29u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-144f, -154f))), _wgslsmith_f_op_f32(-1151f - _wgslsmith_f_op_f32(f32(-1f) * -464f)))));
    var var_2 = select(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(var_0.b, true, true), vec3<bool>(true, true, var_0.b), false), !vec3<bool>(arg_0, global0.b, true), !vec3<bool>(var_0.b, arg_0, true)), !(!vec3<bool>(arg_0, false, arg_0)), !(!vec3<bool>(var_0.b, false, global0.b))), all(select(!vec4<bool>(var_0.b, var_0.b, true, arg_0), vec4<bool>(arg_0, true, global0.b, global0.b), !vec4<bool>(var_0.b, false, false, false)))), !(!(!(!vec3<bool>(arg_0, true, var_0.b)))), !vec3<bool>(true, !any(vec3<bool>(var_0.b, var_0.b, global0.b)), false));
    let var_3 = vec4<bool>(all(vec3<bool>(false, true, global0.b)), !(var_0.b & true) | any(!vec4<bool>(arg_0, arg_0, global0.b, false)), false, (var_0.c.x != 15994i) && ((var_1.x > _wgslsmith_f_op_f32(min(-199f, 879f))) == (var_1.x == _wgslsmith_f_op_f32(-var_1.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 29>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1027f)) - _wgslsmith_f_op_f32(-1284f - -503f)) + _wgslsmith_f_op_f32(func_1(!global0.b)))), _wgslsmith_f_op_f32(min(285f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1366f))))))), -1694f, _wgslsmith_f_op_f32(1616f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1042f, -701f)))))));
    var var_1 = -(~(~4111i));
    let var_2 = u_input.e.xz;
    var_1 = u_input.b;
    let var_3 = _wgslsmith_mod_u32(max(29116u, u_input.d), u_input.d);
    global0 = global2[_wgslsmith_index_u32(u_input.c.x, 29u)];
    global3 = _wgslsmith_add_vec4_i32(~u_input.e, countOneBits(u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -_wgslsmith_mult_i32(2147483647i, -1i), 26113u, _wgslsmith_f_op_f32(func_1(!all(!vec4<bool>(global0.b, global0.b, global0.b, true)))), var_0.x, var_2.x);
}

