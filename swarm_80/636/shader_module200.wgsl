struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32;

var<private> global2: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(1u, 1u, 7911u, 0u), vec4<u32>(69151u, 66816u, 0u, 23062u), vec4<u32>(4824u, 57175u, 71302u, 1u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 6794u, 4294967295u, 0u), vec4<u32>(55626u, 21516u, 4782u, 1u), vec4<u32>(0u, 4294967295u, 0u, 398u), vec4<u32>(4100u, 4294967295u, 59766u, 1907u), vec4<u32>(7366u, 79392u, 1u, 1u), vec4<u32>(0u, 38257u, 0u, 1u), vec4<u32>(66227u, 22806u, 76044u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 11147u), vec4<u32>(18467u, 31197u, 34523u, 66854u), vec4<u32>(58820u, 0u, 61229u, 7204u), vec4<u32>(4294967295u, 1u, 16588u, 4294967295u), vec4<u32>(4294967295u, 14780u, 1u, 90364u), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(48834u, 42355u, 8905u, 4294967295u), vec4<u32>(0u, 0u, 20260u, 1u), vec4<u32>(32024u, 35118u, 1u, 0u), vec4<u32>(43618u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(34057u, 4294967295u, 8282u, 0u), vec4<u32>(84345u, 0u, 36551u, 32058u), vec4<u32>(48601u, 1u, 19661u, 75964u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<f32>) -> i32 {
    global1 = arg_1.b;
    var var_0 = vec3<f32>(_wgslsmith_div_f32(-1504f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-114f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1409f, 663f)), _wgslsmith_f_op_f32(floor(arg_2.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1018f + 472f), _wgslsmith_f_op_f32(round(3740f)))))));
    global0 = true;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))))), -787f, _wgslsmith_f_op_f32(-arg_2.x), 291f);
    var var_2 = arg_1;
    return -2147483647i;
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(func_3(492f, Struct_3(arg_0.d, u_input.c.x), vec2<f32>(-731f, 477f)), -1i), arg_0.b, arg_0.b, 2871i) | _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -40366i, abs(-13656i), _wgslsmith_mult_i32(u_input.a, -17479i)), u_input.c ^ reverseBits(vec4<i32>(arg_0.b, arg_0.b, 22703i, 1i))), _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -2832i, -1i, 15746i, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), u_input.c));
    var_0 = u_input.c;
    let var_1 = Struct_4(abs(abs(countOneBits(u_input.c))));
    global1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.b, -2147483647i), _wgslsmith_sub_i32(-1i, 0i));
    let var_2 = true;
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_4 {
    global0 = true;
    var var_0 = ~(vec2<i32>(abs(~(-28106i)), -(~arg_1.b)) >> (~(~countOneBits(vec2<u32>(0u, 17473u))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -109f), 1f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(365f * 111f) - _wgslsmith_f_op_f32(274f + -1000f))), -883f));
    var_1 = vec2<f32>(var_1.x, 157f);
    let var_2 = abs(select(abs(-u_input.c), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-1i, -1i, 0i, -1i)), vec4<i32>(-4366i, 48869i, 2147483647i, u_input.a) ^ u_input.c), false) | _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.b.x, -58819i, arg_1.b, var_0.x) << (global2[_wgslsmith_index_u32(arg_1.e.x, 25u)] % vec4<u32>(32u))), abs(vec4<i32>(0i, 0i, 0i, 47881i))));
    return Struct_4(select(var_2, select(select(_wgslsmith_div_vec4_i32(var_2, u_input.c), -u_input.c, !arg_0.x), u_input.c >> (max(global2[_wgslsmith_index_u32(arg_1.c.x, 25u)], vec4<u32>(31888u, arg_1.c.x, arg_1.a.a, arg_1.d.d.x)) % vec4<u32>(32u)), select(vec4<bool>(arg_0.x, true, arg_0.x, arg_1.a.b), vec4<bool>(false, false, false, true), false)), vec4<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(arg_0.x, false, false, arg_0.x), false)), arg_1.d.b, func_2(arg_1), _wgslsmith_mod_u32(arg_1.a.a, arg_1.e.x) == ~22837u)));
}

