struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_2(-1384f, Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true))), Struct_1(vec3<bool>(false, true, true))), Struct_3(Struct_2(413f, Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true))), Struct_1(vec3<bool>(false, true, true))), Struct_3(Struct_2(-289f, Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true))), Struct_1(vec3<bool>(true, false, true))), Struct_3(Struct_2(-1000f, Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true))), Struct_1(vec3<bool>(false, true, true))), Struct_3(Struct_2(-1139f, Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true))), Struct_1(vec3<bool>(true, false, false))), Struct_3(Struct_2(-921f, Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false))), Struct_1(vec3<bool>(true, false, true))), Struct_3(Struct_2(951f, Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true))), Struct_1(vec3<bool>(true, false, false))), Struct_3(Struct_2(-649f, Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false))), Struct_1(vec3<bool>(true, false, false))), Struct_3(Struct_2(826f, Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, true))), Struct_1(vec3<bool>(true, true, true))), Struct_3(Struct_2(964f, Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, false))), Struct_1(vec3<bool>(false, false, false))), Struct_3(Struct_2(-410f, Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false))), Struct_1(vec3<bool>(true, true, false))), Struct_3(Struct_2(-182f, Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true))), Struct_1(vec3<bool>(false, true, true))), Struct_3(Struct_2(1000f, Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true))), Struct_1(vec3<bool>(false, false, false))), Struct_3(Struct_2(807f, Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, true))), Struct_1(vec3<bool>(false, false, true))), Struct_3(Struct_2(-348f, Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, false))), Struct_1(vec3<bool>(true, false, true))));

var<private> global3: array<bool, 13> = array<bool, 13>(true, true, true, true, true, false, true, false, false, false, false, false, true);

var<private> global4: array<Struct_2, 23>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> f32 {
    let var_0 = arg_0.wyz;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xx));
    global1 = arg_2.a.b;
    global1 = arg_2.b;
    var var_2 = 1i;
    return var_1.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> bool {
    global3 = array<bool, 13>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(arg_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) * arg_2)))));
    let var_1 = Struct_2(arg_0.a, Struct_1(vec3<bool>(global1.a.x, !global3[_wgslsmith_index_u32(0u, 13u)], all(!vec4<bool>(global1.a.x, global1.a.x, true, arg_0.b.a.x)))), arg_0.b);
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_1.a))), var_1.c, Struct_1(!vec3<bool>(false, var_1.c.a.x, true))), var_1.c);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1343f, arg_0.a, var_0.x, arg_2.x)))) - vec4<f32>(-460f, var_0.x, _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(u_input.a, 6u)], false, var_2, 861f)), _wgslsmith_f_op_f32(var_0.x - -197f)))));
    return all(!select(vec4<bool>(true, all(vec4<bool>(var_2.a.c.a.x, true, var_1.c.a.x, true)), arg_0.b.a.x, u_input.c == 23112u), vec4<bool>(arg_1.a.x, true, global1.a.x, any(vec2<bool>(true, true))), vec4<bool>(var_2.b.a.x, all(arg_0.b.a.zx), global1.a.x, !arg_1.a.x)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = 4705i;
    let var_1 = global1.a.xx;
    global1 = Struct_1(global1.a);
    var var_2 = global1.a.zy;
    let var_3 = !(!select(vec2<bool>(!var_1.x, func_3(global4[_wgslsmith_index_u32(u_input.a, 23u)], Struct_1(global1.a), vec4<f32>(-823f, arg_1.x, arg_1.x, arg_1.x), u_input.b.x)), vec2<bool>(var_1.x, global1.a.x), !global1.a.xz));
    return Struct_1(!global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 13>();
    global3 = array<bool, 13>();
    let var_0 = func_2(abs(21729u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.c, 6u)] - vec4<f32>(598f, -229f, 664f, -669f)), any(global1.a.yx), Struct_3(Struct_2(-552f, Struct_1(vec3<bool>(false, global1.a.x, true)), Struct_1(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.c, 13u)], global1.a.x))), Struct_1(global1.a)), _wgslsmith_f_op_f32(601f * 229f)))), -208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -1000f)));
    global0 = array<vec4<f32>, 6>();
    let var_1 = select(select(vec4<bool>(_wgslsmith_add_u32(13331u, u_input.d.x) != u_input.a, _wgslsmith_mult_i32(2147483647i, u_input.b.x) < reverseBits(1563i), !global1.a.x, u_input.b.x <= u_input.b.x), select(vec4<bool>(global1.a.x | global3[_wgslsmith_index_u32(u_input.c, 13u)], false, global1.a.x, false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(global1.a.x, var_0.a.x, var_0.a.x, global1.a.x), vec4<bool>(global1.a.x, false, false, true), vec4<bool>(false, true, global3[_wgslsmith_index_u32(34130u, 13u)], global3[_wgslsmith_index_u32(u_input.c, 13u)])), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 13u)], var_0.a.x, true, var_0.a.x), vec4<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 13u)], var_0.a.x, true, global1.a.x), false), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 13u)], false, true, false))), vec4<bool>(all(func_2(35751u, vec3<f32>(-271f, 738f, -1000f)).a), !(!var_0.a.x), all(vec3<bool>(global3[_wgslsmith_index_u32(9755u, 13u)], true, var_0.a.x)), var_0.a.x)), !vec4<bool>(all(var_0.a.xx), ~0u > (u_input.a & u_input.a), true, var_0.a.x), vec4<bool>(false, func_3(Struct_2(710f, Struct_1(var_0.a), Struct_1(var_0.a)), var_0, global0[_wgslsmith_index_u32(u_input.a, 6u)], 1i) == global3[_wgslsmith_index_u32(78112u, 13u)], true, all(!global1.a) & var_0.a.x));
    global3 = array<bool, 13>();
    let var_2 = select(countOneBits(select(max(u_input.b.zz ^ vec2<i32>(2147483647i, u_input.b.x), -u_input.b.xz), vec2<i32>(u_input.b.x, -15468i), vec2<bool>(true, var_0.a.x))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 22011i, 0i, -2147483647i), vec4<i32>(max(u_input.b.x, 1i), 31989i ^ u_input.b.x, firstLeadingBit(-2147483647i), -1i)), abs(-75434i)), !select(!(!var_0.a.yz), select(var_0.a.xy, var_1.wz, all(var_1)), func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 85568u, u_input.a), vec3<u32>(u_input.d.x, 75894u, u_input.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1093f, 910f, -1579f))).a.yz));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-500f - _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(f32(-1f) * -116f)));
}

