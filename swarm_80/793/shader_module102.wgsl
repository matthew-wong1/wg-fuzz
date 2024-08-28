struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec2<i32>(32270i, -1i), Struct_1(1593f, vec4<f32>(-275f, 507f, -113f, 1043f))), Struct_2(vec2<i32>(9523i, -74830i), Struct_1(292f, vec4<f32>(1686f, 1250f, -636f, -529f))), Struct_2(vec2<i32>(0i, 27634i), Struct_1(1508f, vec4<f32>(178f, -1116f, 1010f, 760f))), Struct_2(vec2<i32>(i32(-2147483648), 11023i), Struct_1(-701f, vec4<f32>(-440f, 1596f, -1000f, 1174f))), Struct_2(vec2<i32>(-53723i, 26813i), Struct_1(2547f, vec4<f32>(-537f, -1012f, -177f, -1431f))), Struct_2(vec2<i32>(33334i, 2147483647i), Struct_1(1040f, vec4<f32>(-622f, -1604f, 147f, 1000f))), Struct_2(vec2<i32>(i32(-2147483648), 4368i), Struct_1(-177f, vec4<f32>(-2543f, -358f, 1047f, -1029f))), Struct_2(vec2<i32>(-10562i, 2147483647i), Struct_1(-842f, vec4<f32>(-666f, -1000f, 331f, 2124f))), Struct_2(vec2<i32>(1440i, 2147483647i), Struct_1(-527f, vec4<f32>(-1099f, 222f, 225f, -1000f))), Struct_2(vec2<i32>(-33319i, 12539i), Struct_1(198f, vec4<f32>(123f, -1236f, -902f, 345f))), Struct_2(vec2<i32>(-3458i, i32(-2147483648)), Struct_1(149f, vec4<f32>(1326f, 1622f, -403f, 232f))), Struct_2(vec2<i32>(16227i, 16157i), Struct_1(-1690f, vec4<f32>(1507f, -1875f, 2308f, 1957f))), Struct_2(vec2<i32>(-26220i, -1i), Struct_1(-1489f, vec4<f32>(879f, -460f, 1081f, 268f))), Struct_2(vec2<i32>(2147483647i, 2147483647i), Struct_1(-1988f, vec4<f32>(-1254f, -1027f, -1000f, 1103f))), Struct_2(vec2<i32>(-1i, 1i), Struct_1(605f, vec4<f32>(-473f, -1109f, -365f, -202f))), Struct_2(vec2<i32>(-5502i, 0i), Struct_1(-1032f, vec4<f32>(-1616f, 334f, 127f, 607f))), Struct_2(vec2<i32>(2147483647i, 55699i), Struct_1(380f, vec4<f32>(-1241f, 706f, 229f, 1000f))), Struct_2(vec2<i32>(50325i, 0i), Struct_1(-764f, vec4<f32>(1312f, 336f, 1000f, -881f))), Struct_2(vec2<i32>(-48160i, 17608i), Struct_1(721f, vec4<f32>(930f, -979f, 1000f, 1000f))), Struct_2(vec2<i32>(i32(-2147483648), -7608i), Struct_1(-631f, vec4<f32>(-1220f, -793f, -1000f, 385f))));

