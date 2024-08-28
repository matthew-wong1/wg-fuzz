struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec4<i32>) -> vec4<u32> {
    return arg_2.b;
}

fn func_2(arg_0: Struct_5) -> i32 {
    var var_0 = vec4<bool>(!select(all(!arg_0.c), false, any(!arg_0.c)), true, arg_0.c.x, arg_0.c.x);
    let var_1 = arg_0;
    global0 = ~(((vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.c, var_1.b.c, -42292i)) ^ ~_wgslsmith_div_vec4_i32(vec4<i32>(-26942i, var_1.b.c, 14345i, arg_0.a), vec4<i32>(global0.x, global0.x, global0.x, global0.x))) & vec4<i32>(var_1.b.c & _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 4985i, 0i, global0.x), vec4<i32>(-1i, 0i, 12413i, -20146i)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 465i, -1i, 2147483647i), vec4<i32>(24397i, var_1.b.c, -2147483647i, var_1.b.c)), -1i ^ var_1.b.c), ~_wgslsmith_add_i32(2147483647i, u_input.c), var_1.b.c));
    var var_2 = arg_0;
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(var_2.b.a.x, -345f)), _wgslsmith_f_op_f32(sign(102f)), var_2.b.a.x, var_2.b.a.x)))), _wgslsmith_sub_vec4_u32(select(func_3(Struct_3(global0.xx, arg_0.b.a), _wgslsmith_div_vec2_u32(vec2<u32>(63017u, 57282u), vec2<u32>(u_input.d.x, var_1.b.b.x)), Struct_4(vec4<f32>(-2096f, -661f, -114f, -187f), vec4<u32>(var_1.b.b.x, 0u, arg_0.b.b.x, u_input.a.x), -1i), vec4<i32>(35964i, -1i, 2147483647i, -1i)), countOneBits(var_2.b.b), true), _wgslsmith_add_vec4_u32(~u_input.d, vec4<u32>(0u << (u_input.b.x % 32u), var_1.b.b.x >> (93848u % 32u), ~u_input.a.x, ~14073u))), u_input.c);
    return select(global0.x, -(~(~var_2.b.c)), all(!vec4<bool>(!var_2.c.x, false, 2147483647i >= u_input.c, var_1.c.x)));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-964f * -332f)))));
    var var_1 = u_input.b.xz;
    let var_2 = countOneBits(firstTrailingBit(vec4<i32>(0i >> (u_input.b.x % 32u), global0.x, -12351i, arg_2.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-42955i, global0.x, global0.x), vec3<i32>(u_input.c, global0.x, global0.x)))));
    var var_3 = u_input.b.x;
    var var_4 = _wgslsmith_dot_vec2_u32(u_input.d.yx, u_input.b.zx) >> ((var_1.x << (u_input.b.x % 32u)) % 32u);
    return Struct_3(abs(vec2<i32>(_wgslsmith_mod_i32(u_input.c, 98641i), global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0, var_0, 1151f) + vec4<f32>(_wgslsmith_f_op_f32(-1f), 441f, _wgslsmith_f_op_f32(max(-555f, _wgslsmith_f_op_f32(abs(var_0)))), 306f)));
}

