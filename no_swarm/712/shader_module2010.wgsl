struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = ~arg_0;
    var var_1 = true;
    var var_2 = 20702u;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -423f);
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1690f, 202f, 536f, 1000f)))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(568f, var_3, -1255f, var_3))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1545f, var_3, var_3, var_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, var_3, 642f))))))), true, vec4<bool>(1f <= _wgslsmith_f_op_f32(-var_3), arg_1, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * -522f) * _wgslsmith_f_op_f32(-var_3)) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(200f - var_3)))));
    return var_4;
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 17819u;
    let var_1 = arg_3.a.zwy;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -460f), _wgslsmith_f_op_f32(min(1504f, arg_2.x)))) - -1692f));
    var var_3 = arg_3;
    let var_4 = func_2(abs(_wgslsmith_div_u32(var_0 ^ min(0u, 17494u), ~abs(u_input.c))), true);
    return arg_3;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 26057i;
    var var_1 = func_3(false, vec2<i32>(u_input.a.x, 1i), arg_1.a.xzy, arg_1);
    var var_2 = func_2(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.c), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(48035u, u_input.d.x, 32451u, 82653u)), vec4<u32>(47724u, u_input.c, u_input.b, u_input.d.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(3607u, 3951u, 19721u, u_input.b) << (vec4<u32>(66872u, 8370u, u_input.c, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, 1u, u_input.c, 47700u), vec4<u32>(u_input.d.x, 112740u, 1u, 0u) << (vec4<u32>(u_input.b, 0u, u_input.c, 0u) % vec4<u32>(32u)))), firstTrailingBit(~(~vec4<u32>(u_input.d.x, 4294967295u, 1u, 1u)))), !func_3(all(var_1.c.zw), abs(vec2<i32>(u_input.a.x, -2952i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-745f, 761f, arg_1.a.x)), Struct_1(arg_1.a, false, var_1.c)).b | any(func_3(!arg_1.c.x, -vec2<i32>(var_0, u_input.a.x), arg_1.a.zwy, arg_1).c.ww));
    var var_3 = Struct_1(vec4<f32>(var_1.a.x, var_2.a.x, _wgslsmith_f_op_f32(func_2(u_input.d.x >> (24173u % 32u), arg_1.b || var_2.c.x).a.x + arg_1.a.x), 869f), true, vec4<bool>(true, false, select(!var_2.c.x, true, all(vec2<bool>(var_1.c.x, arg_0.x))), arg_0.x));
    var_3 = func_2(max(~_wgslsmith_sub_u32(1u, u_input.c & u_input.c), ~87742u), arg_1.b);
    return Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_3.a, func_3(false, vec2<i32>(u_input.a.x, u_input.a.x), arg_1.a.xwx, arg_1).a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a))))), false, var_3.c);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = min(_wgslsmith_mod_u32(_wgslsmith_add_u32(countOneBits(u_input.c | 1u), 0u), select(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.d.x, 72841u), u_input.d.yy), vec2<u32>(u_input.d.x, 10565u)), ~_wgslsmith_div_u32(u_input.d.x, arg_1), false | arg_2.b)), reverseBits(4294967295u));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -25238i), vec3<i32>(4822i, 0i, u_input.a.x)), countOneBits(vec3<i32>(-1i, u_input.a.x, u_input.a.x)))), u_input.a.x, select(u_input.a.x, abs(abs(76883i)), arg_2.b), _wgslsmith_mod_i32(u_input.a.x, ~u_input.a.x)), -_wgslsmith_sub_vec4_i32(~reverseBits(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x)), firstLeadingBit(vec4<i32>(-2147483647i, -15410i, u_input.a.x, u_input.a.x) >> (vec4<u32>(1u, 41700u, 33959u, arg_1) % vec4<u32>(32u)))));
    let var_2 = u_input.d;
    return reverseBits(vec3<i32>(u_input.a.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, -2147483647i), u_input.a.x), countOneBits(u_input.a.x))) << (~(~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d.x, u_input.d.x, u_input.b), max(u_input.d, vec3<u32>(var_2.x, 1u, 30908u)))) % vec3<u32>(32u));
}

fn func_1() -> StorageBuffer {
    var var_0 = abs(func_5(func_4(vec3<bool>(all(vec2<bool>(true, false)), false, all(vec3<bool>(true, true, true))), func_3(-2147483647i <= u_input.a.x, u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1014f, 472f, 1006f) - vec3<f32>(-1511f, 467f, 498f)), func_2(4294967295u, false))), u_input.d.x & 1u, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-818f, 609f, -827f, -238f), vec4<f32>(540f, 367f, 601f, -1801f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-253f, 649f, -766f, -1294f) - vec4<f32>(1193f, -421f, 269f, 1210f))), false && select(true, true, true), select(func_3(false, u_input.a, vec3<f32>(567f, 812f, 1101f), Struct_1(vec4<f32>(409f, -529f, -661f, -1000f), false, vec4<bool>(true, true, true, true))).c, vec4<bool>(true, true, false, true), true))));
    var_0 = firstTrailingBit(~vec3<i32>(_wgslsmith_sub_i32(var_0.x, reverseBits(u_input.a.x)), -10474i, max(reverseBits(-1i), 1i)));
    let var_1 = Struct_1(vec4<f32>(-1282f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1753f), _wgslsmith_f_op_f32(trunc(1f)))), 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1596f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1179f) + -337f)))), true, vec4<bool>(true, !any(vec2<bool>(true, true)), true, any(func_4(vec3<bool>(true, true, true), Struct_1(vec4<f32>(581f, -450f, 1848f, 1325f), false, vec4<bool>(true, true, false, true))).c)));
    var_0 = ~vec3<i32>(-((u_input.a.x >> (1u % 32u)) ^ var_0.x), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, var_0.x, -17688i << (u_input.b % 32u)), -24126i), u_input.a.x);
    var var_2 = func_2(u_input.b, !(u_input.d.x <= 1u));
    return StorageBuffer(51405u, var_1.a.xzz, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - 829f)), var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(4294967295u < u_input.d.x);
    var var_1 = !select(select(vec4<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, false, false))), vec4<bool>(true, true & any(vec2<bool>(false, false)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-817f, 844f)))) > 1072f);
    let x = u_input.a;
    s_output = func_1();
}

