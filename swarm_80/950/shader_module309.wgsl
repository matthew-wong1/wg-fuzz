struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(i32(-2147483648), 1i, i32(-2147483648), -1i, -10680i, -23889i, 34780i, 2147483647i, i32(-2147483648), 2147483647i, 0i, -1i, -2932i, -8841i, -12097i, 5529i, -1i, -1i, i32(-2147483648), i32(-2147483648), 1i, -64456i, 2147483647i, 37151i, -12416i, i32(-2147483648), -42510i, -55425i, 34398i);

var<private> global1: bool;

var<private> global2: Struct_2;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>) -> vec3<bool> {
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    let var_0 = select(!(!(!(!vec2<bool>(false, global2.a)))), !vec2<bool>(!(!global2.a), all(!vec3<bool>(true, global2.a, true))), false);
    let var_1 = select(select(vec4<bool>(select(true, var_0.x, global2.a), !var_0.x && false, true, var_0.x), !vec4<bool>(false, global2.a, all(vec4<bool>(var_0.x, true, var_0.x, true)), global2.a == false), vec4<bool>(global2.a, !global2.a, any(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(global2.a, false, true, var_0.x), vec4<bool>(true, false, false, global2.a))), global2.a)), select(!(!select(vec4<bool>(var_0.x, var_0.x, global2.a, global2.a), vec4<bool>(var_0.x, false, var_0.x, false), false)), !select(!vec4<bool>(global2.a, false, global2.a, true), !vec4<bool>(false, true, var_0.x, global2.a), vec4<bool>(var_0.x, var_0.x, var_0.x, global2.a)), true), !vec4<bool>(all(vec2<bool>(true, var_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(arg_0.x, 29u)], u_input.a.x, global0[_wgslsmith_index_u32(9587u, 29u)], u_input.a.x), vec4<i32>(global0[_wgslsmith_index_u32(1u, 29u)], 29298i, -11437i, global0[_wgslsmith_index_u32(arg_0.x, 29u)])) > (i32(-1i) * -23587i), true, global2.a || true));
    return vec3<bool>(!var_1.x, global2.a, false);
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: u32) -> u32 {
    global1 = any(vec2<bool>(arg_1, false));
    let var_0 = !func_3(arg_0, vec3<f32>(1f, 1f, 1f));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1130f, -120f)) + vec2<f32>(693f, -301f)), vec2<f32>(1f, 1f), all(vec3<bool>(true, true, true))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(177f, -1457f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(104f, -3272f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-833f, 1188f))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -706f), _wgslsmith_div_f32(833f, 321f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -362f) * _wgslsmith_f_op_f32(f32(-1f) * -179f)))));
    global2 = Struct_2(arg_1);
    global2 = Struct_2(true);
    return arg_0.x;
}

fn func_4(arg_0: i32, arg_1: u32) -> Struct_2 {
    global0 = array<i32, 29>();
    var var_0 = !(!(!func_3(~vec4<u32>(49469u, 1u, arg_1, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(352f, 1378f, -663f))).yx));
    global0 = array<i32, 29>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1630f, 1480f) - vec2<f32>(-824f, -1475f))) + vec2<f32>(1f, 1f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(371f, -413f), vec2<f32>(-732f, 1293f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(409f, 1956f), -355f))));
    global2 = Struct_2(all(select(vec4<bool>(true, true, global2.a, true), select(!vec4<bool>(true, false, global2.a, false), vec4<bool>(true, global2.a, true, global2.a), !vec4<bool>(global2.a, var_0.x, true, var_0.x)), vec4<bool>(func_3(vec4<u32>(arg_1, 9136u, arg_1, 1u), vec3<f32>(var_1.x, -1000f, 633f)).x, var_0.x, false, true))));
    return Struct_2(true);
}

