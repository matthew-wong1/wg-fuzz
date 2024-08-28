struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3;

var<private> global2: array<i32, 16>;

var<private> global3: array<i32, 23>;

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> vec2<i32> {
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, i32(-1i) * -1i), _wgslsmith_sub_vec2_i32(~global1.d.yx & ((vec2<i32>(1i, arg_2.d.x) | arg_2.d.yy) | vec2<i32>(arg_2.d.x, -1i)), global1.d.yz & _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(24345i, 0i)), vec2<i32>(-36069i, 0i) >> (u_input.a % vec2<u32>(32u)))), (vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-11867i, -2147483647i), u_input.c.zx), -2147483647i) & -arg_2.d.xx) << (~(~vec2<u32>(10598u, arg_2.c)) % vec2<u32>(32u)));
}

fn func_2() -> bool {
    var var_0 = -41448i;
    var var_1 = -func_3(global1.a, all(!select(global1.b.wzx, global1.b.zwy, global1.b.x)), Struct_3(Struct_2(false), global1.b, 1u, global1.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_2 = Struct_3(global1.a, select(!global1.b, global1.b, !(!global1.b)), ~u_input.d >> (_wgslsmith_add_u32(~65595u, global1.c) % 32u), min(firstLeadingBit(vec3<i32>(global1.d.x, global3[_wgslsmith_index_u32(24253u, 23u)], global1.d.x) ^ ~vec3<i32>(global3[_wgslsmith_index_u32(0u, 23u)], 1i, -1i)), max(global1.d, ~(-u_input.c))));
    var_1 = -min(~_wgslsmith_mod_vec2_i32(var_2.d.xz, var_2.d.xz), abs(vec2<i32>(_wgslsmith_mult_i32(13642i, -13983i), -1i)));
    var var_3 = global1.a;
    return global1.a.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4) -> vec2<i32> {
    global3 = array<i32, 23>();
    let var_0 = func_3(global1.a, true, Struct_3(arg_0, global1.b, ~(~4294967295u & (u_input.d << (4294967295u % 32u))), ~(arg_2.c | vec3<i32>(global1.d.x, 1i, -19870i)) & abs(abs(vec3<i32>(arg_2.b, 7990i, -2147483647i)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_1.a)), _wgslsmith_f_op_f32(-1142f - 493f), arg_0.a)));
    let var_1 = !(!global1.b.wzz);
    return var_0;
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_sub_vec2_i32(u_input.c.yy, func_4(global1.a, Struct_4(arg_0.x, -6022i, global1.d, func_2()), Struct_4(1250f, global1.d.x, _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 2147483647i), vec3<i32>(-34831i, u_input.c.x, u_input.c.x)), global1.a.a)) | vec2<i32>(global3[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, firstTrailingBit(60184u)), 16u)]));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x);
    let var_2 = ~u_input.b;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x)))))), -(~(-min(-1i, global3[_wgslsmith_index_u32(4294967295u, 23u)]))), vec3<i32>(35974i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c, global1.d), _wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, u_input.c)), -_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(2005u, 16u)], 0i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), -_wgslsmith_dot_vec3_i32(global1.d, -vec3<i32>(global2[_wgslsmith_index_u32(4528u, 16u)], 0i, global3[_wgslsmith_index_u32(u_input.a.x, 23u)]))), false);
    let var_4 = -34156i;
    return -1890i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(~(u_input.c.x << (_wgslsmith_add_u32(countOneBits(u_input.a.x), select(53078u, global1.c, true)) % 32u)), global1.d.x);
    var var_1 = vec4<i32>(55000i, _wgslsmith_clamp_i32(u_input.c.x, ~u_input.c.x, -44809i), -func_1(vec3<f32>(_wgslsmith_f_op_f32(step(-1280f, 1000f)), _wgslsmith_f_op_f32(907f + 1095f), _wgslsmith_f_op_f32(-1000f - -1231f))), 33223i);
    var_1 = select(vec4<i32>(global3[_wgslsmith_index_u32(global1.c, 23u)], 0i, global3[_wgslsmith_index_u32(~1u, 23u)], -1i), _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -123i, ~global2[_wgslsmith_index_u32(global1.c, 16u)], _wgslsmith_mult_i32(-39686i, _wgslsmith_add_i32(0i, u_input.c.x)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.c, max(global1.c, u_input.b.x), 1u), 23u)]), vec4<i32>(firstTrailingBit(_wgslsmith_clamp_i32(77190i, -48255i, 1i)), -1i, ~1i, i32(-1i) * -16911i)), vec4<bool>(false, (func_3(global1.a, global1.a.a, Struct_3(global1.a, global1.b, 1u, global1.d), -1305f).x >= (var_1.x ^ 1i)) || any(global1.b), global1.a.a, global1.a.a));
    let var_2 = _wgslsmith_div_vec3_u32(u_input.b.yyx, ~_wgslsmith_sub_vec3_u32(~u_input.b.xxz, countOneBits(~u_input.b.zyw)));
    var var_3 = Struct_3(global1.a, vec4<bool>(true, true, global1.b.x, global1.a.a), firstLeadingBit(4294967295u), u_input.c);
    var var_4 = var_3.b.yyz;
    let var_5 = Struct_3(Struct_2(true), vec4<bool>(global1.b.x, true, func_2(), func_2() | (_wgslsmith_f_op_f32(sign(1000f)) == -1148f)), firstTrailingBit(_wgslsmith_mod_u32(35488u, ~(~global1.c))), vec3<i32>(reverseBits(_wgslsmith_clamp_i32(1i, -9244i, firstTrailingBit(-855i))), firstLeadingBit(global2[_wgslsmith_index_u32(global1.c, 16u)]), var_3.d.x));
    let var_6 = any(select(vec4<bool>(global1.b.x, all(select(global1.b.ww, var_4.xy, global1.b.x)), !var_4.x, select(true, var_4.x, any(var_5.b))), select(select(select(vec4<bool>(global1.b.x, true, false, global1.a.a), global1.b, var_3.a.a), vec4<bool>(false, var_5.b.x, true, false), select(var_5.b, var_5.b, vec4<bool>(false, var_4.x, false, var_4.x))), select(global1.b, !var_5.b, select(vec4<bool>(true, global1.b.x, false, var_5.b.x), var_3.b, vec4<bool>(false, var_3.b.x, var_3.b.x, false))), vec4<bool>(var_4.x, var_3.b.x || true, false, select(var_4.x, var_5.a.a, var_5.b.x))), false));
    let var_7 = firstTrailingBit(~var_3.d.xx);
    let x = u_input.a;
    s_output = StorageBuffer(var_7.x, (vec4<i32>(u_input.c.x | global1.d.x, -1i, 1i, ~(-5634i)) & ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-23401i, var_1.x, 1i, 1i), vec4<i32>(-20547i, var_3.d.x, -18233i, global2[_wgslsmith_index_u32(4055u, 16u)]), vec4<i32>(-31921i, -1536i, 53807i, global3[_wgslsmith_index_u32(61453u, 23u)]))) & ~_wgslsmith_div_vec4_i32(vec4<i32>(3i, -2147483647i, var_5.d.x, 1i), -vec4<i32>(-2147483647i, var_5.d.x, var_3.d.x, u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-521f * 1377f), -918f, _wgslsmith_f_op_f32(-1667f - -2199f), 1f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(293f, 850f, -1000f, -1000f), vec4<f32>(1044f, -163f, 313f, 1719f)), vec4<f32>(-1000f, 339f, -1032f, -155f), vec4<bool>(false, var_6, false, var_5.a.a))))), (vec4<u32>(var_2.x, var_2.x | var_2.x, 1u, _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, var_5.c)) << (countOneBits(u_input.b) % vec4<u32>(32u))) ^ vec4<u32>(var_5.c, _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_5.c, 28911u), ~0u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(54327u, u_input.b.x, global1.c, 63530u), u_input.b, vec4<bool>(true, var_6, false, var_5.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(41287u, var_5.c, var_3.c, 1u), u_input.b)), _wgslsmith_dot_vec3_u32(var_2, vec3<u32>(1u, 2113u, var_3.c) | vec3<u32>(55921u, u_input.b.x, 4294967295u))));
}

