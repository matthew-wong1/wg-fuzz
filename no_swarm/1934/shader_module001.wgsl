struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(2147483647i, false, -697f, true), Struct_1(2147483647i, true, 1675f, false), Struct_1(48619i, true, 1645f, true), Struct_1(2147483647i, true, 1411f, false), Struct_1(i32(-2147483648), true, 1042f, true), Struct_1(32903i, false, -513f, false), Struct_1(0i, true, 1762f, true), Struct_1(18040i, true, 2374f, true), Struct_1(i32(-2147483648), true, -611f, true), Struct_1(-1i, false, -1000f, false), Struct_1(1i, false, -315f, false), Struct_1(i32(-2147483648), true, 1576f, false), Struct_1(0i, true, -452f, true), Struct_1(2147483647i, false, 1035f, false), Struct_1(-6962i, true, 1702f, false), Struct_1(2898i, true, -126f, false), Struct_1(-1i, true, 314f, true), Struct_1(i32(-2147483648), false, -2304f, true), Struct_1(0i, true, -2349f, false), Struct_1(1i, true, 867f, true), Struct_1(-19869i, true, -593f, false), Struct_1(2147483647i, false, -822f, true), Struct_1(19573i, true, 515f, false));

var<private> global2: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(1276u, 1u, 19963u), vec3<u32>(4294967295u, 4294967295u, 37788u), vec3<u32>(53176u, 4294967295u, 0u), vec3<u32>(27635u, 15003u, 37667u), vec3<u32>(27164u, 42101u, 5863u), vec3<u32>(4294967295u, 41321u, 1u), vec3<u32>(1u, 93643u, 12852u), vec3<u32>(1099u, 3830u, 1u), vec3<u32>(22532u, 5267u, 1u), vec3<u32>(1822u, 4294967295u, 0u), vec3<u32>(4294967295u, 16045u, 43863u), vec3<u32>(1u, 63120u, 5219u), vec3<u32>(35944u, 12963u, 1u), vec3<u32>(28535u, 20142u, 1u), vec3<u32>(1u, 21385u, 1u), vec3<u32>(5529u, 16489u, 49670u), vec3<u32>(1u, 1u, 35186u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec2<bool> {
    global0 = global1[_wgslsmith_index_u32(u_input.a, 23u)];
    global1 = array<Struct_1, 23>();
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, u_input.a, 57456u), max(~(~vec4<u32>(u_input.a, u_input.a, 17044u, u_input.a)), firstTrailingBit(vec4<u32>(u_input.a, 13764u, u_input.a, 24777u)))) == 4294967295u;
    global2 = array<vec3<u32>, 17>();
    let var_1 = Struct_1(-7337i, var_0, 1377f, var_0);
    return vec2<bool>(!(var_1.d || any(vec2<bool>(false, var_0))), var_0 && true);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: f32) -> vec3<bool> {
    let var_0 = ~(~1u);
    global2 = array<vec3<u32>, 17>();
    global1 = array<Struct_1, 23>();
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 23u)];
    var var_1 = arg_2;
    return !select(select(vec3<bool>(global0.d, global0.b, false), vec3<bool>(true, global0.b, global0.d), true), select(vec3<bool>(!global0.d, false, any(vec3<bool>(true, global0.b, global0.d))), !(!vec3<bool>(false, global0.b, global0.b)), func_1().x), true);
}

fn func_2(arg_0: Struct_5, arg_1: vec3<i32>) -> vec4<bool> {
    var var_0 = vec2<i32>(1i, firstLeadingBit(arg_1.x)) & _wgslsmith_clamp_vec2_i32(-arg_1.yy << (firstTrailingBit(max(vec2<u32>(1u, 4294967295u), arg_0.c.a.wx)) % vec2<u32>(32u)), arg_1.zz, _wgslsmith_div_vec2_i32(arg_1.xy, arg_1.zx));
    let var_1 = -36100i;
    var var_2 = vec2<i32>(59023i, select(var_0.x, -1i, any(func_3(arg_0.c.a.x, vec4<i32>(global0.a, var_0.x, 0i, arg_1.x), _wgslsmith_f_op_f32(floor(global0.c))))));
    var_2 = vec2<i32>(var_2.x, -1i);
    global1 = array<Struct_1, 23>();
    return select(vec4<bool>(false, arg_0.c.c.x, global0.d, true & func_1().x), select(!arg_0.c.c, select(select(vec4<bool>(true, true, true, global0.b), !vec4<bool>(arg_0.c.c.x, global0.b, false, false), true), !(!vec4<bool>(true, arg_0.c.c.x, true, true)), vec4<bool>(true & arg_0.b.c.x, true, global0.d, false)), !(_wgslsmith_dot_vec3_i32(arg_1, arg_1) <= -2147483647i)), global0.b);
}

