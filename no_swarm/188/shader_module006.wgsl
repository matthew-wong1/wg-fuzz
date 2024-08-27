struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(firstTrailingBit(~11498u), u_input.b.x)), vec2<u32>(~max(u_input.b.x, u_input.b.x) >> ((0u >> (~u_input.b.x % 32u)) % 32u), 4294967295u), ~vec2<u32>(_wgslsmith_mod_u32(~u_input.b.x, u_input.b.x << (30790u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(13731u, u_input.b.x, 26050u), abs(vec3<u32>(65227u, 79352u, 36144u)))));
    let var_1 = Struct_2(_wgslsmith_sub_u32(~max(u_input.b.x, ~u_input.b.x), abs(firstTrailingBit(4294967295u ^ var_0.x))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x - arg_0.a)), arg_1.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1175f), _wgslsmith_f_op_f32(arg_2.b.x * -2289f))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_vec2_f32(-arg_2.b)));
    let var_2 = abs(0u);
    let var_3 = Struct_2(var_1.a, arg_2, var_1.b);
    var var_4 = true;
    return Struct_1(1557f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(413f, _wgslsmith_f_op_f32(step(arg_1.x, var_3.c.a)), false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_3.c.b.x, var_1.c.a)), _wgslsmith_f_op_f32(f32(-1f) * -246f))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = vec4<bool>(any(vec3<bool>(any(vec4<bool>(var_0, var_0, var_0, true)), var_0, u_input.a.x > 8318i)) | true, (!(var_0 & false) || var_0) & !(!var_0), all(vec3<bool>(false, var_0, true)), var_0);
    let var_2 = var_0;
    var_1 = !select(!vec4<bool>(select(var_0, var_0, var_0), any(vec4<bool>(var_0, false, var_1.x, false)), var_1.x, var_0), !vec4<bool>(var_0, false, false, !var_1.x), !(!vec4<bool>(true, false, var_0, true)));
    let var_3 = arg_2;
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = arg_1;
    return Struct_2(~(~19759u), func_3(~vec3<u32>(82237u, 1u, arg_0.a) & vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, arg_1.a), u_input.b), reverseBits(4294967295u), arg_1.a), var_1.c, _wgslsmith_f_op_f32(2489f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.b))), func_2(Struct_1(arg_0.c.b.x, arg_0.c.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a, -202f))), var_1.c));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = 1000f;
    let var_1 = 1u;
    var var_2 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), arg_3.x > u_input.a.x), vec2<bool>(4294967295u == u_input.b.x, false)), all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), 1i > abs(arg_3.x))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(-1793f, 228f)), -334f, var_0);
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.x, -1564f, arg_1)))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, var_3.x))), -928f), vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))));
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = func_5(func_4(Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.x >> (u_input.b.x % 32u)), arg_0, arg_0), Struct_2(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1730u, 39391u, u_input.b.x)), firstTrailingBit(vec3<u32>(u_input.c, 0u, u_input.b.x))), func_3(vec3<u32>(u_input.b.x, u_input.b.x, u_input.c) & vec3<u32>(0u, 26686u, u_input.c), func_2(arg_0, arg_0.b, Struct_1(362f, vec2<f32>(arg_0.a, arg_0.a))), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_vec2_f32(arg_0.b + vec2<f32>(487f, 272f))), Struct_1(_wgslsmith_f_op_f32(min(199f, 1000f)), _wgslsmith_f_op_vec2_f32(-arg_0.b))), ~(vec3<i32>(-1i) * -u_input.a.zxx), select(u_input.c, u_input.b.x, arg_0.a > -422f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a)))), func_3(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c, 72949u), min(u_input.c, 0u)), ~u_input.c, u_input.b.x), arg_0, _wgslsmith_f_op_f32(-func_4(func_4(Struct_2(110874u, Struct_1(218f, arg_0.b), Struct_1(arg_0.a, vec2<f32>(-697f, arg_0.a))), Struct_2(27352u, Struct_1(-999f, arg_0.b), arg_0), u_input.a.wzw, u_input.b.x), func_4(Struct_2(u_input.c, Struct_1(-106f, arg_0.b), Struct_1(arg_0.a, arg_0.b)), Struct_2(u_input.c, Struct_1(arg_0.b.x, arg_0.b), arg_0), vec3<i32>(u_input.a.x, 0i, u_input.a.x), 0u), ~vec3<i32>(u_input.a.x, 6262i, 5344i), u_input.c ^ u_input.b.x).c.a), vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -372f) - arg_0.a))), vec3<i32>(~u_input.a.x, ~u_input.a.x, -1i));
    var var_1 = func_2(arg_0, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a, var_0.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(var_0.a + 282f)) * func_2(func_2(Struct_1(1000f, vec2<f32>(arg_0.a, 296f)), arg_0.b, arg_0), vec2<f32>(var_0.a, 1018f), func_2(var_0, arg_0.b, var_0)).a)), var_0);
    let var_2 = vec2<u32>(min(countOneBits(1u), ~u_input.c), _wgslsmith_mod_u32(u_input.b.x, 0u) << (u_input.c % 32u));
    var_1 = arg_0;
    let var_3 = var_0;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(1419f * -1487f), _wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_div_f32(arg_0.a, var_3.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, ~min(u_input.c, u_input.c ^ 38060u)), u_input.b);
    let var_1 = false;
    var_0 = _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_add_u32(~u_input.c, 51905u));
    var_0 = abs(4294967295u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1421f)), _wgslsmith_f_op_f32(-1617f - 632f), _wgslsmith_f_op_f32(abs(748f)), _wgslsmith_div_f32(-803f, 300f))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-567f, -372f, 1000f, -328f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-779f, 1004f, -499f, 310f))) + _wgslsmith_f_op_vec4_f32(func_1(Struct_1(-387f, vec2<f32>(-906f, 1637f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1595f, _wgslsmith_f_op_f32(-422f + 1871f), 562f, 562f)))));
    let var_3 = true;
    let var_4 = u_input.b.x;
    var_0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, var_2.x, 848f, -1000f))), vec4<f32>(426f, 1000f, var_2.x, var_2.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1200f, var_2.x, -620f, var_2.x)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-939f, var_2.x, var_2.x, var_2.x) - vec4<f32>(var_2.x, 2264f, -625f, var_2.x)), vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(288f, var_2.x, var_2.x), var_2.yxz))))), -894f);
}

