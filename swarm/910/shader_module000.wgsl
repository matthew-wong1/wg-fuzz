struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> vec4<f32> {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_0 = 14011u;
    let var_1 = vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(~1u, ~firstLeadingBit(0u))), 0u, firstLeadingBit(~(~(~1u))));
    var var_2 = ~u_input.a.x;
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(408f, _wgslsmith_f_op_f32(422f * 1302f), _wgslsmith_f_op_f32(f32(-1f) * -1343f), _wgslsmith_f_op_f32(ceil(664f))) - vec4<f32>(_wgslsmith_f_op_f32(1120f + 396f), _wgslsmith_f_op_f32(ceil(-964f)), _wgslsmith_f_op_f32(102f - -452f), _wgslsmith_f_op_f32(select(1000f, -1000f, false)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(376f, -2237f, 455f, 315f) - vec4<f32>(-1488f, -1030f, 1541f, -1033f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(601f, -320f, 721f, 727f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-855f, -1548f, -295f, 107f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1047f, 538f, -411f, 680f) * vec4<f32>(221f, 751f, 1000f, -1000f))), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(814f, -419f, -108f, -1700f))), vec4<f32>(530f, _wgslsmith_f_op_f32(f32(-1f) * -811f), _wgslsmith_div_f32(-294f, -214f), -1328f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1103f, -1154f, -1000f, -617f) * vec4<f32>(-2213f, 292f, -112f, -609f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1024f, -1723f, 1000f, 205f) * vec4<f32>(-960f, 1025f, 1068f, -696f))))))));
}

fn func_2() -> Struct_2 {
    let var_0 = min(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(min(min(vec2<u32>(18591u, 24598u), vec2<u32>(4294967295u, 1u)), vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), ~(~(~1u)));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(274f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -892f)));
    return Struct_2(vec2<i32>(u_input.a.x, 1i), _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(~6207i, u_input.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -16529i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i))), firstTrailingBit(u_input.a.x))), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(969f, 1900f, 971f, -1573f))))), 534f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0, _wgslsmith_add_u32(1u, var_0), 0u) | select(~vec4<u32>(var_0, 20170u, var_0, var_0), min(vec4<u32>(21238u, var_0, var_0, 39631u), vec4<u32>(1u, var_0, 3340u, var_0)), false), vec4<u32>(var_0, min(4294967295u, var_0) ^ 3996u, var_0, _wgslsmith_sub_u32(~var_0, var_0))), 16u)]);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    var var_0 = arg_0.d;
    var_0 = Struct_1(func_2().c.a, _wgslsmith_f_op_vec4_f32(arg_0.d.b + _wgslsmith_f_op_vec4_f32(-var_0.b)), var_0.c);
    var_0 = func_2().c;
    var var_1 = (_wgslsmith_mult_u32(1u, ~0u << (0u % 32u)) << (~_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 29086u), vec2<u32>(25167u, 39042u), false), ~vec2<u32>(73865u, 73583u)) % 32u)) != min(~_wgslsmith_dot_vec2_u32(vec2<u32>(22949u, 4986u), vec2<u32>(1u, 1u)), ~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(42126u, 4294967295u, 60143u), vec3<u32>(33764u, 29679u, 33773u))));
    var var_2 = var_0.a;
    return Struct_3(Struct_2(~_wgslsmith_mult_vec2_i32(vec2<i32>(3004i, arg_0.a.x) | vec2<i32>(1i, 1i), -vec2<i32>(arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -1940f, _wgslsmith_f_op_f32(-var_0.b.x), 240f)), global0[_wgslsmith_index_u32(1u, 16u)], arg_0.d), 32917i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(arg_1.b.x + arg_1.c)))), 4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_div_f32(680f, var_0.b.x), arg_0.b.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(ceil(arg_1.b.x)), _wgslsmith_div_f32(arg_1.c, arg_0.d.c)) * _wgslsmith_f_op_vec3_f32(-arg_0.d.b.zwz))));
}

fn func_1() -> vec3<i32> {
    let var_0 = func_4(func_2(), global0[_wgslsmith_index_u32(4294967295u >> (_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4294967295u), min(vec2<u32>(17828u, 36768u), vec2<u32>(4294967295u, 4294967295u)))) % 32u), 16u)], true);
    let var_1 = Struct_4(var_0.b, var_0.a.c);
    var var_2 = u_input.a;
    var_2 = u_input.a;
    var var_3 = var_1.b.b.x;
    return -_wgslsmith_mod_vec3_i32(u_input.a, -(~vec3<i32>(1i, -2147483647i, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(func_1(), func_1()), u_input.a);
    let var_1 = max(firstLeadingBit(~vec3<u32>(abs(4294967295u), 22577u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 16098u, 4294967295u, 10743u), vec4<u32>(0u, 34296u, 0u, 46970u)))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~4294967295u, 41811u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 5883u), vec3<u32>(1u, 249u, 0u), vec3<u32>(1u, 64573u, 1u)), vec3<u32>(~22466u, 4294967295u, select(16059u, 0u, false))), vec3<u32>(1u, 1u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(22265u, 4294967295u, 37693u), vec3<u32>(0u, 37465u, 0u))))));
    let var_2 = Struct_4(72238i, Struct_1(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, false, true), var_1.x > var_1.x), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), false), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -873f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-924f * 649f), -1201f)), -273f, _wgslsmith_f_op_f32(-1318f * _wgslsmith_f_op_f32(770f - -1000f))), _wgslsmith_f_op_f32(779f - _wgslsmith_f_op_f32(2286f * _wgslsmith_f_op_f32(f32(-1f) * -1211f)))));
    let var_3 = var_2;
    var_0 = u_input.a;
    var_0 = ~(vec3<i32>(max(u_input.a.x, ~1i), 14954i, -min(var_2.a, -20379i)) & abs(func_1()));
    var_0 = select(vec3<i32>(_wgslsmith_sub_i32(abs(firstLeadingBit(var_3.a)), var_3.a | var_3.a), _wgslsmith_add_i32(28401i, var_0.x), i32(-1i) * -_wgslsmith_add_i32(var_2.a, 0i)), -countOneBits(abs(vec3<i32>(6873i, -61932i, -52236i)) | -vec3<i32>(var_3.a, -34688i, var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-369f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-293f + -1028f) * _wgslsmith_f_op_f32(-433f - var_2.b.c)), true)) < var_3.b.c);
    global0 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.b.b.x), vec2<u32>(15745u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(84010u, 16197u)), ~vec2<u32>(1u, var_1.x))), _wgslsmith_f_op_f32(-var_3.b.b.x));
}

