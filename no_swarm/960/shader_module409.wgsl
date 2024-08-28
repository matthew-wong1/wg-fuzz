struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    var var_0 = select(true, any(vec4<bool>(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(-32111i, 29164i), vec2<i32>(1i, 75112i)) > -6624i, true, !(!arg_0))), arg_0);
    var var_1 = false;
    var_1 = !all(!(!(!vec4<bool>(false, true, true, arg_0))));
    let var_2 = select(reverseBits(-vec2<i32>(~(-11010i), _wgslsmith_dot_vec2_i32(vec2<i32>(-37730i, 45971i), vec2<i32>(-3442i, 2147483647i)))), ~abs(vec2<i32>(96026i, -79108i)) >> (countOneBits(u_input.a.zw) % vec2<u32>(32u)), vec2<bool>(all(!vec4<bool>(arg_0, arg_0, arg_0, true)) || all(!vec4<bool>(true, false, arg_0, arg_0)), true | arg_0));
    let var_3 = abs(~(~(-firstTrailingBit(vec4<i32>(-1i, var_2.x, -19441i, 1i)))));
    return vec3<i32>(-1i) * -(reverseBits(vec3<i32>(var_2.x, var_2.x, var_3.x)) << (vec3<u32>(_wgslsmith_div_u32(0u, u_input.a.x), ~133143u, 0u) % vec3<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.d.x, _wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_div_f32(arg_1.c.d.x, -1000f), arg_1.c.d.x) * vec4<f32>(arg_1.c.d.x, arg_1.c.d.x, 464f, arg_1.c.d.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-arg_1.c.d.x), _wgslsmith_f_op_f32(step(449f, arg_1.c.d.x)), arg_1.c.d.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-412f, arg_1.c.d.x, arg_1.c.d.x, 1428f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c.d.x, arg_1.c.d.x, 426f, 1000f), vec4<f32>(-2092f, arg_1.c.d.x, -1245f, -211f), vec4<bool>(true, arg_1.c.b.x, true, arg_1.c.b.x)))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.c.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.d.x, 286f)))), 688f, arg_1.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1086f)))))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-606f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-282f + 967f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.x)), -229f)))), !arg_1.c.b.x))));
    let var_2 = arg_1.c;
    let var_3 = select(arg_1.c.b, select(vec3<bool>(all(select(vec4<bool>(false, arg_1.c.b.x, var_2.b.x, arg_1.c.b.x), vec4<bool>(var_2.b.x, true, arg_1.c.b.x, true), true)), true, any(!var_2.b)), vec3<bool>(var_2.b.x, any(select(arg_1.c.b.xy, vec2<bool>(arg_1.c.b.x, true), true)), any(!var_2.b)), select(true, var_2.b.x, true)), any(vec4<bool>(select(true, !var_2.b.x, !arg_1.c.b.x), !var_2.b.x, any(select(arg_1.c.b.zy, arg_1.c.b.zx, vec2<bool>(true, var_2.b.x))), arg_1.c.b.x)));
    var var_4 = Struct_4(var_2.c, abs(u_input.c), Struct_2(var_2.b.x, var_2, var_2, Struct_1(i32(-1i) * -89530i, vec3<bool>(select(true, true, false), true, true), vec3<i32>(2147483647i, arg_1.c.a, arg_1.a.x) << (~arg_1.b % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, 1000f, var_1)), var_0.ywz))), vec2<u32>(u_input.b, arg_0)), _wgslsmith_sub_u32(min(~20586u, 5339u), ~reverseBits(u_input.b)));
    return firstTrailingBit(countOneBits(27141u));
}

fn func_2() -> bool {
    var var_0 = !(!(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true))));
    global0 = _wgslsmith_mod_u32(~u_input.a.x, func_4(4294967295u, Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -54247i, 79020i, -21211i), vec4<i32>(1i, 1i, 1i, 1i)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.c, u_input.a.x), vec3<u32>(58721u, u_input.c, u_input.b))), Struct_1(~0i, select(var_0.zwx, vec3<bool>(var_0.x, var_0.x, var_0.x), true), vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-988f, 119f, -101f))), func_3(false && var_0.x))));
    var var_1 = u_input.a.yzz;
    let var_2 = select(vec4<bool>(48045u > ~u_input.b, var_0.x | any(vec2<bool>(false, var_0.x)), any(vec3<bool>(true, true, true)), any(!(!vec4<bool>(var_0.x, var_0.x, true, false)))), select(!select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(false, var_0.x, false, var_0.x), !vec4<bool>(true, true, var_0.x, var_0.x)), vec4<bool>(u_input.a.x >= 34897u, var_0.x, all(vec2<bool>(true, var_0.x)), var_0.x), !all(!var_0.wyw)), false);
    let var_3 = Struct_4(_wgslsmith_sub_vec3_i32(min(_wgslsmith_mod_vec3_i32(vec3<i32>(-6774i, -1i, -10458i), -vec3<i32>(1i, -4181i, -35763i)), countOneBits(select(vec3<i32>(9630i, 61608i, -13994i), vec3<i32>(-26517i, -81666i, -47583i), false))), abs(vec3<i32>(1i, 1i, 1i))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c, 0u) >> (_wgslsmith_dot_vec3_u32(u_input.a.zxz, vec3<u32>(5004u, 1u, u_input.b)) % 32u), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), countOneBits(u_input.c)), _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(u_input.a.xzw, u_input.a.wwx))), Struct_2(var_2.x, Struct_1(firstLeadingBit(~(-108437i)), var_2.zww, _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 2147483647i), vec3<i32>(0i, -2147483647i, -39269i), vec3<i32>(-41176i, -38357i, 0i)) << (~u_input.a.xxz % vec3<u32>(32u)), vec3<f32>(_wgslsmith_div_f32(1062f, 1923f), _wgslsmith_div_f32(-2132f, -2330f), -806f)), Struct_1(1i, var_2.wyx, vec3<i32>(~0i, -29573i, 0i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1942f, -460f, 1000f))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1431f, 441f, -312f))))), Struct_1(_wgslsmith_mult_i32(~1i, 35183i), !vec3<bool>(var_0.x, var_2.x, true), ~vec3<i32>(0i, 2147483647i, 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1075f, -650f, 650f), vec3<f32>(-965f, 1856f, 1836f), false)) - vec3<f32>(-1180f, 1101f, -894f))), vec2<u32>(17484u, _wgslsmith_add_u32(35206u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.x, var_1.x), vec3<u32>(1u, var_1.x, var_1.x))))), func_4(_wgslsmith_mult_u32(1u, ~u_input.b), Struct_3(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec3_u32(vec3<u32>(23991u, 1u, var_1.x), vec3<u32>(4294967295u, 0u, u_input.a.x)), Struct_1(20046i, vec3<bool>(true, var_2.x, var_2.x), vec3<i32>(0i, 2147483647i, 41847i), vec3<f32>(-531f, 395f, -281f)), vec3<i32>(1i, 0i, -1i))) & ~1u);
    return true;
}