var<private> global1: vec2<i32>;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(1731f, vec4<f32>(-1000f, -301f, -189f, -261f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec4<bool>) -> vec4<f32> {
    var var_0 = Struct_1(926f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1084f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global2.a)), global3.b.x, arg_0)), -1976f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(143f)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3.b.x)), _wgslsmith_f_op_f32(min(global2.b.x, -483f))), _wgslsmith_f_op_f32(floor(-925f)), 1f, 339f)));
    global1 = countOneBits(abs(-u_input.c)) & vec2<i32>(abs(1i), select(countOneBits(~453i), global1.x, true));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_mult_i32(i32(-1i) * -2531i, -global1.x & _wgslsmith_add_i32(u_input.d, global1.x & 1i)), abs(_wgslsmith_mod_i32(global1.x, 2147483647i)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-global2.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(-467f - var_0.a)))), var_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) * var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1033f)))));
    let var_3 = -1612f;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * _wgslsmith_f_op_f32(abs(var_3))), var_3, _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.b * var_0.b) * vec4<f32>(-2671f, var_3, -928f, 770f)))))), _wgslsmith_f_op_vec4_f32(min(var_2.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-551f)), global3.b.x, _wgslsmith_f_op_f32(ceil(var_0.a)), -1000f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(955f, global3.b.x, -170f, 2964f)) - _wgslsmith_f_op_vec4_f32(min(global3.b, vec4<f32>(291f, global2.a, 696f, -696f))))))));
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_2, 20>();
    let var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(func_3(false, countOneBits(_wgslsmith_div_u32(u_input.b.x, 4294967295u)), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true))));
    let var_1 = select(vec4<bool>(any(vec2<bool>(false, true)), false, any(vec4<bool>(true, true, false, true)), true & (var_0.b.x <= _wgslsmith_f_op_f32(-var_0.b.x))), vec4<bool>(all(vec2<bool>(true, true)), !(u_input.c.x < _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, global1.x), vec2<i32>(global1.x, u_input.a))), !(_wgslsmith_f_op_f32(f32(-1f) * -845f) <= _wgslsmith_f_op_f32(-var_0.a)), !any(vec3<bool>(true, true, true))), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))) || all(vec2<bool>(true, true)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-global2.b.x)))) + -1476f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1192f)))), global2.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-738f)), _wgslsmith_f_op_f32(max(var_0.b.x, -617f)), any(vec4<bool>(false, false, var_1.x, false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-701f, 2199f)), _wgslsmith_f_op_f32(ceil(1000f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, _wgslsmith_f_op_f32(max(1045f, var_0.a)), _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1421f)))));
    let var_3 = abs(min(vec3<u32>(~12168u, _wgslsmith_add_u32(19853u, u_input.b.x), _wgslsmith_add_u32(~u_input.b.x, ~u_input.b.x)), ((vec3<u32>(u_input.b.x, 4294967295u, 62850u) ^ vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) >> (~vec3<u32>(4294967295u, 4294967295u, 58283u) % vec3<u32>(32u))) << (vec3<u32>(44783u, min(4294967295u, u_input.b.x), 0u) % vec3<u32>(32u))));
    return Struct_3(var_0);
}

fn func_1(arg_0: u32) -> vec2<u32> {
    let var_0 = func_2();
    var var_1 = countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.b, vec2<u32>(18090u, arg_0)), firstTrailingBit(vec2<u32>(arg_0, 57115u)))) | ~max(4294967295u, ~firstLeadingBit(3747u));
    let var_2 = -4406i;
    var var_3 = select(all(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), false))), all(vec2<bool>(true, true)), true);
    var var_4 = _wgslsmith_f_op_f32(-2378f + global3.a);
    return select(u_input.b, max(firstLeadingBit(vec2<u32>(arg_0, 1u)) >> (vec2<u32>(1u, arg_0) % vec2<u32>(32u)), min(u_input.b << (firstLeadingBit(vec2<u32>(u_input.b.x, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(~arg_0, _wgslsmith_add_u32(22384u, 40321u)))), select(vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, u_input.b.x, u_input.b.x), vec4<u32>(arg_0, 0u, 1u, u_input.b.x)) > 4294967295u, true), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), !select(vec2<bool>(true, false), vec2<bool>(true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, _wgslsmith_f_op_f32(-465f * _wgslsmith_f_op_f32(f32(-1f) * -705f))));
    var var_1 = any(!(!vec4<bool>(any(vec3<bool>(false, true, false)), false, true, false)));
    let var_2 = !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, false))), false));
    global1 = min(u_input.c, _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, global1.x)) << (func_1(1u) % vec2<u32>(32u)), firstTrailingBit(u_input.c)) ^ min(-vec2<i32>(-2147483647i, global1.x) ^ abs(u_input.c), abs(_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(global1.x, u_input.d)))));
    var var_3 = ~abs(select(firstLeadingBit(abs(vec4<u32>(u_input.b.x, u_input.b.x, 72390u, 4294967295u))), ~reverseBits(vec4<u32>(57543u, 30232u, u_input.b.x, u_input.b.x)), vec4<bool>(!var_2.x, true, !var_2.x, var_2.x || false)));
    let var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f) - _wgslsmith_f_op_f32(trunc(global2.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-540f, global3.b.x)))));
}

