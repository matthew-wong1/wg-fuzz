struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_3) -> vec2<i32> {
    global0 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(global0.x + -2062f));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    var var_1 = select(abs(abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, 1u), ~21327u))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~select(vec3<u32>(60932u, 38401u, 80702u), vec3<u32>(u_input.a.x, 92048u, u_input.a.x), vec3<bool>(true, arg_2.b.a.x, arg_2.b.a.x)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 1u, 7350u), vec3<u32>(1u, 86711u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), select(vec3<bool>(arg_2.c.a.x, true, arg_2.b.c), vec3<bool>(arg_2.c.c, false, arg_2.b.c), vec3<bool>(arg_2.c.c, arg_2.b.c, true)))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(24534u, u_input.a.x, u_input.a.x) | vec3<u32>(1u, 11836u, u_input.a.x), max(vec3<u32>(4294967295u, 0u, 35580u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<u32>(~0u, firstLeadingBit(1u), 1u))), any(!select(vec4<bool>(true, arg_2.c.c, arg_2.b.c, true), vec4<bool>(true, arg_2.b.c, true, true), true)));
    var var_2 = countOneBits(vec2<i32>(arg_2.c.b.x, abs(-17720i)));
    var_0 = arg_0.x;
    return (arg_1 & vec2<i32>(~abs(var_2.x), ~arg_2.c.b.x)) >> (_wgslsmith_mod_vec2_u32(u_input.a, ~abs(u_input.a & u_input.a)) % vec2<u32>(32u));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_dot_vec2_i32(select(u_input.b.xz, abs(u_input.c.xw), !vec2<bool>(arg_0 > -627f, all(vec4<bool>(true, false, false, true)))), vec2<i32>(~(-var_0.x), ~(~1i)));
    var var_2 = vec3<f32>(1322f, -376f, arg_0);
    var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(u_input.b), vec4<i32>(1i, var_0.x, var_0.x, 1i), u_input.c), vec4<i32>(~var_0.x, firstTrailingBit(u_input.c.x), ~u_input.c.x, var_0.x ^ var_0.x)) << (_wgslsmith_mult_u32(15645u, _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x)) % 32u), 159i << ((0u & u_input.a.x) % 32u), -27229i, -(~(-30280i)));
    global0 = var_2.yz;
    return Struct_3(-u_input.c.x, Struct_1(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), func_3(vec2<f32>(_wgslsmith_div_f32(-1525f, -1874f), var_2.x), min(-vec2<i32>(u_input.b.x, var_1), u_input.c.yz), Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1, -12995i, 0i), u_input.b), Struct_1(vec2<bool>(false, false), vec2<i32>(u_input.c.x, var_1), true), Struct_1(vec2<bool>(false, false), vec2<i32>(u_input.c.x, u_input.b.x), true))), false || all(vec2<bool>(false, true))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true), ~_wgslsmith_mult_vec2_i32(vec2<i32>(19531i, var_1), u_input.b.yx), any(vec3<bool>(true, true, true)) & any(vec4<bool>(true, true, true, true))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> f32 {
    global0 = vec2<f32>(811f, global0.x);
    var var_0 = global0.x;
    var var_1 = func_2(global0.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-604f, _wgslsmith_f_op_f32(global0.x + 756f), -763f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 439f, 1000f) - vec3<f32>(global0.x, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-830f, 144f, -1000f), vec3<f32>(global0.x, -1451f, -241f), vec3<bool>(true, arg_2.b.x, true)))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), -1000f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 879f)), -304f) * vec4<f32>(_wgslsmith_f_op_f32(var_2.x - global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -354f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(false, true), vec2<i32>(u_input.b.x, -47970i), false), 2147483647i, Struct_2(Struct_1(vec2<bool>(false, true), u_input.c.wx, false), vec2<bool>(true, false), Struct_1(vec2<bool>(true, false), vec2<i32>(-19817i, -2147483647i), false)))), _wgslsmith_f_op_f32(global0.x * 205f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(431f, global0.x) - vec2<f32>(global0.x, 1529f)))))));
    let var_0 = vec3<bool>(false, true, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1454f, global0.x, 1155f) * vec4<f32>(global0.x, global0.x, 129f, -2054f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -314f), _wgslsmith_f_op_f32(-830f + global0.x), -448f, 797f))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_1(var_0.zy, vec2<i32>(u_input.c.x, u_input.c.x), var_0.x), u_input.c.x, Struct_2(Struct_1(vec2<bool>(var_0.x, true), vec2<i32>(u_input.b.x, 13440i), var_0.x), var_0.yx, Struct_1(var_0.xx, u_input.c.xx, var_0.x)))), _wgslsmith_f_op_f32(sign(-951f)))), _wgslsmith_f_op_f32(min(global0.x, global0.x)), _wgslsmith_f_op_f32(abs(-1753f)), _wgslsmith_f_op_f32(ceil(global0.x)))));
    let var_2 = vec2<f32>(979f, _wgslsmith_f_op_f32(-global0.x));
    let var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(58628i);
}

