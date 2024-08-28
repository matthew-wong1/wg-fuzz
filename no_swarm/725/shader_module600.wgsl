struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = !vec3<bool>(false, true, !any(vec4<bool>(false, true, false, true)));
    let var_1 = firstTrailingBit(~select(firstTrailingBit(~vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(_wgslsmith_add_u32(24030u, 1u), reverseBits(4294967295u)), var_0.xx));
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(max(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 20407i, u_input.a), vec4<i32>(10163i, u_input.a, 9011i, 21689i))), abs(u_input.a)), ~(u_input.a & -u_input.a));
    var var_3 = countOneBits(vec4<u32>(~(1u << (min(53376u, var_1.x) % 32u)), ~46022u, var_1.x, 4294967295u));
    let var_4 = 64868u;
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_3(arg_0, Struct_2(select(select(arg_0.a.x, true, arg_0.a.x) != (arg_1 >= arg_1), !(arg_0.a.x && true), func_3()), _wgslsmith_f_op_f32(-arg_0.b), arg_0.a.x));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + var_0.a.b), -566f));
    var var_2 = -(~_wgslsmith_clamp_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-43056i, u_input.a, -18096i, -1i), vec4<i32>(2147483647i, 19899i, 14078i, -22043i)), abs(vec4<i32>(50552i, arg_2.x, -2147483647i, -2147483647i)) | -vec4<i32>(u_input.a, arg_2.x, -1i, -1i), vec4<i32>(countOneBits(u_input.a), countOneBits(arg_2.x), _wgslsmith_sub_i32(87378i, 1i), ~2147483647i)));
    let var_3 = var_0.a;
    let var_4 = Struct_3(arg_0, Struct_2(var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-386f - -648f)))), any(arg_0.a)));
    return Struct_1(!(!select(select(var_4.a.a, var_3.a, vec4<bool>(true, false, true, var_0.a.a.x)), var_0.a.a, vec4<bool>(true, var_3.a.x, var_0.b.c, var_4.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-642f)), _wgslsmith_f_op_f32(var_4.a.b - -921f))) - var_0.b.b));
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(all(select(func_2(func_2(Struct_1(arg_0.a, arg_0.b), 13462u, vec2<i32>(34989i, u_input.a), vec3<f32>(-1000f, -2405f, 1309f)), 1u, reverseBits(vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, 1000f))).a.yw, func_2(func_2(arg_0, 1u, vec2<i32>(2147483647i, 41859i), vec3<f32>(-1000f, arg_0.b, arg_0.b)), ~1u, min(vec2<i32>(29571i, u_input.a), vec2<i32>(u_input.a, -47088i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, -572f, arg_0.b))).a.ww, true)), arg_0.b, arg_0.a.x);
    var_0 = Struct_2(func_2(func_2(func_2(Struct_1(arg_0.a, arg_0.b), ~0u, ~vec2<i32>(1i, -2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, var_0.b) * vec3<f32>(var_0.b, -352f, var_0.b))), ~59451u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 51565u), vec2<u32>(46413u, 1u)), vec2<i32>(1i, u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(394f, arg_0.b, -2066f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2125f, arg_0.b, arg_0.b) + vec3<f32>(arg_0.b, var_0.b, arg_0.b)))), ~0u, countOneBits(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.b, 466f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, var_0.b, -695f) * vec3<f32>(arg_0.b, 111f, -1357f)), !var_0.a))))).a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b - 1006f))))), var_0.b, true)), false | any(func_2(arg_0, 1u, ~vec2<i32>(2147483647i, 15203i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, arg_0.b, var_0.b))).a));
    let var_1 = vec4<u32>(0u, 70608u, _wgslsmith_sub_u32(~(~(~75262u)), _wgslsmith_clamp_u32(1u, 1u, ~abs(21175u))), 1u);
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, arg_0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-256f, 1760f) * vec2<f32>(-791f, var_0.b)), arg_0.a.wx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(474f, arg_0.b)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, var_0.b), vec2<f32>(287f, -1947f)))))))));
    var_0 = Struct_2(true, -887f, false);
    return arg_0.a.x;
}

fn func_1() -> bool {
    var var_0 = -1000f;
    var_0 = -678f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)));
    let var_1 = Struct_1(vec4<bool>(true, any(vec2<bool>(true, true)), false & func_4(func_2(Struct_1(vec4<bool>(false, true, true, false), -1365f), 36099u, vec2<i32>(u_input.a, u_input.a), vec3<f32>(-990f, -186f, 1211f))), all(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(-1f));
    let var_2 = var_1.a.yww;
    return all(select(vec4<bool>(var_2.x, var_1.a.x, false, all(vec4<bool>(false, false, false, var_1.a.x))), var_1.a, func_2(var_1, 20541u, ~vec2<i32>(u_input.a, u_input.a) ^ min(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_1.b, 514f)))).a));
}

