struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = false;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1691f))), _wgslsmith_f_op_f32(-509f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1092f, -2116f))) * _wgslsmith_f_op_f32(round(-1029f)))));
    var var_2 = -1i;
    let var_3 = Struct_4(vec4<i32>(_wgslsmith_mult_i32(u_input.a, arg_0.b.c.x), 2147483647i, _wgslsmith_mod_i32(10562i, 13798i), _wgslsmith_mult_i32(reverseBits(0i), _wgslsmith_mult_i32(u_input.a, -2147483647i))));
    var_2 = reverseBits(arg_0.b.c.x >> (~70245u % 32u));
    return -(~abs(abs(firstLeadingBit(vec4<i32>(-82856i, -12446i, 8601i, 9735i)))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-934f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1501f)), _wgslsmith_div_f32(-963f, -1000f))))));
    let var_1 = ~vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 39879u, 1u), vec4<u32>(30910u, 13700u, 4294967295u, 0u)), 1u), ~(_wgslsmith_clamp_u32(0u, 1145u, 27651u) & 1u), _wgslsmith_div_u32(76662u, 1u));
    let var_2 = Struct_1(any(!vec4<bool>(false, any(vec2<bool>(false, true)), true, true)), vec2<i32>(1i, _wgslsmith_div_i32(u_input.b.x, -36127i)), firstTrailingBit(func_3(Struct_2(vec4<i32>(u_input.a, u_input.b.x, -38180i, 8634i), Struct_1(false, vec2<i32>(-10449i, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 22399i))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-370f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))) * var_0), var_2.a)));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1024f)))))), _wgslsmith_f_op_f32(f32(-1f) * -405f));
    return Struct_2(countOneBits(var_2.c), var_2);
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = ~0u;
    var var_1 = func_2();
    var var_2 = _wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(arg_0.a, arg_0.a) << (firstTrailingBit(vec4<u32>(4294967295u, var_0, var_0, 1u)) % vec4<u32>(32u))), arg_0.a) & (-_wgslsmith_clamp_vec4_i32(vec4<i32>(1083i, 9509i, -14645i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, var_1.a.x), vec4<i32>(2147483647i, 16738i, -25206i, 2147483647i)) << (~vec4<u32>(abs(var_0), 1u, 1u, var_0) % vec4<u32>(32u)));
    var var_3 = min(4480i, -30589i);
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-201f - -464f) - _wgslsmith_f_op_f32(trunc(-990f))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-606f, -1000f) + -363f))), 216f))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 923f;
    var var_1 = func_1(Struct_3(select(vec4<i32>(5937i, -29235i, 22022i, u_input.b.x), reverseBits(vec4<i32>(145i, u_input.a, -38164i, 1i)), vec4<bool>(false, true, true, true)) << (_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(49390u, 33595u, 12994u, 32704u)), select(vec4<u32>(0u, 1u, 0u, 40261u), vec4<u32>(13367u, 1u, 0u, 48334u), false)) % vec4<u32>(32u))));
    var_1 = !(true && all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    var var_2 = var_0;
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -510f), var_0));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-283f)), _wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(-242f, var_0))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(369f)) + var_0), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(var_0 + 633f)), _wgslsmith_f_op_f32(var_0 * var_0))), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-344f)), 490f, _wgslsmith_f_op_f32(var_0 * -867f)))), max(_wgslsmith_add_i32(u_input.b.x << (_wgslsmith_mod_u32(20205u, 156123u) % 32u), u_input.a), 13081i));
}

