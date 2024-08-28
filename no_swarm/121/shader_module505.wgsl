struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<i32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(-580f, 1000f, -1921f), vec3<f32>(-1566f, -1474f, -1846f), vec3<f32>(1773f, 352f, 1385f), vec3<f32>(-257f, -539f, 545f), vec3<f32>(1000f, 734f, 677f), vec3<f32>(2404f, -1125f, 993f), vec3<f32>(275f, -933f, -454f), vec3<f32>(-665f, -609f, 1009f), vec3<f32>(-1258f, 732f, -2453f), vec3<f32>(641f, -692f, -340f), vec3<f32>(-1000f, -2262f, 554f), vec3<f32>(786f, -763f, 200f), vec3<f32>(-211f, -240f, -1067f), vec3<f32>(609f, -204f, -1793f));

var<private> global1: array<f32, 2> = array<f32, 2>(-685f, 1155f);

var<private> global2: u32;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>) -> u32 {
    global1 = array<f32, 2>();
    global1 = array<f32, 2>();
    var var_0 = select(select(arg_0.b.a, !arg_0.b.a, select(vec3<bool>(arg_0.e.a.x, arg_0.b.a.x, true), select(vec3<bool>(arg_0.b.a.x, arg_0.e.a.x, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true)), vec3<bool>(min(arg_2.x, -1i) == min(11019i, arg_2.x & arg_1), arg_0.d.a.x, select(true, !(arg_0.a >= 1413f), any(!vec4<bool>(true, true, arg_0.b.a.x, false)))), arg_0.e.a.x);
    let var_1 = Struct_4(-572f, Struct_3(Struct_1(arg_0.e.a), 63264u & _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, arg_0.c.x, 40570u), vec4<u32>(arg_0.c.x, u_input.b, 1u, u_input.b), arg_0.c), vec4<u32>(u_input.a.x, arg_0.c.x, u_input.b, arg_0.c.x))), select(vec3<i32>(max(1i ^ arg_2.x, _wgslsmith_mult_i32(-1i, arg_2.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, 4613i, 2147483647i, arg_1), vec4<i32>(-59321i, arg_1, arg_2.x, -28080i)) | _wgslsmith_mult_i32(arg_1, -17201i), select(max(0i, 2941i), arg_1, false)), ~vec3<i32>(arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, arg_1, arg_1), vec3<i32>(2147483647i, -15095i, -2147483647i)), -2147483647i), true || !(!var_0.x)), !var_0.x, ~select(arg_0.c.ww, ~(~u_input.a), vec2<bool>(true, u_input.b >= u_input.b)));
    let var_2 = _wgslsmith_mult_i32(arg_1, arg_2.x);
    return u_input.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>) -> vec2<u32> {
    var var_0 = Struct_4(-1557f, Struct_3(Struct_1(arg_1), u_input.b), vec3<i32>(-30658i, 2147483647i, 0i), arg_1.x, ~(u_input.a << (_wgslsmith_sub_vec2_u32(u_input.a, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(4294967295u, 81101u))) % vec2<u32>(32u))));
    return vec2<u32>(func_3(Struct_2(-415f, Struct_1(arg_1), _wgslsmith_mult_vec4_u32(vec4<u32>(66626u, 1u, 4294967295u, 4294967295u), vec4<u32>(u_input.b, 48288u, u_input.b, u_input.a.x)), Struct_1(vec3<bool>(var_0.d, arg_0.x, false)), Struct_1(vec3<bool>(false, true, true))), _wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, 30279i), -var_0.c.x), abs(var_0.c.yy)), 4294967295u) >> (max(abs(var_0.e), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(var_0.e.x, 19771u))) % vec2<u32>(32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> vec4<u32> {
    var var_0 = func_2(vec2<bool>(arg_0.a.x, true), vec3<bool>(false != all(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.a.x, false, false, false), vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x))), any(select(arg_0.a, !arg_0.a, all(vec3<bool>(false, arg_0.a.x, arg_0.a.x)))), false));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1222f));
    var var_2 = firstLeadingBit(-(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 13641i, 0i), vec3<i32>(0i, 31824i, -15192i))));
    let var_3 = Struct_2(1746f, arg_0, vec4<u32>(abs(~var_0.x), ~max(17486u, _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(4294967295u, 37262u))), min(select(_wgslsmith_add_u32(var_0.x, 4294967295u), 4294967295u, true), ~(0u >> (u_input.b % 32u))), arg_2), arg_0, arg_0);
    var var_4 = Struct_2(var_1, Struct_1(!vec3<bool>(var_3.d.a.x, arg_0.a.x, true)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(73081u, u_input.b, arg_2, var_0.x), var_3.c >> (var_3.c % vec4<u32>(32u))), firstTrailingBit(var_3.c)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(13556u, func_2(vec2<bool>(var_3.e.a.x, var_3.d.a.x), vec3<bool>(true, false, false)).x, _wgslsmith_sub_u32(arg_2, 1u), ~var_0.x), var_3.c) % vec4<u32>(32u)), Struct_1(select(arg_0.a, arg_0.a, var_3.e.a.x)), Struct_1(vec3<bool>(any(vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x)), !arg_0.a.x, var_3.e.a.x && var_3.b.a.x)));
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(102644u, var_3.c.x, 4294967295u, arg_1.x), vec4<u32>(4294967295u, u_input.b, 9765u, 24446u))), (vec4<u32>(4294967295u, 30659u, 79970u, var_3.c.x) | var_3.c) | ~vec4<u32>(arg_1.x, 147007u, 0u, 1u)), ~var_3.c), var_3.c, vec4<u32>(abs(~var_4.c.x), u_input.a.x, 1u, ~var_3.c.x << (28843u % 32u)) ^ max(~(vec4<u32>(u_input.b, arg_2, var_3.c.x, 0u) >> (var_3.c % vec4<u32>(32u))), ~(~vec4<u32>(27534u, 112831u, u_input.a.x, 4294967295u))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec4<i32>) -> vec4<u32> {
    global2 = 0u;
    global3 = ~u_input.a.x;
    global2 = 107405u ^ arg_1.x;
    let var_0 = !arg_0.a.a;
    let var_1 = -2260f;
    return (~arg_1 << (~(~arg_1) % vec4<u32>(32u))) >> (firstLeadingBit(~arg_1) % vec4<u32>(32u));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(select(vec3<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(false, false, false)), any(vec2<bool>(true, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true), vec3<bool>(true, true, true))), u_input.b);
    global0 = array<vec3<f32>, 14>();
    global1 = array<f32, 2>();
    var var_1 = !vec2<bool>(!var_0.a.a.x, var_0.a.a.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(365f * global1[_wgslsmith_index_u32(u_input.b, 2u)]))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-617f)) + arg_0));
    return var_0.a;
}

