struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(61207u, 2461f, Struct_1(true, vec4<u32>(1u, 43539u, 4294967295u, 35905u), vec4<i32>(i32(-2147483648), 0i, -1i, 17205i), 103326u), 1i, vec2<bool>(false, true)), Struct_2(33795u, -195f, Struct_1(true, vec4<u32>(45688u, 4294967295u, 3990u, 16786u), vec4<i32>(0i, -3918i, 16049i, 12716i), 46904u), i32(-2147483648), vec2<bool>(true, false)), Struct_2(36265u, -509f, Struct_1(false, vec4<u32>(0u, 0u, 1u, 11838u), vec4<i32>(i32(-2147483648), 96025i, i32(-2147483648), 2147483647i), 1u), 31937i, vec2<bool>(true, false)), Struct_2(0u, 1263f, Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 576u, 0u), vec4<i32>(-21438i, -16666i, 22435i, 3787i), 4294967295u), 0i, vec2<bool>(false, false)), Struct_2(4294967295u, -125f, Struct_1(true, vec4<u32>(4294967295u, 3109u, 4294967295u, 0u), vec4<i32>(-50588i, 2147483647i, i32(-2147483648), 13294i), 43264u), 15176i, vec2<bool>(false, true)), Struct_2(28925u, 335f, Struct_1(false, vec4<u32>(0u, 26283u, 4294967295u, 4294967295u), vec4<i32>(-5272i, 2147483647i, 7272i, 9493i), 0u), 21570i, vec2<bool>(true, true)), Struct_2(4294967295u, 1000f, Struct_1(false, vec4<u32>(15849u, 14218u, 22967u, 10602u), vec4<i32>(-1i, -1i, 20228i, 3704i), 12150u), 0i, vec2<bool>(false, false)), Struct_2(43753u, 554f, Struct_1(false, vec4<u32>(4294967295u, 1u, 0u, 87588u), vec4<i32>(-73812i, -1i, 51960i, 13473i), 4294967295u), 12906i, vec2<bool>(false, true)), Struct_2(0u, -1054f, Struct_1(true, vec4<u32>(2160u, 1u, 4294967295u, 14243u), vec4<i32>(-14905i, 14454i, -1i, 0i), 1u), 31236i, vec2<bool>(true, true)), Struct_2(4294967295u, 1000f, Struct_1(true, vec4<u32>(1u, 0u, 50053u, 34942u), vec4<i32>(0i, 2147483647i, 11695i, i32(-2147483648)), 8319u), 14696i, vec2<bool>(true, true)), Struct_2(39546u, -2465f, Struct_1(false, vec4<u32>(34143u, 0u, 4294967295u, 11522u), vec4<i32>(i32(-2147483648), 1i, 1i, -20871i), 1u), 63438i, vec2<bool>(false, false)), Struct_2(19227u, 180f, Struct_1(false, vec4<u32>(0u, 0u, 16584u, 0u), vec4<i32>(-70514i, -1i, 0i, -38651i), 1u), i32(-2147483648), vec2<bool>(false, true)), Struct_2(13640u, -1528f, Struct_1(true, vec4<u32>(82435u, 1u, 0u, 1u), vec4<i32>(-7382i, 0i, 20859i, 2147483647i), 102320u), -18574i, vec2<bool>(true, false)), Struct_2(20463u, 204f, Struct_1(false, vec4<u32>(13295u, 17620u, 16310u, 5115u), vec4<i32>(i32(-2147483648), 55487i, -1i, i32(-2147483648)), 1u), 2147483647i, vec2<bool>(false, true)), Struct_2(91027u, 1231f, Struct_1(false, vec4<u32>(51224u, 62852u, 11267u, 16341u), vec4<i32>(61118i, 18415i, -21105i, -1i), 1u), i32(-2147483648), vec2<bool>(true, false)), Struct_2(0u, 870f, Struct_1(true, vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<i32>(30072i, 33936i, -28762i, 53124i), 8966u), -1i, vec2<bool>(true, false)), Struct_2(35693u, 1000f, Struct_1(true, vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<i32>(0i, 1i, 0i, -1i), 1u), 30108i, vec2<bool>(true, false)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: i32) -> i32 {
    let var_0 = abs(~max(vec3<u32>(22758u, ~arg_0, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, arg_0, arg_0), vec3<u32>(u_input.b.x, u_input.b.x, 1u)) | max(vec3<u32>(4294967295u, arg_1, 12412u), vec3<u32>(35179u, 4294967295u, 115857u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(127f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(906f)))), 1000f)));
    let var_2 = Struct_1(true == (0u >= var_0.x), select(min(~(~vec4<u32>(arg_1, 0u, u_input.b.x, arg_0)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.x, 0u, var_0.x), vec4<u32>(u_input.b.x, 4294967295u, var_0.x, var_0.x))), vec4<u32>(~48141u, u_input.b.x, ~_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(arg_0, var_0.x, var_0.x)), ~(~4294967295u)), any(vec4<bool>(true, all(vec2<bool>(false, false)), all(vec3<bool>(false, false, true)), var_1.x == var_1.x))), abs(abs(-vec4<i32>(u_input.a, u_input.a, 12352i, u_input.a)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(42767u, 4294967295u, 117926u, u_input.b.x), vec4<u32>(374u, 0u, u_input.b.x, var_0.x)) % vec4<u32>(32u))), 0u);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1238f, var_1.x, 764f, -598f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-776f, var_1.x, 1000f, var_1.x) - vec4<f32>(1000f, 667f, var_1.x, var_1.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -605f, 930f, var_1.x), vec4<f32>(var_1.x, 339f, -913f, var_1.x), false)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(250f, var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 2664f, 807f, -830f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, var_1.x, 523f, -1176f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -242f, var_1.x, -340f)))));
    var var_4 = ~0u;
    return ~(-2147483647i);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(852f, -1710f, 191f))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(437f, -392f, -303f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b, 458f, 1092f))))))));
    let var_1 = Struct_1(false, _wgslsmith_mult_vec4_u32(arg_0.c.b, vec4<u32>(~reverseBits(46465u), 33714u, ~arg_2.x, arg_0.c.d)), firstLeadingBit(~arg_0.c.c) >> (arg_0.c.b % vec4<u32>(32u)), _wgslsmith_mult_u32(u_input.b.x, ~(~arg_0.c.b.x)));
    let var_2 = global0[_wgslsmith_index_u32(19189u, 17u)];
    let var_3 = Struct_1(all(vec3<bool>(_wgslsmith_f_op_f32(floor(var_2.b)) == _wgslsmith_f_op_f32(-arg_0.b), arg_0.c.b.x <= ~2126u, !all(vec3<bool>(false, true, false)))), ~(arg_0.c.b | ~var_2.c.b), arg_0.c.c, var_2.c.d);
    var var_4 = var_2.b;
    return true;
}

