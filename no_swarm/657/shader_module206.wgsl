struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(0u, 0u, 16588u, 1u), vec2<bool>(false, false), Struct_1(vec4<f32>(720f, 296f, -1655f, 1153f)), false);

var<private> global1: array<vec2<u32>, 32>;

var<private> global2: f32 = 1453f;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    global0 = Struct_2(~global0.a, vec2<bool>(true, global0.d), global0.c, all(global0.b));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1075f);
    var var_0 = Struct_2(select(~vec4<u32>(_wgslsmith_add_u32(1u, global0.a.x), ~global0.a.x, 29599u, _wgslsmith_dot_vec2_u32(vec2<u32>(35651u, 61189u), global1[_wgslsmith_index_u32(1106u, 32u)])), ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(global0.a, global0.a), max(global0.a, vec4<u32>(13962u, 0u, u_input.b, 29205u))), true), vec2<bool>(global0.b.x, !(!global0.b.x) || !global0.b.x), global0.c, all(vec2<bool>(true, true)));
    var var_1 = vec4<bool>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, -1i, 2640i) ^ vec4<i32>(-2147483647i, u_input.c, -46584i, u_input.c), ~vec4<i32>(1i, u_input.c, 5207i, u_input.a.x)), 0i, u_input.c) != _wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.c), vec2<i32>(14349i, u_input.a.x))), false, false & global0.d, var_0.d);
    var var_2 = ~u_input.c;
    return _wgslsmith_div_f32(global0.c.a.x, _wgslsmith_f_op_f32(select(646f, _wgslsmith_f_op_f32(f32(-1f) * -1052f), !var_1.x)));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: vec4<bool>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(step(1036f, _wgslsmith_f_op_f32(-global0.c.a.x))), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.c.a.x, arg_0.d.x, global0.c.a.x, global0.c.a.x), vec4<f32>(global0.c.a.x, arg_0.d.x, global0.c.a.x, -845f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x), _wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x), -857f, -1000f) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(799f, arg_0.d.x, -1876f, arg_0.d.x)))))))));
    var var_1 = Struct_3(12797i);
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c.a * global0.c.a) - _wgslsmith_f_op_vec4_f32(-global0.c.a))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(arg_0.d.x)), arg_0.d.x, _wgslsmith_f_op_f32(var_0.x * arg_0.d.x)))))));
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: Struct_5) -> Struct_2 {
    global0 = Struct_2(~arg_1.c, !(!global0.b), Struct_1(_wgslsmith_f_op_vec4_f32(round(global0.c.a))), global0.b.x);
    var var_0 = min(vec3<i32>(_wgslsmith_add_i32(u_input.a.x & 1i, u_input.c), _wgslsmith_sub_i32(-44860i, arg_1.e.x) | (-2147483647i >> (1u % 32u)), arg_1.b ^ _wgslsmith_dot_vec2_i32(arg_1.e.yy, vec2<i32>(u_input.a.x, arg_1.e.x))) & _wgslsmith_sub_vec3_i32(vec3<i32>(-15329i, -12992i, -254i) | arg_1.e, ~(~arg_1.e)), countOneBits(arg_1.e));
    let var_1 = Struct_2(_wgslsmith_div_vec4_u32(global0.a, max(vec4<u32>(53276u, func_2(Struct_5(vec2<i32>(-2147483647i, -1i), var_0.x, arg_1.c, arg_1.d, vec3<i32>(u_input.c, 2147483647i, arg_1.b)), vec2<bool>(true, global0.b.x), vec4<bool>(global0.d, global0.b.x, global0.d, false)).c.x, _wgslsmith_div_u32(u_input.b, arg_1.c.x), ~1u), _wgslsmith_clamp_vec4_u32(arg_1.c, ~arg_1.c, ~vec4<u32>(u_input.b, global0.a.x, 27834u, 4294967295u)))), !select(vec2<bool>(global0.d & global0.b.x, true), select(!vec2<bool>(global0.b.x, global0.b.x), !global0.b, vec2<bool>(global0.b.x, false)), !vec2<bool>(false, global0.d)), Struct_1(global0.c.a), !(u_input.c >= _wgslsmith_add_i32(var_0.x, 2147483647i)));
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.a.x, ~1u, ~3343u), ~_wgslsmith_div_vec3_u32(vec3<u32>(58847u, u_input.b, var_1.a.x), vec3<u32>(22518u, global0.a.x, 0u))), 4294967295u, 4294967295u, 59442u), countOneBits(global0.a));
    let var_3 = var_2.x;
    return var_1;
}

