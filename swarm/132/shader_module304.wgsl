struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 0u, 4294967295u);

var<private> global1: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(33860i, 1i, 2147483647i), vec3<i32>(14324i, 8919i, i32(-2147483648)), vec3<i32>(52014i, -14715i, 6480i), vec3<i32>(-12114i, 2147483647i, -401i), vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(2147483647i, -31318i, -1i), vec3<i32>(-11776i, 6234i, 35422i), vec3<i32>(38108i, 0i, i32(-2147483648)), vec3<i32>(-44586i, -18422i, 1i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(10357i, 45721i, 31980i), vec3<i32>(i32(-2147483648), -41582i, 1i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(-6411i, 2147483647i, 65051i), vec3<i32>(24062i, 9036i, 21046i), vec3<i32>(-24413i, -14298i, 36274i), vec3<i32>(2517i, 20108i, i32(-2147483648)), vec3<i32>(2147483647i, -44819i, 6894i), vec3<i32>(2147483647i, 38136i, -70716i), vec3<i32>(39798i, -24769i, 2781i), vec3<i32>(i32(-2147483648), 2147483647i, 29830i), vec3<i32>(0i, 22911i, 57773i), vec3<i32>(19046i, 1i, 27076i), vec3<i32>(-16053i, 0i, 13181i), vec3<i32>(1i, 0i, 1i), vec3<i32>(2147483647i, -27511i, -19123i), vec3<i32>(5588i, -63594i, 2605i), vec3<i32>(2147483647i, 40505i, 1i), vec3<i32>(9733i, 28319i, 24537i), vec3<i32>(24824i, -23644i, -60226i), vec3<i32>(-12268i, 1i, 1180i));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    let var_0 = reverseBits(vec2<i32>(firstLeadingBit(u_input.b), u_input.a.x));
    var var_1 = reverseBits(vec4<i32>(-(-61624i >> (arg_1.a % 32u)), 0i, _wgslsmith_clamp_i32(u_input.a.x, -14322i | var_0.x, u_input.b), min(~35871i, _wgslsmith_sub_i32(var_0.x, 8189i)))) | vec4<i32>(-6015i >> (_wgslsmith_mod_u32(global0.x, ~123639u) % 32u), 2147483647i, ~(~u_input.b), 0i);
    var_1 = max(-(_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_1.x, 33050i, -2147483647i), vec4<i32>(var_0.x, 18604i, -10668i, var_1.x)) >> (vec4<u32>(4294967295u, arg_1.a, arg_1.a, 81444u) % vec4<u32>(32u))), vec4<i32>(17900i, ~_wgslsmith_sub_i32(var_1.x, var_0.x), -9890i, _wgslsmith_add_i32(-var_1.x, 29178i))) << (vec4<u32>(global0.x, abs(~global0.x), 40731u, 19150u) % vec4<u32>(32u));
    let var_2 = Struct_1(global0.x << (80213u % 32u));
    global0 = ~abs(abs(~(vec3<u32>(1u, 0u, var_2.a) & vec3<u32>(65026u, 4294967295u, 48214u))));
    return ~0u;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global0 = vec3<u32>(1u, global0.x, global0.x);
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2189f)) + _wgslsmith_f_op_f32(f32(-1f) * -493f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1403f, 253f))))));
    global0 = abs(vec3<u32>(_wgslsmith_mod_u32(~4138u, global0.x & _wgslsmith_dot_vec4_u32(vec4<u32>(30169u, global0.x, global0.x, 44468u), vec4<u32>(15455u, global0.x, 136783u, 1u))), 42534u, firstLeadingBit(_wgslsmith_clamp_u32(countOneBits(global0.x), 33969u, func_3(vec4<f32>(1104f, -1731f, -1375f, var_0), Struct_1(36834u), vec2<f32>(var_0, var_0))))));
    let var_1 = ~(-u_input.b);
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-980f - _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(384f, var_0, true)))))));
    return Struct_1(global0.x);
}

