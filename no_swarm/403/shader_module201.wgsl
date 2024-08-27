struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 51019i;

var<private> global1: array<Struct_1, 1>;

var<private> global2: bool = true;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = !(true & all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)));
    global2 = false;
    let var_1 = u_input.a.zz;
    let var_2 = Struct_2(_wgslsmith_sub_vec2_u32(select(_wgslsmith_sub_vec2_u32(u_input.e.wx, _wgslsmith_mod_vec2_u32(u_input.c.yx, vec2<u32>(u_input.e.x, 1u))), u_input.d, true), u_input.d));
    let var_3 = Struct_2(var_2.a);
    return u_input.d.x ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, min(var_2.a.x, var_3.a.x), firstLeadingBit(var_2.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(57999u, 75911u, 4294967295u, u_input.c.x), u_input.c)), u_input.c), 4236u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> i32 {
    global2 = false;
    var var_0 = Struct_2(~(~(~vec2<u32>(49865u, 30999u))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(func_3(), 16094u), 1u)];
    let var_2 = var_1.a >= _wgslsmith_f_op_f32(ceil(arg_3.x));
    global0 = _wgslsmith_dot_vec3_i32(u_input.a, -max(arg_0, vec3<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, arg_0.x), abs(2147483647i))));
    return -(~0i);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = vec2<u32>((~(~15222u) ^ _wgslsmith_clamp_u32(24779u, ~arg_2.b, _wgslsmith_div_u32(arg_2.b, arg_2.b))) | ~arg_2.b, 42943u);
    global2 = true;
    var var_1 = select(u_input.c, u_input.c, select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, true, select(false, true, true)), all(vec4<bool>(1087f > arg_2.a, false, all(vec4<bool>(false, false, true, true)), any(vec2<bool>(false, true))))));
    let var_2 = 11173u;
    var_1 = vec4<u32>(~abs(20433u), var_0.x, 0u, 24267u);
    return _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_2, u_input.e.x, 0u), abs(_wgslsmith_sub_u32(_wgslsmith_mult_u32(func_3(), 8954u << (var_2 % 32u)), arg_2.b)));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.c.x;
    var var_1 = vec4<u32>(33350u, max(_wgslsmith_sub_u32(~u_input.c.x, reverseBits(33899u)), u_input.d.x) ^ func_4(func_2(vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec4<u32>(u_input.c.x, 0u, u_input.d.x, 4294967295u), _wgslsmith_clamp_vec2_u32(u_input.e.ww, vec2<u32>(u_input.e.x, u_input.e.x), u_input.e.wy), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1209f, -953f, -443f)))), _wgslsmith_div_vec2_f32(vec2<f32>(-142f, -967f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(548f, -124f))), Struct_1(245f, firstTrailingBit(u_input.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.a.x), 58379i), _wgslsmith_mod_u32(firstLeadingBit(74054u), 4294967295u), ~u_input.c.x & (u_input.d.x | u_input.d.x));
    return global1[_wgslsmith_index_u32(0u & (_wgslsmith_clamp_u32(~(var_1.x >> (u_input.b.x % 32u)), ~var_1.x, 1u) >> ((var_1.x >> (~var_1.x % 32u)) % 32u)), 1u)];
}

fn func_5(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = 1i;
    let var_1 = vec3<i32>(u_input.a.x, u_input.a.x, -_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -17394i, u_input.a.x, arg_0.d), vec4<i32>(1i, u_input.a.x, -73770i, 634i))), vec4<i32>(arg_0.d >> (0u % 32u), arg_0.d, countOneBits(33350i), func_2(u_input.a, vec4<u32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), vec2<u32>(4294967295u, arg_0.b), vec3<f32>(arg_0.a, 1381f, 1346f)))));
    let var_2 = -_wgslsmith_add_i32(-42383i, func_2(u_input.a, u_input.e, select(u_input.e.zz, u_input.e.wy, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, arg_0.a)))) ^ var_1.x;
    let var_3 = u_input.e.x;
    global1 = array<Struct_1, 1>();
    return vec3<i32>(_wgslsmith_add_i32(u_input.a.x, 0i), var_1.x, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(-1i));
    var_0 = 3802i;
    var_0 = u_input.a.x;
    var var_1 = func_5(func_1());
    var var_2 = func_1();
    var var_3 = any(vec3<bool>(_wgslsmith_f_op_f32(ceil(-1394f)) == var_2.a, (true | any(vec4<bool>(false, true, false, false))) != true, true));
    var var_4 = -29510i ^ (2147483647i << (_wgslsmith_add_u32(var_2.b, var_2.b) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e.wwx | ~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(44441u, u_input.b.x, 4294967295u), vec3<u32>(4294967295u, 35447u, 24434u), u_input.e.wzy), vec3<u32>(4294967295u, 4294967295u, var_2.b), vec3<bool>(false, true, false)));
}

