struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_5 = Struct_5(vec3<u32>(0u, 4294967295u, 40059u), 91200u, Struct_1(0i, -44660i, vec2<bool>(true, false), false));

var<private> global1: array<Struct_3, 5>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = reverseBits(select(countOneBits(~vec4<u32>(global0.a.x, 19207u, global0.a.x, global0.a.x)) >> (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(global0.b, 32035u, global0.a.x, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, global0.b, global0.b), vec4<u32>(4294967295u, 0u, global0.b, global0.b))) % vec4<u32>(32u)), vec4<u32>(4294967295u, countOneBits(4294967295u), ~_wgslsmith_sub_u32(112910u, global0.b), ~4294967295u), vec4<bool>(any(vec4<bool>(arg_1, false, true, arg_1)) & (arg_1 | global0.c.d), false, arg_1 | !arg_1, true)));
    return 35138u;
}

fn func_2() -> Struct_5 {
    global1 = array<Struct_3, 5>();
    var var_0 = abs(_wgslsmith_clamp_u32(1u, 21979u, ~global0.b)) & global0.b;
    global1 = array<Struct_3, 5>();
    global0 = Struct_5(vec3<u32>(1u, ~global0.a.x, select(global0.a.x, global0.b ^ 4294967295u, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(~global0.a.x, abs(global0.a.x)), _wgslsmith_mod_vec2_u32(global0.a.yy, global0.a.yy)) >> (abs(40662u) % 32u), global0.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-320f, _wgslsmith_f_op_f32(f32(-1f) * -426f))));
    return Struct_5(vec3<u32>(24596u >> (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global0.a, vec3<u32>(global0.b, 28941u, global0.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, global0.b, 18385u), global0.a)) % 32u), global0.a.x, global0.a.x), func_3(_wgslsmith_div_f32(482f, 1525f), global0.c.d || global0.c.c.x, _wgslsmith_f_op_f32(-1f)), global0.c);
}

fn func_1() -> vec2<i32> {
    global0 = func_2();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(630f + -176f), _wgslsmith_f_op_f32(max(190f, -817f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1237f + 587f), _wgslsmith_f_op_f32(floor(337f))))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.b >> (global0.b % 32u), _wgslsmith_add_u32(0u, 1u)), 5u)];
    let var_2 = 25485u;
    let var_3 = ~(~global0.a.zz);
    return -vec2<i32>(i32(-1i) * -6770i, ~var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = global0.a.zy;
    global1 = array<Struct_3, 5>();
    let var_2 = -select(-max(var_0.x, u_input.a << (global0.b % 32u)), global0.c.b, global0.c.c.x);
    global0 = func_2();
    var var_3 = Struct_3(global0.c, Struct_2(vec3<bool>(global0.c.c.x, true, !(!global0.c.d)), false, _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_1.x << (81650u % 32u), firstLeadingBit(global0.b), countOneBits(4294967295u)), vec4<u32>(abs(0u), ~var_1.x, 1u, ~global0.b), vec4<u32>(4294967295u, firstLeadingBit(var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 1u), global0.a.yz), 11908u)), _wgslsmith_div_u32(_wgslsmith_add_u32(global0.b, var_1.x) << (~var_1.x % 32u), 17400u)), Struct_2(vec3<bool>(true, !any(vec2<bool>(global0.c.d, false)), global0.c.d), true, vec4<u32>(max(13356u, global0.a.x), ~_wgslsmith_sub_u32(var_1.x, global0.b), ~global0.a.x, ~global0.b ^ (0u & var_1.x)), 1u), countOneBits(var_0.x) | _wgslsmith_dot_vec2_i32(vec2<i32>(~(-3640i), _wgslsmith_sub_i32(global0.c.a, global0.c.b)), _wgslsmith_mod_vec2_i32(select(vec2<i32>(26895i, var_0.x), var_0, true), _wgslsmith_sub_vec2_i32(vec2<i32>(55722i, var_2), var_0))));
    global1 = array<Struct_3, 5>();
    var_1 = ~var_3.c.c.xx;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().x, vec4<i32>(var_2, _wgslsmith_add_i32(0i << (var_1.x % 32u), ~(-1i)), i32(-1i) * -var_2, -24891i));
}

