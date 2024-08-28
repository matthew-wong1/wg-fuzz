struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-588f * 165f))), -1913f)), 0i, firstLeadingBit(select(_wgslsmith_clamp_u32(9048u, u_input.b.x, 29528u) ^ u_input.b.x, u_input.b.x, true)), select(vec4<bool>(true, true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), true)), _wgslsmith_sub_u32(u_input.b.x, 1884u) >= 29683u), !vec4<bool>(4294967295u < u_input.b.x, false, true, true), vec4<bool>(!any(vec4<bool>(false, false, false, false)), select(any(vec4<bool>(false, true, true, true)), select(true, false, false), true), !any(vec4<bool>(true, false, true, true)), all(vec3<bool>(true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(1550f - 1f), -1000f, 509f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1557f * 277f)) + -256f)));
    let var_1 = reverseBits(2147483647i);
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(54007u, 6136u, 4294967295u, 4294967295u), select(~(~vec4<u32>(u_input.b.x, 4294967295u, var_0.c, u_input.b.x)), vec4<u32>(var_0.c, 0u, u_input.b.x, u_input.b.x) & (vec4<u32>(74007u, var_0.c, u_input.b.x, 497u) ^ vec4<u32>(u_input.b.x, 4294967295u, 1u, 53718u)), !var_0.d)), vec4<u32>(_wgslsmith_clamp_u32(~abs(var_0.c), 21308u, u_input.b.x), ~u_input.b.x, ~(~(29051u << (u_input.b.x % 32u))), _wgslsmith_mod_u32(max(~u_input.b.x, 1u), u_input.b.x)), vec4<u32>(0u, 98946u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), ~u_input.b), _wgslsmith_mult_u32(0u, 1u) | reverseBits(_wgslsmith_mult_u32(u_input.b.x, 4349u))));
    var var_3 = Struct_3(vec2<bool>(!(_wgslsmith_sub_u32(var_2.x, var_0.c) < 20383u), var_0.d.x), u_input.b.zz, vec3<u32>(var_2.x >> (0u % 32u), min(var_0.c, _wgslsmith_sub_u32(var_0.c, u_input.b.x)), u_input.b.x), Struct_1(var_0.e.x, ~1i, 0u & var_2.x, vec4<bool>(any(select(var_0.d.yxy, var_0.d.xzw, true)), var_0.d.x, !(var_0.a < var_0.a), true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.e.x, var_0.a, var_0.e.x))))));
    let var_4 = -vec3<i32>(min(_wgslsmith_add_i32(2147483647i, -33654i), _wgslsmith_div_i32(~var_0.b, 23774i ^ u_input.a)), firstTrailingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, var_3.d.b), vec2<i32>(var_0.b, var_1) >> (vec2<u32>(u_input.b.x, 10532u) % vec2<u32>(32u)))), ~(~firstTrailingBit(var_0.b)));
    return ~_wgslsmith_add_u32(4294967295u, 0u);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec4<f32> {
    let var_0 = vec4<u32>(~157242u, _wgslsmith_sub_u32(func_3() << (arg_2.x % 32u), ~abs(arg_0) ^ ~24638u), 14396u, ~_wgslsmith_mod_u32(abs(_wgslsmith_add_u32(49897u, arg_0)), u_input.b.x));
    var var_1 = vec3<bool>(arg_1, all(vec3<bool>(arg_1, !all(vec4<bool>(arg_1, false, arg_1, arg_1)), true)), any(!select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1), true)));
    let var_2 = Struct_3(vec2<bool>(false, false | any(vec3<bool>(var_1.x, true, arg_1))), firstTrailingBit(select(max(max(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(arg_0, 72824u)), arg_2.zw), ~reverseBits(vec2<u32>(u_input.b.x, 1u)), false)), abs(_wgslsmith_mult_vec3_u32(arg_2.zww, firstLeadingBit(vec3<u32>(arg_2.x, 1u, arg_0)))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1413f * -241f))), _wgslsmith_f_op_f32(abs(1166f)))), u_input.a, func_3(), select(!select(vec4<bool>(var_1.x, arg_1, true, var_1.x), vec4<bool>(false, false, true, var_1.x), vec4<bool>(true, arg_1, var_1.x, false)), vec4<bool>(true, true, any(var_1.yy), true), select(select(vec4<bool>(arg_1, true, var_1.x, true), vec4<bool>(arg_1, var_1.x, arg_1, false), vec4<bool>(true, true, false, true)), !vec4<bool>(false, arg_1, arg_1, false), !arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-664f, -338f, -1275f, -554f) + vec4<f32>(1639f, 595f, -1923f, -776f))))));
    let var_3 = !(!select(!vec3<bool>(false, true, var_2.a.x), !select(var_2.d.d.yyw, vec3<bool>(arg_1, var_1.x, var_1.x), true), arg_1));
    var_1 = !select(!select(vec3<bool>(arg_1, var_1.x, var_2.a.x), !var_2.d.d.ywx, select(vec3<bool>(arg_1, var_3.x, true), vec3<bool>(arg_1, var_3.x, var_1.x), var_2.d.d.zyx)), !select(var_2.d.d.xzz, vec3<bool>(var_1.x, var_1.x, arg_1), !var_2.d.d.xyw), select(select(!vec3<bool>(false, var_2.d.d.x, var_3.x), !vec3<bool>(arg_1, false, var_1.x), !vec3<bool>(arg_1, var_2.d.d.x, true)), vec3<bool>(false, any(var_2.d.d.xxy), true), !var_2.d.d.x & !var_2.a.x));
    return vec4<f32>(_wgslsmith_f_op_f32(-var_2.d.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(507f - var_2.d.e.x)) + 1f), 1166f, 598f);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = select(!vec3<bool>(max(1u, arg_3.x) != arg_3.x, select(true, arg_0.c.d.x, arg_0.b.d.x) || true, any(!arg_0.b.d.xxx)), arg_0.b.d.wxy, arg_0.b.d.x);
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(9009i, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, arg_2), vec2<i32>(~arg_0.c.b, _wgslsmith_dot_vec2_i32(vec2<i32>(17182i, -1i), vec2<i32>(1i, arg_0.b.b))))), vec3<i32>(arg_0.c.b, (firstLeadingBit(u_input.a) & -28907i) >> (~(~arg_3.x) % 32u), u_input.a));
    var var_2 = Struct_3(var_0.zz, vec2<u32>(_wgslsmith_div_u32(arg_3.x, 31069u), max(_wgslsmith_clamp_u32(u_input.b.x, arg_0.c.c, 32980u), u_input.b.x) | 1u), vec3<u32>(firstLeadingBit(firstLeadingBit(~0u)), 1u, 28580u), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.c.a + 1f))), u_input.a, arg_1, arg_0.b.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1108f, arg_0.b.e.x, arg_0.b.e.x, arg_0.c.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.e.x, -2137f, arg_0.b.a, -173f) + vec4<f32>(arg_0.c.e.x, -784f, -1317f, arg_0.c.e.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.b.e))))));
    var_2 = Struct_3(vec2<bool>(arg_0.b.d.x, arg_0.c.d.x), var_2.b, max(~(~(~vec3<u32>(arg_0.c.c, arg_1, 0u))), ~countOneBits(~arg_3)), Struct_1(_wgslsmith_f_op_f32(min(480f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.b.a)))))), var_1, 68176u, !var_2.d.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, _wgslsmith_f_op_f32(f32(-1f) * -1631f), _wgslsmith_div_f32(683f, -1205f), _wgslsmith_f_op_f32(f32(-1f) * -1100f)))));
    var var_3 = arg_0.a.x;
    return vec4<bool>(any(vec2<bool>(true, all(var_2.d.d))), var_0.x, var_2.a.x, !var_2.d.d.x);
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = !select(arg_0.d.xy, vec2<bool>(false, any(vec4<bool>(false, arg_0.d.x, true, arg_0.d.x))), true);
    var_0 = arg_0.d.xz;
    var var_1 = any(vec2<bool>(false, select(arg_0.d.x, var_0.x, !all(vec3<bool>(var_0.x, var_0.x, arg_0.d.x)))));
    var var_2 = 1u;
    var var_3 = arg_0.b;
    return func_4(Struct_2(select(-max(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, -44821i, u_input.a)), (vec3<i32>(-1i, arg_0.b, 0i) << (u_input.b % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0.c, 1u), u_input.b, u_input.b) % vec3<u32>(32u)), arg_0.d.wxz), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1239f)) * 2148f), max(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(43490i, u_input.a, -1i, -33677i), vec4<i32>(1i, -2147483647i, -2147483647i, -42139i))), ~15447u, arg_0.d, vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.e.x, -1004f)), -365f, arg_0.e.x, arg_0.a)), Struct_1(690f, -38907i, u_input.b.x, vec4<bool>(true, false, var_0.x, !arg_0.d.x), _wgslsmith_f_op_vec4_f32(arg_0.e - _wgslsmith_f_op_vec4_f32(func_2(101900u, false, vec4<u32>(u_input.b.x, 0u, 27601u, u_input.b.x), vec4<i32>(-13070i, u_input.a, 1i, 65691i)))))), ~42256u, reverseBits(-u_input.a), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(vec2<bool>(true | all(vec4<bool>(true, true, true, true)), any(func_1(Struct_1(782f, -2147483647i, 4294967295u, vec4<bool>(true, false, true, false), vec4<f32>(552f, -551f, -168f, -590f))))), !select(func_1(Struct_1(1000f, 15797i, 4294967295u, vec4<bool>(false, true, false, false), vec4<f32>(1000f, -198f, 1764f, -687f))).yw, func_1(Struct_1(-1086f, 0i, u_input.b.x, vec4<bool>(true, true, true, true), vec4<f32>(204f, -1644f, -664f, -1000f))).yx, u_input.a <= u_input.a), !select(any(vec3<bool>(false, true, false)), true, false)), u_input.b.yy, vec3<u32>((u_input.b.x ^ 21851u) ^ ~4294967295u, 4294967295u, u_input.b.x) >> (~vec3<u32>(func_3(), u_input.b.x, ~u_input.b.x) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-792f * -646f), -1719f)), u_input.a, 4896u, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1002f, -996f, 351f, -838f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1472f, -1085f, 1593f, 1856f)))));
    var_0 = Struct_3(!select(!select(vec2<bool>(false, var_0.d.d.x), vec2<bool>(var_0.d.d.x, false), false), select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(var_0.d.d.x, true), vec2<bool>(false, var_0.a.x)), !(!var_0.d.d.x)), countOneBits(vec2<u32>(~106521u, 0u)), countOneBits(vec3<u32>(~_wgslsmith_div_u32(20811u, var_0.d.c), ~_wgslsmith_dot_vec3_u32(var_0.c, var_0.c), 26284u)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d.a))), -u_input.a, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(0u, u_input.b.x), ~(~u_input.b.x)), !var_0.d.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1361f, -1970f, -1000f, var_0.d.a)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.d.e * vec4<f32>(1206f, var_0.d.a, var_0.d.e.x, var_0.d.a)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d.a, var_0.d.a, -380f, var_0.d.e.x))), !var_0.d.d)))));
    var_0 = Struct_3(var_0.a, min(_wgslsmith_clamp_vec2_u32(u_input.b.yx, vec2<u32>(var_0.d.c, u_input.b.x) >> (u_input.b.xz % vec2<u32>(32u)), max(abs(u_input.b.zx), select(u_input.b.xz, u_input.b.yz, vec2<bool>(false, true)))), vec2<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, var_0.c.x, 53023u, u_input.b.x)), vec4<u32>(1u, 0u, 28134u, var_0.c.x)))), firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.b.x, var_0.c.x, 21500u))) & var_0.c, var_0.d);
    let var_1 = max(u_input.a, _wgslsmith_add_i32(min(~var_0.d.b ^ 29537i, -7882i), var_0.d.b));
    var_0 = Struct_3(func_1(Struct_1(var_0.d.e.x, var_1, 1u, var_0.d.d, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(590f, -160f, 1574f, var_0.d.a), vec4<f32>(var_0.d.a, 1350f, 1308f, var_0.d.e.x))))).wy, ~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.c.yz, vec2<u32>(var_0.c.x, u_input.b.x)), var_0.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 68762u), u_input.b.xx, u_input.b.zy)), ~(~vec2<u32>(u_input.b.x, 1u))), ~vec3<u32>(u_input.b.x, max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, var_0.d.c, u_input.b.x, 0u), vec4<u32>(0u, 39993u, u_input.b.x, u_input.b.x))), 0u), Struct_1(_wgslsmith_f_op_f32(var_0.d.a - var_0.d.a), -1i, reverseBits(abs(1u)), func_4(Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.d.b, var_0.d.b, -45890i), vec3<i32>(-73491i, 44722i, -41774i)), Struct_1(var_0.d.a, var_1, var_0.c.x, vec4<bool>(true, false, false, var_0.a.x), var_0.d.e), var_0.d), ~var_0.c.x << (76914u % 32u), var_1, u_input.b), var_0.d.e));
    let var_2 = vec3<bool>(!any(vec3<bool>(false, false, var_0.a.x)) | any(func_1(Struct_1(var_0.d.a, 1i, 17079u, var_0.d.d, var_0.d.e)).wwz), true, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -vec2<i32>(var_1, _wgslsmith_mod_i32(u_input.a, var_1)), vec3<u32>(~(~0u << (~u_input.b.x % 32u)), ~_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_sub_u32(u_input.b.x, reverseBits(u_input.b.x << (u_input.b.x % 32u)))), firstLeadingBit(4294967295u << (0u % 32u)), u_input.b.x, vec2<i32>(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.a, 1i, -2147483647i, var_1)), -vec4<i32>(u_input.a, 2147483647i, var_0.d.b, -11318i)), firstTrailingBit(var_0.d.b << (~u_input.b.x % 32u))));
}

