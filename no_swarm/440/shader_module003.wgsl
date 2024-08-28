struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: vec3<i32>;

var<private> global2: vec3<f32> = vec3<f32>(851f, -502f, 615f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_1, 18>();
    global2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.x)) * _wgslsmith_f_op_f32(exp2(global2.x))), -321f, global2.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(global2.x + -1092f), -2903f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-687f)), global2.x, global2.x == global2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -1408f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1424f, -1511f, -294f) - vec3<f32>(-1510f, 1289f, global2.x))))))));
    var var_0 = !(!(arg_0.b.x | true));
    let var_1 = Struct_1(1u, arg_0.b, _wgslsmith_add_u32(1u, 81889u), false);
    let var_2 = _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-15166i, ~_wgslsmith_add_i32(u_input.b, 23440i)), (-global1.x >> (firstLeadingBit(var_1.a) % 32u)) ^ _wgslsmith_mod_i32(37083i, global1.x >> (1u % 32u))), ~u_input.a.x);
    return global1.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~(~1u), vec2<bool>(true, true), _wgslsmith_clamp_u32(~(~20132u), _wgslsmith_mod_u32(~1u, ~1u), 28636u), func_3(Struct_1(1u, vec2<bool>(true, false), _wgslsmith_mod_u32(26118u, 32123u), true)) > u_input.b);
    global0 = array<Struct_1, 18>();
    var var_1 = var_0.c == (var_0.a ^ _wgslsmith_div_u32(var_0.c, ~var_0.c));
    let var_2 = Struct_1(~(~abs(13393u)), var_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>((4294967295u ^ var_0.a) ^ 0u, var_0.a, select(var_0.c << (var_0.c % 32u), firstLeadingBit(0u), var_0.d), 67612u), select(vec4<u32>(~var_0.c, var_0.c, _wgslsmith_mult_u32(16303u, var_0.c), 4294967295u), abs(vec4<u32>(var_0.c, var_0.c, var_0.a, 82207u)), !(var_0.d && true))), !(!(_wgslsmith_div_f32(global2.x, -568f) <= global2.x)));
    global1 = _wgslsmith_mult_vec3_i32(firstLeadingBit(reverseBits(u_input.a.yzz)), vec3<i32>(-2147483647i, -_wgslsmith_mult_i32(u_input.b, -27240i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.yxy, vec3<i32>(-15393i, global1.x, 1i), u_input.a.xzx), firstTrailingBit(u_input.a.wyy)) & ~global1.x));
    return global0[_wgslsmith_index_u32(~var_0.c, 18u)];
}

fn func_1() -> i32 {
    var var_0 = func_2();
    let var_1 = global1.x;
    var_0 = func_2();
    var_0 = Struct_1(7134u, var_0.b, var_0.c, true);
    let var_2 = ~func_2().a < ~reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.a, 0u), select(var_0.a, 4294967295u, var_0.b.x)));
    return -max(_wgslsmith_div_i32(firstTrailingBit(10211i), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)) ^ u_input.a.x, 567i);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = arg_1;
    let var_1 = countOneBits(_wgslsmith_add_vec2_i32(u_input.a.wy, vec2<i32>(0i, 33946i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1458f)) * _wgslsmith_f_op_f32(f32(-1f) * -322f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1342f, global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_div_f32(-267f, global2.x)), global2.x) + vec4<f32>(_wgslsmith_div_f32(global2.x, global2.x), 1000f, _wgslsmith_f_op_f32(global2.x - -978f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.x))))));
    global1 = vec3<i32>(10926i, countOneBits(1i), var_1.x) & ~(~vec3<i32>(2147483647i, u_input.a.x, countOneBits(-2147483647i)));
    global1 = -firstLeadingBit(~_wgslsmith_div_vec3_i32(u_input.a.wzy, vec3<i32>(global1.x, -13100i, arg_0)));
    return StorageBuffer(~(_wgslsmith_add_vec2_u32(vec2<u32>(arg_3.c, arg_3.c), vec2<u32>(var_0.c, arg_3.c)) ^ ~vec2<u32>(37798u, 4294967295u)) ^ select(vec2<u32>(~arg_3.c, arg_3.a), vec2<u32>(91267u, arg_3.c) ^ ~vec2<u32>(arg_3.a, arg_1.a), arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_mult_i32(func_1(), 2147483647i), Struct_1(~28908u, !func_2().b, ~(~(~62465u)), all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true)))), -vec4<i32>(_wgslsmith_clamp_i32(2147483647i, func_1(), 0i ^ u_input.b), u_input.a.x, u_input.a.x, 8131i), func_2());
}

