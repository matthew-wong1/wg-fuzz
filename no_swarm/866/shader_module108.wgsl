struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(1u, 0u, 4766u), vec3<u32>(4294967295u, 1u, 11822u), vec3<u32>(17023u, 36334u, 40521u), vec3<u32>(31853u, 0u, 45406u), vec3<u32>(4294967295u, 52881u, 94134u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(-625f));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))));
    var var_2 = Struct_1(!arg_0.a);
    var_2 = arg_0;
    var var_3 = arg_0;
    return vec4<i32>(0i & u_input.b, u_input.a, ~_wgslsmith_mult_i32(u_input.b, _wgslsmith_mod_i32(i32(-1i) * -459i, u_input.b ^ -57188i)), ~(-1i));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = Struct_1(select(vec2<bool>(reverseBits(44663i) == _wgslsmith_clamp_i32(-1i, u_input.b, 37410i), true), vec2<bool>(true, true), !vec2<bool>(all(vec3<bool>(true, false, true)), any(vec4<bool>(false, true, false, true)))));
    let var_1 = var_0.a;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1073f))))))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_i32(u_input.a, 1i);
    var var_1 = 1000f;
    let var_2 = Struct_1(vec2<bool>(!all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(4294967295u)) + -653f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f) - -1000f)), 1000f, -467f, _wgslsmith_f_op_f32(f32(-1f) * -644f));
    var var_4 = _wgslsmith_div_u32(28598u, ~11953u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) - var_3.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = vec2<f32>(-345f, arg_1.x);
    var var_2 = 0i;
    let var_3 = Struct_1(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), select(false, false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), 461f <= _wgslsmith_f_op_f32(abs(var_1.x))), select(vec2<bool>(any(vec4<bool>(false, true, true, true)), true), vec2<bool>(true, true), true)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(!(!any(vec2<bool>(false, true))), -1i <= u_input.a));
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(1i, -u_input.b) ^ abs(~abs(vec2<i32>(u_input.b, 2147483647i))), vec2<i32>(u_input.b, (2147483647i << (u_input.c.x % 32u)) >> (0u % 32u)) ^ vec2<i32>(firstLeadingBit(-32730i), u_input.a));
    var_0 = func_4(_wgslsmith_mult_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, -11942i, 2147483647i, var_1.x), max(vec4<i32>(u_input.b, -2147483647i, u_input.a, var_1.x), vec4<i32>(-1i, 1i, u_input.b, 16666i)))), _wgslsmith_mult_vec4_i32(func_1(Struct_1(vec2<bool>(var_0.a.x, var_0.a.x))), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, var_1.x, -40370i), vec4<i32>(var_1.x, u_input.b, var_1.x, -8163i)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f + -1335f)))), -1571f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1579f, -1154f), vec2<f32>(-201f, _wgslsmith_f_op_f32(1000f - -918f)), var_0.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -303f) - vec2<f32>(2595f, -1142f))) + vec2<f32>(_wgslsmith_div_f32(-1459f, -510f), _wgslsmith_f_op_f32(f32(-1f) * -408f)))));
    var var_2 = select(vec3<bool>(-u_input.b <= min(2147483647i, var_1.x | var_1.x), var_0.a.x, var_0.a.x), !(!(!(!vec3<bool>(false, var_0.a.x, true)))), select(vec3<bool>(select(u_input.c.x, 1u, var_0.a.x) > ~4294967295u, var_0.a.x, false), !(!vec3<bool>(var_0.a.x, true, var_0.a.x)), true));
    var_0 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~1u, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1857f, 981f)) - _wgslsmith_f_op_f32(f32(-1f) * -1002f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(184f - -2450f), 527f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1344f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(908f, -1716f))))), -260f, 280f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1295f, -1000f, -198f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-260f, 343f, -542f))))))), countOneBits(select(-vec2<i32>(var_1.x, var_1.x), ~vec2<i32>(var_1.x, -3598i), var_0.a.x | var_2.x)) & _wgslsmith_add_vec2_i32(select(vec2<i32>(20865i, u_input.b), vec2<i32>(var_1.x, -2147483647i), var_0.a) & select(vec2<i32>(u_input.b, var_1.x), vec2<i32>(u_input.b, u_input.a), false), -vec2<i32>(-1i, var_1.x)), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(16031i, -1i, var_1.x, 2097i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(0i, 1940i, 0i, u_input.b) << (u_input.c % vec4<u32>(32u)), vec4<i32>(0i, u_input.a, -1i, 35266i)), ~vec4<i32>(u_input.b, u_input.a, u_input.b, 2147483647i) & firstTrailingBit(~vec4<i32>(-40575i, var_1.x, u_input.b, u_input.b))));
}

