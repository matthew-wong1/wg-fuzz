struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(true, vec2<f32>(-198f, 1455f), true, vec4<f32>(593f, -1397f, -1207f, 330f), vec2<i32>(1332i, 1322i)), Struct_3(1i), vec4<i32>(-20933i, 0i, -6696i, -14850i));

var<private> global1: array<f32, 12> = array<f32, 12>(-432f, 1671f, -1397f, 365f, -1807f, -985f, -1993f, 426f, -700f, 1000f, 485f, 859f);

var<private> global2: array<vec4<i32>, 31>;

var<private> global3: array<f32, 5> = array<f32, 5>(-260f, -403f, 1103f, -475f, -561f);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_3) -> u32 {
    global3 = array<f32, 5>();
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.x)))))));
    let var_1 = Struct_4(global0.a, Struct_3(countOneBits(1i)), vec4<i32>(u_input.a.x, -1i, min(max(abs(62933i), _wgslsmith_sub_i32(arg_3.a, 16149i)), global0.c.x), ~_wgslsmith_mult_i32(-51192i, global0.a.e.x)));
    global0 = Struct_4(Struct_1(!var_1.a.a, global0.a.b, select(all(select(vec2<bool>(var_1.a.a, global0.a.a), vec2<bool>(true, arg_0), false)), true, !(arg_1 >= 4294967295u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global0.a.d, vec4<f32>(-1000f, 215f, global1[_wgslsmith_index_u32(16378u, 12u)], var_1.a.d.x)))), select(firstLeadingBit(u_input.a.yz << (vec2<u32>(arg_1, 89189u) % vec2<u32>(32u))), (vec2<i32>(1i, arg_3.a) >> (arg_2.yz % vec2<u32>(32u))) >> (arg_2.xx % vec2<u32>(32u)), !global0.a.a)), arg_3, vec4<i32>(min(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, -55418i), var_1.c.ww), arg_3.a), -20176i, -1i >> (~(~arg_2.x) % 32u), reverseBits(~(arg_3.a | u_input.a.x))));
    global3 = array<f32, 5>();
    return 1u;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0.b;
    global2 = array<vec4<i32>, 31>();
    let var_1 = _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 5u)] - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(var_0, var_0, 4294967295u), _wgslsmith_sub_u32(func_3(false, 4294967295u, vec3<u32>(1u, 4294967295u, 27653u), global0.b), arg_0.b), arg_0.b), 5u)] * 122f));
    global1 = array<f32, 12>();
    let var_2 = vec4<u32>(~arg_0.b, ~func_3(arg_0.a && true, 4294967295u, ~vec3<u32>(42115u, 0u, var_0), Struct_3(-1i)) ^ _wgslsmith_clamp_u32(1u, ~arg_0.b, ~arg_0.b), _wgslsmith_sub_u32(var_0 | _wgslsmith_div_u32(max(var_0, var_0), abs(var_0)), arg_0.b), arg_0.b);
    return arg_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> bool {
    global1 = array<f32, 12>();
    var var_0 = arg_1;
    var var_1 = func_2(Struct_2(all(vec4<bool>(global0.a.a != true, false, false, select(false, global0.a.c, false))), ~(~1u)));
    var var_2 = Struct_1(all(vec4<bool>(true, global0.a.c, !var_1.a, true)) && (func_2(func_2(Struct_2(var_1.a, 0u))).a == !any(vec4<bool>(global0.a.c, global0.a.c, true, var_1.a))), vec2<f32>(global1[_wgslsmith_index_u32(func_2(Struct_2(true, var_1.b | var_1.b)).b, 12u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.b, var_1.b), 1u << (var_1.b % 32u)) << (~21400u % 32u), 5u)]), all(vec4<bool>(~1u > var_1.b, var_1.a, var_1.a, all(select(vec2<bool>(false, false), vec2<bool>(true, global0.a.a), vec2<bool>(true, var_1.a))))), vec4<f32>(_wgslsmith_f_op_f32(2091f - global0.a.b.x), _wgslsmith_f_op_f32(-global0.a.d.x), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(func_3(var_1.a, var_1.b, vec3<u32>(53321u, 1u, var_1.b), global0.b), var_1.b), ~var_1.b), 5u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, var_1.b, var_1.b) << (func_2(Struct_2(var_1.a, 4294967295u)).b % 32u), 5u)] - global1[_wgslsmith_index_u32(1u << (0u % 32u), 12u)])), firstTrailingBit(~(~vec2<i32>(arg_1, -1i))));
    let var_3 = Struct_1(any(vec2<bool>(true, true)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1357f, 341f, any(vec3<bool>(true, global0.a.a, var_2.c)))), _wgslsmith_f_op_f32(-global0.a.d.x)), _wgslsmith_f_op_f32(1067f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1815f))))), any(select(vec4<bool>(any(vec4<bool>(false, var_2.a, var_1.a, global0.a.c)), !var_2.a, global0.a.c, var_1.a), select(vec4<bool>(true, true, global0.a.a, var_1.a), !vec4<bool>(true, var_1.a, var_1.a, true), global0.a.a), !select(vec4<bool>(var_2.c, true, global0.a.a, false), vec4<bool>(var_1.a, true, false, global0.a.a), var_1.a))), _wgslsmith_f_op_vec4_f32(-global0.a.d), var_2.e);
    return u_input.a.x > _wgslsmith_mult_i32(select(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, var_2.e.x, var_2.e.x, var_3.e.x), global2[_wgslsmith_index_u32(51235u, 31u)]), 44680i), ~_wgslsmith_clamp_i32(var_2.e.x, -98564i, global0.a.e.x), false), 1i << (var_1.b % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 5>();
    let var_0 = !(func_1(firstLeadingBit(~u_input.a.xz), -45903i) || true);
    let var_1 = Struct_4(Struct_1(any(select(vec2<bool>(global0.a.a, false), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(56194u, 12u)], global1[_wgslsmith_index_u32(20702u, 12u)]))), !(!var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(3201u, 12u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_f32(trunc(316f)), 1675f) * vec4<f32>(_wgslsmith_f_op_f32(global0.a.d.x * 1481f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 12u)] * global1[_wgslsmith_index_u32(1u, 12u)]), global0.a.b.x, 393f)), abs(vec2<i32>(-2147483647i, global0.c.x))), global0.b, global0.c);
    global0 = Struct_4(global0.a, var_1.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(-65549i, global0.a.e.x, -1i, _wgslsmith_div_i32(var_1.b.a, u_input.a.x)), ~u_input.a, _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(5276u, 31u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), vec4<i32>(-24935i, 16053i, -3642i, 2147483647i)))) << (_wgslsmith_mult_vec4_u32(reverseBits(abs(vec4<u32>(3862u, 1u, 1u, 4294967295u))), countOneBits(vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u)));
    global2 = array<vec4<i32>, 31>();
    var var_2 = global1[_wgslsmith_index_u32(~firstTrailingBit(~(~1u)), 12u)];
    let var_3 = (vec4<u32>(1u, 1u, ~(~0u), 1u) << (firstLeadingBit(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), firstTrailingBit(vec4<u32>(1u, 1u, 46001u, 14758u)))), ~(~select(vec4<u32>(4294967295u, 6230u, 21505u, 18381u), vec4<u32>(32733u, 5470u, 4294967295u, 72784u), false))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(-42273i));
}

