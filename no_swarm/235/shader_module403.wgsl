struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(-4218i, 6001i, -1i, 16490i, 0i, 176i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_5) -> vec4<bool> {
    global0 = array<i32, 6>();
    let var_0 = ~vec2<u32>(1u, 1u);
    var var_1 = i32(-1i) * -34779i;
    let var_2 = _wgslsmith_f_op_f32(-1302f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(764f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(select(-759f, arg_1.a, false))))));
    global0 = array<i32, 6>();
    return !vec4<bool>(var_0.x < ~(var_0.x >> (var_0.x % 32u)), arg_2.a.x, arg_2.a.x, any(select(vec2<bool>(arg_0, false), vec2<bool>(arg_2.a.x, arg_0), vec2<bool>(false, arg_1.c))) & true);
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    global0 = array<i32, 6>();
    var var_0 = Struct_5(vec2<bool>(any(arg_2.b.a), true));
    var var_1 = !select(select(func_3(true, Struct_3(arg_1.b.d, arg_2.b, var_0.a.x), Struct_5(vec2<bool>(arg_1.c, arg_1.b.a.x))), !(!vec4<bool>(arg_2.b.c, false, false, arg_0)), select(!vec4<bool>(false, true, false, var_0.a.x), vec4<bool>(true, true, false, var_0.a.x), select(vec4<bool>(arg_1.b.c, arg_2.c, var_0.a.x, arg_1.c), vec4<bool>(arg_2.b.c, arg_1.c, false, true), var_0.a.x))), func_3(arg_1.c, arg_2, Struct_5(select(var_0.a, vec2<bool>(true, false), true))), arg_2.c);
    var_1 = func_3(true, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_1.b.d))))), arg_2.b, any(select(!vec3<bool>(arg_1.b.c, true, var_1.x), arg_1.b.a, !var_0.a.x))), Struct_5(arg_1.b.a.zy));
    var_1 = !(!select(select(!vec4<bool>(arg_2.c, var_1.x, false, true), vec4<bool>(arg_2.b.c, var_0.a.x, var_1.x, false), true), !(!vec4<bool>(true, false, arg_1.b.a.x, var_1.x)), true));
    return arg_2.c;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> Struct_2 {
    global0 = array<i32, 6>();
    let var_0 = vec4<bool>(all(!vec4<bool>(false, true, select(true, true, true), func_2(true, Struct_3(arg_0, Struct_1(vec3<bool>(false, true, true), -14802i, true, arg_1.x), true), Struct_3(488f, Struct_1(vec3<bool>(false, true, true), 2147483647i, false, -149f), true)))), false, true && func_2(true, Struct_3(1907f, Struct_1(vec3<bool>(false, true, false), u_input.a.x, true, -518f), true), Struct_3(_wgslsmith_f_op_f32(arg_1.x - 1741f), Struct_1(vec3<bool>(false, false, false), 1i, false, arg_1.x), true)), true);
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(-1345f, arg_1.x)))))), u_input.a.x, Struct_1(!var_0.wzy, ~(-78546i), true, _wgslsmith_f_op_f32(arg_1.x + -602f)));
    var var_2 = Struct_4(select(!vec3<bool>(var_1.c.a.x, false, var_1.c.c), var_1.c.a, all(!var_1.c.a)), !var_0.x);
    var var_3 = Struct_4(vec3<bool>(all(!select(var_0.ywz, vec3<bool>(false, var_2.a.x, true), var_1.c.c)), true & (1u <= _wgslsmith_dot_vec3_u32(vec3<u32>(11172u, 1u, 112369u), vec3<u32>(40453u, 0u, 9552u))), func_3(true, Struct_3(-216f, var_1.c, var_1.c.a.x), Struct_5(var_0.wy)).x), var_0.x);
    return Struct_2(_wgslsmith_f_op_f32(max(var_1.a, var_1.a)), 1i, Struct_1(vec3<bool>(false, (var_1.b >= -79685i) | var_2.b, any(vec4<bool>(var_1.c.c, false, var_3.a.x, true))), (u_input.a.x >> (~1u % 32u)) & (max(-1i, 11116i) << (1u % 32u)), true, _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + -962f)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = -firstTrailingBit(~select(vec2<i32>(arg_2.b.b, -1i), vec2<i32>(u_input.a.x, u_input.a.x), arg_0.c.a.xx));
    let var_1 = -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(85009u, 6u)], arg_0.b), vec2<i32>(u_input.a.x, var_0.x)), var_0), ~vec2<i32>(72397i, -2147483647i)), ~arg_2.b.b);
    var var_2 = Struct_5(!vec2<bool>(!func_1(-799f, vec2<f32>(arg_0.c.d, -759f)).c.c, true));
    let var_3 = ~(~abs(select(vec3<u32>(1u, 32301u, 12965u), vec3<u32>(9341u, 4294967295u, 0u), arg_2.b.a)) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    var var_4 = arg_1.yw;
    return reverseBits(var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~u_input.a.zx);
    global0 = array<i32, 6>();
    let var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = vec4<u32>(~24116u, _wgslsmith_dot_vec3_u32(~vec3<u32>(6476u, 1u, 0u), vec3<u32>(1u, 1u, 1u)) & ~reverseBits(49304u), _wgslsmith_mod_u32(~countOneBits(15583u), ~1u), 0u) << (vec4<u32>(1u, ~func_4(func_1(-297f, vec2<f32>(var_1, var_1)), vec4<f32>(var_1, var_1, -628f, var_1), Struct_3(var_1, Struct_1(vec3<bool>(true, true, true), var_0.x, true, -1958f), true)), countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(61135u, 16182u), ~vec2<u32>(30444u, 1u))), abs(0u)) % vec4<u32>(32u));
    var var_3 = ~_wgslsmith_mult_i32(~(-global0[_wgslsmith_index_u32(max(32216u, var_2.x), 6u)]), _wgslsmith_div_i32(~global0[_wgslsmith_index_u32(4294967295u, 6u)], ~(-7676i)) >> (1u % 32u));
    let var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, ~(~u_input.a.x), global0[_wgslsmith_index_u32(1u, 6u)], ~(~1i)), ~u_input.a);
    let var_5 = Struct_2(var_1, var_4 | (_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.x, 0i)), vec2<i32>(var_0.x, -1i)) & var_0.x), Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), func_1(var_1, vec2<f32>(1171f, 1019f)).c.a), vec3<bool>(true, var_0.x <= 2147483647i, true), true), 2147483647i, true && !(var_2.x >= var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(105f + var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(var_5.b, 64620i), func_1(_wgslsmith_f_op_f32(var_5.a * _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1, 460f))))).c.b, var_4, 1i), var_2.x);
}

