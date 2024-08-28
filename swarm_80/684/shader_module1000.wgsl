struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: Struct_1 = Struct_1(-954f, vec2<i32>(i32(-2147483648), -36780i), vec4<bool>(true, true, false, true), 201f);

var<private> global1: i32 = -98i;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = arg_3.b.c.yz;
    let var_1 = global0.c;
    var var_2 = arg_3.b;
    var var_3 = arg_3.b;
    var var_4 = Struct_2(!var_1.x, arg_3.b);
    return vec4<bool>(var_3.c.x && select(any(select(var_2.c, var_4.b.c, vec4<bool>(false, var_1.x, var_3.c.x, arg_3.a))), !(!var_2.c.x), all(global0.c.xz)), select((_wgslsmith_f_op_f32(global0.d * 249f) <= _wgslsmith_div_f32(var_3.a, -947f)) && (all(vec2<bool>(false, false)) == any(var_4.b.c.wx)), !((false && var_1.x) && true), var_1.x), any(!vec2<bool>(var_4.a, true)) & var_0.x, var_1.x);
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(873f)) + -456f), vec2<i32>(u_input.b, _wgslsmith_add_i32(-8203i, u_input.b)), !(!select(select(vec4<bool>(false, true, global0.c.x, global0.c.x), vec4<bool>(true, global0.c.x, false, global0.c.x), global0.c.x), !global0.c, global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * global0.d), global0.a)));
    var var_1 = ~(vec4<i32>(~firstLeadingBit(u_input.a), u_input.a, 23564i, 1i) & abs(~vec4<i32>(43625i, -38878i, -14558i, var_0.b.x)));
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -872f), abs(global0.b), func_3(false, global0.a, vec3<i32>(~3376i, _wgslsmith_clamp_i32(firstLeadingBit(global0.b.x), var_0.b.x, var_0.b.x), var_1.x), Struct_2(!(!var_0.c.x), var_0)), _wgslsmith_f_op_f32(abs(278f)));
    let var_2 = Struct_2(true, var_0);
    var var_3 = !(_wgslsmith_clamp_u32(1u, 1u, _wgslsmith_mod_u32(35648u, _wgslsmith_clamp_u32(4294967295u, 51471u, 1u))) > _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(38986u, 85162u, 18409u, 0u)), ~vec4<u32>(4294967295u, 34647u, 30972u, 41497u)));
    return vec2<i32>(-1i, var_2.b.b.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec2<f32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_0.x * arg_1.x)))), func_2() >> (reverseBits(abs(vec2<u32>(1u, 1u))) % vec2<u32>(32u)), func_3(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1200f)) + _wgslsmith_f_op_f32(min(-1000f, global0.a))) + _wgslsmith_f_op_f32(205f + _wgslsmith_f_op_f32(1672f * arg_2.x))), ~_wgslsmith_clamp_vec3_i32(-vec3<i32>(global0.b.x, -15800i, 0i), -vec3<i32>(u_input.a, -2147483647i, -44875i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.b.x, global0.b.x, -60444i), vec3<i32>(u_input.a, -1i, global0.b.x), vec3<i32>(0i, -8199i, -1i))), Struct_2(true, Struct_1(_wgslsmith_f_op_f32(floor(-1000f)), ~vec2<i32>(u_input.a, u_input.a), vec4<bool>(false, global0.c.x, false, true), 681f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), true))));
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(~0u, countOneBits(4294967295u), 1627u, ~4294967295u), max(_wgslsmith_div_vec4_u32(~vec4<u32>(59374u, 48973u, 44268u, 69062u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(46300u, 1u, reverseBits(855u), min(53567u, 1u)))), vec4<u32>(_wgslsmith_clamp_u32(firstLeadingBit(1u), abs(56485u), ~abs(48979u)), _wgslsmith_div_u32(~1u, ~countOneBits(114550u)), 50576u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(1u, 1u, 1u)))));
    let var_1 = Struct_1(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, -180f))))), max(-((global0.b ^ vec2<i32>(1i, global0.b.x)) << (~vec2<u32>(var_0.x, 22161u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(59586i, firstTrailingBit(global0.b.x)), vec2<i32>(-23309i, global0.b.x))), global0.c, _wgslsmith_f_op_f32(-783f + _wgslsmith_f_op_f32(arg_2.x - arg_0.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    global1 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.b.x, global0.b.x, 31006i), vec4<i32>(u_input.b, 41967i, u_input.b, 2147483647i)), abs(var_1.b.x)) & (countOneBits(-u_input.b) << (1u % 32u));
    return var_1;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(arg_1.x, select(max(vec2<i32>(arg_2.b.x, u_input.a), global0.b) >> (~select(vec2<u32>(52505u, 30603u), vec2<u32>(0u, 1u), arg_2.c.yw) % vec2<u32>(32u)), select(vec2<i32>(-1i) * -vec2<i32>(u_input.b, u_input.b), vec2<i32>(global0.b.x, -44794i), arg_0), vec2<bool>(func_3(global0.c.x, func_1(vec2<f32>(global0.d, arg_2.a), vec2<f32>(476f, 1542f), arg_1.yw).d, ~vec3<i32>(arg_2.b.x, arg_2.b.x, 30598i), Struct_2(false, arg_2)).x, select(false, !arg_2.c.x, 107f >= arg_2.a))), global0.c, 121f);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(arg_1.zww, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-446f, 120f, var_0.a))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(select(481f, arg_2.d, func_1(vec2<f32>(1000f, -1000f), arg_1.zw, vec2<f32>(482f, 1370f)).c.x)), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-var_0.d))))), !func_1(arg_1.yx, vec2<f32>(_wgslsmith_f_op_f32(617f + var_0.d), global0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, arg_2.a), vec2<f32>(var_0.a, -1000f), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(-arg_1.yx))).c.zww));
    var var_2 = Struct_2(false, var_0);
    let var_3 = Struct_1(global0.a, vec2<i32>(-(~_wgslsmith_div_i32(0i, 9646i)), u_input.a), vec4<bool>(!select(!arg_0, var_2.a || global0.c.x, arg_0 | arg_2.c.x), true, false, arg_2.c.x), _wgslsmith_f_op_f32(1189f - _wgslsmith_f_op_f32(-arg_2.d)));
    var var_4 = -987f;
    return !(!func_3(!var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-258f - -778f)), max(vec3<i32>(var_3.b.x, -277i, -1i), vec3<i32>(var_2.b.b.x, 2147483647i, -2147483647i)) ^ vec3<i32>(var_0.b.x, 2147483647i, arg_2.b.x), Struct_2(!var_3.c.x, Struct_1(-1000f, vec2<i32>(var_2.b.b.x, 57719i), vec4<bool>(true, false, true, false), 888f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(1i, -firstTrailingBit(max(2147483647i, u_input.a)));
    let var_1 = Struct_1(-953f, vec2<i32>(var_0.x, -12414i), select(!func_4(false, vec4<f32>(global0.d, -440f, -863f, global0.a), func_1(vec2<f32>(126f, global0.a), vec2<f32>(313f, 457f), vec2<f32>(global0.a, global0.a))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, global0.d))), _wgslsmith_div_vec2_f32(vec2<f32>(-498f, global0.a), vec2<f32>(943f, 1000f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-1855f, -313f), vec2<f32>(global0.a, global0.d))))).c, all(func_4(all(vec4<bool>(global0.c.x, false, global0.c.x, global0.c.x)), vec4<f32>(global0.d, 332f, global0.d, global0.d), func_1(vec2<f32>(global0.d, global0.a), vec2<f32>(global0.a, -551f), vec2<f32>(2065f, -921f))).xy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a)) - _wgslsmith_f_op_f32(f32(-1f) * -388f)));
    var var_2 = Struct_2(false, Struct_1(global0.d, vec2<i32>(u_input.b, -2147483647i), !(!global0.c), _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(588f + 486f))));
    let var_3 = _wgslsmith_f_op_f32(1147f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)))) - global0.a));
    let var_4 = var_2.b;
    var_2 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - -1000f))), firstTrailingBit(_wgslsmith_sub_vec2_i32(~var_2.b.b, -vec2<i32>(global0.b.x, u_input.b))), !(!vec4<bool>(var_2.a, global0.c.x, var_4.c.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_4.d * 313f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(~1u))));
}

