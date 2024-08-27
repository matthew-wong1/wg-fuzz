struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: array<vec2<f32>, 32>;

var<private> global2: bool;

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(0u, 0i), Struct_1(1u, 7845i), Struct_1(1u, -23477i), Struct_1(4294967295u, -10314i), Struct_1(66008u, 1i), Struct_1(4294967295u, i32(-2147483648)), Struct_1(32u, 34834i), Struct_1(21625u, 25293i), Struct_1(1u, -1i), Struct_1(54390u, -918i), Struct_1(67808u, i32(-2147483648)), Struct_1(0u, i32(-2147483648)), Struct_1(57145u, -48394i), Struct_1(19104u, 11439i), Struct_1(23314u, i32(-2147483648)), Struct_1(1873u, 1i), Struct_1(1u, 0i));

var<private> global4: bool = false;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<i32> {
    let var_0 = vec4<u32>(u_input.c.x, ~u_input.c.x << (u_input.c.x % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), ~vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x)) >> (u_input.c.x % 32u), ~29493u), (~(~u_input.c.x) | ~u_input.c.x) ^ _wgslsmith_sub_u32(4896u, firstTrailingBit(_wgslsmith_add_u32(u_input.c.x, u_input.c.x))));
    global2 = any(vec3<bool>(false, abs(2147483647i) <= u_input.a.x, true));
    return u_input.a;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_clamp_vec2_i32(u_input.a, ~u_input.a, func_3());
    global3 = array<Struct_1, 17>();
    global0 = array<bool, 21>();
    var var_1 = vec4<u32>(~_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.c.yz), u_input.c.yy), ~max(~u_input.c.x, arg_0), _wgslsmith_dot_vec3_u32(u_input.c << (~u_input.c % vec3<u32>(32u)), select(u_input.c, vec3<u32>(arg_0, arg_1.a, 1u), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 21u)], true, true))), _wgslsmith_div_u32(firstLeadingBit(u_input.c.x), u_input.c.x) << ((~507u | firstTrailingBit(0u)) % 32u)) & vec4<u32>(~u_input.c.x, (_wgslsmith_mult_u32(arg_0, 37733u) | (u_input.c.x << (1068u % 32u))) << (reverseBits(15582u & arg_1.a) % 32u), u_input.c.x, arg_1.a);
    let var_2 = Struct_1(~arg_0, u_input.b);
    return ~(~(~(~(~1u))));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global3 = array<Struct_1, 17>();
    var var_0 = true;
    return Struct_1(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_add_u32(min(arg_1.a, arg_1.a), ~u_input.c.x)), _wgslsmith_dot_vec3_u32(select(~u_input.c, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 48500u, u_input.c.x), vec3<u32>(arg_1.a, 51211u, 68335u)), true), vec3<u32>(~25522u, u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(38170u, arg_1.a, 0u), u_input.c)))), arg_1.b);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = func_4(global0[_wgslsmith_index_u32(reverseBits(func_2(reverseBits(26283u), global3[_wgslsmith_index_u32(u_input.c.x, 17u)])), 21u)] & (global0[_wgslsmith_index_u32(~7422u, 21u)] | global0[_wgslsmith_index_u32(~4294967295u, 21u)]), Struct_1(abs(64649u), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-11327i, u_input.a.x, 10672i) | vec3<i32>(-2147483647i, 61707i, -2147483647i), vec3<i32>(-1i, u_input.b, -1i)), arg_1.b)));
    var_0 = func_4(any(vec4<bool>(global0[_wgslsmith_index_u32(18u, 21u)], false, any(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_0.a, 21u)], global0[_wgslsmith_index_u32(115678u, 21u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 21u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], true, global0[_wgslsmith_index_u32(arg_1.a, 21u)], true))), true)), Struct_1(firstLeadingBit(u_input.c.x), _wgslsmith_mult_i32(u_input.a.x, func_3().x)));
    let var_1 = arg_1;
    let var_2 = var_1.b;
    var_0 = Struct_1(func_4(true, var_1).a, arg_0);
    return _wgslsmith_mod_u32(1u, arg_1.a) >> (~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a), u_input.c.xx))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~(~64591u), 17u)];
    let var_1 = global3[_wgslsmith_index_u32(var_0.a, 17u)];
    var var_2 = (firstTrailingBit(~firstTrailingBit(vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a))) >> (vec4<u32>(~var_0.a, ~u_input.c.x, abs(~u_input.c.x), func_1(u_input.a.x, global3[_wgslsmith_index_u32(1u, 17u)])) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, _wgslsmith_mult_u32(var_1.a | 29307u, _wgslsmith_mult_u32(6679u, 1u)), 54378u, 5053u), abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(14132u, u_input.c.x, 4294967295u, 113606u), vec4<u32>(2648u, var_1.a, var_1.a, var_0.a)))) % vec4<u32>(32u));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(13746u, ~u_input.c.x), 17u)];
    var var_4 = ~select(~select(vec3<i32>(u_input.a.x, var_3.b, 42029i) | vec3<i32>(u_input.b, 52932i, var_3.b), firstLeadingBit(vec3<i32>(var_3.b, var_3.b, var_0.b)), !vec3<bool>(false, global0[_wgslsmith_index_u32(70756u, 21u)], false)), ~(~abs(vec3<i32>(2147483647i, 0i, -2147483647i))), vec3<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(57263u, 21u)], false)), true, all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(var_3.a, 21u)]))));
    var var_5 = ~(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-4650i, 2147483647i, -192i, 63554i), vec4<i32>(2147483647i, 576i, 0i, var_1.b) | vec4<i32>(-29128i, u_input.b, var_0.b, -48925i))) & (vec4<i32>(-1i) * -vec4<i32>(-1i, -2147483647i, var_3.b, u_input.b)));
    let var_6 = func_4(true, Struct_1(min(~(~u_input.c.x), 1u), ~var_4.x));
    var_2 = (reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_6.a, 4294967295u, 4294967295u, 1u), ~vec4<u32>(var_2.x, 12461u, 1u, 4294967295u), vec4<u32>(var_2.x, 1u, var_0.a, var_3.a) ^ vec4<u32>(var_2.x, 4294967295u, var_6.a, 29212u))) & vec4<u32>(~_wgslsmith_sub_u32(0u, var_2.x), 16169u, u_input.c.x, ~(~var_1.a))) | ~vec4<u32>(func_4(global0[_wgslsmith_index_u32(var_6.a, 21u)] | global0[_wgslsmith_index_u32(0u, 21u)], var_6).a, 1u, select(var_6.a | 4294967295u, _wgslsmith_mod_u32(var_1.a, 89154u), select(true, false, global0[_wgslsmith_index_u32(var_3.a, 21u)])), 0u);
    var var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1419f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(select(var_1.a, 12234u ^ var_3.a, false), var_6.a), vec4<i32>(reverseBits(var_1.b), var_0.b, 65015i, -1i), -31469i, global1[_wgslsmith_index_u32(4294967295u, 32u)], vec2<u32>(var_0.a, firstTrailingBit(firstLeadingBit(1u))));
}

