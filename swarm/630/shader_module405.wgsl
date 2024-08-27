struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(0i), Struct_1(1705i), Struct_1(38340i), Struct_1(-3596i), Struct_1(-1i));

var<private> global1: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(1000f, 291f), vec2<f32>(-697f, -1212f), vec2<f32>(-1896f, -2185f), vec2<f32>(-832f, 961f), vec2<f32>(-1031f, 243f), vec2<f32>(1279f, 1464f), vec2<f32>(-877f, 1000f), vec2<f32>(-884f, -824f), vec2<f32>(-622f, 438f), vec2<f32>(914f, -1135f), vec2<f32>(711f, -461f), vec2<f32>(-401f, -1550f), vec2<f32>(-272f, 652f), vec2<f32>(944f, 870f), vec2<f32>(1559f, 496f), vec2<f32>(579f, 2438f), vec2<f32>(-2525f, -1000f), vec2<f32>(441f, -524f), vec2<f32>(-817f, 173f), vec2<f32>(-551f, 247f), vec2<f32>(931f, -595f), vec2<f32>(435f, -1301f), vec2<f32>(104f, 800f), vec2<f32>(1297f, -765f), vec2<f32>(695f, -667f), vec2<f32>(-1025f, -937f), vec2<f32>(579f, 518f), vec2<f32>(-736f, 555f), vec2<f32>(-2504f, -427f), vec2<f32>(1817f, -568f), vec2<f32>(-497f, 737f), vec2<f32>(1000f, -1000f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = ~u_input.b;
    global0 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1183f, arg_0.x, -1431f, -1355f)))))));
    let var_2 = true;
    global1 = array<vec2<f32>, 32>();
    return arg_2 & 1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> u32 {
    global1 = array<vec2<f32>, 32>();
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b << (28482u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b, u_input.b), vec4<u32>(1670u, u_input.b, 41646u, 10523u)), _wgslsmith_mult_u32(0u, 4294967295u), u_input.b) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(29637u, u_input.b, 12946u, u_input.b), vec4<u32>(36048u, u_input.b, 72737u, u_input.b)), firstLeadingBit(vec4<u32>(68077u, 66028u, 32504u, 1u))), ~abs(~vec4<u32>(u_input.b, 4294967295u, arg_2, u_input.b))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, 1u), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 49963u, 0u), vec3<u32>(arg_2, 0u, u_input.b))), u_input.b, 1u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(11254u, _wgslsmith_div_u32(1u, u_input.b >> (u_input.b % 32u)), ~(u_input.b << (4294967295u % 32u)), u_input.b), ~vec4<u32>(arg_2, _wgslsmith_add_u32(arg_2, 4294967295u), u_input.b ^ 75690u, abs(0u))));
    var var_1 = Struct_1(min(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0.x, ~arg_1.a), _wgslsmith_div_i32(_wgslsmith_sub_i32(0i, 2147483647i), _wgslsmith_clamp_i32(u_input.a, arg_0.x, arg_0.x))), _wgslsmith_mult_i32(0i, ~arg_0.x) | arg_1.a));
    var var_2 = _wgslsmith_mod_vec2_i32(arg_0.xy, vec2<i32>(var_1.a, abs(var_1.a)));
    let var_3 = Struct_1(abs(arg_1.a));
    return reverseBits(_wgslsmith_div_u32(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_0.x), vec2<u32>(arg_2, 0u))), ~(arg_2 ^ arg_2)));
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(vec4<i32>(44607i, firstLeadingBit(~u_input.a), u_input.a, 10709i), Struct_1(_wgslsmith_mult_i32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(45235u, u_input.b, u_input.b, 44611u), vec4<u32>(u_input.b, 4294967295u, 8543u, 0u)), 32u)], vec4<bool>(false, true, true, true), u_input.a, true), _wgslsmith_div_i32(u_input.a ^ u_input.a, u_input.a >> (u_input.b % 32u)))), _wgslsmith_clamp_u32(~(~1u), ~0u, ~1u), true);
    var var_1 = u_input.b;
    var_1 = ~4294967295u;
    var var_2 = ~(-vec4<i32>(firstLeadingBit(-34904i), u_input.a, 0i, -7036i) | abs(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.a, -1i, 71486i, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, -31549i), false), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -1i, 14650i, u_input.a), vec4<i32>(u_input.a, -23841i, 1i, -2147483647i)), -vec4<i32>(0i, u_input.a, u_input.a, u_input.a))));
    let var_3 = ~vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(30414u, 67429u), min(u_input.b, 112408u)), u_input.b);
    return global0[_wgslsmith_index_u32(u_input.b, 5u)];
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = func_2();
    let var_2 = true;
    var var_3 = Struct_1(_wgslsmith_mult_i32(-(i32(-1i) * -46436i), -_wgslsmith_sub_i32(2147483647i, var_0.a) >> (1u % 32u)));
    let var_4 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~(~(~u_input.b)), 5u)];
    let var_1 = -440f;
    let var_2 = countOneBits(vec3<u32>(u_input.b, _wgslsmith_div_u32(~_wgslsmith_mod_u32(13260u, u_input.b), u_input.b), firstTrailingBit(firstTrailingBit(countOneBits(66791u)))));
    var var_3 = func_1();
    var var_4 = func_2();
    var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(firstTrailingBit(var_2.x), u_input.b), ~(~(~abs(u_input.b)))), 5u)];
    var_4 = Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a | 97850i, 18044i, 20818i ^ u_input.a, var_4.a ^ var_4.a), vec4<i32>(_wgslsmith_clamp_i32(var_4.a, 1i, u_input.a), firstLeadingBit(u_input.a), 2147483647i << (u_input.b % 32u), select(2147483647i, u_input.a, false))), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, -2147483647i), ~vec2<i32>(-2147483647i, var_3.a))), vec2<u32>(u_input.b >> ((~u_input.b | var_2.x) % 32u), u_input.b << (1u % 32u)), _wgslsmith_mult_vec3_u32(reverseBits(firstTrailingBit(var_2 | vec3<u32>(var_2.x, 4294967295u, 0u))), var_2), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

