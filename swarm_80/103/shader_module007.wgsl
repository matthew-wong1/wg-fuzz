struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: f32;

var<private> global2: vec2<bool>;

var<private> global3: vec4<bool>;

var<private> global4: Struct_1 = Struct_1(i32(-2147483648), vec3<bool>(false, false, true), 105251u, vec4<f32>(-703f, -924f, 148f, 847f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = ~vec2<u32>(~(~u_input.b.x), _wgslsmith_div_u32(countOneBits(_wgslsmith_sub_u32(u_input.b.x, 27891u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(global4.c, u_input.b.x, 4913u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, global4.c), u_input.b.yzx))));
    var var_1 = false;
    let var_2 = ~global4.c >= ~u_input.b.x;
    var var_3 = -2147483647i;
    global4 = Struct_1(u_input.a.x, select(vec3<bool>(172f >= _wgslsmith_f_op_f32(-global4.d.x), true, true), vec3<bool>(global3.x & false, var_2, false), select(vec3<bool>(global4.b.x, all(vec3<bool>(global3.x, global4.b.x, var_2)), global4.a > -34436i), !select(vec3<bool>(global4.b.x, global3.x, var_2), vec3<bool>(global2.x, false, var_2), false), select(select(global3.yzz, vec3<bool>(global3.x, false, global3.x), global4.b.x), global4.b, !vec3<bool>(global3.x, global4.b.x, global4.b.x)))), countOneBits(~1u) >> (global4.c % 32u), vec4<f32>(_wgslsmith_f_op_f32(round(-2236f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(207f + global4.d.x), global4.d.x), _wgslsmith_f_op_f32(-global4.d.x), -1071f));
    return global4.b.x;
}

fn func_2(arg_0: bool, arg_1: f32) -> vec4<f32> {
    let var_0 = Struct_1(1i, vec3<bool>(func_3(), global2.x, select(global4.d.x != -196f, global4.b.x, true)), firstLeadingBit(global4.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(global4.d)), _wgslsmith_f_op_vec4_f32(round(global4.d)))))) * _wgslsmith_div_vec4_f32(global4.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.d)))));
    let var_1 = var_0;
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_1.d, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, _wgslsmith_div_f32(1000f, 254f), _wgslsmith_div_f32(var_1.d.x, var_0.d.x), _wgslsmith_f_op_f32(var_1.d.x * var_1.d.x)), global4.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1602f), var_1.d.x, _wgslsmith_f_op_f32(-1115f + var_1.d.x), -2168f))));
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_1(1i, vec3<bool>(global2.x, ~(~63210i) < (global4.a >> ((27309u & global4.c) % 32u)), true), select(~(~u_input.b.x >> (global4.c % 32u)), 57789u, false), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_2(global2.x & !global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d.x)))))));
    let var_1 = vec2<bool>(false, var_0.b.x);
    global4 = Struct_1(-26065i, var_0.b, var_0.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global4.d + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global4.d, var_0.d) + vec4<f32>(var_0.d.x, -1234f, global4.d.x, var_0.d.x))))));
    var var_2 = global2.x;
    let var_3 = max(vec2<i32>(~var_0.a, var_0.a), u_input.a.xz);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -628f)), 409f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-662f, 1013f) * global4.d.yw) * vec2<f32>(-300f, 960f)), vec2<f32>(_wgslsmith_div_f32(global4.d.x, global4.d.x), _wgslsmith_f_op_f32(-global4.d.x)), select(vec2<bool>(false, true), var_1, false)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = arg_1;
    let var_1 = Struct_1(arg_2.a, !(!(!global4.b)), var_0.c, var_0.d);
    let var_2 = 1u;
    var var_3 = var_1;
    let var_4 = var_1;
    return vec3<i32>(1i, arg_2.a, ~(~1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = ~reverseBits(~(~u_input.b.x));
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(abs(~7035i), 1i), var_0.x, -var_0.x) << (u_input.b.wxw % vec3<u32>(32u));
    var var_3 = u_input.b.yyz & vec3<u32>(~abs(_wgslsmith_mult_u32(0u, 23677u)), global4.c, _wgslsmith_mod_u32(u_input.b.x, 0u));
    global1 = -1369f;
    var var_4 = var_2.x > -2147483647i;
    let var_5 = func_4(_wgslsmith_f_op_vec2_f32(func_1()), Struct_1(var_2.x, vec3<bool>(!any(vec2<bool>(global3.x, global2.x)), global4.b.x, true), ~_wgslsmith_sub_u32(var_3.x, 0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.d.x, global4.d.x, 408f, global4.d.x) * vec4<f32>(-198f, -682f, global4.d.x, -1188f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(200f, 1316f, global4.d.x, global4.d.x)))), Struct_1(-1359i, vec3<bool>(false, global4.b.x, !func_3()), 0u ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 62588u, u_input.b.x, u_input.b.x), u_input.b), ~vec4<u32>(global4.c, u_input.b.x, 1u, 84515u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1259f, 821f)), _wgslsmith_f_op_f32(trunc(2706f)), _wgslsmith_f_op_f32(global4.d.x - global4.d.x), global4.d.x))));
    var var_6 = Struct_1(abs(select(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(global4.a, u_input.c, -16324i, var_2.x)), var_2.x | -2147483647i), min(var_0.x, -21317i), true)), select(!(!global4.b), global3.zxx, !(!global4.b)), 42810u, vec4<f32>(global4.d.x, _wgslsmith_f_op_f32(global4.d.x + 682f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(520f)))), 376f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(var_6.a, ~u_input.d >> (~var_3.x % 32u)), firstLeadingBit(-1i), global4.a), (countOneBits(max(vec3<i32>(-2147483647i, 0i, var_0.x), vec3<i32>(-14270i, 2147483647i, var_2.x))) ^ vec3<i32>(_wgslsmith_div_i32(2147483647i, -15007i), _wgslsmith_mod_i32(-22147i, u_input.d), var_5.x)) ^ ~var_2);
}

