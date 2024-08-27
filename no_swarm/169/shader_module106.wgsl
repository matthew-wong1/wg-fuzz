struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: i32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<u32>) -> i32 {
    global0 = _wgslsmith_add_i32(-11903i, max(_wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, -18162i)), abs(vec2<i32>(0i, -4316i))), ~(-2147483647i << (u_input.d % 32u))), ~(i32(-1i) * -2147483647i)));
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, -22838i), firstLeadingBit(-2147483647i)), _wgslsmith_add_i32(18675i, _wgslsmith_mult_i32(-1i, -7609i)));
    return ~var_0.x >> (~(~firstLeadingBit(~0u)) % 32u);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1236f, 1253f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2106f, 470f))) - vec2<f32>(1273f, -1370f)) + vec2<f32>(-573f, _wgslsmith_f_op_f32(408f - 1552f))), vec2<bool>(true, true && all(vec4<bool>(false, false, false, true))))), (8279u | max(u_input.e.x, _wgslsmith_sub_u32(0u, u_input.e.x))) & ~(u_input.d >> ((u_input.a.x ^ 915u) % 32u)));
    global0 = abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-27527i, -39604i, 0i), vec3<i32>(1i, -4171i, 29011i)), ~(-20930i)), select(vec2<i32>(1i, -1i), vec2<i32>(-14702i, 11276i), vec2<bool>(true, true))), ~(-2147483647i)));
    var var_1 = var_0;
    global1 = 2147483647i;
    global0 = (func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(179f, var_0.a.x, var_0.a.x) - vec3<f32>(var_0.a.x, var_1.a.x, -849f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-463f, 2286f, var_0.a.x))), vec3<bool>(true, true, true), Struct_2(Struct_1(var_0.a, var_1.b)), vec2<u32>(var_0.b, 15683u)) ^ _wgslsmith_div_i32(firstLeadingBit(-47349i), _wgslsmith_sub_i32(firstTrailingBit(1i), func_3(vec3<f32>(var_0.a.x, var_1.a.x, var_0.a.x), vec3<bool>(false, true, true), Struct_2(var_0), vec2<u32>(var_0.b, 4379u))))) | func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(192f, var_0.a.x, var_1.a.x), vec3<f32>(-337f, var_0.a.x, 1000f)))), vec3<bool>(!select(true, true, false), all(vec2<bool>(false, true)) | any(vec3<bool>(false, true, false)), all(vec4<bool>(false, false, false, true)) | true), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(var_1.a, var_1.a)), ~0u)), u_input.a);
    return _wgslsmith_mod_i32(~24803i, select(i32(-1i) * -func_3(vec3<f32>(-773f, 1000f, var_0.a.x), vec3<bool>(true, true, false), Struct_2(var_0), vec2<u32>(0u, var_1.b)), -max(_wgslsmith_mod_i32(40346i, 2147483647i), ~11708i), -(~0i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(7349i, 17342i, 0i), vec3<i32>(-2147483647i, -7671i, -21558i)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: u32) -> u32 {
    let var_0 = func_2();
    global1 = var_0 << (_wgslsmith_sub_u32(arg_0.b, ~abs(~0u)) % 32u);
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-1i, countOneBits(2147483647i)), 17972i), -_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(48405i, var_0)), vec2<i32>(0i, 33703i) ^ vec2<i32>(var_0, var_0))) << (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c, ~4294967295u, abs(4294967295u), _wgslsmith_clamp_u32(5879u, arg_3, arg_2.a.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 68967u, 76217u) ^ vec4<u32>(arg_0.b, 0u, arg_0.b, arg_0.b), abs(vec4<u32>(arg_2.a.b, 76461u, 1u, 35344u)))), 20976u) % 32u);
    global1 = var_0;
    var var_1 = vec3<i32>(select(1i, var_0, true), _wgslsmith_dot_vec2_i32(-firstLeadingBit(vec2<i32>(var_0, 0i)), countOneBits(abs(vec2<i32>(var_0, var_0)))), _wgslsmith_add_i32(1i, func_2()) ^ -21982i) << (reverseBits(vec3<u32>(~arg_0.b, 4294967295u, 0u)) % vec3<u32>(32u));
    return 6908u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-248f, 506f) * vec2<f32>(_wgslsmith_f_op_f32(-249f - 1000f), _wgslsmith_f_op_f32(max(-1025f, -913f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(804f, 521f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-578f, -867f), vec2<f32>(214f, 1180f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1039f, -515f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(882f, -908f))));
    global0 = -(~(-1i)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.d, 61479u), ~vec4<u32>(func_1(Struct_1(vec2<f32>(-426f, var_1.x), 1u), vec2<f32>(-326f, var_1.x), Struct_2(Struct_1(vec2<f32>(1513f, var_1.x), u_input.d)), u_input.e.x), 1u, abs(u_input.b.x), 71802u >> (u_input.b.x % 32u))) % 32u);
    let var_2 = abs(select(abs(~(~u_input.e)), _wgslsmith_mod_vec2_u32(vec2<u32>(~1u, u_input.c), firstLeadingBit(~u_input.b)), vec2<bool>(false, true)));
    var var_3 = !vec3<bool>(true, false, any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, false, true), true)));
    global1 = max(-_wgslsmith_sub_i32(-2147483647i, -39481i), max(2147483647i, func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-176f, 1171f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, var_1.x)))), _wgslsmith_div_u32(var_2.x, 4294967295u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -975f)))), vec2<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), 1100f)), Struct_2(Struct_1(vec2<f32>(var_1.x, -854f), countOneBits(u_input.b.x))), u_input.d), var_1.x);
}

