struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<bool>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
    c: Struct_4,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-1i, i32(-2147483648), 35878i, 22418i, -14166i, -41520i, -79923i, 0i, -1i, 22885i, 19177i, 2147483647i, 1i, 18057i, -1i, 0i, 1i, -18959i, -49942i, 2147483647i, 12648i, -2740i, -1i);

var<private> global1: array<vec4<f32>, 16>;

var<private> global2: vec4<i32> = vec4<i32>(19797i, -18307i, 11926i, 0i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(230f, 1000f), vec2<f32>(-308f, -1000f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-617f, -1009f), vec2<f32>(-979f, 186f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(373f + -504f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(740f, -2089f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1967f, 140f))), vec2<f32>(1345f, 319f), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, 1643f)), true)), vec2<f32>(-129f, _wgslsmith_f_op_f32(-362f + 1000f))))));
    var var_1 = Struct_4(Struct_1(false, _wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, _wgslsmith_mult_u32(4294967295u, u_input.a), ~24766u, u_input.a ^ u_input.a), max(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 23157u))), ~(~vec4<u32>(0u, 399u, u_input.a, 12799u))), -1000f, abs(vec4<i32>(-15198i, 0i, u_input.b.x, 2147483647i)) >> (~vec4<u32>(u_input.a, 55959u, u_input.a, u_input.a) % vec4<u32>(32u)), select(u_input.b.yy, u_input.b.xy, true) << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 113509u), abs(vec2<u32>(1u, u_input.a))) % vec2<u32>(32u))), Struct_3(Struct_2(Struct_1(global2.x <= global0[_wgslsmith_index_u32(u_input.a, 23u)], vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), 1786f, vec4<i32>(1i, global0[_wgslsmith_index_u32(16505u, 23u)], -3196i, global2.x), _wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, -1i), global2.zx)), 4294967295u, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)))), vec2<bool>(var_0.x >= _wgslsmith_f_op_f32(-486f - 1375f), true), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), select(abs(4294967295u) >> (1u % 32u), 26663u, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))), ~abs(vec4<u32>(24341u, u_input.a, 4294967295u, 10956u) | vec4<u32>(69186u, 1u, u_input.a, u_input.a))), firstLeadingBit(vec4<i32>(firstLeadingBit(u_input.b.x), max(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 23u)]), global2.x, min(-6446i, global2.x)) << (_wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, u_input.a, u_input.a, 84975u), vec4<u32>(115625u, u_input.a, 2114u, u_input.a), true), reverseBits(vec4<u32>(1u, 4294967295u, 4294967295u, 46293u)), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u))));
    let var_2 = var_1.b;
    var_1 = Struct_4(Struct_1(false, ~firstTrailingBit(vec4<u32>(28051u, var_2.e.x, 1122u, u_input.a)), var_0.x, _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(1i, global2.x, 25147i, global0[_wgslsmith_index_u32(var_1.b.d, 23u)])), abs(vec4<i32>(2147483647i, var_1.c.x, 2147483647i, var_2.a.a.e.x)), vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(0u, 23u)], global2.x, global0[_wgslsmith_index_u32(1u, 23u)])) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_2.d, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, 69262u, 1792u)) % vec4<u32>(32u)), var_1.c.xx), var_1.b, -(vec4<i32>(~global2.x, var_2.a.a.d.x, _wgslsmith_mult_i32(var_2.a.a.d.x, u_input.b.x), firstLeadingBit(-34669i)) & var_1.c));
    let var_3 = Struct_1(-659f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(642f - var_1.b.a.a.c)))), var_1.b.a.a.b << (_wgslsmith_clamp_vec4_u32(var_1.b.e, vec4<u32>(~var_1.a.b.x, 4294967295u, u_input.a, ~28618u), max(reverseBits(var_1.a.b), max(vec4<u32>(0u, u_input.a, u_input.a, 1u), var_1.b.e))) % vec4<u32>(32u)), 1165f, var_2.a.a.d, vec2<i32>(45163i, var_1.b.a.a.e.x));
    return true;
}