fn func_4(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, global0.c, 1675f) - vec3<f32>(1000f, -485f, 1282f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, global0.c, global0.c) * vec3<f32>(-1644f, 467f, global0.c))))) * vec3<f32>(global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) + _wgslsmith_div_f32(global0.c, -249f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + 813f)))), Struct_3(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, 29177u, u_input.a), ~vec4<u32>(arg_1, u_input.a, 4294967295u, 35029u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1019u, arg_1, arg_1), vec4<u32>(34943u, u_input.a, arg_1, 30290u))), Struct_2(4294967295u), select(arg_0, !arg_0, arg_0)), Struct_3(~vec4<u32>(max(4294967295u, u_input.a), 115787u, u_input.a, max(arg_1, u_input.a)), Struct_2(firstLeadingBit(4294967295u >> (1u % 32u))), arg_0));
    let var_2 = select(vec4<bool>(var_1.b.c.x, false, true, !var_1.c.c.x), vec4<bool>(!any(select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, false), global0.d)), global0.d, true, arg_0.x), vec4<bool>(func_1().x, false, var_1.c.c.x, true));
    let var_3 = func_1().x;
    global2 = array<vec3<u32>, 17>();
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(11992u, 17620u), ~arg_1, var_1.b.b.a), var_1.b.a.yxy), 1u), var_1.c.b.a), 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1i;
    let var_1 = func_1();
    let var_2 = vec2<f32>(global0.c, 1416f);
    var var_3 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(global0.a, -15292i, global0.a), _wgslsmith_mult_vec3_i32(min(vec3<i32>(global0.a, var_0, var_0), vec3<i32>(0i, global0.a, var_0)), vec3<i32>(-44889i, var_0, 25064i) ^ vec3<i32>(-50431i, -1i, 10808i))), firstLeadingBit(abs(-vec3<i32>(var_0, 5425i, 0i))), vec3<i32>(~_wgslsmith_div_i32(global0.a, global0.a), var_0, global0.a));
    global0 = func_4(select(select(!(!vec4<bool>(true, false, global0.d, var_1.x)), vec4<bool>(var_1.x, any(vec4<bool>(var_1.x, global0.d, var_1.x, true)), true, global0.b), vec4<bool>(true, var_1.x && var_1.x, any(var_1), !var_1.x)), !(!select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(false, true, false, global0.d), global0.d)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, global0.d, global0.b, false), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(global0.b, false, global0.d, true)), func_2(Struct_5(vec3<f32>(-2364f, var_2.x, global0.c), Struct_3(vec4<u32>(u_input.a, 4294967295u, 4107u, u_input.a), Struct_2(u_input.a), vec4<bool>(var_1.x, false, true, global0.d)), Struct_3(vec4<u32>(0u, 0u, 49461u, u_input.a), Struct_2(u_input.a), vec4<bool>(false, var_1.x, false, false))), vec3<i32>(var_0, var_3.x, var_3.x))), select(vec4<bool>(false, true, true, global0.b), vec4<bool>(true, false, true, true), func_1().x), true)), ~(~2533u));
    global0 = Struct_1(global0.a, true || !(39891u <= ~u_input.a), _wgslsmith_f_op_f32(256f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(669f + var_2.x) - global0.c))), any(func_3(abs(1u), _wgslsmith_add_vec4_i32(~vec4<i32>(1423i, 60431i, var_0, var_3.x), ~vec4<i32>(-17023i, global0.a, -1579i, -1906i)), -597f)));
    global0 = func_4(!vec4<bool>(any(!vec4<bool>(var_1.x, false, true, global0.b)), true, any(func_2(Struct_5(vec3<f32>(1000f, global0.c, global0.c), Struct_3(vec4<u32>(u_input.a, 1u, 70424u, u_input.a), Struct_2(4294967295u), vec4<bool>(var_1.x, var_1.x, global0.d, true)), Struct_3(vec4<u32>(u_input.a, 11583u, u_input.a, u_input.a), Struct_2(26275u), vec4<bool>(true, var_1.x, false, global0.d))), vec3<i32>(global0.a, 7921i, global0.a)).zxx), func_3(~0u, select(vec4<i32>(6674i, -911i, var_3.x, 2147483647i), vec4<i32>(var_0, var_3.x, 0i, var_3.x), false), _wgslsmith_f_op_f32(step(global0.c, -371f))).x), ((_wgslsmith_div_u32(u_input.a, u_input.a) << (u_input.a % 32u)) << (firstTrailingBit(~u_input.a) % 32u)) >> (_wgslsmith_add_u32(8444u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(4236u, 0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(33309u, 8014u, u_input.a, 45585u), vec4<u32>(56916u, 894u, u_input.a, 0u)))) % 32u));
    var_3 = ~((-vec3<i32>(-39635i, var_3.x, -1i) & _wgslsmith_mod_vec3_i32(-vec3<i32>(1i, 0i, var_0), vec3<i32>(var_0, var_3.x, global0.a))) >> (~min(global2[_wgslsmith_index_u32(1u & u_input.a, 17u)], global2[_wgslsmith_index_u32(51700u, 17u)]) % vec3<u32>(32u)));
    let var_4 = vec2<bool>(true, (min(~4294967295u, 1u) | (_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)]) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 29469u, 4294967295u), vec4<u32>(41792u, u_input.a, 4869u, 1u)))) < ~(~6402u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.c));
}

