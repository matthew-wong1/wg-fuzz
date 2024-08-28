struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: vec2<u32>;

var<private> global2: vec4<f32> = vec4<f32>(835f, 465f, 1017f, -578f);

var<private> global3: f32;

var<private> global4: bool = true;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> f32 {
    var var_0 = global1.x;
    global0 = array<u32, 24>();
    let var_1 = 1i & (-34162i & u_input.a);
    var_0 = ~_wgslsmith_mult_u32(global1.x, ~44052u);
    var var_2 = ~global0[_wgslsmith_index_u32(~(4994u << (u_input.c % 32u)), 24u)];
    return -207f;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> vec3<i32> {
    global3 = -1476f;
    global2 = vec4<f32>(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1170f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x + _wgslsmith_div_f32(arg_2.a.x, global2.x)))))), arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(731f))) - 883f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    var var_0 = ~vec4<i32>(54206i, select(arg_0, ~(~0i), false), u_input.a, 1i);
    var var_1 = !(!(!select(!vec4<bool>(false, arg_1.b.x, arg_1.a.x, false), !vec4<bool>(false, true, arg_1.b.x, true), true)));
    let var_2 = u_input.b;
    return ~var_0.zwy;
}

fn func_3() -> i32 {
    let var_0 = true;
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-916f, global2.x, 411f, _wgslsmith_f_op_f32(sign(global2.x)))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global2.x)))), _wgslsmith_f_op_f32(-global2.x)))));
    let var_1 = vec2<u32>(52067u, global1.x);
    let var_2 = vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, 412f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-267f + global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1456f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1209f)) - var_2.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.x)) - _wgslsmith_f_op_f32(1524f - 1107f)), var_2.x)), 288f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-973f, _wgslsmith_f_op_f32(f32(-1f) * -761f), _wgslsmith_div_f32(global2.x, 418f), _wgslsmith_f_op_f32(-global2.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1628f * var_2.x), -1162f, _wgslsmith_div_f32(var_2.x, 1374f), _wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, var_2.x, 1564f, -512f))) * vec4<f32>(566f, 1098f, 302f, global2.x))))));
    return -countOneBits(13341i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(-func_1(-36363i, Struct_3(vec3<bool>(true, true, true), vec2<bool>(true, true)), Struct_1(vec4<f32>(-243f, global2.x, global2.x, global2.x), vec2<f32>(global2.x, global2.x), global2.x, vec4<f32>(global2.x, -103f, 465f, 1778f), vec2<u32>(21069u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 24u)], 24u)]))))) & vec3<i32>(~u_input.a, countOneBits(2147483647i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(-2147483647i, u_input.a)) | (_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 7709i, -2147483647i, -1i), vec4<i32>(24003i, u_input.a, u_input.b, 92i)) | u_input.b));
    let var_1 = global2.x;
    var_0 = vec3<i32>(-(i32(-1i) * -1i), firstTrailingBit(-u_input.a) << (abs(~firstTrailingBit(global1.x)) % 32u), i32(-1i) * -_wgslsmith_sub_i32(2147483647i, func_3()));
    let var_2 = vec3<i32>(~(~_wgslsmith_div_i32(~var_0.x, -27922i)), ~(-1i), -u_input.b);
    global4 = true;
    global0 = array<u32, 24>();
    global1 = _wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(global1.x, 4294967295u)), vec2<u32>(global1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)]) << (vec2<u32>(global1.x, u_input.c) % vec2<u32>(32u)), vec2<u32>(u_input.c, 84673u)), vec2<u32>(_wgslsmith_clamp_u32(1u, global1.x, u_input.c), ~19232u)), vec2<u32>(global1.x, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(19184u, global0[_wgslsmith_index_u32(3796u, 24u)]), vec2<u32>(4294967295u, 32270u)))));
    var var_3 = select(-1i, -1i, true);
    global0 = array<u32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, 800f);
}

