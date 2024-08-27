struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    return 2147483647i;
}

fn func_2() -> u32 {
    let var_0 = select(func_3(Struct_2(Struct_1(vec4<u32>(49627u, 10988u, 0u, 0u)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), u_input.a.yyw, Struct_1(vec4<u32>(25675u, 0u, 1u, 1u)))) <= ~(~u_input.c.x), any(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, true, all(vec4<bool>(true, true, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1055f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1493f * -887f))))));
    var var_2 = Struct_3(vec3<u32>(~14398u, min(abs(min(46830u, 0u)), ~countOneBits(1u)), countOneBits(1u)), select(!(!(!vec4<bool>(false, var_0, false, var_0))), vec4<bool>(any(vec4<bool>(true, true, false, var_0)), false, var_0, all(vec4<bool>(var_0, true, var_0, var_0))), true || any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1423f))), 36075u);
    var var_3 = Struct_1(vec4<u32>(var_2.a.x << (~(~var_2.d) % 32u), ~(~var_2.d) << (0u % 32u), (abs(var_2.d) << (~33659u % 32u)) | _wgslsmith_div_u32(abs(19955u), _wgslsmith_mult_u32(var_2.a.x, var_2.d)), select(48459u, countOneBits(4294967295u), true) ^ (_wgslsmith_div_u32(1u, var_2.d) | _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d, 1u, 1u, 1599u), vec4<u32>(29867u, 22458u, 21763u, var_2.a.x)))));
    var var_4 = Struct_3(~select(reverseBits(vec3<u32>(var_3.a.x, 40456u, 0u)), vec3<u32>(~var_3.a.x, var_3.a.x, _wgslsmith_div_u32(44312u, 2047u)), var_0 || true), select(select(vec4<bool>(select(false, var_0, false), true, var_0 && var_0, true), select(!var_2.b, var_2.b, var_0), var_2.b.x), !var_2.b, vec4<bool>(any(vec2<bool>(var_2.b.x, var_0)), all(vec2<bool>(var_2.b.x, false)), true & any(vec4<bool>(false, var_0, false, true)), var_2.b.x)), -1000f, ~(~(56543u & ~var_2.d)));
    return countOneBits(1u);
}

fn func_1() -> Struct_3 {
    global0 = ~func_2();
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(189f, -962f, 161f, -1525f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-528f, -727f, -915f, -814f) + vec4<f32>(-2033f, 873f, 166f, 645f)))), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false))))));
    var var_1 = select(vec4<bool>(all(vec4<bool>(select(false, true, true), true, true, all(vec2<bool>(false, false)))), any(vec3<bool>(false, all(vec4<bool>(false, true, false, true)), all(vec4<bool>(false, true, false, true)))), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), false), vec4<bool>(true, true | !any(vec4<bool>(false, true, true, false)), !all(vec2<bool>(true, true)), !(all(vec2<bool>(false, false)) || false)), true);
    let var_2 = 20988i;
    let var_3 = Struct_1(~firstTrailingBit(vec4<u32>(~4294967295u, ~4294967295u, max(134149u, 1u), 1940u)));
    return Struct_3(~vec3<u32>(~4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.x, var_3.a.x, var_3.a.x), vec3<u32>(57085u, 4294967295u, var_3.a.x)), 0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x, var_3.a.x, 0u, 4294967295u), vec4<u32>(var_3.a.x, 1u, var_3.a.x, var_3.a.x))), vec4<bool>(-abs(u_input.b.x) <= 0i, !all(vec4<bool>(false, var_1.x, false, var_1.x)), !var_1.x, var_1.x & any(select(vec4<bool>(false, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(true, var_1.x, var_1.x, true)))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1560f))))), ~(var_3.a.x << (var_3.a.x % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> vec2<u32> {
    let var_0 = select(!arg_2, select(vec3<bool>(!(arg_3.x <= 0u), true, (arg_0.b.x & arg_0.b.x) && any(arg_0.b)), select(arg_0.b.zxz, !(!vec3<bool>(arg_2.x, arg_2.x, true)), vec3<bool>(false, !arg_2.x, all(vec2<bool>(true, false)))), arg_2), vec3<bool>(arg_0.b.x, all(!vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x)), 0u >= _wgslsmith_div_u32(~arg_3.x, 0u)));
    let var_1 = Struct_2(Struct_1(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.x, 4294967295u, 23087u, 1u), vec4<u32>(25146u, 1u, arg_0.d, arg_3.x)), vec4<u32>(arg_0.a.x, arg_3.x, 4294967295u, 28686u))), !(!arg_0.b), ~select(abs(-vec3<i32>(u_input.c.x, -52955i, u_input.a.x)), vec3<i32>(~u_input.a.x, 2147483647i ^ u_input.a.x, min(u_input.c.x, u_input.c.x)), select(!vec3<bool>(arg_2.x, false, false), !vec3<bool>(arg_2.x, false, arg_2.x), arg_2.x)), Struct_1(~vec4<u32>(firstTrailingBit(54158u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.d, arg_0.a.x, 1u), vec4<u32>(0u, 27657u, arg_0.a.x, arg_3.x)), ~1542u, _wgslsmith_sub_u32(arg_0.d, arg_0.d))));
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-482f, var_2.c, 1455f) * vec3<f32>(arg_0.c, var_2.c, 464f)) + vec3<f32>(arg_0.c, arg_1.x, 276f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-536f, 104f, 329f))))));
    var var_4 = var_1.c | -(~(~vec3<i32>(2147483647i, 2147483647i, u_input.b.x)));
    return ~var_1.d.a.wx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(min(max(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(25541u, 108620u, 11098u)), min(vec3<u32>(19433u, 12110u, 0u), vec3<u32>(80666u, 12742u, 33832u))), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(86995u, 59256u, 40407u, 0u), vec4<u32>(4294967295u, 0u, 1u, 1u)), abs(59358u))), vec3<u32>(5045u, 4294967295u, ~(~45733u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(func_4(func_1(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1426f, -1099f)), vec3<bool>(true, true, true), ~vec2<u32>(0u, 4294967295u)), vec2<u32>(4294967295u, ~4294967295u))));
    var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(firstLeadingBit(~countOneBits(1u)), func_1().a.x), _wgslsmith_add_u32(1u << (1u % 32u), 19826u));
    var var_1 = !(all(vec4<bool>(any(vec3<bool>(false, true, false)), true, true, any(vec4<bool>(true, false, true, false)))) & all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)))));
    global0 = _wgslsmith_div_u32(_wgslsmith_div_u32(func_4(Struct_3(vec3<u32>(4294967295u, 65983u, 1u), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-1605f + 1000f), 22315u), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1214f, -1000f))), select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), _wgslsmith_sub_vec2_u32(vec2<u32>(109581u, 1u), vec2<u32>(1u, 1u))).x, 2454u), ~(0u & firstTrailingBit(~46013u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(max(vec3<u32>(8280u, 8029u, 5258u), vec3<u32>(34013u, 57391u, 26369u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(1u, 0u, 83674u)))));
}

