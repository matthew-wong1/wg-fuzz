struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(2147483647i, 20265u, vec2<u32>(66033u, 44381u), true));

var<private> global2: u32;

var<private> global3: vec3<u32>;

var<private> global4: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> vec4<i32> {
    let var_0 = false;
    global2 = global3.x;
    let var_1 = vec2<bool>(abs(u_input.a.x ^ u_input.a.x) >= -41352i, all(vec3<bool>(var_0, var_0, true)));
    let var_2 = ~reverseBits(vec4<u32>(~arg_0.x, ~(~60322u), _wgslsmith_div_u32(arg_0.x, global3.x >> (1u % 32u)), 0u));
    global3 = countOneBits(vec3<u32>(firstTrailingBit(~_wgslsmith_div_u32(arg_0.x, 0u)), ~_wgslsmith_mod_u32(4294967295u, select(global3.x, global3.x, true)), global3.x));
    return _wgslsmith_sub_vec4_i32(-_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 51733i, 1i, u_input.a.x), ~vec4<i32>(2147483647i, 1i, arg_1, u_input.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global4.x, arg_1, global4.x, -57443i), vec4<i32>(20874i, u_input.a.x, arg_1, global4.x)), vec4<i32>(u_input.b, global4.x, global4.x, u_input.b))), ~(vec4<i32>(arg_1, 1i, global4.x, _wgslsmith_div_i32(0i, u_input.a.x)) | vec4<i32>(_wgslsmith_mod_i32(u_input.c, 24153i), arg_1, -u_input.a.x, 1i)));
}

