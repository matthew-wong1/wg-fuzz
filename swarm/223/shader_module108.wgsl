struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8>;

var<private> global1: Struct_1 = Struct_1(-126f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> bool {
    let var_0 = -1000f;
    var var_1 = reverseBits(firstTrailingBit(vec3<i32>(i32(-1i) * -2147483647i, max(36442i, -1i), abs(~u_input.d.x))));
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(~abs(u_input.c.zw)), ~(~u_input.c.yz)), ~u_input.c.xz);
    var var_3 = Struct_1(global1.a);
    let var_4 = Struct_1(-569f);
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = select(true, any(vec4<bool>(true, true, true, !func_3())), all(vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), true)));
    let var_1 = arg_2;
    var var_2 = ~_wgslsmith_mod_u32(arg_1.x, 40412u);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(168f - 619f), 605f, true)), -1230f))));
    var_2 = firstTrailingBit(abs(_wgslsmith_div_u32(u_input.c.x, min(8646u, 4294967295u)))) | arg_1.x;
    return Struct_1(global1.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    global1 = Struct_1(arg_2.x);
    global0 = array<vec2<f32>, 8>();
    global0 = array<vec2<f32>, 8>();
    var var_0 = func_2(max(u_input.d.xy, ~(-abs(vec2<i32>(-2147483647i, -39329i)))), ~u_input.c.zwz, u_input.a, arg_2.x);
    var var_1 = Struct_1(1894f);
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    global1 = func_4(func_2(vec2<i32>(-u_input.d.x | -57032i, -u_input.d.x), ~arg_1, u_input.c.x, -812f), func_2(abs(u_input.d.yx), abs(~arg_1), u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-608f - _wgslsmith_f_op_f32(trunc(global1.a))) + global1.a)), vec3<f32>(global1.a, _wgslsmith_f_op_f32(-global1.a), global1.a));
    global1 = func_4(Struct_1(func_4(func_4(Struct_1(global1.a), Struct_1(-1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, global1.a) * vec3<f32>(global1.a, 2021f, -964f))), func_4(Struct_1(2437f), Struct_1(677f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-445f, 1510f, -933f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, -350f, -1721f), vec3<f32>(global1.a, global1.a, -1505f)))).a), Struct_1(global1.a), vec3<f32>(_wgslsmith_div_f32(global1.a, _wgslsmith_div_f32(global1.a, global1.a)), 1295f, -1000f));
    var var_0 = global1.a;
    var var_1 = Struct_1(global1.a);
    var var_2 = func_2(vec2<i32>(u_input.b, u_input.d.x) >> (vec2<u32>(_wgslsmith_add_u32(1u, ~u_input.a), _wgslsmith_mod_u32(~1u, ~u_input.a)) % vec2<u32>(32u)), ~select(~u_input.c.xwx, vec3<u32>(u_input.c.x, 0u, 1u), arg_0), arg_1.x, func_4(func_2(min(u_input.d.xz, vec2<i32>(u_input.d.x, u_input.b)) ^ vec2<i32>(-1i, -1i), ~reverseBits(arg_1), arg_1.x, _wgslsmith_f_op_f32(trunc(func_4(Struct_1(global1.a), Struct_1(134f), vec3<f32>(488f, -1190f, 930f)).a))), Struct_1(-915f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.a, var_1.a, var_1.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a, -1072f, global1.a), vec3<f32>(var_1.a, var_1.a, -1410f)))))))).a);
    return Struct_1(308f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), abs(u_input.c.xxy));
    let x = u_input.a;
    s_output = StorageBuffer(-1i ^ u_input.d.x, _wgslsmith_div_vec4_i32(select(vec4<i32>(_wgslsmith_mult_i32(1i, -1i), u_input.d.x, u_input.b >> (1u % 32u), u_input.b), abs(-vec4<i32>(-7448i, 30911i, -9810i, u_input.d.x)), vec4<bool>(true, true, true, true)), firstTrailingBit(-firstTrailingBit(vec4<i32>(-1i, u_input.b, 41842i, 0i)))), reverseBits(u_input.c.xxz), -(vec4<i32>(0i, select(u_input.b, -10609i, true), u_input.d.x, firstTrailingBit(-2147483647i)) ^ _wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, -320i, 2147483647i, u_input.d.x), vec4<i32>(-1i, u_input.b, -1i, -1i))));
}

