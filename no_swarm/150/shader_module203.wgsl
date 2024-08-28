struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_4, 9>;

var<private> global2: array<i32, 1> = array<i32, 1>(33731i);

var<private> global3: vec2<f32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>) -> vec2<i32> {
    let var_0 = firstTrailingBit(global0.e);
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-856f - _wgslsmith_f_op_f32(global0.d.b.x - -754f)))), 678f);
    let var_1 = 3024i;
    var var_2 = Struct_2(vec3<f32>(-462f, _wgslsmith_f_op_f32(max(174f, global3.x)), _wgslsmith_f_op_f32(global0.d.b.x - -505f)), _wgslsmith_mod_vec4_i32(-abs(vec4<i32>(-1i, 2147483647i, global0.d.a.x, 2434i)), ~vec4<i32>(var_1, global0.d.a.x, global0.d.a.x, global2[_wgslsmith_index_u32(u_input.a, 1u)]) & ~vec4<i32>(20307i, -17505i, var_1, 0i)) >> ((vec4<u32>(4294967295u << (var_0.x % 32u), var_0.x, var_0.x, ~u_input.a) | global0.a.d) % vec4<u32>(32u)));
    let var_3 = 1u;
    return ~global0.a.a.zy;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>) -> bool {
    var var_0 = Struct_3(global0.d, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.b.x * 588f) * global0.d.b.x) - -640f)), 994f);
    global3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.a.b + _wgslsmith_f_op_vec2_f32(-var_0.a.b))));
    var var_1 = 779f;
    global1 = array<Struct_4, 9>();
    let var_2 = var_0.a.d.x;
    return false;
}

