struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<Struct_1, 28>;

var<private> global3: f32 = 894f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(arg_0.b.x));
    var var_1 = Struct_2(vec2<bool>(true, true));
    let var_2 = -(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c.x, u_input.c.x, 1i), vec3<i32>(-20926i, u_input.b.x, 80816i) | vec3<i32>(u_input.b.x, u_input.c.x, 9098i)) & firstLeadingBit(vec3<i32>(u_input.c.x, -1i, u_input.c.x))) << (~(~(~vec3<u32>(0u, u_input.a.x, u_input.a.x) >> ((vec3<u32>(u_input.a.x, u_input.a.x, 0u) >> (vec3<u32>(4294967295u, 0u, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)))) % vec3<u32>(32u));
    return vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(43434u, countOneBits(35209u)), firstLeadingBit(vec2<u32>(abs(1u), _wgslsmith_add_u32(55259u, 15542u)))), ~1u, ~(~4294967295u), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, select(u_input.a.x, 5853u, var_1.a.x), _wgslsmith_add_u32(u_input.a.x, 4294967295u), 1u), ~vec4<u32>(1u, 28880u, u_input.a.x, u_input.a.x) | (vec4<u32>(u_input.a.x, 1u, u_input.a.x, 36516u) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2)));
    global1 = array<Struct_1, 5>();
    var var_1 = any(arg_0.zz);
    global0 = Struct_2(select(vec2<bool>(select(false, global0.a.x, 25645u > u_input.a.x), !(1i < u_input.b.x)), global0.a, select(select(vec2<bool>(arg_0.x, false), select(vec2<bool>(false, arg_0.x), vec2<bool>(global0.a.x, global0.a.x), arg_0.zy), global0.a.x), !(!vec2<bool>(false, global0.a.x)), arg_0.x)));
    var var_2 = global1[_wgslsmith_index_u32(~select((arg_1.x & 60676u) ^ arg_1.x, _wgslsmith_clamp_u32(arg_1.x, select(u_input.a.x, u_input.a.x, false), ~u_input.a.x), all(vec2<bool>(true, false))) & abs(_wgslsmith_div_u32(~abs(arg_1.x), u_input.a.x)), 5u)];
    return arg_0;
}

fn func_2() -> Struct_2 {
    let var_0 = !(!global0.a);
    let var_1 = Struct_2(global0.a);
    var var_2 = var_1;
    global1 = array<Struct_1, 5>();
    var var_3 = select(vec3<bool>(all(select(!global0.a, global0.a, vec2<bool>(global0.a.x, var_1.a.x))), !(_wgslsmith_f_op_f32(floor(596f)) <= _wgslsmith_f_op_f32(sign(-248f))), false), select(func_4(vec3<bool>(any(global0.a), false, false), func_3(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 28u)], global2[_wgslsmith_index_u32(u_input.a.x | u_input.a.x, 28u)]), _wgslsmith_f_op_f32(round(-469f))), !vec3<bool>(any(vec4<bool>(var_2.a.x, false, true, false)), global0.a.x, !var_1.a.x), vec3<bool>(all(vec3<bool>(true, true, true)), var_0.x, false)), vec3<bool>(true, _wgslsmith_f_op_f32(round(-358f)) > _wgslsmith_f_op_f32(step(1f, -1000f)), global0.a.x));
    return var_1;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global1 = array<Struct_1, 5>();
    global1 = array<Struct_1, 5>();
    var var_0 = func_2();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b.x, -1291f), arg_1.b.x))))), 1884f);
    let var_2 = -1i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(-996f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -237f)))));
    global3 = -1000f;
    var var_1 = u_input.c.x;
    let var_2 = func_1(u_input.b.x, global1[_wgslsmith_index_u32(max(abs(u_input.a.x) >> (~70639u % 32u), 1u) << (25026u % 32u), 5u)]);
    let var_3 = Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(807f, 521f, var_0), vec3<f32>(701f, 915f, var_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(592f, var_0, var_0))) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -705f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0, -1860f)), _wgslsmith_f_op_f32(max(-1016f, var_0))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(-889f);
}

