struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_3;
    let var_1 = 0i;
    let var_2 = -vec2<i32>(-34429i, ~28491i);
    var var_3 = ~select(vec2<i32>(var_1, ~global1.a.x), var_2, false);
    global1 = Struct_1(vec4<i32>(_wgslsmith_div_i32(-1i, 67175i), ~(~(-13054i)), select(1i, var_1, true), -2147483647i), global1.b);
    return arg_3;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_sub_i32(18603i, _wgslsmith_dot_vec3_i32(arg_1.a.xyw, vec3<i32>(-1i) * -(~vec3<i32>(u_input.a.x, 2147483647i, global1.a.x))));
    global1 = arg_0;
    global1 = arg_1;
    global1 = arg_1;
    var var_1 = select(vec2<bool>(true, arg_0.b != ~0u), !(!vec2<bool>(true, u_input.a.x > global1.a.x)), min(48432u, _wgslsmith_div_u32(arg_1.b ^ 38157u, ~4294967295u)) < 57110u);
    return select(vec2<bool>(!(!(!var_1.x)), var_1.x), select(select(vec2<bool>(all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1.x), vec2<bool>(true, true), (global1.b ^ 92420u) <= 0u), vec2<bool>(!(!var_1.x), true && (1i > global1.a.x)), vec2<bool>(!var_1.x, true)), arg_1.b == ~global1.b);
}

fn func_2() -> vec4<i32> {
    let var_0 = all(select(func_3(Struct_1(global1.a, 48048u), Struct_1(vec4<i32>(9464i, u_input.a.x, u_input.a.x, u_input.a.x), 48438u)), vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(false, false))))) && ((4294967295u >> (u_input.b.x % 32u)) > 0u);
    let var_1 = _wgslsmith_mod_vec2_u32(u_input.b.yz | firstLeadingBit(u_input.b.xw), ~_wgslsmith_sub_vec2_u32(u_input.b.xy, countOneBits(u_input.b.yw) & vec2<u32>(global1.b, global1.b)));
    let var_2 = ~(~(~_wgslsmith_mod_u32(23370u >> (var_1.x % 32u), 43664u)));
    var var_3 = select(~(3917u | global1.b), 1u, false);
    global0 = ~countOneBits(_wgslsmith_mod_u32(u_input.b.x, global1.b | var_2)) != firstLeadingBit(var_2);
    return -vec4<i32>(firstLeadingBit(~(u_input.a.x << (var_1.x % 32u))), -1i, 44826i, i32(-1i) * -11318i);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    let var_0 = -func_2().x | arg_3.d.x;
    global0 = !arg_0.x;
    let var_1 = Struct_2(firstLeadingBit(4294967295u) & (arg_3.a.a | u_input.b.x));
    global1 = Struct_1(vec4<i32>(global1.a.x, i32(-1i) * -(-3560i >> (0u % 32u)), _wgslsmith_dot_vec2_i32(u_input.a.xz, _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(0i, -70348i)), abs(arg_3.d.xy))), -1i), ~((arg_3.b.a | 25988u) ^ _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 94612u), abs(global1.b))));
    let var_2 = arg_0.ywz;
    return arg_3;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_2 {
    global1 = arg_3;
    var var_0 = 895f;
    var var_1 = arg_0.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.c.x, arg_0.c.x, 165f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(161f, _wgslsmith_f_op_f32(-arg_0.c.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, 281f, 976f, -1000f)), vec4<f32>(811f, _wgslsmith_f_op_f32(-arg_0.c.x), -1200f, _wgslsmith_f_op_f32(arg_0.e.x + 578f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, arg_0.c.x, arg_0.c.x, arg_0.e.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-362f, arg_0.c.x, 576f, arg_0.c.x) - vec4<f32>(-308f, arg_0.e.x, arg_0.c.x, arg_0.c.x))))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.e.x)))), 1f));
    return Struct_2(0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 14>();
    var var_0 = -21956i;
    var var_1 = global1.a.x;
    global2 = array<vec3<bool>, 14>();
    let var_2 = func_5(func_4(vec4<bool>(true, true, true, true), global1.a.x, false, Struct_3(func_1(_wgslsmith_f_op_f32(1361f * -788f), Struct_1(vec4<i32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), u_input.b.x), global1.a, Struct_2(4294967295u)), Struct_2(u_input.b.x << (4294967295u % 32u)), vec2<f32>(-2168f, -1053f), func_2(), vec3<f32>(1f, _wgslsmith_f_op_f32(step(1932f, 1000f)), _wgslsmith_f_op_f32(sign(-258f))))), Struct_1(firstTrailingBit(global1.a), ~abs(1u)), global1.a, Struct_1(_wgslsmith_mod_vec4_i32(global1.a, ~vec4<i32>(global1.a.x, u_input.a.x, -2147483647i, global1.a.x)), ~_wgslsmith_mod_u32(~u_input.b.x, ~1u)));
    global1 = Struct_1(~global1.a, min(global1.b, select(firstLeadingBit(_wgslsmith_sub_u32(1u, var_2.a)), global1.b, all(vec2<bool>(false, true)) | true)));
    var var_3 = Struct_1(global1.a, 48915u);
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(161f, _wgslsmith_div_f32(_wgslsmith_div_f32(390f, 341f), 1f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(877f + 252f)), -711f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, -494f))), ~global1.a, firstTrailingBit(firstTrailingBit(min(vec2<u32>(var_2.a, global1.b), u_input.b.wy))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(firstTrailingBit(vec3<u32>(11038u, 74448u, u_input.b.x))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.a, 19640u, 1u), u_input.b.zzw, u_input.b.wzw)), u_input.b.xxx));
}

