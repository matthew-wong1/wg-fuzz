struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = arg_3;
    global0 = array<f32, 14>();
    var var_1 = vec4<bool>(arg_0.b.x, true, arg_2.a.x, true);
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.b.x, arg_3.b.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1221f, 477f), arg_0.a.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b.b))));
    let var_3 = Struct_3(Struct_1(-1060f, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a.b.x, arg_3.a), _wgslsmith_div_f32(arg_3.b.x, -207f)), 102f)), !select(!(!arg_0.b), arg_0.b, !all(arg_0.b)), vec2<i32>(-(~2147483647i), ~(-36418i)));
    return var_1.x;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> vec2<f32> {
    global0 = array<f32, 14>();
    var var_0 = Struct_2(vec3<bool>(!all(!arg_2.b.zz), true, all(vec3<bool>(true, any(arg_2.b), arg_2.b.x))), arg_1, arg_2.c.x);
    let var_1 = Struct_3(Struct_1(arg_2.a.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1241f, _wgslsmith_f_op_f32(round(-1000f))))), vec4<bool>(!var_0.a.x, arg_2.b.x, true || (57240u == u_input.a), true), select(-abs(firstTrailingBit(arg_2.c)), _wgslsmith_div_vec2_i32(vec2<i32>(~arg_0, var_0.c), vec2<i32>(min(u_input.b.x, 24158i), 1i)), arg_2.b.xw));
    let var_2 = Struct_2(vec3<bool>(var_0.a.x, all(!(!var_0.a.xy)), !func_3(Struct_3(var_0.b, var_1.b, u_input.b.yz), -vec3<i32>(-1i, -73787i, var_1.c.x), Struct_2(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), Struct_1(arg_1.b.x, vec2<f32>(var_1.a.b.x, 1083f)), -7032i), Struct_1(850f, vec2<f32>(781f, arg_2.a.b.x)))), Struct_1(1528f, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1393f, _wgslsmith_f_op_f32(-489f + -2287f))))), -(abs(min(1393i, arg_0)) | 0i));
    var var_3 = var_1.b.xz;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.b.b)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> vec3<bool> {
    global0 = array<f32, 14>();
    let var_0 = 4294967295u;
    global0 = array<f32, 14>();
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~(vec2<u32>(u_input.a, 27482u) & vec2<u32>(49891u, 40404u))), _wgslsmith_add_u32(~var_0, u_input.a) & _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(28638u, u_input.a), vec2<u32>(105074u, var_0)))), 14u)];
    var var_2 = Struct_1(-1000f, arg_2.b.b);
    return select(arg_1.b.zww, select(!arg_2.a, arg_2.a, any(vec4<bool>(arg_1.b.x, true, false, !arg_1.b.x))), vec3<bool>(false, true, true));
}

