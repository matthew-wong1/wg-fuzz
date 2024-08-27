struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
    e: f32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 16>;

var<private> global2: bool;

var<private> global3: vec4<i32> = vec4<i32>(1i, 1i, 0i, 0i);

var<private> global4: array<f32, 5>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(abs(u_input.c), 5u)] * _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.a, 16u)], -186f, false))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, ~u_input.a), 16u)], global4[_wgslsmith_index_u32(1u, 5u)])))));
    let var_1 = Struct_3(Struct_1(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), any(vec3<bool>(true, false, false))), vec2<bool>(true, true), true), vec2<bool>(_wgslsmith_mult_i32(u_input.d.x, global3.x) != (i32(-1i) * -32927i), false), global3.xxw, min(_wgslsmith_add_vec3_u32(vec3<u32>(89448u, 4294967295u, u_input.c), vec3<u32>(u_input.b.x, u_input.a, 8794u) & vec3<u32>(1u, u_input.a, u_input.a)), countOneBits(firstLeadingBit(vec3<u32>(u_input.b.x, 1u, u_input.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-1675f + _wgslsmith_f_op_f32(f32(-1f) * -597f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1540f - 527f) - _wgslsmith_f_op_f32(-1063f - global4[_wgslsmith_index_u32(u_input.b.x, 5u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_f_op_f32(f32(-1f) * -645f))))), Struct_1(vec2<bool>(true & all(vec4<bool>(false, true, true, false)), select(true, select(false, true, false), false)), select(vec2<bool>(false, any(vec4<bool>(true, true, false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(67843i, global3.x, -15086i), _wgslsmith_mult_vec3_i32(global3.yyy, global3.zyx), vec3<i32>(u_input.d.x, global3.x, 2147483647i)) | u_input.d.wyw, vec3<u32>(_wgslsmith_mult_u32(28062u, u_input.c), 1u, 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 109f, global1[_wgslsmith_index_u32(u_input.a, 16u)]) - vec3<f32>(-1823f, _wgslsmith_f_op_f32(var_0.x - 221f), 974f))), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true)), vec2<bool>(all(vec2<bool>(false, false)), true), true), _wgslsmith_clamp_vec3_i32(countOneBits(global3.wzx), global3.zxw, vec3<i32>(2147483647i, ~2147483647i, -2147483647i)), abs(~min(u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(43935u, 16u)], 608f))))))));
    var var_2 = true;
    let var_3 = !(!any(select(!vec2<bool>(var_1.b.b.x, true), select(var_1.a.a, vec2<bool>(var_1.c.a.x, true), var_1.a.a), false | var_1.b.a.x)));
    global1 = array<f32, 16>();
    return _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(3270u, u_input.a & (_wgslsmith_div_u32(48895u, var_1.b.d.x) | _wgslsmith_dot_vec3_u32(var_1.a.d, u_input.b))), 5u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -651f)) - _wgslsmith_f_op_f32(max(var_0.x, var_1.c.e.x)))));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1242f * 1050f));
    global4 = array<f32, 5>();
    global2 = !all(vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(7751u, 5u)], 894f)) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1514f))))))));
    let var_2 = vec4<bool>(true, true, true, !(876f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1316f) + _wgslsmith_f_op_f32(round(394f)))));
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(global3.x, 41687i), _wgslsmith_dot_vec2_i32(vec2<i32>(~global3.x, 2147483647i), abs(-vec2<i32>(-47468i, global3.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<u32>) -> Struct_1 {
    global1 = array<f32, 16>();
    global1 = array<f32, 16>();
    global3 = countOneBits(max(vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(-25471i, global3.x)), -_wgslsmith_sub_i32(2147483647i, global3.x), firstTrailingBit(min(10191i, -56540i)), func_2(arg_2)), _wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(global3.x, global3.x, ~1i, 51648i))));
    return Struct_1(!(!select(!vec2<bool>(false, arg_1), vec2<bool>(arg_1, true), !vec2<bool>(false, arg_1))), select(select(vec2<bool>(any(vec3<bool>(arg_1, arg_1, true)), !arg_1), vec2<bool>(any(vec3<bool>(arg_1, true, true)), true), true), select(vec2<bool>(true, true), !vec2<bool>(false, arg_1), arg_1), arg_1), global3.xxx, min(_wgslsmith_sub_vec3_u32(~arg_2, abs(vec3<u32>(arg_2.x, 23554u, u_input.c))), arg_2), vec3<f32>(-580f, _wgslsmith_f_op_f32(604f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(50441u, 16u)]))))), global4[_wgslsmith_index_u32(~0u, 5u)]));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool) -> vec2<bool> {
    let var_0 = func_1(~vec3<u32>(select(arg_0.d.x, _wgslsmith_sub_u32(u_input.c, u_input.c), u_input.d.x != 5208i), reverseBits(u_input.b.x), arg_0.d.x), all(select(!arg_0.b, vec2<bool>(true, true), !arg_0.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(0u), u_input.a, reverseBits(_wgslsmith_dot_vec2_u32(arg_0.d.zy, vec2<u32>(23316u, u_input.a)))), abs(firstLeadingBit(arg_0.d) ^ ~vec3<u32>(u_input.b.x, u_input.b.x, arg_0.d.x)), abs(vec3<u32>(1359u, ~6155u, 4294967295u))), vec2<u32>(138u, u_input.b.x));
    let var_1 = ~vec4<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, 1u, 1u, 4294967295u), min(vec4<u32>(1u, var_0.d.x, 1u, 1u), vec4<u32>(arg_0.d.x, var_0.d.x, 44709u, 17057u)))), ~_wgslsmith_mult_u32(var_0.d.x, ~1u), 4200u, _wgslsmith_div_u32(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(0u, u_input.c, u_input.b.x)), ~1u << (u_input.a % 32u)));
    let var_2 = vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 0u), firstLeadingBit(var_0.d.x)), ~u_input.a), ~1u, _wgslsmith_clamp_u32(~arg_0.d.x, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a, ~14271u, ~42433u), _wgslsmith_mod_u32(firstTrailingBit(34658u), 22212u), 4294967295u), _wgslsmith_mult_u32(var_1.x, 0u)));
    let var_3 = global3.zzz;
    let var_4 = Struct_3(func_1(var_1.ywx, true, vec3<u32>(_wgslsmith_mult_u32(~40452u, ~var_2.x), arg_0.d.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_2.x, arg_0.d.x), 1u)), select(select(vec2<u32>(115848u, 74432u), var_0.d.xy, var_0.b.x), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, var_1.x), u_input.b.xx), all(vec4<bool>(false, arg_2, false, var_0.a.x))) | (~u_input.b.xx >> (vec2<u32>(1u, 59115u) % vec2<u32>(32u)))), Struct_1(vec2<bool>(!var_0.b.x, any(arg_0.a)), !(!(!var_0.a)), vec3<i32>(firstLeadingBit(59532i), _wgslsmith_sub_i32(var_3.x, var_0.c.x) ^ var_3.x, ~arg_0.c.x), ~countOneBits(~vec3<u32>(u_input.c, 4294967295u, var_2.x)), vec3<f32>(global1[_wgslsmith_index_u32(114774u, 16u)], _wgslsmith_f_op_f32(round(var_0.e.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1612f)))))), func_1(_wgslsmith_mult_vec3_u32(var_0.d, vec3<u32>(var_2.x, arg_0.d.x, arg_0.d.x) | u_input.b), var_0.a.x, ~_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.d.x, arg_0.d.x, 1u), min(var_2, u_input.b)), _wgslsmith_mod_vec2_u32(select(~vec2<u32>(var_0.d.x, 0u), vec2<u32>(0u, 1u) ^ var_0.d.yy, vec2<bool>(false, false)), vec2<u32>(arg_0.d.x, _wgslsmith_clamp_u32(1u, 77125u, 16327u)))));
    return !vec2<bool>(!any(select(vec3<bool>(var_4.a.a.x, false, var_0.a.x), vec3<bool>(var_0.a.x, true, true), vec3<bool>(true, true, true))), select(!any(vec4<bool>(var_4.a.a.x, false, arg_0.a.x, var_0.a.x)), any(var_4.a.b), func_1(~var_2, var_4.a.b.x, ~var_2, abs(vec2<u32>(arg_0.d.x, 1u))).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(all(vec4<bool>(false, false, true, false)) || (global4[_wgslsmith_index_u32(u_input.c, 5u)] <= global1[_wgslsmith_index_u32(u_input.b.x, 16u)]), u_input.a >= (u_input.c | 158u)), select(vec2<bool>(true, true), func_4(func_1(vec3<u32>(0u, u_input.b.x, 1u), false, u_input.b, vec2<u32>(70115u, u_input.c)), _wgslsmith_div_vec2_f32(vec2<f32>(765f, -112f), vec2<f32>(591f, 711f)), false), vec2<bool>(true, true)), true);
    global1 = array<f32, 16>();
    let var_1 = Struct_3(Struct_1(vec2<bool>(true, !func_4(Struct_1(vec2<bool>(false, false), vec2<bool>(false, false), vec3<i32>(u_input.d.x, global3.x, -2147483647i), u_input.b, vec3<f32>(global1[_wgslsmith_index_u32(0u, 16u)], 467f, global4[_wgslsmith_index_u32(u_input.a, 5u)])), vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]), true).x), !(!(!vec2<bool>(false, var_0.x))), global3.yzz, u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(53006u, 5u)], -1139f, _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(4294967295u, 5u)]))))), func_1(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(14825u, 4294967295u, u_input.c, 27582u), vec4<u32>(u_input.a, u_input.c, 1u, u_input.c)), u_input.b.x | u_input.c, 37050u), var_0.x, abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), vec3<u32>(0u, 1u, u_input.b.x) | vec3<u32>(u_input.b.x, 20550u, 4294967295u), vec3<u32>(u_input.b.x, 18569u, 45402u))), vec2<u32>(~1u, 18354u)), Struct_1(!(!select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), var_0.x)), func_4(Struct_1(vec2<bool>(true, true), func_1(u_input.b, var_0.x, u_input.b, u_input.b.xz).a, -global3.xxy, ~u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(23694u, 5u)], global1[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(u_input.a, 5u)]) * vec3<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 5u)], -1094f, global4[_wgslsmith_index_u32(0u, 5u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(u_input.c, 5u)], 458f) * vec2<f32>(1063f, 573f)), true), global3.wxw, u_input.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.c, 5u)], global1[_wgslsmith_index_u32(69821u, 16u)], global1[_wgslsmith_index_u32(21818u, 16u)])), vec3<f32>(1000f, -946f, global1[_wgslsmith_index_u32(u_input.b.x, 16u)])))))));
    var var_2 = Struct_5(vec3<bool>(_wgslsmith_mod_i32(abs(global3.x), reverseBits(28686i)) != var_1.a.c.x, func_4(Struct_1(func_4(Struct_1(var_1.a.a, vec2<bool>(false, true), var_1.a.c, vec3<u32>(var_1.a.d.x, 1u, var_1.b.d.x), vec3<f32>(1113f, global4[_wgslsmith_index_u32(var_1.b.d.x, 5u)], var_1.b.e.x)), var_1.a.e.yz, var_1.c.a.x), var_1.c.a, func_1(var_1.b.d, true, u_input.b, u_input.b.yx).c, u_input.b, _wgslsmith_f_op_vec3_f32(-var_1.a.e)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.e.zy - var_1.c.e.xz), _wgslsmith_div_vec2_f32(var_1.a.e.xy, vec2<f32>(var_1.b.e.x, 1516f))), func_1(vec3<u32>(1u, 68484u, 4294967295u), false, var_1.c.d >> (u_input.b % vec3<u32>(32u)), u_input.b.xy).a.x).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.e.x + var_1.c.e.x) - global1[_wgslsmith_index_u32(u_input.c, 16u)]) != global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18516u, 1u, var_1.b.d.x, 1u), vec4<u32>(u_input.c, 1u, 63090u, u_input.b.x) << (vec4<u32>(var_1.b.d.x, 9284u, 4294967295u, 0u) % vec4<u32>(32u))), 5u)]));
    let var_3 = max(~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.b.d.x, select(1u, var_1.a.d.x, var_2.a.x), 5139u), vec3<u32>(~0u, 25319u, abs(0u))), _wgslsmith_add_vec3_u32(~vec3<u32>(~var_1.a.d.x, 1u, 1u), u_input.b));
    var var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yz);
}