fn func_1() -> vec4<u32> {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -956f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a.x + 1000f)))), func_2(Struct_5(-vec2<i32>(u_input.a.x, -1i), -u_input.c & u_input.a.x, select(_wgslsmith_div_vec4_u32(vec4<u32>(788u, global0.a.x, global0.a.x, 4294967295u), vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u)), ~vec4<u32>(global0.a.x, global0.a.x, u_input.b, 0u), u_input.b > 83787u), vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.c.a.x)), global0.c.a.x), vec3<i32>(1i, -23020i, _wgslsmith_clamp_i32(1i, u_input.c, u_input.a.x))), select(global0.b, global0.b, false), select(!select(vec4<bool>(global0.b.x, global0.d, false, global0.d), vec4<bool>(true, false, global0.b.x, global0.d), vec4<bool>(global0.d, global0.d, false, true)), !(!vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x)), vec4<bool>(!global0.d, global0.d, any(vec3<bool>(global0.d, true, global0.b.x)), all(global0.b)))));
    var var_1 = vec4<bool>(false, global0.d, global0.b.x, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -344f), Struct_5(u_input.a, -1i, global0.a, vec2<f32>(-177f, 149f), vec3<i32>(u_input.c, u_input.c, u_input.a.x))).c.a.x * var_0.c.a.x) <= _wgslsmith_f_op_f32(-func_4(var_0.c.a.x, func_2(Struct_5(vec2<i32>(u_input.c, u_input.a.x), -2147483647i, vec4<u32>(var_0.a.x, 59508u, 4294967295u, 1u), global0.c.a.yz, vec3<i32>(-11746i, -2147483647i, 2147483647i)), var_0.b, vec4<bool>(false, global0.b.x, true, false))).c.a.x));
    global1 = array<vec2<u32>, 32>();
    var var_2 = Struct_3(-1i);
    let var_3 = Struct_5(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, ~u_input.a.x), -(var_2.a << (_wgslsmith_mult_u32(31750u, 49399u) % 32u)) >> (var_0.a.x % 32u), _wgslsmith_clamp_vec4_u32(select(firstTrailingBit(var_0.a), ~(vec4<u32>(u_input.b, var_0.a.x, global0.a.x, global0.a.x) | var_0.a), !select(vec4<bool>(global0.b.x, false, true, true), vec4<bool>(var_1.x, false, true, false), true)), _wgslsmith_sub_vec4_u32(firstTrailingBit(global0.a) & var_0.a, abs(vec4<u32>(var_0.a.x, 0u, 11964u, 82306u))), reverseBits(countOneBits(func_4(-413f, Struct_5(vec2<i32>(1i, u_input.c), 8538i, vec4<u32>(7578u, u_input.b, global0.a.x, 4294967295u), var_0.c.a.yx, vec3<i32>(-2147483647i, -654i, var_2.a))).a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.c.a.zy))), var_0.c.a.wz), vec3<i32>(-1i, ~(-21077i), -22326i));
    return abs(select(var_0.a, ~(~_wgslsmith_div_vec4_u32(var_3.c, vec4<u32>(var_3.c.x, global0.a.x, u_input.b, var_0.a.x))), !(!vec4<bool>(var_0.d, true, true, var_0.b.x))));
}

fn func_5(arg_0: vec4<u32>) -> Struct_4 {
    let var_0 = global0.c.a.x;
    var var_1 = vec2<i32>(max(-2147483647i, ~_wgslsmith_add_i32(-6950i, 1i)), 66150i);
    var var_2 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, 0i, -1i, u_input.c), vec4<i32>(_wgslsmith_dot_vec2_i32(~u_input.a, vec2<i32>(-45773i, u_input.a.x)), -2147483647i, 1i, _wgslsmith_mult_i32(-1i, var_1.x) << (0u % 32u)), vec4<i32>(~1i, -2147483647i, max(~var_1.x, 1i), u_input.c));
    let var_3 = vec2<bool>(false, global0.d);
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(-639f)), _wgslsmith_f_op_f32(global0.c.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1148f)), 286f)));
    return Struct_4(~max(~arg_0, global0.a), global0.c, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(trunc(global0.c.a.x))), Struct_5(u_input.a, ~firstTrailingBit(var_1.x), ~vec4<u32>(u_input.b, arg_0.x, 1u, 13858u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1176f, 405f)), ~firstTrailingBit(var_2.wwz))).c.a, u_input.a.x, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.b, 38330u)), ~11940u, 24876u << (u_input.b % 32u)), ~func_1())));
    let var_1 = global0.c.a.x;
    let var_2 = -1251f;
    let var_3 = u_input.b;
    var var_4 = ~u_input.a;
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.a.x, _wgslsmith_f_op_f32(1061f * var_2)))), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-299f, -1822f))) * var_2), _wgslsmith_f_op_f32(-var_2));
    global0 = func_4(global0.c.a.x, func_2(func_2(func_2(func_2(Struct_5(u_input.a, var_4.x, global0.a, global0.c.a.wx, vec3<i32>(-43224i, u_input.c, var_0.d)), global0.b, vec4<bool>(true, global0.b.x, true, global0.d)), !vec2<bool>(global0.d, false), !vec4<bool>(global0.b.x, global0.b.x, false, false)), select(!global0.b, !global0.b, global0.b), vec4<bool>(global0.d, true, false, true)), select(vec2<bool>(false, any(vec3<bool>(true, true, true))), vec2<bool>(!global0.d, 1i > var_0.d), global0.d), !select(vec4<bool>(global0.d, global0.d, global0.d, true), select(vec4<bool>(global0.d, global0.b.x, false, global0.b.x), vec4<bool>(global0.d, false, global0.d, global0.d), false), global0.b.x)));
    var var_6 = Struct_1(vec4<f32>(var_0.b.a.x, global0.c.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(select(1023f, -712f, true)))), _wgslsmith_f_op_f32(ceil(1134f))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1().xxw, _wgslsmith_mod_i32(-1i, -_wgslsmith_add_i32(_wgslsmith_mod_i32(0i, u_input.a.x), var_4.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-30581i, countOneBits(u_input.a.x & var_0.d), var_4.x, countOneBits(var_4.x)), reverseBits(vec4<i32>(var_4.x, 2147483647i, 2147483647i, 6830i) >> (global0.a % vec4<u32>(32u)))), -u_input.c);
}

