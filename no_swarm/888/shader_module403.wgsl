struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_3,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(vec2<u32>(22739u, abs(_wgslsmith_mult_u32(~1u, u_input.d >> (arg_0.a.x % 32u)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(112f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1554f + 287f), _wgslsmith_f_op_f32(1278f * 1881f)))), _wgslsmith_f_op_f32(-306f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-517f + -390f)))))));
    var var_1 = Struct_5(Struct_3(_wgslsmith_mult_vec4_u32(~vec4<u32>(20257u, arg_2.x, u_input.b, 34630u), abs(vec4<u32>(arg_2.x, u_input.a, 70390u, 1u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1621f, _wgslsmith_f_op_f32(f32(-1f) * -744f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-791f, 837f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(927f, 821f))))));
    let var_2 = 37917u;
    let var_3 = arg_0.x;
    var_1 = Struct_5(Struct_3(abs(max(~vec4<u32>(var_2, arg_1.a.x, u_input.b, 4294967295u), var_1.a.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2258f, -246f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1139f, 940f) * var_1.a.b))))));
    return arg_2.x & u_input.d;
}

fn func_1() -> f32 {
    var var_0 = vec4<u32>(14938u, 0u, _wgslsmith_add_u32(9291u, func_3(vec4<bool>(true, true, true, true), func_2(Struct_1(vec2<u32>(23419u, 0u))), ~vec2<u32>(u_input.b, 0u))), u_input.a) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, abs(u_input.a)), ~vec4<u32>(50377u, ~u_input.a, abs(23686u), u_input.d & u_input.a), vec4<u32>(u_input.a, 1u, ~(u_input.a ^ 52717u), u_input.a));
    var_0 = ~(~(~(~(vec4<u32>(16640u, u_input.d, var_0.x, 11926u) >> (vec4<u32>(42573u, 4294967295u, 4294967295u, 33681u) % vec4<u32>(32u))))));
    var_0 = ~firstTrailingBit(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 48657u, 20910u), vec4<u32>(var_0.x, 1u, 26309u, 1u))));
    var_0 = (firstLeadingBit(abs(~vec4<u32>(4294967295u, 53429u, 0u, u_input.d))) << (vec4<u32>(var_0.x, ~_wgslsmith_mult_u32(0u, 27028u), _wgslsmith_mod_u32(11106u, 22813u), u_input.b) % vec4<u32>(32u))) << (abs(vec4<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(27870u, 20996u)), _wgslsmith_div_u32(abs(80840u), var_0.x), u_input.d, _wgslsmith_add_u32(var_0.x, ~0u))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_add_vec2_i32(abs(~vec2<i32>(u_input.c.x, -1i)) >> (_wgslsmith_add_vec2_u32(var_0.xw, vec2<u32>(u_input.b, max(var_0.x, var_0.x))) % vec2<u32>(32u)), min(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, 0i) | abs(vec2<i32>(u_input.c.x, 7667i)), ~(-vec2<i32>(u_input.c.x, -2756i))), ~(~u_input.c)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1086f * 146f))) + 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = 1u;
    let var_1 = any(!select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(false, any(vec2<bool>(true, true)), true)));
    var_0 = u_input.b;
    var var_2 = false;
    var_0 = ~u_input.b;
    var_2 = !(!var_1);
    var var_3 = vec2<f32>(_wgslsmith_div_f32(1352f, -798f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(304f * 223f), _wgslsmith_f_op_f32(max(2719f, -145f))), _wgslsmith_f_op_f32(func_1())))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(var_3.x)), max(_wgslsmith_add_vec3_i32(countOneBits(~vec3<i32>(8170i, -40885i, u_input.c.x)), vec3<i32>(u_input.c.x, u_input.c.x << (44490u % 32u), ~(-20162i))), ~vec3<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), min(-1i, -1i), ~u_input.c.x)), u_input.c.x, abs(_wgslsmith_add_vec4_u32(vec4<u32>(~83094u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 9724u), vec2<u32>(0u, u_input.a)), u_input.b | 4294967295u), min(~vec4<u32>(u_input.d, u_input.d, 46023u, u_input.a), vec4<u32>(u_input.a, 1967u, u_input.b, 1u) & vec4<u32>(0u, 4294967295u, u_input.a, 1u)))), -1242f);
}