fn func_5(arg_0: vec4<bool>, arg_1: bool) -> i32 {
    var var_0 = Struct_2(arg_1, _wgslsmith_f_op_f32(ceil(1257f)), false);
    let var_1 = Struct_3(func_2(func_2(func_2(func_2(Struct_1(arg_0, var_0.b), 1u, vec2<i32>(-29292i, u_input.a), vec3<f32>(367f, var_0.b, var_0.b)), 4294967295u, countOneBits(vec2<i32>(1i, u_input.a)), vec3<f32>(181f, var_0.b, -461f)), 0u, (vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(6279u, 74175u) % vec2<u32>(32u))) | _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -31292i), vec2<i32>(-25365i, u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b, var_0.b, var_0.b))) - vec3<f32>(var_0.b, var_0.b, var_0.b))), 1u, -vec2<i32>(u_input.a, -1i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b, var_0.b, var_0.b))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.b) - vec3<f32>(1689f, var_0.b, 952f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -802f), _wgslsmith_f_op_f32(-var_0.b), var_0.b)))), Struct_2(select(var_0.b != _wgslsmith_f_op_f32(sign(1367f)), any(vec3<bool>(true, var_0.a, var_0.c)), !func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b, -1000f, true)) + _wgslsmith_f_op_f32(ceil(var_0.b))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.b, var_0.b, arg_1)), _wgslsmith_f_op_f32(-var_0.b)))), false));
    var_0 = var_1.b;
    var_0 = var_1.b;
    var var_2 = var_1;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(89380i, ~_wgslsmith_clamp_i32(u_input.a, 1i, 5457i), ~(-2147483647i), max(-u_input.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, -2654i), func_5(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), func_1()))));
    let var_1 = ~(~_wgslsmith_add_u32(1u, 1u));
    let var_2 = var_0;
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits((u_input.a >> (var_1 % 32u)) << (select(var_1, 0u, false) % 32u)), var_2.x, func_5(vec4<bool>(true, true, true, true), func_2(Struct_1(vec4<bool>(true, true, false, false), -1901f), reverseBits(var_1), var_0.zz, vec3<f32>(126f, -152f, 1229f)).a.x)), vec3<i32>(0i, i32(-1i) * -2147483647i, ~func_5(vec4<bool>(true, true, true, true), true)));
    var var_4 = Struct_1(!func_2(Struct_1(vec4<bool>(true, true, true, true), 218f), ~_wgslsmith_mod_u32(1u, var_1), var_2.xy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1150f, -155f, 1268f) - vec3<f32>(1368f, 569f, 773f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-103f, -602f, 1219f))))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(625f * -1811f), _wgslsmith_div_f32(-1500f, -1000f)))));
    let var_5 = Struct_3(Struct_1(vec4<bool>(var_4.a.x, select(var_4.a.x & var_4.a.x, false, any(var_4.a.zzz)), !var_4.a.x, !all(var_4.a.ywx)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -773f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(37456u, 1u), vec2<u32>(var_1, 1u)) > reverseBits(1u)))), Struct_2(var_4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.b))), all(var_4.a.zzw)));
    var_3 = var_2.xzx;
    var var_6 = Struct_1(var_5.a.a, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1207f)));
    var var_7 = func_2(func_2(var_5.a, select(~_wgslsmith_clamp_u32(var_1, var_1, var_1), var_1, false), _wgslsmith_div_vec2_i32(~_wgslsmith_div_vec2_i32(var_2.yw, var_2.wy), -var_3.xz), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1089f, var_5.a.b, var_4.b)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.b, var_4.b, -436f) * vec3<f32>(var_4.b, -787f, 783f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.b.b, var_5.b.b, var_6.b) - vec3<f32>(var_6.b, var_4.b, 1142f)), vec3<f32>(2431f, var_4.b, -244f))))), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1), countOneBits(vec2<u32>(var_1, 29421u))) ^ abs(var_1 & var_1)), var_3.xx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-583f, -1707f, _wgslsmith_f_op_f32(-var_4.b))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.b, var_5.b.b, var_6.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.b, -126f, 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_6.b, 551f, -1000f) + vec3<f32>(var_6.b, -598f, var_4.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(158f, var_5.b.b, var_4.b))), var_4.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(min(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 4294967295u, 15462u, 10296u), vec4<u32>(var_1, var_1, 1u, 1u)), vec4<u32>(4294967295u, 40651u, var_1, 86607u))), vec4<u32>(countOneBits(~var_1), 31547u, var_1, 5067u | var_1), var_6.a), 16182u, min(firstTrailingBit(~1u | firstTrailingBit(54002u)), var_1));
}

