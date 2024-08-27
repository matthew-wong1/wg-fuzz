struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: f32;

var<private> global1: f32;

var<private> global2: array<vec2<bool>, 3>;

var<private> global3: array<Struct_4, 31>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> vec3<bool> {
    var var_0 = Struct_1(~(~vec2<u32>(_wgslsmith_add_u32(u_input.c, u_input.c), 0u)), firstLeadingBit(u_input.c), select(select(select(vec3<bool>(true, arg_0.x, true), select(vec3<bool>(true, arg_0.x, false), vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(false, true, arg_0.x)), !vec3<bool>(arg_0.x, true, arg_0.x)), vec3<bool>(true, true, !arg_0.x), !any(vec4<bool>(false, true, false, arg_0.x))), select(!(!vec3<bool>(arg_0.x, false, arg_0.x)), !vec3<bool>(true, arg_0.x, false), arg_0.x), vec3<bool>((arg_0.x & arg_0.x) && true, all(vec4<bool>(arg_0.x, true, arg_0.x, false)), all(arg_0))));
    let var_1 = any(vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(961f)), 179f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2057f))), false, any(select(var_0.c, vec3<bool>(arg_0.x, true, false), false)), true && var_0.c.x));
    var var_2 = !arg_0.x;
    global3 = array<Struct_4, 31>();
    var_2 = var_1;
    return var_0.c;
}

