struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(13807u, -259f, 1000f, vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec3<f32>(273f, -1325f, 502f)), Struct_1(0u, 979f, 1455f, vec4<u32>(18525u, 4294967295u, 0u, 1u), vec3<f32>(1897f, 1833f, 1339f)), Struct_1(1u, 549f, 259f, vec4<u32>(46755u, 0u, 26260u, 70944u), vec3<f32>(1552f, -1694f, -154f)), Struct_1(28419u, -588f, 1833f, vec4<u32>(42562u, 57625u, 1u, 61222u), vec3<f32>(-1643f, -1738f, 2246f)), Struct_1(0u, 511f, 1025f, vec4<u32>(25400u, 1u, 55721u, 0u), vec3<f32>(-1000f, 1525f, -169f)), Struct_1(49361u, 776f, 1845f, vec4<u32>(4709u, 1u, 1u, 4294967295u), vec3<f32>(-926f, 619f, 2003f)), Struct_1(49542u, -694f, -313f, vec4<u32>(1u, 0u, 0u, 0u), vec3<f32>(-1000f, 542f, 1703f)), Struct_1(26841u, 1101f, 366f, vec4<u32>(54943u, 62349u, 0u, 4294967295u), vec3<f32>(-969f, -1172f, -409f)), Struct_1(93673u, -377f, -1086f, vec4<u32>(0u, 9728u, 0u, 4294967295u), vec3<f32>(149f, -335f, 975f)), Struct_1(1u, -104f, 929f, vec4<u32>(0u, 0u, 51065u, 9372u), vec3<f32>(-906f, -1487f, 1391f)), Struct_1(0u, -508f, 887f, vec4<u32>(1u, 1u, 124323u, 14028u), vec3<f32>(-924f, 796f, 712f)), Struct_1(55857u, 2270f, -1535f, vec4<u32>(0u, 24346u, 20808u, 15085u), vec3<f32>(1931f, 476f, -407f)), Struct_1(0u, 249f, 115f, vec4<u32>(4294967295u, 0u, 38671u, 0u), vec3<f32>(739f, 304f, -893f)), Struct_1(52453u, -1142f, 1523f, vec4<u32>(8799u, 7942u, 1u, 0u), vec3<f32>(-809f, -1031f, -484f)), Struct_1(2579u, -314f, -1120f, vec4<u32>(17349u, 78954u, 10963u, 4294967295u), vec3<f32>(354f, -2564f, 350f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = !(!select(vec3<bool>(arg_3.c != arg_3.c, !arg_3.c, u_input.b.x != u_input.c.x), vec3<bool>(false, true, !arg_3.c), vec3<bool>(true, true, true)));
    let var_1 = 557f;
    var var_2 = arg_3;
    var_0 = select(vec3<bool>(var_0.x && any(var_0.zx), all(select(vec3<bool>(arg_3.c, false, true), !vec3<bool>(var_2.c, var_2.c, false), true)), var_2.c), select(select(vec3<bool>(var_0.x, !arg_3.c, true), select(!vec3<bool>(false, var_0.x, var_2.c), !vec3<bool>(true, var_2.c, arg_3.c), select(vec3<bool>(true, var_2.c, arg_3.c), vec3<bool>(var_0.x, true, var_2.c), arg_3.c)), select(!vec3<bool>(true, var_2.c, var_0.x), vec3<bool>(true, arg_3.c, var_2.c), !vec3<bool>(false, arg_3.c, var_2.c))), select(vec3<bool>(!var_2.c, any(var_0.yy), true), !select(vec3<bool>(true, false, arg_3.c), vec3<bool>(var_2.c, true, var_0.x), var_0.x), select(!vec3<bool>(arg_3.c, var_2.c, var_0.x), select(vec3<bool>(var_0.x, false, var_2.c), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, var_0.x), vec3<bool>(arg_3.c, var_2.c, true), arg_3.c))), vec3<bool>(var_0.x, !var_0.x, true)), select(!select(!vec3<bool>(false, false, var_0.x), !vec3<bool>(var_0.x, arg_3.c, arg_3.c), select(vec3<bool>(false, false, arg_3.c), vec3<bool>(var_0.x, var_0.x, var_2.c), vec3<bool>(var_2.c, arg_3.c, var_0.x))), vec3<bool>(true, any(vec2<bool>(var_0.x, false)), u_input.d.x > -1i), any(var_0.yx)));
    var_2 = arg_3;
    return ~23377u;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(~0u, 15u)], ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(func_3(Struct_1(61761u, 336f, 879f, vec4<u32>(955u, u_input.a, 34837u, 56272u), vec3<f32>(1095f, -1863f, -246f)), vec3<f32>(618f, -120f, -1000f), vec3<u32>(u_input.a, 1u, 26116u), Struct_2(global0[_wgslsmith_index_u32(1u, 15u)], 0u, true)), abs(u_input.a)), 34440u), ~countOneBits(~4294967295u) == ~u_input.a);
    var var_1 = Struct_2(Struct_1(var_0.b | u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.c - var_0.a.e.x), var_0.a.b)), _wgslsmith_f_op_f32(351f + _wgslsmith_f_op_f32(-var_0.a.e.x)), var_0.c)), var_0.a.e.x, vec4<u32>(35525u, _wgslsmith_dot_vec2_u32(var_0.a.d.zy, vec2<u32>(u_input.a, 1u)), max(1u, u_input.a), ~(~4294967295u)), _wgslsmith_f_op_vec3_f32(var_0.a.e - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(var_0.a.e, vec3<f32>(var_0.a.e.x, var_0.a.e.x, var_0.a.e.x), vec3<bool>(var_0.c, var_0.c, true))))))), _wgslsmith_mult_u32(~4294967295u, u_input.a), !any(!select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.c, var_0.c, false, var_0.c), true)));
    var_1 = Struct_2(Struct_1(~max(0u, 82556u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-938f * _wgslsmith_f_op_f32(-var_0.a.e.x)))), var_1.a.c, var_0.a.d, var_0.a.e), _wgslsmith_mod_u32(var_1.b, u_input.a), any(!select(!vec3<bool>(false, var_0.c, true), vec3<bool>(var_1.c, var_0.c, false), vec3<bool>(true, var_1.c, var_0.c))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.e.x + var_0.a.e.x));
    let var_3 = abs(~var_0.a.d);
    return _wgslsmith_f_op_f32(round(var_1.a.c));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    var var_1 = -888f;
    var var_2 = firstTrailingBit(arg_0);
    var var_3 = !vec4<bool>(23852u < u_input.a, u_input.a < 0u, true, true);
    var var_4 = vec3<i32>(arg_1.x, u_input.b.x & u_input.c.x, -2147483647i);
    return !(!(!vec4<bool>(true, var_3.x & false, false, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c;
    let var_1 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, 0i >= var_0.x, true), true), func_1(~u_input.a, ~vec4<i32>(-6082i, 1i, var_0.x, u_input.d.x), vec3<f32>(-1162f, _wgslsmith_f_op_f32(-1685f - 597f), _wgslsmith_f_op_f32(-544f - 2102f))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), true), vec4<bool>(false, true, any(vec3<bool>(false, true, true)), true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(sign(252f)))), 463f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-702f, 398f, 1812f) * vec3<f32>(190f, -210f, 296f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1268f, -1850f, -399f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2385f, 1459f, 818f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1412f, 187f, 250f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-154f, -856f, -176f))))))));
    let var_3 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(min(reverseBits(vec4<u32>(25114u, u_input.a, u_input.a, u_input.a)), reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 40347u, 0u, u_input.a)), vec4<u32>(0u, 89826u, 4294967295u, u_input.a) >> (vec4<u32>(1u, u_input.a, 1u, u_input.a) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 9581u, 1u), vec4<u32>(u_input.a, 63516u, 0u, 14524u)), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), vec4<u32>(0u, 4294967295u, u_input.a, 100241u)), min(vec4<u32>(44327u, u_input.a, 1949u, u_input.a), vec4<u32>(u_input.a, 50369u, u_input.a, 69090u)), ~vec4<u32>(u_input.a, u_input.a, 82184u, 61481u)), _wgslsmith_mod_vec4_u32(vec4<u32>(112652u, 4294967295u, u_input.a, 0u) >> (vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.a, 38702u, u_input.a) | vec4<u32>(35360u, 16432u, 4294967295u, 1u))))), 15u)];
    var_0 = firstLeadingBit(_wgslsmith_div_vec4_i32(u_input.c, u_input.c));
    var_0 = max(u_input.c, countOneBits(vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(~var_0.x, _wgslsmith_mult_i32(2147483647i, var_0.x)), abs(u_input.d.x), _wgslsmith_mult_i32(var_0.x, var_0.x) << (abs(31974u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.x, -10999i), -341f, _wgslsmith_mult_u32(~var_3.d.x, select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.d.x, 0u), firstTrailingBit(var_3.d.yx)), abs(countOneBits(12952u)), var_1)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-444f, -1000f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-var_3.c))));
}