fn func_2() -> u32 {
    let var_0 = vec2<u32>(global3.x, _wgslsmith_clamp_u32(75511u, global3.x, global3.x));
    let var_1 = Struct_1(_wgslsmith_mult_i32(countOneBits(-15755i), 10263i), global3.x, vec2<u32>(~(~_wgslsmith_add_u32(var_0.x, var_0.x)), global3.x), any(vec4<bool>(firstLeadingBit(u_input.a.x) <= ~u_input.b, true, true, true)));
    var var_2 = (~(~max(vec4<i32>(2147483647i, -1i, u_input.a.x, 2147483647i), vec4<i32>(19083i, -2147483647i, var_1.a, var_1.a))) | _wgslsmith_mult_vec4_i32(-func_3(vec3<u32>(4361u, 34732u, global3.x), 2147483647i), func_3(vec3<u32>(var_1.c.x, global3.x, 1u), 26222i) << (vec4<u32>(1530u, 0u, 7966u, 36681u) % vec4<u32>(32u)))) | abs(min(_wgslsmith_add_vec4_i32(min(vec4<i32>(49214i, -1i, u_input.b, var_1.a), vec4<i32>(-2147483647i, global4.x, 1i, -2147483647i)), vec4<i32>(3587i, var_1.a, var_1.a, u_input.a.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(global4.x, u_input.b, u_input.b, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_1.a, 2147483647i, 46846i), vec4<i32>(u_input.c, 2147483647i, 0i, var_1.a)))));
    global1 = array<Struct_1, 1>();
    var_2 = (min(vec4<i32>(19117i, ~(-1i), var_1.a, reverseBits(0i)), vec4<i32>(~var_1.a, global4.x, var_2.x, var_2.x)) << (abs(_wgslsmith_add_vec4_u32(vec4<u32>(81887u, global3.x, 0u, global3.x) ^ vec4<u32>(0u, 1u, var_0.x, var_0.x), ~vec4<u32>(13311u, 0u, var_0.x, 7269u))) % vec4<u32>(32u))) ^ vec4<i32>(1i >> (~(~var_1.c.x) % 32u), _wgslsmith_div_i32(-max(-2147483647i, u_input.a.x), ~(~28550i)), -_wgslsmith_div_i32(0i, -55819i), global4.x);
    return var_0.x;
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_2 {
    global3 = ~min(vec3<u32>(4294967295u, abs(_wgslsmith_sub_u32(4294967295u, global3.x)), func_2()), vec3<u32>(18047u, global3.x, _wgslsmith_div_u32(~6497u, global3.x << (0u % 32u))));
    var var_0 = ~_wgslsmith_div_u32(global3.x, abs(global3.x));
    let var_1 = (i32(-1i) * -arg_0) | ~_wgslsmith_dot_vec4_i32(func_3(vec3<u32>(global3.x, 0u, global3.x), 0i) >> ((vec4<u32>(97284u, 61178u, 38501u, global3.x) & vec4<u32>(global3.x, 10471u, global3.x, global3.x)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 26114i), -u_input.a.x, _wgslsmith_add_i32(1i, -1i), i32(-1i) * -33868i));
    var var_2 = select(vec2<bool>(arg_1.x | arg_1.x, arg_1.x), vec2<bool>(!any(vec2<bool>(arg_1.x, true)), !(!any(vec2<bool>(false, arg_1.x)))), vec2<bool>(arg_1.x, true));
    global0 = array<Struct_2, 28>();
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3.x, 0u, global3.x), 28u)];
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = func_1(global4.x, vec4<bool>(!arg_3.d, _wgslsmith_f_op_f32(abs(1048f)) == arg_0, false, arg_2.d), -u_input.a).a.c;
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    global2 = _wgslsmith_sub_u32(abs(arg_2.b) | ~1u, ~arg_3.b);
    return select(arg_1.b.zyz, !arg_1.b.zxx, !select(!vec3<bool>(arg_3.d, false, arg_1.a.d), !arg_1.b.xxx, arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(~(~global3.x), ~global3.x | ~1u, 34572u);
    let var_1 = Struct_3(-global4.x, select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, true)), vec3<bool>(true, any(vec3<bool>(false, true, true)), true), true), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), func_4(_wgslsmith_div_f32(195f, -198f), func_1(global4.x, vec4<bool>(true, true, true, false), vec2<i32>(u_input.c, global4.x)), Struct_1(global4.x, global3.x, vec2<u32>(global3.x, global3.x), true), func_1(2147483647i, vec4<bool>(false, false, false, false), global4.xz).a), true), true), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_sub_u32(30435u, _wgslsmith_div_u32(global3.x, global3.x))), global3.x), 1u)]);
    let var_2 = Struct_2(Struct_1(global4.x, var_1.c.c.x, firstLeadingBit(global3.zz), false), vec4<bool>(true, !(!var_1.c.d != var_1.b.x), all(!vec4<bool>(var_1.c.d, true, false, true)) != ((22474i << (global3.x % 32u)) == global4.x), false), vec3<i32>(abs(max(53653i, 2147483647i)), _wgslsmith_mod_i32(-1i, firstTrailingBit(-1i)), 2147483647i) | _wgslsmith_sub_vec3_i32(vec3<i32>(5268i, global4.x, _wgslsmith_mult_i32(u_input.b, global4.x)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(15558i, -1i, -1i), vec3<i32>(var_1.c.a, 0i, 2147483647i) | vec3<i32>(-6054i, -11715i, var_1.c.a), firstTrailingBit(vec3<i32>(u_input.c, global4.x, var_1.a)))));
    let var_3 = ~(-(~2147483647i));
    let var_4 = reverseBits(_wgslsmith_mod_vec3_u32(select(vec3<u32>(_wgslsmith_clamp_u32(var_1.c.b, var_1.c.c.x, var_2.a.c.x), ~global3.x, 25649u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.c.b, 0u, 1u), vec3<u32>(var_2.a.b, 4294967295u, 0u), vec3<u32>(var_2.a.b, 110623u, 48314u)), var_1.b), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(34542u, 4294967295u, 22047u)), vec3<u32>(var_1.c.b, var_2.a.c.x, 4294967295u), vec3<u32>(var_1.c.c.x, 34450u, global3.x) & vec3<u32>(17974u, 23667u, var_2.a.b)) & ~(vec3<u32>(var_2.a.b, 4294967295u, global3.x) << (vec3<u32>(global3.x, global3.x, var_1.c.c.x) % vec3<u32>(32u)))));
    var_0 = firstLeadingBit(~var_1.c.b);
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(select(func_2(), var_1.c.c.x, false), var_3, 15856u, vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.c.x, 23729u, global3.x, 60491u), abs(vec4<u32>(var_2.a.c.x, var_4.x, var_1.c.c.x, 26907u))), 0u, ~4294967295u) >> (~(~(vec4<u32>(var_2.a.b, var_5.c.c.x, global3.x, global3.x) ^ vec4<u32>(0u, var_5.c.c.x, 30526u, 1u))) % vec4<u32>(32u)));
}

