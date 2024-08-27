struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26>;

var<private> global1: array<vec2<i32>, 31>;

var<private> global2: array<bool, 2> = array<bool, 2>(false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = abs(_wgslsmith_mult_i32(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0.c, arg_0.e, u_input.e), ~vec4<i32>(u_input.c, 1i, 4698i, -2147483647i)))) | -1i;
    var var_1 = -263f;
    let var_2 = Struct_3(Struct_2(52867u, abs(-57892i), !(!(!vec2<bool>(arg_2.b, arg_2.b))), arg_2.d.x), Struct_1(false, true, 7217i, _wgslsmith_f_op_vec4_f32(trunc(arg_2.d)), ~select(1i, var_0, !arg_2.b)), Struct_1(true && arg_1, _wgslsmith_f_op_f32(-179f * _wgslsmith_f_op_f32(-arg_0.d.x)) != -1073f, ~select(arg_2.c, -arg_2.c, global2[_wgslsmith_index_u32(~u_input.b.x, 2u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-313f, arg_0.d.x, arg_2.d.x, arg_0.d.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.d.x, -119f, arg_2.d.x, arg_0.d.x), vec4<f32>(-839f, arg_2.d.x, arg_2.d.x, arg_0.d.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(875f, arg_0.d.x, 685f, arg_2.d.x) + vec4<f32>(1038f, -502f, 303f, 830f)))), countOneBits(u_input.c)), Struct_2(~(~u_input.d << (u_input.d % 32u)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.e, arg_2.c) & 27649i, ~1i), !(!select(vec2<bool>(arg_2.a, arg_1), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 2u)], false), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) * _wgslsmith_f_op_f32(-arg_2.d.x)))), ~vec3<u32>(abs(115847u), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), ~1796u) ^ max(abs(vec3<u32>(u_input.b.x, 0u, 28795u)) | countOneBits(vec3<u32>(u_input.d, 86427u, 54189u)), vec3<u32>(52980u, 4294967295u, u_input.d)));
    let var_3 = _wgslsmith_dot_vec3_u32(abs(~max(reverseBits(var_2.e), vec3<u32>(21409u, 1u, 24863u) << (vec3<u32>(u_input.b.x, var_2.e.x, var_2.d.a) % vec3<u32>(32u)))), ~firstLeadingBit(vec3<u32>(u_input.b.x, 666u, 36800u)));
    global1 = array<vec2<i32>, 31>();
    return var_2.d.c;
}

