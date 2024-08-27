struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

var<private> global1: array<Struct_1, 29>;

var<private> global2: vec2<f32> = vec2<f32>(-887f, -1784f);

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(58473u, 0u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> vec3<bool> {
    global3 = arg_3;
    var var_0 = _wgslsmith_f_op_f32(max(-854f, arg_1.x));
    let var_1 = Struct_1(!select(global3.a, arg_3.a, global3.a), min(~global3.b, vec2<u32>(0u, ~abs(58149u))));
    return !(!vec3<bool>(_wgslsmith_mod_u32(arg_0, 4294967295u) >= 4294967295u, any(select(vec3<bool>(arg_3.a.x, false, true), global0[_wgslsmith_index_u32(global3.b.x, 8u)], arg_3.a.yzw)), var_1.a.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !(!func_3(64962u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 442f)), select(arg_2.a.yx, select(arg_2.a.zy, arg_0.a.xw, vec2<bool>(true, false)), all(vec2<bool>(false, false))), Struct_1(global3.a, countOneBits(global3.b))));
    global1 = array<Struct_1, 29>();
    var var_1 = arg_0;
    var var_2 = false;
    let var_3 = 776f;
    return Struct_1(vec4<bool>(global3.a.x, var_1.a.x, var_0.x, !(var_0.x || true)), select(~(~(arg_2.b | global3.b)), ~select(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.b.x, 4294967295u), vec2<u32>(global3.b.x, arg_1.b.x)), abs(arg_0.b), !var_0.zz), select(vec2<bool>(var_0.x, true), var_1.a.xw, arg_0.a.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> vec3<bool> {
    global2 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(981f - 1f));
    let var_0 = vec2<bool>(false, false);
    global3 = func_2(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_1(select(!(!global3.a), global3.a, select(global3.a, vec4<bool>(var_0.x, true, global3.a.x, global3.a.x), !global3.a)), ~u_input.a));
    let var_1 = global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(~7712u, global3.b.x) << (u_input.a.x % 32u)), 8u)];
    global2 = vec2<f32>(_wgslsmith_f_op_f32(arg_1 + global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -207f))) + _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_0.x))));
    return vec3<bool>(true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(true, false, any(!func_1(vec4<f32>(-730f, 1308f, -373f, global2.x), global2.x)), global3.a.x), u_input.a);
    let var_1 = var_0;
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.e.zz | u_input.e.zx), vec4<f32>(301f, _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global2.x)))))), vec4<u32>(_wgslsmith_add_u32(var_1.b.x, var_1.b.x ^ 6139u), var_1.b.x >> (reverseBits(u_input.a.x) % 32u), 24840u, u_input.b.x) >> (_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(65805u, global3.b.x, 1u, 4294967295u) << (vec4<u32>(global3.b.x, u_input.a.x, 67547u, 33840u) % vec4<u32>(32u))), vec4<u32>(u_input.b.x ^ 1u, var_0.b.x, ~u_input.b.x, global3.b.x)) % vec4<u32>(32u)));
}