fn func_2(arg_0: bool) -> vec2<f32> {
    let var_0 = vec4<bool>(true | func_4(global0.c, _wgslsmith_add_vec2_i32(func_3(vec3<bool>(false, arg_0, arg_0), vec2<u32>(1u, 0u)), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], -2147483647i))), global0.a.c.x, !global0.a.c.x, global0.a.c.x);
    let var_1 = var_0.ywz;
    let var_2 = global0.a.a.x << (reverseBits(max(~_wgslsmith_mult_u32(u_input.a, u_input.a), 1u)) % 32u);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global0.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -361f))), _wgslsmith_f_op_f32(min(-263f, _wgslsmith_f_op_f32(-global3.x))), 904f));
    var var_4 = Struct_3(global0.a, (global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 45559u), 1u)] < select(-28063i & var_2, global2[_wgslsmith_index_u32(~4294967295u, 1u)], select(arg_0, var_0.x, false))) != false, _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.x))));
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(454f, var_4.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(step(581f, 685f)))) - var_4.a.b.x) - var_3.x));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_5) -> vec3<f32> {
    global0 = Struct_5(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.a.a.x, 1i, 0i), vec3<i32>(~arg_2.a.a.x, -2147483647i, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(arg_2.e.x, 1u)], arg_2.d.a.x)), -vec3<i32>(1i, 21266i, 2147483647i)), _wgslsmith_f_op_vec2_f32(func_2(all(select(vec4<bool>(false, global0.a.c.x, false, arg_2.c.x), vec4<bool>(arg_2.c.x, false, true, true), vec4<bool>(true, global0.a.c.x, false, arg_2.a.c.x))))), arg_2.d.c, _wgslsmith_mult_vec4_u32(global0.d.d, global0.d.d ^ reverseBits(arg_2.a.d))), ~vec3<u32>(abs(0u), arg_2.a.d.x, 4294967295u), select(vec3<bool>(false, arg_2.a.b.x >= _wgslsmith_f_op_f32(arg_2.d.b.x - arg_2.d.b.x), any(!vec2<bool>(arg_2.c.x, false))), vec3<bool>(global0.d.c.x, arg_2.d.c.x && all(vec4<bool>(arg_2.a.c.x, true, false, true)), !global0.a.c.x), vec3<bool>(arg_2.a.c.x, arg_0 > u_input.a, true)), Struct_1(abs(reverseBits(vec3<i32>(arg_2.d.a.x, global2[_wgslsmith_index_u32(0u, 1u)], arg_2.a.a.x) & arg_2.a.a)), arg_2.a.b, vec3<bool>(~global0.b.x >= ~global0.b.x, arg_2.c.x, arg_2.a.c.x), min(global0.d.d, ~vec4<u32>(18316u, 1u, 4294967295u, 0u))), _wgslsmith_div_vec3_u32(~firstTrailingBit(arg_2.d.d.yxz), arg_2.a.d.ywy));
    global3 = _wgslsmith_f_op_vec2_f32(arg_2.a.b - vec2<f32>(arg_2.a.b.x, arg_2.a.b.x));
    global1 = array<Struct_4, 9>();
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.b.x - _wgslsmith_div_f32(-683f, global3.x))), _wgslsmith_f_op_f32(arg_2.d.b.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-390f + global3.x)))), _wgslsmith_f_op_f32(floor(global3.x))), vec3<f32>(arg_2.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.d.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -822f)), arg_2.d.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-_wgslsmith_div_vec3_i32(select(vec3<i32>(-12922i, -7201i, global0.a.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 0i, global2[_wgslsmith_index_u32(1u, 1u)]), vec3<i32>(36284i, -1i, 33634i)), global0.a.c.x), vec3<i32>(global2[_wgslsmith_index_u32(global0.d.d.x, 1u)], _wgslsmith_mod_i32(-2147483647i, -1i), 93563i)), _wgslsmith_f_op_vec2_f32(abs(global0.d.b)), global0.c, global0.a.d);
    global2 = array<i32, 1>();
    var var_1 = Struct_5(global0.a, vec3<u32>(35872u >> (~u_input.a % 32u), ~_wgslsmith_mult_u32(5816u, global0.e.x), u_input.a ^ _wgslsmith_dot_vec4_u32(var_0.d, global0.a.d)) >> (~(~(~vec3<u32>(0u, 4294967295u, u_input.a))) % vec3<u32>(32u)), vec3<bool>(var_0.c.x, any(vec3<bool>(!global0.c.x, var_0.c.x, global2[_wgslsmith_index_u32(1u, 1u)] != -37900i)), !all(select(vec4<bool>(global0.a.c.x, true, global0.a.c.x, false), vec4<bool>(var_0.c.x, global0.c.x, true, true), vec4<bool>(false, true, var_0.c.x, global0.d.c.x)))), Struct_1(global0.a.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-491f, 686f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.a.b))), global0.a.c.x)), var_0.c, ~(~(~global0.a.d))), var_0.d.yyy);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(47110u, 5944u, Struct_5(var_1.a, vec3<u32>(0u, 39665u, 0u), vec3<bool>(true, false, var_1.d.c.x), Struct_1(var_0.a, global0.a.b, vec3<bool>(false, false, var_1.a.c.x), global0.d.d), global0.a.d.wzz))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-171f, -561f, -609f)))) + vec3<f32>(-637f, _wgslsmith_f_op_f32(select(global0.a.b.x, var_1.d.b.x, var_1.d.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -2231f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-231f, global3.x, -1723f) + vec3<f32>(776f, -1374f, var_0.b.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1021f, var_1.d.b.x, var_1.d.b.x)))))), ~select(countOneBits(vec4<i32>(var_0.a.x, 2147483647i, -42145i, var_1.a.a.x) << (global0.d.d % vec4<u32>(32u))), vec4<i32>(0i, ~var_1.a.a.x, -global2[_wgslsmith_index_u32(var_0.d.x, 1u)], -var_1.d.a.x), !(!vec4<bool>(false, var_0.c.x, false, true))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1132f, var_2.a.x, -1623f, var_0.b.x)))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-559f, 1010f, _wgslsmith_f_op_f32(var_0.b.x * 884f), global3.x)))))));
    let var_4 = -vec4<i32>(var_2.b.x, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.a.x, ~21174i), vec2<i32>(i32(-1i) * -28740i, firstLeadingBit(-43536i))), abs(-(-2147483647i | var_1.d.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), var_3.x, -384f), global0.b.x);
}

