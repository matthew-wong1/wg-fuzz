struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<i32>) -> Struct_2 {
    return Struct_2(Struct_1(0u, vec2<i32>(~13887i, i32(-1i) * -34738i) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 12260u), vec2<u32>(0u, u_input.b))) % vec2<u32>(32u))), vec4<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), u_input.b, u_input.d, (_wgslsmith_add_u32(u_input.b, u_input.b) >> (22765u % 32u)) & min(_wgslsmith_add_u32(59365u, u_input.d), u_input.b)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = vec2<bool>(~(-2147483647i) >= ~(~_wgslsmith_sub_i32(0i, arg_2.a.b.x)), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, -404f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2186f, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -695f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2369f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1013f) * vec2<f32>(-632f, -701f)))) * vec2<f32>(arg_0, -617f))));
    let var_2 = Struct_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(max(u_input.b, arg_1), 30219u), reverseBits(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_2.b.x, 0u, arg_1), vec4<u32>(56616u, 0u, 34480u, arg_1))))), min(vec2<i32>(~u_input.c, arg_2.a.b.x), reverseBits(vec2<i32>(arg_2.a.b.x, 1i))));
    var var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(~firstLeadingBit(arg_2.b)), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 61261u, arg_1, 4294967295u), ~(arg_2.b >> (arg_2.b % vec4<u32>(32u))))), _wgslsmith_sub_vec4_u32(max(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(arg_2.a.a, arg_1, 5541u, 12593u)), vec4<u32>(45089u, 0u, arg_1, arg_1)), select(arg_2.b, vec4<u32>(79345u, 1u, 4294967295u, 4294967295u), select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(false, var_0.x, var_0.x, true), false))), reverseBits(arg_2.b) << (arg_2.b % vec4<u32>(32u))));
    var_3 = min(min(arg_2.b, vec4<u32>(~_wgslsmith_mult_u32(0u, 24873u), ~(~0u), firstTrailingBit(~u_input.b), ~4294967295u)), arg_2.b);
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = arg_1;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -1555f, false)) - _wgslsmith_div_f32(-907f, 1037f)), 1f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -302f))), 708f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1556f)))))));
    var_0 = Struct_1(arg_2.a, select(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(30752i, u_input.c, u_input.a.x, u_input.a.x), vec4<i32>(arg_2.b.x, arg_1.b.x, arg_0.a.b.x, 2147483647i)), arg_2.b.x), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(-2147483647i, 1i), ~vec2<i32>(arg_0.a.b.x, arg_0.a.b.x)), arg_2.b), all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true))));
    let var_2 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_div_u32(6542u, var_0.a), func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1182f * _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_add_u32(0u, ~0u), arg_0)).a;
    let var_3 = vec3<u32>(arg_1.a, ~((1u & ~var_2.a) | ~77177u), var_0.a);
    return ~reverseBits(arg_0.a.a);
}

fn func_1() -> u32 {
    let var_0 = vec3<u32>(~(~reverseBits(54713u)), ~4294967295u, u_input.d | _wgslsmith_add_u32(~0u, ~u_input.b)) | ~(~vec3<u32>(u_input.b & 118669u, u_input.b, u_input.d));
    let var_1 = Struct_1(func_4(func_3(_wgslsmith_f_op_f32(min(580f, -1305f)), 1u, func_2(true, vec2<bool>(true, false), u_input.a)), func_2(true, vec2<bool>(true, true), vec2<i32>(-1i, 0i)).a, Struct_1(33930u, _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)))) & var_0.x, select(vec2<i32>(_wgslsmith_div_i32(~1i, _wgslsmith_div_i32(-1i, u_input.c)), min(-10569i, 1i) >> (~u_input.b % 32u)), u_input.a, !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_2 = select(vec4<bool>(all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false))), any(vec2<bool>(true, true)), !all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), false), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true))), any(select(vec3<bool>(true, true, all(vec4<bool>(true, false, true, true))), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), false)));
    let var_3 = Struct_1(var_1.a, -u_input.a);
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(_wgslsmith_f_op_f32(min(-1480f, -337f)), _wgslsmith_f_op_f32(sign(238f)), _wgslsmith_f_op_f32(-1825f - 2703f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-307f, 500f, -260f) - vec3<f32>(-1000f, -374f, -1236f))), vec3<f32>(_wgslsmith_f_op_f32(1233f + 633f), _wgslsmith_div_f32(-136f, -308f), 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-313f, -1021f, -321f), vec3<f32>(218f, 744f, -1217f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-404f, -357f, -1395f))), vec3<f32>(1334f, -843f, -1195f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(795f, 1403f, -983f) * vec3<f32>(-604f, 912f, -853f)))));
    return _wgslsmith_dot_vec2_u32(func_3(var_4.x, firstLeadingBit(_wgslsmith_div_u32(var_0.x, 74553u)), Struct_2(var_3, vec4<u32>(19508u, 29292u, 4294967295u, 0u))).b.zz, var_0.xz) & 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_u32(~(~countOneBits(u_input.d)), ~(~1u)), firstLeadingBit(countOneBits(vec2<i32>(u_input.c, _wgslsmith_mult_i32(u_input.a.x, u_input.c)))));
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = 0u;
    var_2 = countOneBits(~_wgslsmith_div_u32(max(var_0.a, 27868u), func_1()));
    var_2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -u_input.c, ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(101889u, 0u, var_0.a, var_0.a), vec4<u32>(var_0.a, var_0.a, u_input.d, 0u), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), min(vec4<u32>(12319u, var_0.a, var_0.a, u_input.b), vec4<u32>(4294967295u, 12959u, var_0.a, 0u))), _wgslsmith_add_vec4_u32(vec4<u32>(72892u, 4294967295u, u_input.d, 1u), vec4<u32>(var_0.a, u_input.d, u_input.d, var_0.a)) | reverseBits(vec4<u32>(1689u, 1u, 30248u, u_input.b)), ~(~vec4<u32>(1u, u_input.b, 1u, var_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, -286f, -1317f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -1303f, 439f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(105f, 1166f, 574f)))))), -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(692f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-758f * 615f), _wgslsmith_f_op_f32(ceil(603f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2135f)))));
}

