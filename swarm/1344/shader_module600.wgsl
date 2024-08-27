struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(0u, 0u, 9947u, 0u), vec4<u32>(38353u, 0u, 33975u, 1u), vec4<u32>(113045u, 16848u, 39021u, 58888u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(6284u, 1u, 55162u, 1u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 18168u), vec4<u32>(31469u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 33218u, 1u), vec4<u32>(56691u, 18301u, 60912u, 102457u), vec4<u32>(0u, 13836u, 39931u, 19710u), vec4<u32>(59140u, 29021u, 53713u, 0u), vec4<u32>(65159u, 1u, 1u, 67098u), vec4<u32>(25002u, 3963u, 71967u, 54141u), vec4<u32>(4648u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 18500u, 1u), vec4<u32>(76626u, 1u, 16662u, 4294967295u), vec4<u32>(0u, 4294967295u, 30441u, 62967u), vec4<u32>(24557u, 1u, 2266u, 1u), vec4<u32>(8741u, 7461u, 9287u, 22667u), vec4<u32>(1u, 0u, 9942u, 14621u), vec4<u32>(15936u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 33396u, 1u), vec4<u32>(4294967295u, 4294967295u, 31514u, 4294967295u), vec4<u32>(1u, 1u, 94378u, 1u), vec4<u32>(11680u, 1u, 20265u, 0u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<u32> {
    global0 = array<vec4<u32>, 25>();
    let var_0 = arg_1.x;
    var var_1 = arg_1.yyy;
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-993f, _wgslsmith_f_op_f32(var_1.x + arg_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(394f))))) - 1000f), 124f);
    global0 = array<vec4<u32>, 25>();
    return reverseBits(vec2<u32>(~select(u_input.a.x, ~19963u, true), countOneBits(_wgslsmith_dot_vec2_u32(u_input.d.xz, u_input.a)) ^ abs(select(1u, u_input.d.x, true))));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_2 {
    global0 = array<vec4<u32>, 25>();
    let var_0 = Struct_2(!(!vec2<bool>(true, !arg_0)), func_3(Struct_1(-(~arg_1)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1499f - -938f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1123f + 1000f) + _wgslsmith_f_op_f32(-327f - 1033f)), _wgslsmith_f_op_f32(f32(-1f) * -229f), _wgslsmith_f_op_f32(f32(-1f) * -1393f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-776f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1171f)) + _wgslsmith_f_op_f32(abs(1517f)))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f)), var_0.c);
    var var_2 = 635f;
    let var_3 = var_0.c;
    return Struct_2(!var_0.a, var_0.b, 568f);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<bool> {
    let var_0 = Struct_1(arg_0.a);
    let var_1 = func_2(true, -(_wgslsmith_add_vec3_i32(~arg_0.a, ~var_0.a) << (max(u_input.d, _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.d.x, 0u), vec3<u32>(u_input.a.x, 38662u, u_input.d.x))) % vec3<u32>(32u))));
    let var_2 = arg_0;
    var var_3 = 42206i;
    let var_4 = arg_1.wyz;
    return vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-881f)), var_4.x) > -1756f, !(!select(false, all(vec3<bool>(var_1.a.x, true, var_1.a.x)), true)), arg_1.x == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-227f)) * var_4.x))), select(arg_1.x != _wgslsmith_f_op_f32(-arg_1.x), func_2(!var_1.a.x, var_2.a).a.x, true));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_2(!arg_2.a, vec2<u32>(_wgslsmith_add_u32(reverseBits(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(24967u, u_input.d.x, u_input.d.x), u_input.d)), ~select(~arg_2.b.x, u_input.d.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.c))));
    let var_1 = !select(true, any(!vec2<bool>(arg_2.a.x, true)), u_input.a.x > max(~u_input.d.x, ~1u));
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(firstLeadingBit(max(arg_0.a, select(vec3<i32>(0i, 60943i, arg_1), vec3<i32>(arg_0.a.x, 29294i, 8940i), vec3<bool>(var_0.a.x, arg_2.a.x, true)))), select(vec3<i32>(_wgslsmith_mod_i32(u_input.c, 2147483647i), firstTrailingBit(u_input.b), abs(u_input.b)), vec3<i32>(-34984i, _wgslsmith_clamp_i32(33730i, -23916i, 0i), 4688i >> (u_input.a.x % 32u)), select(func_1(arg_0, vec4<f32>(-242f, 200f, -260f, var_0.c)).zyx, vec3<bool>(arg_3, arg_2.a.x, true), select(vec3<bool>(var_0.a.x, var_1, arg_2.a.x), vec3<bool>(true, true, false), vec3<bool>(false, var_0.a.x, false))))));
    let var_3 = arg_0;
    let var_4 = Struct_2(vec2<bool>(((arg_2.b.x >> (u_input.d.x % 32u)) > ~u_input.a.x) & false, arg_3), abs(arg_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.c))), var_0.c, _wgslsmith_mod_u32(1u, var_0.b.x) > ~0u))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 25>();
    let var_0 = u_input.c;
    global0 = array<vec4<u32>, 25>();
    var var_1 = func_4(Struct_1(~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(var_0, -1i, 0i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 25349i, -44881i), vec3<i32>(2147483647i, -1i, -2147483647i), vec3<i32>(u_input.c, -7606i, -2147483647i)))), 1i, Struct_2(vec2<bool>(_wgslsmith_add_i32(var_0, var_0) > u_input.b, false), ~vec2<u32>(4294967295u, 132459u), 779f), !any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), func_1(Struct_1(vec3<i32>(var_0, -2147483647i, 0i)), vec4<f32>(1495f, 920f, -618f, -383f)), vec4<bool>(true, true, true, true))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(-902f, var_1.c)), 959f, -340f, -2012f);
    var var_3 = Struct_2(vec2<bool>(true, true), vec2<u32>(_wgslsmith_mod_u32(var_1.b.x | _wgslsmith_add_u32(var_1.b.x, 1u), ~_wgslsmith_mod_u32(16042u, var_1.b.x)), 1u), 1024f);
    var var_4 = 30812u;
    var var_5 = vec3<f32>(-1475f, func_2(var_1.a.x, ~(vec3<i32>(-37479i, var_0, var_0) >> (select(u_input.d, u_input.d, false) % vec3<u32>(32u)))).c, _wgslsmith_f_op_f32(abs(var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(48095i, 17280i << (abs(var_1.b.x) % 32u), _wgslsmith_add_i32(_wgslsmith_div_i32(-11681i, u_input.c), 10403i))), u_input.c, _wgslsmith_div_vec4_i32(~(-min(vec4<i32>(-1i, 1i, var_0, var_0), vec4<i32>(0i, -30526i, u_input.c, var_0))), ~vec4<i32>(var_0 ^ var_0, 11323i, max(var_0, u_input.e.x), u_input.c)), var_0);
}

