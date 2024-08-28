struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_i32(abs(_wgslsmith_add_vec3_i32(~(vec3<i32>(-9521i, -56202i, 6049i) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), vec3<i32>(1i, 1i, 1i))), firstLeadingBit(abs(vec3<i32>(2147483647i, 1i, 19961i))));
    var var_1 = !(true & arg_0);
    var_1 = arg_0;
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(~_wgslsmith_add_i32(var_0, 4578i) >> (_wgslsmith_mult_u32(arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 40514u), vec4<u32>(arg_1, 4294967295u, u_input.a, 65521u))) % 32u), i32(-1i) * -_wgslsmith_div_i32(1i, var_0), -var_0), firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(var_0, 2147483647i, var_0)), max(vec3<i32>(-2147483647i, -59847i, var_0), vec3<i32>(-23816i, var_0, 23072i)), ~vec3<i32>(var_0, var_0, var_0)), abs(vec3<i32>(var_0, var_0, var_0)))));
    var_1 = any(select(vec3<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true, all(!vec3<bool>(false, arg_0, arg_0))), !vec3<bool>(true, select(arg_0, arg_0, arg_0), arg_0), !(!vec3<bool>(false, arg_0, false))));
    return 0u;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = Struct_2(Struct_1(firstTrailingBit(0u), ~vec3<u32>(85233u >> (0u % 32u), 0u, 1u)), Struct_1(func_3(any(vec3<bool>(true, true, true)), u_input.a), _wgslsmith_mod_vec3_u32(firstLeadingBit(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 0u))), min(_wgslsmith_mod_vec3_u32(vec3<u32>(24680u, 4294967295u, 0u), vec3<u32>(15427u, 1u, 17181u)), vec3<u32>(u_input.a, u_input.a, u_input.a)))), vec3<bool>(false, -1000f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(770f))), -1340f >= _wgslsmith_f_op_f32(floor(301f))), vec3<bool>(true, select(all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), all(vec3<bool>(true, true, true))), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1346f, -639f) - vec2<f32>(-290f, 299f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1752f, 895f) + vec2<f32>(1269f, -851f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-333f, -323f) + vec2<f32>(-461f, 515f)), vec2<f32>(-363f, 242f))), select(!var_0.c.zz, select(vec2<bool>(var_0.d.x, var_0.d.x), vec2<bool>(var_0.c.x, true), false | var_0.d.x), var_0.d.x))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(444f - -426f)) + _wgslsmith_f_op_f32(f32(-1f) * -190f)), _wgslsmith_div_f32(-518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1104f))))));
    var var_2 = !var_0.c.x;
    var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1592f) - vec2<f32>(872f, var_1.x))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), -273f) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1378f, -1845f))))))));
    var var_3 = !var_0.c.x || false;
    return _wgslsmith_f_op_f32(round(var_1.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32, arg_3: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_2(firstTrailingBit(12317i))))), _wgslsmith_f_op_f32(floor(611f)), _wgslsmith_div_f32(var_1.x, 1104f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) - 223f)));
    var var_3 = arg_0;
    var_3 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_mult_u32(reverseBits(0u), countOneBits(var_3.b.b.x))), vec3<u32>(reverseBits(59420u), var_3.a.b.x, ~1u)), var_3.a, select(select(select(!vec3<bool>(false, true, var_3.d.x), !var_3.d, arg_0.c), vec3<bool>(true, false, arg_3 == arg_3), true), !var_3.d, !vec3<bool>(all(arg_0.d.xx), false, true)), !select(select(select(arg_0.d, arg_0.d, arg_0.c.x), var_3.c, select(arg_0.d, arg_0.d, arg_0.d)), select(vec3<bool>(true, arg_0.d.x, false), arg_0.d, -875f >= var_0.x), !(arg_3 <= -22923i)));
    return !(!select(select(select(vec4<bool>(true, var_3.d.x, arg_0.d.x, false), vec4<bool>(true, var_3.c.x, true, var_3.c.x), vec4<bool>(arg_0.d.x, true, arg_0.c.x, false)), select(vec4<bool>(true, var_3.d.x, true, arg_0.c.x), vec4<bool>(true, true, var_3.d.x, arg_0.c.x), arg_0.d.x), var_3.a.b.x <= 4294967295u), select(vec4<bool>(var_3.c.x, var_3.d.x, arg_0.d.x, false), select(vec4<bool>(arg_0.c.x, var_3.c.x, true, var_3.c.x), vec4<bool>(false, false, var_3.d.x, true), true), !vec4<bool>(false, var_3.d.x, false, arg_0.c.x)), arg_1.x < (4294967295u >> (1u % 32u))));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = !(!arg_1.x);
    var_0 = true;
    var_0 = true;
    var_0 = true;
    let var_1 = !(!((all(arg_1) & !arg_1.x) & !(!arg_1.x)));
    return Struct_1(_wgslsmith_mod_u32(~firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 0u)), 0u), ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 42434u), ~vec3<u32>(u_input.a, 17369u, u_input.a)), _wgslsmith_sub_u32(u_input.a, max(0u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), select(vec4<u32>(1u, u_input.a, u_input.a, 96465u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(arg_1.x, var_1, false, arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(trunc(1082f)), select(select(vec4<bool>(true, true, true, true), !func_1(Struct_2(Struct_1(u_input.a, vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_1(u_input.a, vec3<u32>(u_input.a, 53766u, u_input.a)), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<u32>(0u, 53680u, u_input.a), -1i, -1i), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec3<bool>(false, true, true)) & all(vec4<bool>(false, true, true, false)), false & all(vec4<bool>(true, false, false, false)), true, true), vec4<bool>(true, any(vec2<bool>(true, true)), true, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, _wgslsmith_f_op_f32(-1935f * _wgslsmith_f_op_f32(-1035f + -1277f))))));
    let var_2 = 1i;
    let var_3 = func_4(-1000f, !select(vec4<bool>(true, true, true, true), func_1(Struct_2(Struct_1(8805u, vec3<u32>(39412u, var_0.a, 22823u)), Struct_1(var_0.b.x, vec3<u32>(69219u, u_input.a, u_input.a)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), ~vec3<u32>(u_input.a, var_0.b.x, var_0.b.x), _wgslsmith_sub_i32(-2147483647i, var_2), ~var_2), vec4<bool>(true, false, true, false))).b.zy;
    var var_4 = Struct_2(Struct_1(_wgslsmith_clamp_u32(max(_wgslsmith_add_u32(1u, var_0.b.x), firstTrailingBit(var_3.x)), 1u, var_0.b.x), var_0.b), var_0, !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), select(false, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true), vec3<bool>(u_input.a > var_3.x, false, false)), select(!vec3<bool>(true, 2147483647i < var_2, any(vec3<bool>(true, false, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), true), true));
    var var_5 = Struct_2(Struct_1(abs(~(~var_4.a.b.x)), vec3<u32>(1u, 1u, var_3.x)), func_4(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(ceil(var_1.x))), vec4<bool>(true, true, true, true)), select(!vec3<bool>(var_4.d.x, 1000f <= var_1.x, var_2 != var_2), var_4.d, all(vec4<bool>(var_1.x > -1000f, false, false || var_4.d.x, false))), select(var_4.c, var_4.d, func_1(Struct_2(Struct_1(1u, var_0.b), func_4(var_1.x, vec4<bool>(var_4.c.x, var_4.d.x, false, var_4.d.x)), !vec3<bool>(var_4.c.x, true, true), select(var_4.d, var_4.c, var_4.d.x)), ~func_4(1000f, vec4<bool>(false, var_4.d.x, true, var_4.d.x)).b, abs(~var_2), 2147483647i).zwz));
    let var_6 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_5.a.b.x, _wgslsmith_mod_u32(min(29142u, 17649u), 11575u), u_input.a, var_5.a.b.x), ~((vec4<u32>(4294967295u, var_3.x, u_input.a, 9679u) ^ vec4<u32>(0u, var_5.a.b.x, 4294967295u, u_input.a)) << (vec4<u32>(var_5.a.a, var_3.x, 0u, var_4.b.a) % vec4<u32>(32u)))));
}

