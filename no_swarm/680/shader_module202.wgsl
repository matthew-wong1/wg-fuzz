struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, true, true, true, true, true, false, false, false, false, false, true, true);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(false, false, true), false), Struct_1(vec3<bool>(false, false, false), true), Struct_1(vec3<bool>(false, true, true), false), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(true, true, false), true), Struct_1(vec3<bool>(true, true, true), false), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(false, true, false), true), Struct_1(vec3<bool>(true, true, true), true), Struct_1(vec3<bool>(true, false, false), false), Struct_1(vec3<bool>(false, true, true), true), Struct_1(vec3<bool>(true, false, true), false), Struct_1(vec3<bool>(true, false, false), false), Struct_1(vec3<bool>(true, true, false), false), Struct_1(vec3<bool>(true, true, true), false), Struct_1(vec3<bool>(true, true, false), true));

var<private> global2: array<vec2<u32>, 27>;

var<private> global3: array<Struct_1, 28>;

var<private> global4: array<vec2<bool>, 30>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = array<Struct_1, 17>();
    let var_0 = Struct_1(vec3<bool>(~u_input.b.x < u_input.b.x, true, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), (false || all(vec2<bool>(true, arg_0.a.x))) | false);
    global2 = array<vec2<u32>, 27>();
    return select(false, true, !(!select(arg_0.b, false, false) & all(arg_0.a)));
}

fn func_3(arg_0: i32, arg_1: f32) -> bool {
    let var_0 = ~select(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, u_input.b.x), max(vec3<u32>(59635u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<u32>(4561u, u_input.b.x, u_input.b.x))), ~vec3<u32>(27866u, ~u_input.b.x, u_input.b.x), all(select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(61753u, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], true, global0[_wgslsmith_index_u32(73482u, 13u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(4992u, 13u)])), vec3<bool>(false, false, true))));
    let var_1 = vec2<f32>(arg_1, 1627f);
    var var_2 = true;
    global4 = array<vec2<bool>, 30>();
    global3 = array<Struct_1, 28>();
    return false | (!global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_0.x, var_0.x), 13u)] | (var_1.x > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_1.x))))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1350f * _wgslsmith_f_op_f32(abs(-588f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(517f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1556f - 1000f) + _wgslsmith_f_op_f32(-745f * -115f))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1132f, 396f, -2142f, -1731f), vec4<f32>(-111f, -267f, -149f, -810f)))))));
    var var_1 = arg_0;
    var var_2 = select(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, ~52461u), 13u)], var_1.a.x, false, func_2(Struct_1(var_1.a, global0[_wgslsmith_index_u32(1u, 13u)])) & false), select(!vec4<bool>(any(vec4<bool>(false, var_1.a.x, false, global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), global0[_wgslsmith_index_u32(1u, 13u)], !global0[_wgslsmith_index_u32(58982u, 13u)], any(var_1.a)), select(vec4<bool>(any(vec4<bool>(true, arg_0.b, true, arg_0.a.x)), !arg_0.b, u_input.e >= u_input.a.x, any(arg_0.a.zz)), vec4<bool>(!arg_0.b, var_1.b, 0u > u_input.b.x, all(arg_0.a)), !select(vec4<bool>(false, true, false, arg_0.a.x), vec4<bool>(true, var_1.b, var_1.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], false, true, arg_0.b))), arg_0.a.x), arg_0.a.x);
    let var_3 = Struct_1(vec3<bool>(all(!var_1.a.xy), func_3(u_input.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(u_input.b.x, 59299u)) >= ~0u), false);
    var var_4 = Struct_1(var_3.a, arg_0.a.x);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, u_input.b.x), abs(u_input.b.x)), 17u)]);
    var var_1 = var_0;
    global4 = array<vec2<bool>, 30>();
    global4 = array<vec2<bool>, 30>();
    var var_2 = global3[_wgslsmith_index_u32(u_input.b.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1715f))), -265f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1118f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1596f, -671f))), abs(vec2<i32>(33305i, ~(-1i))));
}

