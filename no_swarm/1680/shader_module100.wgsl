struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32;

var<private> global2: bool = false;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: f32, arg_3: vec3<bool>) -> vec2<u32> {
    var var_0 = vec3<f32>(852f, -381f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1090f, arg_2))), false)) + arg_1));
    var var_1 = arg_2;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 306f));
    var var_2 = Struct_2(~(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, u_input.d) ^ vec2<u32>(u_input.d, u_input.d), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.d), vec2<u32>(u_input.d, 93957u))) | vec2<u32>(~33858u, 1u)));
    let var_3 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_2)) * var_0.xx)), vec2<f32>(-798f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(359f, -411f) - _wgslsmith_f_op_f32(f32(-1f) * -1038f)))), select(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.b, 1u)), abs(var_2.a) | countOneBits(var_2.a), abs(var_2.a)), vec2<u32>((1u >> (var_2.a.x % 32u)) << (23451u % 32u), ~u_input.d >> (109133u % 32u)), select(arg_3.xx, !vec2<bool>(arg_3.x, arg_3.x), vec2<bool>(true, true))));
    return reverseBits(~abs(abs(vec2<u32>(1u, var_3.b.x)) << (max(var_2.a, var_2.a) % vec2<u32>(32u))));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -732f);
    global0 = true || select(!arg_0, all(!(!vec4<bool>(arg_0, arg_0, arg_0, true))), arg_0);
    let var_1 = arg_0;
    let var_2 = u_input.d;
    let var_3 = (arg_1 << (countOneBits(~(vec2<u32>(var_2, 4294967295u) >> (vec2<u32>(63107u, u_input.d) % vec2<u32>(32u)))) % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, ~43852u), func_3(u_input.e, arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-654f, arg_2.x), _wgslsmith_f_op_f32(trunc(arg_2.x)))), select(vec3<bool>(arg_0, true, var_1), !vec3<bool>(arg_0, true, false), vec3<bool>(false, false, false)))) % vec2<u32>(32u));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<u32>(~max(max(43451u, 11905u), 0u), ~firstTrailingBit(17074u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2) -> bool {
    let var_0 = vec3<bool>(!(!any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-998f - arg_0.a.x))) == arg_1.x, !select(false, !all(vec2<bool>(false, false)), true));
    global1 = u_input.e.x;
    global0 = false;
    global2 = var_0.x;
    global1 = u_input.c;
    return any(select(vec3<bool>(true, false, var_0.x), var_0, any(select(vec3<bool>(var_0.x, false, false), select(var_0, var_0, false), select(var_0, var_0, var_0.x)))));
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_2(vec2<u32>(~(~(~0u)), 11379u));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -996f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1525f + 202f)) + _wgslsmith_f_op_f32(func_2(false, vec2<i32>(-6815i, -2147483647i), vec2<f32>(1811f, 764f)).a.x - _wgslsmith_f_op_f32(-1200f * 945f))), 888f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)))), -_wgslsmith_dot_vec4_i32(max(-vec4<i32>(arg_3.x, u_input.c, 1i, 1i), vec4<i32>(-7874i, u_input.a, u_input.c, arg_3.x)), -abs(vec4<i32>(0i, u_input.a, u_input.c, -2264i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1661f - -494f) * func_2(arg_0, u_input.e.zx, vec2<f32>(706f, -1000f)).a.x), -1171f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(684f * -875f)))), _wgslsmith_dot_vec4_u32(min(arg_2, arg_2 ^ reverseBits(vec4<u32>(0u, arg_2.x, u_input.b, 0u))), _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, 66694u, 1u), arg_2)), arg_2)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.x))), var_1.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.x * -126f))), 584f)), -select(-var_1.b, ~(~(-35916i)), all(select(arg_1, vec3<bool>(arg_1.x, false, true), arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-653f * var_1.a.x)), func_2(all(select(!vec4<bool>(arg_1.x, false, true, false), select(vec4<bool>(false, true, false, arg_0), vec4<bool>(arg_0, arg_0, arg_1.x, arg_0), false), select(vec4<bool>(true, arg_0, arg_0, arg_1.x), vec4<bool>(false, arg_0, arg_0, false), false))), vec2<i32>(16167i, 0i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -173f)), var_1.a.zx))).b.x);
    var var_3 = _wgslsmith_mult_vec4_u32(~min(~(~vec4<u32>(29625u, var_0.a.x, var_0.a.x, var_1.d)), ~abs(vec4<u32>(u_input.d, var_1.d, arg_2.x, var_1.d))), arg_2);
    var var_4 = vec2<i32>(_wgslsmith_div_i32(select(_wgslsmith_mod_i32(min(-87505i, -8394i), 40288i), -31201i | u_input.e.x, false), var_2.b), -23054i);
    return _wgslsmith_f_op_f32(1664f + -120f);
}

