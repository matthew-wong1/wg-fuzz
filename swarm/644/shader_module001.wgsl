struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> bool {
    var var_0 = vec2<bool>(!select(true, true, false), all(!(!vec2<bool>(false, arg_1.a))) != !all(select(vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(arg_1.a, false, false), vec3<bool>(true, false, false))));
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1458f, -1739f, arg_1.b, arg_1.b) - vec4<f32>(arg_1.b, arg_0, -409f, 923f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.b, arg_1.b, arg_1.b, -370f)))), !(!var_0.x)), u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-884f, arg_1.b, 1000f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1103f)), _wgslsmith_f_op_f32(-1000f + arg_0), _wgslsmith_f_op_f32(arg_0 - arg_1.b), arg_1.b) + vec4<f32>(_wgslsmith_f_op_f32(floor(629f)), _wgslsmith_f_op_f32(abs(207f)), _wgslsmith_div_f32(-923f, arg_1.b), -2851f)), arg_1.a), u_input.b | abs(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 37302u), u_input.b)), arg_1.b, u_input.b.x ^ _wgslsmith_mult_u32(u_input.b.x, 0u));
    let var_2 = 1u >> (1u % 32u);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1724f) - _wgslsmith_f_op_f32(1000f - var_1.b.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -853f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.d, _wgslsmith_f_op_f32(abs(-607f)))) + var_1.b.a.x), _wgslsmith_f_op_f32(-arg_0));
    var_1 = Struct_3(var_1.a, var_1.a.a, select(vec2<u32>(var_1.c.x, var_2 << (u_input.c % 32u)), u_input.b, vec2<bool>(false, _wgslsmith_add_i32(-25891i, -23891i) < _wgslsmith_add_i32(55990i, u_input.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2248f, arg_0))), u_input.d);
    return arg_1.a;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = true;
    let var_1 = arg_0.x;
    let var_2 = !(!arg_0);
    let var_3 = Struct_5(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(416f, 131f, -398f, -707f), vec4<f32>(-963f, -1472f, -767f, 600f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -2311f, 652f, 160f), vec4<f32>(869f, -114f, 270f, -423f)) * vec4<f32>(463f, 1000f, -417f, 1331f))), !(var_2.x && var_2.x) | func_3(_wgslsmith_f_op_f32(1161f * 661f), Struct_4(var_1, -353f))), u_input.c, 0u, Struct_4(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(278f))), 738f))), Struct_4(var_1, _wgslsmith_div_f32(-489f, _wgslsmith_f_op_f32(ceil(991f)))));
    var_0 = var_2.x;
    return Struct_2(var_3.a, ~countOneBits(8613u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.a.x, -1259f, var_3.a.a.x))), vec3<f32>(_wgslsmith_f_op_f32(var_3.a.a.x - 376f), _wgslsmith_f_op_f32(864f - var_3.e.b), _wgslsmith_f_op_f32(-var_3.d.b))))));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = abs(max(4294967295u ^ ~u_input.c, u_input.d));
    let var_1 = firstLeadingBit(u_input.a.x);
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(~var_0 << (35224u % 32u)), abs(min(_wgslsmith_clamp_u32(4294967295u, u_input.d, u_input.d), _wgslsmith_add_u32(var_0, arg_0.e))), ~1827u, arg_0.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(max(1u, 44445u) ^ u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, arg_0.a.b), arg_0.c), 61819u), 92894u, ~(~arg_0.a.b)), vec4<u32>(arg_0.a.b, ~(~var_0), _wgslsmith_add_u32(~var_0, ~92839u), 10716u)));
    var var_3 = arg_0.b.a.wxx;
    var_3 = _wgslsmith_f_op_vec3_f32(-arg_0.b.a.wwx);
    return func_2(select(select(vec4<bool>(true, true, all(vec4<bool>(arg_0.a.a.b, true, true, arg_0.a.a.b)), var_3.x != arg_0.b.a.x), !vec4<bool>(true, arg_0.b.b, arg_0.b.b, false), select(!vec4<bool>(true, true, arg_0.b.b, true), select(vec4<bool>(true, arg_0.b.b, true, arg_0.a.a.b), vec4<bool>(true, false, true, false), vec4<bool>(arg_0.a.a.b, arg_0.b.b, arg_0.a.a.b, true)), select(vec4<bool>(false, arg_0.a.a.b, arg_0.a.a.b, arg_0.b.b), vec4<bool>(arg_0.b.b, arg_0.a.a.b, arg_0.b.b, arg_0.a.a.b), vec4<bool>(false, arg_0.a.a.b, arg_0.a.a.b, arg_0.b.b)))), vec4<bool>(false, arg_0.a.a.b, !arg_0.a.a.b, arg_0.b.b), select(!(!vec4<bool>(false, arg_0.a.a.b, false, false)), select(vec4<bool>(arg_0.a.a.b, arg_0.b.b, false, false), vec4<bool>(arg_0.a.a.b, true, true, true), all(vec4<bool>(true, false, true, arg_0.a.a.b))), !(!vec4<bool>(arg_0.b.b, false, false, arg_0.a.a.b)))));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: bool, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = func_4(Struct_3(func_2(vec4<bool>(true, arg_2, true, false)), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -455f) * vec4<f32>(arg_0, arg_0, arg_0, -165f)))), !arg_2 || true), ~(~(~vec2<u32>(8715u, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -783f))), u_input.b.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_2(vec4<bool>(var_0.a.b, var_0.a.b, arg_2, var_0.a.b)).a.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.a))))), all(select(select(vec4<bool>(var_0.a.b, arg_2, false, false), !vec4<bool>(var_0.a.b, false, true, false), select(vec4<bool>(var_0.a.b, true, true, true), vec4<bool>(var_0.a.b, var_0.a.b, arg_2, true), vec4<bool>(var_0.a.b, var_0.a.b, true, true))), vec4<bool>(arg_2 | true, var_0.a.b, func_4(Struct_3(Struct_2(var_0.a, u_input.d, var_0.c), var_0.a, u_input.b, var_0.c.x, 47909u)).a.b, false), !(!var_0.a.b))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a + var_1.a), var_0.a.a), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-439f, -1142f, 719f, var_0.a.a.x)))))), var_1.b), 1u << (select(_wgslsmith_mult_u32(12889u << (1u % 32u), ~4294967295u), 1u, true) % 32u), _wgslsmith_f_op_vec3_f32(-var_0.a.a.zxx));
    let var_3 = all(vec4<bool>(false, true, true, false));
    var var_4 = abs(~34621u);
    return vec2<bool>(var_0.a.b, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = true || all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), func_1(-117f, vec3<i32>(u_input.a.x, var_0.x, -2147483647i), false, vec4<i32>(2147483647i, 2147483647i, u_input.a.x, var_0.x))), true));
    var var_2 = !select(vec3<bool>(true, true, false), select(select(vec3<bool>(true, var_1, false), vec3<bool>(true, true, true), !vec3<bool>(false, true, var_1)), !vec3<bool>(false, var_1, false), any(!vec3<bool>(false, var_1, var_1))), select(!(!vec3<bool>(var_1, var_1, true)), vec3<bool>(!var_1, false, var_1), false));
    let var_3 = vec3<i32>(select(_wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.x, u_input.a.x << (u_input.c % 32u)), _wgslsmith_sub_i32(~1i, countOneBits(27702i))), u_input.a.x, !all(!var_2.yy)), _wgslsmith_clamp_i32(-19082i, 1i, var_0.x), abs(-1i));
    var var_4 = select(~vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(u_input.a.x, -1i)), ~(-50315i)) >> ((~(~vec3<u32>(u_input.d, u_input.d, 4413u)) & (abs(vec3<u32>(1u, 23831u, u_input.d)) & vec3<u32>(u_input.d, 1664u, 38719u))) % vec3<u32>(32u)), var_3, vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1164f) + _wgslsmith_f_op_f32(-140f - -1000f)) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -313f))), all(vec4<bool>(var_1 && false, func_1(2309f, var_3, var_1, vec4<i32>(26427i, 66736i, var_0.x, 1i)).x, var_1, var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, u_input.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1035f, 571f), _wgslsmith_f_op_f32(f32(-1f) * -866f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(558f, 797f, var_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, 205f)), _wgslsmith_f_op_f32(trunc(571f)))), vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, false, var_2.x, var_1)).a.a.x - -642f), _wgslsmith_f_op_f32(min(-358f, _wgslsmith_f_op_f32(min(-914f, -2588f)))), _wgslsmith_f_op_f32(962f * _wgslsmith_f_op_f32(min(-1000f, 167f)))), !select(!vec3<bool>(var_1, false, var_2.x), select(vec3<bool>(var_1, true, false), vec3<bool>(false, var_2.x, var_1), var_2.x), select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(true, true, true), vec3<bool>(true, false, var_2.x))))), vec4<f32>(-365f, 592f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1013f)))), _wgslsmith_f_op_f32(1f + -404f)))));
}

