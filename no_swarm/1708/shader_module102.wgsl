struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_3,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<bool>, 18>;

var<private> global2: Struct_3;

var<private> global3: Struct_4 = Struct_4(19388u, vec4<f32>(198f, 565f, 1683f, -185f), Struct_3(vec2<u32>(67658u, 0u), vec2<bool>(false, true)), vec4<u32>(58440u, 17472u, 80098u, 0u), Struct_2(vec3<bool>(false, true, false)));

var<private> global4: array<Struct_1, 9>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<f32> {
    global3 = Struct_4(19580u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_3.x), 120f, _wgslsmith_f_op_f32(global3.b.x * 642f)))), global3.c, _wgslsmith_add_vec4_u32(~global3.d, select(_wgslsmith_add_vec4_u32(~vec4<u32>(global2.a.x, 71823u, global2.a.x, global3.d.x), _wgslsmith_div_vec4_u32(global3.d, vec4<u32>(0u, u_input.c, global2.a.x, u_input.a.x))), _wgslsmith_div_vec4_u32(global3.d, ~vec4<u32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)), true & global3.e.a.x)), Struct_2(select(vec3<bool>(true || arg_2.a.x, !global2.b.x, !arg_1), global3.e.a, select(vec3<bool>(arg_1, arg_1, false), global3.e.a, global3.e.a))));
    let var_0 = _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(global3.c.a.x, 1u));
    global4 = array<Struct_1, 9>();
    global0 = false;
    global3 = Struct_4(0u, _wgslsmith_f_op_vec4_f32(-global3.b), global3.c, select(~vec4<u32>(~0u, firstTrailingBit(51364u), ~u_input.a.x, firstLeadingBit(4294967295u)), abs(vec4<u32>(4294967295u, var_0, global3.a & 1u, _wgslsmith_mult_u32(var_0, 124832u))), !all(global3.e.a)), Struct_2(!select(arg_2.a, select(vec3<bool>(true, false, true), vec3<bool>(false, global3.c.b.x, arg_1), vec3<bool>(false, global3.e.a.x, true)), true)));
    return vec4<f32>(-710f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1588f + arg_0)), arg_0)), arg_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global3.b.x, arg_0)), -259f, arg_3.x > -519f))), _wgslsmith_f_op_f32(max(1285f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-929f, arg_0)), _wgslsmith_f_op_f32(-arg_0))))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = global3.c;
    let var_1 = Struct_4(var_0.a.x, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-412f - 135f)), true, global3.e, _wgslsmith_f_op_vec2_f32(-global3.b.zy))), global3.c, vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(~global3.d.zzw), ~(vec3<u32>(var_0.a.x, var_0.a.x, 0u) >> (u_input.a.yxy % vec3<u32>(32u)))), var_0.a.x, global2.a.x | ~4294967295u, _wgslsmith_mult_u32(~38217u, global3.d.x)), Struct_2(vec3<bool>(15210u == _wgslsmith_mod_u32(u_input.c, global2.a.x), true, all(select(vec4<bool>(arg_2, arg_1, global2.b.x, true), vec4<bool>(arg_1, arg_1, arg_1, global3.c.b.x), vec4<bool>(var_0.b.x, false, true, true))))));
    let var_2 = Struct_4(4294967295u, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x - global3.b.x) + global3.b.x), -1460f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.x))), global3.b.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_vec4_f32(func_3(arg_0, false, var_1.e, var_1.b.zz)).x, _wgslsmith_f_op_f32(ceil(-1970f)), 2328f))))), var_1.c, global3.d, var_1.e);
    var var_3 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1156f - global3.b.x))) > global3.b.x) && global3.e.a.x;
    let var_4 = 0i;
    return _wgslsmith_f_op_f32(f32(-1f) * -472f);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = vec2<u32>(4294967295u, abs(_wgslsmith_add_u32(global2.a.x, _wgslsmith_mult_u32(10638u, global3.d.x)))) ^ u_input.a.xz;
    let var_1 = _wgslsmith_dot_vec2_u32(abs(u_input.a.wz), vec2<u32>(select(global2.a.x >> (_wgslsmith_mod_u32(66604u, global2.a.x) % 32u), 4294967295u, _wgslsmith_f_op_f32(func_2(arg_0, false, false)) != _wgslsmith_f_op_f32(func_2(894f, global2.b.x, global3.c.b.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(min(92491u, 4294967295u), _wgslsmith_add_u32(var_0.x, global2.a.x), global3.a), countOneBits(vec3<u32>(u_input.a.x, global3.d.x, 1u)) >> ((vec3<u32>(16078u, 73334u, global3.d.x) << (u_input.a.xyx % vec3<u32>(32u))) % vec3<u32>(32u)))));
    var var_2 = -1760f;
    let var_3 = _wgslsmith_f_op_f32(arg_0 * -1000f);
    return global3.c;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = Struct_4(56270u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.b.x, -255f, _wgslsmith_f_op_f32(f32(-1f) * -504f), global3.b.x)))), func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1030f)), _wgslsmith_f_op_f32(func_2(1454f, global2.b.x, global2.b.x)))), 372f)), select(vec4<bool>(true, false, global2.b.x, false), vec4<bool>(global2.b.x, u_input.b < -2147483647i, true, !global3.e.a.x), true)), u_input.a, global3.e);
    global1 = array<vec2<bool>, 18>();
    global3 = Struct_4(74986u, vec4<f32>(116f, _wgslsmith_f_op_f32(f32(-1f) * -705f), var_0.b.x, 1f), func_4(_wgslsmith_f_op_f32(f32(-1f) * -418f), vec4<bool>(false, var_0.c.b.x, global3.e.a.x, var_0.c.b.x)), vec4<u32>(~15248u, 4294967295u, 0u, 1u), Struct_2(!var_0.e.a));
    var var_1 = func_4(-586f, select(select(vec4<bool>(var_0.e.a.x, all(global3.e.a), global2.b.x, global2.b.x), select(!vec4<bool>(global2.b.x, global3.c.b.x, false, var_0.c.b.x), !vec4<bool>(global2.b.x, var_0.e.a.x, global3.c.b.x, global2.b.x), var_0.c.b.x), !any(global1[_wgslsmith_index_u32(global3.c.a.x, 18u)])), vec4<bool>(false != global3.c.b.x, (global3.d.x > 1u) == false, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-915f - var_0.b.x)) >= _wgslsmith_f_op_f32(exp2(var_0.b.x)))).a.x;
    var var_2 = global3.e;
    return StorageBuffer(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(-200f, global3.e.a.x, global2.b.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -177f)) + -1314f), _wgslsmith_mult_i32(u_input.b, u_input.b), ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 9>();
    let var_0 = min(_wgslsmith_mult_i32(~1i, u_input.b), u_input.b);
    global1 = array<vec2<bool>, 18>();
    var var_1 = global3.e;
    var var_2 = 1i;
    let var_3 = 1u;
    let x = u_input.a;
    s_output = func_1(u_input.a.x);
}

