struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 21> = array<u32, 21>(9613u, 55512u, 12293u, 0u, 62754u, 22680u, 0u, 4294967295u, 20609u, 1u, 4294967295u, 43619u, 0u, 41091u, 29305u, 68223u, 4294967295u, 4294967295u, 13343u, 4294967295u, 1u);

var<private> global2: array<u32, 32> = array<u32, 32>(0u, 1u, 0u, 56064u, 4294967295u, 1u, 211u, 17335u, 23423u, 35626u, 1u, 4294967295u, 0u, 4294967295u, 1u, 62843u, 31464u, 4294967295u, 4294967295u, 40917u, 4294967295u, 13497u, 4294967295u, 1387u, 1u, 118851u, 54676u, 4294967295u, 42136u, 123679u, 0u, 4294967295u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> Struct_2 {
    return Struct_2(vec2<bool>(true, true));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<f32>) -> bool {
    var var_0 = vec2<f32>(-892f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -753f)))));
    let var_1 = Struct_3(func_1().a, func_1().a);
    let var_2 = var_1.b.x;
    let var_3 = !select(select(!vec4<bool>(var_2, var_1.b.x, true, var_1.b.x), !vec4<bool>(false, var_2, var_2, true), !(true != var_2)), vec4<bool>(true, true, any(!vec3<bool>(true, var_2, true)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), var_1.a.x))), true);
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -476f);
    return true;
}

fn func_2(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = true && (all(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))) || (true || select(true, true, true)));
    let var_1 = select(vec4<bool>(any(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), true)), !func_3(~22098u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 32u)], 21u)] & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 32u)], 32u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(605f, 563f, -1034f, -281f))), true, all(vec2<bool>(true, false)) & true), !select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, true, true)), true), !((u_input.b.x | ~1u) <= ~u_input.b.x));
    let var_2 = 37626u;
    global1 = array<u32, 21>();
    var var_3 = func_1();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -247f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -768f)))) + -331f);
    global2 = array<u32, 32>();
    let var_1 = func_1();
    var var_2 = select(vec4<bool>(true, true, true, func_1().a.x), vec4<bool>(true, var_1.a.x, var_1.a.x, false | var_1.a.x), vec4<bool>(any(func_2(vec2<i32>(-17201i, -1i))), all(select(!vec4<bool>(true, true, var_1.a.x, var_1.a.x), !vec4<bool>(false, false, true, var_1.a.x), !vec4<bool>(false, true, var_1.a.x, var_1.a.x))), true, var_1.a.x));
    var_2 = !select(vec4<bool>(var_2.x, any(var_2.yxz) && var_2.x, any(var_1.a), !(!var_1.a.x)), select(!vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_2.x), !vec4<bool>(true, var_1.a.x, true, true), vec4<bool>(func_1().a.x, false, all(var_2.zw), var_2.x)), select(!(!vec4<bool>(false, var_2.x, var_1.a.x, false)), vec4<bool>(true, true, all(vec4<bool>(false, false, true, var_1.a.x)), !var_1.a.x), all(func_1().a)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(~u_input.a.x, 0i, -abs(u_input.a.x))), global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(16646u, 3823u)), 32u)], 21u)] ^ 19819u, u_input.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1293f))) * vec2<f32>(142f, _wgslsmith_div_f32(var_0, var_0))))));
}

