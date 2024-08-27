struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    let var_0 = 63488u;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1262f, -971f, -1140f), vec3<f32>(386f, -120f, 479f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(863f, -117f, 776f)), true)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(640f, -1174f, -1150f) - vec3<f32>(1827f, 1000f, -1388f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(531f, -1557f, -769f)) - vec3<f32>(2065f, 1249f, -300f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(807f)), _wgslsmith_f_op_f32(sign(-627f)), 146f)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2) -> f32 {
    var var_0 = 2147483647i;
    var var_1 = !any(!vec3<bool>(true, true, arg_2.b.c));
    var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3()), ~arg_1, true);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -844f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_2.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -242f)))))), _wgslsmith_f_op_f32(-arg_2.b.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-243f, _wgslsmith_div_f32(arg_2.b.a.x, 265f)))), 1715f);
    return 806f;
}

fn func_1() -> i32 {
    let var_0 = 0i;
    var var_1 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-634f * -1000f))), 286f))));
    let var_2 = Struct_1(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-537f - -818f)) * 1043f), _wgslsmith_f_op_f32(func_2(vec4<i32>(-1i) * -u_input.c, -17052i, Struct_2(vec2<bool>(false, false), Struct_1(vec3<f32>(-1078f, -1000f, -1294f), -2147483647i, false))))), _wgslsmith_dot_vec4_i32(u_input.c, ~(~u_input.c)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, false, false)), false, true), vec4<bool>(true, false, true, true))));
    var var_3 = Struct_2(!select(vec2<bool>(!var_2.c, all(vec4<bool>(false, true, var_2.c, var_2.c))), !select(vec2<bool>(var_2.c, true), vec2<bool>(var_2.c, var_2.c), vec2<bool>(false, var_2.c)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(var_2.c, var_2.c)), vec2<bool>(true, true), !vec2<bool>(true, var_2.c))), var_2);
    var_3 = Struct_2(var_3.a, Struct_1(var_3.b.a, 1i & _wgslsmith_mult_i32(2677i, u_input.b), true));
    return var_2.b;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(select(arg_1.a, !(!select(arg_1.a, vec2<bool>(arg_2.c, false), vec2<bool>(arg_0, true))), !select(vec2<bool>(arg_1.b.c, arg_2.c), arg_1.a, select(true, true, true))), arg_2);
    let var_1 = Struct_2(vec2<bool>(true, all(vec4<bool>(any(vec2<bool>(arg_1.b.c, true)), select(var_0.b.c, true, true), true, true))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1885f, -1190f, -402f), vec3<f32>(var_0.b.a.x, arg_2.a.x, arg_2.a.x))) + _wgslsmith_f_op_vec3_f32(round(arg_1.b.a))), -79188i, select(true, arg_1.b.c, !arg_1.a.x)));
    var var_2 = var_1;
    let var_3 = ~_wgslsmith_clamp_u32(3226u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 37509u, 14391u), ~vec3<u32>(1u, u_input.a.x, u_input.a.x)) ^ u_input.a.x, firstLeadingBit(34916u));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(116f, _wgslsmith_f_op_f32(-var_2.b.a.x)) * vec2<f32>(505f, -488f));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(201f + var_2.b.a.x), _wgslsmith_f_op_f32(func_2(abs(vec4<i32>(-8182i, arg_2.b, -21598i, var_2.b.b)), ~_wgslsmith_div_i32(arg_2.b, 2147483647i), Struct_2(arg_1.a, Struct_1(vec3<f32>(362f, 201f, var_1.b.a.x), 17560i, var_2.a.x)))), -1000f), var_1.b.b | var_0.b.b, arg_2.a.x == var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, reverseBits(1u), 38245u), firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 11542u, 102378u), vec3<u32>(u_input.a.x, 4294967295u, 0u)), u_input.a.x >> (4294967295u % 32u), 79013u))), ~_wgslsmith_mod_vec3_u32(abs(~vec3<u32>(4294967295u, 0u, u_input.a.x)), ~(vec3<u32>(44489u, u_input.a.x, 10806u) | vec3<u32>(0u, 1u, 1u))));
    var var_2 = func_4(var_0, Struct_2(vec2<bool>(true, !(!var_0)), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(169f, 396f, 1416f), _wgslsmith_div_vec3_f32(vec3<f32>(261f, 1701f, 1752f), vec3<f32>(-1000f, -523f, 1177f))), func_1(), any(select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(true, var_0, var_0, false), vec4<bool>(false, false, var_0, var_0))))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1121f, 1177f, -1288f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 2197f, 174f) * vec3<f32>(-1043f, -1155f, -173f))))), -_wgslsmith_add_i32(u_input.b >> (21225u % 32u), _wgslsmith_dot_vec2_i32(u_input.c.wx, vec2<i32>(u_input.c.x, u_input.c.x))), true));
    let var_3 = func_4(true, Struct_2(select(select(vec2<bool>(true, var_2.c), vec2<bool>(false, false), vec2<bool>(var_0, var_2.c)), vec2<bool>(var_2.c, var_2.c), vec2<bool>(true, true)), func_4(!var_0, Struct_2(vec2<bool>(true, false), Struct_1(vec3<f32>(var_2.a.x, var_2.a.x, -1548f), u_input.c.x, false)), func_4(false, Struct_2(vec2<bool>(var_0, var_0), Struct_1(var_2.a, u_input.c.x, false)), Struct_1(vec3<f32>(var_2.a.x, -2079f, var_2.a.x), var_2.b, var_2.c)))), func_4(false, Struct_2(vec2<bool>(true, true), Struct_1(vec3<f32>(var_2.a.x, var_2.a.x, -433f), 2147483647i, var_2.c)), Struct_1(_wgslsmith_f_op_vec3_f32(var_2.a - vec3<f32>(-288f, var_2.a.x, -162f)), u_input.c.x >> (u_input.a.x % 32u), select(false, var_2.c, var_2.c)))).b ^ (4369i ^ var_2.b);
    var var_4 = func_4(var_2.c, Struct_2(select(vec2<bool>(true, true), select(vec2<bool>(false, var_2.c), !vec2<bool>(true, var_2.c), !var_2.c), vec2<bool>(!var_0, var_2.c | var_0)), func_4(var_0, Struct_2(vec2<bool>(true, true), func_4(true, Struct_2(vec2<bool>(false, var_2.c), Struct_1(vec3<f32>(120f, var_2.a.x, var_2.a.x), u_input.c.x, var_2.c)), Struct_1(vec3<f32>(var_2.a.x, 1529f, -1000f), u_input.c.x, true))), func_4(select(false, false, true), Struct_2(vec2<bool>(var_2.c, var_2.c), Struct_1(vec3<f32>(259f, var_2.a.x, var_2.a.x), 15992i, var_2.c)), func_4(var_0, Struct_2(vec2<bool>(true, false), Struct_1(var_2.a, u_input.b, var_2.c)), Struct_1(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x), var_2.b, true))))), func_4(var_2.c, Struct_2(vec2<bool>(!var_2.c, var_2.c), Struct_1(vec3<f32>(var_2.a.x, 1571f, var_2.a.x), reverseBits(83381i), false != var_0)), Struct_1(_wgslsmith_f_op_vec3_f32(func_3()), -31384i, all(!vec2<bool>(var_2.c, true))))).b;
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3()).yx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3()).zx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-520f, 1000f, var_2.a.x, var_5.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(457f, var_2.a.x, var_2.a.x, -298f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1127f, 1135f, var_5.x, var_2.a.x) + vec4<f32>(var_5.x, -373f, 598f, var_2.a.x)))))), ~firstLeadingBit(47944i), _wgslsmith_f_op_f32(abs(var_5.x)), -1i, -21768i);
}

