struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(605f, true), Struct_1(-712f, true), Struct_1(1096f, false), Struct_1(2025f, false), Struct_1(663f, false), Struct_1(-1134f, true), Struct_1(421f, true), Struct_1(194f, true), Struct_1(2097f, false));

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    global0 = array<Struct_1, 9>();
    var var_0 = 6295i;
    global0 = array<Struct_1, 9>();
    let var_1 = vec4<i32>(-u_input.c.x, 0i, countOneBits(~(-2137i)), _wgslsmith_sub_i32(countOneBits(u_input.b) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(35881i, 69642i, u_input.c.x, -88954i), vec4<i32>(u_input.b, -33744i, 48450i, -3433i)), -23549i) << (countOneBits(u_input.a) % 32u));
    var_0 = abs(abs(~(var_1.x ^ _wgslsmith_mod_i32(u_input.b, -39109i))));
    return _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0, 14805u), vec3<u32>(4294967295u, 4294967295u, 78735u)), ~arg_0, arg_0, u_input.a), max(~(vec4<u32>(50137u, arg_0, 4294967295u, 0u) << (vec4<u32>(4294967295u, arg_0, 43610u, arg_0) % vec4<u32>(32u))), vec4<u32>(u_input.a, ~0u, ~arg_0, _wgslsmith_mult_u32(1u, 1u)))), vec4<u32>(arg_0, _wgslsmith_add_u32(~(u_input.a & 38278u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.a, u_input.a, arg_0), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 10437u, 0u, arg_0), vec4<u32>(u_input.a, u_input.a, 4294967295u, arg_0), vec4<u32>(1u, arg_0, 0u, 0u)))), 1u, 4294967295u));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(arg_0.a, arg_0.a), arg_0.a >> (func_3(_wgslsmith_add_u32(0u, u_input.a)) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_i32(arg_0.a, _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -20920i, 1i, -2147483647i) ^ arg_0.a, vec4<i32>(0i, -36514i, u_input.c.x, arg_3) >> (vec4<u32>(63399u, arg_2, 1u, arg_2) % vec4<u32>(32u)))));
    global0 = array<Struct_1, 9>();
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(~(~arg_2), 58750u), u_input.a, 1u, ~countOneBits(~29489u));
    var var_2 = max(firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(12424u, 39466u, 63793u, u_input.a), firstLeadingBit(vec4<u32>(33538u, var_1.x, u_input.a, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(12020u, 4294967295u, arg_2, 31638u), vec4<u32>(65567u, u_input.a, 1u, u_input.a))))), vec4<u32>(~arg_2, 4294967295u, var_1.x, max(29017u, 1u) & ~(~var_1.x)));
    var var_3 = 1u;
    return -2107f;
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = -vec4<i32>(-47288i, arg_0.a.x, (-42433i | arg_0.a.x) << (u_input.a % 32u), _wgslsmith_mult_i32((i32(-1i) * -5580i) >> (min(0u, 16302u) % 32u), -(~u_input.b)));
    global1 = global0[_wgslsmith_index_u32(u_input.a, 9u)];
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(443f, _wgslsmith_f_op_f32(step(804f, -671f)), _wgslsmith_f_op_f32(func_2(arg_0, true, 40451u, 20942i)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-768f, -1335f, global1.a)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1202f, arg_0.b.a, 989f), vec3<f32>(global1.a, arg_0.b.a, global1.a)))))));
    return _wgslsmith_mod_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(1i, u_input.b), ~(-12510i), 0i), vec3<i32>(arg_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_0.x, arg_0.a.x), u_input.b | -34895i), firstTrailingBit(u_input.c.yx)), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(u_input.c.yz);
    var var_1 = firstLeadingBit(func_1(Struct_2(~vec4<i32>(var_0.x, var_0.x, 7095i, 1238i), global0[_wgslsmith_index_u32(max(u_input.a, u_input.a), 9u)]))) & ~(-u_input.c);
    global0 = array<Struct_1, 9>();
    var var_2 = Struct_2(-reverseBits(max(vec4<i32>(-1i, -37021i, -2147483647i, 2147483647i), vec4<i32>(-2147483647i, -20100i, -15759i, var_0.x))), Struct_1(_wgslsmith_f_op_f32(floor(global1.a)), global1.b));
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -575f), global1.a) + global1.a), var_2.b.b);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_2.b.a, global1.a))));
    var var_4 = abs(min(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 15031u, u_input.a), ~vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a)), vec4<u32>(40666u, _wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a, firstLeadingBit(u_input.a))) | abs(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(38093u, u_input.a, 11865u, u_input.a), vec4<u32>(0u, 4294967295u, u_input.a, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(-1i), var_2.a.x), -45253i));
}

