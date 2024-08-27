struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(4294967295u, 62727u, 1u, 0u), vec4<u32>(4294967295u, 8899u, 0u, 4294967295u), vec4<u32>(9447u, 35470u, 56282u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 22644u), vec4<u32>(4294967295u, 4294967295u, 9414u, 16944u), vec4<u32>(1u, 32156u, 1u, 72883u), vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(5034u, 3957u, 4294967295u, 1u), vec4<u32>(40228u, 34243u, 0u, 4294967295u), vec4<u32>(0u, 101410u, 4294967295u, 0u), vec4<u32>(1u, 54914u, 1u, 42378u), vec4<u32>(28294u, 10851u, 73777u, 39531u), vec4<u32>(4294967295u, 0u, 37303u, 74848u));

var<private> global1: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global2: array<u32, 13>;

var<private> global3: array<Struct_1, 22>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(~abs(arg_1.e) & 4294967295u, 22u)];
    var var_1 = select(_wgslsmith_sub_u32(39129u, max(firstLeadingBit(global1.x), 0u)), select(_wgslsmith_div_u32(u_input.d.x, ~0u), arg_1.c, var_0.a.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1200f))), !(!arg_2));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1120f, _wgslsmith_f_op_f32(trunc(arg_1.a.x)))) + arg_1.a), ~arg_1.b, ~var_0.b.x, ~(-_wgslsmith_div_vec3_i32(-var_0.d, _wgslsmith_sub_vec3_i32(vec3<i32>(-11560i, 24380i, -1i), vec3<i32>(1i, var_0.d.x, u_input.a)))), ~25678u);
    global3 = array<Struct_1, 22>();
    global3 = array<Struct_1, 22>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), 927f, arg_2));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = reverseBits(_wgslsmith_div_vec4_u32(~global0[_wgslsmith_index_u32(firstLeadingBit(4972u), 13u)], ~vec4<u32>(~global1.x, global1.x, u_input.d.x, ~27623u)));
    var var_1 = abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.b.x, 42145i, ~u_input.b.x, 2147483647i), select(vec4<i32>(0i, -17716i, u_input.c.x, 2147483647i), vec4<i32>(2147483647i, u_input.a, u_input.c.x, -2147483647i), false) & max(vec4<i32>(0i, u_input.a, 35257i, -1i), vec4<i32>(u_input.b.x, 1i, -17482i, u_input.c.x))) << ((~vec4<u32>(global1.x, global1.x, global1.x, 70904u) ^ (vec4<u32>(var_0.x, u_input.d.x, 4294967295u, global2[_wgslsmith_index_u32(1u, 13u)]) | vec4<u32>(u_input.d.x, 17799u, 32423u, 1u))) % vec4<u32>(32u)));
    let var_2 = 68112u;
    let var_3 = global3[_wgslsmith_index_u32(~u_input.d.x >> (~reverseBits(4294967295u) % 32u), 22u)];
    return countOneBits(-abs(vec4<i32>(-30102i, 0i, -1i, 16210i) >> (vec4<u32>(global1.x, 0u, global1.x, u_input.d.x) % vec4<u32>(32u))) | vec4<i32>(-2147483647i, 0i, -1i, -1i));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    return ~abs(vec4<i32>(countOneBits(-2147483647i), -52687i ^ (arg_0 & -2147483647i), ~func_3(true).x, _wgslsmith_div_i32(arg_1.d.x, u_input.b.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    let var_0 = arg_3.xyy;
    let var_1 = all(vec4<bool>(true, global1.x > ~(~16149u), !(arg_1 <= arg_2), _wgslsmith_f_op_f32(func_2(var_0.x, global3[_wgslsmith_index_u32(38059u, 22u)], u_input.b.x < -49753i)) < var_0.x));
    var var_2 = Struct_1(vec3<f32>(-681f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(699f - var_0.x)) * var_0.x), _wgslsmith_f_op_f32(-var_0.x)), u_input.d, global1.x, _wgslsmith_mult_vec3_i32(arg_0.yww, abs(arg_0.yxz)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~global2[_wgslsmith_index_u32(u_input.d.x, 13u)], abs(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(52132u, global1.x), 13u)])), u_input.d), 13u)]);
    global3 = array<Struct_1, 22>();
    var var_3 = func_4(_wgslsmith_dot_vec4_i32(func_3(!var_1) | vec4<i32>(_wgslsmith_add_i32(arg_1, arg_0.x), ~u_input.a, -1i, ~0i), vec4<i32>(var_2.d.x, var_2.d.x, var_2.d.x, 23461i) | -reverseBits(vec4<i32>(25797i, 0i, arg_0.x, arg_0.x))), global3[_wgslsmith_index_u32(u_input.d.x, 22u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.d.x, 32447u), _wgslsmith_add_u32(103984u, global1.x)) % 32u), global2[_wgslsmith_index_u32(var_2.c, 13u)]), 22u)]);
    return 1405f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2313f < _wgslsmith_f_op_f32(func_1(abs(-vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, 1i)), -1i, countOneBits(_wgslsmith_div_i32(reverseBits(u_input.a), 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(436f, 192f, -183f, 676f) - vec4<f32>(-751f, 791f, -533f, -1000f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(135f, -684f, -180f, 313f))), vec4<bool>(true, true, true, true))))));
    var_0 = true;
    let var_1 = _wgslsmith_mod_u32(min(~u_input.d.x, ~(1u & max(u_input.d.x, global2[_wgslsmith_index_u32(global1.x, 13u)]))), ~35763u ^ min(0u, 36448u >> (reverseBits(u_input.d.x) % 32u)));
    let var_2 = ~(1u ^ select(firstTrailingBit(u_input.d.x), u_input.d.x, false));
    var var_3 = global3[_wgslsmith_index_u32(firstTrailingBit(36522u ^ _wgslsmith_div_u32(var_1, 2195u)) << (global1.x % 32u), 22u)];
    var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1957f * 678f), _wgslsmith_f_op_f32(round(701f))), _wgslsmith_f_op_f32(-var_3.a.x)))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~select(vec2<u32>(global1.x, 4294967295u), var_3.b, vec2<bool>(true, false)), _wgslsmith_mod_vec2_u32(~u_input.d, ~vec2<u32>(1u, 45782u))), var_3.b), _wgslsmith_clamp_u32(1u, reverseBits(~reverseBits(var_2)), var_1), var_3.d, ~_wgslsmith_dot_vec2_u32(~(u_input.d | vec2<u32>(30612u, var_3.c)), _wgslsmith_sub_vec2_u32(~u_input.d, vec2<u32>(global1.x, var_1))));
    global2 = array<u32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_3.a.xz)))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, global1.x, 1u, var_1)), global0[_wgslsmith_index_u32(38856u, 13u)] & global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3010u, 13u)], 13u)]), ~_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(var_2, 13u)])), _wgslsmith_mod_u32(reverseBits(min(global2[_wgslsmith_index_u32(u_input.d.x, 13u)], 1u)), ~(~var_3.e))));
}

