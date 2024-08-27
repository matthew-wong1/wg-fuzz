struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-166f)))) * -526f)), _wgslsmith_f_op_f32(ceil(-1089f)));
    var var_1 = Struct_3(Struct_1(-vec2<i32>(_wgslsmith_div_i32(-2147483647i, arg_0), _wgslsmith_dot_vec2_i32(vec2<i32>(22658i, 2147483647i), vec2<i32>(arg_0, -1i))), true, 814f));
    var_1 = Struct_3(var_1.a);
    var var_2 = !(!select(!vec2<bool>(var_1.a.b, true), vec2<bool>(true, 35724u >= u_input.a), false));
    var_1 = Struct_3(Struct_1(var_1.a.a, var_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-438f, 473f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 - 1512f))))));
    return _wgslsmith_f_op_f32(round(-538f));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> i32 {
    var var_0 = Struct_3(Struct_1(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.a.x, arg_0.a.x), arg_0.a)), arg_0.b, arg_1.x));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-var_0.a.c)))), _wgslsmith_f_op_f32(select(arg_0.c, _wgslsmith_f_op_f32(exp2(arg_1.x)), !all(vec2<bool>(arg_0.b, false)))));
    let var_2 = Struct_1(arg_0.a, all(select(!(!vec2<bool>(arg_0.b, false)), vec2<bool>(true, true), arg_0.b)), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(_wgslsmith_div_f32(759f, _wgslsmith_f_op_f32(130f - var_0.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, 869f)))));
    var_0 = Struct_3(var_2);
    var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1.xz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zx)))))));
    return var_2.a.x;
}

fn func_2(arg_0: f32, arg_1: u32) -> vec2<i32> {
    var var_0 = func_4(Struct_1(_wgslsmith_sub_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)), 367f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1681f, -477f))), -432f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, _wgslsmith_f_op_f32(func_3(~1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, -292f)))))));
    var_0 = -_wgslsmith_mod_i32(-(~func_4(Struct_1(vec2<i32>(-21282i, 45869i), false, -603f), vec3<f32>(arg_0, -778f, -1436f))), func_4(Struct_1(-vec2<i32>(59691i, 2147483647i), true, _wgslsmith_f_op_f32(f32(-1f) * -1663f)), vec3<f32>(_wgslsmith_f_op_f32(-498f + -966f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -161f))));
    var var_1 = true;
    var_1 = arg_0 <= 721f;
    var_1 = any(vec2<bool>(!all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))));
    return vec2<i32>(~1i, -36402i) << ((vec2<u32>(abs(arg_1 ^ arg_1), ~arg_1) << ((_wgslsmith_mult_vec2_u32(u_input.b, u_input.c) ^ vec2<u32>(45657u & u_input.a, u_input.c.x)) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    var var_0 = u_input.c.x;
    var_0 = u_input.c.x;
    var_0 = u_input.d.x;
    var var_1 = arg_1.a.a.x;
    var_1 = _wgslsmith_mod_i32(-(~(-(-1i & arg_1.a.a.x))), arg_0.a.x);
    return arg_0;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    let var_0 = func_5(Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-5793i, -2147483647i), vec2<i32>(1i, 8340i)), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(35952i, -1i), vec2<i32>(6061i, -21091i), vec2<i32>(17628i, -2147483647i))), _wgslsmith_mult_vec2_i32(func_2(arg_0, u_input.b.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(-48357i, 28688i), vec2<i32>(10504i, 2147483647i), vec2<i32>(-2147483647i, -2147483647i)))), true, 1f), Struct_3(Struct_1(~(-vec2<i32>(-7840i, 1i)), true, -207f)));
    var var_1 = Struct_3(Struct_1(var_0.a, select(var_0.a.x, ~(-21373i), true) <= firstLeadingBit(var_0.a.x), -699f));
    var var_2 = ~u_input.b.x;
    var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~min(1809u, 1u), u_input.a, ~0u), vec3<u32>(~u_input.b.x, abs(1u) >> (_wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(94197u, 4294967295u, 0u)) % 32u), u_input.d.x));
    var_2 = 4294967295u;
    return StorageBuffer(reverseBits(vec3<u32>(~u_input.b.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.c.x, u_input.d.x, u_input.a), vec4<u32>(u_input.b.x, u_input.d.x, u_input.d.x, u_input.c.x)) % 32u), u_input.d.x, abs(38989u))), -279f, ~firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -1i, 1i, var_0.a.x), vec4<i32>(0i, var_1.a.a.x, var_0.a.x, var_0.a.x) & vec4<i32>(var_0.a.x, var_1.a.a.x, -36006i, -78279i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(299f - _wgslsmith_div_f32(-1095f, -346f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-1386f, 773f)))))));
}

