struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(950f, -1578f, 177f);

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, false, true), true, 114244u, -1370f, vec2<bool>(true, false));

var<private> global2: array<vec4<u32>, 22>;

var<private> global3: array<bool, 12>;

var<private> global4: array<u32, 31>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = Struct_1(!vec4<bool>(true, !all(arg_2.a.yyx), global1.c >= 1u, global1.b), true, max(firstLeadingBit(35926u), _wgslsmith_clamp_u32(u_input.b, 0u, arg_3.c << (_wgslsmith_clamp_u32(23704u, arg_0.c, global4[_wgslsmith_index_u32(arg_3.c, 31u)]) % 32u))), 204f, arg_3.e);
    global4 = array<u32, 31>();
    let var_0 = true && arg_3.b;
    var var_1 = arg_2;
    let var_2 = true;
    return _wgslsmith_f_op_f32(-arg_0.d);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(503f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)));
    var var_1 = arg_1.d;
    let var_2 = Struct_1(vec4<bool>(!arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(global1.a, global3[_wgslsmith_index_u32(10712u, 12u)], 0u, -451f, arg_1.a.zw), arg_2, arg_1, Struct_1(vec4<bool>(global1.e.x, arg_1.e.x, false, global3[_wgslsmith_index_u32(56567u, 12u)]), false, arg_0, 1033f, global1.e)))) > _wgslsmith_f_op_f32(round(-860f)), arg_1.a.x, false), global1.a.x, global1.c, global1.d, select(vec2<bool>(!(!arg_1.b), true || any(arg_1.a.xy)), select(global1.e, global1.e, vec2<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(0u, 12u)], arg_1.a.x, false)), true)), arg_1.e));
    let var_3 = 13225u;
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.d - 2099f), _wgslsmith_f_op_f32(f32(-1f) * -279f), -1394f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global0.x, 738f)), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(var_0 - var_2.d))), arg_1.d) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, -936f, 2365f), vec3<f32>(635f, 612f, 1020f))))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(-429f))))));
    return var_2;
}

fn func_1() -> Struct_1 {
    global3 = array<bool, 12>();
    global2 = array<vec4<u32>, 22>();
    global1 = func_2(~1u, Struct_1(vec4<bool>(true, !(global1.d < global0.x), any(!global1.e), true), (any(vec4<bool>(false, false, global1.b, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(57902u, 31u)], 31u)], 31u)], 12u)])) | true) && (_wgslsmith_f_op_f32(global1.d - global1.d) <= -484f), ~global4[_wgslsmith_index_u32(global1.c, 31u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(global0.x, -1477f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d, 662f) * _wgslsmith_f_op_f32(min(575f, global0.x)))), vec2<bool>(global3[_wgslsmith_index_u32(~u_input.a.x, 12u)], true)), select(vec2<i32>(-u_input.c, 5099i), -(vec2<i32>(u_input.c, -18455i) >> (u_input.a.zx % vec2<u32>(32u))), select(global1.a.x, global3[_wgslsmith_index_u32(1u, 12u)] | false, true)) & firstTrailingBit(vec2<i32>(-1i, u_input.c) & _wgslsmith_clamp_vec2_i32(vec2<i32>(-7247i, u_input.c), vec2<i32>(-66091i, 1i), vec2<i32>(u_input.c, u_input.c))), ~_wgslsmith_sub_vec3_u32(u_input.a.zww, (vec3<u32>(global1.c, 45579u, 74533u) >> (u_input.a.xww % vec3<u32>(32u))) | abs(u_input.a.yxz)));
    global3 = array<bool, 12>();
    let var_0 = Struct_1(global1.a, global1.b, 1u, _wgslsmith_f_op_f32(round(1766f)), vec2<bool>(global3[_wgslsmith_index_u32(7186u, 12u)], _wgslsmith_div_i32(-11634i, -u_input.c) < ~abs(u_input.c)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 12>();
    var var_0 = func_1();
    global1 = Struct_1(select(func_2(1u, Struct_1(global1.a, global0.x <= global1.d, ~1u, _wgslsmith_f_op_f32(func_3(Struct_1(global1.a, true, 1u, global0.x, vec2<bool>(true, true)), vec2<i32>(1i, -42414i), Struct_1(global1.a, false, u_input.a.x, var_0.d, vec2<bool>(global1.a.x, var_0.a.x)), Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(global1.c, 12u)], true, true, var_0.a.x), global3[_wgslsmith_index_u32(0u, 12u)], var_0.c, 1393f, var_0.e))), !var_0.a.zz), -vec2<i32>(-11974i, 0i), max(~u_input.a.xzz, u_input.a.zzy)).a, var_0.a, vec4<bool>(!any(vec3<bool>(true, true, false)), !all(global1.a.zxx), true, !all(vec4<bool>(global1.a.x, true, global3[_wgslsmith_index_u32(4294967295u, 12u)], global1.a.x)))), false, _wgslsmith_div_u32(1u, ~global1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-var_0.d)), global1.a.xx);
    let var_1 = Struct_1(var_0.a, true, min(func_2(global1.c | 4294967295u, func_1(), ~vec2<i32>(-17754i, 31254i), ~vec3<u32>(4294967295u, global1.c, 1u)).c & _wgslsmith_add_u32(min(global1.c, 4294967295u), 1u), firstLeadingBit(4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.d))))), var_0.d), var_0.e);
    var var_2 = Struct_1(!global1.a, true && !(true | var_0.a.x), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~_wgslsmith_div_u32(31719u, var_1.c), max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, global1.c, global1.c), vec3<u32>(70177u, 27066u, 10528u)), 1u)), var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(f32(-1f) * -391f), global1.a.x || true)))), !select(vec2<bool>(true, true), func_1().a.xy, ~u_input.c != -u_input.c));
    var_0 = var_1;
    let var_3 = !var_1.a.xww;
    let var_4 = Struct_1(select(select(!var_1.a, var_2.a, var_1.b), !(!var_1.a), any(!var_0.a)), var_0.b, var_1.c ^ ~max(firstTrailingBit(var_0.c), _wgslsmith_clamp_u32(1u, 17960u, u_input.b)), var_2.d, func_2(global1.c, Struct_1(var_1.a, false, _wgslsmith_add_u32(func_1().c, ~1u), _wgslsmith_f_op_f32(-203f + _wgslsmith_f_op_f32(f32(-1f) * -295f)), vec2<bool>(global1.e.x, !var_1.e.x)), -max(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(14917i, 2470i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-49922i, -27199i), vec2<i32>(u_input.c, 49907i), vec2<i32>(0i, 1i))), firstTrailingBit(~vec3<u32>(var_2.c, 50995u, global1.c))).a.xw);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a.x)) | global4[_wgslsmith_index_u32(7931u, 31u)]);
}

