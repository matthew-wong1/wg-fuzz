struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(true);

var<private> global3: f32 = 569f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<bool> {
    global2 = arg_1;
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(min(27656u, min(~68480u, 1u)), u_input.a), u_input.b);
    global1 = arg_1;
    let var_1 = arg_1;
    let var_2 = var_1;
    return vec2<bool>(true, arg_1.a);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = arg_1.a | true;
    global2 = Struct_1(global1.a);
    let var_1 = arg_1;
    global3 = 672f;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-763f, -1000f, -1317f))))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1046f - _wgslsmith_f_op_f32(trunc(1036f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(560f + _wgslsmith_f_op_f32(301f - -828f)) * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) + _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(sign(1272f)))))));
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.a > u_input.b;
    var var_1 = vec2<bool>(!(_wgslsmith_add_u32(u_input.a, u_input.a) != u_input.a), false);
    let var_2 = Struct_1(arg_2.a);
    var var_3 = 1831i;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 124f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-689f, -1712f)), 1000f)));
    return arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = firstTrailingBit(global0.x);
    let var_1 = func_4(!func_2(vec4<u32>(1u, 1u, u_input.b, 1u) | select(vec4<u32>(u_input.a, global0.x, global0.x, global0.x), vec4<u32>(u_input.b, 4294967295u, global0.x, 1u), vec4<bool>(global2.a, false, true, global1.a)), Struct_1(true)), Struct_1(func_3(~(u_input.a >> (u_input.a % 32u)), Struct_1(true))), Struct_1(false));
    global1 = func_4(!vec2<bool>(true, _wgslsmith_div_i32(1438i, 13869i) <= _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, -43544i))), var_1, Struct_1(any(func_2(firstLeadingBit(vec4<u32>(5486u, u_input.a, 94593u, 0u)), Struct_1(false)))));
    let var_2 = func_4(vec2<bool>(global2.a, !(!(!global2.a))), var_1, var_1);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(753f)), _wgslsmith_f_op_f32(min(913f, _wgslsmith_f_op_f32(f32(-1f) * -2590f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -306f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1075f, -1673f, 217f), vec3<f32>(1585f, 128f, 1748f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-161f, -1066f, -1843f), vec3<f32>(730f, -163f, 1515f))), !vec3<bool>(true, false, global1.a))))))));
    return Struct_1(!all(vec4<bool>(global2.a, 0u < u_input.a, !var_1.a, true)));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec2<bool> {
    global0 = ~vec2<u32>(~0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(7664u, global0.x & global0.x), firstTrailingBit(u_input.a)));
    var var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(915f, -1424f), _wgslsmith_f_op_f32(f32(-1f) * -118f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(350f, -725f))) * vec2<f32>(-575f, -673f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(590f, 1000f), vec2<f32>(762f, -339f))))))));
    let var_2 = arg_0;
    global2 = func_1();
    return !(!select(func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 18622u, global0.x, 1u), vec4<u32>(global0.x, u_input.b, 71844u, u_input.a)), Struct_1(false)), func_2(_wgslsmith_add_vec4_u32(vec4<u32>(56196u, global0.x, 0u, 4294967295u), vec4<u32>(5691u, u_input.b, u_input.b, global0.x)), func_1()), false));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec2<f32>(1f, 1f);
    return arg_3;
}

fn func_7(arg_0: u32, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global1 = Struct_1(true);
    var var_0 = -(~vec4<i32>(-_wgslsmith_mult_i32(33724i, 7039i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), countOneBits(vec2<i32>(-14743i, -1i))), -(~2147483647i)));
    let var_1 = arg_3;
    let var_2 = any(select(arg_1, arg_1, arg_1));
    global1 = arg_3;
    return Struct_1(var_1.a);
}

fn func_8(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    global0 = select(~_wgslsmith_clamp_vec2_u32(~arg_0.xz, _wgslsmith_div_vec2_u32(arg_0.zx, vec2<u32>(global0.x, 0u)), vec2<u32>(4294967295u, global0.x)) >> (max(arg_0.wy, arg_0.xz) % vec2<u32>(32u)), min(~_wgslsmith_mod_vec2_u32(arg_0.zx, vec2<u32>(u_input.a, 0u)), abs(_wgslsmith_add_vec2_u32(arg_0.zz, arg_0.xy)) & reverseBits(select(arg_0.xx, vec2<u32>(4294967295u, global0.x), true))), !any(select(vec3<bool>(arg_1.a, arg_1.a, arg_2.a), vec3<bool>(true, true, true), true)));
    var var_0 = arg_1;
    var var_1 = func_4(!(!(!vec2<bool>(global2.a, global2.a))), Struct_1(false), Struct_1(global1.a));
    let var_2 = _wgslsmith_sub_vec3_i32(arg_3.wxw, vec3<i32>(arg_3.x, _wgslsmith_div_i32(0i, arg_3.x & (arg_3.x >> (27809u % 32u))), -arg_3.x));
    var var_3 = arg_1;
    return func_7(u_input.b, vec4<bool>(~max(global0.x, global0.x) != ~(90806u >> (1u % 32u)), min(4294967295u, _wgslsmith_sub_u32(1u, 1u)) != (_wgslsmith_dot_vec2_u32(vec2<u32>(6714u, u_input.b), arg_0.wz) ^ ~global0.x), !arg_1.a, any(vec2<bool>(arg_1.a, !global2.a))), true, Struct_1(true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 1000f;
    global3 = -1984f;
    var var_0 = Struct_1(true);
    let var_1 = func_8(~(~(vec4<u32>(u_input.b, 1u, global0.x, global0.x) >> (~vec4<u32>(global0.x, 4294967295u, 27046u, 11888u) % vec4<u32>(32u)))), func_7(u_input.a, select(vec4<bool>(false, true, global2.a, true), !(!vec4<bool>(global2.a, true, global2.a, var_0.a)), true), true, func_6(func_5(func_1(), -1i, global2.a), func_4(func_5(Struct_1(false), 29171i, global1.a), Struct_1(true), Struct_1(true)), ~u_input.a, func_1())), func_1(), select(vec4<i32>(1i, 1i, 1i, 1i), ~(-(~vec4<i32>(-2147483647i, -4942i, 2147483647i, -1i))), !(!(!vec4<bool>(false, false, global1.a, global2.a)))));
    let var_2 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

