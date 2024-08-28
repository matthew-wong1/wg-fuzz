struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> global1: array<vec3<bool>, 4>;

var<private> global2: array<i32, 2>;

var<private> global3: array<vec2<bool>, 24>;

var<private> global4: f32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: f32) -> vec4<i32> {
    global0 = array<vec3<bool>, 10>();
    var var_0 = ~reverseBits(vec3<i32>(select(-1i, ~u_input.c.x, u_input.a == 18826i), 2147483647i, _wgslsmith_mult_i32(~(-12841i), 31275i)));
    var var_1 = min(~(u_input.b.x >> (select(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), true) % 32u)), 17512u);
    let var_2 = vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(28559u, 4294967295u, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, 0u)), countOneBits(u_input.b.x)), u_input.b.x), 16172u);
    var_1 = ~u_input.b.x >> (~var_2.x % 32u);
    return ~(-vec4<i32>(1543i >> (u_input.b.x % 32u), 54016i, _wgslsmith_mod_i32(firstLeadingBit(arg_1.a), ~941i), ~(i32(-1i) * -2147483647i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(vec3<bool>(true, !arg_1.x, u_input.a != -2147483647i), true), u_input.c.zx, -612f, select(vec3<u32>(min(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(140989u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x))), 31968u, 4294967295u), ~(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ ~vec3<u32>(4294967295u, 1u, u_input.b.x)), global1[_wgslsmith_index_u32(u_input.b.x, 4u)]));
    var var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1724f, 656f, arg_2.b.x, -334f))), arg_2.a, var_0.c), vec4<i32>(-1763i, abs(-59483i), arg_0.x, 0i)), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(550i, arg_2.a.a), -var_0.b.x, arg_2.a.a, 32485i), vec4<i32>(-2147483647i, -global2[_wgslsmith_index_u32(u_input.b.x, 2u)], select(2147483647i, u_input.c.x, false), 506i))));
    var var_2 = Struct_5(arg_2.a, ~u_input.b.x, var_0, ~select(vec3<u32>(0u, _wgslsmith_mod_u32(1u, 41063u), ~var_0.d.x), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.x, 1u, 11434u), vec3<u32>(0u, var_0.d.x, 1u)), ~vec3<u32>(u_input.b.x, var_0.d.x, 1u)), all(select(global3[_wgslsmith_index_u32(4294967295u, 24u)], var_0.a.a.yy, vec2<bool>(true, true)))));
    var var_3 = arg_2.a.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~(~4294967295u), abs(~1u), ~(~1708u)), vec4<u32>(_wgslsmith_mult_u32(reverseBits(16450u), ~u_input.b.x), ~var_0.d.x, var_0.d.x, _wgslsmith_sub_u32(0u, var_0.d.x) ^ (var_0.d.x >> (u_input.b.x % 32u)))) % 32u);
    var var_4 = vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.d.x, ~var_2.b), ~(~4294967295u)), 0u, ~(_wgslsmith_add_u32(1u, abs(var_2.c.d.x)) & 26173u));
    return var_2.c.a;
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(((firstTrailingBit(vec4<i32>(global2[_wgslsmith_index_u32(0u, 2u)], u_input.c.x, global2[_wgslsmith_index_u32(3945u, 2u)], -11872i)) ^ (vec4<i32>(-48975i, -2147483647i, u_input.a, 27920i) >> (vec4<u32>(u_input.b.x, 11386u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))) | select(vec4<i32>(12466i, -7021i, u_input.a, 1i), vec4<i32>(u_input.a, -3171i, -32866i, u_input.c.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 17346u) % vec4<u32>(32u)), vec4<bool>(false, true, true, true))) >> (vec4<u32>(17533u >> (0u % 32u), u_input.b.x, firstLeadingBit(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), ~_wgslsmith_sub_u32(u_input.b.x, 4294967295u)) % vec4<u32>(32u)), vec4<bool>(true, true, true, true), Struct_4(Struct_3(11412i), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1028f, -1000f, -1900f) - vec3<f32>(1529f, 231f, -616f)))), -1000f));
    global1 = array<vec3<bool>, 4>();
    let var_1 = u_input.b.x;
    var var_2 = _wgslsmith_div_i32(firstTrailingBit(firstTrailingBit(~global2[_wgslsmith_index_u32(1u, 2u)] ^ -18588i)), _wgslsmith_mult_i32(9853i, -936i));
    var var_3 = reverseBits(~max(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, var_1, 1u, var_1), firstLeadingBit(vec4<u32>(u_input.b.x, 44061u, var_1, var_1)), vec4<u32>(u_input.b.x, var_1, var_1, u_input.b.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(12382u, var_1, var_1), vec3<u32>(47584u, 4294967295u, 18434u)), var_1, _wgslsmith_div_u32(u_input.b.x, var_1), _wgslsmith_clamp_u32(var_1, 64786u, u_input.b.x))));
    return Struct_3(abs(global2[_wgslsmith_index_u32(~var_1, 2u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(0i, 0i, u_input.c.x, 2147483647i), abs(vec4<i32>(1i, 63532i, -33966i, 54383i))), _wgslsmith_mult_vec4_i32(vec4<i32>(-4672i, -18755i, global2[_wgslsmith_index_u32(1u, 2u)], -26614i), abs(vec4<i32>(-4454i, -77683i, 24059i, global2[_wgslsmith_index_u32(1u, 2u)])))), -25650i), vec3<i32>(~1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(0u, 2u)], -u_input.a), global2[_wgslsmith_index_u32(~1u, 2u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(0i & u_input.a, min(u_input.c.x, u_input.c.x), reverseBits(u_input.a), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)])), -vec4<i32>(u_input.a, u_input.a, -12886i, u_input.c.x))));
    let var_1 = func_1();
    global1 = array<vec3<bool>, 4>();
    var var_2 = true;
    global0 = array<vec3<bool>, 10>();
    let var_3 = Struct_5(var_1, u_input.b.x, Struct_2(Struct_1(vec3<bool>(true, true, true), all(global3[_wgslsmith_index_u32(17055u, 24u)])), func_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1012f, -943f, -1422f, -999f))), func_1(), 1960f).xz, -1481f, vec3<u32>(~4294967295u, ~(~u_input.b.x), firstTrailingBit(abs(u_input.b.x)))), firstLeadingBit((_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, 29896u, u_input.b.x)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(70227u, u_input.b.x, 4294967295u), vec3<u32>(1u, u_input.b.x, 4294967295u))) | countOneBits(vec3<u32>(4294967295u, 0u, 54u) ^ vec3<u32>(121161u, u_input.b.x, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~var_3.b, 2u)], _wgslsmith_mult_vec4_i32(vec4<i32>(-14655i, 1i, u_input.c.x & u_input.a, var_3.c.b.x | -18841i) >> (firstTrailingBit(vec4<u32>(0u, u_input.b.x, var_3.d.x, u_input.b.x)) % vec4<u32>(32u)), vec4<i32>(62405i, 7059i, -reverseBits(var_3.a.a), 2147483647i)));
}