fn func_6(arg_0: Struct_3) -> StorageBuffer {
    let var_0 = vec3<bool>(any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(false, arg_0.a.a.x, false, arg_0.a.a.x)), select(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, false), select(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, true), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, arg_0.a.a.x), vec4<bool>(true, true, arg_0.a.a.x, true)), vec4<bool>(false, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x)), !select(vec4<bool>(arg_0.a.a.x, false, false, arg_0.a.a.x), vec4<bool>(false, true, false, false), vec4<bool>(arg_0.a.a.x, false, true, arg_0.a.a.x)))), true, arg_0.a.a.x);
    var var_1 = true;
    var var_2 = -11553i;
    global1 = array<f32, 2>();
    return StorageBuffer(i32(-1i) * -8298i, vec2<u32>(func_4(arg_0, ~(~vec4<u32>(4294967295u, arg_0.b, u_input.a.x, arg_0.b)), -(vec4<i32>(-2147483647i, 27898i, 51406i, 2147483647i) << (vec4<u32>(u_input.a.x, 5310u, 80773u, u_input.b) % vec4<u32>(32u)))).x, ~_wgslsmith_clamp_u32(~10941u, u_input.b, ~0u)), -_wgslsmith_dot_vec4_i32(~(-vec4<i32>(-46387i, 5770i, -1i, -2147483647i)), countOneBits(vec4<i32>(73034i, 78224i, -27210i, 0i))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global3 = 39300u;
    let x = u_input.a;
    s_output = func_6(Struct_3(func_5(_wgslsmith_div_f32(-1437f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]))), func_4(Struct_3(Struct_1(vec3<bool>(var_0, true, false)), u_input.a.x), func_1(Struct_1(vec3<bool>(var_0, true, var_0)), vec2<u32>(4294967295u, 0u), u_input.a.x), vec4<i32>(2147483647i, -48050i, 5664i, 31204i))), u_input.a.x));
}

