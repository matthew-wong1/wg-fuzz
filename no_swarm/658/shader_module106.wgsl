struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2.d;
    var_0 = Struct_1(abs(~abs(arg_0.d.a ^ var_0.a)), select(select(!arg_2.b.yyy, !var_0.b, true), !vec3<bool>(false, !arg_2.b.x, arg_0.d.a > arg_0.d.a), any(arg_0.b.wzz)), abs(-firstLeadingBit(-var_0.c)));
    var_0 = arg_0.d;
    var_0 = Struct_1(firstTrailingBit(min(var_0.a, var_0.a)) << (var_0.a % 32u), !vec3<bool>(709f > arg_2.c.x, false, true), -var_0.c);
    var var_1 = max(reverseBits(~_wgslsmith_mod_vec2_u32(~vec2<u32>(52173u, arg_2.d.a), vec2<u32>(17350u, 82595u))), _wgslsmith_clamp_vec2_u32(~(~(vec2<u32>(arg_0.d.a, var_0.a) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)))), vec2<u32>(~reverseBits(0u), 1u), abs(abs(~vec2<u32>(101950u, var_0.a)))));
    return arg_0.c.x;
}

fn func_2(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = -_wgslsmith_mult_i32(-1i, 26975i);
    var_0 = _wgslsmith_clamp_i32(u_input.a, u_input.a, max(-1i, -(select(u_input.a, 24515i, true) >> (arg_0 % 32u))));
    var var_1 = vec2<u32>(14341u, _wgslsmith_add_u32(~_wgslsmith_sub_u32(arg_0, arg_0), firstLeadingBit(70509u)) & ~(~_wgslsmith_div_u32(47735u, arg_0)));
    var var_2 = arg_1;
    var_0 = 0i;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -387f), !vec4<bool>(arg_1, false, true, arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-415f, 207f, -549f)), Struct_1(arg_0, vec3<bool>(true, arg_1, arg_1), -6543i), _wgslsmith_f_op_f32(trunc(-1682f))), true, Struct_2(_wgslsmith_f_op_f32(-1248f * -445f), !vec4<bool>(arg_1, true, true, false), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(110f, -1446f, -1155f))), Struct_1(53937u, vec3<bool>(false, arg_1, false), u_input.a), -1000f))))), -1862f));
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = true;
    let var_1 = !select(!select(select(vec2<bool>(true, var_0), vec2<bool>(arg_0, false), vec2<bool>(var_0, true)), vec2<bool>(arg_0, false), true), select(select(!vec2<bool>(var_0, true), vec2<bool>(false, true), !vec2<bool>(true, arg_0)), vec2<bool>(u_input.a == 2147483647i, var_0), !select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), arg_0)), arg_0);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(312f + _wgslsmith_f_op_f32(func_2(9266u, false))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-177f, 448f)) * _wgslsmith_f_op_f32(func_3(Struct_2(473f, vec4<bool>(var_1.x, false, true, true), vec3<f32>(775f, -121f, -511f), Struct_1(4294967295u, vec3<bool>(var_0, var_1.x, false), u_input.a), 1463f), true, Struct_2(959f, vec4<bool>(var_1.x, true, var_0, arg_0), vec3<f32>(-1000f, 126f, -306f), Struct_1(4294967295u, vec3<bool>(true, var_0, arg_0), 2147483647i), 109f)))), _wgslsmith_f_op_f32(-517f + _wgslsmith_f_op_f32(667f * 1558f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1293f), _wgslsmith_div_f32(_wgslsmith_div_f32(1614f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f) + _wgslsmith_f_op_f32(207f + -439f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-594f + _wgslsmith_f_op_f32(func_3(Struct_2(850f, vec4<bool>(true, arg_0, true, arg_0), vec3<f32>(906f, 1000f, 768f), Struct_1(arg_1, vec3<bool>(false, true, arg_0), u_input.a), -380f), arg_0, Struct_2(2074f, vec4<bool>(true, true, var_1.x, arg_0), vec3<f32>(1093f, 168f, 2031f), Struct_1(0u, vec3<bool>(var_1.x, false, arg_0), 0i), 636f))))))));
    var var_3 = _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(37830u, arg_1, 32202u) & vec3<u32>(arg_1, arg_1, 13225u), abs(vec3<u32>(4294967295u, 4294967295u, arg_1))), _wgslsmith_dot_vec3_u32(vec3<u32>(24304u, 52907u, arg_1), firstLeadingBit(vec3<u32>(4294967295u, 106167u, arg_1))), min(~arg_1, ~arg_1))), vec3<u32>(firstLeadingBit(arg_1), 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 12624u, 5605u), abs(vec3<u32>(arg_1, arg_1, 4294967295u) >> (vec3<u32>(arg_1, arg_1, arg_1) % vec3<u32>(32u))))));
    var var_4 = ~(-select(_wgslsmith_sub_vec2_i32(vec2<i32>(47459i, u_input.a), vec2<i32>(u_input.a, u_input.a)) | _wgslsmith_div_vec2_i32(vec2<i32>(1i, 37526i), vec2<i32>(2147483647i, u_input.a)), min(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.a, u_input.a)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-10454i, u_input.a)), true));
    return all(vec2<bool>(all(vec3<bool>(!var_1.x, var_0, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false, select(0u, 32398u, !any(vec2<bool>(true, true))));
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1151f), -197f), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(false, true, false, false), all(vec4<bool>(true, true, true, false)))), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), true), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1439f, -230f, 1518f) * vec3<f32>(-1278f, 783f, -1318f)), vec3<f32>(1101f, -392f, 1236f), any(vec2<bool>(true, true)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1849f, -826f, -1031f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(303f, 1457f, 447f))))))), Struct_1(_wgslsmith_clamp_u32(~41773u, ~1u, 16954u) >> (~1u % 32u), vec3<bool>(!func_1(false, 4294967295u), !any(vec3<bool>(false, false, true)), !(u_input.a > u_input.a)), 74310i), -153f);
    let var_2 = var_1.d.b.x;
    var var_3 = firstLeadingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(-10483i, reverseBits(var_1.d.c), select(u_input.a, -10169i, false), 1i), -(min(vec4<i32>(u_input.a, u_input.a, var_1.d.c, -2147483647i), vec4<i32>(var_1.d.c, var_1.d.c, 73936i, u_input.a)) >> (~vec4<u32>(var_1.d.a, var_1.d.a, var_1.d.a, 1u) % vec4<u32>(32u)))));
    var_0 = !any(select(vec2<bool>(false, true), !vec2<bool>(true, var_1.d.b.x), select(!vec2<bool>(var_1.b.x, false), select(vec2<bool>(var_1.b.x, true), vec2<bool>(var_1.b.x, var_1.b.x), vec2<bool>(true, false)), var_1.b.zx)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-401f, var_1.e))), select(vec4<bool>(true, select(all(var_1.b), true, var_1.b.x), select(false, true, any(var_1.b)), false), select(select(vec4<bool>(var_1.b.x, true, var_1.b.x, true), vec4<bool>(true, var_1.d.b.x, false, var_1.b.x), var_1.d.b.x), var_1.b, vec4<bool>(all(var_1.b), var_1.b.x, true, var_1.b.x)), !var_1.d.b.x), var_1.c, Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(58803u, var_1.d.a, var_1.d.a), ~(~vec3<u32>(var_1.d.a, 2067u, 2366u))), vec3<bool>(var_1.b.x | true, var_1.b.x || false, true), 2147483647i), -1683f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.c.x + -349f), vec3<u32>(reverseBits(~abs(var_4.d.a)), abs(_wgslsmith_mod_u32(49859u, var_1.d.a)), max(1u, var_1.d.a)), ~vec2<u32>(~var_4.d.a << (~var_1.d.a % 32u), var_4.d.a));
}