fn func_1() -> i32 {
    global0 = array<f32, 14>();
    let var_0 = select(vec3<bool>(true, true, true), func_4(Struct_1(-322f, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1239f, 748f)), _wgslsmith_f_op_vec2_f32(func_2(2147483647i, Struct_1(global0[_wgslsmith_index_u32(u_input.a, 14u)], vec2<f32>(-1345f, global0[_wgslsmith_index_u32(u_input.a, 14u)])), Struct_3(Struct_1(1490f, vec2<f32>(global0[_wgslsmith_index_u32(23260u, 14u)], 506f)), vec4<bool>(false, false, false, true), vec2<i32>(u_input.b.x, u_input.b.x))))))), Struct_3(Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec2<f32>(892f, 842f)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false), u_input.b.yx), Struct_2(vec3<bool>(true, true, any(vec3<bool>(false, false, false))), Struct_1(_wgslsmith_f_op_f32(1000f + global0[_wgslsmith_index_u32(u_input.a, 14u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(268f, global0[_wgslsmith_index_u32(47222u, 14u)]))), u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-623f, global0[_wgslsmith_index_u32(u_input.a, 14u)])) == -1223f);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~58148u, u_input.a ^ 48367u), 14u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -613f))), global0[_wgslsmith_index_u32(u_input.a, 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1325f)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(194f, global0[_wgslsmith_index_u32(u_input.a, 14u)], _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(24541u, 14u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(41198u, 14u)])), vec4<f32>(_wgslsmith_f_op_f32(abs(-571f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 14u)] + global0[_wgslsmith_index_u32(45334u, 14u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(19365u, 0u)), 14u)], -920f), _wgslsmith_f_op_vec2_f32(func_2(-412i, Struct_1(2101f, vec2<f32>(-998f, 168f)), Struct_3(Struct_1(547f, vec2<f32>(1455f, -1042f)), vec4<bool>(true, false, false, var_0.x), u_input.b.xx))).x == 697f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 14u)], -658f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 14u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 14u)] * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 14u)] - -824f), _wgslsmith_f_op_f32(sign(249f))))))));
    var var_2 = Struct_2(vec3<bool>(var_0.x, func_4(Struct_1(_wgslsmith_div_f32(-1598f, global0[_wgslsmith_index_u32(84998u, 14u)]), var_1.ww), Struct_3(Struct_1(464f, var_1.xz), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x), u_input.b.zz), Struct_2(select(var_0, vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), Struct_1(global0[_wgslsmith_index_u32(80788u, 14u)], vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], var_1.x)), 1i)).x, all(vec2<bool>(true, any(vec4<bool>(false, var_0.x, var_0.x, var_0.x))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(30214u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)])))), _wgslsmith_div_vec2_f32(vec2<f32>(899f, -1000f), vec2<f32>(var_1.x, 431f))), -u_input.b.x);
    let var_3 = Struct_2(var_2.a, var_2.b, -_wgslsmith_dot_vec3_i32(-(~u_input.b), ~(vec3<i32>(u_input.b.x, 72674i, var_2.c) >> (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u)))));
    return i32(-1i) * -1i;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    global0 = array<f32, 14>();
    let var_0 = arg_2;
    let var_1 = arg_0.b;
    var var_2 = 0i;
    let var_3 = abs(_wgslsmith_clamp_u32(12711u >> (u_input.a % 32u), ~67960u, 0u) | 39715u) >> (max(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), ~(~u_input.a), 104139u), u_input.a) % 32u);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a - 1159f), arg_2))) + _wgslsmith_div_f32(-950f, -668f)), _wgslsmith_f_op_vec2_f32(var_1.b * arg_1.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true == any(vec3<bool>(false, false, false))), !vec3<bool>(853f >= global0[_wgslsmith_index_u32(u_input.a, 14u)], false, all(vec3<bool>(true, false, false))), !all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)))), func_5(Struct_2(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), u_input.b.x > 1i), Struct_1(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(74447u, 14u)]), vec2<f32>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)])), -(~u_input.b.x)), Struct_2(vec3<bool>(true, true, true), Struct_1(-679f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 14u)], 1258f))), -func_1()), global0[_wgslsmith_index_u32((reverseBits(u_input.a) ^ ~1u) & 4294967295u, 14u)]), _wgslsmith_dot_vec2_i32(min(~u_input.b.yz, (u_input.b.xy & vec2<i32>(u_input.b.x, u_input.b.x)) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), ~(~(-u_input.b.xz))));
    var var_1 = !var_0.a.zz;
    let var_2 = -2147483647i;
    var var_3 = 177f;
    var var_4 = vec4<bool>(u_input.b.x < var_2, true, var_0.a.x, var_0.a.x);
    global0 = array<f32, 14>();
    var var_5 = 33114u;
    let var_6 = abs(var_2);
    var var_7 = Struct_2(vec3<bool>(var_1.x, -605f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)), true), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2(var_2, var_0.b, Struct_3(var_0.b, vec4<bool>(var_1.x, true, false, var_0.a.x), vec2<i32>(1i, u_input.b.x)))).x)), vec2<f32>(global0[_wgslsmith_index_u32(~(~16107u), 14u)], _wgslsmith_f_op_f32(f32(-1f) * -368f))), -19425i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(var_7.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2146f - _wgslsmith_f_op_f32(var_0.b.b.x + 1199f)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(29699u, 14u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1869f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 14u)], var_7.b.a)) - _wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(40055u, 14u)])))), vec4<u32>(~u_input.a, u_input.a, ~u_input.a, ~(~firstTrailingBit(u_input.a))), vec2<u32>(u_input.a, _wgslsmith_mult_u32(~(~119503u), u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-247f, _wgslsmith_f_op_f32(-var_7.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1198f, -151f) - var_0.b.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1254f + 603f), _wgslsmith_f_op_f32(round(795f))))));
}

