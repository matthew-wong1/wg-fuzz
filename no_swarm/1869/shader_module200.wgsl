struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: array<Struct_2, 29>;

var<private> global2: Struct_3;

var<private> global3: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.d.a.c * -631f), global2.b.a.b)) * global2.a), Struct_2(global2.b.a), Struct_1(max(~_wgslsmith_div_u32(global2.c.a, global2.d.a.a), min(1u, ~global2.d.a.a)), -329f, _wgslsmith_f_op_f32(global2.c.b * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.c.c)))), !global2.c.d, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.yz, u_input.a.yz), max(vec2<i32>(44035i, -2147483647i), u_input.a.zy)), firstLeadingBit(_wgslsmith_div_i32(u_input.a.x, 2147483647i)))), Struct_2(Struct_1(0u | global2.c.a, _wgslsmith_f_op_f32(ceil(global2.c.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-954f - global2.d.a.b), _wgslsmith_f_op_f32(min(-1147f, 1075f))), true, i32(-1i) * -1i)));
    let var_1 = vec2<bool>(global2.c.d, true || (any(vec4<bool>(true, false, var_0.b.a.d, var_0.d.a.d)) || true));
    var var_2 = Struct_3(var_0.a, var_0.b, global2.c, Struct_2(global2.c));
    global1 = array<Struct_2, 29>();
    let var_3 = var_0.d.a;
    return _wgslsmith_f_op_f32(max(-417f, var_3.b));
}

fn func_2(arg_0: f32) -> Struct_5 {
    let var_0 = countOneBits(max(_wgslsmith_mod_u32(1u, 4294967295u), 70989u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.c.c)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3())))));
    global3 = true;
    global3 = global2.d.a.d;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -1204f))) * global2.a), Struct_2(global2.b.a), global2.c, global1[_wgslsmith_index_u32(global2.b.a.a, 29u)]);
    return Struct_5(Struct_1(var_2.b.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-235f * var_2.b.a.c)), _wgslsmith_f_op_f32(-611f + _wgslsmith_div_f32(global2.c.b, _wgslsmith_f_op_f32(-global2.b.a.b))), any(!vec2<bool>(global2.d.a.d, var_2.c.d)), global2.c.e), 2147483647i, arg_0, global1[_wgslsmith_index_u32(4294967295u, 29u)], !(!(!vec4<bool>(false, true, false, var_2.b.a.d))));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = func_2(global2.a.x);
    global0 = array<i32, 29>();
    global1 = array<Struct_2, 29>();
    let var_1 = !global2.d.a.d;
    global1 = array<Struct_2, 29>();
    return StorageBuffer(~((abs(vec3<u32>(var_0.d.a.a, var_0.d.a.a, 73798u)) | vec3<u32>(11790u, 13306u, global2.d.a.a)) ^ vec3<u32>(_wgslsmith_div_u32(var_0.a.a, 7970u), var_0.d.a.a >> (var_0.d.a.a % 32u), global2.c.a)), -var_0.a.e, _wgslsmith_div_vec4_f32(vec4<f32>(-1544f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-592f))), _wgslsmith_div_f32(-516f, -888f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.c.b), _wgslsmith_f_op_f32(-348f + -1143f), var_1))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1735f), _wgslsmith_f_op_f32(-var_0.d.a.b), _wgslsmith_f_op_f32(select(565f, -263f, var_0.d.a.d)), var_0.a.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -378f;
    global3 = any(!(!(!vec4<bool>(global2.d.a.d, global2.b.a.d, false, global2.c.d))));
    global1 = array<Struct_2, 29>();
    var var_1 = 1u;
    var var_2 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(global2.c.a, 32377u) & global2.d.a.a, ~61978u), ~select(~_wgslsmith_mult_u32(global2.c.a, global2.c.a), ~0u, false));
    let x = u_input.a;
    s_output = func_1(-46981i);
}

