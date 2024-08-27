struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 14>;

var<private> global2: array<Struct_1, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = select(select(!select(vec3<bool>(arg_3, true, false), !vec3<bool>(true, arg_3, false), select(vec3<bool>(true, false, arg_3), vec3<bool>(true, true, true), vec3<bool>(arg_3, true, true))), select(!select(vec3<bool>(true, true, arg_3), vec3<bool>(true, true, false), false), vec3<bool>(arg_2 && false, arg_2, arg_2), any(!vec4<bool>(arg_2, true, arg_2, arg_2))), any(vec4<bool>(all(vec4<bool>(true, false, arg_2, true)), !arg_2, any(vec2<bool>(false, arg_2)), true))), select(!vec3<bool>(any(vec4<bool>(false, arg_2, true, false)), true, true), vec3<bool>(arg_3, all(vec3<bool>(arg_3, arg_2, arg_3)), true), select(select(vec3<bool>(arg_2, arg_2, false), !vec3<bool>(true, arg_3, true), !vec3<bool>(arg_3, arg_2, arg_2)), select(vec3<bool>(false, arg_3, true), vec3<bool>(false, true, arg_2), !vec3<bool>(false, arg_3, false)), !select(vec3<bool>(false, true, arg_2), vec3<bool>(true, true, arg_2), vec3<bool>(arg_2, arg_2, true)))), !select(select(vec3<bool>(true, true, true), !vec3<bool>(false, arg_3, arg_3), select(vec3<bool>(arg_2, false, arg_3), vec3<bool>(arg_3, false, arg_2), false)), !(!vec3<bool>(false, arg_3, true)), all(!vec2<bool>(arg_2, arg_3))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0)))));
    var var_2 = ~(-_wgslsmith_mod_vec3_i32(vec3<i32>(~5705i, -1i, firstTrailingBit(u_input.c.x)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(10879i, u_input.e, 61173i), vec3<i32>(u_input.a, u_input.a, 2147483647i)), vec3<i32>(-2147483647i, u_input.c.x, u_input.a))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(144f, -1021f)))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(826f, arg_0, arg_2)))), 153f) - vec2<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0)), arg_0))));
    var_2 = ~_wgslsmith_div_vec3_i32(vec3<i32>(var_2.x | _wgslsmith_sub_i32(u_input.e, 1i), 0i & abs(var_2.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(-54221i, -2147483647i), vec2<i32>(u_input.a, -2147483647i))), vec3<i32>(_wgslsmith_add_i32(-1i, 0i), max(0i, 65533i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(16598i, 25307i, 0i), vec3<i32>(-2147483647i, var_2.x, u_input.a)), ~var_2.x)));
    return _wgslsmith_div_f32(arg_0, arg_0);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = vec2<i32>(~arg_3.d, -(firstTrailingBit(-19021i) | abs(i32(-1i) * -11297i)));
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.b), vec3<u32>(32940u, 57561u, 22235u)), arg_3.b), 65179u) ^ ~vec2<u32>(~arg_2.x, 1u);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_1, vec2<u32>(arg_3.b, arg_2.x), false, var_1.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(674f)))))), arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(627f, arg_3.a))) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-159f - arg_1)))), _wgslsmith_mod_i32(61776i, -2147483647i));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, abs(arg_2.x), _wgslsmith_mult_u32(~4294967295u, reverseBits(var_3.b))) ^ _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(16015u, 36320u, var_3.b), vec3<u32>(u_input.b, var_2.x, 1u)), vec3<u32>(~arg_2.x, 1u >> (arg_2.x % 32u), _wgslsmith_mult_u32(0u, arg_3.b))), firstLeadingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.b, 31046u, 45830u), vec3<u32>(var_3.b, 7012u, arg_2.x)), vec3<u32>(19088u, 4294967295u, u_input.d) >> (vec3<u32>(var_3.b, 1u, 0u) % vec3<u32>(32u))), vec3<u32>(var_2.x, ~5852u, 0u), ~(~vec3<u32>(4294967295u, 1u, 0u)))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global2 = array<Struct_1, 26>();
    var var_0 = arg_0;
    var var_1 = (~(~(u_input.b & 17320u)) | (~var_0.b & ~(~0u))) << ((func_2(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), 431f, _wgslsmith_mod_vec2_u32(vec2<u32>(9528u, 4294967295u), ~vec2<u32>(var_0.b, 4294967295u)), Struct_1(-185f, arg_0.b, arg_0.c, -var_0.d)) & arg_0.b) % 32u);
    let var_2 = select(vec2<bool>(!all(vec3<bool>(true, false, false)), false), select(!vec2<bool>(any(vec4<bool>(false, false, true, false)), true), vec2<bool>(true, true), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, var_0.d >= var_0.d), true)), vec2<bool>(!all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), u_input.c.x > -1i));
    var_1 = _wgslsmith_clamp_u32(var_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 1u, var_0.b, 39367u), _wgslsmith_mult_vec4_u32(vec4<u32>(60082u, 0u, arg_0.b, u_input.d), vec4<u32>(var_0.b, arg_0.b, var_0.b, arg_0.b))) << (0u % 32u), ~0u) | ~(~(~var_0.b));
    return 1023u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1000f, reverseBits(u_input.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 429f)), -584f))), -u_input.c.x >> (~(~32207u) % 32u));
    global2 = array<Struct_1, 26>();
    var var_1 = global2[_wgslsmith_index_u32(func_1(Struct_1(var_0.c, min(_wgslsmith_mult_u32(4294967295u, var_0.b), ~0u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.c)))), var_0.d)) >> (~(~(~u_input.b)) % 32u), 26u)];
    var var_2 = _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(140f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a)), var_1.c, 33366u <= (var_1.b | var_1.b))))));
    var var_3 = Struct_1(187f, _wgslsmith_mod_u32(~1u, abs(var_1.b)) ^ _wgslsmith_mod_u32(func_1(global2[_wgslsmith_index_u32(~1u, 26u)]), 0u), var_0.a, _wgslsmith_add_i32(56347i, 1i));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(2564f + -796f), 1261f, 235f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -224f)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_4.x, var_4.x)) - var_0.a) - _wgslsmith_f_op_f32(f32(-1f) * -1465f)))));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_4.x, _wgslsmith_f_op_f32(var_1.a + 2055f)))))), ~_wgslsmith_add_u32(~var_1.b, ~(~0u)), var_1.a, countOneBits(var_0.d));
    let var_6 = _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(max(select(vec3<u32>(4294967295u, var_0.b, 16524u), vec3<u32>(var_1.b, var_5.b, var_1.b), false), vec3<u32>(var_3.b, var_3.b, 103615u)), vec3<u32>(~var_3.b, 42511u & var_5.b, var_5.b))), select(~(~(~vec3<u32>(4294967295u, var_1.b, 59159u))), ~(firstTrailingBit(vec3<u32>(2704u, 30685u, 40341u)) & vec3<u32>(var_0.b, var_5.b, 21476u)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), any(vec3<bool>(false, false, false)) || true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_i32(1i, var_3.d)), ~var_3.d, vec4<f32>(-1084f, _wgslsmith_f_op_f32(1080f + 555f), _wgslsmith_f_op_f32(-1f), var_5.c), var_4.yw);
}

