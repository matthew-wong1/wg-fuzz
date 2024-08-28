struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<i32>(97468i, -51094i, 1i, 21729i), vec2<u32>(4294967295u, 11810u), vec3<bool>(true, true, true), 536f), Struct_1(vec4<i32>(0i, 2147483647i, 27479i, 0i), vec2<u32>(50682u, 0u), vec3<bool>(false, true, false), -1818f), Struct_1(vec4<i32>(-22489i, -5796i, 1i, 0i), vec2<u32>(0u, 30169u), vec3<bool>(true, true, true), 1881f), Struct_1(vec4<i32>(2147483647i, -16512i, -1i, -16568i), vec2<u32>(4294967295u, 27440u), vec3<bool>(false, false, true), -107f), Struct_1(vec4<i32>(-3630i, 43795i, -1i, 47327i), vec2<u32>(4294967295u, 33949u), vec3<bool>(true, false, false), 2055f), Struct_1(vec4<i32>(0i, 21393i, 1i, 0i), vec2<u32>(0u, 50168u), vec3<bool>(false, false, true), 999f), Struct_1(vec4<i32>(5718i, 39480i, 15523i, -12673i), vec2<u32>(10870u, 0u), vec3<bool>(false, false, false), -1000f), Struct_1(vec4<i32>(34431i, 925i, 2719i, -25849i), vec2<u32>(1u, 4294967295u), vec3<bool>(false, false, true), -540f), Struct_1(vec4<i32>(-48959i, -1i, i32(-2147483648), 40522i), vec2<u32>(0u, 90371u), vec3<bool>(true, true, false), -278f), Struct_1(vec4<i32>(2147483647i, 46834i, 1i, 38705i), vec2<u32>(22893u, 4294967295u), vec3<bool>(false, true, false), 756f), Struct_1(vec4<i32>(2147483647i, -1i, 1i, 61096i), vec2<u32>(1u, 4294967295u), vec3<bool>(true, false, true), -1000f), Struct_1(vec4<i32>(2147483647i, -72672i, -39794i, 2147483647i), vec2<u32>(1u, 51605u), vec3<bool>(false, true, false), -199f), Struct_1(vec4<i32>(1444i, -15881i, i32(-2147483648), 11233i), vec2<u32>(34950u, 8968u), vec3<bool>(false, true, true), 401f), Struct_1(vec4<i32>(24352i, 9936i, -25640i, -1i), vec2<u32>(4294967295u, 1u), vec3<bool>(false, false, false), 791f), Struct_1(vec4<i32>(1i, -29506i, -28011i, 30521i), vec2<u32>(0u, 23621u), vec3<bool>(false, false, true), 867f), Struct_1(vec4<i32>(5852i, -35052i, i32(-2147483648), 2147483647i), vec2<u32>(18134u, 0u), vec3<bool>(false, true, true), -1587f), Struct_1(vec4<i32>(-1i, -68353i, 22039i, -78368i), vec2<u32>(1u, 1u), vec3<bool>(false, true, true), -1000f), Struct_1(vec4<i32>(-57186i, 1i, -6782i, 2147483647i), vec2<u32>(4294967295u, 2935u), vec3<bool>(false, false, true), 824f), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -1i, 12734i), vec2<u32>(4873u, 4294967295u), vec3<bool>(false, false, true), 674f), Struct_1(vec4<i32>(6559i, 1i, -75982i, -1i), vec2<u32>(0u, 4294967295u), vec3<bool>(false, false, true), -343f), Struct_1(vec4<i32>(-1i, 2147483647i, 0i, -1i), vec2<u32>(17074u, 63328u), vec3<bool>(false, true, true), -1472f), Struct_1(vec4<i32>(37383i, 54141i, -95072i, -4401i), vec2<u32>(32059u, 1u), vec3<bool>(false, false, true), -2358f), Struct_1(vec4<i32>(1227i, -31323i, 1050i, 2729i), vec2<u32>(56631u, 27947u), vec3<bool>(false, true, false), 242f), Struct_1(vec4<i32>(2147483647i, 0i, i32(-2147483648), 42401i), vec2<u32>(12948u, 31746u), vec3<bool>(false, false, false), 862f), Struct_1(vec4<i32>(-32734i, 12866i, -12664i, -1965i), vec2<u32>(40530u, 0u), vec3<bool>(true, false, true), -204f), Struct_1(vec4<i32>(-583i, 1i, -60288i, -1i), vec2<u32>(2512u, 42743u), vec3<bool>(true, true, false), -1052f), Struct_1(vec4<i32>(74845i, 1i, 31220i, 49874i), vec2<u32>(23428u, 18514u), vec3<bool>(true, false, false), -123f), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -14835i, 1i), vec2<u32>(16120u, 1u), vec3<bool>(false, false, true), -224f), Struct_1(vec4<i32>(i32(-2147483648), 47087i, i32(-2147483648), 0i), vec2<u32>(38079u, 45033u), vec3<bool>(false, true, false), 1000f), Struct_1(vec4<i32>(44153i, -9361i, i32(-2147483648), 0i), vec2<u32>(34868u, 77488u), vec3<bool>(true, false, true), 401f));

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: Struct_3;