fn func_1() -> vec4<i32> {
    var var_0 = u_input.a;
    var var_1 = func_4(2147483647i, _wgslsmith_clamp_u32(~(_wgslsmith_clamp_u32(1u, 30724u, 82806u) & 21994u), _wgslsmith_mod_u32(~1u, 1u), func_2(firstTrailingBit(vec4<u32>(0u, 1645u, 32891u, 0u)), false, 1u)));
    let var_2 = Struct_3(true, max(1u, ~21935u), !any(!select(vec2<bool>(true, false), vec2<bool>(false, var_1.a), global2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(215f * 2098f), !var_1.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1373f)), _wgslsmith_f_op_f32(416f - 234f), -2147483647i < var_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -721f))));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.d)));
    return abs(_wgslsmith_mod_vec4_i32(-min(abs(vec4<i32>(-35953i, global0[_wgslsmith_index_u32(var_2.b, 29u)], global0[_wgslsmith_index_u32(27395u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), _wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_2.b, 29u)], var_0.x, global0[_wgslsmith_index_u32(var_2.b, 29u)], -39535i), vec4<i32>(0i, global0[_wgslsmith_index_u32(577u, 29u)], -5368i, -13271i))), min(-vec4<i32>(-5443i, global0[_wgslsmith_index_u32(20794u, 29u)], 1i, 33756i) << (~vec4<u32>(1u, var_2.b, 3325u, var_2.b) % vec4<u32>(32u)), ~(vec4<i32>(-1i, var_0.x, 1347i, global0[_wgslsmith_index_u32(1u, 29u)]) & vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(var_2.b, 29u)], -8157i, global0[_wgslsmith_index_u32(1u, 29u)])))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_1(vec3<u32>(7828u, arg_3, arg_3), _wgslsmith_clamp_i32(func_1().x, u_input.a.x, 0i), true, vec3<u32>(arg_3, 42569u, ~arg_3));
    global2 = arg_0;
    let var_1 = !select(vec3<bool>(true, true, true), select(!vec3<bool>(true, var_0.c, arg_0.a), vec3<bool>(var_0.c, true, false), true), !global2.a);
    let var_2 = reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, abs(1u), arg_3, ~_wgslsmith_sub_u32(13596u, 9883u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(170u, 1u, 25703u, var_0.d.x), vec4<u32>(18651u, 4294967295u, 0u, arg_3)) & ~vec4<u32>(var_0.d.x, var_0.d.x, 0u, arg_3), _wgslsmith_div_vec4_u32(vec4<u32>(23272u, arg_3, arg_3, 4162u), ~vec4<u32>(0u, arg_3, 0u, 1u)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-565f, 1000f, 692f), vec3<f32>(3695f, -573f, 1000f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(464f, 109f, 791f), vec3<f32>(826f, -928f, -1086f)))), vec3<f32>(-371f, _wgslsmith_div_f32(1051f, -288f), _wgslsmith_f_op_f32(-467f - -100f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1134f, 365f, 998f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1074f, 151f, 585f)))))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-420f + _wgslsmith_f_op_f32(select(-274f, -1000f, global2.a)))), 926f, _wgslsmith_f_op_f32(max(-817f, _wgslsmith_f_op_f32(f32(-1f) * -623f)))));
    return func_4(-33147i, ~3852u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global2.a);
    global2 = func_5(Struct_2(false), _wgslsmith_add_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(43023u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], 0i, global0[_wgslsmith_index_u32(1u, 29u)]) & vec4<i32>(_wgslsmith_add_i32(1i, 1i), u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), -7294i), _wgslsmith_mult_vec4_i32(-vec4<i32>(1i, 1i, global0[_wgslsmith_index_u32(0u, 29u)], 1i) | (vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -3726i) | vec4<i32>(27569i, global0[_wgslsmith_index_u32(59188u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 8697i, u_input.a.x, u_input.a.x), vec4<i32>(-27895i, u_input.a.x, global0[_wgslsmith_index_u32(12002u, 29u)], u_input.a.x)) ^ func_1())), ~u_input.a.yy, _wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(select(1u, 22720u, var_0.a), max(select(24432u, 50226u, false), 0u))));
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(54511u, 19039u), vec2<u32>(4294967295u, 4294967295u)), ~1u), _wgslsmith_mod_vec3_u32(abs(~vec3<u32>(4294967295u, 1u, 51370u)), reverseBits(vec3<u32>(1u, 1u, 1u))), countOneBits(reverseBits(vec3<u32>(1u, 1u, 1u)))), 8935i, global2.a, min(select(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), max(~vec3<u32>(109971u, 0u, 42446u), _wgslsmith_add_vec3_u32(vec3<u32>(70444u, 61466u, 451u), vec3<u32>(25547u, 4922u, 8777u))), func_3(select(vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(1u, 35814u, 27066u, 4294967295u), global2.a), vec3<f32>(-2809f, -257f, -146f))), vec3<u32>(39310u, _wgslsmith_mod_u32(~67315u, 37226u), 1u)));
    var_0 = Struct_2(select(global2.a, var_0.a, global2.a));
    let var_2 = ~countOneBits(~vec4<u32>(var_1.d.x, 0u, var_1.a.x, var_1.d.x) << (vec4<u32>(_wgslsmith_div_u32(44065u, var_1.a.x), max(var_1.a.x, var_1.a.x), ~4294967295u, _wgslsmith_mult_u32(var_1.a.x, var_1.a.x)) % vec4<u32>(32u)));
    let var_3 = i32(-1i) * -2572i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-518f, 329f), vec2<f32>(-1853f, -1023f)))))))), -_wgslsmith_add_i32(-2147483647i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<i32>(var_3, -2147483647i, global0[_wgslsmith_index_u32(var_1.d.x, 29u)])))), ~(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.yy, var_1.d.zz), vec2<u32>(1u, 1403u))));
}

