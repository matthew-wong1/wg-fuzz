struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = arg_0.a;
    let var_1 = u_input.a.xxz;
    var var_2 = abs(vec3<i32>(arg_0.d.x, _wgslsmith_mod_i32(select(arg_0.d.x, 1i, any(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false))), ~var_1.x), _wgslsmith_dot_vec2_i32(arg_0.d.yw, -(~var_1.yy))));
    let var_3 = ~(~vec2<u32>((1u & u_input.b.x) << (min(u_input.b.x, u_input.b.x) % 32u), min(min(4294967295u, u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x))));
    var_2 = arg_0.d.xww;
    return !select(select(select(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, arg_0.b), arg_0.b), select(vec2<bool>(arg_0.b, true), vec2<bool>(false, true), arg_0.b), vec2<bool>(arg_0.b, false)), select(!vec2<bool>(false, arg_0.b), !vec2<bool>(arg_0.b, arg_0.b), arg_0.b), select(!vec2<bool>(true, arg_0.b), select(vec2<bool>(arg_0.b, true), vec2<bool>(false, true), arg_0.b), !vec2<bool>(arg_0.b, true))), !vec2<bool>(arg_0.b & arg_0.b, var_0 != var_0), (true | any(vec2<bool>(false, true))) | true);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec4<f32>) -> i32 {
    let var_0 = any(select(select(vec2<bool>(false, true), func_3(Struct_1(451f, true, 1920i, u_input.a, vec2<f32>(arg_2.x, arg_2.x))), true), vec2<bool>(true, true), select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, true)), func_3(Struct_1(405f, false, 0i, u_input.a, arg_2.wx)), true || (u_input.b.x == u_input.b.x))));
    let var_1 = arg_2.zx;
    var var_2 = ~(~u_input.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 * -210f), _wgslsmith_f_op_f32(ceil(1000f)))), -1584f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-818f)) * -701f), var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-346f, 286f, arg_0, -571f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(890f, arg_0, 575f, 136f) + vec4<f32>(-438f, 2164f, -1170f, arg_0)))), arg_2)));
    var var_4 = 4294967295u < arg_1;
    return _wgslsmith_mult_i32(u_input.a.x, -_wgslsmith_div_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(u_input.a.x, u_input.a.x))), firstLeadingBit(u_input.a.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x), _wgslsmith_mult_i32(min(u_input.a.x, u_input.a.x), 1i), u_input.a.x, func_2(-263f, u_input.b.x >> (21835u % 32u), vec4<f32>(1f, 1f, 1f, 1f))), max(_wgslsmith_div_vec4_i32(max(min(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -34041i, -34001i)), u_input.a), vec4<i32>(1i, u_input.a.x, 2147483647i, 24940i) ^ -u_input.a), _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(1i, i32(-1i) * -2010i, firstLeadingBit(1i), ~u_input.a.x))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-475f)))))), true, -2147483647i, _wgslsmith_sub_vec4_i32(~(u_input.a >> (~vec4<u32>(u_input.b.x, 65562u, u_input.b.x, 24185u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(max(var_0.x, u_input.a.x), u_input.a.x), _wgslsmith_mod_i32(2147483647i, u_input.a.x), ~_wgslsmith_div_i32(-1i, u_input.a.x), ~u_input.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(643f + _wgslsmith_f_op_f32(step(-274f, -554f))), _wgslsmith_f_op_f32(max(-431f, _wgslsmith_f_op_f32(842f + -2130f)))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-289f, 569f))))))));
    var var_2 = firstTrailingBit(u_input.a);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a, var_1.a, var_1.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.e.x)))), var_1.b, -1i, vec4<i32>(abs(-25527i), -1i, _wgslsmith_mult_i32(reverseBits(var_2.x), 7970i), max(-abs(var_0.x), ~_wgslsmith_div_i32(-1i, -32324i))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(211f, var_1.e.x)))), vec2<f32>(-742f, _wgslsmith_f_op_f32(-var_1.a)))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(step(1506f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - 1348f))))), var_1.b, abs(-1i), var_1.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.e.x, 1411f)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + -441f)), !(!var_3.b), 0i, reverseBits(vec4<i32>((u_input.a.x << (0u % 32u)) >> (u_input.b.x % 32u), ~(-11170i | var_3.d.x), -2147483647i, 1i)), var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec2<i32>(abs(u_input.a.x), ~(-13498i)) ^ vec2<i32>(~1368i, abs(u_input.a.x) ^ _wgslsmith_dot_vec3_i32(u_input.a.wyy, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = func_1();
    var var_2 = Struct_1(var_1.a, true, -var_1.c, ~u_input.a, vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.a)), var_1.e.x));
    var_0 = var_2.d.xw;
    var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -187f), true, ~(-var_1.c), select(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a.x >> (u_input.b.x % 32u), 3542i, -30052i), _wgslsmith_add_vec4_i32(-var_1.d, u_input.a)), vec4<i32>(i32(-1i) * -var_0.x, ~(-79282i), -2147483647i, var_1.d.x), var_2.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.e * _wgslsmith_f_op_vec2_f32(-vec2<f32>(851f, var_1.e.x)))) * vec2<f32>(_wgslsmith_f_op_f32(floor(var_2.e.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1946f, max(vec3<u32>(u_input.b.x, 79906u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b.x, 41400u, u_input.b.x), ~26900u)), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), vec3<u32>(abs(u_input.b.x), 4294967295u, u_input.b.x | 4294967295u), ~(~vec3<u32>(4294967295u, 11144u, u_input.b.x)))), vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(select(vec4<u32>(43226u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(46186u, 4195u, 48663u, 4294967295u), vec4<bool>(var_2.b, var_2.b, false, true))), ~abs(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x))), _wgslsmith_mod_u32(u_input.b.x, 949u), abs(u_input.b.x), select(_wgslsmith_add_u32(u_input.b.x, max(47097u, u_input.b.x)), 0u, (true | var_2.b) | var_1.b)), (~u_input.a.zz ^ select(vec2<i32>(71830i, 34893i), var_2.d.ww, !var_1.b)) >> ((vec2<u32>(_wgslsmith_clamp_u32(0u, u_input.b.x, 0u), 1u) | vec2<u32>(u_input.b.x >> (u_input.b.x % 32u), min(1u, u_input.b.x))) % vec2<u32>(32u)), vec4<i32>(var_1.c, -var_1.d.x | ~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), i32(-1i) * -var_2.c, _wgslsmith_sub_i32(u_input.a.x, i32(-1i) * -var_1.d.x)));
}

