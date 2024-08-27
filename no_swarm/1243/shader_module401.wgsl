struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(67026i, 11839i, -51241i, 6733i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))));
    var var_2 = vec3<i32>(~u_input.a.x, -global0.x, arg_2.x);
    let var_3 = arg_3;
    var_1 = arg_1.xz;
    return vec4<i32>(var_2.x >> (1u % 32u), -360i | firstTrailingBit(0i), ~(~2147483647i), firstTrailingBit(reverseBits(~0i)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    var var_1 = Struct_1(true, arg_1.b | vec3<u32>(~1u, firstTrailingBit(var_0.b.x), ~firstTrailingBit(24162u)));
    global0 = _wgslsmith_sub_vec4_i32(~(~max(_wgslsmith_add_vec4_i32(vec4<i32>(39688i, -32421i, 16004i, global0.x), vec4<i32>(-4054i, global0.x, -1i, global0.x)), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -30245i))), ~(-(~func_3(global0.x, vec4<f32>(1099f, -181f, 1195f, 1365f), vec2<i32>(2147483647i, 1i), Struct_1(true, vec3<u32>(u_input.b, var_0.b.x, 63513u))))));
    var_1 = Struct_1(!(!any(select(vec2<bool>(true, arg_1.a), vec2<bool>(false, false), vec2<bool>(arg_1.a, false)))), arg_1.b);
    global0 = vec4<i32>(u_input.a.x, max(global0.x, -_wgslsmith_sub_i32(0i, -51676i)), ~u_input.a.x, 2147483647i);
    return ~u_input.b;
}

fn func_1() -> f32 {
    var var_0 = reverseBits(min(firstLeadingBit(vec3<i32>(global0.x, global0.x, -2147483647i)), global0.ywz)) << (reverseBits(vec3<u32>(u_input.b, abs(func_2(4294967295u, Struct_1(false, vec3<u32>(82961u, 1u, u_input.b)))), min(31272u, func_2(9235u, Struct_1(true, vec3<u32>(67290u, 3948u, 4294967295u)))))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1000f) * _wgslsmith_f_op_f32(floor(1958f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(236f - _wgslsmith_f_op_f32(round(1108f))) - -1000f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1093f)), -648f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-906f, -652f), vec2<f32>(372f, 1382f), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2099f, 725f))))));
    let var_2 = any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    let var_3 = ~global0.xzz;
    global0 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(12250i >> (u_input.b % 32u)), -2147483647i, 14801i, -2147483647i), ((vec4<i32>(u_input.a.x, var_3.x, var_0.x, 0i) | vec4<i32>(16212i, var_3.x, -26589i, u_input.a.x)) << (abs(vec4<u32>(50124u, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 57249u, 4294967295u), vec4<u32>(u_input.b, 33318u, 1u, u_input.b)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, 50099i), countOneBits(-2147483647i)), -2147483647i, ~(var_3.x | -16168i), -2147483647i)), -abs(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-2147483647i, u_input.a.x, var_3.x, 1i)), vec4<i32>(-23691i, 0i, var_0.x, global0.x) | vec4<i32>(6651i, 1i, 73398i, var_3.x))));
    return _wgslsmith_f_op_f32(floor(var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f * _wgslsmith_f_op_f32(2052f - 1000f)) - -503f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-133f)), 614f, any(vec4<bool>(true, false, true, false))))), 1000f), _wgslsmith_f_op_f32(max(144f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(floor(-959f)))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 291f, -793f) - vec3<f32>(var_0.x, var_0.x, 357f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(101f, -1588f, var_0.x) * vec3<f32>(var_0.x, -753f, -1000f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(123f, -812f, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))))));
    var_0 = vec3<f32>(var_0.x, 617f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1506f, var_0.x, -877f))))));
    var var_1 = u_input.b >> (_wgslsmith_mult_u32(max(5630u, ~u_input.b) >> ((u_input.b | abs(u_input.b)) % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.b, 1u))) % 32u);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1000f, -131f, var_0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-399f, 813f, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-619f, var_0.x, -1480f, var_0.x)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - 1f), _wgslsmith_f_op_f32(f32(-1f) * -244f)), var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1174f)));
    var var_3 = _wgslsmith_dot_vec4_i32(func_3(u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x * 1684f), _wgslsmith_f_op_f32(880f * 739f))), _wgslsmith_f_op_f32(round(var_0.x)), -781f, var_2.x), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zx), Struct_1(any(vec2<bool>(false, true)), vec3<u32>(~u_input.b, _wgslsmith_add_u32(u_input.b, u_input.b), ~u_input.b))), _wgslsmith_add_vec4_i32(vec4<i32>(0i, global0.x, abs(-28061i), global0.x), vec4<i32>(global0.x & -46729i, func_3(7678i, vec4<f32>(var_0.x, var_0.x, var_2.x, var_0.x), vec2<i32>(-74743i, 26778i), Struct_1(true, vec3<u32>(u_input.b, 27342u, 4294967295u))).x >> (16796u % 32u), global0.x, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(~u_input.b, 0u)), 7338i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) + _wgslsmith_f_op_f32(var_2.x * -1000f)))))));
}

