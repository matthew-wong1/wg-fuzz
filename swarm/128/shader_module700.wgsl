struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(30659u, 4294967295u, 8159u, 0u);

var<private> global1: Struct_3 = Struct_3(20997u, vec2<f32>(201f, 738f), true);

var<private> global2: Struct_3;

var<private> global3: array<bool, 31> = array<bool, 31>(true, false, true, false, false, false, true, false, false, true, false, false, false, true, false, false, false, true, true, false, true, true, true, true, false, true, false, false, false, true, false);

var<private> global4: array<bool, 27>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<i32> {
    global0 = _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 56005u, 19054u, 5204u), vec4<u32>(~1u, min(_wgslsmith_sub_u32(global2.a, 915u), global2.a), _wgslsmith_mod_u32(u_input.b, global2.a) >> (select(3828u, 4294967295u, global3[_wgslsmith_index_u32(global2.a, 31u)]) % 32u), 41115u)) | vec4<u32>(global0.x, ~_wgslsmith_div_u32(~79751u, _wgslsmith_dot_vec3_u32(vec3<u32>(10135u, 4294967295u, 1u), vec3<u32>(0u, global2.a, 4294967295u))), min(~global2.a, 1u), (~15649u ^ _wgslsmith_add_u32(global1.a, global0.x)) >> (1u % 32u));
    global3 = array<bool, 31>();
    let var_0 = Struct_2(_wgslsmith_mod_u32(firstLeadingBit(global1.a), firstTrailingBit(_wgslsmith_mult_u32(select(global0.x, global2.a, global1.c), 74181u))), Struct_1(!(!vec2<bool>(true, global2.c)), vec2<bool>(true, true), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, -15015i)), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)) & u_input.a, global0.xy));
    let var_1 = _wgslsmith_sub_vec4_i32(~select(reverseBits(vec4<i32>(var_0.b.c, var_0.b.c, u_input.a, -1i)) | ~vec4<i32>(u_input.a, u_input.a, -39470i, u_input.a), -vec4<i32>(u_input.a, u_input.a, var_0.b.c, var_0.b.c), global2.c), _wgslsmith_div_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.a, var_0.b.c, var_0.b.c, 0i)) | _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 8271i, 1i, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, -1i)), -vec4<i32>(-1i, -12530i, 2147483647i, -2147483647i)), _wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, -11238i), vec4<i32>(u_input.a, -1i, 0i, u_input.a)), abs(vec4<i32>(-1i, u_input.a, u_input.a, 1i) ^ vec4<i32>(-2147483647i, 14450i, u_input.a, 26606i)))));
    let var_2 = var_0.b;
    return vec3<i32>(u_input.a, -firstTrailingBit(var_2.c), 32176i);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(Struct_3(56531u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global1.b))), true), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-28206i, u_input.a) | -1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, 2147483647i, -2147483647i), vec3<i32>(20398i, -2147483647i, u_input.a) | vec3<i32>(-39910i, u_input.a, u_input.a)), -2147483647i), vec3<i32>(_wgslsmith_mult_i32(58431i, -1i), i32(-1i) * -2147483647i, u_input.a | 2881i) | ~func_3()), _wgslsmith_f_op_f32(max(global1.b.x, global2.b.x)), Struct_3(_wgslsmith_sub_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(22250u, global2.a, u_input.b, global1.a), vec4<u32>(global1.a, 0u, u_input.b, global0.x)), _wgslsmith_add_u32(global2.a, global0.x), false), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global2.a, global1.a), global0.zyy) & _wgslsmith_add_u32(global1.a, 0u)), vec2<f32>(1990f, _wgslsmith_f_op_f32(f32(-1f) * -975f)), !global2.c));
    global3 = array<bool, 31>();
    let var_1 = Struct_1(vec2<bool>(false, global1.c), !(!vec2<bool>(-2147483647i != var_0.b, all(vec2<bool>(false, var_0.a.c)))), ~(-var_0.b) | -12169i, ~global0.yy);
    global1 = Struct_3(4294967295u, global1.b, !select(all(select(var_1.a, var_1.a, true)), (var_1.c < u_input.a) | (global1.c & global1.c), var_0.d.c));
    let var_2 = Struct_1(var_1.b, select(vec2<bool>(global3[_wgslsmith_index_u32(40690u, 31u)], (var_1.c << (4294967295u % 32u)) <= firstLeadingBit(var_1.c)), !select(var_1.a, vec2<bool>(global4[_wgslsmith_index_u32(u_input.b, 27u)], true), vec2<bool>(false, true)), _wgslsmith_sub_u32(49994u, global2.a) < ~_wgslsmith_dot_vec4_u32(vec4<u32>(35990u, 1u, u_input.b, 20407u), vec4<u32>(27939u, 0u, var_1.d.x, 90892u))), var_1.c, var_1.d << (var_1.d % vec2<u32>(32u)));
    return Struct_4(Struct_3(~countOneBits(~global2.a), _wgslsmith_f_op_vec2_f32(-global2.b), true), var_0.b, _wgslsmith_f_op_f32(-588f - var_0.c), var_0.a);
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = arg_1;
    let var_1 = arg_0;
    var var_2 = vec3<i32>(reverseBits(u_input.a), select(var_0.b, _wgslsmith_clamp_i32(var_0.b, arg_1.b ^ u_input.a, reverseBits(u_input.a)) & var_0.b, true), u_input.a);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f) * _wgslsmith_f_op_f32(-arg_1.d.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * var_1), _wgslsmith_f_op_f32(max(var_1, global2.b.x)), true))))) + _wgslsmith_f_op_f32(-567f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-173f + arg_0)), func_2().c)));
    var var_4 = abs(vec4<u32>(global2.a, _wgslsmith_div_u32(~global2.a, ~_wgslsmith_clamp_u32(global0.x, global2.a, 15497u)), global1.a << (select(1u, _wgslsmith_mod_u32(global0.x, u_input.b), global4[_wgslsmith_index_u32(17498u, 27u)]) % 32u), ~0u));
    return vec4<bool>(true, global1.c, func_2().d.c, !any(vec4<bool>(true, !var_0.d.c, var_0.d.c, func_2().d.c)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<bool> {
    global3 = array<bool, 31>();
    global3 = array<bool, 31>();
    global3 = array<bool, 31>();
    let var_0 = all(vec4<bool>(all(select(vec4<bool>(true, arg_1, global3[_wgslsmith_index_u32(arg_2.a, 31u)], global3[_wgslsmith_index_u32(u_input.b, 31u)]), vec4<bool>(global2.c, arg_2.c, arg_2.c, false), !vec4<bool>(false, false, global1.c, true))), all(func_4(-1359f, func_2())), all(select(vec2<bool>(false, global2.c), vec2<bool>(global2.c, false), select(vec2<bool>(true, arg_2.c), vec2<bool>(arg_2.c, false), vec2<bool>(true, false)))), arg_3.x == -42639i));
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~global0.ww, vec2<u32>(max(~global0.x, _wgslsmith_clamp_u32(1u, u_input.b, 1u)), abs(_wgslsmith_dot_vec3_u32(global0.xxx, global0.ywz)))), global0.zz);
    return func_4(_wgslsmith_f_op_f32(119f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(817f)), arg_2.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -1294f))), Struct_4(func_2().a, _wgslsmith_div_i32(-_wgslsmith_clamp_i32(u_input.a, arg_0, arg_0), 12598i), 1f, Struct_3(_wgslsmith_div_u32(~62472u, select(global0.x, 30808u, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b)), true))).yxw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(max(reverseBits(select(vec3<u32>(global1.a, global2.a, 0u), global0.yww, false)), global0.xwy) ^ vec3<u32>(_wgslsmith_mod_u32(~global2.a, abs(42041u)), 17524u, ~u_input.b), select(vec3<u32>(4294967295u, global2.a, u_input.b), ~vec3<u32>(~0u, 10585u, global0.x), any(select(func_1(2147483647i, global4[_wgslsmith_index_u32(global2.a, 27u)], Struct_3(u_input.b, vec2<f32>(-569f, global2.b.x), global3[_wgslsmith_index_u32(u_input.b, 31u)]), vec2<i32>(u_input.a, -21807i)), !vec3<bool>(false, false, global2.c), global3[_wgslsmith_index_u32(u_input.b, 31u)]))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(global1.b.x + 1100f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -648f))) - global1.b.x));
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(global2.b));
    var var_2 = Struct_1(select(func_1(1i, !(var_1.x < global1.b.x), func_2().d, vec2<i32>(u_input.a, -1i)).zy, vec2<bool>(global4[_wgslsmith_index_u32(0u, 27u)], global4[_wgslsmith_index_u32(max(u_input.b, global2.a) ^ 1u, 27u)]), vec2<bool>(false, true)), func_1(u_input.a, false, Struct_3(firstTrailingBit(_wgslsmith_mod_u32(0u, var_0.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.b.x, global2.b.x), _wgslsmith_f_op_vec2_f32(ceil(global2.b)))), true), vec2<i32>(-42001i, _wgslsmith_dot_vec2_i32(vec2<i32>(51549i, u_input.a), vec2<i32>(u_input.a, u_input.a))) >> (var_0.yz % vec2<u32>(32u))).yx, u_input.a, ((_wgslsmith_add_vec2_u32(global0.zw, vec2<u32>(global0.x, 97506u)) >> (~vec2<u32>(u_input.b, var_0.x) % vec2<u32>(32u))) & vec2<u32>(131357u >> (0u % 32u), global0.x)) >> (global0.zw % vec2<u32>(32u)));
    let var_3 = ~global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-647f)) * func_2().c), vec3<u32>(_wgslsmith_mod_u32(global0.x, var_3), _wgslsmith_mod_u32(var_3, u_input.b), 0u) | (~(vec3<u32>(var_0.x, 0u, var_0.x) >> (vec3<u32>(global1.a, 26063u, 1u) % vec3<u32>(32u))) ^ vec3<u32>(~1u, ~u_input.b, 1u ^ global0.x)), ~_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.a, u_input.a)), ~vec2<i32>(u_input.a, 49866i) << (firstLeadingBit(var_2.d) % vec2<u32>(32u))));
}

