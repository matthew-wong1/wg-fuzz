struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> i32 {
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    var var_0 = -675f;
    let var_1 = Struct_3(vec2<u32>(~99607u, _wgslsmith_add_u32(countOneBits(~4294967295u), 32279u)));
    let var_2 = Struct_4(var_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1187f))), -497f))), _wgslsmith_div_i32(u_input.a, -1i));
    return ~(2147483647i >> ((abs(~4294967295u) ^ ~(~var_2.a)) % 32u));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec3<i32> {
    let var_0 = vec2<u32>(arg_1, _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(arg_0.c.a, arg_0.c.a)) << (abs(arg_0.c.a) % 32u)), _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0.c.a, 0u), ~vec2<u32>(arg_1, 100692u), all(vec3<bool>(arg_0.b, true, false))), _wgslsmith_div_vec2_u32(vec2<u32>(6667u, 71021u) ^ vec2<u32>(4294967295u, arg_1), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_1, arg_0.c.a))))));
    global1 = array<vec4<bool>, 2>();
    var var_1 = Struct_5(Struct_1(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_0.c.a, var_0.x), vec3<u32>(10485u, arg_0.c.a, 72268u), vec3<u32>(0u, arg_1, arg_0.c.a)), vec3<u32>(57344u, 17421u, arg_0.c.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1192f)))), arg_0.d.zz, arg_0.c.d, _wgslsmith_f_op_vec3_f32(-arg_0.c.e)), Struct_3(var_0), ~reverseBits(vec4<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a), 26428i, ~arg_0.d.x)), select(!arg_0.a, !arg_0.a, all(arg_0.a.zy)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c.e.yx) * _wgslsmith_f_op_vec2_f32(-arg_0.c.e.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c.e.zx * vec2<f32>(var_1.a.b, -546f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-124f, arg_0.c.e.x) * vec2<f32>(-937f, arg_0.c.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a.b, -154f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.c.e.yx))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2377f + -272f), var_1.a.b))));
    var var_3 = !vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.b), _wgslsmith_f_op_f32(var_2.x * var_1.a.e.x))) >= -382f, any(select(vec3<bool>(true, var_1.d.x, arg_0.a.x), var_1.d, false)) & (arg_0.a.x && var_1.d.x));
    return vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(9757i, var_1.c.x), firstLeadingBit(_wgslsmith_mult_vec2_i32(~var_1.a.d.zy, var_1.a.d.yy))), arg_0.c.c.x, arg_0.d.x & var_1.c.x);
}

fn func_1() -> StorageBuffer {
    global1 = array<vec4<bool>, 2>();
    let var_0 = ~_wgslsmith_clamp_vec3_i32(min(vec3<i32>(-25410i, func_2(), 6257i), func_3(Struct_2(vec3<bool>(false, true, false), false, Struct_1(40224u, 800f, vec2<i32>(global0[_wgslsmith_index_u32(96399u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), vec4<i32>(global0[_wgslsmith_index_u32(1u, 23u)], -16954i, -1310i, -1i), vec3<f32>(277f, 1210f, 2079f)), vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 23u)], -19545i)), 1u)), ~firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(20634u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], -24649i), vec3<i32>(global0[_wgslsmith_index_u32(1991u, 23u)], u_input.a, -16253i))), vec3<i32>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(72652u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)] | func_2()));
    var var_1 = Struct_1(_wgslsmith_mod_u32(~1u, _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 25738u), ~vec2<u32>(13758u, 4294967295u)))), -1056f, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(~var_0.zy, var_0.xy & vec2<i32>(9670i, var_0.x)), vec2<i32>(countOneBits(18521i), 30866i)), countOneBits(vec4<i32>(~1i, ~33051i, -var_0.x, max(var_0.x, global0[_wgslsmith_index_u32(1u, 23u)]))) | (max(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -1i, 10521i, u_input.a), vec4<i32>(1i, global0[_wgslsmith_index_u32(0u, 23u)], var_0.x, -2147483647i)), min(vec4<i32>(1i, 13926i, 1i, 1i), vec4<i32>(var_0.x, u_input.a, var_0.x, 2147483647i))) << (~firstLeadingBit(vec4<u32>(86221u, 49922u, 22896u, 4294967295u)) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) * _wgslsmith_f_op_f32(382f - -446f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1806f, -976f))))), 1343f, 1639f));
    let var_2 = vec2<i32>(-49041i, 1i) & var_1.c;
    var var_3 = Struct_2(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), -1i <= firstTrailingBit(6243i)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), 22955i <= global0[_wgslsmith_index_u32(var_1.a, 23u)]), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !any(vec4<bool>(true, false, true, true))), all(vec4<bool>(var_1.e.x < _wgslsmith_f_op_f32(max(-855f, var_1.e.x)), true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))))), Struct_1(~select(1u, var_1.a >> (4294967295u % 32u), false), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2487f + var_1.e.x)))), var_1.d.wz, select(~abs(var_1.d), var_1.d, select(vec4<bool>(true, true, false, false), global1[_wgslsmith_index_u32(~var_1.a, 2u)], !global1[_wgslsmith_index_u32(var_1.a, 2u)])), var_1.e), select(var_0, var_1.d.yxy, vec3<bool>(true, true, var_1.b >= var_1.b)) | vec3<i32>(_wgslsmith_mod_i32(-17050i, -u_input.a), var_1.d.x, max(global0[_wgslsmith_index_u32(~var_1.a, 23u)], -1i)));
    return StorageBuffer(-1i, _wgslsmith_div_vec2_f32(var_1.e.yy, _wgslsmith_f_op_vec2_f32(var_1.e.zy * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-549f, 775f))))), firstLeadingBit(select(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_3.c.a, 60625u), vec3<u32>(31928u, var_3.c.a, var_3.c.a))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 47308u, 4294967295u, 31184u), vec4<u32>(0u, 4294967295u, var_3.c.a, 4294967295u)), var_1.a << (var_3.c.a % 32u), ~var_3.c.a), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f) * _wgslsmith_f_op_f32(sign(var_3.c.e.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b)))))), var_1.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_1 = Struct_4(4294967295u, _wgslsmith_f_op_f32(-2559f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -733f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-666f + -1000f))))), -_wgslsmith_sub_i32(-26755i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(~4031u, 23u)], -1i)));
    var var_2 = ~u_input.a;
    global0 = array<i32, 23>();
    var var_3 = !global1[_wgslsmith_index_u32(~var_1.a, 2u)];
    let x = u_input.a;
    s_output = func_1();
}

