struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_1(vec4<i32>(i32(-2147483648), 1i, -34355i, 8188i), vec2<f32>(1309f, -441f), 186f, 1u, -316f), 594f, Struct_3(-3264f, vec4<bool>(true, true, false, false))));

var<private> global1: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(1000f, -1903f), vec2<f32>(299f, 279f), vec2<f32>(1467f, 484f), vec2<f32>(697f, -2042f), vec2<f32>(204f, -464f), vec2<f32>(479f, -1963f), vec2<f32>(596f, -224f), vec2<f32>(-1287f, 1182f), vec2<f32>(-1589f, 858f), vec2<f32>(423f, -623f), vec2<f32>(1309f, 1343f), vec2<f32>(1480f, -545f), vec2<f32>(-1114f, -186f), vec2<f32>(-981f, 551f), vec2<f32>(738f, -1028f), vec2<f32>(-393f, -754f), vec2<f32>(-231f, -810f), vec2<f32>(1628f, -1000f), vec2<f32>(981f, 1855f), vec2<f32>(576f, 1542f), vec2<f32>(1268f, 604f), vec2<f32>(-1758f, 197f), vec2<f32>(-353f, -669f), vec2<f32>(670f, 2213f), vec2<f32>(-1000f, -271f), vec2<f32>(945f, -1903f), vec2<f32>(-247f, -752f), vec2<f32>(-1000f, 550f), vec2<f32>(319f, -1000f), vec2<f32>(-862f, -788f), vec2<f32>(2343f, -866f));

var<private> global2: array<vec4<f32>, 21>;

var<private> global3: array<Struct_2, 10>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_4 {
    global3 = array<Struct_2, 10>();
    let var_0 = _wgslsmith_add_u32(~abs(select(15907u, 1u, true)), 0u);
    global1 = array<vec2<f32>, 31>();
    global3 = array<Struct_2, 10>();
    var var_1 = !vec4<bool>(true, true, !(1i == u_input.a.x), true);
    return global0[_wgslsmith_index_u32(~56635u, 1u)];
}

fn func_1() -> vec2<f32> {
    global1 = array<vec2<f32>, 31>();
    let var_0 = global1[_wgslsmith_index_u32(7863u, 31u)];
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(min(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 24600u), vec2<u32>(1u, 1u)), 4294967295u) & abs(0u)), 1u)];
    var_1 = func_2();
    let var_2 = countOneBits(~firstTrailingBit(-(~vec4<i32>(1i, u_input.a.x, u_input.a.x, 19288i))));
    return var_1.a.b;
}

fn func_3(arg_0: Struct_1) -> Struct_4 {
    let var_0 = func_2().c;
    let var_1 = global3[_wgslsmith_index_u32(arg_0.d, 10u)];
    global0 = array<Struct_4, 1>();
    global3 = array<Struct_2, 10>();
    let var_2 = Struct_4(func_2().a, var_0.a, func_2().c);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(Struct_1(vec4<i32>(max(u_input.b, -u_input.a.x), 2147483647i, u_input.b, u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1330f), -2204f) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_1())))), 268f, ~firstLeadingBit(abs(0u)), 1f));
    var var_1 = Struct_4(var_0.a, var_0.c.a, func_2().c);
    let var_2 = _wgslsmith_div_vec3_i32(~(var_0.a.a.xyw >> (vec3<u32>(var_1.a.d, _wgslsmith_div_u32(var_0.a.d, var_0.a.d), 0u) % vec3<u32>(32u))), -vec3<i32>(-53031i, ~_wgslsmith_sub_i32(var_0.a.a.x, u_input.b), min(i32(-1i) * -38708i, u_input.a.x)));
    var_1 = Struct_4(var_1.a, -1000f, var_0.c);
    global1 = array<vec2<f32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(27272u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~var_2, func_3(Struct_1(u_input.a, vec2<f32>(438f, var_1.a.b.x), -2331f, 13695u, var_0.a.c)).a.a.yyx), func_3(func_3(var_0.a).a).a.a.yyy) | _wgslsmith_div_i32(~(~(-14225i)), _wgslsmith_mod_i32(var_1.a.a.x, 37065i)), _wgslsmith_mult_vec4_u32(vec4<u32>(76635u, 23666u, 1u, 31278u), firstTrailingBit(vec4<u32>(firstTrailingBit(var_1.a.d), func_3(Struct_1(var_1.a.a, var_0.a.b, 196f, 78546u, -294f)).a.d, ~var_1.a.d, ~var_0.a.d))));
}

