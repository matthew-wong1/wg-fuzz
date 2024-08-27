struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(9727i), Struct_1(0i), Struct_1(1i), Struct_1(245i), Struct_1(1i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(0i), Struct_1(1i), Struct_1(2147483647i), Struct_1(1i), Struct_1(-33483i), Struct_1(-40441i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1121f), -1910f, _wgslsmith_div_f32(1630f, _wgslsmith_f_op_f32(f32(-1f) * -1496f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-758f, 575f, 2286f, -108f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -820f, 1404f, 1266f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1385f, -2713f, 116f, 149f), _wgslsmith_f_op_vec4_f32(vec4<f32>(957f, -1093f, 1000f, -571f) * vec4<f32>(845f, 2009f, -1628f, 1161f)), vec4<bool>(false, true, true, false))))))));
    return arg_1.a;
}

fn func_4(arg_0: f32, arg_1: i32) -> vec2<bool> {
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    let var_0 = vec4<i32>(-1i) * -select(~vec4<i32>(u_input.a, arg_1, -415i, u_input.a), min(vec4<i32>(arg_1, 0i, 9452i, 3626i), reverseBits(vec4<i32>(arg_1, u_input.a, u_input.a, u_input.a))), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)));
    return vec2<bool>(!(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(66793u, 2437u, 1u), vec3<u32>(0u, 0u, 4294967295u)), 4294967295u) >= 1u), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)));
}

