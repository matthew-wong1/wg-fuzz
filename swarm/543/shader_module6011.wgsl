struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_4,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> vec4<u32> {
    var var_0 = firstLeadingBit(1i);
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1761f, 784f) - 959f)));
    var var_2 = firstLeadingBit(arg_0.yx);
    let var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_0.zx, firstLeadingBit(u_input.a.zy) ^ arg_0.yz), _wgslsmith_dot_vec4_i32(-vec4<i32>(firstLeadingBit(-7775i), _wgslsmith_mult_i32(var_2.x, arg_0.x), _wgslsmith_mult_i32(-6659i, -1i), var_2.x), _wgslsmith_mod_vec4_i32(min(vec4<i32>(1i, -52719i, 4997i, arg_0.x), firstLeadingBit(vec4<i32>(arg_1, arg_1, arg_1, arg_0.x))), vec4<i32>(select(0i, u_input.a.x, true), 51677i, -33907i, u_input.a.x))));
    return vec4<u32>(min(4294967295u, ~select(~u_input.b, 4294967295u, true)), _wgslsmith_sub_u32(u_input.b, u_input.b), ~select(select(4197u, ~86396u, arg_1 >= -1i), firstTrailingBit(u_input.b), false), ~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, u_input.b), 9542u)));
}

fn func_2(arg_0: u32) -> vec2<bool> {
    let var_0 = func_3(_wgslsmith_mult_vec3_i32(u_input.a, _wgslsmith_sub_vec3_i32(u_input.a, u_input.a)), -u_input.a.x);
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(406f, -773f)))));
    let var_2 = true;
    var var_3 = vec3<i32>(0i, u_input.a.x, 0i);
    var var_4 = var_1.a;
    return vec2<bool>(false, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0, 1u), var_0.zwx), ~var_0.xyw | ~var_0.xyx) >= u_input.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    var var_0 = vec3<bool>(true, !any(!func_2(10130u)), true);
    let var_1 = ~(vec3<i32>(u_input.a.x, u_input.a.x, i32(-1i) * -2147483647i) & -min(u_input.a, firstLeadingBit(vec3<i32>(23834i, u_input.a.x, u_input.a.x))));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f) + _wgslsmith_f_op_f32(round(283f))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-386f * _wgslsmith_div_f32(309f, 406f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_mod_u32(~(~(~27286u)), u_input.b), Struct_4(Struct_1(_wgslsmith_f_op_f32(max(-905f, 980f)))), _wgslsmith_add_vec4_i32(vec4<i32>(62136i, _wgslsmith_mult_i32(30163i, var_1.x) & u_input.a.x, i32(-1i) * -4837i, firstTrailingBit(_wgslsmith_mult_i32(-1i, var_1.x))), abs(vec4<i32>(-1i) * -vec4<i32>(var_1.x, 1i, -2147483647i, u_input.a.x))), vec3<f32>(-1079f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1798f * 860f), _wgslsmith_f_op_f32(f32(-1f) * -965f))) - 1f), 1f));
    var var_3 = 425f;
    var var_4 = Struct_3(-firstTrailingBit(_wgslsmith_clamp_i32(0i, u_input.a.x, -17770i)), var_2.c.a, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1140f)), var_2.c.a.a, (var_2.b | var_2.b) < ~52597u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))));
    return firstLeadingBit(~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, ~1u | u_input.b, select(~59313u, func_1(vec3<bool>(true, false, true), true, 64614u, vec2<bool>(true, false)), all(vec4<bool>(false, true, true, false)))), firstTrailingBit(vec3<u32>(~0u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(0u, 27094u, u_input.b, 44085u))))) % 32u);
    var_0 = _wgslsmith_div_i32(u_input.a.x, 1i);
    var_0 = 33299i;
    var_0 = -29212i;
    var var_1 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-481f, -2538f, false)), _wgslsmith_f_op_f32(930f + 997f), -2127f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-388f, 944f, 395f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(537f, -1162f, -618f) + vec3<f32>(1558f, -986f, 414f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-176f, -457f, -1886f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(725f, -2510f, -1000f) * vec3<f32>(-633f, -2642f, -798f)))))));
}

