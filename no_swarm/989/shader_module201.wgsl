struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6>;

var<private> global1: array<u32, 1> = array<u32, 1>(36007u);

var<private> global2: Struct_4;

var<private> global3: array<bool, 25> = array<bool, 25>(false, false, true, false, false, true, false, true, true, true, true, true, true, false, true, false, true, false, true, true, false, true, true, true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    let var_0 = ~_wgslsmith_add_vec3_i32(vec3<i32>(0i, 74975i, u_input.a.x), u_input.a.xxy >> (select(arg_2, ~vec3<u32>(arg_1, arg_2.x, arg_2.x), !global3[_wgslsmith_index_u32(28192u, 25u)]) % vec3<u32>(32u)));
    global3 = array<bool, 25>();
    global2 = Struct_4(Struct_3(global2.a.a, select(!global2.a.b, vec4<bool>(true, any(global2.a.b), !global2.a.a.x, true), global2.a.b), _wgslsmith_f_op_f32(-678f * _wgslsmith_f_op_f32(-194f - -1370f))));
    var var_1 = firstLeadingBit(_wgslsmith_clamp_vec2_u32(select(~(~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(19391u, 1u)])), u_input.e.yy, any(select(vec2<bool>(global2.a.a.x, true), global2.a.a, false))), vec2<u32>(~69614u, 4294967295u), ~arg_2.xy));
    let var_2 = firstTrailingBit(u_input.c);
    return u_input.e.x;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> i32 {
    var var_0 = Struct_1(vec4<u32>(4044u, ~firstLeadingBit(63153u), u_input.e.x, global1[_wgslsmith_index_u32(firstTrailingBit(func_3(global2.a.c, 20450u, _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.e.x, 1u)], 0u, 20563u), vec3<u32>(global1[_wgslsmith_index_u32(1u, 1u)], 1u, global1[_wgslsmith_index_u32(1u, 1u)])))), 1u)]), !vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(10707u, u_input.e.x), 25u)], true, !global2.a.b.x, global2.a.b.x));
    let var_1 = firstTrailingBit(80283u);
    global1 = array<u32, 1>();
    global1 = array<u32, 1>();
    let var_2 = _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~u_input.e.x, 1u)], ~(~134384u), global1[_wgslsmith_index_u32(37058u, 1u)]);
    return max(arg_0, i32(-1i) * -25768i);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(abs(~(vec4<u32>(4294967295u, 4294967295u, u_input.e.x, 1u) << (vec4<u32>(1u, 0u, 67991u, global1[_wgslsmith_index_u32(u_input.e.x, 1u)]) % vec4<u32>(32u))))), select(global2.a.b, select(!global2.a.b, !select(vec4<bool>(true, false, false, global2.a.b.x), global2.a.b, vec4<bool>(global2.a.a.x, global2.a.a.x, true, true)), global2.a.a.x), global2.a.a.x));
    global3 = array<bool, 25>();
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(668f, _wgslsmith_f_op_f32(781f * global2.a.c)))));
    var var_3 = any(select(var_0.b, vec4<bool>(true, ~var_0.a.x == ~54748u, all(vec4<bool>(global3[_wgslsmith_index_u32(0u, 25u)], true, var_0.b.x, true)), any(select(vec2<bool>(false, false), vec2<bool>(var_0.b.x, true), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 25u)]))), !(!select(vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 25u)], false, false, global3[_wgslsmith_index_u32(1u, 25u)]), vec4<bool>(false, true, false, var_0.b.x), vec4<bool>(global3[_wgslsmith_index_u32(58102u, 25u)], global2.a.a.x, false, true)))));
    return Struct_1(var_0.a, select(var_0.b, vec4<bool>(true || (u_input.a.x <= -10299i), false, func_2(0i, vec4<f32>(global2.a.c, 1137f, global2.a.c, -987f)) <= _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, -5246i, -2147483647i), u_input.a), true), 1u >= var_0.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> Struct_4 {
    global0 = array<vec3<f32>, 6>();
    global1 = array<u32, 1>();
    return Struct_4(arg_3);
}

fn func_5(arg_0: Struct_4, arg_1: bool) -> Struct_4 {
    global1 = array<u32, 1>();
    global3 = array<bool, 25>();
    global2 = arg_0;
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(7223u, 1u)], u_input.e.x), _wgslsmith_mod_u32(~u_input.e.x, global1[_wgslsmith_index_u32(max(57784u, u_input.e.x), 1u)])) | func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-629f + 2178f)), 470u, reverseBits(reverseBits(vec3<u32>(u_input.e.x, u_input.e.x, global1[_wgslsmith_index_u32(51880u, 1u)])))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e.x, 7047u << (0u % 32u)), 1u)]);
    let var_1 = Struct_2(func_1(), u_input.a.xw, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.c, arg_0.a.c, 1606f, _wgslsmith_f_op_f32(step(2380f, global2.a.c))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -3169f, _wgslsmith_f_op_f32(global2.a.c + global2.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.c))))), global2.a.c);
    return func_4(Struct_1(~var_1.a.a, vec4<bool>(true, true, true, true)), ~1i | ~(_wgslsmith_add_i32(var_1.b.x, u_input.a.x) & ~var_1.b.x), -12048i, Struct_3(vec2<bool>(any(!vec3<bool>(false, var_1.a.b.x, false)), true), !select(var_1.a.b, global2.a.b, !global2.a.b), -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(func_4(func_1(), ~u_input.a.x, u_input.a.x, global2.a), any(func_4(func_1(), 13932i, 0i, global2.a).a.b));
    let var_0 = firstLeadingBit(func_1().a);
    global2 = func_4(Struct_1(var_0, !(!(!vec4<bool>(global2.a.b.x, false, global3[_wgslsmith_index_u32(30509u, 25u)], global3[_wgslsmith_index_u32(u_input.e.x, 25u)])))), u_input.b & _wgslsmith_clamp_i32(-38043i, u_input.d.x, u_input.c), 1i, global2.a);
    global2 = func_5(Struct_4(global2.a), false);
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(-646f, global2.a.c)), -956f, func_4(Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], 757u, 0u, u_input.e.x), global2.a.b), u_input.d.x, u_input.a.x, global2.a).a.c), vec3<f32>(1630f, _wgslsmith_f_op_f32(f32(-1f) * -1305f), func_5(Struct_4(Struct_3(global2.a.b.yz, vec4<bool>(false, global2.a.a.x, true, global2.a.a.x), 200f)), global3[_wgslsmith_index_u32(4294967295u, 25u)]).a.c))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(0u, 6u)])), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(55527u, 6u)] + vec3<f32>(998f, global2.a.c, global2.a.c))))), global2.a.c, global2.a.c, u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a.c, -2353f, global2.a.c, global2.a.c), vec4<f32>(global2.a.c, global2.a.c, -515f, -139f), vec4<bool>(global2.a.b.x, true, true, false))))) + vec4<f32>(_wgslsmith_f_op_f32(global2.a.c - global2.a.c), global2.a.c, _wgslsmith_f_op_f32(-1719f * 106f), -968f))));
}