fn func_1() -> Struct_3 {
    global0 = 269u;
    let var_0 = ~vec2<u32>(1u, 4294967295u);
    global0 = abs(61762u);
    global0 = max(_wgslsmith_mult_u32(var_0.x, ~(~4294967295u) << (_wgslsmith_div_u32(u_input.b, var_0.x) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.x, _wgslsmith_dot_vec4_u32(min(u_input.a, u_input.a), ~vec4<u32>(4294967295u, u_input.a.x, 45584u, 46032u))), ~vec2<u32>(var_0.x | 0u, ~u_input.a.x)));
    var var_1 = i32(-1i) * -2147483647i;
    return Struct_3(abs(select(vec4<i32>(-2147483647i, ~(-16409i), 1i, ~0i), vec4<i32>(2147483647i, _wgslsmith_sub_i32(42263i, 2147483647i), 1i, firstLeadingBit(0i)), func_2() || true)), ~u_input.a.wzz, Struct_1(_wgslsmith_clamp_i32(func_3(false).x, firstTrailingBit(19093i), _wgslsmith_mult_i32(1i, -1i)), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), !all(vec3<bool>(false, true, false))), abs(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, 11893i), vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-606f, -725f, -616f)))))), vec3<i32>(-(~(i32(-1i) * -7022i)), 1i, min(1i << (1u % 32u), 12508i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_2(false, Struct_1(select(var_0.a.x, _wgslsmith_add_i32(i32(-1i) * -61673i, ~var_0.d.x), var_0.c.b.x), vec3<bool>(!var_0.c.b.x, var_0.c.b.x, all(var_0.c.b)), vec3<i32>(abs(-1i), reverseBits(_wgslsmith_mult_i32(var_0.a.x, var_0.a.x)), firstLeadingBit(-2147483647i)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c.d.x, -500f, var_0.c.d.x)))))))), func_1().c, func_1().c, ~(~vec2<u32>(func_1().b.x, var_0.b.x | 1u)));
    let var_2 = func_3(false);
    var_0 = func_1();
    var var_3 = var_0.c.d.yz;
    var var_4 = vec4<i32>(func_1().d.x, i32(-1i) * -2147483647i, var_1.d.c.x, var_2.x >> (~_wgslsmith_div_u32(abs(var_0.b.x), ~1u) % 32u));
    var_4 = ~select(vec4<i32>(max(var_4.x, 38007i) >> (_wgslsmith_add_u32(var_1.e.x, var_0.b.x) % 32u), var_0.d.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_0.a.zy, vec2<i32>(0i, var_4.x)), 1i | var_2.x), _wgslsmith_add_i32(var_0.d.x, reverseBits(-57631i))), var_0.a, !select(vec4<bool>(var_1.c.b.x, var_0.c.b.x, var_1.c.b.x, true), vec4<bool>(var_0.c.b.x, var_0.c.b.x, true, true), var_0.c.b.x || var_1.d.b.x));
    var var_5 = Struct_4(var_1.b.c, _wgslsmith_mult_u32(var_0.b.x, _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(func_4(4294967295u, Struct_3(var_0.a, u_input.a.wwy, Struct_1(-20671i, vec3<bool>(var_1.d.b.x, var_0.c.b.x, false), var_2, vec3<f32>(-1828f, 2548f, 600f)), var_1.d.c)), ~32734u), ~(var_1.e.x & 1u))), Struct_2(true, var_1.b, var_1.d, var_1.c, vec2<u32>(_wgslsmith_sub_u32(0u, var_0.b.x), _wgslsmith_mod_u32(4294967295u, var_0.b.x)) & ~(var_1.e & var_0.b.xx)), ~_wgslsmith_mult_u32(func_4(34312u, func_1()), _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.b.x, var_0.b.x), max(u_input.c, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(var_5.c.a).x);
}

