struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<f32> = vec2<f32>(-739f, -576f);

var<private> global2: vec4<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<i32>) -> vec2<i32> {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1461f, -824f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global2.x, -250f)), -374f))) * global1.x), _wgslsmith_f_op_f32(f32(-1f) * -171f));
    let var_0 = !(any(vec4<bool>(false == arg_1.x, true, true, -619f != global1.x)) || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(exp2(global0.x))) < _wgslsmith_f_op_f32(global1.x + global2.x)));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global0.x, global0.x, -314f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1296f, 619f, 603f, 152f)))))));
    return _wgslsmith_add_vec2_i32(~arg_2.xy, _wgslsmith_clamp_vec2_i32(~(~vec2<i32>(-5899i, -74837i)), ~u_input.b, _wgslsmith_mod_vec2_i32(u_input.b, -abs(vec2<i32>(0i, 2147483647i)))));
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(u_input.c >= u_input.b.x, ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 118508u), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x))), max(func_3(~(~u_input.a.x), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true), vec3<i32>(-1i, abs(2147483647i), countOneBits(2147483647i))), vec2<i32>(~(-55579i), 2147483647i)), ~(-u_input.b));
    var var_1 = global2.x;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(1f - -1510f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(global1.x * global1.x)) + _wgslsmith_f_op_f32(select(global1.x, global2.x, !var_0.a))), ~95052u <= ((var_0.b.x | 68973u) << (_wgslsmith_mod_u32(33187u, u_input.a.x) % 32u)))), -366f));
    global1 = _wgslsmith_f_op_vec2_f32(-global2.yx);
    var var_3 = global2.x;
    return var_0.b.zwx ^ ~firstTrailingBit(firstTrailingBit(_wgslsmith_div_vec3_u32(var_0.b.xyx, var_0.b.wyy)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = ~func_2();
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1500f, -1000f, global2.x, global2.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, global2.x, global0.x, 1191f), vec4<f32>(1268f, 878f, global0.x, -621f))))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-668f, global2.x, global2.x, -1857f) + vec4<f32>(-1185f, -1226f, global2.x, global0.x)))))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global0.x, 799f, 2039f) - vec4<f32>(-802f, global2.x, global2.x, 176f))))))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1316f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) * _wgslsmith_f_op_f32(abs(global0.x)))))));
    var var_2 = Struct_1(true, vec4<u32>(var_0.x, abs(4294967295u), 0u, 0u & firstLeadingBit(u_input.a.x)) | vec4<u32>(arg_1.b.x, 10432u, _wgslsmith_mod_u32(4294967295u, select(13522u, 17130u, arg_0.a)), 26030u >> (_wgslsmith_mult_u32(0u, 1u) % 32u)), firstLeadingBit(min(~vec2<i32>(arg_0.c.x, -228i), -vec2<i32>(2147483647i, u_input.b.x) ^ -u_input.b)), arg_1.c);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(all(vec4<bool>(all(vec2<bool>(true, true)), true, u_input.c <= u_input.b.x, true)), ~vec4<u32>(u_input.a.x, max(0u, 23122u), u_input.a.x, select(u_input.a.x, u_input.a.x, true)), reverseBits(vec2<i32>(u_input.b.x << (u_input.a.x % 32u), -41061i)), vec2<i32>(u_input.c, -1i)), Struct_1(true, vec4<u32>(~u_input.a.x, ~_wgslsmith_sub_u32(4294967295u, u_input.a.x), 17501u, firstTrailingBit(20606u | u_input.a.x)), vec2<i32>(9519i, countOneBits(-1i)), ~vec2<i32>(u_input.c, u_input.c) | max(vec2<i32>(45155i, u_input.c), vec2<i32>(u_input.b.x, u_input.b.x))));
    global0 = vec2<f32>(_wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1489f, -832f))));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -977f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(sign(global2.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x * -1353f))))), _wgslsmith_f_op_f32(trunc(-475f)), global0.x);
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), 165f));
    var_0 = ~u_input.a.x;
    let var_1 = vec3<u32>(func_1(Struct_1(select(true, true, true), abs(vec4<u32>(1u, u_input.a.x, 1u, 45203u)), reverseBits(u_input.b), ~vec2<i32>(u_input.c, -21332i)), Struct_1(true, vec4<u32>(u_input.a.x, 105599u, u_input.a.x, u_input.a.x), ~u_input.b, vec2<i32>(1i, -2147483647i) & u_input.b)) & 1u, ~u_input.a.x, 37182u);
    var_0 = abs(u_input.a.x);
    let var_2 = global2.ywx;
    let var_3 = vec4<bool>((abs(_wgslsmith_mod_i32(62655i, u_input.b.x)) > -u_input.b.x) | true, any(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), false)), false, (any(vec3<bool>(true, true, true)) || true) && (firstTrailingBit(u_input.c) != u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(firstLeadingBit(min(vec3<i32>(u_input.c, 0i, -4029i), vec3<i32>(u_input.c, -1i, u_input.c)))));
}

