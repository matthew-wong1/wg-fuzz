struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 24463u;

var<private> global1: array<bool, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> bool {
    global1 = array<bool, 2>();
    let var_0 = min(-arg_1 & firstTrailingBit(select(arg_1, arg_1 | vec3<i32>(40561i, 0i, arg_1.x), any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e, 2u)], true, global1[_wgslsmith_index_u32(arg_0, 2u)])))), _wgslsmith_mult_vec3_i32(vec3<i32>(abs(abs(arg_1.x)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), arg_1.x), min(~2147483647i, u_input.d)), vec3<i32>(~(~(-9950i)), -(~(-1i)), _wgslsmith_mult_i32(u_input.d, -arg_1.x))));
    global1 = array<bool, 2>();
    let var_1 = Struct_4(Struct_2(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 4294967295u)), select(~vec2<u32>(4294967295u, 1u), abs(vec2<u32>(4294967295u, 29148u)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(15532u, 2u)], global1[_wgslsmith_index_u32(u_input.e, 2u)]))))), -1796f);
    global1 = array<bool, 2>();
    return any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], true | any(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(41883u, 2u)], true)), false & (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 76081u), vec2<u32>(27413u, u_input.e)) > 10429u), true || global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a, arg_0), vec2<u32>(u_input.e, 26126u)), 2u)]));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_5(true);
    let var_1 = Struct_3(Struct_1(-2435f, ~4294967295u, !func_3(76637u >> (u_input.e % 32u), vec3<i32>(-1i, u_input.a, 0i))), u_input.d >> (_wgslsmith_add_u32(abs(abs(u_input.e)), u_input.e) % 32u), global1[_wgslsmith_index_u32(~(~firstLeadingBit(max(u_input.e, u_input.e))), 2u)]);
    return Struct_4(Struct_2(_wgslsmith_mod_u32(108914u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 1u, u_input.e), vec3<u32>(0u, u_input.e, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.a, var_1.a.a)), -1236f))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: bool, arg_3: u32) -> Struct_1 {
    var var_0 = vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-u_input.c, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.c.x, u_input.b), u_input.c)), _wgslsmith_clamp_i32(countOneBits(~u_input.a), 0i, u_input.a), u_input.c.x, 2147483647i);
    global1 = array<bool, 2>();
    var var_1 = max(select(u_input.c, _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.x, 2147483647i, var_0.x, -1i)) >> (select(vec4<u32>(18393u, arg_0.a.a, arg_3, arg_3), vec4<u32>(arg_3, u_input.e, u_input.e, 30223u), vec4<bool>(true, false, arg_1.a, arg_2)) % vec4<u32>(32u)), select(u_input.c, u_input.c, !vec4<bool>(arg_1.a, true, arg_2, arg_1.a)), u_input.c), true || !(!arg_2)), ~(~vec4<i32>(var_0.x, 23240i, var_0.x, -2147483647i) >> (abs(countOneBits(vec4<u32>(2685u, arg_3, 4294967295u, 0u))) % vec4<u32>(32u))));
    global0 = select(~_wgslsmith_mult_u32(min(16346u, 0u), 1u), _wgslsmith_dot_vec4_u32(firstTrailingBit(min(vec4<u32>(arg_0.a.a, arg_0.a.a, 2576u, 0u), vec4<u32>(1u, 28626u, 44322u, 2650u))), reverseBits(max(vec4<u32>(7711u, arg_3, 4294967295u, 4294967295u), vec4<u32>(arg_0.a.a, arg_3, 34519u, u_input.e)))), !arg_2) << (26497u % 32u);
    var var_2 = vec4<i32>(_wgslsmith_add_i32(1i, _wgslsmith_div_i32(-9186i, u_input.c.x) >> (_wgslsmith_div_u32(0u, 4294967295u) % 32u)), 1i, 2147483647i, u_input.d) >> ((vec4<u32>(firstLeadingBit(3343u), _wgslsmith_add_u32(4294967295u, func_2().a.a), 56998u, _wgslsmith_clamp_u32(4294967295u >> (1u % 32u), max(u_input.e, arg_3), u_input.e ^ 64945u)) << ((abs(vec4<u32>(arg_3, u_input.e, arg_0.a.a, arg_0.a.a)) ^ vec4<u32>(4294967295u, ~47973u, _wgslsmith_mult_u32(u_input.e, arg_3), arg_0.a.a)) % vec4<u32>(32u))) % vec4<u32>(32u));
    return Struct_1(-1194f, arg_0.a.a, _wgslsmith_f_op_f32(arg_0.b - -1562f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + arg_0.b));
}

fn func_1() -> Struct_3 {
    global0 = ~u_input.e >> ((17293u ^ (~(0u ^ u_input.e) ^ u_input.e)) % 32u);
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1023f);
    var var_1 = Struct_3(func_4(func_2(), Struct_5(var_0 != _wgslsmith_f_op_f32(1377f + 266f)), true, 4294967295u), u_input.c.x >> (_wgslsmith_div_u32(28337u >> (_wgslsmith_sub_u32(22414u, u_input.e) % 32u), max(firstTrailingBit(u_input.e), ~4294967295u)) % 32u), (1u <= u_input.e) == global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(42783u, u_input.e, 48115u, u_input.e) << (~vec4<u32>(u_input.e, 55175u, u_input.e, 29574u) % vec4<u32>(32u)), vec4<u32>(reverseBits(u_input.e), _wgslsmith_div_u32(96529u, 1u), firstLeadingBit(54540u), u_input.e)), 2u)]);
    let var_2 = Struct_5(select(true, var_1.c, any(select(select(vec2<bool>(false, false), vec2<bool>(var_1.a.c, true), vec2<bool>(true, var_1.c)), vec2<bool>(true, true), !vec2<bool>(global1[_wgslsmith_index_u32(86885u, 2u)], false)))));
    global0 = ~(~0u);
    return Struct_3(var_1.a, ~(u_input.d >> (u_input.e % 32u)), global1[_wgslsmith_index_u32(u_input.e, 2u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec2<i32>(-(~(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, var_0.b, u_input.c.x), u_input.c) >> (abs(9063u) % 32u))), ~reverseBits(1i));
    let var_2 = u_input.c & ~(vec4<i32>(_wgslsmith_div_i32(0i, var_0.b), abs(32484i), 0i << (0u % 32u), _wgslsmith_sub_i32(var_0.b, var_0.b)) ^ vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), u_input.a, ~(-1i)));
    let var_3 = vec2<u32>(u_input.e, abs(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, var_0.a.b, u_input.e, 0u), vec4<u32>(4294967295u, 4294967295u, var_0.a.b, 1u), vec4<bool>(true, var_0.a.c, true, global1[_wgslsmith_index_u32(31250u, 2u)])) & vec4<u32>(var_0.a.b, var_0.a.b, 80909u, var_0.a.b), firstLeadingBit(vec4<u32>(697u, 0u, 4294967295u, 4294967295u) >> (vec4<u32>(1u, u_input.e, 4294967295u, u_input.e) % vec4<u32>(32u))))));
    global1 = array<bool, 2>();
    let var_4 = -80522i << (u_input.e % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(1721f)), (-vec2<i32>(-56052i, 2147483647i) << (_wgslsmith_sub_vec2_u32(~vec2<u32>(96649u, 71285u), vec2<u32>(62614u, var_0.a.b)) % vec2<u32>(32u))) & select(max(countOneBits(vec2<i32>(1i, 18456i)), var_2.wy), (var_1 & var_2.wy) | u_input.c.yw, false), _wgslsmith_add_vec4_i32(u_input.c, var_2), var_0.a.a);
}

