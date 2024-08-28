struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_clamp_i32(0i, arg_0.b >> (1u % 32u), -u_input.c);
    var var_1 = arg_0.c;
    var_1 = Struct_2(Struct_1(0u), true, false, arg_0.c.d);
    var_1 = Struct_2(Struct_1(1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -360f))) == arg_0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0.a.x, 1515f, var_1.b)), _wgslsmith_f_op_f32(-arg_0.a.x), false != arg_0.c.b)), _wgslsmith_f_op_f32(step(2271f, -1806f)))) <= arg_0.a.x, _wgslsmith_div_u32(abs(u_input.b.x), var_1.d));
    var_0 = _wgslsmith_mult_i32(35184i, min(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c >> (arg_0.c.a.a % 32u), abs(-37593i)), countOneBits(0i) << (abs(u_input.a.x) % 32u)), -11269i));
    return arg_0.a.x;
}

fn func_2() -> u32 {
    var var_0 = -646f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1114f);
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(368f + _wgslsmith_f_op_f32(func_3(Struct_3(vec2<f32>(-1777f, -2477f), u_input.c, Struct_2(Struct_1(u_input.b.x), true, false, 4294967295u))))), -265f), u_input.c, Struct_2(Struct_1(116016u), false, !(~55957u == ~u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(u_input.a.x), u_input.b.x >> (u_input.b.x % 32u), max(u_input.a.x, u_input.b.x)), u_input.a.xwx)));
    var var_2 = var_1.c;
    let var_3 = Struct_1(abs(4294967295u | firstTrailingBit(_wgslsmith_mod_u32(12870u, var_2.a.a))));
    return 1u;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(abs(u_input.a.x));
    var_0 = Struct_1(countOneBits(func_2()));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(2451f, -1368f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-230f)))), _wgslsmith_f_op_f32(sign(-532f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-906f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 759f) - _wgslsmith_f_op_f32(-891f - -1300f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(815f, -1235f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1650f)) * _wgslsmith_f_op_f32(f32(-1f) * -1384f))))));
    var var_2 = abs(var_0.a) >> (_wgslsmith_add_u32(u_input.a.x, abs(var_0.a)) % 32u);
    var_0 = Struct_1(u_input.b.x);
    return ~abs(u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = true;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -764f)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -459f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1092f)) * _wgslsmith_f_op_f32(-1f)));
    var_1 = var_0 && true;
    let var_2 = vec4<u32>(u_input.b.x, func_1(), _wgslsmith_mult_u32(35651u << (u_input.b.x % 32u), u_input.a.x), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(26204u);
}

