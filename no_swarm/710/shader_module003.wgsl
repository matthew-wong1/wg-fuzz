struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: vec3<i32>;

var<private> global2: Struct_3;

var<private> global3: array<f32, 15> = array<f32, 15>(765f, -548f, -1406f, 1081f, -582f, -1000f, -637f, 113f, -583f, 1979f, -1000f, 1099f, -658f, 807f, 1314f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> vec4<i32> {
    global2 = Struct_3(global2.a, _wgslsmith_f_op_f32(-global2.c.b.x), Struct_1(9035u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.c.b) * global2.c.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.d, global3[_wgslsmith_index_u32(global2.c.c.x, 15u)], global3[_wgslsmith_index_u32(48118u, 15u)], 2151f))), global2.a.a.xww, 1f, max(_wgslsmith_sub_vec3_i32(firstLeadingBit(global2.c.e), max(vec3<i32>(global2.c.e.x, global2.c.e.x, u_input.b), vec3<i32>(2147483647i, 2147483647i, global2.a.c))), global2.c.e)));
    var var_0 = vec2<i32>(2147483647i, 0i);
    return vec4<i32>(_wgslsmith_div_i32(0i, _wgslsmith_mult_i32(var_0.x >> (global2.a.a.x % 32u), 2147483647i)), global2.a.c, global2.a.c, u_input.b) << (global2.a.a % vec4<u32>(32u));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> u32 {
    let var_0 = countOneBits(_wgslsmith_add_vec4_i32(~abs(vec4<i32>(1i, global1.x, global2.a.c, -61i)), func_3(any(vec3<bool>(global2.a.b.x, arg_1.a.b.x, false))) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, arg_1.a.a.x, global2.c.a, 14157u), reverseBits(global2.a.a)) % vec4<u32>(32u))));
    global3 = array<f32, 15>();
    global3 = array<f32, 15>();
    global3 = array<f32, 15>();
    global0 = array<Struct_1, 19>();
    return ~_wgslsmith_add_u32(25559u, 1u);
}

fn func_1() -> vec3<bool> {
    global3 = array<f32, 15>();
    var var_0 = global2.a.c;
    let var_1 = vec2<bool>(!select(true, any(global2.a.b), global2.a.b.x), false);
    let var_2 = _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(14965u, 15u)]));
    global2 = Struct_3(Struct_2(~vec4<u32>(48428u, func_2(456f, Struct_3(global2.a, global2.c.b.x, global0[_wgslsmith_index_u32(84132u, 19u)]), vec2<u32>(4294967295u, 32975u)), ~u_input.c.x, ~43122u), !select(global2.a.b, vec3<bool>(var_1.x, var_1.x, global2.a.b.x), true), 2527i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(global2.c.c.x, 15u)])), _wgslsmith_f_op_f32(trunc(var_2))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(580f + var_2)))), global2.c);
    return select(select(select(global2.a.b, vec3<bool>(select(true, global2.a.b.x, true), var_1.x, global2.a.b.x), select(!global2.a.b, vec3<bool>(true, global2.a.b.x, var_1.x), global2.a.b)), global2.a.b, false), vec3<bool>(var_1.x, any(select(!vec3<bool>(true, true, global2.a.b.x), vec3<bool>(var_1.x, global2.a.b.x, false), select(vec3<bool>(var_1.x, global2.a.b.x, true), vec3<bool>(false, true, var_1.x), global2.a.b))), all(!(!vec3<bool>(var_1.x, global2.a.b.x, false)))), vec3<bool>(false, any(vec2<bool>(!var_1.x, var_1.x)), global2.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<Struct_1, 19>();
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.b.x, global2.c.b.x, -298f, 1600f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-260f, -1000f, -146f, -973f) - global2.c.b))))));
    let var_2 = any(func_1());
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d, 1i), global2.c.e), global1.x, global2.c.a, abs(u_input.a.x), global2.c.e);
}

