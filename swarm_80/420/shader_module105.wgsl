struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: Struct_4;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.b.a.xy - vec2<f32>(global1.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-875f))))) * global1.a.d.a.xz);
    var_0 = _wgslsmith_f_op_vec2_f32(-global1.a.c.xx);
    global0 = array<f32, 5>();
    var var_1 = global1.e.x;
    global0 = array<f32, 5>();
    return ~countOneBits(u_input.a);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> u32 {
    var var_0 = !vec3<bool>(true, global1.d.x, !(select(global1.d.x, false, global1.d.x) && true));
    let var_1 = global1.a.b;
    let var_2 = var_1.c.x;
    return _wgslsmith_div_u32(firstLeadingBit(func_3()), arg_0);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>) -> Struct_4 {
    let var_0 = vec2<i32>(~(-2728i), max(firstTrailingBit(23851i), 71298i));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-global1.a.c.wxz), global1.b, select(global1.a.d.c, vec2<bool>(!(!global1.d.x), global1.e.x != -8023i), global1.d.xy));
    let var_2 = vec3<i32>(-(abs(global1.e.x & var_0.x) >> ((select(1u, u_input.a, global1.d.x) >> (1u % 32u)) % 32u)), _wgslsmith_clamp_i32(-1i, 0i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global1.e.x, -42817i, global1.e.x, var_0.x), vec4<i32>(global1.e.x, 3812i, global1.e.x, global1.e.x), vec4<i32>(global1.e.x, 0i, var_0.x, -2147483647i)), select(abs(vec4<i32>(var_0.x, global1.e.x, var_0.x, global1.e.x)), vec4<i32>(var_0.x, -46838i, var_0.x, global1.e.x), global1.d))), ~(max(1i, var_0.x) >> (4294967295u % 32u)));
    let var_3 = var_2.zx;
    let var_4 = var_1.b.a.x ^ ~func_3();
    return Struct_4(Struct_3(~var_1.b.a.ywy, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1332f, 320f)), var_1.b, var_1.c), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 433f, var_1.a.x, global0[_wgslsmith_index_u32(var_1.b.b, 5u)])))), var_1, global1.b), var_1.b, global0[_wgslsmith_index_u32(67693u, 5u)], select(!vec4<bool>(!global1.a.b.c.x, var_1.c.x, !var_1.c.x, global1.d.x), vec4<bool>(all(!var_1.c), true, global1.e.x >= ~var_3.x, true), vec4<bool>(true, select(global0[_wgslsmith_index_u32(global1.b.b, 5u)] <= global0[_wgslsmith_index_u32(41822u, 5u)], all(vec4<bool>(var_1.c.x, false, global1.d.x, true)), all(global1.d)), false, arg_1.x < _wgslsmith_f_op_f32(arg_0 + arg_0))), global1.e << (~global1.b.a.xw % vec2<u32>(32u)));
}

fn func_1() -> Struct_5 {
    global1 = func_4(global0[_wgslsmith_index_u32(~func_2(4294967295u, ~(~global1.a.d.b.a.xwy)), 5u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.b.a.zx) - global1.a.c.wz)));
    var var_0 = all(global1.d);
    var var_1 = Struct_2(global1.a.c.xyx, Struct_1(vec4<u32>(42202u, 4294967295u, 71688u, global1.b.a.x), u_input.a), !global1.d.yz);
    var_0 = true;
    var_1 = Struct_2(global1.a.b.a, func_4(_wgslsmith_div_f32(-453f, var_1.a.x), global1.a.c.zz).a.b.b, var_1.c);
    return Struct_5(func_4(-952f, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.xx)), global1.a.c.wz))).a, -37920i, ~max(0u, 4294967295u | u_input.a) | abs(u_input.a), Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.a.e.a.x) | var_1.b.a.yw, ~global1.a.d.b.a.xw), firstLeadingBit(~var_1.b.a.x), firstLeadingBit(_wgslsmith_div_u32(u_input.a, 1u)), var_1.b.b | ~u_input.a), ~(_wgslsmith_sub_u32(27339u, global1.b.b) | var_1.b.b)));
}

fn func_5(arg_0: Struct_5) -> Struct_4 {
    var var_0 = func_1();
    global0 = array<f32, 5>();
    var var_1 = global1.a.b;
    var_1 = var_0.a.d;
    return func_4(arg_0.a.b.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a.b.a.xy, var_0.a.b.a.xx)))) + var_0.a.c.yy));
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: u32) -> Struct_5 {
    let var_0 = func_1();
    global0 = array<f32, 5>();
    global1 = arg_0;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -max(~global1.e.x & select(_wgslsmith_div_i32(global1.e.x, 15626i), 28566i ^ global1.e.x, global1.a.d.c.x | false), -1i);
    var_0 = 3551i;
    let var_1 = ~2147483647i;
    global0 = array<f32, 5>();
    var var_2 = func_6(func_5(func_1()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.b.b, 5u)]) * _wgslsmith_f_op_f32(1344f + 244f))))), func_2(abs(abs(select(2600u, 32937u, true))), _wgslsmith_sub_vec3_u32(vec3<u32>(24795u, func_1().d.b, _wgslsmith_sub_u32(22108u, 0u)), global1.b.a.wzx)));
    let var_3 = vec2<bool>((_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, global1.e.x), -30273i) < var_1) && (~(~global1.e.x) != global1.e.x), true);
    var_0 = max(-28321i, ~countOneBits(_wgslsmith_mult_i32(~var_2.b, reverseBits(var_2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-global1.e.x, ~select(4117i, global1.e.x, true) & 0i, _wgslsmith_dot_vec2_i32(max(global1.e, global1.e), -vec2<i32>(-2147483647i, var_2.b) & vec2<i32>(var_2.b, var_1)), 64035i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-507f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 5u)]), global0[_wgslsmith_index_u32(~51996u, 5u)]) + vec3<f32>(global1.a.b.a.x, global0[_wgslsmith_index_u32(global1.a.d.b.a.x, 5u)], global0[_wgslsmith_index_u32(73253u, 5u)])));
}

