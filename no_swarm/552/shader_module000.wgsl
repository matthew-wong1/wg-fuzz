struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(-433f, 1730f, 1079f), vec3<f32>(2025f, 634f, 576f), vec3<f32>(726f, -1834f, -243f), vec3<f32>(440f, -895f, 1295f), vec3<f32>(1116f, 1000f, 144f), vec3<f32>(840f, 1834f, 739f), vec3<f32>(351f, -1096f, -128f), vec3<f32>(-226f, 1624f, 1743f), vec3<f32>(1888f, 1584f, -323f), vec3<f32>(479f, 362f, -940f), vec3<f32>(284f, 212f, -233f), vec3<f32>(554f, -1000f, -630f), vec3<f32>(2160f, -1154f, -1973f), vec3<f32>(606f, 1853f, 348f), vec3<f32>(-1456f, 544f, -272f), vec3<f32>(2774f, 1576f, 910f), vec3<f32>(-243f, -1169f, -907f), vec3<f32>(1161f, 632f, -168f));

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec4<i32>(48154i, -40386i, i32(-2147483648), 24848i), -289f, Struct_1(true), Struct_1(true), vec4<u32>(1u, 4294967295u, 1u, 1u)), Struct_2(vec4<i32>(-971i, 1i, 36853i, -2581i), 329f, Struct_1(true), Struct_1(true), vec4<u32>(1u, 4294967295u, 0u, 10306u)), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 31243i, 1i), 1236f, Struct_1(false), Struct_1(true), vec4<u32>(49623u, 0u, 4294967295u, 51048u)), Struct_2(vec4<i32>(-65762i, -64872i, -4337i, -65546i), -1724f, Struct_1(false), Struct_1(true), vec4<u32>(0u, 1u, 0u, 6477u)), Struct_2(vec4<i32>(1i, -19543i, -1i, 0i), 1286f, Struct_1(false), Struct_1(true), vec4<u32>(4294967295u, 26727u, 106575u, 30096u)), Struct_2(vec4<i32>(2147483647i, 2147483647i, 0i, 2147483647i), 352f, Struct_1(false), Struct_1(true), vec4<u32>(13233u, 0u, 4294967295u, 28365u)), Struct_2(vec4<i32>(2147483647i, 21405i, 41821i, 2147483647i), -1368f, Struct_1(false), Struct_1(false), vec4<u32>(44546u, 33397u, 32015u, 35666u)), Struct_2(vec4<i32>(i32(-2147483648), -39311i, -2868i, 1i), 1549f, Struct_1(true), Struct_1(false), vec4<u32>(22005u, 11800u, 0u, 13545u)), Struct_2(vec4<i32>(2147483647i, -1i, -36879i, i32(-2147483648)), 1287f, Struct_1(false), Struct_1(true), vec4<u32>(25002u, 1u, 30511u, 4294967295u)), Struct_2(vec4<i32>(-20189i, 78796i, 0i, -19764i), -594f, Struct_1(false), Struct_1(true), vec4<u32>(1u, 50903u, 35075u, 1u)), Struct_2(vec4<i32>(-11914i, 0i, -6414i, -1i), 181f, Struct_1(true), Struct_1(true), vec4<u32>(63288u, 1u, 1u, 0u)), Struct_2(vec4<i32>(-1i, 53737i, 45997i, i32(-2147483648)), -853f, Struct_1(false), Struct_1(false), vec4<u32>(26331u, 28551u, 23791u, 15118u)), Struct_2(vec4<i32>(19944i, -1i, 2147483647i, 0i), 309f, Struct_1(false), Struct_1(false), vec4<u32>(6092u, 34703u, 1u, 1u)), Struct_2(vec4<i32>(-3365i, 0i, 2147483647i, 1i), -2012f, Struct_1(true), Struct_1(true), vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), Struct_2(vec4<i32>(2147483647i, 1i, 39640i, 0i), 401f, Struct_1(false), Struct_1(true), vec4<u32>(4294967295u, 4294967295u, 63193u, 63073u)), Struct_2(vec4<i32>(1i, -1i, -11055i, -1i), 637f, Struct_1(false), Struct_1(true), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)));

