struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<Struct_1, 5>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1() -> f32 {
    global1 = array<Struct_1, 5>();
    global0 = array<bool, 29>();
    let var_0 = global2.b.x;
    var var_1 = -2286f;
    let var_2 = -max(abs(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 0i, -16529i), vec3<i32>(31468i, -1i, 1831i)))), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -13139i, 1i, 27600i), vec4<i32>(-2147483647i, -1i, 1i, -2147483647i)), 1i, min(10513i, -2147483647i)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global2.b.x))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> i32 {
    let var_0 = Struct_1(firstLeadingBit(~arg_2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b))), vec2<f32>(_wgslsmith_f_op_f32(round(global2.b.x)), _wgslsmith_f_op_f32(exp2(arg_2.b.x))), vec3<bool>(all(select(select(arg_3, arg_3, arg_3.x), !arg_3, false)), true, true));
    var var_1 = _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-(i32(-1i) * -46704i), -firstLeadingBit(21399i), -2147483647i, -_wgslsmith_clamp_i32(2147483647i, 8085i, 20280i))), ~vec4<i32>(1i, 1i, 1i, 1i));
    let var_2 = _wgslsmith_f_op_f32(exp2(1f));
    var var_3 = Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b + vec4<f32>(1963f, var_2, arg_1.b.x, 1019f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1045f, -950f, arg_2.b.x, 662f) + arg_1.b)), var_0.b)), var_0.b.zx, select(vec3<bool>(all(vec2<bool>(arg_0, arg_3.x)), arg_1.b.x != _wgslsmith_f_op_f32(875f + arg_2.c.x), any(select(vec2<bool>(arg_2.d.x, true), vec2<bool>(global2.d.x, arg_3.x), vec2<bool>(true, false)))), arg_3.zzx, global2.d.x));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.yy));
    return -77387i;
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 5>();
    global0 = array<bool, 29>();
    var var_0 = global2.d.x;
    var var_1 = vec3<i32>(_wgslsmith_div_i32(-2147483647i, -((i32(-1i) * -14812i) | func_3(false, Struct_1(6537u, global2.b, global2.b.zw, vec3<bool>(global0[_wgslsmith_index_u32(0u, 29u)], true, true)), Struct_1(u_input.a, global2.b, vec2<f32>(global2.c.x, global2.c.x), vec3<bool>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(global2.a, 29u)], true)), vec4<bool>(global2.d.x, global0[_wgslsmith_index_u32(4294967295u, 29u)], false, global0[_wgslsmith_index_u32(76331u, 29u)])))), -1i, -1i);
    var_0 = global2.d.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-183f + -434f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 5>();
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global2.b.xxw + vec3<f32>(_wgslsmith_f_op_f32(global2.c.x - -2790f), _wgslsmith_f_op_f32(-global2.c.x), global2.b.x)), vec3<f32>(-120f, _wgslsmith_f_op_f32(768f + global2.b.x), -332f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, -154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f) * _wgslsmith_f_op_f32(floor(138f)))))));
    var var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, 0u, u_input.a | u_input.a), 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, global2.b.x)) + _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(506f + _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(225f * 573f)))) + global2.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.zz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))) * _wgslsmith_f_op_vec2_f32(-global2.c)), global2.d);
    let var_2 = _wgslsmith_f_op_f32(trunc(1103f));
    let var_3 = var_1.b.x;
    global2 = Struct_1(~_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(4294967295u, 7677u, 23062u, 59033u)), vec4<u32>(0u, ~25592u, ~47045u, _wgslsmith_sub_u32(global2.a, u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.x, var_2, global2.c.x, var_2), vec4<f32>(global2.c.x, var_0.x, -1472f, -460f), false)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.x, 2278f, var_2, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 1752f, var_1.b.x, -1579f), var_1.b)))))), global2.c, global2.d);
    var_1 = global1[_wgslsmith_index_u32(var_1.a, 5u)];
    let var_4 = true;
    var var_5 = _wgslsmith_f_op_f32(round(var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.b.x, -562f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b.x, var_1.b.x, var_1.b.x, -953f), var_1.b, vec4<bool>(global0[_wgslsmith_index_u32(var_1.a, 29u)], false, false, true))), vec4<f32>(var_2, var_2, var_1.c.x, 1000f))))), reverseBits(_wgslsmith_clamp_i32(select(1i, -1i, !global2.d.x), -(~8890i), max(_wgslsmith_mod_i32(2147483647i, 60789i), -1681i))));
}

