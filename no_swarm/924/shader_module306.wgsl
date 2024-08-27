struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = vec4<u32>(~(~(~firstTrailingBit(2625u))), ~(~1u), min(~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, 17972u)), ~vec2<u32>(34642u, 4294967295u)), ~(1u ^ select(4294967295u, 1u, true))), ~firstTrailingBit(max(_wgslsmith_div_u32(64749u, 41839u), ~33037u)));
    global0 = ~var_0.x ^ 80573u;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    return Struct_3(Struct_2(var_1.x, 13140i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))))), ~_wgslsmith_clamp_u32(11198u, var_0.x, var_0.x));
}

fn func_3(arg_0: u32, arg_1: Struct_5) -> vec2<u32> {
    var var_0 = select(!(!select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), false)), !vec3<bool>(_wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(u_input.a.x, 36861i)) <= -43985i, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false))), any(vec4<bool>(false, false, true, true))), !vec3<bool>(true, true, !all(vec4<bool>(false, true, true, false))));
    let var_1 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0, 70908u), countOneBits(arg_0)), arg_0, 0u), max(vec4<u32>(3941u, 4294967295u, 30209u, arg_0) | vec4<u32>(29968u, 1u, 53691u, 0u), vec4<u32>(~0u, arg_0, firstTrailingBit(arg_0), 5648u)));
    var var_2 = 338f;
    let var_3 = Struct_1(false);
    let var_4 = false;
    return _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, arg_0), ~24410u), ~(vec2<u32>(var_1.x, arg_0) & var_1.wz), max(abs(vec2<u32>(arg_0, var_1.x)), vec2<u32>(4585u, var_1.x))) >> (vec2<u32>(4294967295u, _wgslsmith_mult_u32(~var_1.x, max(var_1.x, var_1.x))) % vec2<u32>(32u)), (((var_1.zz | var_1.zx) << (vec2<u32>(var_1.x, 12243u) % vec2<u32>(32u))) & var_1.xx) & vec2<u32>(40724u, arg_0));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> vec4<bool> {
    let var_0 = func_3(func_1(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), !all(vec2<bool>(false, false)))).b, Struct_5(~1i, arg_0.a, 2230i));
    let var_1 = vec2<u32>(arg_2, ~(~(~min(39160u, 14505u))));
    var var_2 = Struct_1(!(!all(vec2<bool>(false, false))) | true);
    let var_3 = func_1(vec4<bool>(any(vec4<bool>(var_2.a | true, true, true, !var_2.a)), !var_2.a, all(!vec3<bool>(var_2.a, var_2.a, true)), var_2.a));
    var var_4 = arg_2;
    return vec4<bool>(var_2.a, true, !select(true, false, max(var_1.x, var_3.b) <= 4294967295u), false & !var_2.a);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_5 {
    global0 = 1u;
    let var_0 = -1292f;
    let var_1 = ~arg_2.b;
    var var_2 = countOneBits(firstTrailingBit(~select(~vec4<u32>(arg_1.b, 28167u, 4294967295u, arg_1.b), ~vec4<u32>(22181u, arg_1.b, 0u, 8386u), vec4<bool>(true, true, true, true))));
    global0 = ~min(abs(arg_1.b), 4294967295u);
    return Struct_5(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.a.xy, u_input.a.zz), vec2<i32>(4128i, ~u_input.a.x)), func_1(vec4<bool>(true, false, true, _wgslsmith_f_op_f32(-arg_2.c) > _wgslsmith_f_op_f32(max(var_0, 187f)))).a, ~_wgslsmith_mult_i32(arg_1.a.b, _wgslsmith_add_i32(-74539i, 17701i)) >> (var_2.x % 32u));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_4) -> Struct_2 {
    let var_0 = Struct_1(!arg_2);
    let var_1 = func_1(!(!select(!vec4<bool>(var_0.a, arg_2, false, true), !vec4<bool>(var_0.a, arg_2, var_0.a, var_0.a), var_0.a))).a;
    let var_2 = var_1;
    let var_3 = arg_0;
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(15850u, select(0u, 4294967295u, var_0.a)), reverseBits(~(~1u))), vec2<u32>(_wgslsmith_sub_u32(~1u, ~4202u | _wgslsmith_dot_vec3_u32(vec3<u32>(28064u, 84901u, 81819u), vec3<u32>(4294967295u, 4294967295u, 1u))), 13232u));
    return func_1(!(!vec4<bool>(var_0.a, func_2(Struct_3(Struct_2(1000f, -18716i, var_2.a), 1u), -774f, 0u).x, var_0.a, any(vec3<bool>(var_0.a, false, false))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(-116f, func_1(vec4<bool>(true, true, true, all(vec4<bool>(false, true, true, true)))), func_1(func_2(func_1(vec4<bool>(true, false, true, true)), -1000f, min(1u, 1u))).a), u_input.a, func_4(_wgslsmith_f_op_f32(-2126f - -231f), Struct_3(Struct_2(165f, -2147483647i, 1298f), 1u), func_1(vec4<bool>(false, false, true, false)).a).b.a > _wgslsmith_f_op_f32(1124f - 1000f), Struct_4(u_input.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(172f * -243f)), func_4(1384f, func_1(vec4<bool>(true, false, true, true)), Struct_2(427f, 12588i, 189f)).b.a))));
    var var_1 = vec3<i32>(i32(-1i) * -_wgslsmith_dot_vec2_i32(reverseBits(u_input.a.xx), vec2<i32>(-2147483647i, -1i)), var_0.b << (~1u % 32u), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, -10158i, var_0.b), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_0.b, u_input.a.x, -1i), vec4<i32>(-1i, u_input.a.x, var_0.b, u_input.a.x))), _wgslsmith_add_i32(u_input.a.x, var_0.b)) ^ func_5(Struct_5(-15548i, Struct_2(-189f, 0i, 256f), u_input.a.x & u_input.a.x), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -41967i), vec3<i32>(2147483647i, 1i, -1i))), false, Struct_4(-u_input.a.x, _wgslsmith_f_op_f32(var_0.a + var_0.a))).b);
    var var_2 = select(~(~min(~vec2<u32>(79050u, 4294967295u), vec2<u32>(4294967295u, 1u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)))), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 1958u) | vec2<u32>(func_3(1u, Struct_5(var_1.x, Struct_2(var_0.a, var_1.x, var_0.c), var_0.b)).x, countOneBits(1u)), vec2<u32>(_wgslsmith_mod_u32(4802u, ~55783u), 81229u)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var_1 = countOneBits(~firstLeadingBit(vec3<i32>(_wgslsmith_mult_i32(14349i, var_1.x), var_1.x, var_0.b)));
    let var_3 = Struct_4(38562i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * _wgslsmith_div_f32(-415f, _wgslsmith_f_op_f32(select(1310f, var_0.c, true))))));
    let var_4 = Struct_4(_wgslsmith_div_i32(var_1.x, var_0.b) & u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.b))));
    var var_5 = Struct_2(1083f, abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, ~3921i), var_0.b)), -1606f);
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(4294967295u, var_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(45130u, var_2.x, var_2.x)), var_2.x)), _wgslsmith_add_vec3_u32(vec3<u32>(~16506u, ~var_2.x, min(var_2.x, 34319u)), ~(vec3<u32>(1u, var_2.x, var_2.x) >> (vec3<u32>(44750u, var_2.x, 28383u) % vec3<u32>(32u)))), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.c + -177f)), _wgslsmith_f_op_f32(1025f * var_0.a), -2155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)))), _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(48244u, var_2.x), _wgslsmith_mod_u32(var_2.x, 4294967295u)), abs(vec2<u32>(~var_2.x, func_3(var_2.x, Struct_5(75920i, Struct_2(var_4.b, 16663i, var_0.a), var_3.a)).x))));
}

