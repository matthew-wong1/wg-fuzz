struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -842f;

var<private> global1: array<i32, 18>;

var<private> global2: array<i32, 25> = array<i32, 25>(i32(-2147483648), i32(-2147483648), -24138i, 1i, 63939i, 2147483647i, i32(-2147483648), i32(-2147483648), 0i, 12313i, -1i, -7143i, 2147483647i, 2147483647i, -9634i, 45667i, -8622i, i32(-2147483648), -9717i, 9911i, 0i, -38857i, -13972i, 2147483647i, 1781i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.c, arg_1.c), arg_1.c)), _wgslsmith_f_op_f32(arg_1.c * _wgslsmith_f_op_f32(floor(arg_1.c)))))) * arg_1.c);
    global1 = array<i32, 18>();
    global2 = array<i32, 25>();
    var var_1 = arg_0.x & select(~17826u, arg_0.x, all(vec4<bool>(false, true, false, true)) & any(vec4<bool>(true, false, true, false)));
    global2 = array<i32, 25>();
    return max(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(95777u, arg_0.x, arg_1.a, arg_0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, arg_1.b.x, 29142u), vec4<u32>(arg_0.x, arg_1.b.x, 8792u, arg_0.x), vec4<u32>(1u, arg_1.b.x, arg_1.a, 0u))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b.x, 44159u, arg_1.b.x, 50936u), vec4<u32>(4294967295u, 38125u, 4294967295u, arg_1.b.x)), select(vec4<u32>(79843u, arg_1.a, 2533u, 1u), vec4<u32>(5118u, 6942u, arg_0.x, arg_0.x), false))), vec4<u32>(~2833u, arg_1.a, abs(arg_1.b.x) ^ arg_1.b.x, abs(~arg_1.a))) & countOneBits(min(vec4<u32>(_wgslsmith_sub_u32(1u, arg_0.x), _wgslsmith_dot_vec3_u32(arg_0, arg_1.b), ~9704u, ~arg_0.x), ~vec4<u32>(arg_0.x, 44257u, arg_0.x, arg_0.x)));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<u32>) -> u32 {
    global1 = array<i32, 18>();
    let var_0 = u_input.e.ywx;
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-529f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), 224f)));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~(0u ^ arg_2.x), (arg_2.x ^ 30897u) ^ 1u, arg_2.x, 68179u), firstTrailingBit(arg_2)), arg_2);
}

fn func_2() -> f32 {
    global1 = array<i32, 18>();
    var var_0 = Struct_1(func_4((_wgslsmith_div_i32(5638i, 1i) < u_input.d) || any(vec4<bool>(false, true, false, true)), ~vec2<u32>(1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 52298u, 5756u, 0u) << (func_3(vec3<u32>(4294967295u, 0u, 24889u), Struct_1(28087u, vec3<u32>(122659u, 62644u, 53075u), 1000f, 12217i)) % vec4<u32>(32u)))), _wgslsmith_div_vec3_u32(firstLeadingBit(~abs(vec3<u32>(4294967295u, 81424u, 4294967295u))), select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 0u, 0u)), ~vec3<u32>(1u, 1u, 1u), 1u != func_3(vec3<u32>(0u, 3961u, 9521u), Struct_1(4294967295u, vec3<u32>(0u, 17694u, 70107u), -626f, global1[_wgslsmith_index_u32(0u, 18u)])).x)), -1000f, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(77909i, u_input.c), vec2<i32>(1i, 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(6727i, global1[_wgslsmith_index_u32(0u, 18u)], u_input.c), vec3<i32>(global1[_wgslsmith_index_u32(0u, 18u)], 3197i, 0i))), abs(global1[_wgslsmith_index_u32(11244u, 18u)] >> (0u % 32u)))));
    var_0 = Struct_1(var_0.a, var_0.b, var_0.c, u_input.b.x);
    var_0 = Struct_1(~select(var_0.a, ~var_0.a, true) >> (~(~(~var_0.a)) % 32u), var_0.b, var_0.c, 2147483647i);
    global2 = array<i32, 25>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-852f * 519f) - _wgslsmith_f_op_f32(var_0.c * -1643f))))) + var_0.c);
}

fn func_1(arg_0: bool) -> u32 {
    global1 = array<i32, 18>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), 1751f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1174f, -468f)) * _wgslsmith_f_op_f32(select(-468f, 861f, arg_0))) + -682f)), _wgslsmith_f_op_f32(719f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-751f * _wgslsmith_f_op_f32(abs(1002f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(969f, -973f)))))));
    global0 = var_0.x;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(253f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), true)))));
    let var_1 = false;
    return _wgslsmith_mult_u32(~(~_wgslsmith_clamp_u32(30316u, 94952u, 1u) | ~abs(0u)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, ~1u, func_3(vec3<u32>(1u, 1u, 1u), Struct_1(46787u, vec3<u32>(17056u, 8361u, 4294967295u), var_0.x, global1[_wgslsmith_index_u32(1u, 18u)])).x), ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 46434u > func_1(false);
    let var_1 = false;
    let var_2 = Struct_1(func_4(u_input.a.x == _wgslsmith_mult_i32(-1i, global2[_wgslsmith_index_u32(~0u, 25u)]), vec2<u32>(1u, ~60492u) ^ abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(8852u, 72866u), vec2<u32>(31425u, 4294967295u), vec2<u32>(44056u, 7410u))), vec4<u32>(1u, 1u, 1u, 1u)), ~vec3<u32>(1u, 1u, 1u), 376f, 1i);
    global0 = 520f;
    let var_3 = !vec3<bool>(!var_1 || any(select(vec2<bool>(true, true), vec2<bool>(var_0, var_1), vec2<bool>(false, false))), !var_0, true);
    var var_4 = 1000f;
    let var_5 = vec4<bool>(all(select(vec2<bool>(true, any(vec4<bool>(true, var_1, var_0, var_0))), var_3.zy, true)), true, true | (max(~global1[_wgslsmith_index_u32(4294967295u, 18u)], 1i) <= ~(-global1[_wgslsmith_index_u32(4294967295u, 18u)])), 1i >= ~(-global1[_wgslsmith_index_u32(abs(var_2.a), 18u)]));
    let var_6 = abs(vec2<u32>(firstLeadingBit(2992u), max(~4294967295u, ~(~69881u))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, i32(-1i) * -(_wgslsmith_div_i32(-2147483647i, 65886i) << (var_6.x % 32u)));
}

