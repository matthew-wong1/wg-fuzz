struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: Struct_3,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(0i, 2147483647i, 10851i, 11762i), vec4<i32>(-12622i, 0i, 2147483647i, 0i), vec4<i32>(2147483647i, 12474i, 0i, i32(-2147483648)));

var<private> global2: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    return global0.d;
}

fn func_2() -> Struct_4 {
    global0 = Struct_1(global0.b.x, -firstTrailingBit(vec3<i32>(u_input.e.x, firstTrailingBit(global0.a), global0.c.x)), u_input.e.yx, func_3());
    global1 = array<vec4<i32>, 3>();
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-212f, -1717f, 1000f), vec3<f32>(2307f, 1711f, -181f)))))))));
    global2 = array<Struct_3, 32>();
    return Struct_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -710f), var_0.x)), var_0.x, _wgslsmith_f_op_f32(-1f)))), !select(global0.d <= abs(1u), !(var_0.x < var_0.x), select(select(true, false, false), all(vec3<bool>(false, false, false)), true)), Struct_1(global0.c.x, u_input.a, _wgslsmith_clamp_vec2_i32(abs(select(vec2<i32>(u_input.e.x, u_input.a.x), vec2<i32>(2147483647i, global0.c.x), true)), firstLeadingBit(-u_input.a.xz), firstLeadingBit(vec2<i32>(-9138i, 19220i))), 2635u), select(!vec2<bool>(any(vec3<bool>(false, false, true)), true), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), false), any(vec4<bool>(false, true, true, true))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(false, false, false)), vec2<bool>(true, true)), true), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - 325f))), -702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-927f, _wgslsmith_div_f32(var_0.x, var_0.x), any(vec3<bool>(true, false, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * _wgslsmith_f_op_f32(-2154f - _wgslsmith_div_f32(var_0.x, var_0.x)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: f32) -> f32 {
    let var_0 = func_2();
    var var_1 = Struct_5(var_0, ~(vec3<i32>(~14864i, _wgslsmith_mod_i32(2147483647i, -14702i), _wgslsmith_mult_i32(arg_1.c.b.x, -1i)) & reverseBits(global0.b)), Struct_3(false), max(30778u, 0u), -27309i);
    let var_2 = Struct_2(Struct_1(countOneBits(firstLeadingBit(i32(-1i) * -11268i)), vec3<i32>(func_2().c.c.x, 2147483647i >> (arg_1.c.d % 32u), 0i) | vec3<i32>(~arg_2.a.b.x, u_input.a.x, arg_2.a.b.x), max(arg_2.a.b.zz, firstLeadingBit(~vec2<i32>(var_1.e, 0i))), _wgslsmith_clamp_u32(~25068u, ~_wgslsmith_sub_u32(global0.d, 0u), firstLeadingBit(0u))));
    var_1 = Struct_5(func_2(), -var_2.a.b, global2[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(5108u, firstTrailingBit(4294967295u), _wgslsmith_clamp_u32(75847u, 105324u, 101315u)) << (_wgslsmith_add_u32(42172u, _wgslsmith_mult_u32(26112u, 36171u)) % 32u)), 32u)], global0.d, ~var_2.a.c.x);
    let var_3 = global2[_wgslsmith_index_u32(u_input.d.x, 32u)];
    return _wgslsmith_f_op_f32(-arg_1.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~firstTrailingBit(-2147483647i) | (global0.b.x ^ abs(-1i))), global0.b | u_input.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b.x, 31572i), u_input.a.yy, vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.e.x, global0.c.x), vec2<i32>(-10739i, 2147483647i))), ~global0.d);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec2<f32>(2187f, 886f), Struct_4(vec4<f32>(-3668f, 128f, -1573f, -314f), true, Struct_1(global0.c.x, var_0.b, vec2<i32>(global0.b.x, global0.c.x), global0.d), vec2<bool>(true, true), vec4<f32>(-471f, -192f, -139f, 2442f)), Struct_2(Struct_1(-1i, global0.b, u_input.a.zx, global0.d)), 427f)), _wgslsmith_f_op_f32(f32(-1f) * -359f))))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(908f, var_1, 1707f, 274f)), vec4<f32>(var_1, var_1, var_1, var_1)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(260f, 1701f, var_1, var_1))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -805f, var_1, -281f)))))), true, Struct_1(~firstLeadingBit(max(-20727i, u_input.a.x)), ~(-vec3<i32>(2147483647i, 38514i, -15871i)), ~(~vec2<i32>(u_input.a.x, var_0.b.x)), 60500u), !vec2<bool>(var_1 >= -1170f, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(697f, -1422f))) + var_1), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2376f)))), _wgslsmith_f_op_f32(-469f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))))));
    var var_3 = select(vec4<bool>(var_2.d.x, var_2.b, all(!select(vec3<bool>(false, false, var_2.b), vec3<bool>(var_2.b, true, false), false)), var_2.b), select(vec4<bool>(var_2.d.x, 50052i == -var_0.c.x, var_2.b, true), select(!vec4<bool>(var_2.b, var_2.d.x, true, true), vec4<bool>(true, var_2.b || var_2.d.x, true, var_2.d.x | true), select(vec4<bool>(false, var_2.d.x, true, true), !vec4<bool>(var_2.b, var_2.d.x, true, var_2.d.x), var_2.b)), vec4<bool>(var_2.b, false, -global0.b.x != (28705i & u_input.e.x), var_2.d.x)), var_2.b);
    var_0 = Struct_1(-1i, -vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, var_2.c.c.x << (var_2.c.d % 32u)), _wgslsmith_clamp_i32(u_input.a.x, func_2().c.c.x, _wgslsmith_mod_i32(1i, 2147483647i)), min(u_input.a.x | var_2.c.b.x, _wgslsmith_clamp_i32(-64017i, var_0.c.x, -37643i))), vec2<i32>(-82436i, global0.b.x), global0.d);
    var var_4 = ~reverseBits(vec4<u32>(var_0.d, 1u, ~0u & var_2.c.d, 32962u));
    var var_5 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, u_input.c, var_2.e.zy);
}