fn func_2(arg_0: i32) -> Struct_3 {
    global3 = array<Struct_4, 31>();
    let var_0 = Struct_4(Struct_3(true, !(!any(vec3<bool>(true, false, true))), vec4<u32>(u_input.c, ~_wgslsmith_add_u32(8006u, u_input.b.x), u_input.b.x, reverseBits(22136u)), u_input.d, ~u_input.b.zz), Struct_3(any(func_3(global2[_wgslsmith_index_u32(15310u, 3u)], 0i)), all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true))), _wgslsmith_div_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.b.x, 37346u, 1u, u_input.b.x)), abs(vec4<u32>(u_input.b.x, u_input.c, u_input.c, u_input.b.x))), abs(u_input.d), ~(~u_input.b.yx)), Struct_2(vec2<i32>(_wgslsmith_add_i32(u_input.a >> (53010u % 32u), 2147483647i), -(~u_input.d.x)), Struct_1(countOneBits(u_input.b.yz), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, u_input.c, u_input.c), vec4<u32>(43862u, u_input.c, 0u, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, 4294967295u) >> (vec4<u32>(u_input.c, u_input.c, 29822u, u_input.b.x) % vec4<u32>(32u))), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(709f, 526f, -1000f, 1567f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-200f, 1705f, -613f, -317f), vec4<f32>(-1277f, 627f, -652f, 303f))))), Struct_1(u_input.b.xx, abs(u_input.b.x) << (max(u_input.b.x, u_input.c) % 32u), vec3<bool>(func_3(vec2<bool>(true, true), arg_0).x, true, true)), u_input.c), 1f);
    var var_1 = var_0.b.c.yx;
    let var_2 = vec4<bool>(true, var_0.a.b, select(all(vec3<bool>(var_0.c.d.c.x, !var_0.b.a, all(vec4<bool>(true, true, false, var_0.c.d.c.x)))), abs(~var_1.x) != (_wgslsmith_sub_u32(var_0.b.c.x, u_input.c) | ~u_input.b.x), !var_0.c.d.c.x), true);
    let var_3 = Struct_3(true, var_0.a.b, abs(_wgslsmith_mod_vec4_u32(~var_0.b.c, min(var_0.b.c, vec4<u32>(0u, var_1.x, 4294967295u, 53346u)))) << (~vec4<u32>(var_1.x ^ 4294967295u, var_1.x, _wgslsmith_clamp_u32(var_1.x, 3007u, u_input.c), ~66877u) % vec4<u32>(32u)), u_input.d, _wgslsmith_div_vec2_u32(vec2<u32>(max(1u, var_0.a.c.x), 0u >> (0u % 32u)), vec2<u32>(max(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, 4294967295u, 23682u)), 43248u), ~var_1.x)));
    return Struct_3(any(var_2.yzy), any(select(vec4<bool>(var_3.b, var_0.a.b, true, true), var_2, all(select(var_2.wxy, vec3<bool>(false, var_0.c.b.c.x, var_3.a), var_2.yxz)))), ~abs(var_3.c), var_0.b.d, u_input.b.xz);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(arg_0.d, -vec4<i32>(arg_0.d.x, u_input.a, arg_0.d.x, -2147483647i)), _wgslsmith_sub_i32(-2147483647i, select(u_input.a, ~u_input.e, true))), Struct_1(u_input.b.zz, abs(_wgslsmith_sub_u32(~32588u, countOneBits(arg_0.c.x))), select(!select(vec3<bool>(false, arg_0.a, true), vec3<bool>(false, true, false), arg_0.a), select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.b, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.b, false)), select(!vec3<bool>(arg_0.a, arg_0.b, false), vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, true)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(151f, -540f, -786f, -1776f) * vec4<f32>(323f, -1242f, 166f, 605f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1477f, 1188f, 1103f, -1096f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(258f, 136f, 2598f, 547f) * vec4<f32>(-804f, -1039f, 644f, 972f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(817f, _wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(round(-928f)), -205f))))), Struct_1(arg_0.e, ~_wgslsmith_div_u32(4294967295u, 24758u) >> (u_input.c % 32u), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a, true, all(vec3<bool>(true, arg_0.a, arg_0.a))), vec3<bool>(arg_0.a, all(vec2<bool>(true, arg_0.b)), all(global2[_wgslsmith_index_u32(0u, 3u)])))), 1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.c * vec4<f32>(265f, var_0.c.x, var_0.c.x, -809f)), vec4<f32>(var_0.c.x, -959f, 1000f, var_0.c.x), vec4<bool>(true, arg_0.a, var_0.d.c.x, false)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.x), 950f, !arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(832f, var_0.c.x)) + _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c.x)) - _wgslsmith_f_op_f32(min(var_0.c.x, 895f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(345f)))), arg_0.a)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.c, var_0.c, !vec4<bool>(var_0.b.c.x, true, true, true))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1126f, var_0.c.x, -998f, 748f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, 912f, var_0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-568f, -1000f, 332f, var_0.c.x))))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -235f);
    global2 = array<vec2<bool>, 3>();
    global2 = array<vec2<bool>, 3>();
    return var_0.d;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>) -> vec3<bool> {
    let var_0 = vec4<bool>(func_2(-u_input.d.x).a, false, func_4(func_2(func_2(select(u_input.e, -4443i, true)).d.x)).c.x, true);
    let var_1 = u_input.d;
    global0 = _wgslsmith_f_op_f32(ceil(arg_1.x));
    var var_2 = Struct_2(~_wgslsmith_clamp_vec2_i32(var_1.yz, _wgslsmith_div_vec2_i32(vec2<i32>(-12135i, var_1.x), vec2<i32>(0i, var_1.x)), vec2<i32>(u_input.d.x, u_input.d.x) & vec2<i32>(u_input.e, u_input.a)), func_4(func_2(_wgslsmith_sub_i32(var_1.x << (4294967295u % 32u), -39798i))), arg_1, Struct_1(u_input.b.xy, ~(~u_input.c >> (~50845u % 32u)), arg_0.c), _wgslsmith_mult_u32(_wgslsmith_mult_u32(22326u, 39178u), func_2(-67156i).e.x) << (4294967295u % 32u));
    var var_3 = Struct_2(_wgslsmith_clamp_vec2_i32(var_2.a, -(~vec2<i32>(-2147483647i, var_1.x)), func_2(abs(u_input.d.x)).d.yw), func_4(Struct_3(select(all(vec4<bool>(false, true, true, var_0.x)), arg_0.c.x | false, true), abs(0u) < _wgslsmith_clamp_u32(0u, 2463u, 4294967295u), countOneBits(vec4<u32>(arg_0.b, var_2.b.b, arg_0.a.x, var_2.d.a.x)) | vec4<u32>(var_2.b.b, var_2.b.a.x, arg_0.a.x, var_2.b.b), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -1i, 12483i, u_input.a), vec4<i32>(-1i, 2147483647i, u_input.e, var_1.x)) ^ vec4<i32>(0i, 1i, var_2.a.x, 20052i), var_2.b.a)), vec4<f32>(1481f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-196f + 582f))) * _wgslsmith_f_op_f32(-657f * _wgslsmith_f_op_f32(floor(arg_1.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1195f))), _wgslsmith_f_op_f32(ceil(2266f))), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, ~4294967295u), ~arg_0.a, vec2<u32>(arg_0.b, 0u) & vec2<u32>(u_input.c, var_2.d.a.x)), abs(12806u), vec3<bool>(true, false | any(vec2<bool>(false, var_0.x)), any(var_0))), ~1u);
    return var_2.d.c;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2166f)));
    global3 = array<Struct_4, 31>();
    global3 = array<Struct_4, 31>();
    let var_0 = ~1u;
    var var_1 = Struct_2(u_input.d.ww, Struct_1(~arg_1.xx, ~(~(~4294967295u)), func_5(func_4(func_2(u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1281f, -1081f, 873f, 1000f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 376f, 242f) + vec4<f32>(-1095f, arg_0, arg_0, -533f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(440f, arg_0, -1772f, -1099f), vec4<f32>(2164f, 409f, arg_0, arg_0))), vec4<bool>(false, false, true, true)))))), func_4(Struct_3(true, true, ~max(arg_1, arg_1), -firstTrailingBit(u_input.d), firstTrailingBit(_wgslsmith_mod_vec2_u32(arg_1.zw, u_input.b.yy)))), ~(u_input.c ^ ~(u_input.b.x >> (var_0 % 32u))));
    return Struct_3(true, !var_1.b.c.x, ~(arg_1 ^ _wgslsmith_mult_vec4_u32(vec4<u32>(72114u, 27592u, 0u, u_input.b.x), firstLeadingBit(arg_1))), countOneBits(_wgslsmith_mult_vec4_i32(-u_input.d, ~vec4<i32>(8663i, 2147483647i, u_input.a, 7306i))), _wgslsmith_div_vec2_u32(var_1.d.a, ~(vec2<u32>(57310u, var_0) & ~arg_1.xy)));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<f32>) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.c, max(vec4<u32>(arg_0.c.x, 4294967295u, u_input.c, 0u), vec4<u32>(4294967295u, arg_0.e.x, 4294967295u, 15608u))), arg_0.c), _wgslsmith_div_vec4_u32(~(vec4<u32>(1u, arg_0.e.x, 56508u, u_input.b.x) >> (arg_0.c % vec4<u32>(32u))), ~arg_0.c)), arg_0.c.x | _wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_0.e.x, _wgslsmith_mult_u32(19163u, 1u)), _wgslsmith_clamp_u32(4294967295u, firstLeadingBit(u_input.b.x), ~u_input.b.x), u_input.c)), 31u)];
    var var_1 = Struct_4(Struct_3(true, var_0.c.d.c.x, ~(~(vec4<u32>(var_0.b.c.x, u_input.c, 1u, 28525u) >> (var_0.a.c % vec4<u32>(32u)))), ~(~(~vec4<i32>(-3969i, var_0.a.d.x, var_0.a.d.x, var_0.c.a.x))), vec2<u32>(~_wgslsmith_clamp_u32(0u, 4294967295u, u_input.b.x), reverseBits(_wgslsmith_add_u32(36735u, u_input.b.x)))), var_0.a, Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, 2147483647i), reverseBits(vec2<i32>(arg_0.d.x, -2147483647i))) >> (min(u_input.b.yz, var_0.b.e) % vec2<u32>(32u)), Struct_1(u_input.b.yy, ~0u, select(vec3<bool>(arg_0.a, var_0.b.a, false), vec3<bool>(var_0.c.d.c.x, arg_0.a, var_0.a.a), func_4(Struct_3(false, false, vec4<u32>(var_0.a.e.x, 0u, 20513u, 23903u), vec4<i32>(0i, -16494i, var_0.b.d.x, 2147483647i), vec2<u32>(1u, 1u))).c.x)), var_0.c.c, Struct_1(firstTrailingBit(func_1(-1518f, var_0.a.c).e), u_input.b.x, !vec3<bool>(true, false, arg_0.b)), 24065u), arg_1.x);
    var var_2 = abs(_wgslsmith_sub_u32(abs(u_input.b.x), _wgslsmith_mod_u32(arg_0.c.x, 1u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-985f + _wgslsmith_f_op_f32(f32(-1f) * -1067f)))), arg_1.x), var_1.c.c.xwx));
    let var_4 = _wgslsmith_add_i32(countOneBits(_wgslsmith_add_i32(5372i, ~var_1.a.d.x)), var_1.b.d.x);
    return func_3(global2[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(var_0.c.d.b, u_input.b.x), var_1.b.c.x), 3u)], var_4).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(~abs(vec2<u32>(u_input.c, 0u))), 4294967295u, !(!vec3<bool>(any(vec4<bool>(true, false, false, true)), any(vec2<bool>(false, true)), true)));
    let var_1 = select(true, true, func_6(func_1(242f, vec4<u32>(var_0.b, 44017u, 46817u, 4294967295u)), vec3<f32>(-776f, 686f, 807f)) & !var_0.c.x) & true;
    var var_2 = global3[_wgslsmith_index_u32(u_input.b.x, 31u)];
    let var_3 = global3[_wgslsmith_index_u32(~u_input.b.x, 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(~vec2<i32>(var_2.b.d.x, -2147483647i))) | var_2.a.d.xx);
}

