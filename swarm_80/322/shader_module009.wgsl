struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec4<i32>) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(1954f * -316f), _wgslsmith_f_op_f32(abs(1f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    var var_0 = select(select(!vec4<bool>(false, all(vec3<bool>(false, false, true)), true, false), vec4<bool>(true, true, !any(vec3<bool>(true, false, false)), all(vec3<bool>(false, true, true))), !(-876f != arg_1.x)), vec4<bool>(countOneBits(u_input.a.x) <= _wgslsmith_sub_u32(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)], 4294967295u), u_input.a.x), any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)) && (_wgslsmith_div_u32(u_input.a.x, 1u) < _wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(9896u, 32u)])), any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, !all(vec3<bool>(false, true, true)), !(arg_1.x >= 762f), true), select(vec4<bool>(true, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 32u)] <= 4195u, all(vec3<bool>(true, false, true)), true, false), true), vec4<bool>(false, 1i == arg_0.a, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), true)));
    global0 = array<u32, 32>();
    var var_1 = Struct_1(0i, -9635i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(686f, arg_1.x) * -390f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_0.c.x) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(238f, arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -765f)), vec3<f32>(-561f, 685f, arg_0.c.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-918f)), -359f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_0.c.x, -1000f))))))) + _wgslsmith_f_op_vec2_f32(func_1(select(_wgslsmith_mod_vec4_i32(vec4<i32>(390i, -30073i, arg_0.b, 5483i), vec4<i32>(1i, 2147483647i, 1i, var_1.a)) ^ ~vec4<i32>(20555i, 1i, var_1.b, 36370i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, 2147483647i, 0i, arg_0.b), reverseBits(vec4<i32>(var_1.a, var_1.a, 0i, -24162i))), select(!vec4<bool>(false, var_0.x, false, true), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(true, false, true, var_0.x), var_0.x), var_0.x)))));
    var var_3 = arg_0.a;
    return 1993f;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32, arg_3: vec2<f32>) -> u32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.xx));
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    return _wgslsmith_mod_u32(14836u, ~27143u);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1.c.x > -661f;
    var var_1 = _wgslsmith_mod_u32(u_input.a.x, 48078u);
    let var_2 = arg_1;
    var_1 = select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(20296u, ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], u_input.a.x), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(15936u, 32u)], u_input.a.x) | (global0[_wgslsmith_index_u32(5980u, 32u)] & 1u)), vec3<u32>(reverseBits(57839u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 32u)]), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), u_input.a.wy)), ~global0[_wgslsmith_index_u32(firstLeadingBit(0u), 32u)])), 32u)], _wgslsmith_mod_u32(func_4(var_2, countOneBits(u_input.a.wx), 0u, vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(func_3(arg_1, var_2.c.zz)))), u_input.a.x), !var_0);
    global0 = array<u32, 32>();
    return ~var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<i32>(-(~(-14397i)), i32(-1i) * -2147483647i, 35489i, ~1i << ((global0[_wgslsmith_index_u32(4294967295u, 32u)] >> (~global0[_wgslsmith_index_u32(0u, 32u)] % 32u)) % 32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(func_2(_wgslsmith_f_op_vec2_f32(func_1(vec4<i32>(-15729i, 90277i, 36656i, -1i))), Struct_1(-2147483647i, 1558i, vec3<f32>(361f, 269f, -518f))), firstLeadingBit(_wgslsmith_add_i32(-2147483647i, 1i)), 1i, -10302i), abs(select(-vec4<i32>(-2147483647i, -75154i, 0i, 21772i), select(vec4<i32>(-2147483647i, 22521i, -2147483647i, 80788i), vec4<i32>(0i, 2147483647i, 2147483647i, -1i), true), vec4<bool>(true, true, true, true)))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)));
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    var var_1 = 92924u;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1048f, 764f, -1663f, -639f), vec4<f32>(989f, -976f, -1110f, -1103f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2507f, 858f, -1074f, -865f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(776f, 211f, -787f, -574f) + vec4<f32>(-797f, -1538f, -1233f, -468f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(681f, 1077f, 559f, 134f))), vec4<bool>(true, true, true, true))), vec4<f32>(-101f, -1684f, _wgslsmith_f_op_f32(abs(1078f)), _wgslsmith_f_op_f32(abs(-289f))))) + vec4<f32>(-343f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-339f)), 1960f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec2_f32(func_1(vec4<i32>(1i, var_0.x, -2147483647i, 13390i))).x)), 244f)), false));
    global0 = array<u32, 32>();
    var_1 = firstTrailingBit(8291u);
    let var_3 = !(any(vec2<bool>(true, any(vec2<bool>(true, true)))) || (func_2(vec2<f32>(831f, -2121f), Struct_1(-9595i, var_0.x, var_2.xzw)) == ~7014i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-112f))), ~(~u_input.a.wzw), select(vec2<u32>(~countOneBits(72285u), u_input.a.x << (firstTrailingBit(1u) % 32u)), vec2<u32>(1265u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 32u)], ~1u)), select(true, !var_3, true) | all(!vec4<bool>(true, false, var_3, true))), var_2.xzy, -420f);
}

