struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 526f;

var<private> global2: Struct_3;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f)), global0.a.x)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(global0.a)), var_0, ~_wgslsmith_add_vec2_i32(vec2<i32>(global0.c.x, 9259i), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(global0.c, vec2<i32>(u_input.a, -21216i)), global0.c)), vec4<f32>(global0.a.x, var_0, 1583f, global0.b));
    let var_1 = _wgslsmith_div_vec4_i32(-_wgslsmith_sub_vec4_i32(select(~vec4<i32>(-1i, -39635i, -49072i, u_input.a), vec4<i32>(u_input.a, global2.a, global0.c.x, global0.c.x), true), vec4<i32>(reverseBits(0i), firstTrailingBit(2147483647i), -63125i, -2147483647i)), min(~(-(vec4<i32>(u_input.a, u_input.a, global2.a, -90665i) >> (vec4<u32>(1u, arg_0, u_input.b, arg_0) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_add_i32(u_input.a, -2889i) ^ u_input.a, u_input.a, u_input.a, _wgslsmith_dot_vec2_i32(~vec2<i32>(14001i, 16383i), vec2<i32>(global0.c.x, global2.a)))));
    var var_2 = Struct_3(_wgslsmith_dot_vec3_i32(var_1.wwx, vec3<i32>(-_wgslsmith_dot_vec4_i32(var_1, var_1), abs(abs(2147483647i)), u_input.a)));
    let var_3 = _wgslsmith_mod_u32(select(u_input.b, u_input.b, true), 4294967295u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(-var_0), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)))) - 714f);
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>) -> vec2<u32> {
    global1 = _wgslsmith_f_op_f32(arg_2.x - 737f);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.d.xw - arg_2.xz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - 477f) + 1000f), global0.b, true))), firstLeadingBit(vec2<i32>(-10922i, ~global2.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1395f, -897f, 193f)) - _wgslsmith_f_op_vec4_f32(step(global0.d, vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -2227f)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-329f, global0.b, 111f, 929f)), _wgslsmith_f_op_vec4_f32(-global0.d), vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(arg_2.x - arg_2.x), _wgslsmith_f_op_f32(step(arg_2.x, global0.d.x)), -578f, arg_2.x), select(!vec4<bool>(arg_1, false, arg_1, true), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, false, arg_1, true))))));
    var var_1 = Struct_2(arg_0.a);
    global1 = var_0.b;
    global2 = Struct_3(-global0.c.x);
    return select(vec2<u32>(select(4294967295u, ~u_input.b, any(vec2<bool>(true, true))), 0u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 82432u), vec2<u32>(4294967295u, u_input.b)) << (vec2<u32>(1u, _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)) % vec2<u32>(32u)), vec2<bool>(true, false)) ^ vec2<u32>(u_input.b, ~31268u & ~(u_input.b ^ 85900u));
}

fn func_1(arg_0: u32) -> vec4<i32> {
    var var_0 = ~vec2<u32>(~arg_0, 4294967295u);
    let var_1 = -2147483647i;
    var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(12426u, u_input.b), vec2<u32>(u_input.b, 0u) & (~vec2<u32>(15288u, arg_0) ^ ~vec2<u32>(49996u, 4294967295u))), func_2(Struct_3(_wgslsmith_div_i32(i32(-1i) * -2147483647i, ~(-2285i))), true, global0.d.yzy));
    var var_2 = Struct_3(2147483647i);
    let var_3 = -_wgslsmith_dot_vec2_i32(-select(_wgslsmith_div_vec2_i32(global0.c, global0.c), -vec2<i32>(16872i, 0i), vec2<bool>(true, false)), global0.c);
    return vec4<i32>(31387i, ~(~0i), _wgslsmith_dot_vec2_i32(global0.c, global0.c), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(min(~vec3<i32>(0i, u_input.a, var_1), vec3<i32>(36245i, -2147483647i, 979i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(41218i, var_1, 4721i), vec3<i32>(var_3, global0.c.x, -2147483647i))), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(44266i), var_1 << (arg_0 % 32u), var_1 ^ var_3, -u_input.a), vec4<i32>(firstLeadingBit(0i), var_1, abs(global0.c.x), select(2147483647i, 0i, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(reverseBits(~func_1(4294967295u)), func_1(~1u));
    let var_1 = vec3<bool>(select(any(vec2<bool>(u_input.b >= u_input.b, false)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true), !all(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), select(true, false, !all(select(vec2<bool>(false, true), vec2<bool>(true, false), false))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x));
    var var_2 = global0.d;
    var_2 = global0.d;
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(-global0.b), 457f, _wgslsmith_f_op_f32(max(-2004f, var_2.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-187f, _wgslsmith_f_op_f32(step(-718f, global0.d.x)), global0.a.x, _wgslsmith_f_op_f32(-491f + 1396f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -332f, global0.b, -1088f) * vec4<f32>(var_2.x, 2029f, -1532f, -1673f)))), select(vec4<bool>(var_1.x, false, var_1.x, true), select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, true, false)), select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true)))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, 900f, -433f, 1055f), vec4<f32>(var_2.x, -1000f, 255f, var_2.x))))))));
    let var_3 = Struct_2(-u_input.a);
    let var_4 = vec3<bool>(_wgslsmith_add_i32(_wgslsmith_mod_i32(global2.a, u_input.a) & u_input.a, 2147483647i) != 0i, true, false);
    global1 = _wgslsmith_f_op_f32(-1570f * 584f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(vec3<u32>(4294967295u, 1u, u_input.b))), ~vec3<u32>(u_input.b, u_input.b, ~58300u), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(22751i, 0i, -3783i, global0.c.x)) ^ vec4<i32>(~(-7455i), reverseBits(49447i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x, var_3.a, 56196i), var_0.xww), -global2.a), abs(_wgslsmith_div_vec4_i32(-vec4<i32>(1i, 48246i, -2147483647i, 8149i), vec4<i32>(-1i, var_0.x, global0.c.x, 0i) | vec4<i32>(var_3.a, -2147483647i, u_input.a, 29913i)))), ~(~func_1(0u) & abs(vec4<i32>(2147483647i, u_input.a, -2147483647i, global2.a))));
}

