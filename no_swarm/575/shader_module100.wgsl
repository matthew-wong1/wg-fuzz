struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(181f, 122f, 771f), vec3<f32>(-298f, 574f, -142f), vec3<f32>(-689f, 868f, -1463f), vec3<f32>(-1839f, 1779f, -120f));

var<private> global1: array<u32, 16>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-594f)), -1000f));
    var var_1 = 2147483647i;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_0), -1140f);
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0)), 863f);
    var var_3 = Struct_5(Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1371f, var_0)) + _wgslsmith_f_op_f32(-var_2.x))), var_2.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) * var_2.x), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_2.x))), Struct_1(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), false), 1u, vec2<bool>(u_input.b > 1i, 24022u > u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), -801i ^ ~u_input.b)));
    return var_2.x;
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: Struct_4) -> i32 {
    let var_0 = !vec3<bool>(_wgslsmith_f_op_f32(arg_2.a.a + arg_1.a.c.x) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x + arg_1.a.b) - 577f), arg_1.a.d.c.x, true);
    return 7340i;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: bool) -> u32 {
    global0 = array<vec3<f32>, 4>();
    let var_0 = vec2<bool>(arg_2, -17933i <= (_wgslsmith_sub_i32(-2147483647i, u_input.b) ^ func_4(_wgslsmith_f_op_f32(func_3()), Struct_5(Struct_4(Struct_3(574f), -1257f, arg_0, Struct_1(vec3<bool>(true, arg_2, arg_2), 1u, vec2<bool>(true, false), arg_1, u_input.b))), Struct_4(Struct_3(410f), -537f, vec2<f32>(1000f, 1277f), Struct_1(vec3<bool>(arg_2, true, true), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], vec2<bool>(false, arg_2), -598f, u_input.b)))));
    let var_1 = Struct_4(Struct_3(arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(1229f + _wgslsmith_f_op_f32(-arg_0.x)))), vec2<f32>(arg_0.x, arg_1), Struct_1(select(select(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, true, true), true), vec3<bool>(true, arg_2, var_0.x), select(arg_2, true, var_0.x)), vec3<bool>(u_input.b <= -39045i, true, true), !vec3<bool>(arg_2, arg_2, arg_2)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), vec2<u32>(0u, 6357u)), vec2<bool>(true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(arg_1 * arg_1), arg_2)))), -7251i));
    let var_2 = var_1.a;
    let var_3 = !var_1.d.a;
    return _wgslsmith_mult_u32(~(~23131u), 47473u);
}

fn func_1() -> vec4<u32> {
    global1 = array<u32, 16>();
    global1 = array<u32, 16>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1449f, -711f))));
    global1 = array<u32, 16>();
    global1 = array<u32, 16>();
    return vec4<u32>(u_input.a & _wgslsmith_mult_u32(~(16686u ^ global1[_wgslsmith_index_u32(u_input.a, 16u)]), ~(~0u)), global1[_wgslsmith_index_u32(~(~func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -1164f)), -823f, true)), 16u)], ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(0u, 16u)] << (u_input.a % 32u), min(u_input.a, 32782u), ~49368u), u_input.a), min(max(0u, abs(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(30461u, 16u)], u_input.a))), 3268u));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = arg_1.x;
    var var_1 = Struct_5(Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1794f * 292f))), -515f, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-100f, arg_3.a))))), Struct_1(vec3<bool>(true, arg_0, true), ~u_input.a, select(vec2<bool>(arg_0, true), !vec2<bool>(arg_0, true), !vec2<bool>(arg_0, true)), 558f, arg_2)));
    var var_2 = all(vec2<bool>(all(vec4<bool>(252f <= var_1.a.a.a, 352f < var_1.a.a.a, arg_0, false)), all(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(var_1.a.d.a.x, var_1.a.d.a.x, false, false), true)) && arg_0));
    var var_3 = Struct_5(var_1.a);
    let var_4 = var_3.a.d;
    return Struct_3(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1790f), 873f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_5(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(0i, u_input.b)), _wgslsmith_mult_i32(u_input.b, 1i)) < u_input.b, ~_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], u_input.a, global1[_wgslsmith_index_u32(u_input.a, 16u)]), func_1()), 1i, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-177f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1666f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-418f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-537f, 888f), vec2<f32>(877f, 181f), false)))))), Struct_1(vec3<bool>(true, false, true), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(global1[_wgslsmith_index_u32(886u, 16u)]), ~0u), abs(firstLeadingBit(vec2<u32>(global1[_wgslsmith_index_u32(1u, 16u)], u_input.a)))), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(2158f, 1628f)))), func_5(true, vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.a, 16u)], 29781u, 88313u) | vec4<u32>(global1[_wgslsmith_index_u32(44571u, 16u)], 4294967295u, u_input.a, 4294967295u), ~(-21340i), func_5(false, vec4<u32>(global1[_wgslsmith_index_u32(13257u, 16u)], u_input.a, 0u, global1[_wgslsmith_index_u32(15711u, 16u)]), u_input.b, Struct_3(-616f))).a)), u_input.b));
    let var_1 = !select(var_0.d.a.x, true, true);
    let var_2 = vec2<u32>(max(global1[_wgslsmith_index_u32(u_input.a | 4294967295u, 16u)], _wgslsmith_dot_vec3_u32(vec3<u32>(~34812u, global1[_wgslsmith_index_u32(min(17758u, global1[_wgslsmith_index_u32(4294967295u, 16u)]), 16u)], 33781u), _wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(var_0.d.b, 16u)], 1u, var_0.d.b), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u, global1[_wgslsmith_index_u32(20646u, 16u)]) >> (vec3<u32>(1u, var_0.d.b, u_input.a) % vec3<u32>(32u))))), max(func_1().x, _wgslsmith_add_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], 0u), vec2<u32>(u_input.a, 86325u)), _wgslsmith_div_u32(5301u, 4294967295u)), 0u)));
    var var_3 = Struct_5(Struct_4(func_5(any(vec3<bool>(false, false, false)), select(vec4<u32>(16816u, 1u, 0u, 0u) | vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(12770u, 16u)], var_0.d.b), ~vec4<u32>(var_0.d.b, 33594u, 1u, global1[_wgslsmith_index_u32(var_0.d.b, 16u)]), true), 1i, func_5(all(vec4<bool>(var_1, false, var_0.d.a.x, var_0.d.a.x)), select(vec4<u32>(68596u, 4294967295u, 1u, global1[_wgslsmith_index_u32(var_2.x, 16u)]), vec4<u32>(1u, 2245u, 10601u, global1[_wgslsmith_index_u32(1u, 16u)]), true), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 28047i, -2147483647i), vec3<i32>(1i, u_input.b, -39386i)), var_0.a)), 922f, vec2<f32>(-403f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2217f)), _wgslsmith_f_op_f32(var_0.b + var_0.d.d))), Struct_1(var_0.d.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.b, 0u, 0u, 38430u), countOneBits(vec4<u32>(4294967295u, u_input.a, 4294967295u, global1[_wgslsmith_index_u32(270u, 16u)]))), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(var_1, true)), var_0.a.a, ~(-41913i))));
    let var_4 = u_input.b;
    let var_5 = _wgslsmith_f_op_f32(-2688f - var_0.a.a);
    var var_6 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_5)) - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-888f * _wgslsmith_f_op_f32(-1000f + -1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(var_2, _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(var_2, vec2<u32>(17137u, 36507u)), var_2 ^ var_2), var_1));
}

