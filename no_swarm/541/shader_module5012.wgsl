struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(-1i, i32(-2147483648), 46971i, 0i, 0i, 1i, 14579i, 29134i, 53763i, i32(-2147483648), 0i, 1i, 57133i, -28101i, -17849i, 54686i, -68389i, 27974i, 49683i, 1i, 0i, -27537i, -70671i, -24444i, 0i, -24393i, -28559i, 8487i, 30691i);

var<private> global1: array<u32, 29>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_mod_u32(42834u, ~(~max(global1[_wgslsmith_index_u32(~2761u, 29u)], countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63036u, 29u)], 29u)]))));
    var var_1 = Struct_4(~u_input.a.wzx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-317f - -1458f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-675f - 1325f) + _wgslsmith_div_f32(1383f, -547f)))), _wgslsmith_f_op_f32(abs(-711f)));
    let var_2 = Struct_1(i32(-1i) * -2147483647i);
    let var_3 = Struct_4(max(vec3<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 29u)], 29u)], 29u)], 65087u), ~var_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), u_input.a)), (vec3<u32>(global1[_wgslsmith_index_u32(1u, 29u)], 32611u, 58676u) & u_input.b) >> ((vec3<u32>(u_input.a.x, var_1.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]) ^ vec3<u32>(35019u, var_1.a.x, u_input.b.x)) % vec3<u32>(32u))) ^ ((vec3<u32>(44521u, u_input.a.x, u_input.b.x) ^ var_1.a) >> (select(var_1.a, _wgslsmith_sub_vec3_u32(u_input.a.wyx, vec3<u32>(var_1.a.x, 50204u, 137u)), vec3<bool>(true, true, true)) % vec3<u32>(32u))), var_1.b, -281f);
    let var_4 = Struct_3(max(_wgslsmith_dot_vec4_u32(u_input.a & u_input.a, ~vec4<u32>(var_3.a.x, 0u, 4294967295u, 4294967295u)), 5756u) | ~(~(~var_3.a.x)), var_2);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))) - _wgslsmith_f_op_f32(-1f));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_sub_u32(~(~47124u), 1u);
    let var_1 = Struct_4(_wgslsmith_mod_vec3_u32(~abs(~u_input.a.wyx), u_input.a.yzx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2162f)));
    let var_2 = Struct_3(0u ^ global1[_wgslsmith_index_u32(1u, 29u)], Struct_1(global0[_wgslsmith_index_u32(4294967295u, 29u)]));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b)))))) * vec2<f32>(-157f, _wgslsmith_f_op_f32(exp2(var_1.b)))));
    global0 = array<i32, 29>();
    return vec4<u32>(1u, var_0, _wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(abs(var_0), 29u)]), 4899u);
}

fn func_1() -> vec4<u32> {
    var var_0 = u_input.a.xww & countOneBits(firstLeadingBit(firstTrailingBit(select(vec3<u32>(global1[_wgslsmith_index_u32(32372u, 29u)], 83842u, u_input.d), vec3<u32>(79614u, u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<bool>(true, false, false)))));
    global0 = array<i32, 29>();
    return _wgslsmith_mod_vec4_u32(func_2(), vec4<u32>(reverseBits(~(~global1[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_div_u32(var_0.x, abs(_wgslsmith_mult_u32(var_0.x, 1u))), _wgslsmith_mult_u32(~(~0u), ~func_2().x), select(abs(1u), abs(1u), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.wx;
    let var_1 = ~var_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_div_vec2_f32(vec2<f32>(1469f, 2569f), vec2<f32>(742f, 1416f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-2039f)), _wgslsmith_f_op_f32(select(-268f, -276f, false))) - vec2<f32>(_wgslsmith_div_f32(989f, 1000f), -853f))));
    global1 = array<u32, 29>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x + var_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f) * -342f))));
    global0 = array<i32, 29>();
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))));
    let var_5 = _wgslsmith_clamp_vec4_u32(func_1(), func_2(), ~(~u_input.a >> (~u_input.a % vec4<u32>(32u)))) | firstLeadingBit((select(vec4<u32>(42890u, u_input.a.x, 0u, u_input.d), u_input.a, true) >> (~u_input.a % vec4<u32>(32u))) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 0u, var_1.x, global1[_wgslsmith_index_u32(112u, 29u)]), u_input.a) | u_input.a) % vec4<u32>(32u)));
    var var_6 = Struct_2(Struct_1(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_mod_i32(select(-35787i, u_input.e, false), u_input.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, -1000f, var_3.x) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, -634f, var_3.x), vec3<f32>(-1564f, var_2.x, var_4.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-2168f - 914f), -234f, _wgslsmith_f_op_f32(max(var_4.x, var_3.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xww, var_6.b, vec4<u32>(~0u, _wgslsmith_div_u32(var_1.x, func_1().x), abs(~(~var_0.x)), ~_wgslsmith_dot_vec2_u32(abs(var_0), var_0)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_1.x, global1[_wgslsmith_index_u32(var_1.x, 29u)]), ~u_input.b), firstLeadingBit(~firstTrailingBit(var_5.yzz))), 29u)]);
}

