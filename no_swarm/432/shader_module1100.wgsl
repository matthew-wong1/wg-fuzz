struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.b), -692f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + 2087f) + -176f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.x))) * _wgslsmith_f_op_f32(-481f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.b, -1205f)) - _wgslsmith_f_op_f32(min(arg_0.b, 548f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.a.d.x, arg_3.a.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + 201f) * -712f), arg_3.b.x), arg_2.d.x), vec4<f32>(arg_0.b, -1549f, _wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))), select(!select(select(vec4<bool>(arg_1, arg_3.c, arg_1, false), vec4<bool>(arg_1, arg_1, true, arg_3.c), arg_3.c), !vec4<bool>(false, arg_3.c, arg_1, arg_3.c), arg_3.c || arg_1), vec4<bool>((arg_3.c | true) & all(vec3<bool>(false, true, arg_1)), true, false && (arg_3.c != arg_1), all(vec4<bool>(false, false, arg_3.c, true))), true)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.x + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -725f), var_0.x, 372f);
    let var_1 = arg_3;
    let var_2 = arg_2;
    return arg_2.a.x;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1145f)), -515f, 1f) - vec3<f32>(933f, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(414f, -452f, 537f), -367f, -2147483647i, vec4<f32>(-175f, -640f, 393f, -1000f)), false, Struct_1(vec3<f32>(345f, -213f, -534f), -1425f, u_input.a, vec4<f32>(352f, 748f, 1060f, 416f)), Struct_2(Struct_1(vec3<f32>(-883f, -1633f, -1424f), 1994f, u_input.a, vec4<f32>(1344f, 430f, -1000f, -1124f)), vec2<f32>(298f, 1209f), false))), _wgslsmith_div_f32(-2294f, 1184f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), u_input.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(891f, -534f, 702f, -661f))))), vec4<f32>(1f, 1f, 1f, 1f)))), vec2<f32>(-1473f, -1265f), select(select(true, true, false), any(vec2<bool>(true, true)), true) | all(vec3<bool>(true, true, any(vec2<bool>(false, false)))));
    var var_1 = Struct_1(var_0.a.d.zxw, _wgslsmith_f_op_f32(abs(var_0.b.x)), u_input.a, var_0.a.d);
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(382f, var_1.b))), vec2<f32>(var_1.d.x, -1301f))))))), false);
    var var_2 = vec4<bool>(any(!vec2<bool>(true, var_0.c)), select(all(!vec2<bool>(var_0.c, var_0.c)), var_0.c, !var_0.c), ((var_0.c & var_0.c) && true) | (max(_wgslsmith_dot_vec2_i32(vec2<i32>(-33858i, var_0.a.c), vec2<i32>(-45548i, u_input.a)), reverseBits(-1i)) > var_1.c), any(select(!vec3<bool>(true, var_0.c, true), select(vec3<bool>(var_0.c, var_0.c, false), !vec3<bool>(false, var_0.c, var_0.c), var_1.c > 2147483647i), all(select(vec2<bool>(false, var_0.c), vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, true))))));
    var var_3 = Struct_1(vec3<f32>(-1135f, _wgslsmith_f_op_f32(1795f - var_0.a.d.x), 1186f), -1473f, -21131i, var_1.d);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 1335f, var_0.a.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, -1224f, var_1.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1543f + var_3.d.x), var_0.b.x)))), _wgslsmith_sub_i32(-1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-22540i, var_0.a.c, var_0.a.c), vec3<i32>(0i, var_0.a.c, -5810i))), vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.b, var_0.b.x)) + _wgslsmith_f_op_f32(min(var_3.a.x, 1107f))), var_3.b, -631f)), vec2<f32>(var_1.a.x, -750f), var_2.x);
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = ~firstTrailingBit(~(~8807u)) ^ ~_wgslsmith_sub_u32(~0u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(12945u, 1u, 1u), 13921u));
    let var_1 = false;
    var var_2 = func_2();
    var var_3 = var_2.a;
    var_3 = Struct_1(var_3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -924f)))), 776f), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, i32(-1i) * -arg_0.a.c), max(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 42170i), vec2<i32>(arg_0.a.c, 12848i), vec2<i32>(u_input.a, 0i)), ~vec2<i32>(-4380i, var_3.c)), (vec2<i32>(arg_0.a.c, 32722i) ^ vec2<i32>(var_2.a.c, var_2.a.c)) & min(vec2<i32>(-1i, 24011i), vec2<i32>(1i, u_input.a)))), vec4<f32>(1738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1217f + -212f)), var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -864f))));
    return select(!(!vec4<bool>(!var_2.c, any(vec3<bool>(arg_0.c, arg_0.c, false)), any(vec4<bool>(false, var_1, true, arg_0.c)), true)), !select(select(!vec4<bool>(arg_0.c, arg_0.c, var_1, false), vec4<bool>(var_2.c, true, arg_0.c, arg_0.c), true), select(vec4<bool>(true, var_2.c, false, true), !vec4<bool>(false, false, var_2.c, var_2.c), all(vec2<bool>(false, false))), !(false || arg_0.c)), arg_0.c);
}