fn func_1() -> u32 {
    let var_0 = func_4(select(vec3<bool>(all(vec4<bool>(false, true, true, false)), true & func_2(Struct_2(Struct_1(0u, false, true, vec2<u32>(12948u, 11500u)), -28028i, vec2<u32>(0u, 40912u), Struct_1(4294967295u, false, true, vec2<u32>(1u, 9727u)), vec3<u32>(4294967295u, 27807u, 42880u))), false), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>(true, false, all(vec4<bool>(true, true, true, true)))), Struct_2(Struct_1(~4294967295u, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), true & all(vec2<bool>(true, false)), vec2<u32>(reverseBits(4294967295u), 59148u)), u_input.c.x, vec2<u32>(56539u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 47228u, 27952u), vec3<u32>(1u, 1u, 4294967295u)))), Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(49436u, 0u)), true, select(true, true, true), ~vec2<u32>(1u, 1u)), min(abs(vec3<u32>(0u, 26576u, 4294967295u)), min(vec3<u32>(4294967295u, 0u, 14651u), vec3<u32>(4294967295u, 51585u, 6580u))) & select(vec3<u32>(1u, 4294967295u, 42817u), ~vec3<u32>(1u, 0u, 53209u), true)));
    let var_1 = true;
    let var_2 = Struct_3(Struct_1(firstTrailingBit(0u), any(vec2<bool>(any(vec4<bool>(var_1, var_1, true, false)), all(vec3<bool>(true, true, var_1)))), true, vec2<u32>(_wgslsmith_div_u32(0u, 1u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(29459u, 25u)]), 26557u, 1u))), 1i);
    global0 = var_2.a.d.x > (~var_2.a.d.x >> (var_2.a.d.x % 32u));
    var var_3 = Struct_3(Struct_1(13495u << (_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(1u, 25u)]) % 32u), true, true, abs(var_2.a.d)), var_0.a.x);
    return 4294967295u;
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_4 {
    global1 = u_input.a;
    global0 = any(vec4<bool>(any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(arg_3.b, arg_0), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, true))), true, _wgslsmith_div_f32(_wgslsmith_div_f32(-174f, arg_2), 417f) == 2287f, true));
    let var_0 = min(select(arg_3.d.x, 0u, false), ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(14048u, arg_1.x, 1u, 58407u), global2[_wgslsmith_index_u32(arg_3.d.x, 25u)]))));
    let var_1 = vec4<i32>(-1i) * -firstTrailingBit(u_input.c);
    var var_2 = ~30962u;
    return Struct_4(-var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(false, vec4<u32>(99657u, ~func_1(), ~0u, _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 1u), 92745u), 1u)), -185f, Struct_1(_wgslsmith_mult_u32(57938u, 30753u), true, true, max(vec2<u32>(15186u, min(0u, 104617u)), reverseBits(vec2<u32>(45443u, 4294967295u)))));
    let var_1 = -1382f;
    global1 = ~u_input.a;
    global1 = var_0.a.x | ~(~abs(~u_input.c.x));
    let var_2 = reverseBits(countOneBits(firstLeadingBit(global2[_wgslsmith_index_u32(~(~7196u), 25u)])));
    global1 = -2147483647i;
    var var_3 = Struct_2(Struct_1(0u, false, -1i < var_0.a.x, var_2.xx), firstTrailingBit(var_0.a.x), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_2.zzw, var_2.zxx), ~var_2.x), 28239u), 0u), Struct_1(_wgslsmith_dot_vec2_u32(min(var_2.ww, var_2.yz & vec2<u32>(var_2.x, 31180u)), var_2.zx), true, !(true || (var_2.x > 11330u)), _wgslsmith_div_vec2_u32(~vec2<u32>(var_2.x, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 4294967295u), var_2.zw))), vec3<u32>(abs(54602u), reverseBits(~var_2.x), ~var_2.x) ^ (_wgslsmith_div_vec3_u32(~vec3<u32>(0u, var_2.x, var_2.x), vec3<u32>(var_2.x, 90069u, var_2.x)) << (var_2.xwx % vec3<u32>(32u))));
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_4.a.x, _wgslsmith_mod_i32(-27670i, var_0.a.x & 31059i) & _wgslsmith_sub_i32(var_3.b, firstTrailingBit(1i)), _wgslsmith_mult_i32(firstLeadingBit(-47841i & var_3.b), -var_4.a.x)), _wgslsmith_mod_i32(~_wgslsmith_sub_i32(-7717i, func_3(-342f, Struct_3(var_3.d, -16329i), vec2<f32>(1509f, var_1))), ~u_input.c.x), u_input.c.x);
}

