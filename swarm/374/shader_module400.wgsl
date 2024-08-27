struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: f32;

var<private> global2: bool = false;

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = Struct_2(any(vec2<bool>(false, !(arg_1 < arg_3.b))), true, arg_2, -1914f);
    global2 = !arg_3.e;
    global2 = global3.x | arg_2.e;
    let var_1 = -(~arg_2.d.x);
    global2 = arg_3.a;
    return ~abs(select(~abs(vec2<u32>(9895u, var_0.c.b)), ~select(vec2<u32>(1u, var_0.c.b), u_input.a.zx, global3.zy), global3.yy));
}

fn func_2(arg_0: f32, arg_1: u32) -> bool {
    var var_0 = ~_wgslsmith_dot_vec2_u32(reverseBits(func_3(global3.x, ~79377u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1, 37996u, 72126u), 21u)], Struct_1(true, arg_1, vec3<f32>(arg_0, arg_0, arg_0), vec4<i32>(-30839i, -57021i, 4630i, 2147483647i), false))), u_input.b);
    let var_1 = Struct_2(false, global3.x, Struct_1(global3.x, 59935u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1781f, arg_0, 1549f), vec3<f32>(-1704f, arg_0, arg_0))))), firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), all(vec4<bool>(!global3.x, true, true, !global3.x))), _wgslsmith_f_op_f32(-141f - -395f));
    global0 = array<Struct_1, 21>();
    let var_2 = Struct_2(true, true | all(select(vec2<bool>(true, true), !vec2<bool>(var_1.b, false), all(vec3<bool>(false, global3.x, true)))), Struct_1(false, u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c.c * var_1.c.c))), _wgslsmith_div_vec4_i32(~select(var_1.c.d, var_1.c.d, global3.x), vec4<i32>(max(1i, -2147483647i), 34667i, var_1.c.d.x, _wgslsmith_dot_vec4_i32(var_1.c.d, vec4<i32>(var_1.c.d.x, var_1.c.d.x, 7281i, 0i)))), (u_input.b.x << (~arg_1 % 32u)) == _wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, arg_1, u_input.a.x), countOneBits(u_input.b.x))), _wgslsmith_f_op_f32(ceil(var_1.c.c.x)));
    var var_3 = !all(select(vec2<bool>(true, var_1.a), global3.zy, any(vec4<bool>(true, global3.x, true, var_1.a)))) != false;
    return !(var_2.c.a & all(select(!vec4<bool>(false, true, var_2.c.a, false), vec4<bool>(true, false, false, var_1.b), all(vec2<bool>(false, global3.x)))));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-678f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-400f)) + _wgslsmith_f_op_f32(select(-1733f, -1514f, global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -707f)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2609f, -309f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-244f, 288f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(868f, -883f)) - vec2<f32>(-686f, 283f)), func_2(_wgslsmith_f_op_f32(214f + 1032f), 43802u))))));
    global0 = array<Struct_1, 21>();
    let var_1 = vec4<i32>(select(arg_2.x, ~countOneBits(firstLeadingBit(arg_1.x)), !any(select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(true, global3.x, true), vec3<bool>(global3.x, false, true)))), 52924i, arg_2.x, -(~abs(-1i)));
    let var_2 = global0[_wgslsmith_index_u32(select(~arg_0, ~_wgslsmith_sub_u32(arg_0, _wgslsmith_mult_u32(~u_input.a.x, 28194u)), global3.x), 21u)];
    global2 = !global3.x;
    return Struct_2(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 21u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(763f * 375f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(1u & u_input.b.x, 21u)];
    var var_1 = func_1(~(~u_input.b.x), var_0.d.ww, -_wgslsmith_add_vec2_i32(vec2<i32>(var_0.d.x, var_0.d.x), var_0.d.zw) ^ select(var_0.d.zz, vec2<i32>(var_0.d.x | var_0.d.x, max(var_0.d.x, 2147483647i)), select(vec2<bool>(true, true), global3.zz, var_0.a)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1114f, _wgslsmith_f_op_f32(trunc(var_0.c.x)))) * 1000f));
    let var_3 = 533f;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(~_wgslsmith_add_u32(11310u << (var_1.c.b % 32u), ~var_0.b), vec2<i32>(1i, var_0.d.x), ~(~vec2<i32>(var_1.c.d.x, var_0.d.x) | vec2<i32>(-1i, var_1.c.d.x))).c.d.x, vec4<i32>(0i & ~(-var_0.d.x), var_1.c.d.x, var_1.c.d.x, -2147483647i), select(_wgslsmith_div_vec4_i32(-var_1.c.d & _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_1.c.d.x, -1i, 19261i), var_0.d), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(var_1.c.d.zyw, var_1.c.d.wxy), var_1.c.d.x, select(1i, -44213i, true))), var_1.c.d, !vec4<bool>(true, true, var_1.b, true)), _wgslsmith_f_op_f32(-var_0.c.x));
}

