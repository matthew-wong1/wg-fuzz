struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_4;

var<private> global2: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(254f, -941f, 1000f, -880f), vec4<f32>(-944f, -1448f, -1069f, 1000f), vec4<f32>(-188f, -169f, -530f, -1000f), vec4<f32>(-407f, -932f, 1981f, -1000f), vec4<f32>(-385f, -683f, 3269f, 2633f), vec4<f32>(807f, -1053f, 612f, 795f), vec4<f32>(-1058f, 724f, -1943f, -384f), vec4<f32>(-849f, 2062f, 301f, 781f), vec4<f32>(-1000f, -139f, 570f, -782f), vec4<f32>(114f, 840f, 164f, -1331f), vec4<f32>(1991f, -574f, 1290f, 1647f), vec4<f32>(254f, -491f, 204f, 364f), vec4<f32>(1391f, -646f, 1436f, -277f), vec4<f32>(607f, -1217f, 1000f, 109f), vec4<f32>(858f, -991f, -525f, 263f), vec4<f32>(1073f, 204f, 1000f, 649f), vec4<f32>(188f, 632f, 1233f, -884f), vec4<f32>(1132f, 1000f, -708f, 2584f), vec4<f32>(627f, -1770f, -1116f, 402f), vec4<f32>(-1000f, 1330f, 315f, -948f), vec4<f32>(-127f, -2624f, 1000f, 1126f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: f32) -> f32 {
    global0 = vec2<i32>(-37911i, u_input.b.x);
    global1 = Struct_4(global1.a, -_wgslsmith_clamp_vec4_i32(global1.b, countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(13482i, 23680i, global1.b.x, 2441i), vec4<i32>(arg_0.d.x, 24792i, -48235i, global1.a.c))), _wgslsmith_clamp_vec4_i32(global1.b | vec4<i32>(9932i, arg_1.x, 2147483647i, 39776i), vec4<i32>(arg_0.d.x, global0.x, arg_0.a.b, global1.a.b), _wgslsmith_mult_vec4_i32(global1.b, global1.b))));
    var var_0 = _wgslsmith_div_f32(-589f, 358f) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1814f))));
    var var_1 = firstLeadingBit(vec2<u32>(~u_input.c, 33853u & abs(reverseBits(u_input.d.x))));
    var var_2 = Struct_5(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.b.x, 0i), select(vec2<i32>(264i, arg_1.x), vec2<i32>(global0.x, u_input.e), arg_0.b.b.x)) & u_input.b), arg_2, vec3<i32>(global0.x, firstLeadingBit(_wgslsmith_mod_i32(~global0.x, arg_0.a.b)), 18371i), !(arg_0.b.b.x | any(vec3<bool>(arg_0.b.b.x, arg_0.b.b.x, true))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(465f, arg_0.c.a.x, true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1616f + -180f) * 1698f))), arg_2, true));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<u32>) -> vec4<f32> {
    let var_0 = Struct_4(Struct_1(global1.a.a, global0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(6945i, -1i, 10104i), global1.b.xxz, vec3<i32>(20109i, -1i, global0.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, 1i, u_input.b.x) | vec3<i32>(-1i, u_input.b.x, 65617i), global1.b.wxw))), _wgslsmith_mod_vec4_i32(vec4<i32>(8649i, ~0i, -23159i, 2147483647i), ~(-vec4<i32>(u_input.e, global0.x, global1.a.c, 1i))) >> (u_input.a % vec4<u32>(32u)));
    let var_1 = firstLeadingBit(global1.b.wx);
    global0 = vec2<i32>(1i, var_0.b.x) >> (~select(vec2<u32>(arg_0.x & 89559u, 73753u & arg_2.x), ~u_input.d.wz, true) % vec2<u32>(32u));
    global1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1713f)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-341f, arg_1, var_2, 1595f), _wgslsmith_f_op_vec4_f32(-var_0.a.a), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true)))))), vec4<f32>(global1.a.a.x, var_2, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.a.a.x, -689f), _wgslsmith_f_op_f32(var_0.a.a.x + -834f)))), -734f));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = ~vec2<u32>(select(u_input.d.x, arg_1, all(vec3<bool>(arg_0.b.x, arg_0.b.x, true))) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(62438u, 4294967295u), vec2<u32>(u_input.c, u_input.a.x)) << (u_input.c % 32u)) % 32u), 1u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.a.x, -256f) - arg_0.a) * arg_0.a) + _wgslsmith_f_op_f32(-813f * _wgslsmith_f_op_f32(f32(-1f) * -786f))));
    var var_2 = -global1.b.xyz;
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(func_4(u_input.d.ww, _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(func_3(Struct_3(global1.a, arg_0, Struct_1(global1.a.a, var_2.x, 0i), vec3<i32>(-2147483647i, -2147483647i, -45124i)), var_2.xy, -327f))), max(vec2<u32>(arg_1, 0u) >> (var_0 % vec2<u32>(32u)), var_0))), select(~global0.x, ~abs(var_2.x), arg_0.b.x), var_2.x), Struct_2(_wgslsmith_f_op_f32(-arg_0.a), arg_0.b), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(489f, global1.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1627f), global1.a.a.x) * _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.a.x, arg_0.a, 1400f, 616f), vec4<f32>(882f, arg_0.a, arg_0.a, 2269f))), 1i, -2147483647i), global1.b.wwy);
    let var_4 = Struct_5(select(countOneBits(u_input.b), var_3.d.xy, all(vec4<bool>(false, var_3.b.b.x, true, false))) >> (vec2<u32>(1u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(36340u, 44986u)), select(vec2<u32>(31470u, 1u), u_input.a.yx, true))) % vec2<u32>(32u)), var_3.b.a, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 3182i) ^ var_3.d.yx, vec2<i32>(1i, u_input.e)) << (_wgslsmith_clamp_u32(64205u, ~arg_1, arg_1) % 32u), -45205i, _wgslsmith_mod_i32(global1.a.c, ~var_3.c.b << (60171u % 32u))), var_3.b.b.x);
    return var_3.b;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_5(_wgslsmith_add_vec2_i32(u_input.b, reverseBits(max(vec2<i32>(28628i, global1.a.c), vec2<i32>(-15290i, 1i)))), arg_3.a, reverseBits(global1.b.wxx) & global1.b.zyy, true || all(vec2<bool>(all(vec3<bool>(arg_3.b.x, arg_3.b.x, true)), arg_2 == arg_2)));
    var var_1 = Struct_5(u_input.b, var_0.b, countOneBits(vec3<i32>(-4892i, ~(-85363i), ~0i)), ~arg_1 < countOneBits(_wgslsmith_dot_vec4_i32(-global1.b, -global1.b)));
    let var_2 = -_wgslsmith_mult_vec3_i32(-vec3<i32>(i32(-1i) * -2147483647i, global1.a.b, firstLeadingBit(arg_1)), firstTrailingBit(~var_1.c));
    var var_3 = 266f;
    var var_4 = reverseBits(firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.d, u_input.a)));
    return _wgslsmith_clamp_i32(15814i, 2147483647i, ~_wgslsmith_add_i32(~(-7281i), global0.x));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> i32 {
    global2 = array<vec4<f32>, 21>();
    global1 = Struct_4(global1.a, vec4<i32>(-1i, func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1312f)), reverseBits(abs(-1i)), u_input.d.x, func_2(arg_0.b, _wgslsmith_clamp_u32(u_input.c, 0u, 1u))), ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, arg_0.a.c), _wgslsmith_sub_i32(global1.a.c, -2616i)), ~_wgslsmith_dot_vec2_i32(global1.b.yw, ~global1.b.zy)));
    global1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(sign(global1.a.a)), global0.x, 2147483647i), _wgslsmith_mult_vec4_i32(global1.b, _wgslsmith_add_vec4_i32(firstLeadingBit(global1.b), _wgslsmith_mod_vec4_i32(global1.b, _wgslsmith_mod_vec4_i32(global1.b, global1.b)))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global1.a.a * vec4<f32>(global1.a.a.x, 607f, global1.a.a.x, arg_0.a.a.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(908f, arg_0.c.a.x, arg_0.b.a, global1.a.a.x))) - arg_0.a.a)), arg_1, 1i);
    return ~func_5(_wgslsmith_f_op_f32(-146f * _wgslsmith_f_op_f32(abs(var_0.a.x))), _wgslsmith_div_i32(-(~var_0.c), -12141i), ~_wgslsmith_sub_u32(1u, firstTrailingBit(u_input.d.x)), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2145f;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(359f, 403f, _wgslsmith_f_op_f32(global1.a.a.x - _wgslsmith_f_op_f32(-global1.a.a.x))) - vec3<f32>(-754f, 455f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a.a.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1429f, global1.a.a.x, global1.a.a.x))))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.a.a.x, _wgslsmith_f_op_f32(exp2(global1.a.a.x)), _wgslsmith_f_op_f32(sign(global1.a.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.a.wwy) * vec3<f32>(global1.a.a.x, -223f, -1000f))))));
    var var_2 = global1.b;
    var var_3 = vec4<i32>(_wgslsmith_sub_i32(-firstLeadingBit(u_input.e), func_1(Struct_3(global1.a, Struct_2(global1.a.a.x, vec2<bool>(false, true)), global1.a, global1.b.xxx), u_input.e)), _wgslsmith_clamp_i32(min(1355i | global1.a.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 39704i), vec2<i32>(12819i, var_2.x))), -(~(-50206i)), i32(-1i) * -70502i), 1246i, var_2.x) & (select(global1.b << (vec4<u32>(0u, 4294967295u, 13341u, 31967u) % vec4<u32>(32u)), select(vec4<i32>(global0.x, global0.x, global0.x, 5722i), vec4<i32>(var_2.x, global0.x, global1.a.c, 16160i), vec4<bool>(true, true, true, true)), vec4<bool>(false, all(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false)), true)) & select(global1.b, _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(global0.x, -2147483647i, global1.b.x, global0.x)), vec4<i32>(105442i, 3164i, global0.x, u_input.e)), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(global1.a.a.x, global1.a.a.x)), _wgslsmith_f_op_f32(min(func_2(func_2(Struct_2(816f, vec2<bool>(true, true)), u_input.a.x), ~64899u).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1065f * -2271f) - -879f)))), var_2.wy, _wgslsmith_f_op_f32(trunc(625f)));
}