fn func_2() -> Struct_2 {
    let var_0 = vec2<bool>(true, func_4(Struct_2(u_input.b.x, _wgslsmith_div_f32(2051f, _wgslsmith_f_op_f32(select(-896f, -787f, true))), Struct_1(true, ~vec4<u32>(1u, 21873u, 1u, 1u), vec4<i32>(0i, u_input.a, u_input.a, u_input.a), reverseBits(53184u)), _wgslsmith_add_i32(-u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-8671i, u_input.a), vec2<i32>(541i, -8170i))), vec2<bool>(false, u_input.a < u_input.a)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(u_input.a < u_input.a, false)), ~u_input.b, func_3(u_input.b.x, 102494u, _wgslsmith_mod_i32(-u_input.a, 1i))));
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    var var_1 = Struct_2(u_input.b.x, _wgslsmith_f_op_f32(-154f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1075f))), Struct_1(true, abs(vec4<u32>(~u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 8506u), ~1u, 60979u)), ~(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)) & vec4<i32>(u_input.a, u_input.a, 65119i, u_input.a)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u & u_input.b.x, ~0u), max(~4294967295u, ~39248u))), abs(~_wgslsmith_clamp_i32(-1i, 2147483647i, _wgslsmith_mod_i32(u_input.a, 2147483647i))), vec2<bool>(any(!(!vec3<bool>(var_0.x, var_0.x, false))), u_input.b.x > 41307u));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -631f), -1334f, var_1.b))));
    return Struct_2(max(abs(abs(var_1.a)), var_1.c.b.x << ((~8703u & ~u_input.b.x) % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1703f) + _wgslsmith_f_op_f32(var_2.x + var_1.b)))))), Struct_1(true, vec4<u32>(~u_input.b.x, 0u, (4294967295u << (0u % 32u)) << (u_input.b.x % 32u), _wgslsmith_add_u32(u_input.b.x, ~var_1.a)), _wgslsmith_clamp_vec4_i32(var_1.c.c, var_1.c.c, min(vec4<i32>(1i, -2147483647i, 43291i, 28498i), var_1.c.c)), _wgslsmith_mod_u32(var_1.c.d, 24768u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-14502i, var_1.d, u_input.a, u_input.a) ^ _wgslsmith_mult_vec4_i32(var_1.c.c, vec4<i32>(var_1.d, -8211i, -6704i, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -17668i, -25314i), vec4<i32>(var_1.d, -1i, var_1.d, u_input.a))), _wgslsmith_dot_vec4_i32((vec4<i32>(u_input.a, u_input.a, 0i, 1i) << (var_1.c.b % vec4<u32>(32u))) >> (var_1.c.b % vec4<u32>(32u)), vec4<i32>(4412i, -u_input.a, -47232i, -2147483647i))), vec2<bool>(_wgslsmith_add_i32(10464i, 45818i) > min(u_input.a, u_input.a | u_input.a), (~var_1.d <= 33218i) & true));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = func_2().c;
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    let var_1 = false;
    global0 = array<Struct_2, 17>();
    return func_2().c;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> f32 {
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    var var_0 = func_5(func_2());
    let var_1 = ~u_input.b.x;
    return arg_0.x;
}

fn func_6(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    let var_0 = func_5(arg_2);
    global0 = array<Struct_2, 17>();
    let var_1 = vec3<f32>(-269f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1584f + -561f) + _wgslsmith_f_op_f32(sign(arg_3)))), arg_3);
    let var_2 = func_5(Struct_2(var_0.b.x, -2801f, Struct_1(~20089u == u_input.b.x, (vec4<u32>(arg_2.a, 4294967295u, 29856u, arg_2.a) ^ arg_2.c.b) ^ ~arg_2.c.b, var_0.c, 26887u), select(-45774i, ~var_0.c.x, any(vec3<bool>(false, var_0.a, true))), arg_2.e));
    var var_3 = 12756u >= (4294967295u | var_0.b.x);
    return vec2<bool>(!func_2().c.a, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(func_6(select(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, 1i), vec2<bool>(true, false)), u_input.b.x | u_input.b.x, Struct_2(u_input.b.x, -872f, Struct_1(false, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u), vec4<i32>(3859i, u_input.a, -2147483647i, u_input.a), u_input.b.x), u_input.a, vec2<bool>(false, true)), _wgslsmith_f_op_f32(func_1(vec2<f32>(-439f, -103f), vec2<u32>(4294967295u, u_input.b.x)))), vec2<bool>(true, true), func_2().e));
    let var_1 = func_2().c;
    var var_2 = func_2();
    var_2 = func_2();
    var var_3 = var_2.c;
    global0 = array<Struct_2, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

