struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: vec4<bool>,
    e: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_4, arg_3: vec2<f32>) -> f32 {
    let var_0 = ~4294967295u;
    var var_1 = _wgslsmith_f_op_f32(-arg_2.a.c.x);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-223f + arg_2.b.b.x)))) * -1000f);
    return 978f;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_4) -> f32 {
    let var_0 = ~arg_1.a.x;
    var var_1 = arg_3.b.e;
    var var_2 = arg_3.b.e;
    var_1 = Struct_1(vec2<bool>(any(vec4<bool>(true, arg_3.b.a.x | false, u_input.a >= 21611i, var_1.a.x || arg_3.d.x)), !any(!vec4<bool>(arg_3.d.x, true, var_2.a.x, true))), -17633i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(485f, 799f, -805f))))));
    var_2 = Struct_1(!vec2<bool>(arg_1.a.x < _wgslsmith_add_u32(76229u, arg_3.b.c.a.x), false), arg_3.a.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + -2417f)), arg_1.c, _wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(select(var_1.c.x, 1138f, var_1.a.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-477f, 2343f, -1454f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.c.x));
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_2(abs(max(vec2<u32>(4294967295u, 11373u), vec2<u32>(10333u, 4294967295u) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 4294967295u) & vec2<u32>(1u, 43572u), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))), vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), false, true, false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1066f - _wgslsmith_f_op_f32(step(1148f, -257f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(524f)), _wgslsmith_f_op_f32(-742f - -646f))))));
    var var_1 = 4294967295u;
    let var_2 = Struct_5(Struct_3(!select(!var_0.b.wz, !var_0.b.zy, any(var_0.b.wyw)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, var_0.c) * _wgslsmith_div_vec3_f32(vec3<f32>(1607f, var_0.c, -428f), vec3<f32>(var_0.c, 1193f, 943f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c, var_0.c, var_0.c), vec3<f32>(1547f, -782f, 447f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c, -422f, var_0.c))))), Struct_2(firstLeadingBit(var_0.a), select(!var_0.b, vec4<bool>(false, var_0.b.x, false, var_0.b.x), var_0.b), _wgslsmith_f_op_f32(-var_0.c)), true, Struct_1(var_0.b.yy, _wgslsmith_sub_i32(u_input.a, u_input.a) >> (~65749u % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-353f, -825f, var_0.c), vec3<f32>(var_0.c, var_0.c, var_0.c)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(282f, var_0.c, var_0.c), vec3<f32>(var_0.c, 312f, var_0.c)))))), select(var_0.b.x & any(var_0.b.zzy), var_0.b.x, var_0.b.x) & any(!var_0.b.zz), Struct_1(select(vec2<bool>(var_0.b.x, true), vec2<bool>(true, true), vec2<bool>(false, true)), 27099i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + -505f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1098f + 802f)), _wgslsmith_f_op_f32(func_3(vec2<bool>(var_0.b.x, false), Struct_2(vec2<u32>(u_input.c, u_input.b), var_0.b, var_0.c), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c, var_0.c, -630f, -1073f), vec4<f32>(var_0.c, var_0.c, -1000f, var_0.c))), Struct_4(Struct_1(vec2<bool>(var_0.b.x, var_0.b.x), u_input.a, vec3<f32>(var_0.c, -705f, 160f)), Struct_3(vec2<bool>(var_0.b.x, false), vec3<f32>(1399f, -921f, var_0.c), Struct_2(vec2<u32>(u_input.c, var_0.a.x), var_0.b, var_0.c), false, Struct_1(var_0.b.zz, u_input.a, vec3<f32>(var_0.c, 530f, var_0.c))), Struct_1(var_0.b.yz, 34416i, vec3<f32>(-413f, -453f, var_0.c)), vec4<bool>(var_0.b.x, true, false, var_0.b.x), false))))), u_input.a);
    let var_3 = var_2.c.c.x;
    var_0 = var_2.a.c;
    return Struct_5(Struct_3(var_2.a.a, vec3<f32>(var_2.c.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(273f, -197f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3, -451f)))), var_2.a.c, reverseBits(min(0u, 35942u)) >= reverseBits(~var_2.a.c.a.x), var_2.c), all(select(!vec2<bool>(true, var_0.b.x), var_0.b.ww, !var_2.b)), Struct_1(!vec2<bool>(!var_0.b.x, var_2.b && var_0.b.x), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1029f, -1000f, -1224f)))), firstLeadingBit(var_2.d) >> (4294967295u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 49332u;
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(123f, 739f))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-266f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1558f) + -387f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(select(-597f, 3392f, var_1)), _wgslsmith_f_op_f32(round(-1344f)))))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-361f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-var_2.x), false, Struct_4(Struct_1(vec2<bool>(false, var_1), 53803i, vec3<f32>(var_2.x, var_2.x, var_2.x)), Struct_3(vec2<bool>(false, true), vec3<f32>(var_2.x, 810f, var_2.x), Struct_2(vec2<u32>(74360u, u_input.b), vec4<bool>(var_1, var_1, false, var_1), var_2.x), true, Struct_1(vec2<bool>(false, false), 2147483647i, vec3<f32>(-388f, var_2.x, 821f))), Struct_1(vec2<bool>(false, true), 0i, vec3<f32>(1000f, 735f, -1308f)), vec4<bool>(var_1, true, true, var_1), true), _wgslsmith_f_op_vec2_f32(sign(var_2)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_2.x, var_1, Struct_4(Struct_1(vec2<bool>(var_1, false), -2147483647i, vec3<f32>(var_2.x, var_2.x, 409f)), Struct_3(vec2<bool>(true, true), vec3<f32>(-1000f, -1040f, 216f), Struct_2(vec2<u32>(0u, var_0), vec4<bool>(true, false, var_1, var_1), var_2.x), true, Struct_1(vec2<bool>(true, true), u_input.a, vec3<f32>(var_2.x, -1594f, var_2.x))), Struct_1(vec2<bool>(var_1, var_1), u_input.a, vec3<f32>(var_2.x, -973f, 330f)), vec4<bool>(var_1, true, var_1, var_1), var_1), vec2<f32>(-277f, var_2.x)))))), -517f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(755f))), _wgslsmith_f_op_f32(1999f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x - var_2.x), var_2.x, any(vec3<bool>(var_1, false, true)))))));
    var var_4 = func_2();
    var_4 = Struct_5(func_2().a, !(!(!all(vec3<bool>(true, var_4.c.a.x, true)))), Struct_1(!select(vec2<bool>(false, var_1), select(var_4.a.c.b.yw, vec2<bool>(var_4.c.a.x, true), var_4.c.a), vec2<bool>(false, false)), -var_4.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(var_4.c.c)))) - _wgslsmith_f_op_vec3_f32(var_4.c.c - vec3<f32>(-422f, var_3.x, -657f)))), select(u_input.a, ~(-369i) << (u_input.c % 32u), all(select(var_4.a.c.b.yxx, vec3<bool>(true, var_1, var_1), var_4.a.c.b.xww))));
    let var_5 = _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, _wgslsmith_mult_i32(-23894i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -28670i, -1i), vec3<i32>(61131i, 0i, -44014i))), 33005i >> (u_input.b % 32u), var_4.a.e.b), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_4.d, -17943i, -49655i, -20603i), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, var_4.c.b, -8300i, var_4.d), vec4<i32>(var_4.c.b, var_4.c.b, var_4.a.e.b, u_input.a), vec4<i32>(var_4.c.b, -2147483647i, var_4.d, -1i)), vec4<i32>(2021i, -2147483647i, 25193i, var_4.a.e.b))), u_input.a, abs(11703i), reverseBits(~(-u_input.a))));
    var var_6 = vec2<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_4.a.c.a.x, var_0, u_input.c), (vec4<u32>(u_input.c, 4294967295u, var_0, 20762u) & vec4<u32>(67551u, var_0, var_4.a.c.a.x, 4294967295u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(2122u, var_0, var_0, 39401u), vec4<u32>(87726u, 64588u, var_4.a.c.a.x, var_0)) % vec4<u32>(32u))), u_input.c), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, abs(~(~func_2().a.c.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(467f, _wgslsmith_f_op_f32(var_4.a.b.x - var_4.a.e.c.x)), var_3.x) - var_3.zy), -_wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(var_5.zxy, var_5.wxy), var_5.yxz));
}

