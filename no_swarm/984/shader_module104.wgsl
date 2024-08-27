struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    return global0.a;
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(floor(arg_2.zw)), 1i, _wgslsmith_mult_vec2_i32(global0.a.d.xz, -vec2<i32>(2147483647i, -1i)), global0.a, arg_1.a), Struct_2(arg_1.a.a.xy, _wgslsmith_sub_i32(firstTrailingBit(arg_1.a.d.x) << (abs(arg_0) % 32u), -u_input.d), firstLeadingBit(arg_1.a.d.yx), global0.a, func_2()), !arg_1.a.e.wy, func_2(), vec3<bool>(!arg_1.a.e.x, !global0.a.e.x, true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -465f)))))) - arg_2.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.b.x), _wgslsmith_f_op_f32(min(arg_1.a.a.x, 129f)), arg_1.a.a.x, 812f));
    return _wgslsmith_add_u32(~max(_wgslsmith_mult_u32(0u, arg_0), u_input.a), ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 20799u, arg_0, arg_0)) & vec4<u32>(u_input.a, arg_0, u_input.a, u_input.a), vec4<u32>(u_input.a, abs(u_input.a), u_input.a, 27554u)));
}

fn func_1() -> Struct_1 {
    global0 = Struct_4(func_2());
    var var_0 = u_input.b;
    var var_1 = ~vec3<u32>(~select(countOneBits(u_input.a), u_input.a, true), u_input.a, 1u);
    let var_2 = global0.a;
    let var_3 = func_3(var_1.x, Struct_4(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1046f, global0.a.b.x, -1533f), vec3<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x)), var_2.b, 7713i, _wgslsmith_mod_vec3_i32(var_2.d, vec3<i32>(2147483647i, 7051i, 15954i)), !vec4<bool>(true, global0.a.e.x, false, global0.a.e.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.b.x, global0.a.b.x)) * var_2.b.x), global0.a.a.x, var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(333f, -571f))))) >> (_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u | var_1.x, func_3(4294967295u, Struct_4(Struct_1(vec3<f32>(1000f, -484f, -842f), vec4<f32>(1812f, global0.a.a.x, global0.a.b.x, global0.a.b.x), global0.a.d.x, vec3<i32>(u_input.b, u_input.d, global0.a.c), vec4<bool>(global0.a.e.x, global0.a.e.x, true, global0.a.e.x))), global0.a.b)), u_input.a & ~var_1.x), _wgslsmith_add_u32(~40635u, abs(_wgslsmith_add_u32(u_input.a, 1u)))) % 32u);
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(global0.a);
    global0 = Struct_4(func_1());
    global0 = Struct_4(func_2());
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.a.a.zy)), _wgslsmith_f_op_vec2_f32(-global0.a.b.yx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.a.a.zx)) * vec2<f32>(-1339f, global0.a.a.x)))), -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(30876i, u_input.c.x), vec2<i32>(22779i, global0.a.c), vec2<i32>(u_input.c.x, global0.a.d.x))), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(5584i, global0.a.c), vec2<i32>(u_input.b, global0.a.d.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.b.xzy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0.a.b))), ~max(-36978i, u_input.d), -global0.a.d | global0.a.d, vec4<bool>(false, !global0.a.e.x, global0.a.e.x, func_2().e.x)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.b.zwx) - _wgslsmith_f_op_vec3_f32(-global0.a.b.zyx)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -1941f, -1000f, global0.a.b.x))), ~abs(8098i), func_1().d & _wgslsmith_div_vec3_i32(vec3<i32>(global0.a.c, 1i, global0.a.c), vec3<i32>(46383i, u_input.c.x, 2147483647i)), global0.a.e)), Struct_2(global0.a.a.yy, ~(u_input.d ^ u_input.c.x) | -u_input.c.x, ~(global0.a.d.zz >> (firstTrailingBit(vec2<u32>(u_input.a, 16627u)) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.b.yzy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.a.b)) + _wgslsmith_f_op_vec4_f32(global0.a.b * vec4<f32>(1623f, global0.a.a.x, -390f, -1096f))), _wgslsmith_clamp_i32(-11326i, 6504i, -2147483647i) & -18607i, global0.a.d, vec4<bool>(false, true == global0.a.e.x, any(global0.a.e.zxy), global0.a.e.x)), global0.a), vec2<bool>(_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, global0.a.c), -35805i) < -1i, global0.a.e.x), global0.a, !(!(!vec3<bool>(global0.a.e.x, global0.a.e.x, global0.a.e.x))));
    var var_1 = global0.a;
    var var_2 = reverseBits(firstTrailingBit(_wgslsmith_sub_vec2_u32(select(vec2<u32>(71982u, u_input.a), vec2<u32>(3786u, u_input.a), true), ~vec2<u32>(u_input.a, u_input.a)) & reverseBits(vec2<u32>(0u, u_input.a))));
    let var_3 = Struct_2(vec2<f32>(var_1.b.x, global0.a.a.x), ~(-(-123731i & _wgslsmith_mult_i32(global0.a.c, var_1.d.x))), vec2<i32>(var_0.b.b, u_input.d), global0.a, global0.a);
    var_1 = var_3.e;
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_3.e.d.x, _wgslsmith_clamp_i32(countOneBits(var_4.a.d.c), select(var_3.e.d.x, 1i, all(var_3.e.e.zyy)), -select(36941i, -1i, false)), max(~(-var_0.b.d.d.x), var_3.b), 2147483647i), 0u ^ ~var_2.x, vec2<i32>(-1i) * -reverseBits(vec2<i32>(1i, u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_4.d.b))));
}

