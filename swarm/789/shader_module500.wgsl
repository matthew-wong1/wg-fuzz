struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<u32>(1u, 56788u, 4294967295u, 0u), Struct_1(vec3<u32>(4294967295u, 0u, 1859u), vec4<u32>(0u, 1u, 21206u, 30419u), -1i), vec3<i32>(-58925i, 1i, 7279i), Struct_3(false, Struct_2(vec4<i32>(-26861i, i32(-2147483648), 0i, -5454i), vec4<f32>(-1519f, 462f, 1093f, -204f)), Struct_2(vec4<i32>(-4493i, 12940i, 2147483647i, -34008i), vec4<f32>(-1165f, 619f, 1118f, -502f))));

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 60664i);

var<private> global2: Struct_2 = Struct_2(vec4<i32>(-1i, -3031i, 2147483647i, i32(-2147483648)), vec4<f32>(-691f, 1285f, 166f, -1763f));

var<private> global3: vec2<u32>;

var<private> global4: array<Struct_3, 23>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(reverseBits(~(~select(vec3<u32>(48488u, 0u, 5353u), vec3<u32>(u_input.c.x, global0.b.b.x, global3.x), true))), ~(~(~vec4<u32>(17608u, 25649u, 0u, u_input.c.x))), _wgslsmith_dot_vec2_i32(reverseBits(u_input.a) | abs(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(-79411i, global1.x))), vec2<i32>(-3192i, abs(min(global1.x, u_input.d)))));
    global1 = -vec2<i32>(~(-1i), min(-(~14088i), 30909i));
    let var_1 = global3.x;
    var var_2 = Struct_1(vec3<u32>(~1370u, _wgslsmith_sub_u32(4294967295u, 0u), 27646u), var_0.b, _wgslsmith_dot_vec4_i32(firstTrailingBit(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(31529i, u_input.b, -1i, global0.c.x), vec4<i32>(var_0.c, 1i, var_0.c, global2.a.x)))), global2.a));
    var_0 = global0.b;
    return 32821u;
}

fn func_2() -> Struct_3 {
    global3 = vec2<u32>(26557u, 1u >> (~func_3() % 32u));
    var var_0 = _wgslsmith_f_op_f32(sign(global2.b.x));
    var var_1 = global0.d;
    let var_2 = _wgslsmith_f_op_f32(-global0.d.b.b.x);
    let var_3 = Struct_3(1u > global0.a.x, global0.d.c, Struct_2(vec4<i32>(_wgslsmith_div_i32(select(global1.x, global2.a.x, false), var_1.b.a.x), 2292i, _wgslsmith_dot_vec4_i32(select(global2.a, global2.a, vec4<bool>(false, global0.d.a, global0.d.a, var_1.a)), reverseBits(vec4<i32>(global0.b.c, 2147483647i, -1i, global1.x))), abs(41753i)), _wgslsmith_f_op_vec4_f32(ceil(global2.b))));
    return Struct_3(var_3.a, Struct_2(vec4<i32>(abs(i32(-1i) * -46578i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(global0.b.c, 51772i, var_3.b.a.x), u_input.d), 1i, ~var_3.b.a.x), global0.d.b.b), var_1.b);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(824f, 405f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d.c.b.x * 2780f))) * _wgslsmith_f_op_f32(global0.d.c.b.x - _wgslsmith_f_op_f32(-global2.b.x)))) + _wgslsmith_div_f32(-2136f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-104f, arg_2.b.b.x))) - 208f)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(func_4(188f, -u_input.b, func_2())), global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1200f) * _wgslsmith_f_op_f32(global2.b.x * global2.b.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), global0.d.b.b.x, _wgslsmith_div_f32(201f, -381f), 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_0, global2.b))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)));
    let var_1 = _wgslsmith_f_op_f32(var_0.x * 103f);
    let var_2 = Struct_2(_wgslsmith_mult_vec4_i32(-select(vec4<i32>(u_input.d, -1i, 0i, 1i), global2.a, vec4<bool>(true, global0.d.a, true, false)), min(global2.a | (vec4<i32>(global1.x, 1i, -2147483647i, 0i) ^ global2.a), global2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(1000f, 17927i, global0.d)) * _wgslsmith_div_f32(-119f, global0.d.b.b.x)), global2.b.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(arg_0.x, -1707f))));
    var var_3 = select(false, any(!(!vec3<bool>(true, global0.d.a, global0.d.a))), global0.d.a);
    global4 = array<Struct_3, 23>();
    return Struct_4(select(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, 4294967295u), max(global3.x, global0.b.b.x), u_input.c.x, global3.x), firstTrailingBit(abs(global0.a))), vec4<u32>(~global3.x | ~global0.b.b.x, u_input.c.x >> ((u_input.c.x & u_input.c.x) % 32u), _wgslsmith_sub_u32(global0.b.a.x, ~global3.x), 0u), select(select(!vec4<bool>(global0.d.a, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(global0.d.a, global0.d.a, true, false), vec4<bool>(false, true, false, global0.d.a)), global0.d.a == true), !(!vec4<bool>(global0.d.a, true, true, global0.d.a)), false)), Struct_1(countOneBits(max(vec3<u32>(4294967295u, global3.x, 76441u), global0.b.b.xww)) << (global0.b.a % vec3<u32>(32u)), global0.b.b, abs(firstTrailingBit(func_2().b.a.x))), global0.d.b.a.xwy, Struct_3(!global0.d.a, func_2().b, Struct_2(global2.a, var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2.b);
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global0.d.c.b)), vec4<f32>(-482f, -1438f, var_0.d.b.b.x, global0.d.b.b.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, -1000f, global0.d.b.b.x, -276f) * var_0.d.c.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.c.b.x, -715f, global0.d.c.b.x, var_0.d.c.b.x) + global0.d.b.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.c.b.x, global2.b.x, var_0.d.c.b.x, var_0.d.b.b.x) - vec4<f32>(var_0.d.b.b.x, 1924f, -261f, 2053f)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(var_0.d.b.b)), _wgslsmith_f_op_vec4_f32(ceil(global0.d.b.b))))))).d;
    global4 = array<Struct_3, 23>();
    global3 = vec2<u32>(min(_wgslsmith_dot_vec4_u32(firstLeadingBit(select(vec4<u32>(0u, global3.x, 36302u, 1u), vec4<u32>(u_input.c.x, global3.x, 50201u, 1u), false)), vec4<u32>(106705u, ~4294967295u, 1u, countOneBits(var_0.a.x))), global0.b.a.x), 60817u);
    var var_2 = var_0.d.a;
    var_2 = var_1.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.d.b.b, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(292f, var_1.c.b.x, false)), -1285f, _wgslsmith_div_f32(171f, var_0.d.c.b.x), -633f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(select(-810f, global0.d.b.b.x, false)), _wgslsmith_f_op_f32(global0.d.b.b.x + -1144f), _wgslsmith_f_op_f32(f32(-1f) * -873f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.a, 380f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -915f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.d.c.b.x * func_1(vec4<f32>(494f, var_3.x, -533f, var_3.x)).d.b.b.x), 1f)), _wgslsmith_f_op_f32(-181f + 361f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1333f))));
}