fn func_1() -> vec4<f32> {
    var var_0 = all(vec4<bool>(all(vec2<bool>(true, true)), true, any(vec4<bool>(false, true, select(false, true, true), true)), true == (1u != (0u ^ u_input.d))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-260f * -412f) + -236f)), -584f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1702f)))));
    var var_2 = _wgslsmith_f_op_f32(func_5(!func_4(func_2(true, vec2<i32>(u_input.a, u_input.a), vec2<f32>(var_1.x, -142f)), vec2<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), var_1.x), Struct_2(~vec2<u32>(u_input.b, u_input.d))), vec3<bool>(true, true, true), vec4<u32>(_wgslsmith_sub_u32(1u, u_input.d), u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 98158u), vec2<u32>(~u_input.b, u_input.b | 858u)), u_input.b), vec2<i32>(max(~select(-8392i, u_input.c, true), ~_wgslsmith_div_i32(366i, -13238i)), reverseBits(1i))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(290f + var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -808f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -333f)), var_1.x, _wgslsmith_div_f32(-1000f, var_1.x))), -10611i, var_1.x, select(~1u, 17596u, any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
    global0 = !(1157f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    return _wgslsmith_f_op_vec4_f32(abs(var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(452f, -249f, 2437f, -685f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(129f, -1401f, -275f, 1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(746f, 305f, -940f, -1922f), _wgslsmith_f_op_vec4_f32(func_1())))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, firstTrailingBit(u_input.c), select(u_input.e.x, 1i, false), ~u_input.e.x), vec4<i32>(2147483647i, u_input.a, u_input.c, max(0i, 81111i))) ^ u_input.c, 299f, 53195u);
    var var_1 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, ~u_input.b), ~(vec2<u32>(89229u, 19407u) << (vec2<u32>(var_0.d, u_input.d) % vec2<u32>(32u)))) >> (_wgslsmith_mult_vec2_u32(func_3(min(u_input.e, u_input.e), -707f, _wgslsmith_f_op_f32(select(var_0.c, var_0.a.x, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), ~(vec2<u32>(0u, u_input.b) ^ vec2<u32>(var_0.d, 0u))) % vec2<u32>(32u)));
    var_1 = Struct_2(vec2<u32>(~var_0.d & max(u_input.d, var_1.a.x), _wgslsmith_clamp_u32(firstTrailingBit(u_input.d), 0u, 4294967295u)) & ~vec2<u32>(var_0.d, 1u));
    global2 = true && !(!any(vec2<bool>(false, false)));
    var var_2 = -113f;
    var_0 = Struct_1(vec4<f32>(295f, _wgslsmith_f_op_f32(trunc(func_2(true, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_0.b), vec2<i32>(16629i, u_input.c)), var_0.a.xy).a.x)), _wgslsmith_f_op_f32(ceil(1368f)), 1000f), 1i, -194f, ~u_input.d);
    global1 = reverseBits(-2147483647i);
    let var_3 = -reverseBits(u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(-76455i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, -1i, -15777i), vec4<i32>(-2147483647i, u_input.a, -1i, -14599i))), min(vec2<i32>(2147483647i, -2147483647i), -u_input.e.yx) << ((var_1.a ^ vec2<u32>(1u, var_0.d)) % vec2<u32>(32u)), u_input.e.zy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(3074f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, 704f)), _wgslsmith_f_op_f32(func_2(true, vec2<i32>(14566i, 2147483647i), vec2<f32>(-1726f, var_0.c)).a.x + _wgslsmith_f_op_f32(var_0.c + -2021f)))), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(round(func_2(true, vec2<i32>(-2147483647i, 19718i), vec2<f32>(var_0.c, -243f)).a.x)))));
}

