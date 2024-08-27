struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_f32(-465f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-853f, _wgslsmith_f_op_f32(764f + -1000f)) + _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-498f, 2147f)))));
    let var_1 = 4294967295u ^ abs(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(0u, 6626u), 1u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u)))));
    let var_2 = Struct_1(!vec4<bool>(true, all(vec2<bool>(true, true)), true, false), 0i, -926f, _wgslsmith_dot_vec3_u32(abs(max(vec3<u32>(35356u, 4294967295u, 4294967295u) | vec3<u32>(4294967295u, var_1, var_1), vec3<u32>(var_1, 53353u, var_1))), _wgslsmith_add_vec3_u32(~vec3<u32>(var_1, var_1, 44947u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, 46476u), select(vec3<u32>(17181u, var_1, 29821u), vec3<u32>(74824u, var_1, 1679u), true)))), var_1);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-787f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.c), var_0))))), -2154f, _wgslsmith_f_op_f32(-var_0));
    var var_4 = var_2.a.x;
    return min(var_2.e, 1u) < firstLeadingBit(4294967295u);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> bool {
    var var_0 = false;
    var var_1 = ~(~(~firstLeadingBit(-vec4<i32>(-7315i, u_input.a.x, 0i, u_input.a.x))));
    let var_2 = var_1.zwy;
    var var_3 = vec2<bool>(func_3() & (all(!vec4<bool>(false, false, false, arg_0)) || arg_0), arg_0);
    var var_4 = var_1.x;
    return !(!var_3.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = !(!arg_1.a.yw);
    var_0 = !arg_2.a.wy;
    let var_1 = min(firstTrailingBit(-abs(arg_1.b)), _wgslsmith_div_i32(arg_2.b, u_input.a.x));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c * -1000f))));
    var_0 = select(arg_1.a.xz, arg_2.a.zz, ~(-arg_2.b) != _wgslsmith_sub_i32(reverseBits(5291i >> (0u % 32u)), u_input.a.x));
    return ~vec4<u32>(~arg_2.e, ~(~(~arg_1.d)), ~(~(~arg_2.e)), _wgslsmith_div_u32(0u, max(arg_2.d, ~arg_1.e)));
}

fn func_1() -> vec3<bool> {
    let var_0 = func_4(Struct_2(-292f), Struct_1(vec4<bool>(true, true, !all(vec2<bool>(true, false)), select(true, func_2(true, vec4<f32>(1601f, 197f, 460f, 372f)), any(vec3<bool>(true, true, true)))), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1940f) * _wgslsmith_f_op_f32(-935f - -815f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 901f))), 4294967295u, 1u), Struct_1(vec4<bool>(true, (u_input.a.x != -2147483647i) | func_2(true, vec4<f32>(2180f, -296f, -1192f, -567f)), func_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1152f, 1472f, -145f, 168f))), func_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -833f, 147f, 1714f)))), 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-201f, _wgslsmith_f_op_f32(f32(-1f) * -1098f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1142f * 836f))), 4294967295u, 1u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(713f))) - _wgslsmith_f_op_f32(f32(-1f) * -460f));
    let var_2 = Struct_2(2089f);
    var var_3 = -737f;
    var_3 = 1516f;
    return !(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(-897f)));
    let var_1 = vec3<bool>(arg_1, !(false && any(!vec4<bool>(false, arg_0.x, true, false))), arg_0.x);
    var var_2 = ~func_4(Struct_2(var_0.a), Struct_1(select(select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(true, arg_1, var_1.x, true), vec4<bool>(false, var_1.x, arg_0.x, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, arg_1, var_1.x), vec4<bool>(true, false, arg_1, arg_0.x)), arg_0.x), 1i, var_0.a, _wgslsmith_sub_u32(min(4294967295u, 49158u), _wgslsmith_dot_vec3_u32(vec3<u32>(75029u, 33459u, 33366u), vec3<u32>(1u, 1u, 129613u))), select(4294967295u, 0u, arg_1) & _wgslsmith_clamp_u32(0u, 43399u, 3906u)), Struct_1(vec4<bool>(var_0.a != var_0.a, arg_1, arg_1, any(vec3<bool>(true, true, true))), min(_wgslsmith_add_i32(u_input.a.x, -32806i), 2147483647i), _wgslsmith_f_op_f32(-1043f * var_0.a), reverseBits(76200u), abs(~1u)));
    var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(~(~var_2.x)), _wgslsmith_add_u32(31084u, (var_2.x | 36538u) & _wgslsmith_dot_vec2_u32(var_2.zy, var_2.yz)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, ~var_2.x), vec3<u32>(var_2.x, _wgslsmith_mod_u32(var_2.x, var_2.x), 111194u & var_2.x)), var_2.x), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(10793u, 15256u, 4294967295u, var_2.x), vec4<u32>(1u, var_2.x, var_2.x, 4294967295u) | vec4<u32>(33777u, var_2.x, var_2.x, 4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, var_2.x, 0u, 0u))), vec4<u32>(~_wgslsmith_mult_u32(var_2.x, var_2.x), 33000u, 33641u, ~51586u)));
    var_2 = _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 4294967295u, var_2.x, var_2.x), vec4<u32>(4294967295u, 0u, var_2.x, var_2.x), vec4<u32>(0u, 1u, 735u, var_2.x)), vec4<u32>(4294967295u, 4294967295u, var_2.x, var_2.x) | vec4<u32>(24479u, var_2.x, var_2.x, 27624u)), vec4<u32>(25169u, var_2.x, 0u, var_2.x) << (vec4<u32>(var_2.x, var_2.x, var_2.x, 20357u) % vec4<u32>(32u)))), ~(vec4<u32>(17404u & var_2.x, var_2.x, var_2.x | var_2.x, ~var_2.x) & ~abs(vec4<u32>(4294967295u, var_2.x, 43735u, var_2.x))));
    return Struct_1(vec4<bool>(arg_1, !var_1.x, !var_1.x, all(!arg_0)), u_input.a.x, 805f, 7183u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(var_2.yx, var_2.zx)), _wgslsmith_mult_vec2_u32(var_2.xz, var_2.xw)), ~abs(49701u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = func_5(select(func_1(), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true)), false);
    var var_2 = func_5(var_1.a.zzx, true);
    var_1 = func_5(select(!(!var_1.a.xxw), vec3<bool>(!func_5(vec3<bool>(true, true, var_1.a.x), true).a.x, all(vec3<bool>(var_1.a.x, false, var_2.a.x)) | true, var_2.a.x), var_2.a.x), var_1.a.x);
    var var_3 = abs(~(~0u));
    var_1 = Struct_1(!(!select(!var_1.a, var_1.a, !vec4<bool>(var_2.a.x, false, true, var_2.a.x))), 32829i, -1000f, reverseBits(67228u), reverseBits(select(0u, 0u, any(func_5(var_1.a.yzw, false).a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(4294967295u), ~var_2.e, ~1u), vec3<u32>(1u, _wgslsmith_sub_u32(var_0, var_1.d), ~0u)) & var_0);
}

