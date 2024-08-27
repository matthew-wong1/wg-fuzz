struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_3,
    e: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: Struct_4,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: i32;

var<private> global2: array<Struct_3, 18>;

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(true, vec3<bool>(true, false, true), Struct_1(true, vec3<u32>(4294967295u, 72156u, 1u))), Struct_2(true, vec3<bool>(false, false, true), Struct_1(false, vec3<u32>(0u, 43536u, 1u))), Struct_2(false, vec3<bool>(false, true, false), Struct_1(true, vec3<u32>(1u, 3679u, 1u))), Struct_2(true, vec3<bool>(true, false, true), Struct_1(true, vec3<u32>(0u, 0u, 4294967295u))), Struct_2(true, vec3<bool>(true, false, false), Struct_1(true, vec3<u32>(22697u, 85339u, 26295u))), Struct_2(false, vec3<bool>(false, false, false), Struct_1(false, vec3<u32>(0u, 1u, 4294967295u))), Struct_2(false, vec3<bool>(true, false, false), Struct_1(false, vec3<u32>(1u, 4294967295u, 1u))), Struct_2(true, vec3<bool>(false, true, true), Struct_1(true, vec3<u32>(4294967295u, 38364u, 4294967295u))), Struct_2(true, vec3<bool>(false, true, true), Struct_1(true, vec3<u32>(4294967295u, 54293u, 45472u))), Struct_2(false, vec3<bool>(false, true, false), Struct_1(true, vec3<u32>(13848u, 0u, 4294967295u))), Struct_2(true, vec3<bool>(false, true, true), Struct_1(false, vec3<u32>(43171u, 1286u, 56643u))), Struct_2(false, vec3<bool>(true, false, false), Struct_1(false, vec3<u32>(84774u, 0u, 4294967295u))), Struct_2(true, vec3<bool>(true, true, true), Struct_1(true, vec3<u32>(23611u, 4910u, 22436u))), Struct_2(true, vec3<bool>(false, false, false), Struct_1(false, vec3<u32>(108838u, 4294967295u, 0u))), Struct_2(false, vec3<bool>(true, true, true), Struct_1(false, vec3<u32>(47367u, 34546u, 18037u))), Struct_2(false, vec3<bool>(false, false, true), Struct_1(false, vec3<u32>(15400u, 51540u, 1u))), Struct_2(true, vec3<bool>(false, true, true), Struct_1(true, vec3<u32>(1u, 31135u, 23174u))), Struct_2(false, vec3<bool>(true, true, true), Struct_1(true, vec3<u32>(17707u, 18813u, 4294967295u))), Struct_2(false, vec3<bool>(false, false, false), Struct_1(false, vec3<u32>(0u, 30039u, 25951u))));

var<private> global4: array<bool, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -730f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-arg_0.d.a))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(518f + arg_1), _wgslsmith_f_op_f32(-arg_1))))), arg_1);
    global1 = u_input.b.x;
    let var_1 = _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(-(vec3<i32>(arg_0.e.x, u_input.b.x, 2147483647i) | vec3<i32>(u_input.b.x, 0i, arg_0.d.c.x)), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.e.x, u_input.b.x, 1i), vec3<i32>(-2147483647i, arg_0.e.x, u_input.b.x)))), arg_0.d.c.x);
    global2 = array<Struct_3, 18>();
    global4 = array<bool, 31>();
    return -2147483647i;
}

fn func_2(arg_0: vec2<i32>) -> StorageBuffer {
    global1 = ~u_input.b.x;
    global1 = -arg_0.x;
    global2 = array<Struct_3, 18>();
    var var_0 = !vec2<bool>(!global4[_wgslsmith_index_u32(u_input.c, 31u)], (~u_input.c | 6592u) <= firstLeadingBit(0u << (u_input.c % 32u)));
    let var_1 = !vec3<bool>(true, var_0.x, true);
    return StorageBuffer(arg_0, -abs(-(vec3<i32>(1i, arg_0.x, u_input.b.x) >> (vec3<u32>(4294967295u, u_input.a, 0u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-314f + _wgslsmith_f_op_f32(step(851f, -505f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-914f + -518f) + -1054f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1070f, -486f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), vec3<i32>(-3145i, func_1(Struct_4(vec3<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 31u)], global4[_wgslsmith_index_u32(1u, 31u)]), global3[_wgslsmith_index_u32(1u, 19u)], vec2<f32>(1039f, -318f), global2[_wgslsmith_index_u32(32472u, 18u)], vec4<i32>(0i, 26039i, -2147483647i, -17977i)), -933f), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(0i, -2147483647i)))), abs(_wgslsmith_div_i32(u_input.b.x, u_input.b.x << (u_input.c % 32u)))));
}

