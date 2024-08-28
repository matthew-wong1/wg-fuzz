struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<u32>, 28>;

var<private> global2: Struct_5 = Struct_5(4294967295u, Struct_2(42710u, Struct_1(vec3<bool>(false, false, false)), 2586f, Struct_1(vec3<bool>(true, false, true)), vec4<u32>(43996u, 4294967295u, 0u, 4652u)), 4294967295u, Struct_1(vec3<bool>(true, false, true)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = true;
    let var_1 = _wgslsmith_dot_vec4_u32(global2.b.e, ~global2.b.e) << (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(countOneBits(reverseBits(global2.b.e.x)), u_input.b, u_input.b), ~abs(global2.a) & ~global2.c) % 32u);
    let var_2 = Struct_1(select(!(!vec3<bool>(global2.b.d.a.x, true, false)), !(!global2.d.a), global2.d.a.x));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -345f), 773f, _wgslsmith_f_op_f32(f32(-1f) * -1382f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-463f + -321f), _wgslsmith_f_op_f32(global2.b.c + global2.b.c))) * vec4<f32>(_wgslsmith_f_op_f32(global2.b.c * -442f), global2.b.c, _wgslsmith_f_op_f32(-global2.b.c), global2.b.c)), global2.b, vec2<u32>(65669u, ~_wgslsmith_dot_vec4_u32(global2.b.e, global2.b.e ^ vec4<u32>(6255u, 1u, var_1, u_input.b))));
    global0 = abs(abs(-vec4<i32>(countOneBits(21226i), global0.x, -1i, 9147i)));
    return _wgslsmith_f_op_f32(min(global2.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.c))));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    var var_0 = 758f;
    let var_1 = global2.d;
    let var_2 = -2147483647i;
    global1 = array<vec2<u32>, 28>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(321f, -441f, 1185f, arg_0.c), vec4<f32>(global2.b.c, -1164f, 674f, -1331f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-392f, -516f, 118f, -1000f)), all(vec4<bool>(global2.d.a.x, arg_0.b.a.x, global2.d.a.x, false))))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1369f - 218f), _wgslsmith_f_op_f32(arg_0.c + global2.b.c), _wgslsmith_f_op_f32(-global2.b.c), _wgslsmith_f_op_f32(sign(771f)))))), global2.b, global2.b.e.xw);
}

fn func_1(arg_0: u32) -> vec4<i32> {
    let var_0 = Struct_3(vec4<f32>(-1052f, _wgslsmith_f_op_f32(max(global2.b.c, global2.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1506f), Struct_2(~arg_0, global2.d, 113f, global2.d, global2.b.e), ~global2.b.e.xw);
    global1 = array<vec2<u32>, 28>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2227f)))), -1112f);
    var var_2 = func_2(var_0.b);
    let var_3 = vec4<i32>(_wgslsmith_add_i32(1i, firstLeadingBit(1i) & (u_input.a & -7953i)), i32(-1i) * -2147483647i, global0.x, i32(-1i) * -(u_input.a & -3525i)) << ((~_wgslsmith_clamp_vec4_u32(global2.b.e, vec4<u32>(881u, 0u, 32123u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c.x, 0u, global2.c, 4294967295u), var_0.b.e)) ^ ~(~vec4<u32>(arg_0, arg_0, 0u, var_0.c.x))) % vec4<u32>(32u));
    return abs(max(vec4<i32>(u_input.a, i32(-1i) * -1i, global0.x, _wgslsmith_clamp_i32(abs(global0.x), 1i, _wgslsmith_mult_i32(-2147483647i, u_input.a))), ~select(vec4<i32>(58011i, u_input.a, var_3.x, -1i), ~vec4<i32>(-15120i, 2147483647i, -1i, var_3.x), !vec4<bool>(false, var_2.b.b.a.x, var_2.b.d.a.x, var_2.b.b.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, ~(-global0.x) << (global2.a % 32u), _wgslsmith_dot_vec2_i32(global0.yy, global0.zz), ~(-1i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(~global0.x, _wgslsmith_div_i32(-23686i, global0.x), _wgslsmith_mod_i32(u_input.a, 5581i), reverseBits(u_input.a)), ~vec4<i32>(max(global0.x, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(34232i, global0.x, u_input.a, global0.x), vec4<i32>(u_input.a, -13483i, global0.x, global0.x)), firstLeadingBit(global0.x), _wgslsmith_mod_i32(-1i, global0.x))));
    let var_0 = u_input.a;
    global1 = array<vec2<u32>, 28>();
    global0 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(min(-vec4<i32>(1i, -1i, u_input.a, 20702i), min(vec4<i32>(global0.x, u_input.a, var_0, global0.x), vec4<i32>(0i, -27166i, 2147483647i, -9038i))), func_1(global2.b.e.x & 2162u), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 26066i, u_input.a, u_input.a), -vec4<i32>(-36722i, u_input.a, global0.x, var_0))) >> (~max(select(global2.b.e, global2.b.e, vec4<bool>(false, false, true, true)), ~global2.b.e) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1313f, 1053f), vec2<u32>(global2.b.e.x, global2.a), _wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(55338u, 0u, 4294967295u, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, global2.b.e.x) % vec4<u32>(32u)), global2.b.e, ~global2.b.e), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global2.b.e.x, 21219u, 4294967295u, 9293u), global2.b.e))), firstLeadingBit(global0.xz), global2.b.c);
}

