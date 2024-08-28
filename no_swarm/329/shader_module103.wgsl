struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 22>;

var<private> global2: f32;

var<private> global3: array<Struct_2, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 22u)])));
    let var_1 = ~arg_3;
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-217f, 164f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(397f, global0.b.a) * global1[_wgslsmith_index_u32(1u, 22u)]))))));
    global3 = array<Struct_2, 12>();
    global1 = array<f32, 22>();
    return 1000f;
}

fn func_2() -> f32 {
    global2 = _wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(true, -(i32(-1i) * -18086i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f + global1[_wgslsmith_index_u32(11095u, 22u)]))), _wgslsmith_f_op_f32(f32(-1f) * -157f), 569f, _wgslsmith_f_op_f32(-global0.b.b))), Struct_3(global0.a, global0.b, global0.c, true), ~u_input.d));
    global1 = array<f32, 22>();
    let var_0 = abs(vec4<u32>(u_input.a, abs(1u), 12788u, ~u_input.a));
    let var_1 = Struct_3(global0.a, global3[_wgslsmith_index_u32(var_0.x, 12u)], Struct_1(!all(!global0.a), global0.c.b), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(766f * var_1.b.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(239f * global0.b.b))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(4294967295u, 4294967295u), 1u), 22u)], _wgslsmith_f_op_f32(f32(-1f) * -655f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 22u)], global0.b.b, -1190f, global1[_wgslsmith_index_u32(var_0.x, 22u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-440f, -277f, -547f, -154f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(18981u, 22u)], -879f, global0.b.a, var_1.b.b) * vec4<f32>(global1[_wgslsmith_index_u32(21922u, 22u)], -234f, global1[_wgslsmith_index_u32(4294967295u, 22u)], var_1.b.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a, global0.b.b, global1[_wgslsmith_index_u32(1u, 22u)], 1591f)), !var_1.d))), var_1.a.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(882f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 22u)]))), var_2.x)) - _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(ceil(var_2.x)), var_1.c.a)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<bool>) -> i32 {
    global0 = Struct_3(select(vec2<bool>(true, true), global0.a, -global0.c.b != -global0.c.b), Struct_2(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(-610f, _wgslsmith_f_op_f32(-250f * global0.b.b))), Struct_1(true, global0.c.b), !arg_2.x & (all(global0.a) | arg_2.x));
    global3 = array<Struct_2, 12>();
    let var_0 = u_input.d ^ _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.d, u_input.d, 1u), _wgslsmith_div_u32(1992u, max(u_input.d, 13356u)) | select(~u_input.a, countOneBits(1u), false));
    global3 = array<Struct_2, 12>();
    return _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.yyw, vec3<i32>(-49248i, 1i, 0i)), abs(select(arg_0, vec3<i32>(_wgslsmith_add_i32(11297i, global0.c.b), abs(u_input.c), arg_0.x), arg_2.wwx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(select(func_1(u_input.b.zyy, -493f, vec4<bool>(false, false, false, global0.c.a)), ~2147483647i, global0.d), ~global0.c.b & firstTrailingBit(global0.c.b)), vec2<i32>(~u_input.c & u_input.b.x, firstLeadingBit(global0.c.b))), func_1(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.c.b, u_input.b.x, u_input.b.x), vec3<i32>(1i, -2147483647i, u_input.c)), ~u_input.b.wyx), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 22u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.b), _wgslsmith_f_op_f32(global0.b.a - global1[_wgslsmith_index_u32(u_input.d, 22u)]))), vec4<bool>(global0.a.x == (global0.d || global0.c.a), !global0.d, !all(vec3<bool>(global0.d, false, global0.c.a)), global0.a.x)), abs(func_1(vec3<i32>(firstTrailingBit(global0.c.b), 1i, abs(global0.c.b)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 22u)]), vec4<bool>(false, true, global0.d, true))), u_input.c);
    let var_1 = global0.b.b;
    global2 = global1[_wgslsmith_index_u32(~u_input.d, 22u)];
    let var_2 = Struct_1(!all(!select(global0.a, vec2<bool>(global0.d, global0.d), global0.a.x)), 1i);
    global3 = array<Struct_2, 12>();
    global1 = array<f32, 22>();
    let var_3 = vec2<i32>(i32(-1i) * -2147483647i, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a, ~select(~u_input.a, u_input.a, true), _wgslsmith_clamp_u32(firstLeadingBit(~u_input.d), u_input.d, firstLeadingBit(~u_input.d)), u_input.a));
}

