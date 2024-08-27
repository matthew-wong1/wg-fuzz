struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-492f, false, vec4<i32>(-20103i, i32(-2147483648), -1i, -2509i));

var<private> global1: array<Struct_4, 24>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> f32 {
    global0 = Struct_3(_wgslsmith_div_f32(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -746f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + 889f) + _wgslsmith_f_op_f32(floor(772f))))), !global0.b & false, vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -4055i, u_input.a) >> (vec3<u32>(0u, 1u, arg_1) % vec3<u32>(32u)), -global0.c.wzy), -20559i, firstTrailingBit(-2147483647i), 1i));
    let var_0 = ~(-12556i);
    var var_1 = countOneBits(~vec4<u32>(arg_1 << (_wgslsmith_clamp_u32(arg_1, 1u, 18289u) % 32u), 0u | firstTrailingBit(25899u), arg_1 | arg_1, 9766u));
    global0 = Struct_3(-908f, all(!(!(!vec4<bool>(global0.b, true, global0.b, global0.b)))), global0.c);
    var var_2 = abs(~(~(~vec4<u32>(44465u, 1u, 17835u, arg_1) & vec4<u32>(arg_1, 1u, arg_1, 47491u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> vec2<bool> {
    global0 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<f32>(1058f, 1866f)), arg_1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1287f, arg_0.a))), 947f)), true & global0.b, ~((vec4<i32>(24600i, -1i, u_input.a, global0.c.x) & -global0.c) ^ abs(-global0.c)));
    let var_0 = arg_1;
    global1 = array<Struct_4, 24>();
    let var_1 = 4294967295u;
    global1 = array<Struct_4, 24>();
    return select(vec2<bool>(true, any(vec4<bool>(var_0.c.x, global0.b, global0.b, false)) != true), !vec2<bool>(!all(vec4<bool>(arg_0.b, true, true, global0.b)), select(true, any(var_0.a), false)), !any(!select(arg_1.c, vec2<bool>(true, false), vec2<bool>(false, arg_1.c.x))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec3<f32>) -> f32 {
    global0 = arg_2;
    global0 = arg_2;
    var var_0 = _wgslsmith_add_vec4_i32(arg_2.c, _wgslsmith_mod_vec4_i32(-arg_2.c, arg_2.c));
    var var_1 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(arg_2.b && any(vec2<bool>(false, arg_2.b)), global0.b), arg_2.b), -_wgslsmith_div_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, global0.c.x), global0.c.xz, var_0.xw), vec2<i32>(-1i) * -vec2<i32>(arg_2.c.x, 42538i)), !select(vec2<bool>(false, arg_3.x > arg_2.a), vec2<bool>(global0.b, any(vec4<bool>(false, true, arg_2.b, global0.b))), vec2<bool>(arg_2.b, true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(971f, -113f))) + 733f)), arg_1.wwz);
    var_1 = Struct_1(!var_1.c, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c.x << (72237u % 32u), -2147483647i, _wgslsmith_clamp_i32(u_input.b, 34856i, var_0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(-29610i, var_0.x, var_0.x), vec3<i32>(1i, -30567i, u_input.b))), abs(~(-4201i))), select(select(vec2<bool>(true, var_1.a.x & true), vec2<bool>(true, all(vec4<bool>(true, false, arg_2.b, false))), false), !select(vec2<bool>(true, true), func_2(Struct_3(arg_2.a, global0.b, arg_2.c), Struct_1(vec2<bool>(arg_2.b, false), vec2<i32>(arg_2.c.x, -1i), var_1.c, vec3<f32>(-313f, global0.a, 433f), var_1.e)), select(var_1.a, vec2<bool>(global0.b, false), var_1.c)), ~4294967295u >= min(_wgslsmith_sub_u32(0u, arg_0.x), _wgslsmith_sub_u32(arg_1.x, arg_1.x))), var_1.d, arg_1.xxw);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1060f)) - arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 24>();
    var var_0 = Struct_3(_wgslsmith_div_f32(global0.a, 164f), true, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(55928i, -25673i), -global0.c.zz), _wgslsmith_div_i32(12118i, -67127i), -1i, global0.c.x), vec4<i32>(global0.c.x, u_input.b, _wgslsmith_mod_i32(max(u_input.b, -17402i), 0i & u_input.b), _wgslsmith_add_i32(global0.c.x, -65506i) & 1i)));
    var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0.a) + 815f))), _wgslsmith_f_op_f32(f32(-1f) * -295f)), global0.b, ~(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, -1i, 1i, var_0.c.x), vec4<i32>(-11335i, var_0.c.x, -2147483647i, -83808i)), global0.c.x ^ 1i, _wgslsmith_div_i32(u_input.a, u_input.a), var_0.c.x) & vec4<i32>(_wgslsmith_mult_i32(u_input.a, global0.c.x), u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(61078i, -1i, 10076i, var_0.c.x), global0.c), 2147483647i)));
    var var_1 = Struct_2(vec2<f32>(1f, -281f));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_1.a - vec2<f32>(_wgslsmith_f_op_f32(var_0.a * -334f), -321f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a))))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - var_1.a.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, -522f)), -216f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec4<u32>(18888u, 1u, 0u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), Struct_3(-429f, var_0.b, vec4<i32>(var_0.c.x, var_0.c.x, -1158i, u_input.b)), vec3<f32>(var_0.a, -469f, var_1.a.x))))), var_0.a))));
    var var_4 = global1[_wgslsmith_index_u32(~min(reverseBits(4294967295u), 84201u), 24u)];
    var var_5 = min(-12277i, -(i32(-1i) * -1i)) >> (var_4.b.e.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(vec2<i32>(global0.c.x, u_input.b) >> (countOneBits(var_4.b.e.zx) % vec2<u32>(32u)))), 1u, 14946u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(227f + 1f) + 1568f), 0u);
}

