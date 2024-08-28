struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(29786u, 0u), vec2<u32>(1u, 19442u), vec2<u32>(4294967295u, 4422u), vec2<u32>(620u, 1u), vec2<u32>(51756u, 4294967295u), vec2<u32>(18972u, 61602u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 76624u), vec2<u32>(70127u, 19066u), vec2<u32>(1u, 11708u), vec2<u32>(0u, 24990u), vec2<u32>(44965u, 11595u), vec2<u32>(1u, 0u), vec2<u32>(62699u, 63950u), vec2<u32>(9211u, 63616u), vec2<u32>(1u, 67252u), vec2<u32>(1u, 3179u), vec2<u32>(52871u, 101273u), vec2<u32>(1u, 28703u), vec2<u32>(27207u, 23356u), vec2<u32>(0u, 0u), vec2<u32>(4040u, 41839u), vec2<u32>(32907u, 80376u), vec2<u32>(6309u, 38815u), vec2<u32>(4294967295u, 0u), vec2<u32>(15682u, 34453u), vec2<u32>(72337u, 50145u), vec2<u32>(5357u, 65579u), vec2<u32>(4294967295u, 29278u));

var<private> global2: Struct_4 = Struct_4(403f, Struct_2(Struct_1(2703f, 26120u)));

var<private> global3: vec3<u32> = vec3<u32>(43582u, 0u, 9009u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = ~59750u;
    global2 = Struct_4(-884f, Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2.a), ~firstTrailingBit(4551u))));
    var_0 = 0u;
    global2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1155f), global2.b);
    var_0 = 4294967295u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.a)) + _wgslsmith_f_op_f32(f32(-1f) * -971f))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: bool) -> f32 {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(2279u | global2.b.a.b, 22u)]);
    var var_1 = !arg_3;
    var var_2 = ~global3.zx;
    global0 = array<bool, 22>();
    let var_3 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(global2.b.a.a + _wgslsmith_f_op_f32(ceil(193f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -591f)))), arg_1, arg_0), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), 355f, _wgslsmith_div_f32(-876f, -754f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(global2.b.a.a, arg_0), 294f, _wgslsmith_f_op_f32(-global2.a)))))), Struct_4(-875f, Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2.a), 0u))));
    return arg_1;
}

fn func_1(arg_0: Struct_2) -> Struct_5 {
    var var_0 = 39922u;
    var var_1 = vec2<f32>(846f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.a.a, all(vec4<bool>(global0[_wgslsmith_index_u32(global2.b.a.b, 22u)], true, false, false)))) + _wgslsmith_f_op_f32(max(arg_0.a.a, _wgslsmith_f_op_f32(ceil(-151f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(633f, arg_0.a.a, 27296i, global0[_wgslsmith_index_u32(4294967295u, 22u)])) + _wgslsmith_f_op_f32(select(1469f, 1892f, false))) + -350f)));
    var var_2 = arg_0;
    global3 = ~select(reverseBits(vec3<u32>(u_input.b, _wgslsmith_mod_u32(global2.b.a.b, global2.b.a.b), ~63026u)), countOneBits(abs(u_input.a.wxy) << (vec3<u32>(95259u, 48854u, 37189u) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(min((global3.x & var_2.a.b) >> (~1u % 32u), var_2.a.b), 22u)]);
    var_2 = arg_0;
    return Struct_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1104f, _wgslsmith_f_op_f32(step(-1000f, var_1.x)), 190f, 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-284f, var_2.a.a, -1430f, 513f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.a.a, 2719f, -1000f, 212f)))))), vec3<f32>(-1507f, var_1.x, -725f), Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(sign(arg_0.a.a)))), arg_0.a.a), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var var_1 = func_1(global2.b);
    let var_2 = func_1(Struct_2(var_1.c.b.a)).c.b.a.b;
    var var_3 = Struct_3(true);
    let var_4 = select(select(vec3<bool>(select(false, global0[_wgslsmith_index_u32(global2.b.a.b, 22u)], true) | any(vec2<bool>(var_3.a, var_3.a)), true, true), !(!vec3<bool>(false, var_3.a, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -568f) * -3164f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a)) + global2.b.a.a)), !select(!(!vec3<bool>(false, true, var_3.a)), select(!vec3<bool>(var_3.a, global0[_wgslsmith_index_u32(95959u, 22u)], true), select(vec3<bool>(false, true, var_3.a), vec3<bool>(var_3.a, true, var_3.a), vec3<bool>(true, true, true)), select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 22u)], var_3.a), vec3<bool>(true, var_3.a, true), vec3<bool>(global0[_wgslsmith_index_u32(var_1.c.b.a.b, 22u)], false, global0[_wgslsmith_index_u32(global2.b.a.b, 22u)]))), false), !(!(!vec3<bool>(false, false, var_3.a))));
    var var_5 = Struct_3(true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(1i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global2.b.a.a))), -128f)), _wgslsmith_sub_u32(4294967295u, var_1.c.b.a.b), ~abs(~global1[_wgslsmith_index_u32(var_2, 29u)]), _wgslsmith_f_op_vec3_f32(-var_1.b));
}

