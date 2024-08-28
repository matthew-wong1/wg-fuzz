struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(0u, 1u, vec2<u32>(5037u, 41701u), vec2<bool>(true, false)), Struct_1(1u, 4294967295u, vec2<u32>(0u, 0u), vec2<bool>(false, false)), Struct_1(3759u, 74055u, vec2<u32>(4294967295u, 1u), vec2<bool>(true, false)), Struct_1(10217u, 16178u, vec2<u32>(1u, 1u), vec2<bool>(false, true)), Struct_1(0u, 25394u, vec2<u32>(4294967295u, 1u), vec2<bool>(false, true)), Struct_1(0u, 4294967295u, vec2<u32>(1u, 4294967295u), vec2<bool>(false, false)), Struct_1(18235u, 66918u, vec2<u32>(13063u, 1u), vec2<bool>(false, false)), Struct_1(1u, 1u, vec2<u32>(1u, 4294967295u), vec2<bool>(false, false)), Struct_1(1u, 1u, vec2<u32>(0u, 45235u), vec2<bool>(true, false)), Struct_1(1u, 55395u, vec2<u32>(110538u, 7926u), vec2<bool>(false, true)), Struct_1(1438u, 59692u, vec2<u32>(29808u, 1u), vec2<bool>(true, false)), Struct_1(1u, 39194u, vec2<u32>(39703u, 11917u), vec2<bool>(true, false)), Struct_1(80439u, 8949u, vec2<u32>(34753u, 1u), vec2<bool>(false, false)), Struct_1(50510u, 4294967295u, vec2<u32>(28227u, 14058u), vec2<bool>(true, true)), Struct_1(1u, 18296u, vec2<u32>(0u, 4294967295u), vec2<bool>(false, false)), Struct_1(0u, 1u, vec2<u32>(1u, 0u), vec2<bool>(false, true)), Struct_1(1u, 23849u, vec2<u32>(0u, 7861u), vec2<bool>(false, false)), Struct_1(4294967295u, 51703u, vec2<u32>(3609u, 4294967295u), vec2<bool>(true, true)), Struct_1(2793u, 1u, vec2<u32>(0u, 0u), vec2<bool>(true, true)), Struct_1(4294967295u, 1u, vec2<u32>(61089u, 24269u), vec2<bool>(true, true)), Struct_1(9082u, 1u, vec2<u32>(1u, 14867u), vec2<bool>(true, true)), Struct_1(81390u, 91739u, vec2<u32>(1u, 4294967295u), vec2<bool>(false, true)), Struct_1(66781u, 6719u, vec2<u32>(18641u, 0u), vec2<bool>(false, true)), Struct_1(27992u, 38698u, vec2<u32>(0u, 18683u), vec2<bool>(false, true)), Struct_1(4294967295u, 1u, vec2<u32>(0u, 19118u), vec2<bool>(true, true)), Struct_1(0u, 4294967295u, vec2<u32>(11625u, 0u), vec2<bool>(true, true)), Struct_1(17460u, 1u, vec2<u32>(0u, 4294967295u), vec2<bool>(true, false)), Struct_1(31138u, 43002u, vec2<u32>(25534u, 1u), vec2<bool>(false, true)), Struct_1(8288u, 1u, vec2<u32>(36872u, 1u), vec2<bool>(false, false)));

var<private> global1: array<vec4<u32>, 2>;

var<private> global2: vec4<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    global1 = array<vec4<u32>, 2>();
    let var_0 = select(select(vec3<bool>(true, arg_1.b, arg_0.d.x), vec3<bool>(arg_0.d.x, arg_0.d.x, !arg_0.d.x), true & all(!vec3<bool>(arg_1.a.d.x, arg_1.a.d.x, arg_1.c))), vec3<bool>(false, true, true), true);
    let var_1 = vec2<f32>(897f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -726f)));
    var var_2 = arg_1.a.d.x;
    let var_3 = 1i;
    return var_1.x;
}

fn func_2() -> Struct_1 {
    let var_0 = 52121u;
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(func_3(Struct_1(25694u, u_input.a.x, u_input.b.yy, vec2<bool>(false, false)), Struct_2(Struct_1(var_0, u_input.b.x, vec2<u32>(18250u, var_0), vec2<bool>(true, true)), false, false))), _wgslsmith_f_op_f32(1190f + global2.x), _wgslsmith_f_op_f32(func_3(Struct_1(var_0, 16045u, u_input.a.yy, vec2<bool>(true, true)), Struct_2(global0[_wgslsmith_index_u32(22922u, 29u)], false, false))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, -1383f) - vec4<f32>(global2.x, 1981f, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1567f, global2.x, global2.x, -163f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2350f, global2.x, 1137f, -632f)))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1154f), 341f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1055f, global2.x, -911f, -512f), vec4<f32>(1235f, global2.x, global2.x, 1286f)))))));
    global1 = array<vec4<u32>, 2>();
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -877f, global2.x, -948f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, -1564f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * 813f)), _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(global2.x + global2.x)))))));
    let var_1 = _wgslsmith_div_u32(~firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, 22367u), 1u)), 1u);
    return global0[_wgslsmith_index_u32(~1u, 29u)];
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    return func_2();
}

