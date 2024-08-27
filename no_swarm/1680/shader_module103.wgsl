struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 6>;

var<private> global2: vec4<i32>;

var<private> global3: array<u32, 5>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = (~reverseBits(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5161u, 5u)], 5u)], 5u)], u_input.c.x)) << (~(~38987u) % 32u)) | (_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6452u, 5u)], 5u)], u_input.c.x | 0u)) >> (5617u % 32u));
    return all(select(vec3<bool>(true, false, true), !vec3<bool>(true, true, all(vec3<bool>(true, false, false))), ~_wgslsmith_dot_vec3_i32(global2.wzw, vec3<i32>(global0.a.x, 1i, 7908i)) <= global2.x));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = min(vec4<u32>(countOneBits(80952u), global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(max(global3[_wgslsmith_index_u32(68205u, 5u)], u_input.c.x), 14541u), 5u)], reverseBits(_wgslsmith_mod_u32(13986u, global3[_wgslsmith_index_u32(firstTrailingBit(49506u), 5u)])), ~1u), _wgslsmith_mod_vec4_u32(firstTrailingBit(reverseBits(u_input.c) | vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u)), abs(u_input.c)));
    let var_1 = 2147483647i;
    global2 = _wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_clamp_i32(i32(-1i) * -38176i, abs(-1i), 0i)), _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(u_input.b.x, min(global0.b, global2.x))), -1i, ~(-(1i | global0.b))), ~_wgslsmith_sub_vec4_i32(~reverseBits(vec4<i32>(45467i, 17273i, 14270i, 1i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-17375i, var_1, 22394i, 0i), vec4<i32>(var_1, u_input.e.x, 3634i, var_1))));
    let var_2 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1548f * _wgslsmith_f_op_f32(-global0.c.x))) + _wgslsmith_f_op_f32(min(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.c.x, 6u)])) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 6u)]))))));
    var var_3 = Struct_1(i32(-1i) * -var_1, global0.a.xy, min(~var_0.x, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(~var_0.x, 5u)], 0u)), arg_0.x, true);
    return func_2(7248i);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: vec4<i32>) -> vec3<f32> {
    let var_0 = any(!vec3<bool>(all(vec3<bool>(arg_0, true, false)), func_2(1i), arg_0 | func_3(vec2<bool>(true, arg_1.a))));
    var var_1 = _wgslsmith_f_op_f32(step(1128f, 271f));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_1.c.zzz))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec3<f32>) -> i32 {
    global2 = -select(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.b.x, 1698i) & ~vec4<i32>(-50623i, 2147483647i, -47870i, global2.x), countOneBits(~vec4<i32>(u_input.e.x, -1i, u_input.e.x, -3113i))), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, global0.b, global2.x, global2.x) >> (u_input.c % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-18221i, -2147483647i, arg_0.a.x, 59928i), vec4<i32>(global2.x, arg_0.b, arg_0.b, 2147483647i), vec4<i32>(global2.x, -2147483647i, -1i, global2.x))), vec4<bool>(all(!vec3<bool>(false, arg_2.a, true)), true, any(vec4<bool>(false, arg_2.a, arg_2.a, arg_2.a)), true));
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 5>();
    global0 = Struct_4(vec3<i32>(2147483647i, -u_input.a, -_wgslsmith_mod_i32(~global2.x, _wgslsmith_mult_i32(u_input.d.x, 0i))), 0i, global0.c);
    global0 = Struct_4(vec3<i32>(abs(-2147483647i), select(-25220i, u_input.d.x, true) | global2.x, i32(-1i) * -12223i), _wgslsmith_mod_i32(func_4(Struct_4(u_input.d, 15218i, global0.c), global0.a.xy, Struct_3(1u != global3[_wgslsmith_index_u32(u_input.c.x, 5u)], ~u_input.c.x, vec4<f32>(-102f, global0.c.x, global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, 408f, global1[_wgslsmith_index_u32(4294967295u, 6u)], global0.c.x), vec4<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25615u, 5u)], 5u)], 6u)], global0.c.x, global0.c.x, 1127f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(false, Struct_3(false, 0u, vec4<f32>(-119f, global0.c.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36077u, 5u)], 6u)], -267f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 5u)], 5u)], 6u)], global0.c.x, global0.c.x)), 0u, vec4<i32>(2147483647i, global0.a.x, 0i, global0.a.x))) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], -151f, global1[_wgslsmith_index_u32(0u, 6u)]))), firstTrailingBit(func_4(Struct_4(vec3<i32>(1i, 0i, u_input.a), 0i, global0.c), vec2<i32>(-1i, global0.a.x), Struct_3(false, 0u, vec4<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8775u, 5u)], 5u)], 5u)], 6u)], 419f, global0.c.x, -305f), vec4<f32>(1182f, -2741f, -651f, 1000f)), global0.c))), global0.c);
    let var_0 = any(select(vec3<bool>(true, true, !all(vec4<bool>(true, false, true, true))), vec3<bool>(true, true || func_3(vec2<bool>(true, false)), _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(1u, 5u)], 4294967295u) <= ~18537u), select(!select(false, true, true), true, true)));
    let var_1 = Struct_4(firstLeadingBit(~reverseBits(global2.zzz) | firstLeadingBit(vec3<i32>(2147483647i, -3817i, 1i))), u_input.a, global0.c);
    global2 = countOneBits(abs((vec4<i32>(-34416i, u_input.e.x, 0i, 15921i) << (u_input.c % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 16132u, u_input.c.x, global3[_wgslsmith_index_u32(68768u, 5u)]), vec4<u32>(0u, u_input.c.x, 35717u, 4294967295u)) % vec4<u32>(32u))));
    let var_2 = var_0;
    let var_3 = global3[_wgslsmith_index_u32(~37202u | ~(~(~(~u_input.c.x))), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(494f, ~u_input.c.yyx);
}

