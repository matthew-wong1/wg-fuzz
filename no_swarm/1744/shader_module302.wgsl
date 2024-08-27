struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_mod_u32(0u, ~(_wgslsmith_sub_u32(13835u, arg_2.a) | _wgslsmith_mult_u32(arg_3.a, arg_3.a))), !(!(u_input.a.x >= u_input.a.x) && arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_2.c)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c)) * _wgslsmith_f_op_f32(abs(1000f)))), vec4<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.zx, arg_3.d.xw) << ((vec2<u32>(arg_3.a, arg_1.a) | u_input.a.zz) % vec2<u32>(32u)), ~vec2<i32>(arg_2.d.x, arg_3.d.x)), arg_1.d.x, firstTrailingBit(_wgslsmith_mult_i32(arg_2.d.x & arg_2.d.x, -2147483647i))));
    let var_1 = _wgslsmith_clamp_i32(-1i, reverseBits(arg_2.d.x), ~(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_2.d.x, 30409i), _wgslsmith_dot_vec3_i32(arg_3.d.xwx, arg_1.d.zxz)) ^ _wgslsmith_add_i32(var_0.d.x, 1i & var_0.d.x)));
    let var_2 = any(vec2<bool>(arg_2.b, !(!arg_3.b) | true));
    var_0 = arg_3;
    var_0 = arg_1;
    return vec3<bool>(false, arg_2.d.x < _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~arg_1.d.wz, u_input.b.xw | vec2<i32>(u_input.b.x, 6483i)), ~(u_input.b.x | arg_3.d.x)), any(vec4<bool>(arg_2.b & false, arg_2.b, false, !var_2)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_sub_u32(0u, arg_1.x), !select(func_3(arg_0.d.x != 26124i, Struct_1(arg_1.x, true, 467f, vec4<i32>(-1i, 0i, 2147483647i, 70129i)), Struct_1(356u, arg_2.x, arg_0.c, arg_0.d), Struct_1(1u, false, arg_3.c, arg_0.d)).x, any(vec2<bool>(arg_0.b, arg_3.b)), !(true && arg_3.b)), _wgslsmith_f_op_f32(max(561f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.c - -433f), -696f, true)))), arg_3.d);
    var var_1 = -190f;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, var_0.c, arg_0.c, arg_3.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c, arg_3.c, var_0.c, 2515f) + vec4<f32>(arg_3.c, var_0.c, arg_0.c, -813f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.c, var_0.c, 351f, -691f), vec4<f32>(525f, var_0.c, 886f, -350f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(617f, arg_3.c, 468f, arg_3.c)))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.c, _wgslsmith_f_op_f32(-var_0.c))), 432f, arg_3.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-453f - arg_3.c), _wgslsmith_f_op_f32(step(arg_3.c, 126f)))))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -590f);
    let var_3 = Struct_1(~arg_1.x, true, var_2.x, _wgslsmith_clamp_vec4_i32(~abs(u_input.b), vec4<i32>(14348i, _wgslsmith_mult_i32(-4433i, u_input.b.x << (arg_3.a % 32u)), -(var_0.d.x & -1i), ~(-21824i)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, 1i, 1i, 1i), var_0.d), vec4<i32>(~arg_3.d.x, arg_0.d.x << (4294967295u % 32u), 0i, var_0.d.x))));
    return max(max(select(~vec4<u32>(0u, 19408u, 5048u, arg_0.a) | _wgslsmith_clamp_vec4_u32(vec4<u32>(14807u, arg_1.x, 1u, u_input.a.x), vec4<u32>(1u, 34642u, u_input.a.x, var_0.a), vec4<u32>(var_3.a, var_0.a, var_3.a, 76892u)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(88156u, arg_1.x, arg_0.a, 4105u), vec4<u32>(1u, 18170u, arg_0.a, arg_3.a), false), min(vec4<u32>(0u, 17181u, var_3.a, 1u), vec4<u32>(63007u, arg_3.a, arg_3.a, 1u)), vec4<u32>(4294967295u, 4294967295u, 42931u, 56035u)), vec4<bool>(arg_3.b, arg_3.b & false, any(vec4<bool>(true, arg_2.x, false, var_3.b)), true)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, 51878u, countOneBits(31923u)), vec4<u32>(var_0.a, 0u, 1u, select(0u, arg_3.a, false)))), max(min(vec4<u32>(42901u, var_0.a, var_0.a, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a, arg_3.a, 4294967295u, 49774u), vec4<u32>(112810u, u_input.a.x, 1u, arg_1.x))) >> (_wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, var_0.a, 4294967295u, var_3.a)), vec4<u32>(var_3.a, 5293u, 1u, var_0.a)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(0u, 121018u, arg_3.a, var_3.a)), ~vec4<u32>(20664u, 9497u, var_0.a, 28156u)) & vec4<u32>(arg_3.a, ~arg_1.x, _wgslsmith_div_u32(var_0.a, var_0.a), ~4294967295u)));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = u_input.b.x;
    var var_2 = ~_wgslsmith_sub_vec4_u32(func_4(Struct_1(var_0 | u_input.a.x, false, -495f, vec4<i32>(-2147483647i, -11057i, 0i, 8222i)), vec2<u32>(1u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, var_0)), select(vec3<bool>(true, true, true), func_3(false, Struct_1(1u, true, 419f, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i)), Struct_1(4294967295u, false, 1004f, vec4<i32>(48530i, u_input.b.x, u_input.b.x, -2147483647i)), Struct_1(4294967295u, false, -1000f, u_input.b)), vec3<bool>(true, true, true)), Struct_1(~29621u, true, _wgslsmith_f_op_f32(-519f + 1203f), firstLeadingBit(u_input.b))), ~select(~vec4<u32>(1u, var_0, u_input.a.x, var_0), select(vec4<u32>(80447u, 4346u, var_0, 25384u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), false), vec4<bool>(true, false, false, false)));
    var_2 = vec4<u32>(reverseBits(_wgslsmith_sub_u32(~var_0, var_0)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x << ((u_input.a.x >> (29202u % 32u)) % 32u), var_2.x, var_0), ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(var_2.x, var_0, var_2.x)), ~var_2.ywx)), u_input.a.x, reverseBits(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.x, 26794u, 76376u), vec4<u32>(u_input.a.x, u_input.a.x, var_0, u_input.a.x)), firstLeadingBit(1u))));
    let var_3 = func_3(any(vec2<bool>(true, true)), Struct_1(u_input.a.x, true, 1f, u_input.b), Struct_1(~var_2.x, !all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), 230f, vec4<i32>(u_input.b.x, ~abs(u_input.b.x), 20380i, (i32(-1i) * -13027i) ^ _wgslsmith_add_i32(u_input.b.x, 2147483647i))), Struct_1(var_2.x, true, -739f, ~abs(max(u_input.b, u_input.b))));
    return Struct_1(0u, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1481f, -518f), _wgslsmith_f_op_f32(trunc(401f))))))), u_input.b);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = 313f;
    let var_1 = func_2();
    let var_2 = var_1;
    let var_3 = Struct_1(u_input.a.x, true | var_1.b, var_1.c, _wgslsmith_mod_vec4_i32(-vec4<i32>(47687i, _wgslsmith_add_i32(-12111i, arg_0.x), -1i, var_1.d.x), u_input.b));
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = !(!var_0.b);
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, 1188f, var_0.c)))))))));
    return -11705i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.b.x >> (~abs(4294967295u) % 32u);
    var_0 = -_wgslsmith_mod_i32(func_5(Struct_1(u_input.a.x, true, _wgslsmith_f_op_f32(sign(1397f)), min(vec4<i32>(0i, -5147i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -25834i, u_input.b.x, 1i))), func_1(u_input.b.xx), func_3(true, Struct_1(70802u, true, -2210f, vec4<i32>(-17095i, u_input.b.x, u_input.b.x, 515i)), Struct_1(u_input.a.x, false, 462f, vec4<i32>(-2147483647i, u_input.b.x, 1i, u_input.b.x)), func_2()), Struct_1(min(1u, 1u), all(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(487f * -913f), func_1(u_input.b.xy).d)), max(~u_input.b.x, u_input.b.x << (_wgslsmith_mult_u32(0u, u_input.a.x) % 32u)));
    let var_1 = func_2();
    var var_2 = vec4<bool>(true, false, var_1.b, func_2().b);
    var_0 = ~countOneBits(u_input.b.x & u_input.b.x) >> (55748u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(535f, var_1.c)))), vec2<f32>(-1659f, -423f))), -1890f, firstTrailingBit(var_1.a), _wgslsmith_mod_vec2_i32(u_input.b.wx, vec2<i32>(-10165i | u_input.b.x, var_1.d.x)) << ((~vec2<u32>(var_1.a, u_input.a.x) | u_input.a.xy) % vec2<u32>(32u)));
}

