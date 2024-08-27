struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec4<f32> = vec4<f32>(159f, -406f, -273f, -1810f);

var<private> global1: array<vec3<f32>, 32>;

var<private> global2: array<vec3<u32>, 32>;

var<private> global3: vec3<f32> = vec3<f32>(1000f, -1729f, 1500f);

var<private> global4: array<Struct_3, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    global2 = array<vec3<u32>, 32>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-305f)), _wgslsmith_f_op_f32(-451f - global0.x))), !(!all(vec4<bool>(arg_1, arg_1, arg_1, false))))), global0.x);
    global2 = array<vec3<u32>, 32>();
    global1 = array<vec3<f32>, 32>();
    let var_1 = arg_1;
    return abs(~(~(~0i)));
}

fn func_2(arg_0: bool, arg_1: f32) -> vec4<i32> {
    let var_0 = ~global2[_wgslsmith_index_u32(24718u, 32u)];
    let var_1 = _wgslsmith_sub_u32(31160u, ~var_0.x);
    let var_2 = Struct_1(~0i);
    var var_3 = arg_0;
    let var_4 = global4[_wgslsmith_index_u32(var_0.x, 28u)];
    return firstLeadingBit(vec4<i32>(-max(u_input.a | -8907i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 0i), vec3<i32>(u_input.a, u_input.a, 13928i))), _wgslsmith_sub_i32(func_3(Struct_1(0i), var_4.a.x), 1i) >> (reverseBits(120u) % 32u), -19188i, ~var_2.a));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = ~_wgslsmith_mult_u32(2753u, _wgslsmith_div_u32(1u, ~select(arg_2.c, arg_2.c, false)));
    global2 = array<vec3<u32>, 32>();
    global2 = array<vec3<u32>, 32>();
    let var_1 = Struct_2(func_2(!(2555f == _wgslsmith_f_op_f32(round(global3.x))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-298f + _wgslsmith_f_op_f32(1196f + 595f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-854f, _wgslsmith_f_op_f32(-1730f - global3.x))) - global3.x))), ~(~(~1u)), arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.x, 353f)), _wgslsmith_f_op_f32(f32(-1f) * -375f)))));
    let var_2 = Struct_3(!select(vec4<bool>(true, true, any(vec2<bool>(true, false)), true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, false), true), true));
    return Struct_1(var_1.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_3) -> Struct_1 {
    var var_0 = abs(vec4<u32>(_wgslsmith_clamp_u32(18524u, ~arg_0.c, _wgslsmith_dot_vec3_u32(arg_1.a, ~vec3<u32>(0u, arg_0.c, 0u))), _wgslsmith_add_u32(arg_1.a.x, _wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(0u, 48177u, arg_1.a.x))), 4294967295u, arg_1.b.c));
    var var_1 = Struct_5(vec3<u32>(4294967295u, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.x, 5219u), ~4294967295u), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(81843u, 37796u), _wgslsmith_clamp_u32(arg_1.b.c, 41093u, arg_1.b.c), var_0.x)), Struct_2((select(arg_1.b.a, arg_1.b.a, true) & arg_0.a) & -arg_1.b.a, _wgslsmith_f_op_f32(select(1627f, arg_0.b, !select(arg_2.a.x, arg_2.a.x, arg_2.a.x))), (_wgslsmith_mult_u32(arg_0.c, 65562u) << ((arg_1.a.x | var_0.x) % 32u)) << (var_0.x % 32u), arg_1.b.d, arg_1.b.b));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -171f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x))), -2250f)));
    var var_3 = 12585u;
    var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.a, ~vec3<u32>(441u, var_1.a.x, 4294967295u) ^ vec3<u32>(var_0.x, 9250u, 1u)), 3684u, ~arg_0.c, _wgslsmith_div_u32(0u, _wgslsmith_sub_u32(arg_1.b.c, arg_1.a.x)));
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<u32>(1u, 1u, 1u, 1u));
    global3 = _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, 59045u), 32u)] * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global3.x, global3.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(435f, global3.x, 1061f))))) + _wgslsmith_f_op_vec3_f32(trunc(global1[_wgslsmith_index_u32(abs(var_0.x), 32u)]))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -515f, _wgslsmith_f_op_f32(f32(-1f) * -437f))))));
    var var_1 = vec3<u32>(var_0.x ^ ~var_0.x, var_0.x, ~(~_wgslsmith_mod_u32(97347u, 1u)) & var_0.x);
    var var_2 = func_4(Struct_2(abs(_wgslsmith_mod_vec4_i32(~vec4<i32>(-15073i, 32324i, u_input.a, -41403i), vec4<i32>(0i, -2147483647i, u_input.a, 1i))), global0.x, ~4294967295u, func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0.zw))), _wgslsmith_div_vec4_f32(vec4<f32>(-319f, global3.x, global0.x, -1295f), vec4<f32>(global3.x, -1798f, global0.x, global0.x)), Struct_2(vec4<i32>(u_input.a, u_input.a, 15576i, u_input.a) ^ vec4<i32>(7260i, 59834i, u_input.a, u_input.a), global0.x, var_1.x & var_1.x, Struct_1(u_input.a), -273f)), -1138f), Struct_5(abs(global2[_wgslsmith_index_u32(~abs(13914u), 32u)]), Struct_2(vec4<i32>(-1i) * -vec4<i32>(-21837i, u_input.a, -1i, 1i), -120f, ~5894u ^ var_0.x, Struct_1(~u_input.a), _wgslsmith_div_f32(-1000f, 428f))), Struct_3(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)));
    global1 = array<vec3<f32>, 32>();
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(abs(global3.x))), _wgslsmith_f_op_f32(-global0.x), global3.x, _wgslsmith_f_op_f32(max(-405f, 714f)))));
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global3.x + -792f), _wgslsmith_f_op_f32(-global3.x))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global3.xy)))), vec4<f32>(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(floor(-210f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(515f, global3.x, false)), 1510f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -523f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 897f))))), Struct_2(~firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.a, 2147483647i, var_2.a, var_2.a), vec4<i32>(3500i, -90426i, -2147483647i, -17102i))), global3.x, 59495u, func_4(Struct_2(vec4<i32>(u_input.a, -6248i, u_input.a, var_2.a) ^ vec4<i32>(var_2.a, -1i, 0i, -2147483647i), _wgslsmith_div_f32(global3.x, global3.x), abs(var_1.x), func_1(vec2<f32>(-662f, global3.x), vec4<f32>(global0.x, -1789f, global3.x, global3.x), Struct_2(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), global3.x, var_1.x, Struct_1(48515i), 1000f)), -739f), Struct_5(vec3<u32>(var_0.x, var_0.x, var_0.x), Struct_2(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), global3.x, 4294967295u, Struct_1(u_input.a), global3.x)), Struct_3(vec4<bool>(true, true, true, true))), -1785f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, var_1.x));
}