fn func_1() -> Struct_1 {
    global1 = array<vec3<i32>, 31>();
    global0 = ~(~vec3<u32>(37057u, reverseBits(global0.x | global0.x), ~(~4294967295u)));
    var var_0 = Struct_1(global0.x);
    var var_1 = func_2(vec4<i32>(-reverseBits(u_input.b), i32(-1i) * -2147483647i, ~(-40725i), -1i) & (_wgslsmith_div_vec4_i32(vec4<i32>(-5374i, 2147483647i, u_input.a.x, 0i), ~vec4<i32>(2147483647i, u_input.b, u_input.a.x, -1i)) & abs(firstTrailingBit(vec4<i32>(6466i, 1i, u_input.b, u_input.b)))));
    let var_2 = _wgslsmith_f_op_f32(1332f - _wgslsmith_f_op_f32(f32(-1f) * -1300f));
    return Struct_1(8426u);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-416f * -1100f)))), 310f, 1000f, -1000f));
    let var_1 = arg_1.a;
    var var_2 = func_2(~vec4<i32>(0i, ~(~u_input.a.x), -(i32(-1i) * -1i), ~(-u_input.b)));
    var var_3 = _wgslsmith_div_u32(92627u, min(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_1, arg_2.a), 0u), reverseBits(var_2.a)));
    global0 = reverseBits(vec3<u32>(arg_2.a, 50043u, _wgslsmith_sub_u32(_wgslsmith_div_u32(func_3(vec4<f32>(-1479f, -1152f, -185f, 423f), arg_1, var_0.xz), 21244u), func_3(vec4<f32>(var_0.x, -2528f, -121f, var_0.x), Struct_1(var_2.a), var_0.wz))));
    return Struct_1(_wgslsmith_sub_u32(~func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1000f, var_0.x)), arg_1, vec2<f32>(1000f, var_0.x)), 15837u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 31>();
    global0 = ~vec3<u32>(41301u, 0u, global0.x);
    let var_0 = vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.a.x, i32(-1i) * -u_input.b);
    global1 = array<vec3<i32>, 31>();
    var var_1 = func_4(any(vec3<bool>(true, true, true)), func_1(), Struct_1(~(~(~4294967295u))), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), false)));
    var var_2 = vec3<i32>(~abs(-52573i >> (1u % 32u)), ~_wgslsmith_sub_i32(~firstLeadingBit(var_0.x), var_0.x), var_0.x);
    let var_3 = select(vec4<bool>((2147483647i | (696i & u_input.a.x)) == u_input.b, true, -1775f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-380f))), all(vec2<bool>(true, true))), select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))), select(vec4<bool>(true, true, true, all(vec4<bool>(true, false, true, true))), vec4<bool>(all(vec4<bool>(false, true, true, true)), true, true, all(vec3<bool>(false, false, true))), false), true), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), true)) & all(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))));
    var var_4 = Struct_1(1u);
    var_1 = func_2(abs(vec4<i32>(i32(-1i) * -2147483647i, u_input.a.x, var_2.x, u_input.b)) | -_wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_0.x, u_input.b, var_2.x, var_2.x)), vec4<i32>(var_0.x, -9912i, var_2.x, u_input.b) ^ vec4<i32>(2147483647i, var_0.x, var_2.x, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(1589u, abs(_wgslsmith_clamp_u32(~(~var_1.a), 30737u, firstTrailingBit(38242u))), _wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.a.x, ~36228i) & ((vec2<i32>(u_input.b, var_0.x) | u_input.a) ^ (vec2<i32>(var_2.x, -1i) >> (global0.yz % vec2<u32>(32u)))), vec2<i32>((i32(-1i) * -20317i) & -var_2.x, _wgslsmith_clamp_i32(-19842i | u_input.a.x, 83954i, _wgslsmith_clamp_i32(var_0.x, 2147483647i, var_0.x)))));
}

