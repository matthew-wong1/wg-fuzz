struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(46703u, 21812u, 9777u, 1u), vec4<u32>(41025u, 13883u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 13025u, 0u), vec4<u32>(4294967295u, 24861u, 0u, 80376u), vec4<u32>(4294967295u, 1u, 64982u, 9322u), vec4<u32>(12590u, 8527u, 0u, 0u), vec4<u32>(24087u, 0u, 4294967295u, 80253u), vec4<u32>(0u, 0u, 43673u, 1u), vec4<u32>(65926u, 0u, 1u, 1u), vec4<u32>(70329u, 0u, 1u, 66492u), vec4<u32>(13889u, 47452u, 1u, 1u), vec4<u32>(117986u, 21239u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 26308u, 25472u), vec4<u32>(91418u, 1u, 40294u, 56567u), vec4<u32>(0u, 34811u, 49151u, 6681u), vec4<u32>(19768u, 0u, 4379u, 54389u), vec4<u32>(27138u, 10044u, 4294967295u, 1u), vec4<u32>(61363u, 26452u, 0u, 42409u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(0u, 0u, 69158u, 4294967295u), vec4<u32>(38915u, 31980u, 4294967295u, 81056u), vec4<u32>(1u, 1u, 40480u, 17796u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec3<u32> {
    global0 = array<vec4<u32>, 22>();
    var var_0 = vec2<u32>(_wgslsmith_mod_u32(17649u, 4294967295u) & countOneBits(_wgslsmith_mod_u32(~u_input.d, ~0u)), _wgslsmith_clamp_u32(0u, max(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.d, 0u)), vec2<u32>(arg_3, arg_3)), 1u), ~_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, 13522u), 1u)));
    var_0 = ~(~(~(~vec2<u32>(31667u, var_0.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1105f, arg_1.a.x, 665f) - vec3<f32>(_wgslsmith_div_f32(-1165f, -1570f), _wgslsmith_f_op_f32(arg_1.a.x + 360f), arg_0.x))), u_input.a.zyz, _wgslsmith_mult_i32(~(~(-7993i)), u_input.c) >> (4294967295u % 32u), arg_1.e.x, _wgslsmith_div_vec4_i32(min(-arg_1.e, -u_input.a), firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(1i, arg_2), _wgslsmith_sub_i32(u_input.c, -1i), min(arg_1.b.x, arg_1.d), -1i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(ceil(1000f)), arg_1.a.x, arg_1.a.x))));
    return _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 0u, arg_3), select(vec3<u32>(var_0.x, 41480u, var_0.x), vec3<u32>(var_0.x, 0u, arg_3), true)), ~(~vec3<u32>(1u, 1u, 1u))), max(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_3, 126336u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, u_input.b, u_input.d), vec3<u32>(var_0.x, u_input.d, 392u))), vec3<u32>(70453u, ~var_0.x, arg_3))) | vec3<u32>(~(~var_0.x) << (4294967295u % 32u), _wgslsmith_dot_vec3_u32(~(vec3<u32>(34283u, var_0.x, 0u) << (vec3<u32>(arg_3, 139216u, var_0.x) % vec3<u32>(32u))), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_3, 1u, 47120u), vec3<u32>(4294967295u, 0u, arg_3)))), firstLeadingBit(firstTrailingBit(~var_0.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = _wgslsmith_sub_vec3_i32(u_input.a.xwy, u_input.a.xyz);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-946f - 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -573f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1170f, -1222f)), _wgslsmith_f_op_f32(select(581f, 375f, false))))), -(select(vec3<i32>(var_1.x, 33115i, 0i) & vec3<i32>(u_input.e, -25143i, 2147483647i), countOneBits(vec3<i32>(-2147483647i, var_1.x, u_input.a.x)), vec3<bool>(true, true, true)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(21998u, 4294967295u, u_input.d), vec3<u32>(u_input.b, 0u, u_input.d) & vec3<u32>(4294967295u, u_input.b, 5201u)) % vec3<u32>(32u))), u_input.a.x, var_1.x, select(vec4<i32>(-66684i, 0i, var_1.x, ~(~var_1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(~(-1i), var_1.x, _wgslsmith_mod_i32(var_1.x, var_1.x), 2147483647i), vec4<i32>(_wgslsmith_mult_i32(9195i, 0i), u_input.e, 1i, abs(-2147483647i))), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), select(true, true, any(vec2<bool>(false, true))))));
    var_0 = false;
    let var_3 = vec3<u32>(1u, _wgslsmith_mod_u32(~(u_input.b >> (4294967295u % 32u)), u_input.d), _wgslsmith_add_u32(min(u_input.b, 30919u), select(42644u, 34155u, true) << (4294967295u % 32u))) | _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, u_input.b, 45210u)), ~func_3(vec3<f32>(var_2.a.x, 1023f, var_2.a.x), Struct_1(var_2.a, var_2.e.zwy, -2147483647i, u_input.c, var_2.e), var_2.c, 1u)), select(~min(vec3<u32>(0u, u_input.b, 0u), vec3<u32>(48879u, u_input.b, 0u)), max(vec3<u32>(0u, u_input.d, u_input.d) >> (vec3<u32>(u_input.d, u_input.d, 1u) % vec3<u32>(32u)), vec3<u32>(0u, 1u, u_input.d)), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, 0u, u_input.b), vec3<u32>(24121u, ~4502u, 1u)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(194f, var_2.a.x, var_2.a.x) - vec3<f32>(var_2.a.x, 1443f, -671f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1312f, var_2.a.x, var_2.a.x) * var_2.a)), var_2.a)), vec3<i32>(-var_2.b.x, u_input.c, -1i), _wgslsmith_mult_i32(min(42493i, -2147483647i), u_input.c), min(firstLeadingBit(var_2.c), var_1.x), vec4<i32>(32005i, -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.yzz, vec3<i32>(u_input.a.x, 2147483647i, var_2.b.x)), vec3<i32>(u_input.e, -63694i, var_2.b.x)), -40297i, -2147483647i));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec4<u32>, 22>();
    var var_0 = u_input.b;
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(func_2().c, u_input.e), _wgslsmith_clamp_i32(-(~2147483647i), ~select(u_input.c, 18256i, false), 1i), arg_1.c, -abs(0i)) & abs(-(~vec4<i32>(0i, -1i, arg_3.b.x, arg_0)));
    let var_2 = arg_3;
    let var_3 = func_2();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-512f)))), arg_1.a.x, _wgslsmith_f_op_f32(min(1359f, _wgslsmith_f_op_f32(floor(var_2.a.x)))))), vec3<i32>(2147483647i, i32(-1i) * -41667i, -abs(arg_0)), ~abs(arg_1.d ^ var_2.b.x) & ~_wgslsmith_add_i32(arg_1.b.x | -3495i, reverseBits(u_input.c)), _wgslsmith_mult_i32(2147483647i, ~(~u_input.c) ^ -2147483647i), -(firstTrailingBit(arg_1.e << (global0[_wgslsmith_index_u32(u_input.b, 22u)] % vec4<u32>(32u))) >> ((vec4<u32>(19007u, 4294967295u, u_input.b, u_input.d) ^ (global0[_wgslsmith_index_u32(u_input.d, 22u)] << (global0[_wgslsmith_index_u32(47909u, 22u)] % vec4<u32>(32u)))) % vec4<u32>(32u))));
}

