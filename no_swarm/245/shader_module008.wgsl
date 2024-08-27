struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 6> = array<u32, 6>(19653u, 0u, 4294967295u, 4294967295u, 23815u, 0u);

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1265f);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1182f, var_0, -1026f), vec3<f32>(var_0, 993f, var_0)))), vec3<f32>(-214f, _wgslsmith_f_op_f32(step(var_0, 465f)), _wgslsmith_div_f32(var_0, 224f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(117f, 709f, -1000f) * vec3<f32>(197f, -511f, var_0)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, var_0, var_0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, var_0))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1249f, var_0, -518f), vec3<f32>(-740f, var_0, -971f))) + _wgslsmith_div_vec3_f32(vec3<f32>(1165f, -1446f, -793f), vec3<f32>(-518f, 224f, var_0))))));
    let var_2 = select(vec4<bool>(select(~u_input.b, 76377u, !arg_3.x) > ~select(arg_1.a, 61399u, arg_3.x), !(!global2.x), select(false, global2.x, true), !arg_3.x), select(vec4<bool>(select(false, false, false) != !global2.x, true, false, false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(global2.x, false, false, arg_3.x), true), vec4<bool>(true, true, select(false, true, global2.x), global2.x), false), !(!vec4<bool>(global2.x, false, arg_3.x, false))), false);
    global0 = arg_1.b | (firstLeadingBit(~vec4<i32>(u_input.c, 48597i, u_input.c, arg_2.a) << (firstTrailingBit(vec4<u32>(u_input.b, arg_1.a, u_input.b, 2900u)) % vec4<u32>(32u))) & arg_1.b);
    var var_3 = arg_1;
    return select(var_2, select(vec4<bool>(var_2.x, all(vec3<bool>(false, global2.x, false)) & (var_0 < var_0), select(false, -2147483647i < u_input.c, any(global2.zxw)), global2.x), var_2, var_2), var_2);
}

fn func_2() -> Struct_3 {
    global2 = !(!select(!func_3(vec3<i32>(global0.x, 1i, 26052i), Struct_4(27530u, vec4<i32>(u_input.c, 982i, global0.x, u_input.c)), Struct_1(-85999i), vec2<bool>(global2.x, global2.x)), select(select(vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(global2.x, false, false, global2.x), true), vec4<bool>(true, true, true, false), func_3(vec3<i32>(global0.x, -2147483647i, u_input.c), Struct_4(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 6u)], vec4<i32>(1i, global0.x, global0.x, global0.x)), Struct_1(global0.x), vec2<bool>(true, global2.x))), select(!vec4<bool>(true, true, global2.x, global2.x), func_3(vec3<i32>(-73175i, -43338i, -2147483647i), Struct_4(7188u, vec4<i32>(u_input.c, 72916i, global0.x, -2147483647i)), Struct_1(u_input.c), global2.xx), select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(true, global2.x, false, global2.x), vec4<bool>(false, true, true, false)))));
    return Struct_3(Struct_2(Struct_1(reverseBits(-1i)), select(vec4<bool>(true, false != global2.x, all(global2.xzw), !global2.x), !func_3(vec3<i32>(-56792i, -8603i, -1i), Struct_4(52010u, vec4<i32>(-4598i, 0i, -47355i, 1i)), Struct_1(global0.x), global2.yw), false)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_4) -> f32 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(681f, 126f), vec2<f32>(413f, -1085f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-929f, -1362f))), vec2<f32>(541f, -603f))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), -411f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(349f, -309f) - _wgslsmith_f_op_f32(705f - -994f)))));
    var_0 = func_2();
    global2 = !(!vec4<bool>(var_0.a.b.x, var_0.a.b.x, func_3(vec3<i32>(0i, -2147483647i, 1i), arg_2, var_0.a.a, select(var_0.a.b.xy, global2.xz, vec2<bool>(true, false))).x, var_1.x <= var_1.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1422f + var_1.x), var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -939f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-141f - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1733f), -393f, 1283f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1011f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(439f, -1681f)) * 589f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(300f)), -1391f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_4 {
    var var_0 = arg_2;
    let var_1 = Struct_3(Struct_2(Struct_1(i32(-1i) * -20569i), !vec4<bool>(any(var_0.a.b), false | var_0.a.b.x, arg_0.x > 635f, true)));
    global2 = func_2().a.b;
    var var_2 = var_0.a.a.a;
    let var_3 = -vec3<i32>(~20669i, i32(-1i) * -2147483647i, 2147483647i >> (abs(arg_1) % 32u));
    return Struct_4(max(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_1 >> (93072u % 32u), u_input.a), 6u)], ~(~arg_1)), firstTrailingBit(vec4<i32>(arg_3.a, _wgslsmith_clamp_i32(2147483647i, min(arg_3.a, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, var_0.a.a.a, 0i), var_3)), -46997i, _wgslsmith_dot_vec2_i32(global0.xz, reverseBits(vec2<i32>(var_3.x, var_0.a.a.a))))));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_3) -> vec4<bool> {
    global1 = array<u32, 6>();
    let var_0 = func_2().a.a;
    global2 = func_3(vec3<i32>(func_2().a.a.a, 1i, arg_0.b.x), Struct_4((~1u ^ arg_1) | arg_1, vec4<i32>(var_0.a, var_0.a, -22925i << (u_input.a % 32u), arg_0.b.x << ((u_input.b ^ 0u) % 32u))), arg_3.a.a, vec2<bool>(all(arg_3.a.b.zw), true));
    var var_1 = _wgslsmith_f_op_f32(481f - -848f);
    var var_2 = Struct_1(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(arg_3.a.a.a, arg_0.b.x)));
    return vec4<bool>(arg_3.a.b.x, func_3(arg_0.b.yxw, func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2507f, -1000f, -1088f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1644f, -1501f, -1775f, 1000f) + vec4<f32>(-224f, 188f, -1115f, -771f))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 64121u, u_input.a, u_input.a), vec4<u32>(4294967295u, arg_2.x, 96926u, 6911u)), ~arg_1), func_2(), Struct_1(~28454i)), Struct_1(_wgslsmith_mult_i32(0i, 1i)), !arg_3.a.b.zy).x, arg_3.a.b.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(func_4(vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(-389f, 236f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.ww, global2.x, Struct_4(4294967295u, vec4<i32>(-30610i, global0.x, 1859i, global0.x))))), -370f, _wgslsmith_f_op_f32(f32(-1f) * -158f)), ~(~(~4294967295u)), func_2(), Struct_1(_wgslsmith_add_i32(~17861i, _wgslsmith_mod_i32(10420i, 37930i)))), global1[_wgslsmith_index_u32(~(~u_input.b), 6u)], vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], 0u, 1u), Struct_3(Struct_2(Struct_1(_wgslsmith_mod_i32(-2147483647i, 1i)), select(vec4<bool>(false, true, global2.x, false), func_2().a.b, global2.x))));
    var var_0 = Struct_4(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)]), 6u)], 6u)] ^ u_input.b, 39715u), ~(~max(vec4<i32>(global0.x, -13527i, -27702i, u_input.c), vec4<i32>(u_input.c, u_input.c, 2147483647i, global0.x))));
    var var_1 = func_2().a;
    global1 = array<u32, 6>();
    global2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0.a, _wgslsmith_mod_u32(countOneBits(_wgslsmith_div_u32(4294967295u, u_input.a)), u_input.a)));
}