fn func_2(arg_0: Struct_5) -> u32 {
    var var_0 = 722f;
    global0 = array<i32, 23>();
    var var_1 = Struct_3(arg_0.d, vec2<bool>(any(!vec2<bool>(arg_0.d.a.a, true)), any(!vec3<bool>(true, arg_0.d.c, arg_0.d.a.a))), select(!vec2<bool>(arg_0.d.c, arg_0.c.a.a), arg_0.c.b.c, arg_0.c.b.a.c), u_input.a, vec4<u32>(~(~0u) >> (_wgslsmith_mult_u32(arg_0.e.x, ~arg_0.c.a.b.x) % 32u), u_input.a, 4294967295u, 1u));
    var var_2 = Struct_1(!func_3(), _wgslsmith_mult_vec4_u32(~arg_0.c.b.a.a.b, vec4<u32>(31689u, 1u, ~(~38223u), 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1394f), _wgslsmith_f_op_f32(-arg_0.d.a.c)), (~abs(var_1.a.a.d) << (select(arg_0.d.a.b, min(vec4<u32>(arg_0.c.b.e.x, 12001u, 4574u, 0u), var_1.a.a.b), select(false, false, true)) % vec4<u32>(32u))) & vec4<i32>(abs(firstTrailingBit(0i)), ~1i, 28364i, ~u_input.b.x), abs(u_input.b.xy) << (vec2<u32>(_wgslsmith_sub_u32(min(5048u, 4294967295u), min(arg_0.c.a.b.x, 36909u)), arg_0.c.a.b.x) % vec2<u32>(32u)));
    var var_3 = Struct_2(Struct_1(true, _wgslsmith_clamp_vec4_u32(arg_0.c.a.b, arg_0.d.a.b, reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_2.b.x, var_2.b.x, 1u), vec4<u32>(arg_0.c.a.b.x, arg_0.d.b, var_1.e.x, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(624f - 130f)))), _wgslsmith_add_vec4_i32(~max(vec4<i32>(var_1.a.a.e.x, global0[_wgslsmith_index_u32(arg_0.c.b.d, 23u)], global0[_wgslsmith_index_u32(80575u, 23u)], var_1.a.a.d.x), vec4<i32>(-11640i, 9704i, var_1.a.a.d.x, 27328i)), arg_0.c.a.d), -reverseBits(countOneBits(arg_0.a))), ~(~(~u_input.a)), var_1.a.a.a);
    return ~30033u;
}

