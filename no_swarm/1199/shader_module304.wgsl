struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_3,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -13795i;

var<private> global1: array<Struct_1, 3>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: i32) -> i32 {
    global0 = arg_3;
    global0 = 27430i;
    let var_0 = arg_1.x;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.yyz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, 250f) - arg_2.zxy)))), arg_1.x, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -562f), Struct_1(arg_1, countOneBits(vec4<i32>(u_input.a, 1i, 6453i, 44627i)), arg_1.x, var_0 && var_0), Struct_1(vec3<bool>(-1i <= u_input.b, true, true), vec4<i32>(_wgslsmith_mod_i32(u_input.a, -20645i), 1i, -2147483647i, 30876i), true, arg_1.x)), arg_1);
    var var_2 = vec4<i32>(-1i) * -vec4<i32>(var_1.c.c.b.x >> (_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) % 32u), -4438i, -arg_3 & (i32(-1i) * -1i), var_1.c.c.b.x);
    return (-abs(select(14559i, arg_3, arg_1.x)) << (4294967295u % 32u)) & _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(var_2.wz, vec2<i32>(var_1.c.b.b.x, var_1.c.b.b.x)), abs(vec2<i32>(var_1.c.b.b.x, -1i)))), _wgslsmith_sub_vec2_i32(~var_1.c.c.b.wy, -vec2<i32>(-2147483647i, 0i)) & reverseBits(_wgslsmith_div_vec2_i32(var_2.yx, vec2<i32>(var_1.c.c.b.x, 2147483647i))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1190f, _wgslsmith_f_op_f32(f32(-1f) * -713f), _wgslsmith_f_op_f32(f32(-1f) * -794f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(112f, -582f)), _wgslsmith_f_op_f32(-803f - -216f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-830f * 325f)), _wgslsmith_f_op_f32(-1f)))));
    let var_1 = reverseBits(-1i);
    global0 = -(~firstTrailingBit(-2147483647i));
    global0 = -2147483647i;
    let var_2 = global1[_wgslsmith_index_u32(~7888u, 3u)];
    return ~_wgslsmith_sub_i32(-func_3(u_input.c.x | 10442u, arg_1.a, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -1028f, var_0.x, -599f)), -var_2.b.x), _wgslsmith_dot_vec3_i32(abs(arg_1.b.yzz >> (vec3<u32>(7636u, u_input.c.x, 0u) % vec3<u32>(32u))), ~(var_2.b.zyy << (u_input.c.zxw % vec3<u32>(32u)))));
}

fn func_1(arg_0: f32) -> u32 {
    global0 = -func_2(vec2<bool>(true, false), global1[_wgslsmith_index_u32(1u, 3u)]);
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(877f + -417f))), global1[_wgslsmith_index_u32(abs(abs(_wgslsmith_mod_u32(u_input.c.x, ~u_input.e))), 3u)], global1[_wgslsmith_index_u32(u_input.c.x, 3u)]);
    let var_1 = true;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.yw;
    var var_1 = ~(var_0.x ^ (firstLeadingBit(abs(var_0.x)) >> ((u_input.c.x | max(53234u, u_input.e)) % 32u)));
    var_1 = var_0.x;
    let var_2 = vec4<u32>(~_wgslsmith_clamp_u32(17216u, ~(u_input.c.x & var_0.x), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, var_0.x), ~u_input.c.x)), ~((_wgslsmith_div_u32(37109u, 16648u) & func_1(-103f)) & 50298u), min(~1u, 40261u), abs(~var_0.x));
    let var_3 = vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 25992u, var_2.x), ~u_input.d.x) << ((~1u >> (_wgslsmith_sub_u32(u_input.c.x, ~var_0.x) % 32u)) % 32u), var_2.x, var_0.x, u_input.e);
    let var_4 = vec2<u32>(~64715u, 1u);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1046f, 818f)) + _wgslsmith_div_f32(341f, -294f))) + _wgslsmith_f_op_f32(f32(-1f) * -779f)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, u_input.a), firstLeadingBit(vec4<i32>(9113i, u_input.b, 39910i, -1i) ^ vec4<i32>(-1249i, u_input.b, u_input.a, 2147483647i))), abs(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, -4477i, u_input.a) & vec3<i32>(-2147483647i, -2147483647i, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -17225i, u_input.b), vec3<i32>(u_input.a, -11397i, 0i)) >> (vec3<u32>(var_0.x, var_4.x, var_3.x) % vec3<u32>(32u)))), firstLeadingBit(abs(u_input.b)), max(~var_3.zzz, ~(vec3<u32>(59061u, u_input.e, 52900u) ^ max(vec3<u32>(86000u, 0u, 1u), vec3<u32>(u_input.d.x, 60042u, var_2.x)))), vec2<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.b, -28667i, u_input.b, -57528i), vec4<i32>(u_input.b, 11228i, u_input.a, 51983i)), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.b) >> (var_2 % vec4<u32>(32u))), u_input.b | _wgslsmith_add_i32(5569i, 5963i)) & abs(_wgslsmith_sub_vec2_i32(max(vec2<i32>(35036i, u_input.b), vec2<i32>(-2147483647i, u_input.b)), -vec2<i32>(u_input.a, u_input.b))));
}

