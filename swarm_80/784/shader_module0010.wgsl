struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(3422u, 3693u, 6957u, 13551u, 13243u, 85705u, 0u, 1u, 8828u, 0u);

var<private> global1: i32 = -1i;

var<private> global2: array<f32, 16>;

var<private> global3: Struct_3;

var<private> global4: array<bool, 20> = array<bool, 20>(true, true, true, true, true, true, false, true, true, false, false, true, true, false, true, true, true, false, true, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> f32 {
    global1 = u_input.b;
    let var_0 = Struct_1(all(global3.d.zyy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(global3.e.a.b, global3.e.b.b))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 1718f, -1623f, 594f), global3.e.b.b) * _wgslsmith_f_op_vec4_f32(-global3.e.a.b)))), ~global3.b ^ vec2<u32>(_wgslsmith_sub_u32(abs(1u), global3.b.x), global3.c.x));
    var var_1 = Struct_4(var_0.c);
    let var_2 = (vec3<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(28554u, 18850u), 10u)], global0[_wgslsmith_index_u32(0u, 10u)], ~var_1.a.x), ~u_input.c.x, _wgslsmith_sub_u32(var_1.a.x >> (var_0.c.x % 32u), 1u)) >> (vec3<u32>(firstLeadingBit(firstLeadingBit(24829u)), 25568u, ~countOneBits(29610u)) % vec3<u32>(32u))) << (u_input.c.xxy % vec3<u32>(32u));
    let var_3 = -_wgslsmith_mod_i32(-14139i, ~u_input.d ^ (~u_input.d | (global3.e.d.x << (0u % 32u))));
    return var_0.b.x;
}

fn func_2(arg_0: Struct_2) -> f32 {
    global1 = _wgslsmith_dot_vec4_i32(global3.e.d << (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(21761u, 10u)], global3.e.b.c.x, arg_0.b.c.x), u_input.c) % vec4<u32>(32u)), vec4<i32>(-(i32(-1i) * -5376i), arg_0.d.x, arg_0.d.x, u_input.b));
    let var_0 = ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~(~arg_0.c.x & 4294967295u), 10u)], min(4294967295u, _wgslsmith_add_u32(~8139u, 1u)));
    global1 = ~(-1i);
    var var_1 = Struct_3(global3.d.x, firstTrailingBit(~(~global3.b)), ~u_input.c.zw, global3.d, global3.e);
    global0 = array<u32, 10>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0, 16u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b.x + arg_0.b.b.x))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_4) -> Struct_4 {
    let var_0 = arg_1.x;
    var var_1 = global3.e.d;
    global4 = array<bool, 20>();
    let var_2 = Struct_1(all(global3.d), vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3.c.x, 16u)] * _wgslsmith_div_f32(-226f, global3.e.b.b.x)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, firstLeadingBit(global3.e.c.x), min(u_input.c.x, 56428u)), 16u)], global3.e.b.b.x, arg_2.a.b.x), firstLeadingBit(~_wgslsmith_mod_vec2_u32(max(u_input.c.wx, vec2<u32>(4294967295u, 1u)), vec2<u32>(arg_2.b.c.x, u_input.c.x))));
    global0 = array<u32, 10>();
    return arg_3;
}

