struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec2<f32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<bool>(false, false), vec2<i32>(24560i, 0i), vec2<u32>(0u, 0u)), Struct_1(vec2<bool>(true, false), vec2<i32>(1i, 56011i), vec2<u32>(3970u, 0u)), Struct_1(vec2<bool>(true, true), vec2<i32>(4909i, i32(-2147483648)), vec2<u32>(73453u, 39377u)), Struct_1(vec2<bool>(true, false), vec2<i32>(4162i, -37678i), vec2<u32>(4294967295u, 78627u)), Struct_1(vec2<bool>(false, false), vec2<i32>(2147483647i, 20922i), vec2<u32>(95256u, 1499u)), Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, 12888i), vec2<u32>(43299u, 4294967295u)), Struct_1(vec2<bool>(true, true), vec2<i32>(-68101i, 6878i), vec2<u32>(10548u, 15140u)), Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, 0i), vec2<u32>(4294967295u, 44995u)), Struct_1(vec2<bool>(true, false), vec2<i32>(0i, -1198i), vec2<u32>(1277u, 27570u)), Struct_1(vec2<bool>(false, false), vec2<i32>(9394i, 2147483647i), vec2<u32>(26079u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec2<i32>(20293i, 2147483647i), vec2<u32>(1u, 0u)), Struct_1(vec2<bool>(false, true), vec2<i32>(-6659i, i32(-2147483648)), vec2<u32>(1u, 0u)), Struct_1(vec2<bool>(true, false), vec2<i32>(-27216i, 1545i), vec2<u32>(40290u, 78569u)), Struct_1(vec2<bool>(true, true), vec2<i32>(4950i, 0i), vec2<u32>(25512u, 0u)), Struct_1(vec2<bool>(true, true), vec2<i32>(i32(-2147483648), -1i), vec2<u32>(1u, 9046u)), Struct_1(vec2<bool>(false, false), vec2<i32>(-37904i, 31907i), vec2<u32>(44224u, 17747u)), Struct_1(vec2<bool>(true, true), vec2<i32>(0i, -1i), vec2<u32>(4294967295u, 45143u)), Struct_1(vec2<bool>(false, false), vec2<i32>(29043i, -6113i), vec2<u32>(1u, 1u)), Struct_1(vec2<bool>(true, true), vec2<i32>(0i, -49564i), vec2<u32>(0u, 0u)), Struct_1(vec2<bool>(true, true), vec2<i32>(-29696i, -2688i), vec2<u32>(4648u, 1u)), Struct_1(vec2<bool>(true, true), vec2<i32>(2147483647i, -17986i), vec2<u32>(1u, 0u)), Struct_1(vec2<bool>(false, true), vec2<i32>(3127i, 39996i), vec2<u32>(4294967295u, 1u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -355f), _wgslsmith_f_op_f32(f32(-1f) * -283f), false)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -715f) + _wgslsmith_f_op_f32(f32(-1f) * -373f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(440f + 769f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1949f - 1000f)) * 102f));
    var var_1 = 0i;
    var var_2 = 0u;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1064f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-182f - -1360f))) + _wgslsmith_f_op_f32(abs(var_0.x))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -280f), -471f, var_0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(158f, -1000f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, -1227f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-751f, 1000f, var_3) - vec3<f32>(var_0.x, -612f, -1049f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, var_0.x, var_3) + vec3<f32>(var_0.x, var_0.x, -925f)))))));
    return var_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: f32) -> Struct_5 {
    var var_0 = Struct_1(select(vec2<bool>(arg_0.a.x, false), !arg_1, true), ~arg_2 << (vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 25003u, 66827u, u_input.a), vec4<u32>(u_input.c, u_input.a, 4294967295u, u_input.c), arg_1.x), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c.x, 0u, u_input.a, 32906u), vec4<u32>(19506u, arg_0.c.x, 43791u, 4294967295u))), ~(~arg_0.c.x)) % vec2<u32>(32u)), ~vec2<u32>(arg_0.c.x | arg_0.c.x, abs(_wgslsmith_div_u32(1u, 4015u))));
    let var_1 = Struct_4(!vec3<bool>(!(arg_0.a.x && false), arg_0.a.x, true), Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.x, var_0.b.x, u_input.d) << (~vec3<u32>(u_input.a, var_0.c.x, u_input.c) % vec3<u32>(32u)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 2147483647i, arg_2.x), vec3<i32>(var_0.b.x, 2834i, -2147483647i)), vec3<i32>(arg_2.x, arg_2.x, u_input.d), var_0.a.x)), vec3<u32>(~(~37063u), countOneBits(~arg_0.c.x), ~(~var_0.c.x)), global1[_wgslsmith_index_u32(1u, 22u)], u_input.c, ~vec2<u32>(1u, arg_0.c.x >> (20342u % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(arg_3 * arg_3), 1f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(sign(-1701f)))));
    let var_2 = Struct_1(!vec2<bool>(!var_0.a.x, select(true, !arg_1.x, all(vec4<bool>(false, var_1.b.c.a.x, true, var_1.b.c.a.x)))), _wgslsmith_mult_vec2_i32(select(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -1i), firstTrailingBit(arg_2.x)), countOneBits(vec2<i32>(-21613i, var_0.b.x)), false), vec2<i32>(~var_0.b.x, 2147483647i & abs(var_1.b.c.b.x))), select(~arg_0.c, ~(~(~vec2<u32>(1u, var_1.b.d))), vec2<bool>(all(!vec4<bool>(true, var_0.a.x, var_0.a.x, arg_1.x)), true)));
    let var_3 = Struct_4(var_1.a, var_1.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(var_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(785f, var_1.c.x)) - var_1.c) + vec2<f32>(_wgslsmith_f_op_f32(sign(arg_3)), _wgslsmith_f_op_f32(min(arg_3, 1031f)))))));
    var var_4 = ~_wgslsmith_div_u32(1u, ~abs(min(var_1.b.e.x, u_input.c)));
    return Struct_5(false);
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(0u, 1u, u_input.c)), ~vec3<u32>(0u, 12997u, 58957u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.c, 0u), vec3<u32>(21854u, u_input.a, u_input.a))), vec3<u32>(~u_input.c, abs(1u), u_input.a), ~vec3<u32>(u_input.a, 0u, u_input.c) & select(vec3<u32>(4294967295u, 9551u, 17515u), vec3<u32>(4294967295u, 20954u, u_input.a), vec3<bool>(false, arg_2.x, false))) | ~vec3<u32>(u_input.a, min(77908u, u_input.a) >> (u_input.c % 32u), u_input.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f));
    global1 = array<Struct_1, 22>();
    global0 = array<Struct_1, 30>();
    var var_2 = var_0.xy;
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c, _wgslsmith_div_u32(5962u, _wgslsmith_mult_u32(u_input.a, 5826u))), 30u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = vec2<bool>(true, true);
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_1 = func_4(var_0.x, func_2(Struct_1(vec2<bool>(true, arg_1.x < arg_1.x), _wgslsmith_div_vec2_i32(vec2<i32>(-54095i, -53265i), -vec2<i32>(arg_2.x, arg_2.x)), countOneBits(arg_3.c) << (select(arg_0.yx, vec2<u32>(arg_3.c.x, arg_0.x), false) % vec2<u32>(32u))), !arg_3.a, min(~vec2<i32>(43944i, arg_3.b.x), _wgslsmith_sub_vec2_i32(arg_3.b, arg_3.b)) << (vec2<u32>(~u_input.a, ~67946u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(1193f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) + _wgslsmith_f_op_f32(exp2(arg_1.x))))), select(!vec2<bool>(false, !arg_3.a.x), vec2<bool>(false, any(vec2<bool>(var_0.x, true))), select(vec2<bool>(true, true), !vec2<bool>(arg_3.a.x, arg_3.a.x), arg_3.a)));
    global0 = array<Struct_1, 30>();
    return _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-arg_1.x), !var_0.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec3<u32>(15400u, 4294967295u, u_input.c), _wgslsmith_div_vec4_f32(vec4<f32>(-158f, -557f, -428f, 307f), vec4<f32>(1190f, -853f, 179f, 265f)), ~vec3<i32>(18592i, u_input.d, -2147483647i), global0[_wgslsmith_index_u32(1u, 30u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-308f)) + 1000f), false))), min(reverseBits(2592u), _wgslsmith_div_u32(u_input.c, u_input.c)), func_4(_wgslsmith_f_op_f32(func_3()) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1358f)) - 736f), Struct_5(all(vec4<bool>(false, true, true, true))), !select(vec2<bool>(true, true), func_4(true, Struct_5(false), vec2<bool>(true, true)).a, true)));
    var var_1 = vec3<bool>(var_0.c.a.x && true, var_0.c.a.x, func_2(func_4(any(var_0.c.a), Struct_5(false), var_0.c.a), select(var_0.c.a, vec2<bool>(var_0.c.a.x, var_0.c.a.x), var_0.c.a), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.c.b, var_0.c.b), var_0.c.b, vec2<i32>(2147483647i, 2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<u32>(4294967295u, 38820u, 17624u), vec4<f32>(720f, var_0.a, 513f, var_0.a), vec3<i32>(33615i, 0i, 18255i), Struct_1(var_0.c.a, vec2<i32>(u_input.d, -1i), var_0.c.c))) - _wgslsmith_f_op_f32(floor(-2395f)))).a & (!all(vec4<bool>(true, var_0.c.a.x, false, false)) | var_0.c.a.x));
    global1 = array<Struct_1, 22>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-887f, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-var_0.a))) * _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a - var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -582f))))), _wgslsmith_f_op_f32(f32(-1f) * -1297f), -391f);
    var var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(u_input.c, var_0.c.c.x, var_0.b, u_input.c)), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(51734u, u_input.a, 30824u, 36578u), vec4<u32>(var_0.b, 4294967295u, var_0.b, 16758u), vec4<u32>(var_0.c.c.x, 0u, 0u, 45893u)))), vec4<u32>(~(u_input.a ^ 12358u), 1u, ~max(var_0.c.c.x, 82964u), _wgslsmith_sub_u32(u_input.a, max(var_0.c.c.x, 0u)))) >> (min(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, u_input.c, 1u, 20397u), ~vec4<u32>(var_0.c.c.x, 7786u, var_0.c.c.x, u_input.c)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 50660u, u_input.a), vec4<u32>(var_0.c.c.x, var_0.c.c.x, 34647u, u_input.c))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(23405u, var_0.b), var_0.b), max(_wgslsmith_add_u32(var_0.b, 4294967295u), ~u_input.c), 1u, u_input.a)) % vec4<u32>(32u));
    var var_4 = var_0;
    let var_5 = var_0;
    let var_6 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, -1000f)))), vec2<f32>(var_0.a, var_4.a))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_5.c.b.x, -45429i), vec3<i32>(var_5.c.b.x, u_input.b, 43850i)) ^ var_4.c.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-497f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1777f, 900f))), _wgslsmith_f_op_f32(-var_6.x))), _wgslsmith_mod_vec4_i32(-(~(-vec4<i32>(var_5.c.b.x, 20127i, var_5.c.b.x, 2147483647i))), -vec4<i32>(var_0.c.b.x, -8147i, 6975i, 0i ^ var_0.c.b.x)), vec3<i32>(u_input.d, _wgslsmith_add_i32(var_4.c.b.x, var_0.c.b.x), i32(-1i) * -select(2147483647i, var_4.c.b.x, false)));
}

