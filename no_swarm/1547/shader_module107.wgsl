struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<f32>, 15>;

var<private> global2: array<vec4<u32>, 3>;

var<private> global3: Struct_3;

var<private> global4: i32 = 54941i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = vec2<i32>(i32(-1i) * -6080i, global3.b.x);
    global4 = abs(var_0.x & -2147483647i);
    let var_1 = Struct_4(Struct_3(global3.c, global3.b, Struct_2(global3.a.b.b, Struct_1(min(4294967295u, global0.x), false))), !(!global3.c.a), _wgslsmith_f_op_vec2_f32(round(global1[_wgslsmith_index_u32(global0.x, 15u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, 612f, -322f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2811f, arg_0, -382f))) * vec3<f32>(arg_0, 1388f, _wgslsmith_f_op_f32(151f * 1000f)))));
    global0 = vec4<u32>(~(~firstTrailingBit(4294967295u)), min(min(1u, u_input.c.x), ~(~(~58850u))), global3.c.b.a, ~(~23080u));
    var var_2 = _wgslsmith_div_vec2_i32(abs(min(var_1.a.b.yw, global3.b.ww)) & global3.b.zy, select(firstLeadingBit(-abs(vec2<i32>(2147483647i, 36243i))), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, -2147483647i & var_1.a.b.x), vec2<i32>(abs(21558i), 10718i)), var_1.b));
    return abs(~min(u_input.b | global3.a.b.a, ~countOneBits(global3.a.b.a)));
}

fn func_2() -> vec4<bool> {
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(-30849i, firstLeadingBit(-1i), -(u_input.d << (global3.c.b.a % 32u)));
    var var_1 = Struct_1(~_wgslsmith_mod_u32(~func_3(1312f), _wgslsmith_dot_vec4_u32(vec4<u32>(61616u, 4294967295u, 99695u, 0u), vec4<u32>(0u, global0.x, 4294967295u, u_input.b))), false);
    global0 = ~(~vec4<u32>(global3.a.b.a | 22456u, countOneBits(abs(global0.x)), 56335u, global0.x));
    var var_2 = -1000f;
    let var_3 = vec3<bool>(any(select(!select(vec2<bool>(true, global3.c.b.b), vec2<bool>(false, false), global3.c.b.b), select(vec2<bool>(true, var_1.b), !vec2<bool>(false, var_1.b), select(vec2<bool>(global3.c.a, var_1.b), vec2<bool>(var_1.b, true), false)), !(!vec2<bool>(global3.a.a, global3.c.a)))), !var_1.b, !(!(any(vec4<bool>(var_1.b, true, global3.c.a, true)) & all(vec4<bool>(true, false, false, false)))));
    return select(vec4<bool>(!all(select(vec4<bool>(var_1.b, global3.c.a, var_3.x, global3.c.a), vec4<bool>(var_1.b, true, var_1.b, true), var_1.b)), false, true, var_3.x), select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(global3.c.a, global3.c.a, false, global3.c.a), vec4<bool>(true, true, true, true), vec4<bool>(global3.a.b.b, var_3.x, var_3.x, false))), true), !var_1.b);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> f32 {
    let var_0 = !func_2();
    global0 = ~vec4<u32>(~(~global0.x), global0.x, ((4294967295u << (u_input.a.x % 32u)) | ~global0.x) & ~(~u_input.c.x), 0u);
    var var_1 = Struct_3(global3.c, global3.b, global3.c);
    return -1766f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 3>();
    var var_0 = vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -773f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~15718u <= _wgslsmith_sub_u32(global3.c.b.a, global3.a.b.a), vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3002f + -801f) + _wgslsmith_f_op_f32(select(-642f, _wgslsmith_f_op_f32(floor(-413f)), true)))));
    var var_1 = Struct_4(Struct_3(global3.a, abs(global3.b), global3.a), global3.a.a, _wgslsmith_f_op_vec2_f32(min(global1[_wgslsmith_index_u32(global0.x, 15u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 15u)])) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, -1174f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-241f, var_0.x, var_0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -819f, 1426f)) * vec3<f32>(var_0.x, var_0.x, var_0.x)))));
    var var_2 = all(!(!select(vec3<bool>(true, true, true), vec3<bool>(global3.a.b.b, false, true), vec3<bool>(var_1.a.a.b.b, global3.a.b.b, global3.c.b.b))));
    let var_3 = var_1.c.x;
    global2 = array<vec4<u32>, 3>();
    var var_4 = select(select(!select(select(vec4<bool>(true, false, var_1.b, true), vec4<bool>(false, global3.c.b.b, false, global3.a.b.b), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(var_1.b, var_1.a.c.b.b, true, global3.c.b.b), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, var_1.a.a.a, false)), !select(!vec4<bool>(var_1.b, true, false, true), vec4<bool>(false, global3.c.a, var_1.a.a.a, true), select(vec4<bool>(false, global3.c.b.b, false, true), vec4<bool>(true, true, false, global3.c.a), vec4<bool>(global3.a.a, false, var_1.a.a.a, false))), false), !(!(!vec4<bool>(global3.a.a, false, global3.a.b.b, var_1.a.a.b.b))), select(vec4<bool>(all(select(vec4<bool>(false, false, false, var_1.b), vec4<bool>(global3.a.b.b, true, var_1.a.c.a, true), false)), var_1.b, all(vec4<bool>(global3.c.a, var_1.b, false, false)), true), vec4<bool>(global3.c.a, var_1.a.a.b.b, all(vec4<bool>(var_1.b, global3.c.a, global3.a.a, true)), var_1.b), all(!vec4<bool>(false, var_1.a.a.a, global3.c.a, true))));
    var var_5 = Struct_1(reverseBits(_wgslsmith_sub_u32(abs(global0.x), 63968u & global3.c.b.a)), true);
    let var_6 = false == (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(!var_1.a.c.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.d.x, var_0.x, var_0.x) + vec4<f32>(var_1.c.x, var_1.d.x, 309f, 1516f))))) > _wgslsmith_f_op_f32(-var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.d >> (_wgslsmith_div_u32(min(var_5.a, var_1.a.a.b.a), 38788u | global3.a.b.a) % 32u), firstLeadingBit(max(2147483647i, global3.b.x)) | 2147483647i), -519f);
}

