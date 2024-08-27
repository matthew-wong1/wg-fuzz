struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(34115i, 11226i), vec2<i32>(2147483647i, 2422i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, 25131i), vec2<i32>(-1i, 0i), vec2<i32>(45942i, 853i));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = 82259u;
    var var_1 = 2147483647i;
    var_0 = arg_0.a.x;
    var_1 = 2147483647i;
    var var_2 = vec2<f32>(-1014f, _wgslsmith_f_op_f32(abs(arg_1.x)));
    return ~(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, arg_2.a.x, arg_0.a.x, ~1u), arg_0.a) << (firstTrailingBit(~(~95977u)) % 32u));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> u32 {
    var var_0 = arg_1.x;
    var var_1 = max(_wgslsmith_mod_u32(4294967295u, arg_1.x & _wgslsmith_mod_u32(arg_1.x, ~arg_1.x)), ~_wgslsmith_mod_u32(32106u, func_3(Struct_1(vec4<u32>(38009u, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(-1000f, 832f, 258f, 350f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(929f, 833f, -337f, 1871f))), Struct_1(vec4<u32>(arg_1.x, 20195u, arg_1.x, arg_1.x), vec4<f32>(-428f, 1312f, 932f, 2036f)))));
    var_1 = arg_1.x;
    global0 = array<vec2<i32>, 6>();
    let var_2 = !all(vec3<bool>(true, !any(vec2<bool>(false, true)), all(vec2<bool>(true, false)) || true));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_1.x, arg_1.x) & ~vec3<u32>(0u, 59067u, arg_1.x), vec3<u32>(_wgslsmith_clamp_u32(0u, 18874u, 25871u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 0u, arg_1.x, 115752u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), ~arg_1.x)), vec3<u32>(~select(1u, 46739u, false), abs(1u) & arg_1.x, reverseBits(~arg_1.x))) | abs(_wgslsmith_div_u32(reverseBits(abs(1u)), _wgslsmith_clamp_u32(reverseBits(82136u), firstLeadingBit(42791u), 18648u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<u32>) -> vec2<u32> {
    global0 = array<vec2<i32>, 6>();
    var var_0 = vec4<u32>(4294967295u, ~func_2(11010i | u_input.a, ~(~vec2<u32>(arg_2.x, arg_0.a.x))), ~arg_0.a.x, ~(~1u));
    global0 = array<vec2<i32>, 6>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f), -1657f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, 1751f)))), _wgslsmith_f_op_f32(arg_0.b.x + 491f)) + _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1032f + arg_0.b.x)), all(vec3<bool>(false, false, true)))), true)));
    var var_2 = _wgslsmith_div_vec4_i32(-(~(-vec4<i32>(u_input.a, u_input.a, u_input.a, -22374i)) | firstTrailingBit(vec4<i32>(u_input.a, -2147483647i, -25948i, 26380i))), abs(-_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, 55454i)), -vec4<i32>(1i, 10656i, u_input.a, u_input.a))));
    return firstTrailingBit(vec2<u32>(4294967295u, var_0.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), !(arg_0.x >= firstTrailingBit(arg_1.x))), select(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), vec2<bool>(true, true), vec2<bool>(true, true)), all(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    var var_1 = ~(-firstTrailingBit(vec2<i32>(26180i << (1u % 32u), ~(-1i))));
    var var_2 = Struct_1(vec4<u32>(arg_1.x, _wgslsmith_clamp_u32(~arg_1.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(1u, 31126u)), arg_0), firstLeadingBit(1u)), arg_0.x, _wgslsmith_clamp_u32(arg_0.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(14047u, 1u), arg_0 ^ arg_0), min(min(1u, arg_0.x), ~4294967295u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))))));
    let var_3 = !(!var_0.x);
    global0 = array<vec2<i32>, 6>();
    return Struct_1(var_2.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.b.x, var_2.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1232f)))) + var_2.b.x), var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-780f * var_2.b.x), -839f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + _wgslsmith_f_op_f32(abs(var_2.b.x))))));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_u32(min(vec2<u32>(1u, arg_0.a.x >> (1u % 32u)), vec2<u32>(_wgslsmith_div_u32(arg_1, 39039u), arg_1)) << (vec2<u32>(arg_0.a.x, 46408u ^ arg_0.a.x) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 1u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, 4294967295u), arg_0.a.wx)));
    global0 = array<vec2<i32>, 6>();
    let var_1 = vec4<u32>(arg_1 ^ abs(arg_0.a.x & func_4(arg_0.a.yx, arg_0.a.zxz).a.x), 4294967295u, select(_wgslsmith_dot_vec2_u32(func_1(arg_0, arg_0.b.wx, var_0) & arg_0.a.ww, _wgslsmith_div_vec2_u32(arg_0.a.xy, func_4(vec2<u32>(99259u, arg_1), arg_0.a.xzw).a.yw)), ~(~0u), -2147483647i > u_input.a), arg_1);
    global0 = array<vec2<i32>, 6>();
    var var_2 = ~(~1u);
    return Struct_1(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), arg_0.a.zzz), ~0u, arg_0.a.x, 0u)), countOneBits(vec4<u32>(~67173u, ~0u, 42706u, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(func_4(var_1.wz ^ vec2<u32>(var_0.x, arg_0.a.x), var_1.wxy).b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4((func_1(Struct_1(vec4<u32>(28128u, 65710u, 20950u, 57268u), vec4<f32>(1222f, 2775f, 195f, 571f)), vec2<f32>(-350f, 765f), vec2<u32>(32563u, 4294967295u)) >> (~vec2<u32>(22331u, 1u) % vec2<u32>(32u))) >> (min(~vec2<u32>(40474u, 9160u), vec2<u32>(15610u, 32277u)) % vec2<u32>(32u)), ~(~vec3<u32>(1u, 1u, 1u))), abs(~func_4(func_1(Struct_1(vec4<u32>(4294967295u, 7975u, 33728u, 0u), vec4<f32>(1249f, -495f, 640f, 1636f)), vec2<f32>(-1000f, 103f), vec2<u32>(1u, 95014u)), vec3<u32>(1u, 1u, 1u)).a.x));
    let var_1 = func_5(Struct_1(firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(29370u, 4294967295u, var_0.a.x, var_0.a.x), vec4<u32>(var_0.a.x, 120732u, 78329u, 0u))), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - -257f)), var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x) - _wgslsmith_f_op_f32(ceil(var_0.b.x))))), var_0.a.x);
    let var_2 = i32(-1i) * -1i;
    global0 = array<vec2<i32>, 6>();
    var var_3 = vec3<i32>(1i, var_2, u_input.a);
    var var_4 = Struct_1(~(~(~var_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b * vec4<f32>(var_0.b.x, -1493f, var_1.b.x, 520f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 254f, -958f, var_0.b.x))), var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(var_1.b.xx)), 1u, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(var_0.b.x, func_5(var_1, var_4.a.x).b.x), 2329f, func_4(firstLeadingBit(var_0.a.xw), ~var_0.a.yyx).b.x))));
}

