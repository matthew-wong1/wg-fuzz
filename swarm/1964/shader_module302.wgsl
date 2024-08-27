struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<bool>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<bool>, 16>;

var<private> global2: array<u32, 15> = array<u32, 15>(0u, 0u, 1u, 137644u, 3028u, 30215u, 5037u, 23494u, 9239u, 1u, 65341u, 0u, 4294967295u, 1u, 1u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> bool {
    global0 = !arg_1.a.c.x;
    global2 = array<u32, 15>();
    var var_0 = u_input.c;
    global0 = !(true != (!arg_3 && true));
    global2 = array<u32, 15>();
    return true;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global2 = array<u32, 15>();
    var var_0 = 0u;
    let var_1 = Struct_1(~u_input.c, vec2<bool>(true, func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.c.x) >> (vec3<u32>(47420u, global2[_wgslsmith_index_u32(4294967295u, 15u)], 32451u) % vec3<u32>(32u)), u_input.c >> (u_input.c % vec3<u32>(32u))), Struct_2(Struct_1(vec3<u32>(1u, 75462u, 55698u), vec2<bool>(false, true), vec3<bool>(false, false, true), vec3<f32>(-116f, -1391f, -581f)), abs(u_input.c.x), vec3<bool>(false, true, true)), 51983u, true)), vec3<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), !all(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(663f, -518f, false))), -1027f, _wgslsmith_f_op_f32(sign(-361f)))));
    let var_2 = vec3<bool>(var_1.c.x && var_1.b.x, func_3(vec3<u32>(4294967295u, 1u, 36057u), Struct_2(Struct_1(~vec3<u32>(4294967295u, u_input.c.x, var_1.a.x), vec2<bool>(false, var_1.b.x), !vec3<bool>(true, var_1.c.x, true), _wgslsmith_f_op_vec3_f32(select(var_1.d, vec3<f32>(-1019f, var_1.d.x, var_1.d.x), var_1.c))), (global2[_wgslsmith_index_u32(2496u, 15u)] << (4294967295u % 32u)) >> ((68284u >> (0u % 32u)) % 32u), vec3<bool>(true | var_1.c.x, var_1.b.x, all(vec3<bool>(true, false, false)))), ~max(0u, 33504u), var_1.b.x), countOneBits(~(1u ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.a.x, 15u)], 15u)])) <= (0u & u_input.d));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(262f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(var_1.d.x + var_1.d.x)))), _wgslsmith_f_op_f32(274f * 297f))));
    return Struct_1(select(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(27592u, 39522u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23303u, 15u)], 15u)]), vec3<u32>(41864u, 4294967295u, var_1.a.x), vec3<u32>(1u, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(u_input.c.x, 15u)])), u_input.c), select(firstLeadingBit(vec3<u32>(60153u, global2[_wgslsmith_index_u32(u_input.c.x, 15u)], 4294967295u)), vec3<u32>(global2[_wgslsmith_index_u32(var_1.a.x, 15u)] | global2[_wgslsmith_index_u32(57988u, 15u)], _wgslsmith_mod_u32(var_1.a.x, u_input.d), _wgslsmith_dot_vec4_u32(vec4<u32>(25777u, u_input.d, 0u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(var_1.a.x, 15u)], var_1.a.x, u_input.d, 0u))), select(var_2, !vec3<bool>(true, false, var_1.c.x), vec3<bool>(false, var_1.c.x, var_2.x))), true && var_1.b.x), select(!var_1.c.xx, vec2<bool>(true | (var_2.x & var_2.x), var_2.x), var_1.c.yz), select(select(var_1.c, var_1.c, !vec3<bool>(true, var_1.b.x, var_1.c.x)), var_1.c, select(vec3<bool>(var_2.x, var_2.x, var_1.c.x), select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(false, true, false), all(global1[_wgslsmith_index_u32(u_input.c.x, 16u)])), !var_1.c.x == all(vec4<bool>(false, var_2.x, false, var_1.c.x)))), _wgslsmith_f_op_vec3_f32(-var_1.d));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    var var_0 = Struct_2(Struct_1(arg_0.a & ~arg_0.a, arg_0.b, arg_1.a.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, arg_2.x, -1867f) * vec3<f32>(-557f, arg_0.d.x, arg_1.a.d.x)))))), u_input.c.x, arg_0.c);
    var var_1 = _wgslsmith_f_op_f32(ceil(349f));
    var var_2 = _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(arg_1.a.d.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, -1000f) * -1126f))), true));
    global1 = array<vec4<bool>, 16>();
    var_1 = 734f;
    return reverseBits(var_0.a.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool, arg_3: u32) -> vec4<bool> {
    var var_0 = arg_1.x;
    var_0 = arg_1.x | (select(any(arg_0.a.c), true, any(global1[_wgslsmith_index_u32(firstTrailingBit(arg_0.a.a.x), 16u)])) && arg_1.x);
    global1 = array<vec4<bool>, 16>();
    global1 = array<vec4<bool>, 16>();
    var var_1 = func_2(~(-(~(~u_input.b))));
    return !vec4<bool>(_wgslsmith_div_f32(arg_0.a.d.x, 135f) == -1000f, true, arg_2 || any(select(vec2<bool>(false, true), vec2<bool>(true, arg_1.x), true)), false);
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = ~(firstTrailingBit(vec2<i32>(arg_0, u_input.a.x)) ^ u_input.a.yw) >> (vec2<u32>((~global2[_wgslsmith_index_u32(u_input.d, 15u)] | global2[_wgslsmith_index_u32(4294967295u, 15u)]) ^ (~global2[_wgslsmith_index_u32(4294967295u, 15u)] & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(0u, 15u)], 1u, u_input.d), vec4<u32>(62084u, u_input.d, u_input.c.x, 4294967295u))), u_input.d) % vec2<u32>(32u));
    global0 = any(func_5(Struct_2(Struct_1(vec3<u32>(12584u, u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62737u, 15u)], 15u)]), vec2<bool>(true, true), vec3<bool>(false, true, true), vec3<f32>(-1000f, 1398f, -1489f)), func_4(func_2(-75409i), Struct_2(Struct_1(u_input.c, vec2<bool>(false, true), vec3<bool>(true, true, true), vec3<f32>(1376f, -1000f, 551f)), u_input.d, vec3<bool>(true, false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(831f, -1149f, -1198f, -931f))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true))), vec3<bool>(true, true, true), select(all(vec4<bool>(false, true, true, false)), true, -var_0.x == ~0i), global2[_wgslsmith_index_u32(func_2(_wgslsmith_mult_i32(u_input.a.x, 2147483647i)).a.x, 15u)]));
    var var_1 = min(var_0.x, ~_wgslsmith_mod_i32(1i, i32(-1i) * -1i)) >> (_wgslsmith_clamp_u32(_wgslsmith_add_u32(~(~u_input.c.x), global2[_wgslsmith_index_u32(~32042u, 15u)]), global2[_wgslsmith_index_u32(~func_2(u_input.a.x ^ u_input.b).a.x, 15u)], u_input.c.x) % 32u);
    var var_2 = any(func_2(~var_0.x).b);
    global1 = array<vec4<bool>, 16>();
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(5060u, u_input.c.x, 1u, u_input.c.x), vec4<u32>(u_input.d, 1u, 3394u, u_input.c.x)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(29620u, global2[_wgslsmith_index_u32(22694u, 15u)]), ~u_input.c.x), 15u)], 8141u), vec4<u32>(max(11171u, 10344u), ~1u, ~u_input.d, _wgslsmith_sub_u32(u_input.d, global2[_wgslsmith_index_u32(116361u, 15u)])) >> (min(vec4<u32>(25786u, global2[_wgslsmith_index_u32(u_input.d, 15u)], 96264u, u_input.c.x), ~vec4<u32>(35740u, global2[_wgslsmith_index_u32(0u, 15u)], 1u, 0u)) % vec4<u32>(32u))), (~max(vec4<u32>(u_input.c.x, 66711u, 64404u, 0u), vec4<u32>(u_input.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], u_input.c.x, 1u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(22132u, 88165u, 50905u, 53562u), vec4<u32>(30375u, u_input.c.x, u_input.d, 36244u))) << (select(vec4<u32>(58299u, 50994u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6157u, 15u)], 15u)], 15u)], 70683u) | ~vec4<u32>(1u, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(u_input.c.x, 15u)], 28371u), abs(min(vec4<u32>(56108u, global2[_wgslsmith_index_u32(3277u, 15u)], 0u, 7431u), vec4<u32>(4294967295u, 21547u, 1u, 39279u))), true) % vec4<u32>(32u)));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = Struct_1(u_input.c, vec2<bool>(!func_5(Struct_2(Struct_1(vec3<u32>(0u, 16843u, arg_0.d), vec2<bool>(false, false), vec3<bool>(false, false, arg_0.a.b.x), arg_3.d), 1u, vec3<bool>(false, false, true)), !vec3<bool>(false, arg_3.c.x, arg_3.b.x), !arg_3.b.x, 4294967295u).x, true), vec3<bool>(arg_0.e.x, arg_0.e.x, true), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(arg_3.d, vec3<f32>(_wgslsmith_f_op_f32(1203f - arg_0.a.d.x), _wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_f_op_f32(select(-393f, 1522f, arg_0.e.x)))))));
    let var_1 = func_1(_wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(u_input.a.xx, arg_1.yw, vec2<i32>(16620i, 3038i)) << (_wgslsmith_clamp_vec2_u32(var_0.a.xz, u_input.c.xx, vec2<u32>(1148u, arg_0.d)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, arg_1.x) ^ vec2<i32>(-2147483647i, 19963i), _wgslsmith_add_vec2_i32(vec2<i32>(23774i, 2147483647i), vec2<i32>(19833i, -14331i))) >> (func_2(_wgslsmith_clamp_i32(37054i, u_input.a.x, u_input.b)).a.yy % vec2<u32>(32u))));
    var var_2 = _wgslsmith_sub_vec2_u32(max(u_input.c.xx, u_input.c.yy), ~vec2<u32>(func_2(u_input.b << (var_1 % 32u)).a.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c.x, 2937u), 4294967295u)));
    var_2 = ~(~(~(~vec2<u32>(1865u, var_1))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~select(_wgslsmith_mult_u32(~4294967295u, ~0u), _wgslsmith_div_u32(u_input.c.x, ~22324u), false), global2[_wgslsmith_index_u32(abs(28705u), 15u)], 4294967295u, 16062u);
    let var_1 = ~u_input.a.x;
    global2 = array<u32, 15>();
    let var_2 = func_6(Struct_3(Struct_1(vec3<u32>(~19637u, 15132u | var_0.x, _wgslsmith_dot_vec3_u32(u_input.c, var_0.zyx)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1806f, -1000f, -366f)) * _wgslsmith_div_vec3_f32(vec3<f32>(517f, 1281f, 354f), vec3<f32>(351f, -751f, -578f)))), select(reverseBits(vec4<u32>(var_0.x, var_0.x, u_input.c.x, 22165u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.d, global2[_wgslsmith_index_u32(0u, 15u)], u_input.d), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(130282u, global2[_wgslsmith_index_u32(4294967295u, 15u)], var_0.x, u_input.d)), ~(vec4<u32>(149001u, u_input.c.x, 15081u, 4294967295u) & vec4<u32>(u_input.c.x, 27714u, 1u, u_input.d)), !global1[_wgslsmith_index_u32(var_0.x, 16u)]), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], 16u)], func_1(1i) << (82953u % 32u), vec3<bool>(true, any(vec2<bool>(false, false)), var_0.x < _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], u_input.c.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -38739i, ~u_input.b >> ((0u & u_input.c.x) % 32u), (u_input.a.x | u_input.b) & var_1), min(firstTrailingBit(u_input.a) & reverseBits(u_input.a), -abs(vec4<i32>(u_input.a.x, u_input.b, -34953i, 27676i))), -u_input.a), _wgslsmith_div_u32(func_4(Struct_1(~vec3<u32>(var_0.x, var_0.x, 4294967295u), vec2<bool>(true, false), vec3<bool>(true, false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 647f, -1479f))), Struct_2(func_2(var_1), ~var_0.x, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-931f, 665f, -968f, 425f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1276f, -1079f, 1010f, 1435f)))), 17032u), func_2(firstTrailingBit(-reverseBits(var_1))));
    let var_3 = vec2<u32>(u_input.c.x, max(func_2(-1i).a.x, ~func_1(u_input.a.x)));
    var var_4 = func_2(-8339i).a.x;
    var var_5 = Struct_2(func_2(var_1), func_6(Struct_3(func_6(func_6(var_2, u_input.a, u_input.c.x, Struct_1(vec3<u32>(43216u, 4294967295u, var_0.x), var_2.e.yx, vec3<bool>(var_2.a.c.x, true, var_2.a.c.x), vec3<f32>(-238f, -369f, var_2.a.d.x))), -u_input.a, 4294967295u, Struct_1(vec3<u32>(50156u, 6495u, 0u), vec2<bool>(var_2.e.x, false), var_2.e, vec3<f32>(var_2.a.d.x, -165f, -1355f))).a, var_2.b, var_2.c, ~global2[_wgslsmith_index_u32(1u, 15u)], vec3<bool>(all(var_2.c.wy), all(global1[_wgslsmith_index_u32(67599u, 16u)]), var_2.e.x)), -(vec4<i32>(1i, -12456i, u_input.a.x, 4543i) | vec4<i32>(-48659i, 18101i, 1i, var_1)), var_3.x, func_2(u_input.a.x)).b.x, func_6(func_6(Struct_3(var_2.a, var_2.b, select(vec4<bool>(true, false, var_2.e.x, false), vec4<bool>(false, var_2.c.x, var_2.a.c.x, var_2.e.x), global1[_wgslsmith_index_u32(var_2.a.a.x, 16u)]), max(77767u, var_2.d), var_2.e), (u_input.a >> (vec4<u32>(0u, 25610u, 123058u, 55831u) % vec4<u32>(32u))) & vec4<i32>(u_input.a.x, 2147483647i, -2421i, 0i), u_input.c.x, var_2.a), -(~vec4<i32>(20856i, var_1, -1i, -58150i) & select(u_input.a, u_input.a, true)), u_input.c.x, func_6(var_2, u_input.a, func_2(var_1).a.x, Struct_1(countOneBits(vec3<u32>(36699u, var_2.d, 4294967295u)), select(vec2<bool>(true, false), vec2<bool>(var_2.e.x, var_2.c.x), vec2<bool>(var_2.c.x, var_2.c.x)), select(var_2.c.www, var_2.c.zww, var_2.e.x), vec3<f32>(var_2.a.d.x, var_2.a.d.x, -733f))).a).c.wyx);
    var var_6 = -653f;
    var var_7 = var_5.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.yx);
}

