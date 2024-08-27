struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.x, arg_1.x))) + vec2<f32>(345f, arg_1.x))));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(~(-u_input.b), reverseBits(u_input.b))), u_input.b, min(i32(-1i) * -379i, 0i));
    let var_2 = ~firstTrailingBit(-reverseBits(u_input.b << (4294967295u % 32u)));
    let var_3 = u_input.c & (~(~u_input.c) & max(vec4<u32>(~28467u, u_input.a.x, ~11242u, _wgslsmith_mult_u32(64582u, 11650u)), vec4<u32>(u_input.c.x | 49050u, ~u_input.a.x, 1u, reverseBits(u_input.c.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(arg_1 * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1101f, var_0.x)), _wgslsmith_f_op_vec2_f32(-arg_1), select(true, arg_0.a.x, any(arg_0.b)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(arg_1, arg_1))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)))));
    return 1u;
}

fn func_2() -> vec4<i32> {
    var var_0 = ~vec2<u32>(u_input.a.x, firstTrailingBit(47561u));
    var_0 = _wgslsmith_clamp_vec2_u32(u_input.c.yw, vec2<u32>(~(~0u), ~(~var_0.x)) & max(vec2<u32>(abs(u_input.a.x), _wgslsmith_div_u32(55833u, var_0.x)), min(u_input.c.zy, ~u_input.c.xx)), ~(~u_input.a));
    var_0 = ~(u_input.a | abs(vec2<u32>(abs(4294967295u), 19246u)));
    var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(func_3(Struct_3(vec2<bool>(true, true), vec4<bool>(false, false, true, false), u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1900f, -1736f) + vec2<f32>(-1513f, -1076f)), select(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), u_input.c.yxx, vec3<bool>(true, false, false))) >> (24346u % 32u), ~(~max(0u, var_0.x))), firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(68294u, 0u) ^ var_0.x, ~func_3(Struct_3(vec2<bool>(true, false), vec4<bool>(false, true, false, false), vec2<u32>(var_0.x, 1u)), vec2<f32>(457f, -1000f), u_input.c.yzx))));
    var var_1 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, false, true), true, all(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), true));
    return u_input.d;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_4) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(377f + 1000f);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(427f, var_0, _wgslsmith_f_op_f32(floor(var_0)))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, 1398f))), 590f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -408f, var_0) + vec3<f32>(var_0, var_0, -2194f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) * vec3<f32>(-1000f, var_0, var_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, 870f, 853f)))))));
    let var_2 = select(arg_1.xx, !(!(!vec2<bool>(arg_3.a.a, true))), vec2<bool>(arg_1.x, arg_3.a.a));
    let var_3 = Struct_2(arg_3.a, ~min(arg_3.c.yx, arg_3.c.yy & -vec2<i32>(0i, 20456i)), var_1, Struct_1(abs(~u_input.c.x) <= ~u_input.c.x), arg_3.b);
    var var_4 = u_input.c;
    return arg_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = !select(27968i <= ~_wgslsmith_dot_vec3_i32(u_input.d.xyw, arg_3.wyz), any(vec4<bool>(arg_2.x, arg_1.x < 1065f, true, select(false, true, arg_2.x))), !(true && arg_2.x));
    var var_1 = 1u >> ((u_input.c.x | (_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(25300u, u_input.c.x, 0u, 32651u), vec4<u32>(1u, 1u, 70881u, 1u))) | u_input.a.x)) % 32u);
    let var_2 = all(func_4(!(!select(true, var_0, false)), select(vec4<bool>(true, arg_2.x, false, arg_1.x <= arg_1.x), !vec4<bool>(arg_2.x, true, var_0, arg_2.x), false), any(select(!arg_2, arg_2, true)), Struct_4(Struct_1(true), Struct_1(true), ~func_2())));
    var_1 = 32822u;
    let var_3 = _wgslsmith_sub_i32(~(2147483647i ^ arg_0.x), abs(22209i));
    return Struct_1(arg_2.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.c.yz);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(u_input.c.x), max(firstTrailingBit(0u) << (func_3(Struct_3(vec2<bool>(arg_0.a.a, true), vec4<bool>(arg_0.e.a, arg_3.a.a, arg_3.a.a, true), vec2<u32>(u_input.a.x, u_input.c.x)), arg_1.c.xy, u_input.c.ywy) % 32u), firstTrailingBit(min(u_input.a.x, u_input.c.x)))), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, reverseBits(vec2<u32>(42910u, 4294967295u)), ~vec2<u32>(1u, u_input.a.x) & vec2<u32>(u_input.c.x, 1u)), ~u_input.c.yx));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1384f)));
    var var_3 = vec3<bool>(arg_0.d.a, true, all(vec4<bool>(false, false, true, all(vec3<bool>(arg_3.d.a, true, arg_1.e.a)))));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(2003f - arg_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + arg_0.c.x), _wgslsmith_f_op_f32(ceil(-525f)));
    return Struct_3(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-152f * 200f)), arg_0.a.a), !(!(!vec4<bool>(arg_0.a.a, arg_0.e.a, arg_3.a.a, var_3.x))), vec2<u32>(firstLeadingBit(u_input.a.x), countOneBits(var_1)));
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> Struct_4 {
    let var_0 = Struct_1(true);
    let var_1 = _wgslsmith_clamp_vec2_u32(~select(vec2<u32>(~u_input.a.x, 4294967295u), vec2<u32>(abs(arg_1.c.x), ~arg_1.c.x), vec2<bool>(true, true)), ~vec2<u32>(4294967295u, u_input.a.x), ~vec2<u32>(0u, arg_1.c.x));
    let var_2 = -_wgslsmith_mult_vec3_i32(u_input.d.yyy, -vec3<i32>(u_input.d.x, 7199i, -46271i)) & ~firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(16704i, u_input.d.x, 2147483647i), vec3<i32>(1i, 29755i, u_input.d.x)) ^ (u_input.d.zyz << (u_input.c.yyx % vec3<u32>(32u))));
    var var_3 = 2147483647i;
    var var_4 = Struct_4(func_1(var_2, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(196f, -451f, 506f, 397f), vec4<f32>(-693f, arg_0, -398f, arg_0)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 730f, 528f)))))), vec2<bool>(true, true), -_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(u_input.d, u_input.d), vec4<i32>(-2147483647i, u_input.d.x, -34975i, var_2.x))), func_1(select(-u_input.d.zyz, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, -1i, 63009i) << (vec3<u32>(var_1.x, var_1.x, var_1.x) % vec3<u32>(32u)), vec3<i32>(var_2.x, u_input.b, 0i), select(vec3<i32>(u_input.d.x, u_input.b, -14153i), var_2, var_0.a)), arg_1.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1000f, 164f, -3590f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(739f, -2407f, arg_0, -2813f))))), !func_5(Struct_2(Struct_1(true), vec2<i32>(-8423i, u_input.b), vec3<f32>(arg_0, -541f, arg_0), var_0, var_0), Struct_2(var_0, u_input.d.yy, vec3<f32>(arg_0, -1128f, arg_0), Struct_1(true), var_0), ~(-54978i), Struct_2(Struct_1(var_0.a), u_input.d.xz, vec3<f32>(arg_0, arg_0, arg_0), Struct_1(false), var_0)).b.zy, -(countOneBits(u_input.d) ^ firstLeadingBit(u_input.d))), firstTrailingBit(-vec4<i32>(u_input.d.x, -69632i, var_2.x, u_input.b)));
    return Struct_4(func_1(abs(vec3<i32>(var_2.x, var_2.x, 2147483647i & u_input.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -260f, -1653f) + vec4<f32>(arg_0, 1276f, arg_0, arg_0)))), !arg_1.b.xy, var_4.c), var_0, var_4.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_f32(1346f - -1633f), func_5(Struct_2(func_1(reverseBits(u_input.d.zwy), _wgslsmith_f_op_vec4_f32(vec4<f32>(2007f, -570f, -1000f, -1243f) - vec4<f32>(622f, -1664f, -948f, -505f)), vec2<bool>(false, false), u_input.d), _wgslsmith_div_vec2_i32(firstTrailingBit(u_input.d.xy), u_input.d.wz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -1045f, 700f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-734f, 789f, 222f)))), Struct_1(select(false, false, false)), func_1(~u_input.d.yyx, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1533f, 925f, 493f, 642f))), vec2<bool>(false, true), -u_input.d)), Struct_2(Struct_1(func_4(false, vec4<bool>(true, false, true, true), true, Struct_4(Struct_1(false), Struct_1(true), vec4<i32>(-1i, 24529i, 2147483647i, u_input.d.x))).x), u_input.d.wz, vec3<f32>(-1155f, -662f, -1263f), Struct_1(true), func_1(min(u_input.d.yzy, u_input.d.wxy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2252f, 275f, 1846f, 2048f)), vec2<bool>(true, true), ~vec4<i32>(u_input.b, u_input.d.x, u_input.b, -37856i))), min(-1i, 13459i), Struct_2(Struct_1(any(vec3<bool>(true, true, false))), u_input.d.zw, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-246f, 512f, 1024f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(496f, 249f, 726f) * vec3<f32>(996f, -902f, 117f)), vec3<bool>(false, true, true))), Struct_1(true), func_1(_wgslsmith_mult_vec3_i32(u_input.d.xyz, u_input.d.ywy), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1741f, -399f, -341f, 1887f), vec4<f32>(-1178f, 460f, 1000f, 288f))), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec4<i32>(u_input.d.x, -1i, u_input.b, u_input.d.x)))));
    var var_1 = Struct_2(Struct_1(all(vec2<bool>(false, true))), -var_0.c.xx, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(951f - -520f))) * _wgslsmith_div_f32(-1578f, 770f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1962f)), -110f), Struct_1(!var_0.b.a), var_0.b);
    var var_2 = var_0;
    var var_3 = 1u;
    var var_4 = var_1.e;
    let var_5 = var_0;
    var var_6 = func_4(!(!(var_0.c.x <= ~0i)), !(!select(func_5(Struct_2(var_1.a, vec2<i32>(u_input.b, var_5.c.x), vec3<f32>(-2361f, var_1.c.x, 1856f), var_2.a, var_5.b), Struct_2(Struct_1(var_0.a.a), vec2<i32>(11885i, var_5.c.x), var_1.c, Struct_1(true), Struct_1(false)), var_2.c.x, Struct_2(Struct_1(var_5.a.a), vec2<i32>(-2147483647i, var_0.c.x), var_1.c, Struct_1(var_2.b.a), Struct_1(var_2.a.a))).b, !vec4<bool>(true, var_0.b.a, var_1.d.a, true), var_0.b.a)), all(vec2<bool>(true | var_5.b.a, all(vec2<bool>(true, var_2.a.a)))) || (~4294967295u != (_wgslsmith_mod_u32(44254u, 4294967295u) >> (u_input.c.x % 32u))), var_5).wx;
    let x = u_input.a;
    s_output = StorageBuffer(max(firstTrailingBit(50254i), _wgslsmith_add_i32(~var_1.b.x, firstTrailingBit(u_input.b)) ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(8211i, var_2.c.x, var_1.b.x), u_input.d.xyy) >> (4294967295u % 32u))), u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_f_op_f32(1302f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_1.c.x)), -710f)))), min(u_input.a.x, 84676u));
}

