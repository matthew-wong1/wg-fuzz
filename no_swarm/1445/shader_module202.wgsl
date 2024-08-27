struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 58451u;

var<private> global1: vec3<i32> = vec3<i32>(12508i, -1i, 0i);

var<private> global2: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: u32) -> f32 {
    global1 = select(vec3<i32>(-1i) * -(~vec3<i32>(u_input.c, global1.x, 2147483647i)), (vec3<i32>(-1i, -global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 37062i, -41340i), vec3<i32>(u_input.c, -43357i, u_input.c))) >> (reverseBits(vec3<u32>(arg_0, u_input.a, 4294967295u)) % vec3<u32>(32u))) ^ ~abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -27422i, -13862i), vec3<i32>(-20934i, global1.x, u_input.d))), false);
    let var_0 = Struct_1(~(arg_1 & arg_0), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-903f, 917f, 129f, 579f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(845f, 538f, 623f, 128f) + vec4<f32>(-157f, -128f, -1296f, -933f))))))));
    global2 = array<vec4<bool>, 18>();
    var var_1 = Struct_1(66790u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.b.x, 882f)), -524f, _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), 1218f) + vec4<f32>(_wgslsmith_f_op_f32(abs(764f)), -334f, 1f, 1012f)) + var_0.b));
    var var_2 = _wgslsmith_mod_vec4_u32(~countOneBits(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(0u, var_0.a, var_1.a, arg_1)), max(vec4<u32>(61701u, var_1.a, 4294967295u, arg_1), vec4<u32>(24169u, 1u, arg_1, arg_1)), _wgslsmith_add_vec4_u32(vec4<u32>(1980u, var_0.a, 0u, var_0.a), vec4<u32>(14096u, 7073u, arg_0, arg_0)))), max(~(~reverseBits(vec4<u32>(arg_0, u_input.a, 4294967295u, 0u))), _wgslsmith_div_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(4294967295u, 51369u, 1u, 0u))), ~(~vec4<u32>(0u, 1u, arg_0, 4294967295u)))));
    return -1000f;
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_1(45019u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1513f, -783f, -1461f, -769f) * vec4<f32>(-554f, -359f, -405f, -347f))), vec4<f32>(_wgslsmith_f_op_f32(func_3(u_input.a, u_input.a)), _wgslsmith_f_op_f32(abs(-328f)), -489f, -2297f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1646f, 1000f, -621f, -1831f), vec4<f32>(303f, 1577f, 335f, 825f)))))));
    global0 = min(select(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 7674u) << (vec2<u32>(4588u, 42371u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a, 0u), vec2<u32>(u_input.a, var_0.a))), var_0.a), countOneBits(~(var_0.a | 0u)), true & any(vec2<bool>(false, true))), var_0.a);
    global0 = ~(~(~(~u_input.a << (var_0.a % 32u))));
    var var_1 = _wgslsmith_sub_vec4_i32(~vec4<i32>(abs(37937i), u_input.c, _wgslsmith_sub_i32(u_input.b & global1.x, 27800i ^ global1.x), -28119i), ~(abs(select(vec4<i32>(u_input.b, -57302i, global1.x, global1.x), vec4<i32>(28251i, -29981i, 9381i, global1.x), false)) ^ (firstTrailingBit(vec4<i32>(u_input.b, u_input.b, 22938i, u_input.b)) | vec4<i32>(2147483647i, u_input.d, 1i, global1.x))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1795f - var_0.b.x)));
    return select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, false)), true))), select(vec2<bool>(true, -2147483647i >= _wgslsmith_div_i32(53100i, global1.x)), vec2<bool>(_wgslsmith_f_op_f32(sign(var_0.b.x)) <= -1000f, true), select(any(vec3<bool>(false, false, false)) & true, any(vec2<bool>(false, true)), !select(true, true, false))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(abs(global1.x) <= -1i, all(vec2<bool>(true, true)))));
}

fn func_1() -> u32 {
    var var_0 = (u_input.a & u_input.a) ^ u_input.a;
    global1 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-26051i, u_input.c, global1.x), vec3<i32>(-2147483647i, u_input.d, global1.x)), vec3<i32>(u_input.b, -9159i, -294i) ^ vec3<i32>(11527i, global1.x, u_input.c)), 2147483647i >> ((57702u << (u_input.a % 32u)) % 32u), firstLeadingBit(32995i)), ~(~(vec3<i32>(54i, global1.x, global1.x) ^ vec3<i32>(global1.x, 2147483647i, -8323i)))), u_input.d, global1.x);
    var var_1 = -abs(~_wgslsmith_add_vec4_i32(vec4<i32>(-21375i, -1i, -20125i, 0i), vec4<i32>(-19289i, u_input.c, -1i, 28549i))) >> (~(~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(4294967295u, 1u, u_input.a, 1u)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u))) % vec4<u32>(32u));
    global0 = reverseBits(17983u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, min(18386u, 0u), 4294967295u >> (1u % 32u)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(1u, 29354u, 4294967295u), vec3<u32>(2776u, u_input.a, 112070u)), ~vec3<u32>(u_input.a, u_input.a, 4294967295u))));
    let var_2 = !select(select(select(func_2(), vec2<bool>(false, false), any(vec2<bool>(true, true))), vec2<bool>(true, select(true, false, false)), func_2().x), !vec2<bool>(true, all(vec2<bool>(false, true))), vec2<bool>(true, true));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    global0 = u_input.a >> (u_input.a % 32u);
    let var_1 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(firstTrailingBit(func_1()), u_input.a ^ u_input.a), min(u_input.a, ~(u_input.a ^ 1u))), u_input.a);
    var var_2 = ~(~(~vec3<u32>(var_1.x, 4294967295u ^ var_1.x, select(var_1.x, var_1.x, true))));
    var_0 = _wgslsmith_div_i32(-1i, i32(-1i) * -u_input.d);
    let var_3 = select((var_2.x ^ var_2.x) >> (_wgslsmith_dot_vec2_u32(min(vec2<u32>(var_1.x, var_1.x), var_1), vec2<u32>(0u, ~u_input.a)) % 32u), _wgslsmith_add_u32(var_2.x, 4294967295u), false);
    let x = u_input.a;
    s_output = StorageBuffer(~(var_3 ^ var_2.x), vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1429i, 24921i, u_input.b), vec3<i32>(-2147483647i, 26783i, 3443i) | vec3<i32>(global1.x, u_input.d, global1.x), vec3<bool>(true, true, true)), ~vec3<i32>(global1.x, u_input.b, -1i)), -18205i, global1.x), var_2.xy, _wgslsmith_mult_i32(u_input.d, _wgslsmith_mult_i32(1i, ~firstLeadingBit(u_input.c))));
}

