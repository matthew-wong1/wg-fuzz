struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 414f;

var<private> global1: vec3<bool>;

var<private> global2: array<bool, 32>;

var<private> global3: bool;

var<private> global4: array<u32, 20> = array<u32, 20>(57645u, 4294967295u, 1u, 15775u, 87792u, 1u, 2225u, 0u, 85442u, 72093u, 1u, 4294967295u, 2749u, 4294967295u, 0u, 117u, 48291u, 141562u, 103810u, 0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    return ~(~38391u >> (_wgslsmith_mod_u32(_wgslsmith_add_u32(9548u, _wgslsmith_div_u32(49453u, global4[_wgslsmith_index_u32(4294967295u, 20u)])), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(~u_input.c.x), 20u)], 20u)]) % 32u));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2.x, ~0u), 20u)], vec2<bool>(arg_3.b.x, !arg_3.b.x || global1.x));
    var var_1 = max(func_3(), arg_2.x);
    let var_2 = i32(-1i) * -_wgslsmith_mult_i32(-(-1i | u_input.b), -u_input.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(325f, 1207f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(659f, arg_1) - vec2<f32>(arg_1, 1000f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-750f))), -197f)));
    var var_4 = arg_3;
    return 2220f;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    let var_0 = reverseBits(arg_0);
    let var_1 = global2[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(83504u, global4[_wgslsmith_index_u32(min(36292u, global4[_wgslsmith_index_u32(1u, 20u)]), 20u)]) >> (1u % 32u)) ^ u_input.c.x, 32u)];
    global1 = !(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 20u)], 32u)], false, false))));
    var var_2 = true;
    let var_3 = u_input.c.yyy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + -285f), -359f, all(vec3<bool>(true, true, global2[_wgslsmith_index_u32(arg_1.x, 32u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1439f))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(80285u, 1226f, var_3, Struct_1(66960u, global1.yz))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f) - _wgslsmith_f_op_f32(sign(-110f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-134f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(u_input.b, vec4<u32>(69311u, 0u, u_input.c.x, 4294967295u))), _wgslsmith_f_op_f32(sign(-353f))))))));
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1270f + 1000f), -1481f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-165f, -886f))))));
    let var_1 = Struct_1(u_input.a, select(global1.zy, select(vec2<bool>(false, -1i <= u_input.b), !select(global1.yz, vec2<bool>(global2[_wgslsmith_index_u32(41135u, 32u)], global1.x), global1.xz), false), any(vec2<bool>(var_0 < var_0, true))));
    var var_2 = ~vec3<i32>(0i, firstLeadingBit((33537i | u_input.b) >> (~4294967295u % 32u)), -u_input.b);
    global4 = array<u32, 20>();
    var_2 = vec3<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(u_input.b, u_input.b, 1i) << (select(14787u, u_input.c.x, false) % 32u)) ^ countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1505i, u_input.b, 60146i), vec3<i32>(-2147483647i, var_2.x, -2147483647i)), 7425i)), (~_wgslsmith_add_i32(var_2.x, u_input.b) | -19045i) ^ var_2.x, max(~(-1i), -_wgslsmith_clamp_i32(-1i, -1i, var_2.x) >> (0u % 32u)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(1331f, _wgslsmith_f_op_f32(func_1(-var_2.x, ~vec4<u32>(global4[_wgslsmith_index_u32(var_1.a, 20u)], var_1.a, 1u, 1079u))))), 996f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)), var_0);
    var var_4 = _wgslsmith_f_op_f32(func_1(var_2.x, _wgslsmith_div_vec4_u32(~vec4<u32>(~var_1.a, _wgslsmith_sub_u32(4294967295u, var_1.a), 1u, _wgslsmith_add_u32(global4[_wgslsmith_index_u32(0u, 20u)], var_1.a)), _wgslsmith_mod_vec4_u32(u_input.c << (reverseBits(u_input.c) % vec4<u32>(32u)), vec4<u32>(u_input.a, abs(var_1.a), 43636u, 15878u)))));
    let var_5 = Struct_1(_wgslsmith_sub_u32(~var_1.a, firstTrailingBit(~var_1.a)), !var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-807f - -838f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), var_3.x), _wgslsmith_mult_vec4_u32(~(~select(u_input.c, vec4<u32>(1u, 1u, 17087u, 85901u), true)), ~vec4<u32>(var_5.a, 20755u, u_input.d, global4[_wgslsmith_index_u32(var_5.a, 20u)]) ^ ~(~u_input.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_3.x, -912f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-563f, var_0, var_0, var_0) + vec4<f32>(1819f, var_0, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 1033f, 2076f, var_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1611f - _wgslsmith_f_op_f32(-199f - 185f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-252f, var_0)))))));
}

