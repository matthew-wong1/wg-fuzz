struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-847f, -119f, 566f), vec3<f32>(-463f, -3142f, -308f), vec3<f32>(-240f, 1232f, 235f), vec3<f32>(2088f, 156f, -675f), vec3<f32>(-1184f, 889f, -499f), vec3<f32>(1714f, 165f, -1056f), vec3<f32>(132f, -473f, 1000f), vec3<f32>(-844f, 923f, 172f), vec3<f32>(913f, -368f, 1518f), vec3<f32>(-878f, -1203f, 608f), vec3<f32>(-1075f, -842f, 294f), vec3<f32>(-2034f, -3165f, -2004f), vec3<f32>(1071f, -1400f, -1130f), vec3<f32>(808f, -1110f, 1571f), vec3<f32>(128f, -602f, -1063f), vec3<f32>(-546f, 990f, -150f));

var<private> global2: Struct_1;

var<private> global3: array<bool, 11> = array<bool, 11>(true, true, true, true, true, true, false, false, true, false, false);

var<private> global4: array<Struct_2, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_mult_vec2_u32(countOneBits(~vec2<u32>(1u, 1u)), firstLeadingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(25675u, 11997u), vec2<u32>(1u, arg_2.d)))), !(!(!select(arg_2.a.wwz, vec3<bool>(arg_2.a.x, false, false), arg_1.a.x))));
    return !vec4<bool>(any(vec2<bool>(false, all(global2.a.yz))), false, arg_1.a.x, select(true, all(!global2.a.yzx), var_0.b.x));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(!func_3(global2.c, Struct_1(!vec4<bool>(global3[_wgslsmith_index_u32(90989u, 11u)], arg_1, arg_1, true), _wgslsmith_f_op_vec4_f32(-global2.b), -218f, 9332u, u_input.a), Struct_1(select(global2.a, global2.a, global2.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, -1132f, -338f, 530f) * global2.b), _wgslsmith_f_op_f32(1613f + global2.c), global2.d, 30376i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)), 1203f, abs(select(abs(~arg_0.a.x), ~14156u, true)), -1i);
    global0 = global2.a.yzz;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f))), -545f));
    let var_2 = select(!select(vec2<bool>(true, global2.a.x & true), global2.a.ww, arg_0.b.zz), global0.zz, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(floor(global2.b.x))) + global2.c), Struct_1(select(global2.a, !var_0.a, vec4<bool>(global3[_wgslsmith_index_u32(global2.d, 11u)], false, global2.a.x, var_0.a.x)), vec4<f32>(-216f, 1000f, _wgslsmith_f_op_f32(var_0.b.x * var_0.c), _wgslsmith_f_op_f32(round(global2.c))), -1146f, 4294967295u, 1i), Struct_1(vec4<bool>(false, all(vec4<bool>(true, true, true, false)), true, global3[_wgslsmith_index_u32(abs(64921u), 11u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, 246f, var_0.c, global2.b.x) - var_0.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.b.x + var_0.c))), min(arg_0.a.x, 1u) | 1u, firstTrailingBit(_wgslsmith_mod_i32(var_0.e, global2.e)))).x);
    var var_3 = Struct_2(firstTrailingBit(arg_0.a), func_3(_wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-global2.b.x)))), Struct_1(!(!vec4<bool>(false, arg_1, global0.x, true)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.b * global2.b))), var_0.c, ~39505u, -1i), Struct_1(!vec4<bool>(global0.x, arg_0.b.x, true, true), vec4<f32>(_wgslsmith_f_op_f32(-877f * global2.b.x), var_0.b.x, -941f, -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x))), ~97679u, (i32(-1i) * -13157i) << (~4294967295u % 32u))).zwx);
    return Struct_1(select(!vec4<bool>(var_3.b.x | global3[_wgslsmith_index_u32(var_0.d, 11u)], false, false, all(var_3.b)), vec4<bool>((var_2.x != false) || arg_0.b.x, !all(vec3<bool>(global0.x, var_2.x, true)), func_3(var_0.b.x, Struct_1(global2.a, global2.b, -357f, arg_0.a.x, -9338i), Struct_1(vec4<bool>(arg_1, arg_1, arg_0.b.x, global2.a.x), var_0.b, 574f, 42465u, var_0.e)).x, all(var_2)), all(vec3<bool>(var_3.b.x, false, true))), _wgslsmith_f_op_vec4_f32(-global2.b), var_0.b.x, ~(var_0.d ^ 0u), max(u_input.a, u_input.a));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> vec2<i32> {
    global2 = func_2(arg_2, arg_2.b.x);
    var var_0 = global2.a.x && !any(!func_3(global2.c, Struct_1(vec4<bool>(global2.a.x, true, true, arg_0.b.x), vec4<f32>(1596f, global2.c, -1687f, global2.b.x), 1378f, global2.d, u_input.a), Struct_1(global2.a, global2.b, -373f, global2.d, -2147483647i)).xz);
    let var_1 = global0.x;
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(327f + _wgslsmith_div_f32(_wgslsmith_div_f32(-1122f, -792f), global2.b.x)) * -924f)));
    var_2 = _wgslsmith_f_op_f32(select(global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1852f))), arg_2.b.x));
    return _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -33506i, i32(-1i) * -51657i), ~(~select(abs(vec2<i32>(1i, global2.e)), select(vec2<i32>(global2.e, 2080i), vec2<i32>(global2.e, u_input.a), vec2<bool>(global0.x, global2.a.x)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -select(u_input.a, _wgslsmith_dot_vec2_i32(-countOneBits(vec2<i32>(22935i, global2.e)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global2.e, 26484i), vec2<i32>(global2.e, u_input.a)), func_1(global4[_wgslsmith_index_u32(32491u, 7u)], false, global4[_wgslsmith_index_u32(global2.d, 7u)]), vec2<i32>(-1i, u_input.a))), !(_wgslsmith_f_op_f32(exp2(global2.b.x)) >= -308f));
    let var_1 = all(!vec4<bool>(!all(vec4<bool>(global2.a.x, global2.a.x, global3[_wgslsmith_index_u32(4294967295u, 11u)], false)), true, any(global2.a.zzz), true));
    let var_2 = reverseBits(i32(-1i) * -(~_wgslsmith_sub_i32(-34005i, u_input.a)));
    let var_3 = ~(~13483u);
    let var_4 = 0u;
    var var_5 = global4[_wgslsmith_index_u32(var_4, 7u)];
    var var_6 = abs(firstLeadingBit(abs(~vec4<i32>(-24341i, var_0, var_2, var_0))));
    let var_7 = Struct_2(~var_5.a, global2.a.wzx);
    let x = u_input.a;
    s_output = StorageBuffer(19035i | var_2, var_2);
}

