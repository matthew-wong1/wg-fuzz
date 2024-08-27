struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<i32, 6> = array<i32, 6>(-36569i, 2147483647i, -2058i, 10773i, -1i, 27756i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-881f)))))));
    var var_1 = true;
    var var_2 = vec2<u32>(0u, 23560u);
    var var_3 = _wgslsmith_div_f32(525f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(278f + -357f), var_0)) * 1241f));
    let var_4 = Struct_1(firstLeadingBit(1u));
    return Struct_1(var_4.a);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(352f - 1000f) * _wgslsmith_f_op_f32(1339f + 840f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1651f, -917f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, -2055f)), _wgslsmith_f_op_f32(step(-662f, 174f)))) + _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(637f - -1741f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-275f - _wgslsmith_f_op_f32(-1000f + 1603f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-235f + -458f), -1274f)))));
    var var_1 = !(!(!all(vec3<bool>(true, true, true))));
    let var_2 = func_1(!vec4<bool>(!(var_0.x >= var_0.x), true, true, false));
    let var_3 = var_2.a;
    var var_4 = !vec4<bool>(false || any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), true, 183f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(603f)))), !(_wgslsmith_add_u32(50309u, var_2.a) >= ~u_input.a));
    return global1[_wgslsmith_index_u32(max(var_2.a, ~firstTrailingBit(4294967295u) >> (~(~(~var_2.a)) % 32u)), 6u)];
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: u32) -> u32 {
    global1 = array<i32, 6>();
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2463f)), _wgslsmith_f_op_f32(f32(-1f) * -748f), true));
    let var_1 = 52249u;
    var_0 = 1228f;
    var var_2 = !select(vec4<bool>(false, !any(vec3<bool>(true, true, false)), true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true))), all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true))));
    return _wgslsmith_dot_vec2_u32(select(~vec2<u32>(arg_2, 68132u), ~select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(var_1, u_input.a), var_2.x), !select(var_2.x, false, false)), ~(~abs(vec2<u32>(29408u, arg_2)))) | _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, 33597u, 4294967295u), select(vec3<u32>(4294967295u, arg_2, u_input.a), vec3<u32>(var_1, 9782u, var_1), true), vec3<u32>(u_input.a, arg_2, 1u)), reverseBits(~vec3<u32>(4294967295u, 41135u, u_input.a)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = vec2<u32>(4978u, func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(~global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a | arg_2.a, 6u)], func_3())), 1i, ~arg_2.a));
    global1 = array<i32, 6>();
    var var_1 = arg_0.x & all(!(!(!arg_0.yx)));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.x)))) + arg_1.x) * arg_1.x), -1674f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(arg_2.x, 1i);
    global1 = array<i32, 6>();
    var var_1 = _wgslsmith_div_vec2_f32(arg_3.xw, vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(abs(-421f))));
    let var_2 = Struct_1(u_input.a);
    global0 = array<Struct_1, 27>();
    return global0[_wgslsmith_index_u32(min(~20215u, _wgslsmith_add_u32(firstTrailingBit(firstLeadingBit(var_2.a ^ arg_1.a)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 35703u, 9270u), vec4<u32>(0u, 0u, arg_0.a, u_input.a)), 64640u, _wgslsmith_clamp_u32(0u, 60777u, 1u)) ^ 4294967295u)), 27u)];
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~arg_0.a, 6u)];
    var var_1 = func_5(global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, arg_0.a, arg_0.a), vec3<u32>(3264u, arg_0.a, 43159u), false), vec3<u32>(arg_1.a, arg_1.a, u_input.a)), arg_1.a & firstLeadingBit(arg_1.a)) & func_5(func_5(arg_0, Struct_1(1u), vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a, 6u)], 2147483647i) ^ vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(arg_1.a, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1021f, 1541f, 1133f, -422f), vec4<f32>(453f, 431f, 159f, 619f)))), Struct_1(1u), max(abs(vec3<i32>(-2454i, global1[_wgslsmith_index_u32(arg_1.a, 6u)], global1[_wgslsmith_index_u32(arg_1.a, 6u)])), vec3<i32>(-17284i, global1[_wgslsmith_index_u32(arg_1.a, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)])), vec4<f32>(_wgslsmith_f_op_f32(1096f * 861f), -784f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(2245f * 1499f))).a, 27u)], Struct_1(~0u), (vec3<i32>(-1i) * -vec3<i32>(0i, global1[_wgslsmith_index_u32(arg_0.a, 6u)], global1[_wgslsmith_index_u32(arg_1.a, 6u)])) >> (_wgslsmith_mod_vec3_u32(abs(~vec3<u32>(35508u, u_input.a, 4294967295u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 1605u, 0u), select(vec3<u32>(0u, 12159u, 14537u), vec3<u32>(arg_0.a, 9284u, arg_1.a), arg_2), ~vec3<u32>(1u, 1u, 30851u))) % vec3<u32>(32u)), vec4<f32>(-1878f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(435f * 1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-414f + _wgslsmith_f_op_f32(round(460f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(271f, -135f)) - -278f))), _wgslsmith_f_op_f32(floor(-1193f))));
    var_1 = func_5(Struct_1(max(abs(arg_1.a), 1u) | _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, arg_1.a, arg_1.a), vec3<u32>(157357u, 1u, 9154u)), ~vec3<u32>(4294967295u, u_input.a, 0u))), func_1(vec4<bool>(!(false && arg_2), false, _wgslsmith_add_u32(0u, arg_1.a) > 5027u, true)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(56231u, 6u)])), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(63696u, 6u)], global1[_wgslsmith_index_u32(~arg_0.a, 6u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(1u, 6u)], 52169i, -1i) & vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], -1i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], -3344i, -946i))), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(arg_0.a, 6u)], global1[_wgslsmith_index_u32(34594u, 6u)]), vec4<i32>(-1i, global1[_wgslsmith_index_u32(arg_0.a, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], -15054i) | vec4<i32>(2147483647i, 449i, global1[_wgslsmith_index_u32(48098u, 6u)], global1[_wgslsmith_index_u32(var_1.a, 6u)])), global1[_wgslsmith_index_u32(~arg_0.a, 6u)], global1[_wgslsmith_index_u32(54600u, 6u)])), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-651f + 1000f))), -252f, -455f, 494f));
    let var_2 = vec4<u32>(func_4(_wgslsmith_add_vec2_i32(min(vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, -24231i)) << (vec2<u32>(arg_0.a, 0u) % vec2<u32>(32u)), vec2<i32>(-2147483647i, i32(-1i) * -2147483647i)), 36910i, ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a, 39994u, u_input.a, 81899u), vec4<u32>(31791u, 4294967295u, 4294967295u, 1u)), ~vec4<u32>(4294967295u, var_1.a, 0u, 49696u))), ~(~1u ^ arg_0.a), arg_1.a, _wgslsmith_add_u32(~_wgslsmith_sub_u32(0u, u_input.a), min(_wgslsmith_mod_u32(var_1.a, 4294967295u), var_1.a)) >> (~5523u % 32u));
    let var_3 = !(!(!(!(!vec3<bool>(true, arg_2, arg_2)))));
    return func_5(arg_0, Struct_1(~12277u), _wgslsmith_mult_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(arg_1.a, 6u)], 10110i, global1[_wgslsmith_index_u32(var_1.a, 6u)]) & ~(~vec3<i32>(41950i, global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(arg_0.a, 6u)])), vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~var_2.yz, var_2.zy), 6u)], global1[_wgslsmith_index_u32(1u, 6u)], max(min(44996i, global1[_wgslsmith_index_u32(4294967295u, 6u)]), -global1[_wgslsmith_index_u32(var_2.x, 6u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1153f, -397f, 606f, -1006f) - vec4<f32>(-1581f, 1174f, 424f, 1361f)))) - vec4<f32>(-787f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -2558f) - _wgslsmith_f_op_f32(floor(440f))), -492f, 738f)));
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-45552i, -21701i), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(arg_2.a, 6u)]), vec2<i32>(global1[_wgslsmith_index_u32(arg_1.a, 6u)], global1[_wgslsmith_index_u32(127097u, 6u)])), ~vec2<i32>(-2147483647i, 0i)), -(~(-vec2<i32>(-35116i, -7536i)))), ~_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(0i, global1[_wgslsmith_index_u32(4294967295u, 6u)])), vec2<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 6u)], -49424i), ~(-34115i))));
    let var_1 = Struct_1(_wgslsmith_add_u32(arg_3.x, ~arg_3.x));
    global0 = array<Struct_1, 27>();
    var var_2 = vec4<u32>(1u, ~select((u_input.a ^ 92424u) & arg_2.a, ~14198u, true), ~(~1u), 1u >> (abs(firstLeadingBit(37653u)) % 32u));
    var_2 = ~(~(~vec4<u32>(min(48371u, arg_3.x), func_5(Struct_1(var_2.x), Struct_1(var_2.x), vec3<i32>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], -233i), vec4<f32>(524f, -1000f, -990f, -1000f)).a, 53056u, _wgslsmith_clamp_u32(u_input.a, var_1.a, 17429u))));
    return func_1(select(!vec4<bool>(arg_0 & true, any(vec4<bool>(false, arg_0, arg_0, arg_0)), true, any(vec4<bool>(arg_0, true, true, false))), !(!select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, arg_0, true, false))), vec4<bool>(arg_0, false, false, !(arg_0 | arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    var var_1 = func_7(true, func_6(Struct_1(18023u), func_5(global0[_wgslsmith_index_u32(44508u >> (0u % 32u), 27u)], global0[_wgslsmith_index_u32(113639u, 27u)], ~firstLeadingBit(vec3<i32>(-56294i, 2147483647i, -22279i)), _wgslsmith_f_op_vec4_f32(func_2(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<f32>(-1176f, -1865f, -630f), func_1(vec4<bool>(false, true, false, true))))), true), func_6(Struct_1(func_4(vec2<i32>(-62153i, global1[_wgslsmith_index_u32(3160u, 6u)]), 0i, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(54486u, u_input.a, u_input.a)))), func_1(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)), (any(vec2<bool>(true, false)) & false) && all(vec4<bool>(true, true, false, false))), vec2<u32>(firstTrailingBit(1u) ^ 4294967295u, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(firstLeadingBit(_wgslsmith_mult_u32(var_1.a, u_input.a)) << (var_1.a % 32u)));
}

