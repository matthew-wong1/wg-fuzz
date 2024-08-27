struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(1057f, 1573f, 440f, -138f), vec4<f32>(-174f, -275f, -1000f, 592f), vec4<f32>(-559f, -149f, 1877f, 108f), vec4<f32>(-887f, -823f, -385f, 212f), vec4<f32>(-1088f, -569f, -874f, 353f), vec4<f32>(-264f, -1418f, -822f, 1097f));

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(true, true, 53734u, vec2<f32>(-127f, -1121f)), Struct_1(false, true, 1u, vec2<f32>(-1000f, -487f)), Struct_1(true, false, 24338u, vec2<f32>(1315f, 959f)), Struct_1(false, false, 1u, vec2<f32>(-1180f, 1283f)), Struct_1(true, true, 28912u, vec2<f32>(-911f, 1353f)), Struct_1(true, false, 2986u, vec2<f32>(-2036f, 1000f)), Struct_1(false, false, 1u, vec2<f32>(1293f, -1775f)), Struct_1(true, false, 7170u, vec2<f32>(1023f, -196f)), Struct_1(false, false, 26885u, vec2<f32>(462f, 626f)), Struct_1(true, true, 72458u, vec2<f32>(-1158f, 239f)), Struct_1(false, false, 4294967295u, vec2<f32>(-392f, -424f)), Struct_1(false, true, 16178u, vec2<f32>(-838f, 1983f)), Struct_1(true, false, 28039u, vec2<f32>(3242f, -417f)), Struct_1(true, true, 13843u, vec2<f32>(407f, -325f)), Struct_1(false, true, 1705u, vec2<f32>(407f, -124f)), Struct_1(false, true, 1u, vec2<f32>(-460f, -953f)), Struct_1(false, false, 32322u, vec2<f32>(1189f, 1148f)), Struct_1(false, false, 1u, vec2<f32>(-518f, 2392f)), Struct_1(false, false, 4294967295u, vec2<f32>(-1284f, -106f)));

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = (arg_1.yy | vec2<i32>(~_wgslsmith_div_i32(u_input.a, -1i), -abs(79635i))) ^ ~countOneBits(vec2<i32>(arg_1.x, u_input.a >> (58370u % 32u)));
    global2 = array<Struct_1, 19>();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.d.x, 541f))), -995f)), -1194f, _wgslsmith_sub_i32(-arg_1.x, ~(-1i)) <= u_input.a)), _wgslsmith_f_op_f32(round(-201f))));
    let var_2 = global2[_wgslsmith_index_u32(14847u, 19u)];
    return !(!select(select(select(vec3<bool>(var_2.b, true, false), vec3<bool>(false, var_2.b, false), true), vec3<bool>(global3.a, var_2.b, false), select(false, global0.a, arg_0.b)), !(!vec3<bool>(global0.a, arg_0.a, true)), select(select(vec3<bool>(var_2.b, global3.b, var_2.a), vec3<bool>(global3.a, var_2.a, arg_0.b), global0.b), !vec3<bool>(true, false, global3.a), global0.b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> u32 {
    let var_0 = func_3(global2[_wgslsmith_index_u32(4294967295u, 19u)], max(~vec3<i32>(7335i, 30954i, u_input.a), -vec3<i32>(-2147483647i, _wgslsmith_mod_i32(31827i, -1i), -2147483647i & arg_1.x)), arg_0.c, _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(19402u, 10871u, global0.c)), firstTrailingBit(vec3<u32>(global3.c, 4294967295u, arg_0.c))), 6u)]));
    let var_1 = ~(-max(arg_1.wy & ~arg_1.zz, (arg_1.yx & arg_1.yw) ^ -vec2<i32>(u_input.a, u_input.a)));
    global0 = Struct_1(any(!select(select(vec4<bool>(global0.a, var_0.x, var_0.x, global3.b), vec4<bool>(true, arg_0.a, global0.a, var_0.x), vec4<bool>(arg_0.b, false, true, global0.a)), vec4<bool>(var_0.x, var_0.x, true, arg_0.a), true)), true, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.c, global0.c, global0.c, global0.c), countOneBits(abs(vec4<u32>(arg_0.c, 13017u, 38298u, global3.c)))), vec2<f32>(arg_0.d.x, global3.d.x));
    let var_2 = abs(arg_1) << ((vec4<u32>(global0.c, 60613u, 65172u, select(~arg_0.c, arg_0.c << (arg_0.c % 32u), var_1.x != var_1.x)) >> (vec4<u32>(_wgslsmith_sub_u32(global0.c, select(0u, 4294967295u, false)), global3.c, firstLeadingBit(~arg_0.c), ~(global0.c << (58825u % 32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_3 = _wgslsmith_clamp_u32(max(abs(firstLeadingBit(37042u)), 1u & ~arg_0.c), ~min(~firstLeadingBit(83712u), 0u), ~0u);
    return arg_0.c;
}

fn func_1(arg_0: vec2<i32>) -> bool {
    let var_0 = select(vec3<bool>(~52520u < _wgslsmith_sub_u32(global3.c, func_2(global2[_wgslsmith_index_u32(global3.c, 19u)], vec4<i32>(u_input.a, u_input.a, u_input.a, -47507i), global0.d.x)), global0.b, global3.a & (countOneBits(global0.c) < (74422u >> (global0.c % 32u)))), !vec3<bool>(any(vec2<bool>(false, false)) && (arg_0.x < 53963i), any(vec2<bool>(global3.b, false)), all(func_3(Struct_1(global0.b, true, global0.c, vec2<f32>(global0.d.x, -1000f)), vec3<i32>(u_input.a, arg_0.x, 2147483647i), 2985u, vec4<f32>(global0.d.x, 342f, -1921f, global3.d.x)).yy)), select(func_3(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global3.c, global3.c), 19u)], -_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, -16661i, u_input.a), vec3<i32>(arg_0.x, u_input.a, 2147483647i)), ~17586u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(global3.c, 6u)], vec4<f32>(1463f, 768f, global3.d.x, global3.d.x), global3.b)), vec4<f32>(141f, 240f, -2213f, 960f))), vec3<bool>(false, true, !(!global0.a)), true));
    return !(!var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1210f;
    var var_1 = Struct_1(_wgslsmith_mult_i32(u_input.a, ~(-13746i)) < 2147483647i, false, reverseBits(~global3.c), _wgslsmith_f_op_vec2_f32(-global0.d));
    var_0 = 684f;
    let var_2 = vec2<u32>(~_wgslsmith_sub_u32(~37493u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.c, global3.c), vec2<u32>(var_1.c, 9046u)))), 0u);
    let var_3 = vec4<bool>(!(1592i >= -firstTrailingBit(u_input.a)), !((func_1(vec2<i32>(-2147483647i, u_input.a)) && (global3.a || true)) & func_1(min(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, -1i)))), var_1.b, true);
    global3 = Struct_1(func_3(Struct_1(!var_1.b, true && global3.a, ~4294967295u, var_1.d), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.a), vec3<i32>(u_input.a, 58725i, u_input.a))), ~4294967295u, vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(var_1.d.x * var_1.d.x), global3.d.x, _wgslsmith_f_op_f32(873f + -394f))).x & false, !any(!(!vec4<bool>(false, var_1.a, var_1.b, var_1.b))), abs(1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1659f, global3.d.x) * global0.d) * vec2<f32>(_wgslsmith_f_op_f32(round(global3.d.x)), _wgslsmith_f_op_f32(global3.d.x + global0.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, -(_wgslsmith_div_i32(u_input.a, -10417i) << (~0u % 32u)), -min(firstTrailingBit(abs(vec2<i32>(u_input.a, 24743i))), _wgslsmith_div_vec2_i32(vec2<i32>(47553i, -15187i), vec2<i32>(1i, u_input.a) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)))));
}

