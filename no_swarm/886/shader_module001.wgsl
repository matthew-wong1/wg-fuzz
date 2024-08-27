struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_div_u32(~4294967295u, 60894u);
    var var_1 = arg_0.a;
    var var_2 = select(_wgslsmith_div_u32(var_1.a.x, arg_0.a.a.x), _wgslsmith_dot_vec2_u32(reverseBits(firstTrailingBit(~vec2<u32>(arg_0.c.c, 15932u))), vec2<u32>(arg_0.c.c ^ _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.c, 51592u), vec2<u32>(arg_0.c.c, var_1.a.x)), var_1.c.a.c)), any(vec2<bool>(all(var_1.b), arg_0.a.b.x)));
    var var_3 = -firstLeadingBit(-2147483647i | -_wgslsmith_clamp_i32(1i, -26970i, 0i));
    let var_4 = arg_0.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a.b.x)) + 318f))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = Struct_2(arg_2.c.a);
    var var_1 = arg_2.b.x;
    var var_2 = arg_2;
    let var_3 = -6901i ^ var_2.d.x;
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2368f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f))), 412f, var_2.b.x));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -360f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.c.a.b.yx * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.c.a.b.x, -740f)))) + _wgslsmith_f_op_vec2_f32(ceil(var_2.c.a.b.yx)))) + vec2<f32>(var_2.c.a.b.x, _wgslsmith_f_op_f32(-249f + arg_2.c.a.b.x)));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2833f, _wgslsmith_f_op_f32(729f + 1392f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(vec2<u32>(0u, 98426u), vec3<bool>(true, false, true), Struct_2(Struct_1(53479i, vec4<f32>(-546f, 1098f, -720f, 330f), 26502u)), vec2<i32>(-1i, u_input.a.x)), arg_0, Struct_1(u_input.a.x, vec4<f32>(-897f, 395f, 2742f, 1307f), 4294967295u)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(655f, -1826f))))), arg_0, Struct_3(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(12471u, 57177u)), vec3<bool>(true, true, true), Struct_2(Struct_1(_wgslsmith_div_i32(u_input.a.x, 44923i), _wgslsmith_f_op_vec4_f32(vec4<f32>(680f, 379f, -864f, 388f) + vec4<f32>(-667f, 707f, -363f, 1907f)), _wgslsmith_div_u32(87715u, 49895u))), abs(vec2<i32>(_wgslsmith_div_i32(-2147483647i, -1i), _wgslsmith_add_i32(u_input.a.x, u_input.a.x))))));
    let var_1 = var_0.x;
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1073f, -517f), _wgslsmith_f_op_f32(-var_0.x)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(-562f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1000f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-893f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -872f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-726f, -893f)))), vec2<f32>(-271f, var_0.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, -2513f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, 622f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1491f + var_0.x))), -808f) * vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(round(1143f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1207f, 530f) + vec2<f32>(478f, var_0.x)) * vec2<f32>(var_0.x, var_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(select(-923f, 117f, true)), _wgslsmith_f_op_vec2_f32(func_4(true, u_input.a.x >= 37325i, Struct_3(vec2<u32>(1u, 0u), vec3<bool>(arg_0, false, true), Struct_2(Struct_1(34119i, vec4<f32>(1580f, var_0.x, -572f, 1000f), 0u)), u_input.a))).x), select(select(vec2<bool>(true, true), select(vec2<bool>(false, arg_0), vec2<bool>(true, true), vec2<bool>(true, arg_0)), arg_0 == false), !select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), false)))));
    return ~u_input.a.x;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_3(select(firstTrailingBit(firstLeadingBit(~vec2<u32>(56784u, 0u))), ~vec2<u32>(18504u, ~1u), 0u <= _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(4236u, 85583u)))), select(vec3<bool>(-106f > _wgslsmith_f_op_f32(floor(890f)), all(vec4<bool>(true, false, true, true)), true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), select(true, false, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))))), Struct_2(Struct_1(u_input.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 341f, 350f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -1507f, 940f, arg_1), vec4<f32>(1342f, -597f, -605f, 842f))), ~1u)), vec2<i32>(-53486i, -arg_2));
    var var_1 = max(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.a.x, 19453u), ~var_0.a.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(~var_0.a.x, ~21108u), 0u), ~(~firstTrailingBit(4294967295u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.a.x, var_0.c.a.c, var_0.c.a.c), max(vec3<u32>(0u, 5094u, var_0.a.x), vec3<u32>(var_0.a.x, var_0.c.a.c, var_0.a.x)), ~vec3<u32>(0u, 106952u, var_0.a.x)), vec3<u32>(_wgslsmith_mod_u32(var_0.a.x, 12130u), var_0.a.x, _wgslsmith_add_u32(var_0.a.x, var_0.c.a.c)))), select(vec4<u32>(~var_0.a.x, (var_0.a.x | var_0.a.x) >> (~var_0.c.a.c % 32u), 13011u, var_0.c.a.c), ~min(vec4<u32>(0u, var_0.c.a.c, 0u, 29099u) ^ vec4<u32>(11161u, var_0.c.a.c, var_0.c.a.c, var_0.c.a.c), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.c.a.c, var_0.c.a.c, 4294967295u), vec4<u32>(57846u, 0u, 61363u, var_0.a.x))), vec4<bool>(var_0.b.x, var_0.b.x, true, false || (var_0.b.x | var_0.b.x))));
    var_1 = reverseBits(select(vec4<u32>(min(~var_0.a.x, var_1.x), var_1.x, 83168u, var_1.x >> (firstTrailingBit(0u) % 32u)), abs(~(vec4<u32>(15040u, var_0.c.a.c, var_0.c.a.c, var_1.x) | vec4<u32>(46810u, 20021u, var_1.x, var_0.a.x))), vec4<bool>(true, true, true, true)));
    var var_2 = !select(vec2<bool>(true, true), vec2<bool>(var_0.b.x, var_0.b.x), var_0.b.x && (any(vec2<bool>(var_0.b.x, true)) != any(vec4<bool>(var_0.b.x, false, false, true))));
    var var_3 = !any(select(vec4<bool>(true, -1000f >= arg_1, any(vec4<bool>(false, true, var_0.b.x, false)), 1i != var_0.d.x), !(!vec4<bool>(false, false, var_0.b.x, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(var_2.x, var_0.b.x, true, var_0.b.x), var_2.x)));
    return Struct_2(Struct_1(~func_2(var_0.c.a.b.x <= 2289f), vec4<f32>(var_0.c.a.b.x, 947f, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(trunc(arg_1))), -2141f), var_1.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> bool {
    let var_0 = func_5(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, 2147483647i, arg_2.a, u_input.a.x), vec4<i32>(-1i, arg_2.a, arg_2.a, u_input.a.x)), -(~firstTrailingBit(vec4<i32>(u_input.a.x, 35841i, u_input.a.x, 26450i)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x))))), func_2(true));
    var var_1 = reverseBits(_wgslsmith_clamp_u32(abs(45905u), ~(var_0.a.c | 2986u), firstTrailingBit(4294967295u)));
    var_1 = 23124u;
    let var_2 = select(all(vec2<bool>(true, all(vec3<bool>(false, true, true)))) | !all(vec3<bool>(true, true, true)), false, true);
    let var_3 = -var_0.a.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(vec2<u32>(1u, 1u), vec3<bool>(true, func_1(abs(vec3<u32>(4294967295u, 20513u, 74109u)), _wgslsmith_div_vec4_f32(vec4<f32>(1334f, -717f, 1209f, -636f), vec4<f32>(578f, -804f, 2265f, 346f)), Struct_1(u_input.a.x, vec4<f32>(993f, -897f, 3740f, 1000f), 0u)), false), func_5(~min(54822i, u_input.a.x), -2289f, _wgslsmith_div_i32(select(u_input.a.x, -1i, true), 2147483647i)), u_input.a ^ u_input.a), !select(true, false, true), func_5(_wgslsmith_mod_i32(-2147483647i, u_input.a.x | u_input.a.x), -604f, _wgslsmith_clamp_i32(u_input.a.x, ~(-31707i) & ~u_input.a.x, _wgslsmith_mult_i32(~u_input.a.x, -28753i))).a);
    var var_1 = -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a << (vec2<u32>(17455u, var_0.c.c) % vec2<u32>(32u)), var_0.a.d), _wgslsmith_sub_vec2_i32(abs(~var_0.a.d), abs(vec2<i32>(2147483647i, u_input.a.x))));
    var_0 = Struct_4(var_0.a, select(false, select(!var_0.a.b.x, max(0i, 9652i) >= -u_input.a.x, var_0.b), all(select(select(vec2<bool>(true, var_0.b), vec2<bool>(false, false), vec2<bool>(false, var_0.b)), select(var_0.a.b.zx, vec2<bool>(true, var_0.a.b.x), true), true))), var_0.a.c.a);
    var var_2 = var_0.a.c;
    var var_3 = func_5(2147483647i & u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -936f), select(var_2.a.a >> (_wgslsmith_div_u32(abs(var_0.a.c.a.c), var_2.a.c) % 32u), firstTrailingBit(var_2.a.a), all(vec4<bool>(any(var_0.a.b), false, var_2.a.c != 29579u, var_0.b))));
    var_1 = abs(_wgslsmith_sub_i32(-2147483647i, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec3_i32(~vec3<i32>(6707i, -1i, var_3.a.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, var_3.a.a, -8339i), vec3<i32>(0i, u_input.a.x, var_2.a.a))) >> (vec3<u32>(var_2.a.c, _wgslsmith_sub_u32(1u >> (var_3.a.c % 32u), abs(var_0.c.c)), ~firstLeadingBit(47234u)) % vec3<u32>(32u)), -779f, -5396i, _wgslsmith_f_op_f32(var_3.a.b.x + _wgslsmith_f_op_f32(-var_3.a.b.x)), ~var_3.a.c);
}