fn func_1() -> u32 {
    let var_0 = !select(!vec4<bool>(any(vec3<bool>(false, false, false)), true, true, true), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))), func_4(func_2()));
    var var_1 = -_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(abs(~vec4<i32>(u_input.a, u_input.a, u_input.a, 28598i)), ~vec4<i32>(-15304i, -1i, -1i, u_input.a) >> (max(vec4<u32>(48343u, 10918u, 17970u, 74189u), vec4<u32>(0u, 1u, 14537u, 1u)) % vec4<u32>(32u))), vec4<i32>(func_2().a.c, ~u_input.a, u_input.a, ~(-11009i)) >> (_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(19814u, 63421u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
    var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, ~_wgslsmith_sub_i32(u_input.a, u_input.a), var_1.x, select(var_1.x, ~var_1.x, true)), vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.zz, var_1.zx), u_input.a, ~u_input.a, var_1.x) | ~_wgslsmith_mod_vec4_i32(vec4<i32>(30978i, var_1.x, -8303i, 40788i), vec4<i32>(u_input.a, -35697i, u_input.a, u_input.a))) | _wgslsmith_div_vec4_i32(~max(-vec4<i32>(-807i, u_input.a, -2993i, -3042i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 2147483647i, u_input.a, 37169i), vec4<i32>(-42068i, 0i, var_1.x, -42890i))), -max(vec4<i32>(u_input.a, var_1.x, 4499i, 0i), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)));
    let var_2 = max(~(-(vec4<i32>(-2147483647i, -24313i, 13572i, u_input.a) ^ vec4<i32>(-54041i, 0i, -1i, 12127i))), -(~countOneBits(vec4<i32>(var_1.x, 2147483647i, -2147483647i, -56869i))));
    var_1 = var_2;
    return 35244u;
}

fn func_5(arg_0: u32) -> Struct_2 {
    var var_0 = reverseBits(abs(~select(vec3<i32>(14777i, u_input.a, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, -13279i), vec3<i32>(u_input.a, 46449i, u_input.a)), vec3<bool>(true, false, true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-405f, 2124f)) - 2174f))));
    let var_2 = Struct_2(func_2().a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-func_2().b.x), -781f))), ~(~(~u_input.a)) > -u_input.a);
    let var_3 = func_2().a;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.b, 800f))), _wgslsmith_f_op_f32(215f + _wgslsmith_f_op_f32(step(var_3.b, var_3.b)))))));
    return Struct_2(Struct_1(var_3.a, 1695f, 0i, vec4<f32>(var_2.b.x, var_2.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, -173f) - -1096f), _wgslsmith_f_op_f32(f32(-1f) * -263f))), var_3.a.zx, _wgslsmith_dot_vec4_i32(vec4<i32>(func_2().a.c, var_2.a.c, u_input.a >> (arg_0 % 32u), firstTrailingBit(-31957i)), vec4<i32>(firstLeadingBit(var_3.c), var_2.a.c, -1i, _wgslsmith_add_i32(1i, var_2.a.c))) < -min(-2147483647i, var_2.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(min(func_1(), 63022u));
    var var_1 = func_5(~_wgslsmith_mult_u32(21264u, 1u)).a;
    var_1 = var_0.a;
    var var_2 = vec3<bool>(true, var_0.c, func_4(var_0).x && (true && var_0.c));
    var_2 = vec3<bool>((_wgslsmith_sub_i32(firstTrailingBit(var_0.a.c), ~(-3983i)) != var_0.a.c) && !((110f >= var_0.a.a.x) && all(vec2<bool>(false, false))), all(select(select(select(vec3<bool>(true, var_0.c, false), vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(false, var_2.x, var_0.c)), select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(false, false, false), true), select(vec3<bool>(var_2.x, var_0.c, var_0.c), vec3<bool>(var_2.x, false, var_2.x), var_2.x)), vec3<bool>(true, true, var_1.b < 2023f), var_0.c)), true);
    var_2 = func_4(var_0).zxw;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(53844u, 1u, 4294967295u), vec3<u32>(4294967295u, 29973u, 39669u)) << (1u % 32u), _wgslsmith_mult_u32(16434u, 0u) << (firstLeadingBit(1u) % 32u)), _wgslsmith_div_u32(4294967295u, firstTrailingBit(1u))));
}

