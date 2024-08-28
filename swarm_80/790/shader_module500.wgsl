struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_1(1u, any(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(vec2<bool>(!all(vec2<bool>(false, true)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)))), select(vec2<bool>(true, all(vec3<bool>(true, false, false))), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>(true, true)), vec2<bool>(true, ~u_input.b.x > 1u)));
    var var_1 = vec2<i32>(~(-u_input.c | ~u_input.c), ~abs(abs(-2147483647i))) << (abs(min(~u_input.b.yz, abs(countOneBits(vec2<u32>(23005u, 1u))))) % vec2<u32>(32u));
    let var_2 = Struct_1(var_0.a >> (24468u % 32u), var_1.x != _wgslsmith_clamp_i32(0i, ~(u_input.c | u_input.c), ~firstLeadingBit(-2147483647i)), !select(var_0.c, select(var_0.c, var_0.c, !var_0.c), !var_0.b | all(vec4<bool>(true, var_0.c.x, var_0.b, true))));
    let var_3 = Struct_2(Struct_1(var_2.a, !(false && var_0.c.x) != true, !vec2<bool>(var_0.b | true, false && var_0.c.x)), Struct_1(_wgslsmith_add_u32(var_0.a << (4294967295u % 32u), max(var_0.a, 0u & var_2.a)), !(_wgslsmith_f_op_f32(step(arg_0.x, -306f)) <= 718f), var_0.c));
    var var_4 = var_1.x;
    return 24392u;
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_1(71397u, !(!(!all(vec3<bool>(true, false, false)))), vec2<bool>(true, !(!all(vec3<bool>(true, true, true)))));
    var var_1 = Struct_1(abs(~var_0.a), true, var_0.c);
    var_1 = Struct_1(countOneBits(func_3(vec3<f32>(1f, 1f, 1f))) ^ var_1.a, 1u >= (44832u << (u_input.b.x % 32u)), !select(vec2<bool>(true, u_input.d < -1i), var_1.c, (u_input.d << (37974u % 32u)) == firstTrailingBit(-2147483647i)));
    let var_2 = Struct_2(Struct_1(~1u, true, !select(select(var_0.c, var_0.c, false), !var_1.c, !var_1.c)), Struct_1(var_1.a, true, select(var_1.c, vec2<bool>(var_0.c.x, any(vec4<bool>(var_0.b, var_1.c.x, var_1.b, var_0.b))), var_0.c)));
    var var_3 = var_2.b.b;
    return ~vec3<u32>(63006u, 1u, var_2.a.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = min(firstLeadingBit(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(1i, 11048i), countOneBits(u_input.a.x), -2147483647i)), vec4<i32>(~(-31736i), 0i ^ u_input.d, abs(2147483647i), u_input.a.x)) >> (select(~select(select(vec4<u32>(23807u, 64883u, arg_2.x, 10261u), vec4<u32>(4294967295u, 0u, u_input.b.x, arg_2.x), true), vec4<u32>(arg_2.x, 32446u, arg_2.x, 61638u), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_u32(vec4<u32>(17232u, 4294967295u, arg_0.x, u_input.b.x), vec4<u32>(arg_2.x, 0u, arg_2.x, 101686u)) ^ select(countOneBits(vec4<u32>(81937u, u_input.b.x, arg_0.x, u_input.b.x)), select(vec4<u32>(arg_0.x, arg_2.x, 7768u, 38327u), vec4<u32>(44636u, 4294967295u, arg_0.x, arg_0.x), true), true), true) % vec4<u32>(32u));
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1961f, _wgslsmith_div_f32(-691f, _wgslsmith_f_op_f32(max(-847f, -746f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1258f + -1000f), _wgslsmith_f_op_f32(-1927f * 345f)))))));
    var_0 = -vec4<i32>(var_0.x, 0i, abs(-(~(-1i))), i32(-1i) * -22375i);
    var var_3 = true;
    return Struct_1(~4833u, false, !select(vec2<bool>(true, false), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), -6729i > var_1), vec2<bool>(any(vec2<bool>(false, true)), false)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = func_4(u_input.b, u_input.b.xx & vec2<u32>(~reverseBits(arg_0.a), ~43685u), ~vec3<u32>(u_input.b.x, countOneBits(~4294967295u), min(57348u, u_input.b.x) & firstLeadingBit(arg_0.a)));
    var var_1 = var_0.a;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-686f - -1056f), _wgslsmith_f_op_f32(max(736f, -667f)), var_0.b))))), _wgslsmith_f_op_f32(-2011f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 1000f, false)))), 267f);
    let var_3 = Struct_2(func_4(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(17776u, u_input.b.x, u_input.b.x)) & _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, arg_0.a), u_input.b), abs(~u_input.b)), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a, var_0.a), u_input.b.yx)) & _wgslsmith_mult_vec2_u32(vec2<u32>(16153u, u_input.b.x), vec2<u32>(0u, u_input.b.x) >> (vec2<u32>(arg_0.a, arg_0.a) % vec2<u32>(32u))), select(u_input.b, _wgslsmith_sub_vec3_u32(u_input.b << (u_input.b % vec3<u32>(32u)), u_input.b), select(!vec3<bool>(true, arg_0.b, arg_0.c.x), vec3<bool>(false, true, arg_0.b), false))), func_4(~u_input.b, u_input.b.zx, vec3<u32>(u_input.b.x, 4294967295u >> (~u_input.b.x % 32u), _wgslsmith_add_u32(u_input.b.x, ~var_0.a))));
    let var_4 = Struct_2(func_4(u_input.b, select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.a.a, 0u), vec2<u32>(arg_0.a, u_input.b.x)), ~vec2<u32>(var_3.a.a, var_0.a), all(vec2<bool>(true, true))) & u_input.b.yz, u_input.b), var_3.a);
    return var_0;
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(1u, true & !arg_2.b, vec2<bool>(arg_2.c.x, false));
    var var_1 = 470f;
    var_1 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(arg_3 - 575f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1205f - -483f) * 946f));
    let var_2 = Struct_2(Struct_1(var_0.a, var_0.b, select(func_5(func_5(Struct_1(arg_2.a, var_0.c.x, vec2<bool>(true, false)), vec2<i32>(-2147483647i, arg_0)), select(vec2<i32>(u_input.c, arg_0), u_input.a.xw, arg_2.c.x)).c, vec2<bool>(arg_1, false), !func_4(vec3<u32>(var_0.a, arg_2.a, var_0.a), vec2<u32>(var_0.a, arg_2.a), vec3<u32>(1u, var_0.a, 106736u)).c)), arg_2);
    return arg_2;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    return Struct_2(Struct_1(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, u_input.b.x), ~arg_0.a), !(!any(vec3<bool>(true, false, arg_1.b.b))), func_5(Struct_1(arg_1.a.a >> (14790u % 32u), true, arg_1.a.c), vec2<i32>(2147483647i, 27094i)).c), func_5(func_5(arg_0, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.a.x), vec2<i32>(-1i, u_input.a.x)), u_input.d)), vec2<i32>(u_input.c, -27847i)));
}

