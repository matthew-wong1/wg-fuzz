struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 7>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, global1.d.x, -36129i), u_input.a.x);
    let var_1 = global0[_wgslsmith_index_u32(~global1.a.x, 31u)];
    var var_2 = Struct_3(global1.d.x, Struct_2(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a.x, global1.a.x, 0u), firstTrailingBit(vec3<u32>(78449u, 65844u, 43269u)), global1.a), vec3<u32>(~global1.a.x, ~44438u, 0u)), true, _wgslsmith_f_op_f32(global1.c * _wgslsmith_div_f32(1313f, _wgslsmith_f_op_f32(max(global1.c, global1.c)))), -global1.d, true), global0[_wgslsmith_index_u32(global1.a.x, 31u)]);
    return 1f;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: u32) -> f32 {
    global1 = Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(9815u, global1.a.x, arg_2), global1.a), arg_2 << (23977u % 32u), 25892u) ^ global1.a, vec3<u32>(arg_2, ~(~1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, 1u, 86696u, 0u), vec4<u32>(0u, global1.a.x, 105399u, arg_0)))), _wgslsmith_f_op_f32(-global1.c) > _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(1391f * -392f)), _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(-global1.c)), vec3<i32>(abs(-1i), _wgslsmith_clamp_i32(u_input.b, -global1.d.x, -firstTrailingBit(-2147483647i)), _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), _wgslsmith_mult_vec2_i32(global1.d.yz, global1.d.zz)))), arg_1);
    var var_0 = vec3<bool>(select(any(vec4<bool>(arg_1, !global1.b, global1.b, global1.e)), arg_1, !all(select(vec2<bool>(true, arg_1), vec2<bool>(false, false), true))), arg_1, arg_1);
    var var_1 = true;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1290f + -1647f), _wgslsmith_f_op_f32(min(-1292f, -800f))))), global1.a.x >= ~global1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -2106f));
    let var_3 = 260f;
    return _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * 248f));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(vec3<u32>(global1.a.x, reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.a.x, global1.a.x, global1.a.x), vec3<u32>(global1.a.x, global1.a.x, global1.a.x))), global1.a.x), false, _wgslsmith_f_op_f32(-133f + global1.c), vec3<i32>(u_input.a.x, 58249i, min(-2120i, _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.a), u_input.a))), global1.e);
    var var_1 = -433f;
    var var_2 = _wgslsmith_f_op_f32(func_2(~_wgslsmith_dot_vec3_u32(~global1.a, global1.a | var_0.a), any(!vec4<bool>(var_0.e, var_0.e, global1.b, false)) & !var_0.b, ~(~(~(~var_0.a.x)))));
    global0 = array<Struct_1, 31>();
    global2 = array<Struct_3, 7>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = Struct_2(_wgslsmith_add_vec3_u32(~(~(global1.a << (global1.a % vec3<u32>(32u)))), ~vec3<u32>(global1.a.x, 4294967295u, _wgslsmith_add_u32(global1.a.x, 7971u))), !(!(-2147483647i < u_input.a.x) && false), 1077f, u_input.a.wyx, !all(vec3<bool>(true, 1296f == global1.c, true)));
    var var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(112875u, ~global1.a.x << (~52858u % 32u), ~global1.a.x), global1.a, var_0.a);
    let var_2 = global1.a.zx;
    let var_3 = global2[_wgslsmith_index_u32(29317u, 7u)];
    let var_4 = true;
    var var_5 = Struct_3(global1.d.x | 36325i, Struct_2(vec3<u32>(~_wgslsmith_mod_u32(var_1.x, 1u), ~var_1.x, abs(0u)), var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-924f))), vec3<i32>(~56364i, 21066i, func_1().d.x) ^ firstLeadingBit(_wgslsmith_add_vec3_i32(global1.d, vec3<i32>(-1i, u_input.b, var_3.b.d.x))), var_4), global0[_wgslsmith_index_u32(0u, 31u)]);
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(218f, -838f, _wgslsmith_f_op_f32(func_3()), -1430f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-321f, -3078f, 119f, 236f) + vec4<f32>(-1973f, var_5.b.c, global1.c, var_0.c))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_5.b.c, global1.c, 795f, var_0.c))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, 1321f, 434f, var_0.c)))) * _wgslsmith_div_vec4_f32(vec4<f32>(global1.c, _wgslsmith_f_op_f32(var_0.c + var_5.b.c), global1.c, _wgslsmith_f_op_f32(-var_3.b.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1951f, 509f, 1724f) * vec4<f32>(var_3.b.c, 1000f, global1.c, global1.c))))));
    let var_7 = var_3.b.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(-(_wgslsmith_add_i32(0i, -1i) & var_0.d.x)), -52878i, _wgslsmith_sub_i32(1i | global1.d.x, 27441i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-454f))))), u_input.a.wzy);
}