fn func_1() -> f32 {
    global1 = array<vec4<f32>, 16>();
    var var_0 = max(max(u_input.a, ~(~43911u)), ~9501u) >> (~(~_wgslsmith_sub_u32(u_input.a, abs(103760u))) % 32u);
    let var_1 = ~(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 30800u, 55788u), vec3<u32>(func_2(Struct_5(vec2<i32>(global0[_wgslsmith_index_u32(0u, 23u)], -4054i), global2.x, Struct_4(Struct_1(false, vec4<u32>(u_input.a, 1u, u_input.a, 1u), -897f, vec4<i32>(0i, global0[_wgslsmith_index_u32(4311u, 23u)], 3985i, global2.x), vec2<i32>(-1i, 1i)), Struct_3(Struct_2(Struct_1(true, vec4<u32>(u_input.a, u_input.a, 27080u, u_input.a), -1198f, vec4<i32>(global2.x, -1i, u_input.b.x, -7064i), global2.zz), u_input.a, false), vec2<bool>(false, false), vec2<bool>(false, true), 0u, vec4<u32>(23224u, 4294967295u, 65626u, 4219u)), vec4<i32>(1i, global0[_wgslsmith_index_u32(1u, 23u)], 2147483647i, u_input.b.x)), Struct_2(Struct_1(true, vec4<u32>(0u, 4294967295u, u_input.a, 45063u), 1000f, vec4<i32>(-2147483647i, u_input.b.x, global2.x, -27081i), u_input.b.zz), 1u, true), vec3<u32>(u_input.a, 0u, u_input.a))), u_input.a, _wgslsmith_sub_u32(u_input.a, 42904u))) >> (~vec3<u32>(u_input.a << (4294967295u % 32u), u_input.a | u_input.a, u_input.a) % vec3<u32>(32u)));
    var var_2 = ~var_1;
    global0 = array<i32, 23>();
    return _wgslsmith_f_op_f32(f32(-1f) * -195f);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = ~u_input.b.zx;
    let var_1 = arg_0.a.a.d;
    var var_2 = ~arg_0.d;
    global1 = array<vec4<f32>, 16>();
    global2 = arg_0.a.a.d;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec4<i32>(~(~_wgslsmith_add_i32(u_input.b.x, u_input.b.x)), ~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(39189u, 23u)], u_input.b.x, -u_input.b.x), 19770i, global2.x);
    var var_0 = u_input.b.yy;
    var var_1 = u_input.a;
    var var_2 = func_4(Struct_3(Struct_2(Struct_1(select(true, true, false), ~vec4<u32>(u_input.a, u_input.a, 12213u, u_input.a), _wgslsmith_f_op_f32(select(-669f, -1169f, false)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 23u)], var_0.x, u_input.b.x), vec4<i32>(var_0.x, 2147483647i, var_0.x, global2.x)), global2.xw), u_input.a, true && all(vec3<bool>(false, true, true))), vec2<bool>(true, !(u_input.a > 51083u)), vec2<bool>(true, true), u_input.a, countOneBits(vec4<u32>(47355u, u_input.a, _wgslsmith_mod_u32(u_input.a, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(33286u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 61561u))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(trunc(524f))) - -1028f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(802f, 146f) * _wgslsmith_f_op_f32(f32(-1f) * -766f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -170f) + _wgslsmith_f_op_f32(f32(-1f) * -453f)) * -1095f), _wgslsmith_f_op_f32(max(422f, _wgslsmith_f_op_f32(f32(-1f) * -210f)))), select(vec3<bool>(true, true, !(global2.x < -2147483647i)), vec3<bool>(!all(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, true, true))), select(vec3<bool>(false, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))));
    let var_3 = select(global2.ww, vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, global0[_wgslsmith_index_u32(48519u, 23u)])), _wgslsmith_div_i32(u_input.b.x, countOneBits(u_input.b.x | u_input.b.x))), !select(!(!vec2<bool>(var_2.a.a, false)), vec2<bool>(var_2.c, false), true));
    var var_4 = _wgslsmith_div_vec4_u32(var_2.a.b, vec4<u32>(~(~(~var_2.a.b.x)), 21875u, countOneBits(select(~var_2.b, 13407u, var_2.a.a)), 1u));
    var_2 = Struct_2(func_4(Struct_3(func_4(Struct_3(Struct_2(var_2.a, var_4.x, false), vec2<bool>(var_2.a.a, false), vec2<bool>(var_2.a.a, true), 25490u, var_2.a.b), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(1u, 16u)]), vec3<bool>(true, var_2.a.a, false)), !select(vec2<bool>(var_2.a.a, true), vec2<bool>(var_2.a.a, false), vec2<bool>(true, var_2.a.a)), select(vec2<bool>(var_2.c, true), vec2<bool>(true, true), true), _wgslsmith_sub_u32(~u_input.a, 0u), _wgslsmith_sub_vec4_u32(var_2.a.b, var_2.a.b)), global1[_wgslsmith_index_u32(0u, 16u)], !(!(!vec3<bool>(var_2.c, true, var_2.a.a)))).a, 0u, true);
    var var_5 = Struct_1(false, max(var_2.a.b, vec4<u32>(~1u, ~var_4.x, ~(var_4.x << (0u % 32u)), var_4.x)), 924f, -var_2.a.d, vec2<i32>(13025i, -_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_2.a.e.x, global0[_wgslsmith_index_u32(13825u, 23u)]), var_2.a.e.x)));
    let var_6 = Struct_3(Struct_2(Struct_1(all(select(vec3<bool>(true, var_5.a, var_2.c), vec3<bool>(var_2.a.a, true, var_2.c), var_5.a)), select(_wgslsmith_mod_vec4_u32(var_2.a.b, var_5.b), var_5.b, var_5.a), var_5.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(25153u, 23u)], global2.x, 11525i, -6975i), var_2.a.d, var_2.a.d) ^ (vec4<i32>(1i, 0i, 1i, var_5.e.x) << (vec4<u32>(41069u, 0u, 832u, u_input.a) % vec4<u32>(32u))), _wgslsmith_mult_vec2_i32(var_5.e, vec2<i32>(var_0.x, global0[_wgslsmith_index_u32(var_2.b, 23u)]))), ~(_wgslsmith_div_u32(1u, 73013u) ^ countOneBits(var_2.b)), false), select(select(vec2<bool>(var_5.a, any(vec2<bool>(true, true))), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(var_2.a.a, var_5.a), vec2<bool>(false, false), false)), select(vec2<bool>(true, true), !vec2<bool>(var_2.a.a, false), !vec2<bool>(var_2.a.a, true))), select(!(!vec2<bool>(var_2.a.a, false)), select(vec2<bool>(var_2.a.a, var_2.c), vec2<bool>(true, true), !vec2<bool>(var_2.a.a, var_2.a.a)), vec2<bool>(true, true)), !any(!vec4<bool>(true, var_2.c, true, var_5.a))), !(!select(vec2<bool>(true, var_2.c), !vec2<bool>(true, var_5.a), false)), 54677u, var_5.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1971f, var_5.c, _wgslsmith_f_op_f32(abs(var_5.c))), ~_wgslsmith_add_u32(~select(var_2.b, 1u, var_5.a), _wgslsmith_mod_u32(29530u >> (var_4.x % 32u), var_4.x & u_input.a)));
}

