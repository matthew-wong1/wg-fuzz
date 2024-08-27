struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<bool>,
    d: Struct_3,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec4<i32> {
    let var_0 = 1u;
    var var_1 = select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), all(vec4<bool>(false, false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)))), select(vec4<bool>(false, true, !all(vec4<bool>(false, true, false, false)), !all(vec2<bool>(true, false))), vec4<bool>(min(2900u, 41928u) >= ~u_input.a, !select(false, false, false), !any(vec2<bool>(false, false)), false), vec4<bool>(true, true, true, true)), true);
    var_1 = vec4<bool>(true, false, false, true | (all(!vec4<bool>(true, var_1.x, false, true)) & false));
    let var_2 = ~firstTrailingBit(vec2<u32>(countOneBits(var_0), u_input.a)) ^ vec2<u32>(var_0, 65747u);
    var var_3 = !select(select(vec4<bool>(true, any(vec4<bool>(true, false, true, false)), any(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), var_1.x || var_1.x), select(select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, var_1.x, true, true), vec4<bool>(false, var_1.x, false, false)), select(vec4<bool>(var_1.x, true, true, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x), var_1.x), vec4<bool>(true, var_1.x, true, var_1.x)), select(select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(false, true, true, false), var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), false))), !vec4<bool>(var_1.x, var_1.x, !var_1.x, var_1.x), true);
    return _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, -723i), _wgslsmith_sub_i32(0i, 43700i)), 1i, _wgslsmith_clamp_i32(max(-1i, -1i), -1i, -19501i), -(i32(-1i) * -1i)), ~(~(vec4<i32>(2147483647i, 2147483647i, -1i, -44077i) << (vec4<u32>(var_2.x, 0u, var_0, var_2.x) % vec4<u32>(32u)))) ^ vec4<i32>(1i, 1i, 1i, 1i));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: u32) -> vec2<i32> {
    let var_0 = Struct_4(Struct_1((func_3() | vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -2147483647i)) | min(-vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), max(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, 52649i, arg_0.x, -1i)))), vec2<f32>(617f, arg_1.x), vec3<bool>(false, arg_1.x <= 1497f, !(1u != ~arg_2)), Struct_3(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), vec4<i32>(51746i, reverseBits(abs(abs(2147483647i))), -31144i ^ (arg_0.x & arg_0.x), 57502i >> (firstTrailingBit(abs(0u)) % 32u)));
    var var_1 = Struct_4(Struct_1(abs((vec4<i32>(1i, arg_0.x, 2943i, -2147483647i) ^ var_0.a.a) << (~vec4<u32>(arg_2, 1u, u_input.a, 0u) % vec4<u32>(32u)))), var_0.b, !(!select(select(var_0.c, vec3<bool>(false, false, var_0.d.a.x), false), select(vec3<bool>(false, var_0.d.a.x, true), var_0.d.a, var_0.c), var_0.d.a)), Struct_3(select(!select(vec3<bool>(var_0.d.a.x, var_0.d.a.x, true), vec3<bool>(true, false, false), false), select(select(var_0.c, var_0.c, var_0.c.x), var_0.d.a, !var_0.c.x), !select(var_0.d.a, vec3<bool>(true, var_0.d.a.x, true), vec3<bool>(var_0.d.a.x, false, false)))), -(-var_0.e | _wgslsmith_sub_vec4_i32(var_0.a.a, vec4<i32>(arg_0.x, -33650i, arg_0.x, var_0.a.a.x))) << (~max(_wgslsmith_sub_vec4_u32(vec4<u32>(75921u, 1u, 54367u, arg_2), vec4<u32>(24572u, 0u, 4294967295u, arg_2)), vec4<u32>(11303u, arg_2, 111501u, 43538u)) % vec4<u32>(32u)));
    let var_2 = vec4<bool>(!var_1.c.x, true, any(select(var_0.c, vec3<bool>(all(vec3<bool>(true, false, var_1.c.x)), var_0.d.a.x, any(vec2<bool>(var_1.c.x, var_0.d.a.x))), any(select(vec4<bool>(var_1.d.a.x, var_0.d.a.x, var_1.c.x, true), vec4<bool>(var_0.d.a.x, false, var_1.c.x, false), vec4<bool>(false, var_1.c.x, false, false))))), !(!(var_0.b.x > _wgslsmith_f_op_f32(floor(var_0.b.x)))));
    var_1 = Struct_4(Struct_1(var_0.a.a ^ var_1.a.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, var_1.b.x))) - vec2<f32>(2034f, var_0.b.x)) + arg_1), select(select(select(!var_0.d.a, var_0.c, true), vec3<bool>(true & var_0.c.x, var_0.c.x | true, false), 13943u != arg_2), vec3<bool>(!var_2.x, false, !var_0.c.x), var_2.x), var_1.d, (-vec4<i32>(arg_0.x, var_0.a.a.x, arg_0.x, var_0.a.a.x) << (firstLeadingBit(vec4<u32>(16354u, arg_2, arg_2, arg_2) & vec4<u32>(4778u, 1u, arg_2, arg_2)) % vec4<u32>(32u))) & -(~reverseBits(vec4<i32>(var_0.a.a.x, -1i, -12232i, var_0.e.x))));
    let var_3 = vec2<bool>(false, true);
    return var_1.e.yz;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    let var_0 = ~(_wgslsmith_mod_i32(arg_2, -62182i) ^ ~1i);
    let var_1 = arg_1;
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(func_2(max(vec2<i32>(var_0, -39933i), vec2<i32>(-1i, arg_2)), vec2<f32>(-553f, -433f), u_input.a), func_2(max(vec2<i32>(1i, -5162i), vec2<i32>(2147483647i, 1i)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(400f, -359f))), u_input.a)), var_0), vec2<i32>(-1i, arg_2) ^ vec2<i32>(arg_2, -31823i));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -393f);
    var var_4 = var_3;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), vec2<u32>(u_input.a, u_input.a >> (0u % 32u)), 2147483647i)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(764f * -1186f)))) * 497f));
    let var_1 = 409f;
    let var_2 = 4294967295u;
    var var_3 = ~(~(func_2(vec2<i32>(1i, -1i), vec2<f32>(var_0, var_0), ~3400u).x ^ -1i));
    let x = u_input.a;
    s_output = StorageBuffer(1616f, ~vec4<i32>(_wgslsmith_sub_i32(min(-2147483647i, 2147483647i), countOneBits(1i)), func_2(select(vec2<i32>(-38243i, 1i), vec2<i32>(-47587i, 1i), vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, -1443f), vec2<f32>(-709f, var_0))), 1u).x, 1i, -6581i), ~(~var_2), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1044f, 1790f)))))), var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, false, true), vec2<u32>(0u, 16406u), 0i))), var_0)), _wgslsmith_f_op_f32(-1620f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(217f)) + _wgslsmith_f_op_f32(max(var_0, -692f))))));
}

