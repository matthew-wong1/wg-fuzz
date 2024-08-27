struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: u32) -> vec2<f32> {
    var var_0 = -28516i;
    var var_1 = Struct_2(Struct_1(false, any(vec2<bool>(true, true)), _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(arg_0.a.c, -41674i), 2147483647i, -2147483647i)));
    let var_2 = vec2<u32>(1u, ~13949u);
    let var_3 = var_1.a.c;
    let var_4 = !(all(!(!vec3<bool>(false, true, arg_0.a.b))) && (~arg_1 < arg_1));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(160f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-336f + -1064f)), _wgslsmith_f_op_f32(-102f + _wgslsmith_f_op_f32(-827f + -367f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1088f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2716f), _wgslsmith_f_op_f32(-1466f * 138f))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_2) -> bool {
    global0 = false;
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-763f, 1061f)) * _wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(false, arg_3.a.b, -2147483647i)), 37437u, true, 14818u))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(506f, 587f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-838f, 1011f), vec2<f32>(872f, 2101f)))))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(311f)))), 1321f)))));
    global0 = false;
    let var_1 = -897f;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1, -2068f, 456f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(657f, -845f, -944f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_1)), select(arg_1.wyz, arg_1.xzx, vec3<bool>(false, true, arg_3.a.a)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -779f, var_0.x) * vec3<f32>(1838f, -322f, var_0.x)))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1000f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1262f, 168f, -1646f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-104f, -415f, var_1), vec3<f32>(var_1, var_0.x, var_1))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -982f, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_1)))))));
    return arg_3.a.b;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: i32, arg_3: bool) -> bool {
    var var_0 = Struct_1(!all(!vec2<bool>(arg_3, false)), all(!select(select(vec3<bool>(arg_3, true, true), vec3<bool>(true, true, arg_3), vec3<bool>(arg_3, arg_3, false)), vec3<bool>(arg_3, arg_3, true), false)), -(~u_input.a.x));
    global0 = true;
    var_0 = Struct_1(arg_3, false, var_0.c);
    var var_1 = Struct_1((!any(vec4<bool>(false, true, false, false)) && true) & !((var_0.a && var_0.b) || true), all(vec4<bool>(select(true, false, var_0.a) != false, arg_3, false, arg_3)), var_0.c);
    let var_2 = -22998i << (~(~(~firstLeadingBit(u_input.b.x))) % 32u);
    return true || (!arg_3 || false);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> f32 {
    global0 = false;
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(214f * 158f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) - _wgslsmith_div_f32(1420f, arg_0.x))))));
    global0 = true;
    global0 = !func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.x))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)))), abs(~1i), true & (true & func_2(Struct_2(Struct_1(true, false, u_input.d)), vec4<bool>(false, true, true, true), u_input.c, Struct_2(Struct_1(true, false, 3136i)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_0.yy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(217f, arg_0.x))));
    return 545f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = true;
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.d, u_input.c, -1i), u_input.a))), 0i, _wgslsmith_clamp_i32(-37687i, _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.wy >> (u_input.b.yy % vec2<u32>(32u)), u_input.a.xy)), abs(1i)), u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -113f);
    let var_3 = u_input.a;
    let var_4 = u_input.b.zx;
    var var_5 = 438f;
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(1000f, -244f, 435f, 1342f), 0u)) + _wgslsmith_div_f32(966f, 614f)), -857f, _wgslsmith_f_op_f32(min(-873f, 345f))))));
    let var_7 = var_6.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 29459u << (1u % 32u), 1u, ~121967u), vec4<u32>(max(4294967295u, u_input.b.x), _wgslsmith_mult_u32(var_4.x, u_input.b.x), 4294967295u, 0u)) >> (~max(reverseBits(vec4<u32>(var_4.x, u_input.b.x, var_4.x, 24947u)), ~vec4<u32>(u_input.b.x, u_input.b.x, 19042u, 27397u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_6), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2202f, 325f, -537f), vec3<f32>(286f, var_7.x, var_6.x), vec3<bool>(false, true, false))), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(483f, var_7.x, 1649f) + vec3<f32>(var_6.x, -729f, var_6.x)) - _wgslsmith_f_op_vec3_f32(-var_6))) * _wgslsmith_f_op_vec3_f32(-var_6)), vec4<u32>(~143806u, abs(firstTrailingBit(var_4.x)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x << (var_4.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(15299u, 0u), vec2<u32>(var_4.x, 0u))), 41662u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_4.x, u_input.b.x), ~(~4294967295u))));
}

