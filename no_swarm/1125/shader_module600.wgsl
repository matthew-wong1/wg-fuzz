struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(-2787i, firstLeadingBit(~(~(-42629i)))), u_input.a);
    var var_1 = _wgslsmith_mod_u32(~arg_0.c, _wgslsmith_add_u32(select(~(~40252u), firstTrailingBit(select(3748u, 68822u, arg_0.b.x)), true), arg_0.c));
    var_1 = arg_0.c;
    let var_2 = false;
    var_1 = abs(max(~4566u, arg_0.c));
    return abs(~1u);
}

fn func_2(arg_0: u32, arg_1: u32) -> vec4<bool> {
    var var_0 = -_wgslsmith_clamp_i32(9484i, 0i, -22878i);
    let var_1 = vec4<u32>(func_3(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(390f, -1497f, 442f)), vec3<f32>(-762f, -653f, 1528f)), vec4<bool>(true, true, true, true), 40281u, vec2<bool>(all(vec3<bool>(true, false, false)), any(vec4<bool>(false, true, true, false))))), _wgslsmith_sub_u32(arg_0, ~(~56753u)) ^ 8510u, arg_0, arg_0);
    var var_2 = !(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), u_input.a > u_input.a)));
    var_2 = !(!select(!select(vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true)), !select(vec2<bool>(var_2.x, true), vec2<bool>(true, var_2.x), var_2.x), vec2<bool>(true, true)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(448f, 672f, -515f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-952f, -2240f, -1132f) * vec3<f32>(804f, 1337f, -944f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2267f, -833f, -982f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1236f, 1000f, 1397f) + vec3<f32>(-1158f, 1000f, -428f))))), select(!select(!vec4<bool>(var_2.x, var_2.x, false, var_2.x), select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x), var_2.x), vec4<bool>(true, var_2.x, false, var_2.x)), select(select(!vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(true, var_2.x, var_2.x, true), select(vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, false, false), false)), !vec4<bool>(var_2.x, false, var_2.x, false), var_2.x), all(vec3<bool>(false, true, all(vec4<bool>(var_2.x, false, var_2.x, true))))), var_1.x, vec2<bool>((_wgslsmith_f_op_f32(f32(-1f) * -283f) > _wgslsmith_f_op_f32(sign(1867f))) & var_2.x, var_2.x));
    return vec4<bool>(false, all(select(vec4<bool>(var_2.x, var_3.d.x, var_2.x, false), vec4<bool>(false, var_2.x, var_2.x, var_3.d.x), !var_2.x)) || true, true, any(!select(var_3.d, !var_3.b.yz, select(var_3.d, vec2<bool>(false, var_3.b.x), var_3.b.yz))));
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -138f), _wgslsmith_f_op_f32(-905f + -436f), _wgslsmith_f_op_f32(478f - 522f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(161f, -1000f, 754f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-298f, 273f, 656f))))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), !func_2(_wgslsmith_mult_u32(82628u, 1u), countOneBits(4294967295u)), vec4<bool>(true, true, true, true)), _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 82629u, 1588u), vec3<u32>(0u, 0u, 0u)) | firstLeadingBit(6964u), 34494u)), select(vec2<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, true, false, false))), !vec2<bool>(u_input.a > u_input.a, true), !vec2<bool>(true, all(vec3<bool>(false, false, false)))));
    var var_1 = Struct_1(var_0.a, !vec4<bool>(var_0.b.x, !var_0.b.x, any(select(vec3<bool>(true, false, true), vec3<bool>(true, var_0.d.x, var_0.d.x), var_0.d.x)), all(vec3<bool>(var_0.b.x, true, false)) && var_0.b.x), var_0.c, var_0.b.zy);
    var var_2 = all(!(!(!var_0.b))) && any(vec3<bool>(!var_0.b.x, var_0.d.x, false));
    var_2 = var_1.b.x;
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(var_0.a.x, 867f), 2235f, _wgslsmith_f_op_f32(var_1.a.x * -1958f)), var_0.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), var_1.a.x, _wgslsmith_div_f32(-617f, 1620f)))), select(!var_1.b, !select(var_1.b, !vec4<bool>(var_1.d.x, var_0.d.x, false, true), select(vec4<bool>(var_1.d.x, var_1.b.x, true, true), var_1.b, true)), !(true & !var_0.d.x)), var_0.c, !(!vec2<bool>(var_0.d.x, func_2(108503u, 2907u).x)));
    return vec3<i32>(_wgslsmith_clamp_i32(firstLeadingBit(-u_input.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 50715u, var_1.c), vec3<u32>(var_1.c, 4294967295u, 26280u)) % 32u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, -40261i, -1i, u_input.a)) ^ -35765i, (u_input.a << (var_0.c % 32u)) | firstTrailingBit(30983i)), ~select(-2147483647i, 2147483647i, true)), ~(~u_input.a), -15008i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_2(-14665i);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-498f, -394f, -1345f) - vec3<f32>(818f, -646f, 380f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(705f, -1745f, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1494f, -970f, 634f) + vec3<f32>(170f, -1455f, 1343f))))))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1022f - var_2.x)), var_2.x, _wgslsmith_f_op_f32(round(-705f)));
    let var_3 = vec4<bool>(!all(vec3<bool>(-999f <= var_2.x, func_2(31590u, 4294967295u).x, 662f > var_2.x)), select(false, false, select(true, all(func_2(4294967295u, 69802u).wyz), all(vec4<bool>(false, false, true, true)) || any(vec2<bool>(false, false)))), false, all(!(!func_2(4294967295u, 12267u).wxw)));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x * var_2.x))))), _wgslsmith_f_op_vec2_f32(-var_2.yy), false));
    let var_5 = vec2<u32>(17988u, firstTrailingBit(abs(abs(1u))));
    let var_6 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, var_4.x, 303f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1286f, -977f, var_2.x)))) * vec3<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(-var_2.x), var_2.x)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, var_4.x, var_4.x) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_4.x, var_4.x, -606f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1170f, var_4.x, var_4.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, var_2.x, var_4.x), vec3<f32>(-197f, var_4.x, var_2.x))), var_3.xxx)))), var_3, var_5.x, var_3.yw);
    let var_7 = Struct_2(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(37486i, -57680i, var_1.a)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, 0i), vec3<i32>(u_input.a, var_7.a, var_0.x), vec3<i32>(var_7.a, var_0.x, 2147483647i))), var_1.a, var_7.a << (var_6.c % 32u), _wgslsmith_sub_i32(max(~2147483647i, _wgslsmith_clamp_i32(30498i, u_input.a, -3435i)), firstLeadingBit(abs(20283i)))), -vec3<i32>(var_1.a, countOneBits(-1i), -1i), var_0.yy ^ vec2<i32>(u_input.a, countOneBits(_wgslsmith_mult_i32(var_1.a, 12942i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1920f)))));
}

