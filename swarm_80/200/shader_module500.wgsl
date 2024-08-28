struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

var<private> global1: array<i32, 7> = array<i32, 7>(1i, -1i, 0i, -7072i, 2147483647i, 19841i, -1748i);

var<private> global2: Struct_2;

var<private> global3: array<vec4<bool>, 5>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn func_3() -> f32 {
    let var_0 = select(vec3<bool>(!global2.b.x, !(!(u_input.b.x == u_input.b.x)), !(u_input.b.x <= u_input.b.x)), global2.b, select(select(global2.b, vec3<bool>(!global2.a.x, all(vec2<bool>(false, global2.b.x)), global2.b.x), vec3<bool>(false, true, global2.a.x)), global2.a.wwy, all(global2.a.zz)));
    let var_1 = Struct_2(select(select(vec4<bool>(all(global2.a), global2.c.x <= u_input.b.x, var_0.x || true, true), select(global2.a, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global2.c.x), 5u)], true), true), vec4<bool>(var_0.x, !(global2.b.x != false), false, !all(var_0)), true), !var_0, ~global2.c, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(138f, global2.d), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-732f, 1599f)), _wgslsmith_f_op_f32(f32(-1f) * -2072f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.d)) + _wgslsmith_f_op_f32(step(-378f, -689f)))))));
    var var_2 = Struct_3(var_1);
    var var_3 = Struct_1(true, global2.d);
    var var_4 = Struct_1(var_3.a || ((!var_3.a || (var_0.x == true)) | false), _wgslsmith_f_op_f32(-629f + _wgslsmith_f_op_f32(-var_1.d)));
    return 1192f;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    global1 = array<i32, 7>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.d)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.d))))));
    let var_1 = arg_0.wyw;
    let var_2 = _wgslsmith_mod_u32(max(select(_wgslsmith_add_u32(4294967295u, u_input.b.x), select(u_input.b.x, 10538u, false), true), u_input.b.x) & u_input.b.x, 71139u);
    global3 = array<vec4<bool>, 5>();
    return Struct_2(select(select(select(!vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(false, global2.b.x, var_1.x, global2.b.x), var_1.x), select(arg_0, vec4<bool>(global2.a.x, true, false, false), arg_0), global2.a), !arg_0, global3[_wgslsmith_index_u32(max(global2.c.x, 9522u), 5u)]), select(global2.a.zwz, var_1, select(select(select(arg_0.wzz, global2.a.xzz, vec3<bool>(global2.b.x, global2.a.x, var_1.x)), arg_0.ywz, vec3<bool>(true, false, arg_0.x)), !(!global2.b), global2.d >= _wgslsmith_f_op_f32(-global2.d))), vec2<u32>(firstLeadingBit(46573u), var_2), global2.d);
}

fn func_1() -> Struct_2 {
    global0 = array<vec2<f32>, 21>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), 1788f, global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.d))))));
    let var_1 = func_2(!global3[_wgslsmith_index_u32(50877u, 5u)]);
    global2 = Struct_2(func_2(!vec4<bool>(global2.d <= -283f, global2.a.x, false, true)).a, global2.a.zzy, select(global2.c, ~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(32543u, u_input.b.x), vec2<u32>(u_input.b.x, 51471u))), select(func_2(vec4<bool>(var_1.b.x, false, true, global2.a.x)).b.zx, !(!vec2<bool>(true, global2.b.x)), true)), global2.d);
    return Struct_2(!(!select(global2.a, !vec4<bool>(false, var_1.b.x, false, var_1.a.x), global2.a)), !select(!func_2(vec4<bool>(global2.a.x, var_1.b.x, global2.b.x, var_1.a.x)).b, !var_1.a.wzz, vec3<bool>(true, any(vec4<bool>(false, true, var_1.b.x, true)), global2.a.x & var_1.b.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, ~4294967295u), countOneBits(_wgslsmith_mod_vec2_u32(reverseBits(var_1.c), max(global2.c, vec2<u32>(u_input.b.x, 1u))))), _wgslsmith_f_op_f32(trunc(-746f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1());
    var var_1 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(-min(-1i, -global1[_wgslsmith_index_u32(60488u, 7u)]), 551f);
}