fn func_5(arg_0: Struct_1) -> i32 {
    var var_0 = func_4(arg_0.d.x != (~u_input.b.x <= ~(~4294967295u)), Struct_2(Struct_1((arg_0.c.x | 0u) << (1u % 32u), _wgslsmith_mod_u32(0u, arg_0.a) << ((0u >> (u_input.b.x % 32u)) % 32u), vec2<u32>(1u, 17056u) | (u_input.b.zy & vec2<u32>(u_input.b.x, arg_0.c.x)), arg_0.d), all(vec2<bool>(global2.x == global2.x, all(vec4<bool>(true, arg_0.d.x, false, false)))), func_4(!arg_0.d.x & all(vec4<bool>(false, arg_0.d.x, arg_0.d.x, true)), Struct_2(func_4(arg_0.d.x, Struct_2(Struct_1(arg_0.a, arg_0.c.x, u_input.b.yx, vec2<bool>(arg_0.d.x, arg_0.d.x)), true, arg_0.d.x)), func_4(true, Struct_2(Struct_1(u_input.b.x, u_input.a.x, u_input.b.zz, arg_0.d), false, false)).d.x, false)).d.x)).d;
    var var_1 = vec3<bool>(true, false, any(vec2<bool>(true, true)));
    global0 = array<Struct_1, 29>();
    let var_2 = 1i;
    var var_3 = select(vec3<bool>(arg_0.d.x, !(!select(var_1.x, arg_0.d.x, var_1.x)), true), vec3<bool>(!(~1u != ~u_input.b.x), !all(select(vec3<bool>(var_0.x, arg_0.d.x, var_1.x), vec3<bool>(false, var_0.x, true), vec3<bool>(true, false, var_1.x))), all(func_4(arg_0.d.x, Struct_2(Struct_1(arg_0.c.x, 21607u, arg_0.c, vec2<bool>(arg_0.d.x, var_1.x)), var_0.x, arg_0.d.x)).d)), var_1.x);
    return ~1i;
}

fn func_1() -> u32 {
    var var_0 = -firstLeadingBit(i32(-1i) * -(~(-2147483647i)));
    var_0 = ~(-20920i);
    var_0 = _wgslsmith_mult_i32(func_5(func_4(all(vec2<bool>(true, true)), Struct_2(func_2(), true, true))), 2501i);
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(46516u, 29u)], -1i >= select(58901i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, -1707i)), _wgslsmith_add_i32(-1i, 0i)), true), true);
    var var_2 = func_4(var_1.c, Struct_2(Struct_1(var_1.a.a | reverseBits(var_1.a.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(1u, var_1.a.b, 18663u)), u_input.b.xx, !func_4(true, Struct_2(Struct_1(13389u, var_1.a.c.x, vec2<u32>(0u, 47572u), var_1.a.d), false, false)).d), any(vec2<bool>(all(vec3<bool>(var_1.a.d.x, false, true)), true)), true));
    return ~(u_input.a.x ^ ~max(~4294967295u, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(firstLeadingBit(1u), 14948u);
    let var_1 = _wgslsmith_f_op_f32(-global2.x);
    global0 = array<Struct_1, 29>();
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, 1269f, var_1, -427f), vec4<f32>(1505f, global2.x, global2.x, -661f), vec4<bool>(true, false, true, true))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-665f, global2.x, 577f, 879f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, 815f, 141f, -680f)))))))));
    var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(36161u) << (~var_0.x % 32u), ~(~var_0.x) | func_1()), vec2<u32>(~(~41575u), (abs(0u) & ~u_input.a.x) ^ ~1u));
    var var_3 = global0[_wgslsmith_index_u32(countOneBits(var_0.x ^ 90970u), 29u)];
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(384f, 1626f, _wgslsmith_f_op_f32(-544f + _wgslsmith_f_op_f32(710f + global2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 + -152f))))));
    var var_4 = true || any(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, var_3.d.x, var_3.d.x, false)), true), select(!vec2<bool>(true, var_3.d.x), vec2<bool>(var_3.d.x, true), var_3.d.x)));
    var var_5 = func_4(!(!(true && (var_3.d.x & var_3.d.x))), Struct_2(func_2(), all(select(!vec3<bool>(var_3.d.x, false, var_3.d.x), !vec3<bool>(true, var_3.d.x, true), func_4(true, Struct_2(global0[_wgslsmith_index_u32(0u, 29u)], false, true)).d.x)), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(abs(-1i), ~1i), -1i, _wgslsmith_dot_vec3_i32(countOneBits(firstTrailingBit(vec3<i32>(34143i, 7379i, -25583i))), vec3<i32>(i32(-1i) * -1i, -30335i, 28021i)), 2147483647i), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_2.x)))), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(-var_1))))));
}