fn func_1(arg_0: vec3<bool>) -> vec4<f32> {
    global0 = array<u32, 10>();
    var var_0 = select(!arg_0, vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 20u)], true, true), global3.d.x);
    var var_1 = func_4(vec4<f32>(-1133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global3.e)))), global3.e.a.b.x, global3.e.a.b.x), vec3<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global3.c.x, 10u)] >> (_wgslsmith_dot_vec2_u32(vec2<u32>(84898u, 0u), ~vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 10u)])) % 32u), 20u)], global4[_wgslsmith_index_u32(9516u, 20u)], false), global3.e, Struct_4(~global3.c));
    var_1 = Struct_4(vec2<u32>(_wgslsmith_add_u32(select(20907u, _wgslsmith_mult_u32(var_1.a.x, var_1.a.x), true), 0u), var_1.a.x));
    global1 = 2079i;
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -103f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -430f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-931f)))), _wgslsmith_f_op_f32(select(global3.e.a.b.x, _wgslsmith_f_op_f32(global3.e.a.b.x - global3.e.b.b.x), arg_0.x)), _wgslsmith_f_op_f32(exp2(global3.e.b.b.x)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global1 = abs(u_input.e);
    var var_0 = _wgslsmith_f_op_vec2_f32(global3.e.a.b.zx - _wgslsmith_div_vec2_f32(global3.e.a.b.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zz + vec2<f32>(global2[_wgslsmith_index_u32(global3.c.x, 16u)], global3.e.a.b.x))))));
    global1 = _wgslsmith_div_i32(reverseBits(~61622i), 1i);
    global0 = array<u32, 10>();
    global3 = Struct_3(!(!arg_1.a), reverseBits(arg_1.c), arg_1.c, global3.d, global3.e);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(func_1(select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(36486u, 16u)] > -1503f), select(!global3.d.zxx, vec3<bool>(false, global4[_wgslsmith_index_u32(34148u, 20u)], global4[_wgslsmith_index_u32(global3.b.x, 20u)]), !global3.e.a.a), global3.e.b.a))), global3.e.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(72420i ^ -u_input.a, -_wgslsmith_div_i32(-1i, u_input.b)), _wgslsmith_dot_vec2_i32(-select(global3.e.d.wy, vec2<i32>(u_input.b, global3.e.d.x), global3.d.x), firstTrailingBit(global3.e.d.wy))));
    var var_1 = global3.e.a.b.x;
    var var_2 = -1i;
    global1 = global3.e.d.x;
    global3 = Struct_3(!any(global3.d), global3.c, _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(var_0.c ^ vec2<u32>(69990u, 4294967295u), u_input.c.zx), vec2<u32>(72858u, 4294967295u)) & ~(~(var_0.c << (u_input.c.yz % vec2<u32>(32u)))), global3.d, Struct_2(Struct_1(true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global3.e.b.b)), vec4<f32>(-653f, global3.e.a.b.x, -1246f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 16u)])), vec2<u32>(_wgslsmith_add_u32(var_0.c.x, var_0.c.x), _wgslsmith_clamp_u32(74847u, global3.c.x, u_input.c.x))), func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -313f, global3.e.b.b.x, -1349f) - var_0.b), vec4<f32>(var_0.b.x, global3.e.a.b.x, global3.e.b.b.x, 582f), select(vec4<bool>(global3.a, false, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61046u, 10u)], 10u)], 20u)], global4[_wgslsmith_index_u32(4940u, 20u)]), global3.d, global3.a))), func_5(vec4<f32>(1061f, 2333f, global3.e.a.b.x, global2[_wgslsmith_index_u32(9497u, 16u)]), global3.e.b, ~(-1i)), max(global3.e.d.x, -1i)), vec2<u32>(1u, u_input.c.x), -_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global3.e.d.x, global3.e.d.x, 15184i, u_input.a), vec4<i32>(global3.e.d.x, 0i, 0i, global3.e.d.x)), vec4<i32>(global3.e.d.x, 1i, -49807i, -32864i))));
    var var_3 = Struct_1(all(vec2<bool>(var_0.a, false)), _wgslsmith_f_op_vec4_f32(global3.e.a.b * _wgslsmith_f_op_vec4_f32(global3.e.a.b + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(var_0.b, var_0.b), global3.e.b.b)))), global3.b ^ ~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.b.x, 10u)], 10u)], 51771u)));
    var_0 = Struct_1(true, var_0.b, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(abs(~vec2<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global3.b.x)), _wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(106952u, 10u)], 48085u), max(var_3.c, vec2<u32>(3587u, global3.e.c.x)))), global3.e.b.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(44719u), 4294967295u), global3.e.d);
}