fn func_1() -> i32 {
    var var_0 = func_4(all(!vec4<bool>(any(vec4<bool>(true, true, false, true)), select(false, true, false), false, any(vec2<bool>(false, true)))), vec4<bool>(true, false, true & ((global0.x >> (u_input.b.x % 32u)) < func_2(Struct_5(global0.x, Struct_4(vec4<f32>(1193f, -391f, -644f, -1000f), u_input.d, global0.x), vec2<bool>(true, true)))), all(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true)))), vec3<i32>(select(u_input.c, _wgslsmith_mod_i32(u_input.c << (u_input.a.x % 32u), global0.x << (u_input.d.x % 32u)), select(true, false, false) | all(vec4<bool>(true, false, false, true))), u_input.c, _wgslsmith_sub_i32(1i, 2147483647i) << (firstTrailingBit(_wgslsmith_mod_u32(u_input.d.x, u_input.b.x)) % 32u)));
    var var_1 = u_input.d.x;
    let var_2 = _wgslsmith_mult_i32(-1i, global0.x);
    var_0 = Struct_3(vec2<i32>(1i, u_input.c), _wgslsmith_f_op_vec4_f32(-var_0.b));
    var var_3 = Struct_1((!all(vec2<bool>(false, false)) & true) && true, _wgslsmith_f_op_f32(1744f - _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.x, -251f))))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = ~_wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -u_input.c, -59258i, _wgslsmith_sub_i32(func_1(), func_4(var_0, vec4<bool>(var_0, var_0, false, false), vec3<i32>(5001i, u_input.c, u_input.c)).a.x), 0i), ~(vec4<i32>(u_input.c, 0i, u_input.c, global0.x) << (u_input.d % vec4<u32>(32u))) ^ (_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 0i, u_input.c, global0.x), vec4<i32>(-16955i, global0.x, u_input.c, u_input.c)) & -vec4<i32>(u_input.c, u_input.c, u_input.c, global0.x)));
    var var_1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(select(u_input.b.x, u_input.d.x, var_0), u_input.b.x & 18798u, u_input.d.x, _wgslsmith_mod_u32(u_input.b.x, u_input.d.x)) << (((vec4<u32>(u_input.d.x, 16110u, u_input.d.x, u_input.b.x) | u_input.d) >> (reverseBits(vec4<u32>(u_input.a.x, u_input.b.x, 31988u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(firstTrailingBit(~14176u), countOneBits(16318u), ~_wgslsmith_div_u32(u_input.b.x, 0u), abs(1u)));
    global0 = select(vec4<i32>(global0.x, ~(_wgslsmith_mult_i32(u_input.c, global0.x) >> (var_1.x % 32u)), ~countOneBits(-1i) << (func_3(Struct_3(vec2<i32>(2147483647i, global0.x), vec4<f32>(2771f, 1098f, -753f, -1064f)), ~u_input.a, Struct_4(vec4<f32>(-542f, -441f, 363f, 551f), vec4<u32>(u_input.a.x, 17966u, 0u, 32072u), 1i), vec4<i32>(571i, -2147483647i, global0.x, u_input.c)).x % 32u), abs(~(-2147483647i << (0u % 32u)))), firstTrailingBit(max(vec4<i32>(-u_input.c, func_1(), u_input.c ^ -19540i, select(9497i, global0.x, true)), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, 28770i, global0.x, 0i), vec4<i32>(-1i, -2147483647i, -17947i, 56457i), vec4<i32>(2147483647i, global0.x, u_input.c, -1i))))), vec4<bool>(var_0, global0.x < u_input.c, true, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1163f, 887f) - vec3<f32>(1053f, -656f, 337f)))))))));
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(-16408i, _wgslsmith_mult_i32(reverseBits(global0.x >> (var_1.x % 32u)), min(14370i >> (u_input.d.x % 32u), _wgslsmith_sub_i32(u_input.c, global0.x))), abs(u_input.c) & u_input.c, abs(_wgslsmith_sub_i32(2147483647i, u_input.c))), vec4<i32>(-1i, -5944i, 1i, _wgslsmith_div_i32(0i, u_input.c | global0.x)) >> ((_wgslsmith_div_vec4_u32(u_input.d, u_input.d) | u_input.d) % vec4<u32>(32u)));
    let var_4 = vec2<u32>(~(~u_input.b.x), 74746u);
    let var_5 = Struct_3(-vec2<i32>(11083i, func_1()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), -503f, var_2.x, _wgslsmith_div_f32(501f, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(_wgslsmith_mult_u32(var_1.x, u_input.b.x), (39534u & var_4.x) | u_input.d.x, _wgslsmith_mod_u32(~239u, var_4.x)), ~(~u_input.d.xzw)), abs(var_3.zx), var_3.x, vec2<i32>(u_input.c, abs(-9863i)));
}

