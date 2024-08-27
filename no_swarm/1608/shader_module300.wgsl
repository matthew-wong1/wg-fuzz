struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    let var_0 = arg_0.a.b;
    global0 = Struct_5(Struct_4(global0.a.a, 85815u, global0.a.c));
    return global0.a.a.a.e;
}

fn func_2() -> Struct_5 {
    let var_0 = ~(global0.a.a.b.d.x ^ ~abs(firstTrailingBit(global0.a.a.a.d.x)));
    var var_1 = select(!vec4<bool>((1000f == global0.a.a.a.e) | !global0.a.c.x, false, false, !all(global0.a.c.xz)), select(!(!(!vec4<bool>(global0.a.c.x, true, true, global0.a.c.x))), vec4<bool>(_wgslsmith_f_op_f32(515f - -368f) != global0.a.a.a.e, !any(vec4<bool>(false, global0.a.c.x, false, global0.a.c.x)), global0.a.c.x, any(select(vec4<bool>(true, false, global0.a.c.x, global0.a.c.x), vec4<bool>(global0.a.c.x, global0.a.c.x, global0.a.c.x, global0.a.c.x), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.a.e) - _wgslsmith_f_op_f32(func_3(global0.a, global0.a.a.a.e, global0.a.a.b, vec4<f32>(global0.a.a.a.e, global0.a.a.b.e, 439f, -1120f)))) != _wgslsmith_f_op_f32(f32(-1f) * -533f)), !vec4<bool>(global0.a.c.x, false, all(vec2<bool>(true, global0.a.c.x)) || (global0.a.c.x & global0.a.c.x), !all(global0.a.c.zy)));
    var_1 = select(vec4<bool>(true, true, abs(firstLeadingBit(var_0)) > ~var_0, true), !vec4<bool>(any(select(vec3<bool>(var_1.x, var_1.x, var_1.x), global0.a.c, global0.a.c.x)), !(!var_1.x), global0.a.c.x, all(select(vec2<bool>(true, true), var_1.xw, global0.a.c.x))), vec4<bool>(var_1.x, global0.a.c.x, true, any(select(select(vec4<bool>(global0.a.c.x, true, true, global0.a.c.x), vec4<bool>(false, var_1.x, global0.a.c.x, false), false), !vec4<bool>(global0.a.c.x, false, global0.a.c.x, global0.a.c.x), true))));
    let var_2 = global0.a.a.a.e;
    let var_3 = _wgslsmith_sub_i32(~((-5537i >> (u_input.c.x % 32u)) ^ global0.a.a.b.d.x), abs(firstTrailingBit(-2147483647i))) > -2147483647i;
    return Struct_5(Struct_4(Struct_2(Struct_1(global0.a.a.a.a, global0.a.a.b.b, 0u, global0.a.a.b.d, global0.a.a.b.e), global0.a.a.a, ~select(global0.a.b, 0u, var_1.x)), _wgslsmith_add_u32(min(4294967295u, u_input.c.x) << (global0.a.b % 32u), u_input.b), var_1.zyw));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>) -> Struct_3 {
    global0 = Struct_5(global0.a);
    global0 = func_2();
    global0 = func_2();
    return Struct_3(select(vec2<u32>(u_input.b, min(_wgslsmith_div_u32(0u, u_input.b), 83435u)), ~vec2<u32>(_wgslsmith_mod_u32(global0.a.b, global0.a.a.a.c), firstLeadingBit(global0.a.b)), vec2<bool>(~4294967295u != global0.a.a.a.c, arg_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    global0 = Struct_5(func_2().a);
    let var_0 = _wgslsmith_f_op_f32(trunc(arg_1.b.x));
    var var_1 = func_2();
    let var_2 = arg_1;
    var var_3 = (_wgslsmith_mult_u32(arg_2.a.x, ~var_1.a.a.b.b.x) == ~4294967295u) || var_1.a.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1084f + -962f));
}

fn func_5(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_4(global0.a.a, u_input.b, !global0.a.c);
    let var_1 = Struct_1(u_input.c, ~_wgslsmith_mod_vec4_u32(~vec4<u32>(19490u, global0.a.b, u_input.b, u_input.b), max(firstLeadingBit(var_0.a.a.b), firstLeadingBit(vec4<u32>(37090u, global0.a.b, 1u, u_input.b)))), func_2().a.a.b.b.x, select(~global0.a.a.b.d, select(global0.a.a.a.d, var_0.a.b.d, !global0.a.c.yz) | firstTrailingBit(select(vec2<i32>(global0.a.a.b.d.x, u_input.a), vec2<i32>(0i, var_0.a.a.d.x), vec2<bool>(global0.a.c.x, global0.a.c.x))), !global0.a.c.x), 2143f);
    var_0 = func_2().a;
    let var_2 = -_wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_sub_i32(var_1.d.x, global0.a.a.b.d.x), abs(global0.a.a.b.d.x)), -min(vec2<i32>(u_input.a, 48636i), vec2<i32>(u_input.a, var_1.d.x) & var_0.a.a.d));
    var var_3 = global0.a;
    return Struct_3(var_1.b.wz, _wgslsmith_f_op_vec2_f32(select(arg_0.yx, arg_0.zz, func_2().a.c.yy)));
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_5) -> Struct_5 {
    global0 = arg_3;
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.b))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.a.e, -515f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -527f)));
    global0 = arg_3;
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -(~2147483647i), select(u_input.a, -2147483647i, arg_3.a.c.x)), abs(countOneBits(_wgslsmith_div_vec3_i32(select(vec3<i32>(-1i, 38998i, arg_3.a.a.b.d.x), vec3<i32>(-1i, 26767i, global0.a.a.b.d.x), vec3<bool>(false, true, false)), vec3<i32>(2147483647i, global0.a.a.b.d.x, arg_3.a.a.a.d.x)))));
    let var_2 = _wgslsmith_sub_vec3_u32(global0.a.a.b.b.wyz, global0.a.a.a.a);
    return Struct_5(func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(firstLeadingBit(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.c, global0.a.a.a.b.wzx)), _wgslsmith_mod_u32(4294967295u ^ u_input.c.x, ~u_input.b))), func_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a.b.e * global0.a.a.a.e) * global0.a.a.b.e), _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -7251i, -29220i), vec4<i32>(-40672i, 10795i, 12788i, -2147483647i)), func_1(vec2<f32>(global0.a.a.b.e, 319f), global0.a.c.xz), Struct_3(u_input.c.yx, vec2<f32>(global0.a.a.b.e, global0.a.a.b.e)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(271f * 289f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.a.a.e, _wgslsmith_f_op_f32(global0.a.a.b.e + global0.a.a.b.e))), func_2());
    var var_0 = ~vec4<u32>(~31645u, _wgslsmith_sub_u32(~1u, 0u), _wgslsmith_mod_u32(u_input.c.x, 61085u), ~_wgslsmith_dot_vec3_u32(u_input.c, global0.a.a.a.b.zyx) & _wgslsmith_mod_u32(_wgslsmith_add_u32(global0.a.b, 1u), u_input.c.x));
    global0 = Struct_5(func_2().a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1255f, func_2().a.a.a.e) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.a.a.e, global0.a.a.b.e) - vec2<f32>(-2546f, global0.a.a.b.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.a.e, 412f)), var_0.x >= 4294967295u))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1205f, -1327f), vec2<f32>(1000f, global0.a.a.b.e))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a.a.a.e, global0.a.a.a.e))))));
}

