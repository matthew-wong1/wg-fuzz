struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(i32(-2147483648), vec2<bool>(false, false), vec4<i32>(1i, 35376i, i32(-2147483648), 0i), true, vec2<f32>(-911f, 1333f)), Struct_1(-46135i, vec2<bool>(true, false), vec4<i32>(18670i, 25453i, 77969i, i32(-2147483648)), true, vec2<f32>(-1083f, -608f)), Struct_1(0i, vec2<bool>(true, false), vec4<i32>(12765i, -37684i, -27341i, 2147483647i), false, vec2<f32>(-232f, -241f)), Struct_1(39493i, vec2<bool>(false, true), vec4<i32>(-2477i, i32(-2147483648), 2147483647i, -14043i), true, vec2<f32>(1337f, -932f)), Struct_1(-15249i, vec2<bool>(true, false), vec4<i32>(6723i, -3851i, 9007i, i32(-2147483648)), true, vec2<f32>(172f, -1509f)), Struct_1(-6449i, vec2<bool>(true, true), vec4<i32>(2147483647i, 29628i, 0i, -12562i), true, vec2<f32>(-2304f, -208f)), Struct_1(-19361i, vec2<bool>(true, true), vec4<i32>(6028i, 1424i, 1i, -1i), false, vec2<f32>(-1291f, -1498f)), Struct_1(-1i, vec2<bool>(true, true), vec4<i32>(7840i, 13973i, 1i, i32(-2147483648)), false, vec2<f32>(-387f, 386f)), Struct_1(2147483647i, vec2<bool>(true, false), vec4<i32>(0i, 42997i, -44209i, 1i), false, vec2<f32>(-1000f, 282f)), Struct_1(-7755i, vec2<bool>(false, false), vec4<i32>(22843i, 30973i, 0i, -3317i), true, vec2<f32>(-785f, -287f)), Struct_1(-28376i, vec2<bool>(false, false), vec4<i32>(-69098i, 6610i, -1i, -94094i), false, vec2<f32>(1101f, 295f)), Struct_1(-779i, vec2<bool>(false, false), vec4<i32>(-56135i, -1i, i32(-2147483648), i32(-2147483648)), true, vec2<f32>(-886f, 646f)), Struct_1(-43875i, vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 10328i, 5946i, 2147483647i), false, vec2<f32>(-323f, -844f)), Struct_1(1435i, vec2<bool>(true, false), vec4<i32>(9594i, 2147483647i, 2147483647i, 112956i), true, vec2<f32>(1141f, 1365f)), Struct_1(0i, vec2<bool>(false, true), vec4<i32>(30692i, 0i, -3277i, -1i), true, vec2<f32>(531f, 1120f)), Struct_1(3623i, vec2<bool>(true, false), vec4<i32>(3358i, -10743i, i32(-2147483648), 1i), false, vec2<f32>(-988f, -250f)), Struct_1(-23573i, vec2<bool>(false, true), vec4<i32>(0i, -1i, i32(-2147483648), -1i), true, vec2<f32>(-1217f, -489f)), Struct_1(25675i, vec2<bool>(true, true), vec4<i32>(2147483647i, 2147483647i, -1i, -45366i), true, vec2<f32>(1000f, -905f)), Struct_1(20119i, vec2<bool>(true, false), vec4<i32>(10252i, -54816i, 1i, -45680i), true, vec2<f32>(668f, 744f)), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec4<i32>(1i, 0i, 2147483647i, 2147483647i), true, vec2<f32>(319f, -510f)), Struct_1(i32(-2147483648), vec2<bool>(false, true), vec4<i32>(21776i, i32(-2147483648), -71196i, 33091i), false, vec2<f32>(-1705f, 255f)), Struct_1(0i, vec2<bool>(true, true), vec4<i32>(13842i, -1i, i32(-2147483648), 11644i), false, vec2<f32>(227f, 243f)), Struct_1(-11903i, vec2<bool>(false, false), vec4<i32>(-36371i, 35614i, 1i, 11420i), false, vec2<f32>(1285f, 562f)), Struct_1(1i, vec2<bool>(true, true), vec4<i32>(-38032i, -58589i, -5790i, i32(-2147483648)), false, vec2<f32>(361f, 704f)), Struct_1(-42249i, vec2<bool>(true, false), vec4<i32>(54803i, -33634i, -34075i, 1i), false, vec2<f32>(179f, -883f)), Struct_1(i32(-2147483648), vec2<bool>(false, true), vec4<i32>(2147483647i, -1899i, 40577i, 1i), true, vec2<f32>(-128f, -828f)), Struct_1(64685i, vec2<bool>(false, true), vec4<i32>(20391i, 1i, -2943i, i32(-2147483648)), false, vec2<f32>(1266f, -681f)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    return _wgslsmith_dot_vec2_u32(abs(vec2<u32>(min(~arg_0.x, u_input.b.x & arg_0.x), _wgslsmith_add_u32(firstLeadingBit(u_input.b.x), u_input.b.x))), _wgslsmith_clamp_vec2_u32(max(firstLeadingBit(vec2<u32>(u_input.d, 1u) << (vec2<u32>(13820u, u_input.b.x) % vec2<u32>(32u))), arg_0.yx), arg_0.xx, abs(vec2<u32>(firstLeadingBit(u_input.a), _wgslsmith_sub_u32(5373u, 1u)))));
}