fn func_5(arg_0: vec2<bool>) -> vec2<f32> {
    var var_0 = firstTrailingBit((~vec4<u32>(1u, 1u, 1u, 1u) ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(32969u, 11164u, 1u, 1u), vec4<u32>(1u, 17995u, 4294967295u, 62172u))) >> (max(firstTrailingBit(firstTrailingBit(vec4<u32>(1u, 18380u, 0u, 76134u))), vec4<u32>(4294967295u, _wgslsmith_mult_u32(0u, 5578u), _wgslsmith_sub_u32(62996u, 23283u), ~4294967295u)) % vec4<u32>(32u)));
    var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~var_0.x, var_0.x, ~(~var_0.x)), abs(vec4<u32>(var_0.x >> (16093u % 32u), var_0.x | 8076u, var_0.x, var_0.x)), ~(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)) << (countOneBits(~vec4<u32>(33478u, var_0.x, 31638u, 37734u)) % vec4<u32>(32u))), select(select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(37304u, var_0.x, var_0.x), vec3<u32>(1u, 44201u, 20401u)), ~5944u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 17790u, 4294967295u), vec3<u32>(var_0.x, var_0.x, 4294967295u)), 45085u), ~(~vec4<u32>(12840u, 0u, 75596u, 15912u)), !vec4<bool>(false, arg_0.x, true, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(0u), 4294967295u, 4294967295u, ~0u), countOneBits(~vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u))), select(!all(vec3<bool>(arg_0.x, true, false)), true, any(arg_0))));
    var var_1 = !(!vec4<bool>(false, !(arg_0.x & true), true, (arg_0.x != arg_0.x) | (arg_0.x && true)));
    let var_2 = false;
    let var_3 = (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1179f, 1480f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1397f) + _wgslsmith_f_op_f32(f32(-1f) * -1246f)))) || (-810f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -559f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -774f) * _wgslsmith_f_op_f32(round(-283f)))));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-294f, _wgslsmith_f_op_f32(1229f + -1000f)) + vec2<f32>(_wgslsmith_f_op_f32(744f + -607f), -945f)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(337f, 304f)))), _wgslsmith_f_op_f32(570f - _wgslsmith_f_op_f32(step(-1219f, 443f)))))), vec2<f32>(1f, 1f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_5(func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(172f)))), func_3(Struct_1(arg_0.x), Struct_1(-28867i), 54851i)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1406f, -919f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(701f, -185f))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), vec2<f32>(1f, 1f))))), select(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(557f)) + _wgslsmith_f_op_vec2_f32(func_5(vec2<bool>(false, false))).x), 1i), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, false, false)), all(vec4<bool>(true, false, false, true))), true), true)));
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(7808u), 18u)];
    global0 = array<Struct_1, 18>();
    let var_2 = vec3<bool>(true, !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, true)))), false && all(vec2<bool>(true, true)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(457f, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(611f, -148f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(674f, 1440f), vec2<f32>(-751f, var_0.x), false)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(569f, var_0.x)))))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-783f, -2151f))));
    return select(var_2.xy, !(!var_2.xy), !var_2.x);
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<Struct_1, 18>();
    let var_0 = vec2<bool>(!any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), func_2(vec2<i32>(u_input.a, 1i), Struct_1(u_input.a)))), !(_wgslsmith_add_i32(min(46956i, u_input.a), _wgslsmith_sub_i32(79767i, 2147483647i)) < -select(16279i, u_input.a, true)));
    var var_1 = Struct_1(u_input.a);
    var var_2 = Struct_1(~(-48859i));
    var var_3 = global0[_wgslsmith_index_u32(0u, 18u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(reverseBits(countOneBits(0u))), ~1u, ~9178u << (firstLeadingBit(reverseBits(79795u)) % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u)), reverseBits(~1u), ~firstLeadingBit(40066u))), ~vec4<u32>(~1u, 1u, 1u, 1u)), 18u)];
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec4<i32> {
    let var_0 = vec3<bool>(true || !any(vec4<bool>(true, true, true, true)), true == any(vec4<bool>(false, true, true, true)), any(select(vec2<bool>(false, true), func_4(-399f, u_input.a), true)) & (arg_0.a < ~1i));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-839f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-531f, 2096f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1802f, 931f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -690f), _wgslsmith_div_f32(-265f, -199f))))) - vec3<f32>(-460f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1118f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1769f)))), _wgslsmith_f_op_f32(f32(-1f) * -1508f)));
    var var_2 = -arg_0.a;
    let var_3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1018f, var_1.x)));
    var var_4 = select(~(~vec3<u32>(40254u, arg_2 | arg_2, ~29312u)), ~vec3<u32>(~(~arg_2), firstLeadingBit(46152u), 11806u), !var_0.x);
    return -select(vec4<i32>(0i, arg_1, ~_wgslsmith_mod_i32(1i, 23209i), func_3(arg_0, Struct_1(arg_0.a), -1i)), -countOneBits(vec4<i32>(26873i, -2147483647i, u_input.a, arg_0.a)), !select(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, false)), vec4<bool>(true, var_0.x, var_0.x, false), var_0.x & var_0.x));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    global0 = array<Struct_1, 18>();
    let var_0 = 1u;
    return func_1(_wgslsmith_f_op_f32(1894f + _wgslsmith_f_op_f32(select(1325f, _wgslsmith_f_op_f32(trunc(-551f)), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(1u, 53455u)), 18u)], Struct_1(-countOneBits(-31929i) | _wgslsmith_sub_i32(abs(u_input.a), 1i)), func_6(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(187f)) * _wgslsmith_f_op_f32(1247f * -778f))), (firstTrailingBit(-9762i) | u_input.a) >> (8290u % 32u), reverseBits(abs(~79744u))));
    let var_1 = !(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false)) | true);
    let var_2 = u_input.a;
    let var_3 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(204f + -119f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(194f, -633f)) - -916f)) + _wgslsmith_f_op_vec2_f32(func_5(select(vec2<bool>(var_1, false), vec2<bool>(false, var_1), var_1))).x));
    var_0 = func_7(var_3, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(503f)))), -select(_wgslsmith_div_vec4_i32(~vec4<i32>(var_3.a, var_0.a, 2147483647i, u_input.a), ~vec4<i32>(-2147483647i, 2147483647i, var_2, -1i)), (vec4<i32>(u_input.a, var_2, u_input.a, var_3.a) ^ vec4<i32>(-40816i, u_input.a, 46014i, var_3.a)) >> (vec4<u32>(0u, 0u, 4294967295u, 36272u) % vec4<u32>(32u)), all(select(vec3<bool>(var_1, false, true), vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, var_1, true)))));
    let var_4 = ~var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(292f, _wgslsmith_f_op_f32(round(-415f)), 555f, 407f) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -822f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1281f + 2211f))), -585f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(vec2<bool>(var_1, false))).x)), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(380f + 1000f), -293f, var_1)))), -307f), _wgslsmith_dot_vec4_i32(-(-vec4<i32>(var_3.a, var_2, 19228i, 15138i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), min(vec4<i32>(var_2, 2147483647i, var_4, 2147483647i), countOneBits(vec4<i32>(1i, 1i, 276i, var_2))) ^ func_6(var_3, func_6(var_3, var_0.a, 1u).x, _wgslsmith_mod_u32(6417u, 4294967295u))), vec2<u32>(4294967295u, 1u), vec4<i32>(-2147483647i, abs(-var_2), -1i, ((i32(-1i) * -11095i) ^ var_3.a) << (4294967295u % 32u)));
}

