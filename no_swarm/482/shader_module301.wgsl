struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(2147483647i, -50421i), vec2<i32>(4826i, -21352i), vec2<i32>(-1i, -553i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(281i, 2147483647i), vec2<i32>(13923i, 1i), vec2<i32>(7277i, -1i), vec2<i32>(i32(-2147483648), -42881i), vec2<i32>(0i, 26726i), vec2<i32>(48540i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(-31483i, 0i), vec2<i32>(23187i, 2012i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, -20524i));

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), 19597i, 1i, i32(-2147483648));

var<private> global3: array<bool, 27>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global2 = vec4<i32>(-59283i, global0[_wgslsmith_index_u32(~90532u, 2u)], abs(0i), _wgslsmith_div_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(36443u, 2u)], _wgslsmith_mult_i32(global2.x ^ global2.x, select(3000i, -40220i, global3[_wgslsmith_index_u32(u_input.a.x, 27u)]))), global0[_wgslsmith_index_u32(~8839u, 2u)]));
    global2 = -firstTrailingBit(vec4<i32>(global2.x, reverseBits(global0[_wgslsmith_index_u32(min(63167u, u_input.a.x), 2u)]), global2.x, 1i));
    global3 = array<bool, 27>();
    global1 = array<vec2<i32>, 16>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), select(global0[_wgslsmith_index_u32(~u_input.a.x, 2u)], _wgslsmith_mult_i32(-2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 18500u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 17171u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 86169u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(59618u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 0u, 17973u), vec4<u32>(u_input.a.x, 89078u, u_input.a.x, u_input.a.x))), 2u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a.x), abs(vec2<u32>(4498u, 95945u))), 27u)]), 939f, -67839i, 4294967295u);
    return global0[_wgslsmith_index_u32(~32144u, 2u)];
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<i32, 2>();
    let var_0 = true;
    let var_1 = Struct_3(Struct_1(2403f, 25334i, -656f, select(global0[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global2.x, -2147483647i), -vec4<i32>(11569i, -67188i, global0[_wgslsmith_index_u32(1u, 2u)], 1i)), select(true, var_0, all(vec3<bool>(false, false, global3[_wgslsmith_index_u32(6082u, 27u)])))), u_input.a.x >> (_wgslsmith_mod_u32(~17824u, 14315u) % 32u)), 11396u, var_0, Struct_1(168f, func_3(), -534f, global0[_wgslsmith_index_u32(select(abs(4294967295u) ^ countOneBits(u_input.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(53115u, 4294967295u), countOneBits(u_input.a.zz)), var_0), 2u)], 15220u));
    let var_2 = Struct_3(Struct_1(_wgslsmith_div_f32(var_1.a.a, -512f), -(i32(-1i) * -1i), _wgslsmith_f_op_f32(floor(-1146f)), func_3(), ~firstLeadingBit(var_1.b >> (var_1.b % 32u))), var_1.a.e, false & global3[_wgslsmith_index_u32(var_1.b, 27u)], Struct_1(var_1.a.c, -select(_wgslsmith_sub_i32(global2.x, -2147483647i), i32(-1i) * -2147483647i, !var_0), var_1.a.c, var_1.d.d, 0u));
    global3 = array<bool, 27>();
    return Struct_1(-478f, var_1.d.b | var_2.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f))), 1i, ~(var_1.d.e | _wgslsmith_clamp_u32(15661u, _wgslsmith_mult_u32(21863u, 106101u), u_input.a.x)));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x << (33253u % 32u), u_input.a.x, 4294967295u), ~(~19503u)), min(1u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x ^ 11888u)), u_input.a.x, firstLeadingBit(u_input.a.x)));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(129f + 1000f) * _wgslsmith_f_op_f32(round(-1548f))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(817f)))) * 1f), var_0.d << (select(u_input.a.x, 1u, true) % 32u), _wgslsmith_sub_u32(7096u, 1u)), var_0.e, global0[_wgslsmith_index_u32(1u, 2u)] == ~var_0.d, Struct_1(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, 2147483647i) >> (~u_input.a.x % 32u), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_0.e, u_input.a.x | 22124u), 2u)]), -928f, ~max(-global0[_wgslsmith_index_u32(u_input.a.x, 2u)], i32(-1i) * -59729i), ~(~69903u)));
    let var_2 = vec3<bool>(!(!global3[_wgslsmith_index_u32(var_1.d.e, 27u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a + var_1.a.a) * _wgslsmith_f_op_f32(-2269f - -1000f))) <= _wgslsmith_div_f32(func_2(vec4<u32>(4294967295u, u_input.a.x, 45657u, u_input.a.x) >> (vec4<u32>(var_0.e, var_1.d.e, 1u, 4294967295u) % vec4<u32>(32u))).a, _wgslsmith_f_op_f32(f32(-1f) * -111f)), all(select(vec4<bool>(var_1.c, 0u <= var_0.e, true, var_1.c), vec4<bool>(false, var_1.a.c != -169f, select(var_1.c, false, true), true), true & !global3[_wgslsmith_index_u32(4294967295u, 27u)])));
    let var_3 = Struct_2(global2.x, var_0.c, var_1.c, 1u, Struct_1(var_0.a, 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d.a)))), _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, var_1.a.d), 0i), 1u));
    let var_4 = -min(0i, _wgslsmith_mod_i32(var_1.d.b, -4800i));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~25860u, 42155u, ~(~(~u_input.a.x) | _wgslsmith_mult_u32(44364u, 92018u)));
    var var_1 = ~4294967295u;
    global1 = array<vec2<i32>, 16>();
    var var_2 = func_1();
    var var_3 = Struct_5(~countOneBits(min(vec2<u32>(var_2.b, var_0.x) & vec2<u32>(var_0.x, 0u), ~vec2<u32>(var_2.d.e, u_input.a.x))));
    var var_4 = vec2<i32>(~(-2147483647i), ~(~reverseBits(func_1().d.d)));
    let var_5 = ~(-2147483647i >> (~4294967295u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), -266f, global2.zz, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~1u, ~u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(34480u, 1u, 1u, var_0.x), vec4<u32>(var_3.a.x, ~50385u, ~29653u, 15914u))));
}

