struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<i32>, 21>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = Struct_1(vec3<u32>(u_input.c, arg_0.x, ~(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(0u, 39676u, 21254u)) ^ _wgslsmith_mult_u32(7948u, arg_0.x))));
    global0 = !all(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, true, false), vec4<bool>(any(vec2<bool>(true, true)), true, any(vec2<bool>(false, true)), true)));
    let var_1 = _wgslsmith_div_u32(~firstTrailingBit(~firstLeadingBit(0u)), ~_wgslsmith_add_u32(~max(0u, arg_0.x), firstLeadingBit(_wgslsmith_div_u32(var_0.a.x, 4294967295u))));
    global1 = array<vec2<i32>, 21>();
    global0 = all(!select(vec2<bool>(4294967295u >= var_0.a.x, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), (u_input.c >> (4885u % 32u)) != (arg_0.x >> (var_1 % 32u))));
    return -253f;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec4<bool>, arg_3: vec4<u32>) -> u32 {
    let var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f) - 742f))), _wgslsmith_f_op_f32(func_3(~_wgslsmith_div_vec3_u32(vec3<u32>(21055u, 0u, 4294967295u), vec3<u32>(u_input.c, u_input.c, 4294967295u)))), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-423f + 561f))))), Struct_1(vec3<u32>(~1u, 84812u, 0u)));
    let var_1 = Struct_2(-37312i);
    let var_2 = var_0.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-765f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-494f * 1498f), arg_1 && false)) * -1337f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(sign(var_0.a.x)))))) * vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(sign(291f)), _wgslsmith_f_op_f32(-1f)));
    global0 = any(select(!arg_2.xzz, vec3<bool>((var_1.a == -13628i) != all(arg_2.xyx), arg_1, true), select(vec3<bool>(any(arg_2.wzz), false, true), !(!arg_2.wyw), arg_3.x != 1u)));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_3.yxz, ~(arg_3.zxz | var_0.b.a)), _wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.b.a.x, u_input.c), var_0.b.a)), var_0.b.a) ^ u_input.a.yxx);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> vec3<u32> {
    global1 = array<vec2<i32>, 21>();
    let var_0 = ~min(min(u_input.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(41006i, u_input.b.x, 2147483647i, -42022i), vec4<i32>(-19526i, u_input.b.x, -39963i, -14946i)))), 39806i);
    let var_1 = Struct_1(max(abs(abs(u_input.a.xxy)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, 68833u, u_input.a.x)), _wgslsmith_mod_vec3_u32(u_input.a.wyw, select(u_input.a.yyz, u_input.a.yyx, vec3<bool>(arg_0, arg_0, arg_0))), vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), firstLeadingBit(u_input.c), _wgslsmith_sub_u32(u_input.a.x, 1u)))));
    let var_2 = -global1[_wgslsmith_index_u32(47243u, 21u)];
    let var_3 = firstLeadingBit(_wgslsmith_sub_vec2_u32(abs(var_1.a.yz), vec2<u32>(var_1.a.x & 0u, ~5276u)) & ~max(select(vec2<u32>(71064u, var_1.a.x), var_1.a.zy, vec2<bool>(true, false)), _wgslsmith_add_vec2_u32(u_input.a.wz, vec2<u32>(u_input.c, var_1.a.x))));
    return ~_wgslsmith_add_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1.a.x, var_3.x), vec3<u32>(13306u, var_3.x, var_3.x))) & vec3<u32>(~111786u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 4294967295u, 1u, 1u), vec4<u32>(var_1.a.x, var_1.a.x, var_3.x, u_input.a.x)), max(var_1.a.x, 101036u)), ~_wgslsmith_add_vec3_u32(~vec3<u32>(var_3.x, u_input.a.x, 1u), u_input.a.zxz));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    var var_0 = u_input.c;
    let var_1 = func_4(!(!((58859u << (u_input.c % 32u)) <= func_2(1i, false, vec4<bool>(true, false, true, true), u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -648f, arg_0.x, -2724f) * vec4<f32>(154f, arg_0.x, 1064f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-887f, arg_0.x, arg_0.x, -240f)))));
    let var_2 = Struct_2(_wgslsmith_clamp_i32(u_input.b.x, 1i, u_input.b.x));
    let var_3 = firstLeadingBit(var_2.a);
    let var_4 = vec4<u32>(max(1u, 1u), 0u, abs(_wgslsmith_dot_vec3_u32(var_1, var_1)), ~u_input.c);
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global1 = array<vec2<i32>, 21>();
    global1 = array<vec2<i32>, 21>();
    global1 = array<vec2<i32>, 21>();
    global1 = array<vec2<i32>, 21>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(-615f, -1707f), -294f, 605f, _wgslsmith_f_op_f32(func_1(vec4<f32>(-329f, 1105f, -386f, 1000f))))))), Struct_1(~countOneBits(vec3<u32>(41954u, 0u, u_input.c) ^ u_input.a.xzw)));
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(var_0.b.a.x, 1u), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-var_0.a))), _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.b.x, 2397i, u_input.b.x, u_input.b.x) ^ select(vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i), vec4<bool>(false, false, false, false)), -(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.b.x, -2147483647i, 12345i, 30942i)), vec4<bool>(true, true, true, true)), vec4<i32>(11559i, _wgslsmith_add_i32(29632i, u_input.b.x) ^ reverseBits(2147483647i), -2147483647i, -26410i)));
}

