struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<vec2<bool>, 2>;

var<private> global2: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(750f, 1000f, -131f, 2317f), vec4<f32>(886f, -1836f, 1000f, -455f), vec4<f32>(-1008f, -1194f, -1570f, -835f), vec4<f32>(563f, 739f, -874f, 1208f), vec4<f32>(-1368f, -214f, 268f, -1646f), vec4<f32>(-1000f, 207f, 437f, 1168f), vec4<f32>(461f, -1143f, -2067f, 397f), vec4<f32>(1292f, -1000f, 763f, -267f), vec4<f32>(942f, -1893f, 1044f, -1063f), vec4<f32>(1527f, 689f, 1349f, -612f), vec4<f32>(-1829f, 485f, -2205f, 1000f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>) -> u32 {
    var var_0 = vec2<u32>(~17803u, 1u);
    global1 = array<vec2<bool>, 2>();
    return 33202u;
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_3(vec2<i32>(-1i, ~(-63605i) << (_wgslsmith_clamp_u32(abs(49740u), reverseBits(15176u), 0u) % 32u)), arg_0, u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(firstLeadingBit(0u), ~30954u, 4294967295u, firstTrailingBit(106245u)), vec4<u32>(~0u, select(min(0u, 7448u), 2003u, any(vec3<bool>(false, true, arg_0))), 0u, max(39257u, _wgslsmith_mod_u32(0u, 5262u)))));
    var var_1 = abs(vec3<u32>(1u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_0.d, 10433u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 64422u, var_0.d), vec3<u32>(4294967295u, 1u, 1u)), abs(var_0.d), 1u & var_0.d), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 21562u, var_0.d, 48784u), vec4<u32>(var_0.d, 44777u, var_0.d, 1u)))));
    var var_2 = vec2<bool>(!(76913u >= var_1.x), !var_0.b);
    let var_3 = vec4<i32>(var_0.c.x, 9539i, 1i | var_0.a.x, _wgslsmith_dot_vec3_i32(u_input.a.yzw, ~vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(var_0.a.x, u_input.a.x), -u_input.a.x)));
    global0 = var_0.c.x;
    return _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, var_1.x), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.d, 0u), var_1.yy)), ~reverseBits(_wgslsmith_sub_vec2_u32(var_1.yx, var_1.yx)), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(65135u, var_1.x), max(var_0.d, var_0.d)), ~4294967295u)), var_1.yz);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<i32>) -> vec2<u32> {
    var var_0 = vec4<bool>(1u >= ~_wgslsmith_sub_u32(func_2(Struct_4(Struct_2(Struct_1(41666u, arg_0), Struct_1(1u, arg_0), false)), vec3<bool>(true, false, true)), 27108u), any(vec2<bool>(true, !all(vec3<bool>(false, false, true)))), true, !any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)));
    let var_1 = arg_1;
    global2 = array<vec4<f32>, 11>();
    var var_2 = Struct_2(Struct_1(15001u, var_1.x), Struct_1(1u, arg_1.x), var_0.x);
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(var_2.a.a, var_2.b.a, var_2.b.a, 1u) >> (~vec4<u32>(var_2.a.a, ~11343u, 0u, 0u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(var_2.a.a, 1u) >> (var_2.b.a % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.a.a, var_2.b.a, 1u, var_2.a.a), firstTrailingBit(~vec4<u32>(40925u, var_2.a.a, 50581u, var_2.b.a))), var_2.a.a << ((firstLeadingBit(1u) >> (func_3(true) % 32u)) % 32u), var_2.b.a));
    return var_3.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(func_1(7409i, ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -1i, 8347i, u_input.a.x), vec4<i32>(u_input.a.x, -33229i, 2147483647i, -1i))), min(~_wgslsmith_mod_vec2_i32(u_input.a.zx, u_input.a.zw), abs(abs(vec2<i32>(u_input.a.x, -9892i))))), ~vec2<u32>(~1u, min(~0u, ~1u)));
    var var_1 = var_0.x;
    var var_2 = ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, 4294967295u, 4294967295u, var_0.x), countOneBits(abs(vec4<u32>(var_0.x, 0u, var_0.x, 4294967295u))), ~select(vec4<u32>(var_0.x, 0u, 4294967295u, 27114u), vec4<u32>(0u, var_0.x, 26560u, var_0.x), true)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(209f * -111f)), -119f, 793f);
    var var_4 = Struct_4(Struct_2(Struct_1(61404u, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(u_input.a.x, 2147483647i)), -48112i)), Struct_1(firstLeadingBit(~var_2.x), 94492i), true));
    var_4 = Struct_4(Struct_2(Struct_1(1u, u_input.a.x), Struct_1(var_4.a.b.a, var_4.a.b.b | var_4.a.a.b), var_4.a.c | true));
    global0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xwx, firstLeadingBit(~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(6746u, 4294967295u, 11433u, 53099u), vec4<u32>(var_0.x, var_0.x, 0u, 0u)))), _wgslsmith_f_op_f32(-var_3.x));
}

