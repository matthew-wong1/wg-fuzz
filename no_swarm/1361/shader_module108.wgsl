struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec4<f32>(-591f, 1426f, 1921f, 1404f), 1u, 1u), 2147483647i, Struct_1(vec4<f32>(-3406f, 1138f, 850f, -382f), 0u, 0u), 0u, i32(-2147483648)), Struct_2(Struct_1(vec4<f32>(-1000f, 362f, -1758f, 827f), 4043u, 4294967295u), 31392i, Struct_1(vec4<f32>(-1000f, -684f, 429f, -736f), 66533u, 4294967295u), 29063u, 1i), Struct_2(Struct_1(vec4<f32>(-1000f, -342f, -1259f, 422f), 2338u, 22668u), -4170i, Struct_1(vec4<f32>(-599f, 154f, -1163f, -3008f), 4294967295u, 4294967295u), 0u, -6908i), Struct_2(Struct_1(vec4<f32>(-841f, -481f, -2028f, 606f), 4294967295u, 1u), 0i, Struct_1(vec4<f32>(-296f, -1000f, -1464f, -394f), 1u, 12877u), 22833u, 2147483647i), Struct_2(Struct_1(vec4<f32>(-569f, -783f, -499f, -473f), 6518u, 9676u), -46122i, Struct_1(vec4<f32>(366f, -1399f, -414f, 376f), 42647u, 99157u), 56552u, 1i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1000f, -1000f)), -1466f, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1584f, -439f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(538f - -1512f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(782f - 1750f), _wgslsmith_f_op_f32(round(-1000f)))), 607f), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(u_input.a.x), ~u_input.a.x), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(0u, 0u)), vec2<u32>(u_input.a.x, u_input.c))) | 8014u, 1u);
    var var_1 = ~vec2<u32>(abs(~(~55048u)), var_0.c);
    return -94260i;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(func_3(vec4<i32>(1i, u_input.d, _wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_mult_i32(u_input.d, -218i)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, u_input.d)))), ~vec2<i32>(u_input.d & u_input.d, _wgslsmith_add_i32(u_input.d, 14466i))), abs(1i));
    var var_1 = vec4<i32>(0i << (~max(u_input.b.x, 1u) % 32u), var_0, ~1i << ((u_input.b.x | 4294967295u) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.d, 0i, var_0)), ~vec3<i32>(6148i, var_0, -77401i)), vec3<i32>(-2147483647i, 2147483647i, select(u_input.d, u_input.d, true))), vec3<i32>(var_0, abs(reverseBits(var_0)), abs(func_3(vec4<i32>(u_input.d, -1i, 17256i, -1i), vec2<i32>(var_0, 9642i))))));
    var var_2 = !select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false)), vec2<bool>(true, false)), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), true);
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(21756u, _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, u_input.e.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, 1u), vec4<u32>(28154u, u_input.e.x, 1u, u_input.c)))), 5u)];
    var var_4 = global0[_wgslsmith_index_u32(67208u, 5u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.a.x, -1299f, _wgslsmith_div_f32(-1177f, 326f), var_3.a.a.x)), abs(firstLeadingBit(14145u << (min(0u, 1u) % 32u))), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(firstLeadingBit(u_input.a.x), _wgslsmith_mod_u32(var_4.d, 4294967295u), 6103u), ~25243u));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = -2147483647i;
    var_0 = -1i;
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f) * arg_0.x);
    var var_3 = func_2();
    return Struct_1(vec4<f32>(-1328f, -1136f, var_3.a.x, -785f), var_1.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(81890u, ~var_1.c, abs(4294967295u), ~var_1.c), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(4294967295u, 4294967295u, u_input.c, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c, var_1.c, var_1.c, var_1.b), vec4<u32>(u_input.b.x, 1u, var_3.b, 39195u))), abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, var_1.c, 1u), vec4<u32>(var_1.c, 522u, var_3.c, u_input.e.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~(~1u), 5u)];
    let var_1 = var_0.a;
    global0 = array<Struct_2, 5>();
    var var_2 = func_1(var_0.a.a);
    global0 = array<Struct_2, 5>();
    var var_3 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-110f, var_2.a.x, true)), var_1.a.x, _wgslsmith_f_op_f32(-var_0.c.a.x), var_2.a.x)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 803f, -302f, var_0.a.a.x) + var_1.a))))));
    global0 = array<Struct_2, 5>();
    let var_4 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u >> (max(1u << (u_input.c % 32u), var_2.c) % 32u), max(var_1.c, _wgslsmith_dot_vec2_u32(u_input.a, u_input.e.yx))), 5u)];
    var_3 = func_1(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(~(~30665u), var_3.b)), ~(~var_1.c), 1u, _wgslsmith_f_op_f32(-409f - -1847f), 1000f);
}

