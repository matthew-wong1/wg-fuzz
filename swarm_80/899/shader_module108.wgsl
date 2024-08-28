struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: f32) -> vec3<u32> {
    var var_0 = u_input.d;
    let var_1 = Struct_1(all(select(vec4<bool>(true, false, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false))), vec2<i32>(2147483647i, var_0.x) >> (~vec2<u32>(4294967295u, _wgslsmith_mod_u32(1u, 32113u)) % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(303f * _wgslsmith_f_op_f32(arg_3 + arg_3))), 1803f, 851f, arg_3));
    var_0 = ~var_1.b;
    var_0 = vec2<i32>(i32(-1i) * -2147483647i, var_0.x);
    var_0 = -countOneBits(var_1.b);
    return vec3<u32>(abs(~arg_2), 4294967295u, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(~arg_2, 49883u >> (arg_2 % 32u)), 63559u));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec3<u32> {
    let var_0 = Struct_1(any(vec2<bool>(any(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, false, arg_1, false))), arg_1)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, arg_0, arg_0), ~u_input.c.yyx), u_input.b), -29026i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 378f, 1000f, -1720f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(267f, -786f, 1057f, 115f) - vec4<f32>(1002f, -1804f, 116f, 244f))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-337f, -1031f, -663f, 1025f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(299f, 694f, -1457f, 347f)))))));
    let var_1 = var_0;
    var var_2 = select(!(!(!vec3<bool>(var_0.a, var_0.a, true))), vec3<bool>(var_1.a, true, true), select(vec3<bool>(false, true, var_0.a), select(vec3<bool>(true, true != var_0.a, true), select(vec3<bool>(false, var_1.a, false), vec3<bool>(arg_1, var_0.a, false), vec3<bool>(true, var_0.a, var_1.a)), !(!vec3<bool>(arg_1, false, arg_1))), vec3<bool>(true, !arg_1, false)));
    var_2 = vec3<bool>(!var_1.a, all(!(!select(vec4<bool>(false, var_1.a, var_2.x, var_0.a), vec4<bool>(var_1.a, false, true, true), false))), !arg_1);
    let var_3 = -vec3<i32>(~(-arg_0) >> (firstLeadingBit(19087u) % 32u), _wgslsmith_add_i32(~min(var_0.b.x, -9917i), ~43434i), -1i);
    return ~vec3<u32>(4294967295u, ~(~1u), _wgslsmith_mod_u32(min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(50786u, 4294967295u), vec2<u32>(29948u, 82999u))), ~firstLeadingBit(28315u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = ~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 1u, 1u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 31254u, 4015u), ~vec3<u32>(4294967295u, 94854u, 1u), func_2(80984u, 0u, 4294967295u, -659f)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), firstTrailingBit(func_3(u_input.c.x, false))));
    var var_1 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + -429f) >= arg_0.x));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, ~60216u << (_wgslsmith_sub_u32(0u, var_0.x) % 32u), var_0.x), select(~vec4<u32>(0u, var_0.x, var_0.x, 3217u), vec4<u32>(1u, 1u, var_0.x, 0u) ^ vec4<u32>(var_0.x, var_0.x, var_0.x, 44240u), select(vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(true, false, false, arg_1.x), arg_1.x)) | ~(vec4<u32>(var_0.x, var_0.x, 1u, 0u) & vec4<u32>(4294967295u, var_0.x, 62682u, 2808u))), 27745u);
    var var_3 = 28644u;
    let var_4 = ~u_input.c;
    return Struct_1(-1171f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(floor(arg_0.x))))), vec2<i32>(-_wgslsmith_mult_i32(-39643i, reverseBits(u_input.b)), -20947i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + 422f), _wgslsmith_f_op_f32(f32(-1f) * -2004f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x * 303f)) * vec4<f32>(_wgslsmith_f_op_f32(floor(350f)), _wgslsmith_f_op_f32(abs(-215f)), _wgslsmith_div_f32(arg_0.x, -100f), _wgslsmith_f_op_f32(round(333f)))) + vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1251f) + arg_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), arg_0.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) * -603f))));
    let var_1 = ~(reverseBits(min(vec3<u32>(0u, 27491u, 0u), vec3<u32>(1u, 1u, 1u))) >> (firstLeadingBit(~vec3<u32>(23044u, 4294967295u, 1u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(47834u, 42940u, 1u), vec3<u32>(0u, 1u, 20241u), vec3<u32>(4294967295u, 60525u, 21161u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_2 = select(select(!(!(!vec4<bool>(false, arg_1.a, false, arg_1.a))), !select(select(vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, false, false, false), arg_1.a), !vec4<bool>(arg_1.a, true, arg_1.a, arg_1.a), !vec4<bool>(arg_1.a, arg_1.a, arg_1.a, false)), select(!vec4<bool>(false, false, false, arg_1.a), select(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a), arg_1.a), !vec4<bool>(true, arg_1.a, arg_1.a, true), vec4<bool>(false, false, false, true)), select(!vec4<bool>(true, arg_1.a, arg_1.a, false), !vec4<bool>(true, arg_1.a, arg_1.a, true), arg_1.a))), select(select(vec4<bool>(false, !arg_1.a, true, true), vec4<bool>(true, true, true, true), arg_1.a), vec4<bool>(arg_1.a, true, !all(vec4<bool>(false, arg_1.a, arg_1.a, false)), !arg_1.a), select(select(vec4<bool>(true, arg_1.a, false, arg_1.a), select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, true, arg_1.a, true), arg_1.a), any(vec2<bool>(arg_1.a, arg_1.a))), !select(vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true), vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a)), vec4<bool>(!arg_1.a, select(arg_1.a, arg_1.a, arg_1.a), arg_1.a, true && arg_1.a))), false);
    let var_3 = _wgslsmith_sub_i32(select(-31027i, -2147483647i, true), arg_1.b.x >> (firstLeadingBit(var_1.x) % 32u));
    let var_4 = arg_1;
    return func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4.c + vec4<f32>(-1000f, var_0, arg_2, -1400f)), vec4<f32>(1103f, 276f, arg_0, _wgslsmith_f_op_f32(sign(1759f)))), select(vec2<bool>(true, true), !vec2<bool>(arg_1.c.x < arg_0, true), vec2<bool>(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1082f, arg_2, -842f), vec4<f32>(var_0, arg_1.c.x, -713f, 207f)), vec2<bool>(arg_1.a, false)).a, all(!var_2.zyz)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~abs(~vec4<u32>(0u, 3848u, 33718u, 24117u)));
    let var_1 = Struct_1(false, countOneBits(func_4(-483f, func_1(vec4<f32>(481f, -287f, 1441f, -1000f), vec2<bool>(false, true)), -755f)) & u_input.c.xw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1603f, 1206f, 288f, -1404f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1340f, -115f, 966f, 318f), vec4<f32>(-462f, 458f, 588f, 388f))), vec4<f32>(-624f, 100f, -658f, -1000f))))));
    let var_2 = -17148i;
    var var_3 = var_1.c.wyw;
    var var_4 = select(select(!select(vec2<bool>(var_1.a, true), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, var_1.a), false), vec2<bool>(var_1.a, true)), select(select(vec2<bool>(var_1.a, true), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, false), var_1.a), vec2<bool>(true, var_1.a)), vec2<bool>(var_1.a, true), vec2<bool>(true, true)), vec2<bool>(var_1.a, true)), vec2<bool>(var_0.x > _wgslsmith_clamp_u32(36293u & var_0.x, abs(var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 33216u, var_0.x), vec4<u32>(var_0.x, 1u, var_0.x, var_0.x))), true), var_1.b.x <= _wgslsmith_mod_i32(1i, var_2));
    let var_5 = 1872f >= _wgslsmith_div_f32(-864f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_3.x)))), var_3.x));
    let var_6 = Struct_1(!(!var_1.a), ~vec2<i32>(-2983i, ~_wgslsmith_mod_i32(2147483647i, u_input.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(806f, var_1.c.x), -491f, all(vec4<bool>(var_4.x, false, var_4.x, false)))), 1f, _wgslsmith_f_op_f32(abs(-429f)), var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, var_0.x) << (29013u % 32u), ~_wgslsmith_add_u32(1u, 6668u), ~(~4294967295u)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, 11404u), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), ~1u) ^ 4294967295u), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_6.b.x, var_2 ^ firstLeadingBit(22646i)), abs(var_6.b.x | (2147483647i & var_6.b.x))), _wgslsmith_sub_vec3_i32(u_input.c.xwx, vec3<i32>(u_input.c.x, min(5660i, _wgslsmith_mod_i32(u_input.a.x, var_2)), -min(1i, 2147483647i))));
}

