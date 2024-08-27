struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: array<bool, 25> = array<bool, 25>(true, true, false, true, true, true, true, true, false, true, false, false, true, false, false, false, true, false, false, true, false, false, false, true, true);

var<private> global1: array<bool, 19> = array<bool, 19>(false, false, true, true, false, true, false, false, false, true, true, false, false, false, true, false, false, true, false);

var<private> global2: array<vec4<bool>, 2>;

var<private> global3: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    global0 = array<bool, 25>();
    let var_0 = Struct_3(global3.c, vec2<u32>(~_wgslsmith_add_u32(40990u, arg_0.d), ~(~_wgslsmith_sub_u32(68046u, global3.c.d))), Struct_2(0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b - global3.c.b), _wgslsmith_f_op_f32(global3.a.c.x - arg_0.b)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c - arg_0.c) - arg_0.c)), global3.b.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(global3.a.a, 9413i), 8575i) << ((_wgslsmith_div_u32(global3.c.d, 0u) & 1u) % 32u), arg_0.a));
    var var_1 = var_0.a.c.x > var_0.c.b;
    var var_2 = select(vec3<i32>(firstLeadingBit(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, var_0.a.a), vec2<i32>(global3.a.a, 36364i))), 47288i << (1u % 32u), 0i), vec3<i32>(~_wgslsmith_mult_i32(var_0.d, u_input.a.x) ^ global3.d, ~u_input.a.x, global3.c.a), global1[_wgslsmith_index_u32(arg_0.d, 19u)]);
    let var_3 = ~_wgslsmith_clamp_u32(min(var_0.a.d, ~4294967295u), var_0.c.d, ~firstTrailingBit(_wgslsmith_add_u32(global3.c.d, 40588u)));
    return arg_0.c;
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1017f, 361f, global3.c.c.x, -1529f), vec4<f32>(690f, global3.a.b, 740f, global3.a.b), global1[_wgslsmith_index_u32(87713u, 19u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, global3.c.b, global3.c.c.x, global3.a.c.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.b, -934f, global3.a.c.x, -818f)));
    var var_1 = global3.c.a & -36827i;
    global3 = Struct_3(Struct_2(_wgslsmith_mult_i32(u_input.a.x, select(_wgslsmith_div_i32(global3.c.a, -2147483647i), -64235i, global1[_wgslsmith_index_u32(~global3.b.x, 19u)])), var_0.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(global3.c)))), 501u), vec2<u32>(_wgslsmith_mod_u32(global3.a.d, global3.b.x) >> (47782u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(global3.a.d, global3.c.d, 13172u), ~vec3<u32>(global3.b.x, 1u, global3.b.x))) | (global3.b >> (~global3.b % vec2<u32>(32u))), Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(global3.a.a), select(global3.c.a, 2147483647i, global1[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_mod_vec2_i32(u_input.a.zz, -vec2<i32>(-2147483647i, global3.a.a))), 844f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3.c.c.x), _wgslsmith_f_op_f32(-global3.c.b), -1000f)), 1u), firstLeadingBit(-firstTrailingBit(-10705i) << (global3.c.d % 32u)));
    var_1 = 61411i;
    global2 = array<vec4<bool>, 2>();
    return vec4<u32>((4294967295u & ~global3.c.d) >> (countOneBits(global3.c.d) % 32u), reverseBits(4294967295u), 1u, ~abs(1u));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> u32 {
    global2 = array<vec4<bool>, 2>();
    let var_0 = ~(-(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, 1i, -2147483647i), select(vec4<i32>(arg_0.a.a, 0i, -2139i, -6833i), vec4<i32>(2147483647i, arg_0.c.a, 40673i, -22142i), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.d, 25u)], global1[_wgslsmith_index_u32(28702u, 19u)], global1[_wgslsmith_index_u32(global3.b.x, 19u)], global1[_wgslsmith_index_u32(arg_0.a.d, 19u)]))) << ((func_2() & ~vec4<u32>(1u, global3.b.x, arg_0.c.d, 0u)) % vec4<u32>(32u))));
    global3 = Struct_3(Struct_2(arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) - _wgslsmith_f_op_f32(min(-205f, arg_1))) + -1450f), global3.c.c, _wgslsmith_mod_u32(_wgslsmith_add_u32(global3.c.d & arg_0.c.d, firstLeadingBit(global3.a.d)), 45291u)), global3.b, global3.c, countOneBits(-var_0.x));
    global3 = arg_0;
    let var_1 = Struct_1(vec4<u32>(~15421u, ~arg_0.a.d, firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(~arg_0.b, global3.b)));
    return ~(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a.d;
    global2 = array<vec4<bool>, 2>();
    global1 = array<bool, 19>();
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(abs(func_1(Struct_3(Struct_2(7556i, global3.a.c.x, vec3<f32>(-202f, -708f, global3.c.c.x), global3.a.d), vec2<u32>(global3.a.d, 4294967295u), Struct_2(72714i, global3.a.c.x, global3.c.c, global3.a.d), global3.d), global3.c.b)), ~0u), _wgslsmith_div_u32(~max(~global3.b.x, 34235u), global3.a.d), 0u, global3.c.d);
    let var_2 = _wgslsmith_mult_u32(~4294967295u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x) >> (vec3<u32>(9407u, 87983u, 1u) % vec3<u32>(32u)), ~var_1.wxw, vec3<u32>(var_1.x, 73537u, 28904u)), vec3<u32>(_wgslsmith_sub_u32(global3.c.d, var_1.x), countOneBits(var_1.x), 6643u)));
    global3 = Struct_3(global3.c, global3.b, global3.c, u_input.a.x);
    global1 = array<bool, 19>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.c.x, global3.a.c.x, -1568f, global3.c.c.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1647f, global3.c.b, -722f, -836f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-279f, 429f, -587f, 1828f), vec4<f32>(global3.a.b, 1956f, 812f, global3.c.b))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1427f, 159f, -164f, global3.c.b), vec4<f32>(global3.a.b, -760f, 395f, global3.a.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.a.c.x, global3.a.b, global3.a.b, global3.c.b), vec4<f32>(1297f, 503f, global3.c.c.x, global3.c.b)))), vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 25u)], true)), global0[_wgslsmith_index_u32(40325u, 25u)] || global1[_wgslsmith_index_u32(4294967295u, 19u)], true, global1[_wgslsmith_index_u32(~4294967295u, 19u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~1u, 9320u));
}