var<private> global4: vec2<u32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec3<f32> {
    var var_0 = global3.a.d;
    let var_1 = Struct_3(global3.a, vec4<i32>(-(~_wgslsmith_mod_i32(u_input.b.x, 0i)), max(abs(48351i) << (global3.a.b.x % 32u), ~(-35869i)), -global3.b.x, u_input.c.x));
    let var_2 = _wgslsmith_div_vec2_i32(-u_input.b.xx, firstTrailingBit(_wgslsmith_clamp_vec2_i32(u_input.a, ~vec2<i32>(28818i, u_input.c.x), ~vec2<i32>(0i, -2147483647i) | (global3.a.a.wz ^ u_input.a))));
    let var_3 = Struct_1(abs(-global3.b), _wgslsmith_sub_vec2_u32(global3.a.b, (firstLeadingBit(global3.a.b) >> (global3.a.b % vec2<u32>(32u))) ^ countOneBits(vec2<u32>(global4.x, global3.a.b.x))), !select(var_1.a.c, !(!vec3<bool>(global2.x, global3.a.c.x, global2.x)), any(select(global3.a.c.xy, vec2<bool>(var_1.a.c.x, var_1.a.c.x), vec2<bool>(false, global3.a.c.x)))), global3.a.d);
    var_0 = -392f;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-1905f, var_1.a.d, -811f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1066f, -549f, _wgslsmith_f_op_f32(-1929f + global3.a.d)))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(global3.a, firstTrailingBit(vec4<i32>(0i, 47994i, global3.b.x, 2147483647i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3())));
    global3 = Struct_3(Struct_1(var_0.a.a, var_0.a.b, vec3<bool>(true, 0u <= var_0.a.b.x, var_0.a.c.x), var_1.x), max(abs(vec4<i32>(1i, -1i, global3.a.a.x, global3.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-13041i, var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.a.a.x, var_0.a.a.x, 524i, -2147483647i), var_0.b), -32753i << (global3.a.b.x % 32u)), abs(var_0.b))));
    var var_2 = _wgslsmith_add_i32(u_input.c.x, ~(_wgslsmith_add_i32(~20161i, i32(-1i) * -1i) >> ((~global4.x >> (26815u % 32u)) % 32u)));
    var var_3 = select(58144i, 1i, select(true, false, firstTrailingBit(var_0.a.a.x) >= _wgslsmith_dot_vec3_i32(var_0.a.a.yxw, vec3<i32>(u_input.c.x, -38570i, -31204i))) || (~(~global3.b.x) != -1i));
    return Struct_2(var_0.b.yxy, vec2<i32>(-var_0.a.a.x, global3.b.x), Struct_1(vec4<i32>(~(i32(-1i) * -1i), var_0.b.x, ~_wgslsmith_div_i32(-2147483647i, -1i), u_input.c.x), global3.a.b, !(!select(vec3<bool>(var_0.a.c.x, global3.a.c.x, true), global3.a.c, var_0.a.c.x)), _wgslsmith_f_op_vec3_f32(func_3()).x), global3.a.b.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = func_2();
    global2 = vec2<bool>(false, any(vec4<bool>(!global3.a.c.x, true, select(any(var_0.c.c), global3.a.c.x, global3.a.c.x), global2.x)));
    return _wgslsmith_sub_u32(global4.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(global4.x, ~(global4.x >> (0u % 32u))), select(_wgslsmith_div_u32(var_0.d, 0u) >> (4294967295u % 32u), global3.a.b.x, (global3.a.c.x & global2.x) && !global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~global3.a.a.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-283f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-217f, -1872f))), global3.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.d) * _wgslsmith_f_op_f32(-global3.a.d))))), 1000f, min(vec2<u32>(global3.a.b.x | func_1(vec4<f32>(-1000f, global3.a.d, 524f, -603f), global3.a.c.x, -567f), ~(~global4.x)), _wgslsmith_mult_vec2_u32(global3.a.b, select(~global3.a.b, global3.a.b, true))), select(global3.a.b, min(~reverseBits(vec2<u32>(global4.x, global3.a.b.x)), ~(~global3.a.b)), global2.x));
}

