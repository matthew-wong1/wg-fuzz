struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    return ~firstTrailingBit(31184u);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1569f, _wgslsmith_f_op_f32(step(-1449f, _wgslsmith_div_f32(1097f, -371f)))))));
    let var_1 = u_input.a.x & u_input.a.x;
    let var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(~1u, var_1, abs(var_1 >> (u_input.a.x % 32u)) << (~53312u % 32u)), ~(vec3<u32>(1u, 21407u, func_3(Struct_1(-383f))) ^ ~(~vec3<u32>(var_1, 98567u, 29816u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1076f, 988f, -328f))))))) - vec3<f32>(-765f, _wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_f_op_f32(-1297f - var_0.a)));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(843f, var_0.a, 614f) + vec3<f32>(-1000f, var_3.x, var_3.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1753f, var_0.a, -585f) - vec3<f32>(var_3.x, 311f, var_0.a)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, -613f, var_3.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a) + vec3<f32>(var_0.a, var_3.x, var_0.a)), true)))));
    return -68548i;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-294f))), _wgslsmith_f_op_f32(f32(-1f) * -510f), all(vec2<bool>(true, true)))) + _wgslsmith_div_f32(-698f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-891f))))));
    let var_1 = select(!(func_2() != reverseBits(-1i)), any(vec3<bool>(false, true, true)), true);
    let var_2 = _wgslsmith_sub_i32(func_2(), -abs(select(1i, firstLeadingBit(u_input.b.x), var_1 & true)));
    let var_3 = ~max(_wgslsmith_add_i32(var_2, -60387i), -1i);
    var var_4 = !vec2<bool>(_wgslsmith_add_i32(12661i, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(0i, var_2))) < -_wgslsmith_dot_vec2_i32(vec2<i32>(4609i, 0i), u_input.b), var_1 | var_1);
    return 675f;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: u32, arg_3: i32) -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_div_u32(arg_1.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, u_input.a.x, 0u), _wgslsmith_sub_vec3_u32(arg_1, vec3<u32>(32961u, 0u, 0u) << (arg_1 % vec3<u32>(32u))))), Struct_1(1960f), arg_3, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(648f * _wgslsmith_f_op_f32(f32(-1f) * -619f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - 905f), _wgslsmith_f_op_f32(select(-584f, arg_0, true)))), -100f), all(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), false)));
    let var_1 = Struct_3(Struct_1(-1237f), var_0.b, var_0.b, arg_2);
    var_0 = Struct_2(firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.a), vec2<u32>(var_0.a, 32715u))), var_1.b, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1478f, -229f))), any(vec3<bool>(true | !var_0.e, true, (0i == arg_3) == true)));
    let var_2 = Struct_4(55541i, Struct_3(var_1.a, Struct_1(arg_0), var_1.a, firstLeadingBit(min(max(32020u, 36948u), var_0.a))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~arg_2, arg_1.x), 16416u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(53419u, 4294967295u, arg_2, 1645u), vec4<u32>(19853u, u_input.a.x, 7518u, 0u)), ~vec4<u32>(var_0.a, u_input.a.x, 0u, 53503u)), 49293u), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 18049u, arg_1.x, 4294967295u) >> (vec4<u32>(arg_1.x, 2410u, var_1.d, 1u) % vec4<u32>(32u)), max(vec4<u32>(4294967295u, 23684u, var_0.a, arg_2), vec4<u32>(60041u, 0u, 1u, 17287u))), _wgslsmith_add_vec4_u32(vec4<u32>(8792u, arg_2, arg_2, arg_2), vec4<u32>(10883u, 4294967295u, u_input.a.x, 1u)) << (firstTrailingBit(vec4<u32>(7989u, 25655u, 4294967295u, u_input.a.x)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))));
    var_0 = Struct_2(var_0.a, var_1.b, (i32(-1i) * -6415i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1, var_2.c.yxw), countOneBits(1u), abs(0u), 31289u), var_2.c) % 32u), -1250f, !(1097f <= arg_0));
    return StorageBuffer(vec3<i32>(firstLeadingBit(~1i), countOneBits(-1i), countOneBits(32535i)), select(var_2.b.d, reverseBits(0u), var_0.e), _wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-5255i, u_input.b.x, 64608i, 0i), vec4<i32>(var_2.a, var_0.c, -1i, 9080i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, u_input.b.x, var_0.c, var_0.c), vec4<i32>(var_2.a, arg_3, u_input.b.x, var_0.c))) | ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<i32>(u_input.b.x, var_2.a, arg_3, 1i)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4294967295u, var_0.a) >> (arg_1.x % 32u), abs(~1u), min(71678u, 32808u), 0u), reverseBits(abs(vec4<u32>(u_input.a.x, 67580u, 38605u, 5121u)) >> (vec4<u32>(arg_1.x, 0u, var_0.a, 0u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(486f, 756f, true)), _wgslsmith_f_op_f32(130f - 1932f)))) - _wgslsmith_f_op_f32(func_1())), vec3<u32>(u_input.a.x, _wgslsmith_div_u32(21726u, _wgslsmith_mod_u32(0u, u_input.a.x)), func_3(Struct_1(-607f)) >> (var_0 % 32u)), u_input.a.x, ~(~(~31818i)) | u_input.b.x);
}

