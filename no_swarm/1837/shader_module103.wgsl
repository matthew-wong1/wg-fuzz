struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    global0 = array<i32, 18>();
    let var_0 = Struct_3(true, _wgslsmith_div_vec2_f32(global1.xz, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.zx, global1.zz))))), Struct_1(_wgslsmith_add_i32(abs(i32(-1i) * -1i), ~(~global0[_wgslsmith_index_u32(1u, 18u)]))));
    let var_1 = vec3<i32>(0i, _wgslsmith_mod_i32(11565i, ~(~(~global0[_wgslsmith_index_u32(u_input.a.x, 18u)]))), 0i);
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), var_0.b.x))), global1.x, -114f) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-171f + _wgslsmith_f_op_f32(var_0.b.x * -617f)) + -856f), _wgslsmith_div_f32(var_0.b.x, 535f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))));
    global0 = array<i32, 18>();
    return global1.zy;
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(2147483647i, arg_0.c.a));
    let var_1 = arg_0.a && true;
    let var_2 = Struct_3(arg_0.a, _wgslsmith_div_vec2_f32(vec2<f32>(-1598f, -116f), _wgslsmith_f_op_vec2_f32(func_3())), Struct_1(var_0.a));
    var var_3 = Struct_4(~_wgslsmith_mod_vec4_i32(vec4<i32>(~arg_0.c.a, select(var_0.a, arg_0.c.a, false), reverseBits(arg_0.c.a), _wgslsmith_mod_i32(arg_0.c.a, -22107i)), vec4<i32>(~2147483647i, var_0.a, ~arg_1, -1i)));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1836f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1998f + arg_0.b.x) + _wgslsmith_f_op_f32(ceil(global1.x))) * arg_0.b.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.b.x)), 894f)), _wgslsmith_f_op_f32(-arg_0.b.x));
    return -25075i;
}

fn func_1() -> Struct_4 {
    let var_0 = -select(_wgslsmith_add_i32(func_2(Struct_3(false, vec2<f32>(global1.x, global1.x), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), 16400i) & -global0[_wgslsmith_index_u32(u_input.a.x, 18u)], _wgslsmith_sub_i32(1i, global0[_wgslsmith_index_u32(75019u, 18u)]) & global0[_wgslsmith_index_u32(4294967295u, 18u)]), -1i, true);
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(~min(19357u, u_input.a.x)), 103617u, countOneBits(_wgslsmith_dot_vec2_u32(~u_input.a, firstLeadingBit(vec2<u32>(u_input.a.x, 4294967295u)))), ~(~4721u) ^ (abs(68166u) >> (~u_input.a.x % 32u))), ~_wgslsmith_mod_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(1657u, 117927u, u_input.a.x, u_input.a.x))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 38774u, 0u, u_input.a.x), vec4<u32>(21164u, u_input.a.x, 0u, u_input.a.x))));
    var var_2 = Struct_4(vec4<i32>(_wgslsmith_sub_i32(var_0, global0[_wgslsmith_index_u32(var_1.x, 18u)]), global0[_wgslsmith_index_u32(~u_input.a.x, 18u)] ^ var_0, _wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, var_0), i32(-1i) * -2147483647i), var_0));
    var var_3 = var_2.a.wxy;
    let var_4 = Struct_4(var_2.a);
    return Struct_4(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(select(~vec4<i32>(var_2.a.x, -2147483647i, global0[_wgslsmith_index_u32(var_1.x, 18u)], -2147483647i), vec4<i32>(2048i, global0[_wgslsmith_index_u32(var_1.x, 18u)], -1i, var_2.a.x), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], var_2.a.x, var_2.a.x, -18496i) ^ var_4.a, firstLeadingBit(vec4<i32>(-15623i, var_4.a.x, -1i, 2147483647i))), -(~var_4.a)), -(firstLeadingBit(var_2.a) >> (var_1 % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_u32(countOneBits(~u_input.a.x), 4294967295u) != 33518u;
    let var_1 = func_1();
    var var_2 = Struct_4(vec4<i32>(2147483647i >> ((41123u << (u_input.a.x % 32u)) % 32u), -21188i, _wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 57023i), _wgslsmith_mult_i32(-30723i, func_2(Struct_3(true, global1.yz, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), global0[_wgslsmith_index_u32(u_input.a.x, 18u)]))) & var_1.a);
    var var_3 = 401f;
    let var_4 = Struct_1(-abs(-(~1i)));
    let var_5 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global1.x)))))))));
}

