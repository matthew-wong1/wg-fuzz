struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = firstTrailingBit(~(1u | u_input.e));
    let var_1 = vec2<bool>(true, true);
    var var_2 = 24262i;
    var_2 = reverseBits(18067i);
    var_2 = _wgslsmith_sub_i32(~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, 0i, u_input.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -14044i, 2147483647i), u_input.a)), _wgslsmith_mod_i32(abs(-8042i), u_input.b)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-26314i, u_input.b) ^ vec2<i32>(-1720i, u_input.a.x), ~vec2<i32>(u_input.b, -31622i)), u_input.a.yx));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1580f), _wgslsmith_f_op_f32(floor(1369f)))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    var var_0 = arg_1.x;
    let var_1 = Struct_2(Struct_1(~(vec2<u32>(u_input.e, u_input.c) | max(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.e, u_input.c)))));
    var_0 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var_0 = !arg_1.x;
    return 4294967295u;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<u32>) -> bool {
    var var_0 = vec4<u32>(~firstTrailingBit(19483u), ~(57517u | func_2(arg_0.xx, select(vec4<bool>(true, true, arg_1, true), vec4<bool>(false, false, false, arg_1), vec4<bool>(false, arg_1, false, arg_1)), _wgslsmith_f_op_f32(select(arg_0.x, -1096f, arg_1)))), u_input.c & 30907u, 4294967295u);
    var_0 = abs(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.e, 61695u), vec4<u32>(0u, arg_2.x, var_0.x, 4294967295u), vec4<u32>(1u, 1u, 0u, var_0.x)) >> (vec4<u32>(46525u, u_input.c, 4294967295u, 1u) % vec4<u32>(32u)))) & select(reverseBits(vec4<u32>(66228u, 0u, u_input.c, 0u) & vec4<u32>(0u, var_0.x, var_0.x, 29827u)) << (~(vec4<u32>(56625u, arg_2.x, 4294967295u, 0u) & vec4<u32>(1u, var_0.x, 4294967295u, 0u)) % vec4<u32>(32u)), ~reverseBits(abs(vec4<u32>(1u, 53484u, 47811u, u_input.e))), select(vec4<bool>(false, !arg_1, true, true), select(vec4<bool>(arg_1, true, true, false), select(vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1)), vec4<bool>(false, true, true, arg_1)), !arg_1 | true));
    let var_1 = vec2<u32>(77566u, 36232u);
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(var_1, var_0.xx)));
    var var_3 = Struct_3(vec4<bool>(!(all(vec4<bool>(false, arg_1, true, arg_1)) != any(vec3<bool>(arg_1, true, arg_1))), true, false, !arg_1 || !all(vec3<bool>(arg_1, arg_1, true))));
    return !any(!vec3<bool>(all(vec4<bool>(false, var_3.a.x, false, true)), !var_3.a.x, var_3.a.x | false));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_3 {
    let var_0 = vec4<bool>(true, true, true, true);
    var var_1 = Struct_2(Struct_1(vec2<u32>(~_wgslsmith_mod_u32(4294967295u, u_input.e), ~u_input.c ^ (0u << (0u % 32u)))));
    let var_2 = var_1.a;
    var var_3 = Struct_2(var_1.a);
    var_3 = Struct_2(var_1.a);
    return Struct_3(!vec4<bool>(true, true, var_0.x, func_1(vec3<f32>(-349f, 1213f, 1000f), var_0.x, vec3<u32>(var_3.a.a.x, 0u, u_input.c)) && (var_0.x & false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.a.x | _wgslsmith_sub_i32(u_input.a.x, ~13832i), abs(~(-u_input.b)), 1i) & -u_input.a;
    var var_1 = Struct_3(!vec4<bool>(false, _wgslsmith_dot_vec3_i32(u_input.a, var_0) != u_input.a.x, !all(vec3<bool>(true, false, true)), true));
    var_1 = func_4(_wgslsmith_sub_vec4_i32(select(abs(vec4<i32>(u_input.a.x, var_0.x, 77639i, var_0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(30071i, var_0.x, 150i, var_0.x), vec4<i32>(-1i, u_input.d, u_input.d, u_input.d)), vec4<bool>(select(true, var_1.a.x, true), any(var_1.a.xw), func_1(vec3<f32>(-667f, -727f, 1028f), var_1.a.x, vec3<u32>(u_input.e, 1u, u_input.e)), true)), -min(~vec4<i32>(-15446i, 31573i, -2147483647i, var_0.x), reverseBits(vec4<i32>(var_0.x, 70218i, u_input.b, 0i)))), u_input.e);
    let var_2 = max(~(~vec2<u32>(1u, 0u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.e), vec2<u32>(u_input.e, u_input.e)), ~u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, u_input.c), firstTrailingBit(vec2<u32>(30151u, 4294967295u))), select(vec2<u32>(u_input.e, 9812u), vec2<u32>(4294967295u, 1u), var_1.a.x) & firstLeadingBit(vec2<u32>(u_input.c, u_input.e))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1860f - _wgslsmith_div_f32(2308f, _wgslsmith_div_f32(276f, 873f))), -2033f, 1f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -431f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1312f - -219f))), _wgslsmith_f_op_f32(f32(-1f) * -542f)))));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1312f, 139f, var_3.x))) * vec3<f32>(var_3.x, var_3.x, var_3.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(440f, 658f, var_3.x) + vec3<f32>(1614f, var_3.x, 1938f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, var_3.x, var_3.x), vec3<f32>(var_3.x, 1982f, -616f)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1753f, -376f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, 177f)))))));
    var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, -1198f));
    var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1001f, var_3.x)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, var_3.x, var_3.x), vec3<f32>(var_3.x, var_3.x, 1000f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2419f, var_3.x, var_3.x))))))))));
    let var_4 = 3416u;
    let x = u_input.a;
    s_output = StorageBuffer(32833i, _wgslsmith_f_op_f32(1220f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_3.x)))), ~_wgslsmith_clamp_u32(reverseBits(func_2(var_3.xy, vec4<bool>(false, true, var_1.a.x, var_1.a.x), var_3.x)), 1u, var_2.x));
}