var<private> global2: array<vec2<f32>, 24>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 24837u;
    global1 = array<Struct_2, 16>();
    global1 = array<Struct_2, 16>();
    var var_1 = arg_1.a;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1008f)) - _wgslsmith_f_op_f32(f32(-1f) * -618f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -690f)), _wgslsmith_f_op_f32(min(1758f, _wgslsmith_f_op_f32(select(368f, 1000f, any(vec2<bool>(arg_1.a, false))))))))));
    return arg_1;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    global0 = array<vec3<f32>, 18>();
    let var_0 = Struct_1(true);
    global2 = array<vec2<f32>, 24>();
    let var_1 = 27967u;
    var var_2 = max(_wgslsmith_clamp_vec3_i32(~u_input.c.yyx, vec3<i32>(u_input.c.x, u_input.a.x, 0i), _wgslsmith_mod_vec3_i32(u_input.c.yyy, vec3<i32>(-2042i, -1i, -35155i))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(78498u, 46809u, 38062u) << (arg_0 % vec3<u32>(32u)), firstTrailingBit(arg_0)) % vec3<u32>(32u)), u_input.a) << ((~vec3<u32>(_wgslsmith_div_u32(1078u, u_input.b), max(1u, var_1), u_input.b) & ~vec3<u32>(~0u, arg_0.x ^ arg_0.x, abs(19232u))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> bool {
    global2 = array<vec2<f32>, 24>();
    var var_0 = select(vec4<bool>(arg_0.c.a, -(~(-3012i)) >= -(~u_input.c.x), any(select(select(vec3<bool>(arg_0.c.a, false, arg_0.d.a), vec3<bool>(true, arg_0.c.a, true), vec3<bool>(true, arg_0.d.a, false)), vec3<bool>(arg_0.d.a, arg_0.d.a, true), vec3<bool>(true, true, arg_0.d.a))), arg_0.e.x < ~_wgslsmith_mult_u32(arg_0.e.x, 1u)), vec4<bool>(arg_0.d.a, arg_0.c.a, arg_0.c.a | any(vec2<bool>(false, false)), all(select(!vec3<bool>(arg_0.d.a, arg_0.d.a, false), select(vec3<bool>(false, arg_0.d.a, false), vec3<bool>(arg_0.c.a, arg_0.c.a, true), false), true))), select(select(vec4<bool>(true, func_2(57686u, arg_0.c).a, arg_0.c.a, arg_0.d.a), !select(vec4<bool>(arg_0.c.a, true, arg_0.d.a, arg_0.c.a), vec4<bool>(true, arg_0.d.a, true, true), vec4<bool>(false, false, arg_0.c.a, arg_0.d.a)), select(select(vec4<bool>(arg_0.d.a, arg_0.d.a, arg_0.c.a, arg_0.c.a), vec4<bool>(true, true, false, arg_0.d.a), arg_0.d.a), !vec4<bool>(false, arg_0.c.a, true, false), true)), !vec4<bool>(u_input.b <= u_input.b, true, any(vec4<bool>(arg_0.c.a, arg_0.d.a, arg_0.c.a, true)), arg_0.d.a), select(!vec4<bool>(arg_0.c.a, arg_0.d.a, arg_0.c.a, true), vec4<bool>(true, true, true, true), false)));
    let var_1 = _wgslsmith_div_u32(45794u, firstTrailingBit(4294967295u));
    var var_2 = arg_0.c;
    let var_3 = func_2(1u, func_2(_wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(arg_1.x, 4294967295u, arg_0.e.x))), arg_0.e.zzy), func_2(firstTrailingBit(var_1), Struct_1(arg_0.c.a))));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(vec4<i32>(~32990i, select(reverseBits(17065i >> (u_input.b % 32u)), (u_input.a.x ^ -2230i) | u_input.c.x, false), min(min(u_input.a.x, u_input.a.x) | -u_input.a.x, u_input.c.x), reverseBits(0i)), -1002f, Struct_1(!(!all(vec2<bool>(true, false)))), Struct_1(true), abs(max(countOneBits(abs(vec4<u32>(u_input.b, 8928u, u_input.b, 27971u))), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 0u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u))))));
    var var_1 = func_4(Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, 32987i, var_0.a.x), u_input.c | u_input.c) & max(vec4<i32>(var_0.a.x, u_input.c.x, 0i, u_input.a.x), var_0.a), _wgslsmith_f_op_f32(-232f - _wgslsmith_f_op_f32(func_3(vec3<u32>(var_0.e.x, var_0.e.x, u_input.b), func_2(0u, var_0.d)))), Struct_1(var_0.d.a | (var_0.c.a && var_0.d.a)), var_0.c, var_0.e ^ ~vec4<u32>(u_input.b, u_input.b, 7177u, 4294967295u)), vec3<u32>(~60675u, var_0.e.x >> (~0u % 32u), var_0.e.x));
    let var_2 = 446f;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_2, var_2)), _wgslsmith_f_op_f32(var_0.b + var_2))))), _wgslsmith_f_op_f32(-1006f * _wgslsmith_f_op_f32(f32(-1f) * -813f)), 1252f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), 686f, var_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-674f, var_2, -940f))) * global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, ~_wgslsmith_mult_u32(28069u, 46675u)), 18u)]));
    let var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), var_0.b, -591f, _wgslsmith_f_op_f32(step(var_2, var_3.x)))))));
    return func_2(57150u, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~8301u;
    var var_1 = 65540u;
    var var_2 = func_1();
    global1 = array<Struct_2, 16>();
    var var_3 = vec4<i32>(~(-_wgslsmith_mult_i32(-2147483647i, u_input.c.x)), -u_input.a.x, ~u_input.a.x, -_wgslsmith_mod_i32(-u_input.a.x, -2147483647i));
    let var_4 = Struct_1(func_2(abs(1u), func_1()).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(var_3.yz, select(~(-vec2<i32>(u_input.a.x, -1i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.c.x) >> (vec2<u32>(4294967295u, 17384u) % vec2<u32>(32u)), -u_input.a.zy), !(u_input.b == var_0))), u_input.c.x, -(~2147483647i), select(vec2<u32>(var_0, 6789u), _wgslsmith_mult_vec2_u32(~(vec2<u32>(1u, 17068u) & vec2<u32>(51591u, var_0)), vec2<u32>(u_input.b, _wgslsmith_mod_u32(0u, u_input.b))), any(!vec2<bool>(var_4.a, true))));
}

