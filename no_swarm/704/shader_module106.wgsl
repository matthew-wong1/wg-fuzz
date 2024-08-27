struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(4294967295u, 14137u, 25105u, 1u), vec4<u32>(36677u, 74991u, 1u, 1u), vec4<u32>(250u, 4294967295u, 1u, 63036u), vec4<u32>(0u, 4294967295u, 7164u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 0u, 46914u, 38776u), vec4<u32>(4294967295u, 8349u, 1u, 9059u), vec4<u32>(4294967295u, 0u, 29726u, 1u), vec4<u32>(22919u, 1u, 0u, 0u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = max(_wgslsmith_mod_vec4_u32(~global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a), 9u)], vec4<u32>(u_input.a, _wgslsmith_add_u32(0u, u_input.a), 1u, _wgslsmith_clamp_u32(13908u, u_input.a, u_input.a)) ^ vec4<u32>(4294967295u, abs(u_input.a), u_input.a, 38535u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 41637u, 4294967295u, 11591u) ^ (global0[_wgslsmith_index_u32(1u, 9u)] << (global0[_wgslsmith_index_u32(u_input.a, 9u)] % vec4<u32>(32u))), global0[_wgslsmith_index_u32(1u, 9u)]), vec4<u32>(16750u, _wgslsmith_clamp_u32(u_input.a, u_input.a, 54471u), 18572u, u_input.a) ^ select(vec4<u32>(4294967295u, 12805u, 1u, u_input.a), _wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(44617u, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<bool>(true, true, true, true)), ~vec4<u32>(5122u, firstTrailingBit(u_input.a), ~u_input.a, _wgslsmith_mod_u32(u_input.a, 2418u))));
    var var_1 = Struct_2(reverseBits(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_0, 0i) << (var_0.xxz % vec3<u32>(32u)), vec3<i32>(1i, -22854i, arg_0)))), ~countOneBits(vec3<i32>(abs(-64996i), -9562i, 0i)));
    var var_2 = select(!vec2<bool>(true, arg_0 <= 20300i), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), var_1.b.x == -2147483647i);
    var_1 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(-22393i), 33583i, arg_0), abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 0i, -2147483647i), var_1.b))), ~var_1.a);
    var_1 = Struct_2(vec3<i32>(-(-27579i & _wgslsmith_div_i32(arg_0, var_1.a.x)), var_1.a.x >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_0, vec4<u32>(1u, 4294967295u, 1u, 4294967295u)), vec4<u32>(u_input.a, var_0.x, 1u, 61699u)) % 32u), arg_0), vec3<i32>(~(-2147483647i), 0i, arg_0));
    return -var_1.b;
}

fn func_2(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = Struct_2(vec3<i32>(arg_0.b.x, ~(-2147483647i), -arg_0.a.x), vec3<i32>(25213i >> (u_input.a % 32u), ~reverseBits(-3521i), (-2147483647i >> (1u % 32u)) & -(u_input.c ^ 0i)));
    let var_1 = Struct_1(u_input.c);
    var var_2 = Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, 2147483647i, u_input.c), ~var_0.b), abs(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, 17880i), arg_0.b))), -_wgslsmith_div_vec3_i32(func_3(var_0.b.x), -vec3<i32>(var_1.a, -1i, var_0.b.x))), vec3<i32>(~abs(arg_0.a.x) << (abs(u_input.a) % 32u), -(countOneBits(-1i) | _wgslsmith_add_i32(var_0.a.x, var_1.a)), -32818i));
    global0 = array<vec4<u32>, 9>();
    var var_3 = var_1;
    return countOneBits(~var_0.b.yz);
}

fn func_1(arg_0: i32) -> Struct_5 {
    let var_0 = Struct_4(firstLeadingBit(-func_2(Struct_2(vec3<i32>(4452i, u_input.b, 6104i), vec3<i32>(1i, -1i, arg_0))) ^ countOneBits(vec2<i32>(18919i, 2147483647i))), vec3<f32>(-1918f, 1038f, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-869f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, -957f)))), true, !select(true, false, u_input.a >= 1u) && !all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))));
    let var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(var_0.d, false, var_0.d), false);
    global0 = array<vec4<u32>, 9>();
    let var_2 = var_0;
    let var_3 = _wgslsmith_add_i32(u_input.b, ~min(41901i, ~u_input.c & -u_input.c));
    return Struct_5(var_2, var_1, Struct_4(~firstTrailingBit(var_2.a) & var_2.a, vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(abs(var_2.c)), _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(ceil(1391f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c + var_2.c))), false, !any(!vec4<bool>(var_1.x, var_1.x, var_0.d, var_2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(abs(vec4<i32>(2147483647i, -9077i, 2147483647i, u_input.b)), vec4<i32>(-1i, 1i, -61501i, u_input.b)), countOneBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, -1i, u_input.b, -12222i), vec4<i32>(2147483647i, -31473i, u_input.c, u_input.b)))));
    var var_1 = Struct_1(-func_3(1i).x);
    global0 = array<vec4<u32>, 9>();
    var var_2 = -countOneBits(countOneBits(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.b, u_input.c, var_0.c.a.x, -59242i)), ~vec4<i32>(-17712i, var_0.a.a.x, var_0.c.a.x, -2147483647i))));
    var_1 = Struct_1(1i & firstTrailingBit(func_3(~(-1i)).x));
    var var_3 = func_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(global0[_wgslsmith_index_u32(u_input.a, 9u)]), abs(vec4<u32>(0u, u_input.a, u_input.a << (~u_input.a % 32u), _wgslsmith_mult_u32(~u_input.a, u_input.a))), ~vec2<u32>(0u, 1u));
}