fn func_2() -> vec2<bool> {
    global1 = array<vec2<i32>, 31>();
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-716f, _wgslsmith_f_op_f32(f32(-1f) * -922f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-3311f, 1475f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1726f, 940f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(495f + _wgslsmith_f_op_f32(1395f - -880f))), -678f)));
    let var_1 = max(~(4294967295u & u_input.b.x), u_input.b.x);
    var var_2 = var_0.x > var_0.x;
    var var_3 = (global2[_wgslsmith_index_u32(~(~51117u), 2u)] && !global2[_wgslsmith_index_u32(11515u, 2u)]) || all(vec4<bool>(!any(vec2<bool>(global2[_wgslsmith_index_u32(var_1, 2u)], true)), any(vec2<bool>(true, false)), !(u_input.a >= u_input.a), ~u_input.a < (i32(-1i) * -1i)));
    return !select(select(select(func_3(Struct_1(global2[_wgslsmith_index_u32(u_input.d, 2u)], false, 0i, global0[_wgslsmith_index_u32(1u, 26u)], u_input.c), true, Struct_1(true, true, u_input.c, vec4<f32>(-494f, var_0.x, var_0.x, var_0.x), 1i)), func_3(Struct_1(true, false, u_input.e, vec4<f32>(-949f, -965f, var_0.x, -2689f), 21895i), global2[_wgslsmith_index_u32(u_input.d, 2u)], Struct_1(true, true, -1i, global0[_wgslsmith_index_u32(0u, 26u)], -1i)), !vec2<bool>(global2[_wgslsmith_index_u32(var_1, 2u)], false)), vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1, 4294967295u), 2u)], any(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 2u)])))), vec2<bool>(true, true), !vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], any(vec4<bool>(global2[_wgslsmith_index_u32(var_1, 2u)], false, global2[_wgslsmith_index_u32(1u, 2u)], true))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_0.b;
    var var_1 = 2147483647i;
    var var_2 = u_input.b.x;
    var var_3 = arg_3.b;
    global0 = array<vec4<f32>, 26>();
    return Struct_1(global2[_wgslsmith_index_u32(0u, 2u)], true, arg_3.d.b, arg_3.c.d, _wgslsmith_sub_i32(~(-8294i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), abs(global1[_wgslsmith_index_u32(0u, 31u)])), 21153i));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global0 = array<vec4<f32>, 26>();
    global0 = array<vec4<f32>, 26>();
    let var_0 = vec3<bool>(any(vec3<bool>(true, true, true)), true, true);
    var var_1 = 1u >> (_wgslsmith_sub_u32(~u_input.b.x, reverseBits(max(countOneBits(4294967295u), min(arg_0.d.a, arg_0.e.x)))) % 32u);
    var var_2 = ~vec4<u32>(u_input.d, 57598u, ~91189u, ~(u_input.b.x >> (39933u % 32u)));
    return func_4(Struct_2(489u, arg_0.a.b, func_2(), _wgslsmith_f_op_f32(round(-352f))), ((reverseBits(vec4<i32>(-1i, 0i, -1i, u_input.c)) << (~vec4<u32>(1u, var_2.x, 41281u, var_2.x) % vec4<u32>(32u))) & select(vec4<i32>(-15104i, 31835i, arg_0.a.b, 0i), -vec4<i32>(u_input.a, -30388i, arg_0.a.b, arg_0.c.e), vec4<bool>(var_0.x, arg_0.c.a, var_0.x, false))) << (~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(39216u, 4294967295u, arg_0.e.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.d, var_2.x, 1u), vec4<u32>(arg_0.e.x, 31065u, var_2.x, 47209u))) % vec4<u32>(32u)), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, max(var_2.x, arg_0.e.x)), max(u_input.b.x >> (arg_0.e.x % 32u), var_2.x)), Struct_3(Struct_2(_wgslsmith_mult_u32(34294u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.d.a, 3509u), vec3<u32>(u_input.d, 20875u, 1u))), ~(-2147483647i), vec2<bool>(false, all(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.d - -863f))), Struct_1(true, var_0.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.d.b, arg_0.b.e), 0i), _wgslsmith_f_op_vec4_f32(abs(arg_0.b.d)), _wgslsmith_sub_i32(arg_0.d.b, ~13258i)), Struct_1(select(var_0.x, true, true), u_input.a != ~(-45293i), -1i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(1u, 26u)]))), u_input.e), Struct_2(arg_0.a.a, ~_wgslsmith_mod_i32(1i, -18560i), arg_0.d.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.d.x))), vec3<u32>(4294967295u, (u_input.b.x | arg_0.a.a) << ((12611u >> (arg_0.a.a % 32u)) % 32u), ~arg_0.a.a)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    global1 = array<vec2<i32>, 31>();
    let var_0 = -abs(arg_2.c);
    global0 = array<vec4<f32>, 26>();
    var var_1 = arg_2.d.x;
    let var_2 = _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(countOneBits(firstLeadingBit(28286u)), (4294967295u | u_input.b.x) & u_input.d, arg_1.a | (arg_1.a ^ arg_1.a))), ~(~(vec3<u32>(arg_1.a, u_input.b.x, arg_1.a) >> (vec3<u32>(23490u, arg_1.a, u_input.b.x) % vec3<u32>(32u)))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.d.x, _wgslsmith_f_op_f32(arg_3.x + arg_2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1655f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1687f - arg_1.d) - 2079f)) + 574f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-13862i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1772f, 940f, 1247f, -707f) * global0[_wgslsmith_index_u32(u_input.b.x, 26u)])) - vec4<f32>(-1070f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2010f * 1735f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2024f - -240f), -1346f), _wgslsmith_div_f32(-647f, _wgslsmith_div_f32(-1730f, -411f)))), u_input.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(select(select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(355u, 2u)], global2[_wgslsmith_index_u32(u_input.d, 2u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)], global2[_wgslsmith_index_u32(u_input.d, 2u)]), global2[_wgslsmith_index_u32(u_input.d, 2u)]), vec4<bool>(false, false, true, true), u_input.b.x >= 0u), Struct_2(_wgslsmith_sub_u32(u_input.d, 0u), -35398i, !vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)]), _wgslsmith_div_f32(-1000f, -1000f)), func_1(Struct_3(Struct_2(u_input.b.x, -2455i, vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 2u)], false), 1127f), Struct_1(true, global2[_wgslsmith_index_u32(1u, 2u)], 1i, vec4<f32>(-1640f, -180f, -527f, -487f), u_input.c), Struct_1(true, true, u_input.a, vec4<f32>(-1531f, -410f, 1000f, 284f), 1i), Struct_2(51045u, 16438i, vec2<bool>(global2[_wgslsmith_index_u32(0u, 2u)], true), -713f), vec3<u32>(10480u, 4294967295u, u_input.b.x))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(839f, -2413f, 222f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f)))), ~countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a, -55103i), -vec3<i32>(-1i, u_input.a, -70349i))));
}

