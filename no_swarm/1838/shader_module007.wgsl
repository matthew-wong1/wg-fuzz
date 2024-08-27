struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: bool) -> vec3<u32> {
    return firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), abs(select(vec3<u32>(59348u, 87646u, 20790u), vec3<u32>(34630u, 91763u, 0u), arg_0))), ~(~vec3<u32>(1u, 31747u, 24593u))));
}

fn func_3(arg_0: Struct_5, arg_1: u32) -> f32 {
    global0 = array<Struct_4, 7>();
    var var_0 = Struct_1(4294967295u << (~arg_1 % 32u), 21128i);
    var var_1 = arg_0.a.b.c;
    var_1 = Struct_1(~max(countOneBits(24158u), arg_0.a.b.a.a), u_input.b >> (((66935u & var_1.a) << (~_wgslsmith_clamp_u32(6417u, arg_1, 27500u) % 32u)) % 32u));
    let var_2 = vec4<bool>(true, true, true, true);
    return arg_0.a.b.b;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: bool, arg_3: vec3<u32>) -> vec4<i32> {
    var var_0 = Struct_1(~arg_1.x, ~218i);
    var var_1 = Struct_2(Struct_1(1u, var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(u_input.c.x, Struct_2(Struct_1(26173u, u_input.c.x), -672f, Struct_1(42950u, u_input.b), var_0.a, Struct_1(53645u, 11407i)))), arg_1.x)))), Struct_1(0u, -var_0.b), 63230u, Struct_1(_wgslsmith_div_u32(27898u, arg_3.x), ~min(2147483647i, u_input.c.x)));
    var var_2 = Struct_3(i32(-1i) * -(~min(63203i, 33321i)), Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_0.a, 13108u, 1u)), vec3<u32>(var_0.a, arg_1.x, var_1.c.a)), countOneBits(var_1.e.b)), _wgslsmith_f_op_f32(max(var_1.b, -191f)), Struct_1(0u, ~(-var_0.b)), ~(~27295u), Struct_1(1u, abs(var_1.a.b))));
    var var_3 = vec4<i32>(var_1.a.b, max(_wgslsmith_clamp_i32(-var_0.b, 1i, 1i), _wgslsmith_add_i32(var_1.e.b, _wgslsmith_sub_i32(-17112i, var_2.a)) << (countOneBits(arg_1.x << (4294967295u % 32u)) % 32u)), var_0.b, var_1.c.b);
    var_0 = Struct_1(0u, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_1.c.b, var_2.b.a.b), firstTrailingBit(var_3.x)));
    return -_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-var_2.a, -31537i & var_2.b.e.b, var_3.x, ~(-83415i))), _wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c.b, 29134i, 9986i, var_0.b), vec4<i32>(var_3.x, -1i, 0i, 1i))), -vec4<i32>(u_input.b, 2147483647i, 2147483647i, 24528i) | select(vec4<i32>(var_3.x, u_input.a.x, -2147483647i, -27942i), vec4<i32>(27141i, u_input.b, -36463i, var_3.x), vec4<bool>(true, false, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(vec4<i32>(_wgslsmith_clamp_i32(-1i, u_input.c.x, u_input.c.x), ~(-1i), -27463i, _wgslsmith_mult_i32(12787i, 1i)) ^ -(vec4<i32>(u_input.c.x, u_input.b, -2147483647i, u_input.c.x) & vec4<i32>(u_input.b, u_input.c.x, u_input.b, u_input.b)), _wgslsmith_clamp_vec4_i32(func_2(true, func_1(false), true, vec3<u32>(6759u, 4294967295u, 4294967295u)), select(vec4<i32>(-2346i, -856i, 40996i, 28415i), vec4<i32>(u_input.a.x, u_input.c.x, -1i, 10669i), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))), vec4<i32>(-38565i, u_input.b, u_input.b, u_input.b))) | (vec4<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.c.x, -2147483647i, u_input.b, u_input.b), vec4<i32>(2147483647i, u_input.b, u_input.c.x, 0i)), -vec4<i32>(0i, 30732i, u_input.c.x, 66873i)), 1i, u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(23362i, u_input.b) | u_input.c, u_input.c)) << (~vec4<u32>(46411u, _wgslsmith_add_u32(709u, 78615u), _wgslsmith_dot_vec2_u32(vec2<u32>(20012u, 18898u), vec2<u32>(4294967295u, 6048u)), 12229u) % vec4<u32>(32u)));
    let var_1 = ~_wgslsmith_clamp_i32(u_input.b, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_0, vec4<i32>(u_input.c.x, var_0.x, -45154i, 25132i)), 2147483647i), _wgslsmith_clamp_i32(u_input.b, var_0.x, var_0.x) ^ reverseBits(13380i)) == ~(~var_0.x);
    var var_2 = var_1;
    var var_3 = Struct_4(Struct_1(0u, max(_wgslsmith_mult_i32(reverseBits(1i), ~var_0.x), -17742i)), Struct_3(var_0.x, Struct_2(Struct_1(1u, 1i), _wgslsmith_f_op_f32(-607f * -985f), Struct_1(_wgslsmith_clamp_u32(1u, 1u, 0u), -28208i), ~_wgslsmith_add_u32(1u, 34049u), Struct_1(func_1(false).x, var_0.x))));
    global0 = array<Struct_4, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.b.b.b, 661f))), _wgslsmith_f_op_f32(-var_3.b.b.b))))));
}

