struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(0u, 7196u), 0i, vec4<f32>(396f, 569f, 1818f, -1077f));

var<private> global1: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: Struct_4 = Struct_4(9093u, Struct_1(vec3<f32>(146f, 656f, -103f), vec2<u32>(39292u, 0u), 4294967295u));

var<private> global3: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: i32) -> vec4<f32> {
    var var_0 = Struct_2(24468u, arg_0);
    var_0 = Struct_2(min(~_wgslsmith_dot_vec4_u32(u_input.a >> (u_input.a % vec4<u32>(32u)), reverseBits(vec4<u32>(2148u, 1u, 1u, var_0.a))), global0.a.x >> (_wgslsmith_mult_u32(u_input.c, ~4294967295u) % 32u)), !select(true, select(var_0.b, true, !var_0.b), true));
    var var_1 = Struct_4(~4294967295u, global2.b);
    var var_2 = _wgslsmith_f_op_f32(select(var_1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.c.x, _wgslsmith_div_f32(var_1.b.a.x, 288f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-300f)), 543f)))), var_0.b));
    var var_3 = var_1.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-299f, global0.c.x)))), 121f, 675f, global2.b.a.x) + global0.c));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    global1 = array<vec2<bool>, 32>();
    global0 = Struct_3(countOneBits(global0.a), ~(~(-34560i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1365f, global2.b.a.x, global0.c.x, -1844f), global0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-198f, global0.c.x, 498f, 1195f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1513f), _wgslsmith_f_op_f32(-global2.b.a.x), global0.c.x) + _wgslsmith_f_op_vec4_f32(global0.c * _wgslsmith_f_op_vec4_f32(select(global0.c, global0.c, vec4<bool>(arg_0.b, arg_0.b, false, false)))))));
    var var_0 = _wgslsmith_dot_vec3_u32(~reverseBits(~vec3<u32>(global0.a.x, global2.b.c, global2.a)), vec3<u32>(firstLeadingBit(65446u), ~arg_0.a, 82026u));
    global2 = Struct_4(~22257u, global2.b);
    var var_1 = -abs(~(-63842i));
    return Struct_3(global0.a, 46848i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(arg_0.b, u_input.a.wwx, Struct_3(global0.a | vec2<u32>(global0.a.x, 4294967295u), global0.b, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c.x, -1021f, global2.b.a.x, -596f)))), -2147483647i)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec4<f32>) -> u32 {
    global0 = func_2(Struct_2(_wgslsmith_sub_u32(28056u, ~firstLeadingBit(global2.b.b.x)), true));
    var var_0 = 1u;
    var_0 = _wgslsmith_div_u32(54301u, func_2(Struct_2(firstTrailingBit(~4294967295u), !any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))).a.x);
    var var_1 = u_input.d.x;
    global0 = func_2(Struct_2(40537u, true));
    return arg_1.b.c;
}

fn func_4(arg_0: u32) -> u32 {
    var var_0 = Struct_4(~max(~global0.a.x >> (~4294967295u % 32u), min(global2.a, ~global0.a.x)), Struct_1(global0.c.zzz, select(global2.b.b, global0.a, !global1[_wgslsmith_index_u32(arg_0, 32u)]) >> (vec2<u32>(3070u, ~arg_0) % vec2<u32>(32u)), 26066u));
    var var_1 = Struct_4(22565u, Struct_1(vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -912f)), _wgslsmith_f_op_f32(764f - var_0.b.a.x)), min(firstLeadingBit(select(vec2<u32>(u_input.e, global0.a.x), var_0.b.b, vec2<bool>(true, true))), select(u_input.a.wx, ~u_input.a.yy, true)), u_input.a.x & ~(~0u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(global2.b.a.yy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.b.a.xx))));
    var_2 = _wgslsmith_f_op_vec2_f32(-var_0.b.a.yx);
    global1 = array<vec2<bool>, 32>();
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.x;
    let var_1 = -283f;
    global3 = 22658u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    global3 = ~func_4(~(~u_input.c) | func_1(vec3<bool>(false, true, false), Struct_4(19082u, Struct_1(global2.b.a, vec2<u32>(30606u, 2235u), u_input.c)), _wgslsmith_f_op_vec4_f32(abs(global0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(func_1(vec3<bool>(true, true, true), Struct_4(4294967295u, Struct_1(global2.b.a, vec2<u32>(global0.a.x, u_input.e), 2360u)), _wgslsmith_f_op_vec4_f32(global0.c + global0.c)), _wgslsmith_mult_u32(u_input.b | global2.b.b.x, 4887u)), 1u, _wgslsmith_sub_u32(~select(global2.b.b.x, u_input.a.x, true), _wgslsmith_mult_u32(global0.a.x, global2.b.c))), u_input.d.yyx, u_input.a.zyz);
}

