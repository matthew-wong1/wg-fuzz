struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: Struct_3) -> f32 {
    return _wgslsmith_div_f32(arg_0.c.a, _wgslsmith_f_op_f32(-arg_0.c.a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = firstTrailingBit(71715u);
    let var_1 = Struct_3(arg_0.b.yy, select(~((arg_0.b << (vec4<u32>(6870u, 27270u, var_0, 30094u) % vec4<u32>(32u))) ^ abs(arg_0.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.x << (arg_0.c.b % 32u), firstTrailingBit(-17680i), -arg_0.b.x, _wgslsmith_dot_vec2_i32(arg_0.b.zw, arg_0.b.xy)), arg_0.b), select(arg_0.c.d, !(!arg_0.c.d), false)), arg_0.c);
    global0 = array<vec4<f32>, 12>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, var_1.c.a, -1128f, 749f))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(min(var_2.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))), arg_0.c.a) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c.a + 1279f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_1.c.a) - _wgslsmith_f_op_f32(f32(-1f) * -313f))))));
    return abs(select(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(13857u, 32487u, arg_0.c.b, u_input.a), vec4<u32>(arg_0.c.b, 4294967295u, 4294967295u, 4205u))), vec4<u32>(_wgslsmith_sub_u32(var_0, 0u), ~arg_0.c.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.b, var_0, arg_0.c.b), vec3<u32>(var_0, u_input.a, var_1.c.b)), ~1u)), _wgslsmith_div_vec4_u32(~(~vec4<u32>(var_1.c.b, arg_0.c.b, var_0, var_1.c.b)), ~vec4<u32>(44968u, arg_0.c.b, u_input.a, 66835u)), all(arg_1.a.yx)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec2<f32>) -> f32 {
    global0 = array<vec4<f32>, 12>();
    let var_0 = true | arg_0.x;
    var var_1 = ~(~_wgslsmith_clamp_vec4_u32(func_3(Struct_3(vec2<i32>(-2147483647i, -22470i), vec4<i32>(24881i, -17642i, -2147483647i, 0i), Struct_1(-1047f, 0u, 14977i, arg_0.x)), Struct_2(vec3<bool>(true, false, var_0))), ~arg_2 << (~vec4<u32>(0u, u_input.a, 46048u, u_input.a) % vec4<u32>(32u)), arg_2));
    var var_2 = 3818i;
    var_1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(4765u, ~0u, 1u, _wgslsmith_div_u32(0u, u_input.a)) | arg_2, ~vec4<u32>((arg_2.x | arg_2.x) >> (arg_2.x % 32u), arg_2.x, 1u, abs(_wgslsmith_dot_vec2_u32(arg_2.zy, vec2<u32>(u_input.a, var_1.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1457f)))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_3 {
    var var_0 = max(~1i, 17543i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * -1000f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-173f, 1000f, arg_0.a)))), vec3<f32>(412f, arg_0.a, -791f), arg_0.d))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-873f, -1000f, 869f) - vec3<f32>(var_2.x, 1986f, 403f)), vec3<f32>(-1139f, var_2.x, var_2.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, var_2.x, 1000f), vec3<f32>(-745f, arg_0.a, arg_0.a), false)), _wgslsmith_div_vec3_f32(vec3<f32>(-1153f, arg_0.a, -118f), vec3<f32>(1000f, arg_0.a, -1461f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 719f, 402f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -338f, -468f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a, 426f, var_2.x), vec3<f32>(arg_0.a, 620f, -357f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-557f, var_2.x, var_2.x) - vec3<f32>(-753f, -1085f, arg_0.a))))));
    var var_3 = firstLeadingBit(_wgslsmith_mod_vec3_u32(~select(vec3<u32>(arg_0.b, arg_1, arg_1), vec3<u32>(4294967295u, arg_0.b, 14326u), select(vec3<bool>(true, true, arg_0.d), vec3<bool>(true, arg_0.d, arg_0.d), false)), min(vec3<u32>(73160u, 49178u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, arg_0.b, 46253u), vec3<u32>(u_input.a, 1u, u_input.a))) & _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, arg_0.b, 4294967295u), vec3<u32>(0u, arg_0.b, 21539u))));
    return Struct_3(max(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c, -2147483647i) & vec2<i32>(37940i, arg_0.c), vec2<i32>(arg_0.c, -23618i)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_0.c), vec2<i32>(arg_0.c, arg_0.c))), max(~max(vec2<i32>(arg_0.c, arg_0.c), vec2<i32>(-2147483647i, arg_0.c)), -abs(vec2<i32>(-1i, -1i)))), -vec4<i32>(_wgslsmith_mod_i32(1i, arg_0.c), -53173i | arg_0.c, _wgslsmith_sub_i32(-2147483647i, arg_0.c), arg_0.c << (4294967295u % 32u)) >> (~(~(vec4<u32>(72559u, 0u, var_3.x, 26377u) ^ vec4<u32>(u_input.a, var_3.x, 105729u, 0u))) % vec4<u32>(32u)), Struct_1(-345f, 52066u, arg_0.c, any(vec2<bool>(false, arg_0.d)) && true));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = abs(firstTrailingBit(vec3<i32>(arg_3.b.x, arg_3.b.x, -arg_3.c.c)) | arg_3.b.yxz);
    global0 = array<vec4<f32>, 12>();
    global0 = array<vec4<f32>, 12>();
    let var_1 = arg_3.c.d;
    global0 = array<vec4<f32>, 12>();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global0[_wgslsmith_index_u32(max(u_input.a, u_input.a), 12u)], Struct_2(!vec3<bool>(any(vec3<bool>(true, true, true)), u_input.a != 0u, true)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1346f, 298f) - -180f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-831f + 683f), 1019f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec2<i32>(2780i, -2147483647i), vec4<i32>(-1i, 6733i, -13079i, -22638i), Struct_1(-898f, 12178u, -2479i, false)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-636f, 325f))))), 935f), func_4(Struct_1(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), max(vec3<i32>(-27607i, 18489i, 28033i), vec3<i32>(9978i, -2147483647i, -6455i)), ~vec4<u32>(u_input.a, 40124u, u_input.a, 5095u), _wgslsmith_div_vec2_f32(vec2<f32>(-185f, -1000f), vec2<f32>(1095f, 997f)))), 49541u, i32(-1i) * -1711i, !select(false, false, true)), u_input.a));
    let var_1 = u_input.a;
    var var_2 = func_4(func_4(func_4(Struct_1(_wgslsmith_div_f32(699f, var_0.c.a), ~0u, var_0.a.x, var_0.c.d), ~var_0.c.b).c, reverseBits(var_1) & max(var_0.c.b, ~4294967295u)).c, ~var_1).c;
    let var_3 = vec3<f32>(1334f, var_0.c.a, -2732f);
    var var_4 = _wgslsmith_mod_i32(var_0.b.x, _wgslsmith_dot_vec2_i32(-(vec2<i32>(var_0.b.x, var_2.c) >> ((vec2<u32>(0u, 0u) ^ vec2<u32>(var_2.b, 0u)) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_add_i32(-var_0.c.c, func_5(global0[_wgslsmith_index_u32(9983u, 12u)], Struct_2(vec3<bool>(var_2.d, var_0.c.d, false)), global0[_wgslsmith_index_u32(87273u, 12u)], var_0).a.x), (var_0.a.x << (u_input.a % 32u)) << (62965u % 32u))));
    var_2 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, var_0.c.a, var_3.x, -1010f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_f_op_f32(var_0.c.a - 1469f), _wgslsmith_f_op_f32(trunc(var_0.c.a)), var_0.c.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(734f, var_3.x, var_2.a, var_2.a), vec4<f32>(176f, 1256f, var_0.c.a, -722f)) * vec4<f32>(var_3.x, 663f, var_2.a, 802f)))), Struct_2(select(select(!vec3<bool>(var_2.d, false, var_0.c.d), !vec3<bool>(var_2.d, var_2.d, true), select(vec3<bool>(var_2.d, var_0.c.d, var_2.d), vec3<bool>(true, var_2.d, false), vec3<bool>(var_2.d, true, true))), select(select(vec3<bool>(false, true, var_0.c.d), vec3<bool>(var_0.c.d, false, true), vec3<bool>(false, var_2.d, true)), vec3<bool>(var_0.c.d, var_2.d, var_2.d), select(vec3<bool>(false, false, var_0.c.d), vec3<bool>(var_2.d, var_0.c.d, true), false)), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, var_2.a, var_2.a, 2605f)), Struct_2(vec3<bool>(var_2.d, false, var_2.d)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1427f, var_3.x, var_2.a, -1028f))), func_5(vec4<f32>(var_0.c.a, var_0.c.a, 946f, var_0.c.a), Struct_2(vec3<bool>(var_2.d, var_0.c.d, false)), vec4<f32>(var_3.x, -603f, 566f, 1028f), Struct_3(vec2<i32>(-1i, var_2.c), var_0.b, Struct_1(-269f, 4294967295u, var_2.c, true)))).c.d)), _wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(1u, 12u)])), Struct_3(vec2<i32>(_wgslsmith_mult_i32(0i, var_0.b.x), -var_2.c), var_0.b, Struct_1(func_4(Struct_1(-373f, u_input.a, var_2.c, true), _wgslsmith_mult_u32(23670u, var_1)).c.a, var_0.c.b, func_4(Struct_1(var_3.x, u_input.a, -29971i, var_0.c.d), var_1).c.c >> (abs(10173u) % 32u), true))).c;
    let var_5 = !(var_2.a != _wgslsmith_f_op_f32(-var_0.c.a));
    var var_6 = Struct_3(vec2<i32>(var_2.c, reverseBits(var_0.a.x)), _wgslsmith_mod_vec4_i32(select(firstTrailingBit(func_5(global0[_wgslsmith_index_u32(0u, 12u)], Struct_2(vec3<bool>(false, var_0.c.d, var_5)), global0[_wgslsmith_index_u32(4294967295u, 12u)], Struct_3(var_0.a, var_0.b, Struct_1(-578f, 0u, 14226i, var_2.d))).b), var_0.b, !vec4<bool>(false, var_2.d, false, true)), vec4<i32>(34335i, -37854i, reverseBits(abs(-7383i)), reverseBits(var_0.c.c) >> (select(5581u, 4294967295u, var_5) % 32u))), func_5(vec4<f32>(var_2.a, _wgslsmith_f_op_f32(var_0.c.a + var_0.c.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a - var_3.x), var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - var_3.x) + _wgslsmith_div_f32(539f, 796f))), Struct_2(!select(vec3<bool>(true, var_5, var_0.c.d), vec3<bool>(false, false, false), false)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_2.a, var_3.x)))), _wgslsmith_f_op_f32(func_2(!vec3<bool>(var_2.d, true, var_5), -vec3<i32>(var_0.a.x, var_0.b.x, -1i), ~vec4<u32>(var_2.b, var_0.c.b, 60895u, u_input.a), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c.a, -886f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1062f))), _wgslsmith_f_op_f32(455f + 1f)), func_4(func_4(Struct_1(var_3.x, 4294967295u, var_2.c, var_5), 5890u).c, countOneBits(reverseBits(0u)))).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(max(vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.a, 0u), var_0.c.b, _wgslsmith_mod_u32(74643u, 1u), var_0.c.b), ~vec4<u32>(var_6.c.b, var_1, var_2.b, 1u)), ~(vec4<u32>(4294967295u, var_6.c.b, var_6.c.b, 0u) & ~vec4<u32>(u_input.a, u_input.a, 11834u, var_2.b))), ~var_0.b.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-736f, -782f))) - var_3.zx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_3.x)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.c.a, -387f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_3.yz)))))));
}

