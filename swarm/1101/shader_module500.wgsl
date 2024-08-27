struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<vec4<f32>, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_5) -> u32 {
    return ((1u >> (arg_2.a.b.d % 32u)) >> (firstLeadingBit(37562u) % 32u)) & arg_1.x;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, ~0u, arg_0, ~1u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(48360u, 43580u, u_input.c, 93534u), vec4<u32>(func_3(Struct_1(u_input.b, true, vec3<bool>(true, true, true), 15306u, true), vec2<u32>(68774u, 4294967295u), Struct_5(Struct_4(false, Struct_1(-22886i, true, vec3<bool>(true, true, true), arg_0, false), vec3<bool>(true, true, false), true), vec3<u32>(arg_0, 45027u, u_input.c), u_input.b, vec2<u32>(65832u, 24286u))), ~4294967295u, _wgslsmith_mult_u32(4294967295u, 1u), u_input.c & u_input.c), vec4<u32>(reverseBits(arg_0), arg_0 & arg_0, ~u_input.c, u_input.c)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f));
    var var_2 = Struct_4(false, Struct_1(abs(-35320i), false, !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), arg_0 ^ _wgslsmith_add_u32(u_input.c, var_0.x), !all(select(vec2<bool>(false, false), vec2<bool>(false, true), false))), vec3<bool>(true, true, true), false);
    let var_3 = var_0.wwy;
    var var_4 = !select(var_2.c, var_2.c, vec3<bool>(any(var_2.c.yy), (false && var_2.a) && (global0[_wgslsmith_index_u32(var_2.b.d, 5u)] < arg_1), all(vec4<bool>(true, var_2.d, true, true))));
    return Struct_1(arg_1, !(all(select(var_4.zx, vec2<bool>(var_4.x, false), var_2.d)) && false), select(select(select(!var_2.b.c, !vec3<bool>(true, var_4.x, true), any(vec4<bool>(false, var_4.x, true, var_4.x))), !(!var_2.c), var_4.x & var_4.x), !(!select(var_2.b.c, vec3<bool>(false, var_4.x, true), vec3<bool>(var_4.x, false, var_2.d))), var_4.x), (1u | _wgslsmith_clamp_u32(1u, ~1796u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, var_2.b.d, 69741u), vec4<u32>(83512u, 53612u, arg_0, u_input.c)))) & 1u, false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> Struct_5 {
    let var_0 = arg_0.c.x;
    var var_1 = Struct_5(Struct_4(true, Struct_1(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.c, 5u)], u_input.a.x), false, !arg_0.c, ~firstLeadingBit(4294967295u), arg_1.d.b), select(arg_0.c, func_2(arg_1.d.d, arg_0.a).c, arg_0.b), arg_2.b == 833f), arg_1.c, 1i, ~(~(~vec2<u32>(arg_0.d, u_input.c))));
    global0 = array<i32, 5>();
    global1 = array<vec4<f32>, 27>();
    var_1 = Struct_5(Struct_4(true, arg_0, var_1.a.b.c, var_0), ~(~vec3<u32>(arg_2.d.x, 1u, 80538u)) ^ ~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 35191u, 4294967295u), vec3<u32>(21812u, u_input.c, 111269u))), -arg_2.c.a, _wgslsmith_div_vec2_u32(max(select(vec2<u32>(1u, arg_2.c.d) << (vec2<u32>(arg_2.d.x, u_input.c) % vec2<u32>(32u)), arg_2.d, true), ~vec2<u32>(4294967295u, 28683u) << (_wgslsmith_div_vec2_u32(arg_1.c.xz, vec2<u32>(5507u, var_1.d.x)) % vec2<u32>(32u))), firstTrailingBit(abs(vec2<u32>(u_input.c, arg_0.d))) >> (~(var_1.b.xx >> (arg_1.c.xx % vec2<u32>(32u))) % vec2<u32>(32u))));
    return Struct_5(Struct_4(all(func_2(1u, global0[_wgslsmith_index_u32(33162u, 5u)] & 23565i).c.xz), arg_0, !var_1.a.c, false), select(~vec3<u32>(_wgslsmith_clamp_u32(var_1.a.b.d, u_input.c, 19905u), arg_1.b >> (var_1.a.b.d % 32u), 4776u), ~(max(vec3<u32>(u_input.c, arg_1.d.d, 1u), var_1.b) ^ vec3<u32>(1u, 4294967295u, 0u)), !vec3<bool>(any(vec2<bool>(false, arg_1.a.x)), !arg_0.c.x, !var_0)), ~29702i, vec2<u32>(_wgslsmith_mult_u32(arg_1.c.x, ~14878u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.d.d, 1u, 16728u, 16835u), vec4<u32>(var_1.d.x, ~4294967295u, _wgslsmith_clamp_u32(arg_2.d.x, 0u, arg_0.d), 21034u))));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = func_4(func_2(15344u, -2147483647i), Struct_3(select(vec2<bool>(true, true), select(!arg_2.a, vec2<bool>(arg_2.d.b, arg_2.d.e), !arg_2.a), u_input.c > func_2(1u, 0i).d), ~14724u, arg_2.c, Struct_1(5767i, false, select(arg_2.d.c, !arg_2.d.c, select(arg_2.d.c, arg_2.d.c, arg_2.d.c)), func_3(Struct_1(u_input.b, arg_2.a.x, arg_2.d.c, 46129u, false), max(vec2<u32>(32318u, arg_2.b), arg_1), Struct_5(Struct_4(arg_2.a.x, arg_2.d, vec3<bool>(false, true, arg_2.a.x), false), vec3<u32>(arg_0, arg_1.x, 1u), arg_2.d.a, vec2<u32>(u_input.c, arg_0))), true)), Struct_2(reverseBits(u_input.a.yyz), _wgslsmith_div_f32(1343f, 729f), func_2(arg_2.b, ~reverseBits(1i)), arg_2.c.xx));
    let var_1 = Struct_3(var_0.a.c.zx, arg_1.x, ~_wgslsmith_mod_vec3_u32(arg_2.c, ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 100424u), vec3<u32>(arg_2.c.x, var_0.d.x, 21605u))), Struct_1(_wgslsmith_mult_i32(21459i, _wgslsmith_add_i32(1i, 1i)), any(!vec2<bool>(false, arg_2.a.x)), !(!arg_2.d.c), u_input.c, any(vec2<bool>(arg_2.d.c.x, true))));
    var var_2 = func_2(var_0.a.b.d, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-44421i, 20610i, u_input.b, u_input.a.x), -u_input.a), ~_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a)), u_input.a));
    let var_3 = true;
    let var_4 = var_1.c.yz;
    return min(vec2<u32>(countOneBits(arg_0), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.x, 6270u, arg_2.d.d) << (vec4<u32>(0u, 17384u, 40271u, 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_4.x, 544u, 16742u, arg_1.x), vec4<u32>(18464u, arg_1.x, var_2.d, arg_0))))), vec2<u32>(var_4.x, ~50970u));
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(select(875f, 1969f, false)), _wgslsmith_f_op_f32(select(561f, arg_3.x, arg_1)), _wgslsmith_f_op_f32(select(arg_3.x, 1690f, arg_1)))))));
    var var_1 = func_4(Struct_1(firstTrailingBit(7635i), true, !vec3<bool>(true, true, arg_1), firstLeadingBit(1u), false), Struct_3(!(!func_2(arg_2.x, global0[_wgslsmith_index_u32(arg_0.x, 5u)]).c.xz), _wgslsmith_clamp_u32(~(~12410u), 1u, _wgslsmith_mult_u32(u_input.c, func_2(arg_0.x, global0[_wgslsmith_index_u32(u_input.c, 5u)]).d)), ~max(vec3<u32>(1u, arg_2.x, u_input.c) ^ vec3<u32>(u_input.c, 1u, 16739u), vec3<u32>(4294967295u, arg_0.x, u_input.c)), Struct_1(~1i, all(vec2<bool>(true, false)), !select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, false, arg_1), vec3<bool>(false, false, arg_1)), ~arg_2.x, true)), Struct_2(u_input.a.xww, var_0.x, Struct_1(u_input.b, true, vec3<bool>(arg_1, 8986u >= arg_0.x, true), _wgslsmith_sub_u32(arg_0.x, ~0u), any(vec3<bool>(false, arg_1, true))), ~vec2<u32>(arg_0.x & 0u, 4294967295u | arg_0.x)));
    let var_2 = var_1.b & _wgslsmith_div_vec3_u32(abs(var_1.b) | select(vec3<u32>(15196u, arg_2.x, var_1.b.x), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(var_1.a.c.x, true, arg_1), vec3<bool>(arg_1, var_1.a.a, var_1.a.a), arg_1)), _wgslsmith_mod_vec3_u32(min(var_1.b, var_1.b ^ var_1.b), vec3<u32>(4294967295u, ~arg_0.x, 1u)));
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    return Struct_3(var_1.a.b.c.yy, _wgslsmith_div_u32((_wgslsmith_div_u32(var_1.d.x, 1u) & 1u) << (~(~5359u) % 32u), ~0u), _wgslsmith_mult_vec3_u32(vec3<u32>(~15626u, ~1056u, 4294967295u), abs(vec3<u32>(var_2.x, firstTrailingBit(58942u), ~arg_0.x))), func_2(arg_0.x, -47794i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~_wgslsmith_sub_vec2_u32(~(~vec2<u32>(22369u, u_input.c)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), func_1(80305u, vec2<u32>(0u, u_input.c), Struct_3(vec2<bool>(true, true), u_input.c, vec3<u32>(1u, 1u, u_input.c), Struct_1(2147483647i, true, vec3<bool>(true, true, true), 21704u, false))))), true, ~_wgslsmith_mod_vec2_u32(select(~vec2<u32>(4294967295u, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 11903u), vec2<u32>(31203u, u_input.c)), true), vec2<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), 22813u)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(453f * -1199f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1397f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(721f, 499f)) - -1821f) * _wgslsmith_f_op_f32(round(725f))), _wgslsmith_div_f32(-1704f, _wgslsmith_f_op_f32(f32(-1f) * -492f))));
    global1 = array<vec4<f32>, 27>();
    var var_1 = vec2<bool>(true, true);
    let var_2 = Struct_2(-reverseBits(~(-u_input.a.wwz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(509f)) * _wgslsmith_f_op_f32(138f + _wgslsmith_f_op_f32(1247f - -124f))) + -1663f), func_5(vec2<u32>(var_0.d.d << (var_0.b % 32u), _wgslsmith_clamp_u32(func_2(1u, 0i).d, u_input.c, _wgslsmith_sub_u32(4294967295u, var_0.d.d))), true, ~var_0.c.zy, vec4<f32>(-1083f, -1367f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2197f, 1214f)), _wgslsmith_f_op_f32(floor(-113f)))).d, _wgslsmith_add_vec2_u32(min(~func_5(vec2<u32>(var_0.d.d, 38189u), false, var_0.c.yy, vec4<f32>(-1000f, 1460f, -102f, 1000f)).c.yx, func_4(Struct_1(global0[_wgslsmith_index_u32(22589u, 5u)], var_1.x, vec3<bool>(var_0.a.x, var_0.d.b, var_0.d.e), 45481u, var_0.a.x), Struct_3(var_0.d.c.zz, 25280u, var_0.c, var_0.d), Struct_2(u_input.a.wxw, -1410f, var_0.d, var_0.c.yz)).d), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 35196u, var_0.b, 18565u), vec4<u32>(u_input.c, 88765u, u_input.c, u_input.c)), 10740u), ~100128u)));
    let var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(2241f, min(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.c, vec3<u32>(0u, var_3.d, var_0.c.x)), countOneBits(var_0.c) & vec3<u32>(6403u, var_0.b, 0u)), var_0.c), firstLeadingBit(var_0.c.yy), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b, 148f, var_2.b, var_2.b), vec4<f32>(var_2.b, 1767f, var_2.b, 378f), false)) + _wgslsmith_f_op_vec4_f32(ceil(global1[_wgslsmith_index_u32(var_3.d, 27u)]))))), _wgslsmith_f_op_vec4_f32(abs(global1[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(45648u, var_2.d.x), ~u_input.c), 27u)])))), -2073i);
}

