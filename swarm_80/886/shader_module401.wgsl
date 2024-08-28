struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: Struct_3,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<i32, 10> = array<i32, 10>(2147483647i, 2147483647i, -19314i, -43440i, 28661i, -8014i, 0i, -1i, 8917i, i32(-2147483648));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(488f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(729f - 933f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1132f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(185f, 577f), 606f, !global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-156f * -1047f)))))));
    global1 = array<i32, 10>();
    let var_1 = u_input.a;
    global0 = !vec4<bool>(!(!all(global0.xy)), global0.x, true, false);
    global0 = !(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(var_1, 10u)] != global1[_wgslsmith_index_u32(u_input.a, 10u)], global0.x, true)));
    return !global0.x;
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = firstTrailingBit(1u);
    let var_1 = ~(~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(u_input.a, 1u))) & ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 90969u), reverseBits(vec2<u32>(34353u, u_input.a))));
    let var_2 = -1374f;
    global0 = vec4<bool>(true, arg_0 <= abs(_wgslsmith_mod_u32(1u, ~var_1.x)), global0.x, false);
    var_0 = var_1.x;
    return select(true, all(!vec3<bool>(global0.x, false, false)), select(global0.x, true, true | (func_1() | global0.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> f32 {
    let var_0 = true;
    global0 = vec4<bool>(true, !(!(true & global0.x)), false, global0.x);
    global0 = vec4<bool>(true, true | all(vec3<bool>(var_0, false, true)), func_3(_wgslsmith_mod_u32(~_wgslsmith_div_u32(arg_1.c.b.x, 48857u), ~select(arg_1.b, 0u, global0.x))), var_0);
    let var_1 = Struct_2(arg_1.d, max(~(~(-2147483647i)), min(51525i, 28386i)));
    let var_2 = Struct_1(0u, _wgslsmith_mult_i32(~firstLeadingBit(9875i), (i32(-1i) * -35372i) & ~var_1.b) == max(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(62111u, arg_1.c.c, 142011u), vec3<u32>(1u, 33719u, arg_1.c.b.x)), 10u)], ~(-2147483647i)), !vec4<bool>(var_0 && !global0.x, true, true, var_0));
    return -360f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(global0.x, func_1() & !(!global0.x), false), !vec3<bool>(func_1(), _wgslsmith_f_op_f32(floor(1648f)) < _wgslsmith_f_op_f32(func_2(u_input.a, Struct_4(vec3<f32>(-2295f, 1705f, 498f), 30175u, Struct_3(vec2<f32>(1886f, 792f), vec2<u32>(u_input.a, 30066u), 13003u, global0.xyz, vec4<i32>(-9914i, 20445i, global1[_wgslsmith_index_u32(u_input.a, 10u)], 1i)), vec4<bool>(false, global0.x, true, global0.x)))), true), !all(vec3<bool>(global0.x & global0.x, true, global0.x != true)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1397f, 2423f, 244f) - vec3<f32>(-733f, 383f, 662f)))), 1u, Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1057f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1107f, -2605f)))))), _wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a, 31380u) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a)))), u_input.a, var_0, _wgslsmith_mod_vec4_i32((vec4<i32>(-40i, global1[_wgslsmith_index_u32(u_input.a, 10u)], 12083i, -2147483647i) >> (vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) % vec4<u32>(32u))) & select(vec4<i32>(14770i, -2147483647i, 1i, 1i), vec4<i32>(37775i, 66469i, global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(38343u, 10u)]), true), vec4<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(85202u, 10u)], 2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)), 10u)], 37930i, abs(-17042i)))), !vec4<bool>(all(var_0), true | (var_0.x & global0.x), false, global0.x));
    var var_2 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(u_input.a), reverseBits(1u), 0u, _wgslsmith_clamp_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, 0u), _wgslsmith_mod_u32(u_input.a, u_input.a))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(3782u, 47292u, u_input.a, var_1.b), countOneBits(vec4<u32>(u_input.a, 54619u, var_1.b, var_1.b))), vec4<u32>(u_input.a, ~1u, _wgslsmith_div_u32(u_input.a, u_input.a), var_1.b)));
    let var_3 = Struct_2(!select(var_1.d, var_1.d, true), -(var_1.c.e.x << (var_1.b % 32u)));
    var var_4 = var_1;
    var var_5 = var_1;
    let var_6 = var_1.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(round(var_1.a.x)), -1008f), 1i, firstTrailingBit(-(-var_3.b & _wgslsmith_mult_i32(1i, 24970i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(978f, 325f)) + vec2<f32>(756f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_5.a.x))))));
}