fn func_1() -> f32 {
    var var_0 = func_4(-2147483647i, func_2(), false, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-729f, 496f, 463f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-284f, 999f, 1065f), vec3<f32>(1799f, 3215f, -613f), false)))), func_2().b, ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, u_input.e), _wgslsmith_div_i32(u_input.c, u_input.a.x)), u_input.c, _wgslsmith_mod_vec4_i32(u_input.a, func_2().e | vec4<i32>(32629i, 1764i, 0i, u_input.c))));
    let var_1 = 18346i;
    global0 = array<vec4<u32>, 22>();
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1090f, var_0.a.x, -774f))))), _wgslsmith_f_op_vec3_f32(-var_0.a), false)), _wgslsmith_mod_vec3_i32(u_input.a.yzw, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(1i, var_0.d, 28591i), u_input.a.xzx), _wgslsmith_div_vec3_i32(u_input.a.wzw, u_input.a.wxx))), ~(~(~(i32(-1i) * -22952i))), func_2().d, (u_input.a | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, 0i, -41003i), var_0.e, u_input.a)) ^ u_input.a);
    global0 = array<vec4<u32>, 22>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(269f * _wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x))))))) * 921f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-68209i, u_input.a.x, u_input.a.x, _wgslsmith_mod_i32(124256i, reverseBits(-u_input.e)));
    let var_1 = -u_input.e;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(469f * -1000f), -1196f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1006f)) - _wgslsmith_f_op_f32(func_1())))), 161f, false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-750f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(915f * _wgslsmith_f_op_f32(func_1()))));
    global0 = array<vec4<u32>, 22>();
    var var_3 = _wgslsmith_add_vec3_i32(select(~vec3<i32>(min(1i, -62685i), 1i, ~19953i), firstTrailingBit(vec3<i32>(~(-7981i), -u_input.e, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_0.x, u_input.c, var_1, var_1)))), any(select(vec2<bool>(true, false), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true)))), var_0.zyy);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~22795u, ~reverseBits(u_input.d >> (u_input.b % 32u)), ~20675u), firstLeadingBit(_wgslsmith_div_u32(1u, u_input.b)) & (_wgslsmith_sub_u32(1u, 16368u | u_input.b) ^ ~(~u_input.b)), -506f);
}

