struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: array<u32, 4>;

var<private> global2: i32 = 0i;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: i32) -> vec4<u32> {
    global2 = max(-1i, i32(-1i) * -arg_3);
    let var_0 = max(_wgslsmith_clamp_vec4_i32(select(~vec4<i32>(arg_2.a.x, u_input.b, arg_3, u_input.e.x) | arg_2.a, _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(2147483647i, arg_2.a.x, arg_3, arg_2.a.x)), reverseBits(vec4<i32>(u_input.e.x, arg_3, arg_3, u_input.b))), select(select(vec4<bool>(arg_0, true, true, true), arg_1, arg_1), vec4<bool>(false, arg_0, arg_1.x, arg_1.x), true)), u_input.e, _wgslsmith_mult_vec4_i32(~arg_2.a, _wgslsmith_mod_vec4_i32(arg_2.a, arg_2.a ^ arg_2.a))), arg_2.a);
    let var_1 = Struct_3(-var_0.x);
    global0 = array<Struct_3, 2>();
    let var_2 = ~vec3<i32>(-u_input.e.x, u_input.b, _wgslsmith_mod_i32(~var_1.a, var_0.x));
    return ~select(~(~vec4<u32>(40217u, 4294967295u, global1[_wgslsmith_index_u32(u_input.d, 4u)], u_input.d)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(1u, 4u)], u_input.d, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)], 54216u, u_input.d, 40890u), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], 36649u, u_input.c, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)], 3990u, global1[_wgslsmith_index_u32(0u, 4u)]), vec4<u32>(4294967295u, 18598u, global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.d, 4u)], u_input.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15700u, 4u)], 4u)]))), ~countOneBits(vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.d, 4u)], u_input.d, u_input.c))), select(vec4<bool>(var_2.x != arg_3, !arg_1.x, true, any(arg_1)), arg_1, arg_1));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: f32) -> f32 {
    var var_0 = reverseBits(select(abs(u_input.e), vec4<i32>(u_input.e.x, -min(arg_0.c.x, -33289i), abs(min(1i, arg_2.x)), arg_0.c.x), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))));
    let var_1 = vec3<i32>(min(firstTrailingBit(arg_0.d), -49186i) << (_wgslsmith_mod_u32(48159u, abs(_wgslsmith_dot_vec4_u32(arg_1, arg_1))) % 32u), firstLeadingBit(24065i), 2147483647i);
    let var_2 = arg_0;
    let var_3 = ~var_1.x;
    let var_4 = any(!(!vec4<bool>(all(vec3<bool>(true, true, false)), true, any(vec2<bool>(true, false)), true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3 + arg_3))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_0.b.x)))) + arg_0.b.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(437f, -1468f, arg_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.e - arg_0.e))))), -select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(var_0.a.x, var_0.a.x)), arg_0.c, select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, false), true)), var_0.a.x, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.b.x, arg_1, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-289f * arg_0.a) + 1116f)), arg_0.b)));
    global1 = array<u32, 4>();
    let var_2 = arg_0;
    var var_3 = var_1;
    return min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a), 4u)], 4u)], 11827u >> (u_input.c % 32u));
}

fn func_2(arg_0: i32, arg_1: i32) -> u32 {
    global2 = arg_0;
    var var_0 = 1u;
    var var_1 = true;
    var var_2 = ~_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(6167u, 4u)], 25462u, 26865u), vec3<u32>(~1u, global1[_wgslsmith_index_u32(~717u, 4u)], 1u) | vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 83818u, 51555u, 72254u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23371u, 4u)], 4u)], 59884u, u_input.c, u_input.d)), 4u)], global1[_wgslsmith_index_u32(u_input.c ^ 1u, 4u)], ~u_input.a));
    var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(func_4(Struct_1(362f, _wgslsmith_div_vec3_f32(vec3<f32>(-1810f, 339f, -1709f), vec3<f32>(685f, 393f, 206f)), u_input.e.wz, _wgslsmith_mod_i32(u_input.e.x, 1813i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1506f, -1604f, -982f))), ~func_3(true, vec4<bool>(false, false, true, true), Struct_2(u_input.e), -25147i), u_input.e.xz | vec2<i32>(14323i, arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1560f * -735f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2762f, 1115f, 415f) + vec3<f32>(-110f, 1085f, -1954f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1260f, 1000f, -281f) * vec3<f32>(-2595f, 405f, 1000f))))), vec2<i32>(42655i, ~(-arg_0)), arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-115f, 270f), 1909f, -192f))), 374f, Struct_2(~(~vec4<i32>(arg_0, -2147483647i, -12650i, arg_0) ^ _wgslsmith_clamp_vec4_i32(u_input.e, vec4<i32>(arg_1, arg_1, arg_0, 7185i), u_input.e))));
    return ~min(1u, _wgslsmith_clamp_u32(~(~var_2.x), u_input.c >> (firstLeadingBit(var_2.x) % 32u), max(1u, global1[_wgslsmith_index_u32(~var_2.x, 4u)])));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: f32) -> vec4<u32> {
    global0 = array<Struct_3, 2>();
    global2 = u_input.b;
    global1 = array<u32, 4>();
    var var_0 = !select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), vec3<bool>(!(arg_1.e.x > -1708f), false, true), any(vec2<bool>(true, true)));
    global0 = array<Struct_3, 2>();
    return ~_wgslsmith_sub_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, 0u, 0u), vec4<u32>(u_input.a, u_input.d, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)]))), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(33912u, 0u, global1[_wgslsmith_index_u32(4294967295u, 4u)], u_input.d), vec4<u32>(0u, global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(55611u, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 4u)], 4u)], 4u)])), abs(4294967295u), ~4294967295u), 1u & min(u_input.d, 4294967295u), max(42267u >> (u_input.c % 32u), min(global1[_wgslsmith_index_u32(28444u, 4u)], u_input.a)), func_2(_wgslsmith_add_i32(2147483647i, arg_2.a), ~52832i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec2<bool>(true, true));
    var var_1 = _wgslsmith_clamp_vec4_u32(~(~(vec4<u32>(0u, 55378u, u_input.a, 26075u) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12111u, 4u)], 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], 26531u, 12634u) % vec4<u32>(32u)))), vec4<u32>(~(~33737u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, 93115u)), ~vec2<u32>(global1[_wgslsmith_index_u32(87358u, 4u)], u_input.a)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(35338u, 4u)], global1[_wgslsmith_index_u32(28243u, 4u)], 1u, global1[_wgslsmith_index_u32(u_input.a, 4u)]), ~vec4<u32>(u_input.d, 0u, u_input.d, 0u)), 4u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(0u, global1[_wgslsmith_index_u32(1u, 4u)], true), u_input.d), 4u)]), ~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 4294967295u, 67876u)), func_1(global0[_wgslsmith_index_u32(u_input.c, 2u)], Struct_1(266f, vec3<f32>(-235f, 358f, -243f), u_input.e.yy, -5760i, vec3<f32>(-184f, 643f, 1336f)), Struct_3(0i), -1713f))) & vec4<u32>(global1[_wgslsmith_index_u32(1u, 4u)], 4294967295u, 88741u, ~(~(~7497u)));
    let var_2 = -vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_add_i32(-5008i, 0i), u_input.b << (73304u % 32u)), max(-30601i, ~abs(0i)), u_input.e.x);
    let var_3 = Struct_3(_wgslsmith_clamp_i32(var_2.x, var_2.x, 0i));
    global2 = var_3.a;
    let var_4 = false;
    global2 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