fn func_1() -> Struct_1 {
    let var_0 = !vec4<bool>(false, true, all(vec3<bool>(false, true, true)) && false, true);
    let var_1 = ~(abs(max(u_input.a.x << (u_input.b.x % 32u), countOneBits(0i))) << (~(~(u_input.b.x & u_input.b.x)) % 32u));
    var var_2 = func_7(func_6(u_input.a.x, var_0.x, func_5(func_4(reverseBits(vec3<u32>(3425u, u_input.b.x, 58639u)), ~u_input.b.yx, func_2()), vec2<i32>(u_input.a.x, ~var_1)), 1441f), Struct_2(func_5(Struct_1(firstLeadingBit(u_input.b.x), true, vec2<bool>(var_0.x, true)), -vec2<i32>(u_input.a.x, var_1) << (u_input.b.xy % vec2<u32>(32u))), Struct_1(67942u, ~1u <= (u_input.b.x | 0u), var_0.zw)));
    let var_3 = _wgslsmith_dot_vec4_i32(u_input.a, ~(~(~(-vec4<i32>(-25541i, -38427i, 0i, 7021i)))));
    var_2 = func_7(Struct_1((func_4(vec3<u32>(var_2.b.a, 1u, 1u), u_input.b.zz, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)).a >> (var_2.b.a % 32u)) ^ ~(~var_2.a.a), !(!func_7(Struct_1(var_2.b.a, true, var_0.xz), Struct_2(var_2.b, Struct_1(3587u, var_0.x, vec2<bool>(var_2.b.c.x, var_2.a.c.x)))).a.b), var_2.b.c), Struct_2(func_7(func_5(var_2.b, u_input.a.yw), Struct_2(var_2.a, func_7(Struct_1(var_2.a.a, var_2.a.c.x, vec2<bool>(var_2.b.c.x, var_0.x)), Struct_2(Struct_1(0u, true, var_0.yz), var_2.a)).a)).a, var_2.b));
    return Struct_1(~u_input.b.x, var_0.x, var_0.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), Struct_1(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-649f, -585f, 309f))) & 1u, ((u_input.b.x >> (u_input.b.x % 32u)) & u_input.b.x) == 466u, vec2<bool>(_wgslsmith_add_u32(1u, 7032u) >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 900u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x)), any(func_4(vec3<u32>(1u, u_input.b.x, u_input.b.x), u_input.b.yz, u_input.b).c))));
    let var_1 = firstTrailingBit(countOneBits(abs(min(~u_input.a, u_input.a))));
    var var_2 = 425f;
    var var_3 = select(min(2147483647i, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.d), firstTrailingBit(vec2<i32>(var_1.x, 1i))))), u_input.d, any(select(vec3<bool>(var_0.a.c.x, func_5(Struct_1(1u, var_0.b.c.x, var_0.b.c), u_input.a.ww).c.x, true), vec3<bool>(all(vec3<bool>(var_0.b.c.x, false, var_0.a.b)), !var_0.a.c.x, var_0.a.c.x), !vec3<bool>(false, var_0.a.b, false))));
    var var_4 = _wgslsmith_mod_u32(firstLeadingBit(var_0.b.a), var_0.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_1), u_input.a, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2050f - 121f)), -587f, u_input.c < _wgslsmith_add_i32(var_1.x, var_1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-226f, 747f, var_0.b.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1849f + 1231f)) * 1009f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1205f - -384f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(698f - -1061f)))), min(var_1.zwz, ~(~u_input.a.zyw >> (vec3<u32>(var_0.b.a, 32502u, 1u) % vec3<u32>(32u)))));
}