fn func_2() -> u32 {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    return 0u;
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: vec3<u32>) -> f32 {
    global0 = array<Struct_1, 27>();
    let var_0 = global0[_wgslsmith_index_u32(~arg_1.x, 27u)];
    let var_1 = (~_wgslsmith_add_vec4_i32(max(vec4<i32>(arg_0, arg_0, 2147483647i, 2147483647i), var_0.c), _wgslsmith_mod_vec4_i32(var_0.c, vec4<i32>(1i, -11372i, arg_2.x, -1i))) | var_0.c) << (_wgslsmith_add_vec4_u32(arg_1, min(~vec4<u32>(arg_3.x, 30995u, u_input.b.x, 5791u), vec4<u32>(1u, 4294967295u, arg_1.x, arg_3.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, arg_3.x, 64820u, 24616u), arg_1) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global0 = array<Struct_1, 27>();
    let var_2 = true;
    return var_0.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(146f))) - _wgslsmith_f_op_f32(2115f - _wgslsmith_f_op_f32(floor(1551f)))), -1767f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1649f * 316f))), _wgslsmith_f_op_f32(f32(-1f) * -609f))));
    global0 = array<Struct_1, 27>();
    let var_1 = select(~(~abs(~vec4<u32>(1u, u_input.a, 1u, u_input.d))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.yx), abs(u_input.d), 1u), abs(vec4<u32>(u_input.a, 4294967295u, 0u, 24976u) & vec4<u32>(1u, u_input.b.x, 4474u, u_input.d))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.d, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.d, u_input.a, u_input.a)), ~vec4<u32>(u_input.d, u_input.b.x, 1u, 39318u)), vec4<u32>(~u_input.b.x, func_1(vec3<u32>(4294967295u, 5998u, u_input.a)), 5102u, select(0u, u_input.a, false)))), _wgslsmith_f_op_f32(func_3(-u_input.c & 16578i, min(vec4<u32>(35549u, u_input.a, 5080u, 1u) << (vec4<u32>(1u, 34305u, 36134u, 27265u) % vec4<u32>(32u)), vec4<u32>(u_input.a, 13434u, u_input.d, 4294967295u) << (vec4<u32>(4294967295u, u_input.a, u_input.b.x, 12725u) % vec4<u32>(32u))), vec2<i32>(2784i, _wgslsmith_mult_i32(16461i, -1i)), vec3<u32>(0u >> (u_input.b.x % 32u), func_1(u_input.b), func_2()))) >= _wgslsmith_f_op_f32(-var_0));
    var var_2 = reverseBits(firstTrailingBit(_wgslsmith_mult_vec4_i32(~abs(vec4<i32>(-18021i, u_input.c, 1i, u_input.c)), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), min(vec4<i32>(1i, 2147483647i, u_input.c, 32067i), vec4<i32>(u_input.c, 35652i, 0i, u_input.c))))));
    var_2 = abs(reverseBits(vec4<i32>(~var_2.x, firstLeadingBit(var_2.x), ~867i, firstLeadingBit(46919i))) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 75u, 107712u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.d) ^ vec4<u32>(u_input.a, var_1.x, 6131u, 50236u)), ~99198u, var_1.x, firstLeadingBit(u_input.b.x)) % vec4<u32>(32u)));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(8687u, ~(var_1.x >> (1u % 32u))), 27u)];
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, ~func_2()), 27u)];
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_1.x, 14523u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), select(abs(u_input.a), 19103u, false));
}

