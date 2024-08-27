struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_3) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_3.b.b.a)) - vec4<f32>(-1805f, _wgslsmith_f_op_f32(step(-626f, _wgslsmith_f_op_f32(-1545f + 726f))), arg_0.x, 1264f)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, _wgslsmith_mult_u32(1u, 11294u), 1u, arg_3.b.c.x), vec4<u32>(22528u, 8909u, 4294967295u >> (_wgslsmith_clamp_u32(arg_2, u_input.b, 1u) % 32u), u_input.b)), arg_3.b.b.c);
    var var_1 = 17660u;
    var var_2 = arg_3.b;
    let var_3 = arg_3;
    var var_4 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-531f, 532f)) + _wgslsmith_f_op_f32(var_3.d.x - -906f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(514f, -475f)), _wgslsmith_f_op_f32(240f - arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.x)) - -982f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f)), _wgslsmith_div_f32(arg_3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1127f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_3.b.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1572f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-645f, 859f)) + _wgslsmith_div_f32(arg_3.d.x, 309f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_0.a)), _wgslsmith_f_op_vec4_f32(var_2.b.a + vec4<f32>(525f, 1200f, var_2.d.a.x, var_2.d.a.x)))))));
    return !(-(-2147483647i << (min(26619u, arg_3.b.c.x) % 32u)) == var_2.a.x);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(639f, -701f, 301f, 944f) + vec4<f32>(250f, -746f, 202f, 980f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 993f, 1000f, -346f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(829f, 384f, -414f, -1755f) + vec4<f32>(902f, 234f, 181f, 314f)), vec4<f32>(-310f, 134f, -367f, -602f))))), _wgslsmith_mult_u32(u_input.b, u_input.b), select(vec4<bool>(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(717f, -1584f, -1191f) - vec3<f32>(-1178f, 2588f, -1000f)), vec4<i32>(-15124i, -29370i, -2147483647i, u_input.c), ~u_input.b, Struct_3(15493i, Struct_2(vec4<i32>(-10412i, u_input.a, -2232i, u_input.a), Struct_1(vec4<f32>(-455f, 1904f, 1630f, 790f), u_input.b, vec4<bool>(false, true, false, false)), vec2<u32>(4294967295u, 0u), Struct_1(vec4<f32>(-561f, -1156f, 438f, -1008f), 4294967295u, vec4<bool>(true, true, false, false))), vec2<i32>(0i, u_input.c), vec3<f32>(283f, 259f, 2007f))), select(any(vec4<bool>(false, true, false, false)), select(true, false, true), any(vec3<bool>(false, true, true))), true, any(vec2<bool>(true, true))), select(vec4<bool>(true, all(vec4<bool>(true, false, false, true)), any(vec3<bool>(false, false, true)), true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(select(false, false, false), any(vec4<bool>(false, true, true, false)), true, true)), select(vec4<bool>(true, false, all(vec2<bool>(false, true)), u_input.b < 0u), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, u_input.b > 1u, true, true))));
    let var_1 = ~1u | select(~34525u, ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.b, var_0.b), vec2<u32>(89153u, u_input.b)), countOneBits(vec2<u32>(u_input.b, var_0.b))), countOneBits(_wgslsmith_add_u32(var_0.b, var_0.b)) >= (~8583u >> (0u % 32u)));
    var var_2 = ~var_0.b;
    var var_3 = 707f;
    let var_4 = Struct_3(-2147483647i, Struct_2(max(abs(vec4<i32>(-26933i, 37889i, u_input.c, 0i)), vec4<i32>(-1i) * -vec4<i32>(u_input.c, -2147483647i, -38811i, u_input.c)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, -741f, var_0.a.x))), ~u_input.b, vec4<bool>(true, u_input.c != u_input.a, true, false)), vec2<u32>(u_input.b, u_input.b), var_0), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.a >> (_wgslsmith_clamp_u32(var_0.b, u_input.b, 60288u) % 32u)), vec2<i32>(0i, abs(2147483647i)) ^ _wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.c, u_input.a), vec2<i32>(45514i, 0i), false), vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-43290i, 43969i))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, var_0.c.x)), var_0.a.x)))), var_0.a.x, -481f));
    return _wgslsmith_sub_i32(-u_input.c, ~var_4.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_mod_vec4_i32(max(~(vec4<i32>(-1i, -1i, -2237i, arg_1) & vec4<i32>(arg_0.x, 6279i, arg_1, -2147483647i)), countOneBits(vec4<i32>(u_input.a, arg_1, arg_0.x, 13821i))), ~vec4<i32>(12349i, u_input.a, arg_1, 1i) ^ select(firstTrailingBit(vec4<i32>(67709i, -17650i, arg_1, arg_1)), vec4<i32>(-16070i, arg_0.x, 70023i, arg_0.x) & vec4<i32>(1i, -22410i, 0i, arg_1), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(1037f)), _wgslsmith_f_op_f32(-807f - 134f), -2149f, _wgslsmith_f_op_f32(round(-762f)))), u_input.b ^ u_input.b, vec4<bool>(!all(vec2<bool>(true, true)), true, func_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(271f, 279f, 1727f), vec3<f32>(1140f, -879f, -277f))), max(vec4<i32>(-18013i, u_input.c, 2252i, arg_1), vec4<i32>(u_input.a, 1i, arg_0.x, u_input.a)), 4448u ^ u_input.b, Struct_3(u_input.a, Struct_2(vec4<i32>(-15998i, arg_0.x, u_input.c, -2147483647i), Struct_1(vec4<f32>(207f, 395f, 712f, -364f), 0u, vec4<bool>(false, true, true, true)), vec2<u32>(0u, 12037u), Struct_1(vec4<f32>(2158f, 1651f, -1218f, -3050f), u_input.b, vec4<bool>(true, false, true, false))), vec2<i32>(arg_0.x, -69200i), vec3<f32>(517f, -696f, 521f))), all(vec3<bool>(true, false, true)) & false)), (abs(vec2<u32>(u_input.b, u_input.b)) | _wgslsmith_mod_vec2_u32(vec2<u32>(28528u, 1u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)))) & firstTrailingBit(vec2<u32>(0u, 0u)), Struct_1(vec4<f32>(-865f, _wgslsmith_f_op_f32(abs(489f)), 1105f, _wgslsmith_f_op_f32(ceil(1007f))), u_input.b, !vec4<bool>(true, true, any(vec4<bool>(false, true, true, false)), all(vec2<bool>(false, false)))));
    let var_1 = !(!(any(select(var_0.b.c.xwz, vec3<bool>(false, true, var_0.b.c.x), false)) | true));
    var var_2 = true;
    var_2 = var_0.b.c.x;
    var var_3 = Struct_3(-2147483647i, Struct_2(countOneBits(vec4<i32>(-u_input.c, _wgslsmith_mult_i32(0i, -19313i), 2147483647i, ~2147483647i)), var_0.b, _wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.b, 62965u), var_0.c >> (vec2<u32>(var_0.b.b, 4294967295u) % vec2<u32>(32u)), vec2<bool>(false, true)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, var_0.c.x), vec2<u32>(1u, var_0.b.b))), var_0.d), _wgslsmith_mult_vec2_i32(-_wgslsmith_mod_vec2_i32(select(vec2<i32>(arg_1, arg_1), vec2<i32>(arg_0.x, u_input.a), vec2<bool>(var_1, true)), ~var_0.a.yy), _wgslsmith_div_vec2_i32(~arg_0.yy, vec2<i32>(arg_0.x, var_0.a.x)) >> (~(~vec2<u32>(1665u, var_0.b.b)) % vec2<u32>(32u))), var_0.b.a.wyw);
    return Struct_3(-arg_1 << (var_0.b.b % 32u), Struct_2(-var_3.b.a, var_0.d, ~(~abs(vec2<u32>(var_0.d.b, u_input.b))), Struct_1(_wgslsmith_f_op_vec4_f32(-var_3.b.b.a), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, var_3.b.c.x, var_3.b.b.b), vec4<u32>(var_0.d.b, var_0.d.b, u_input.b, var_3.b.b.b) | vec4<u32>(14741u, var_0.b.b, u_input.b, var_0.c.x)), !(!var_0.d.c))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(func_2(), -801i), _wgslsmith_sub_vec2_i32(select(arg_0.xx, var_0.a.wz, vec2<bool>(true, var_0.b.c.x)), _wgslsmith_mod_vec2_i32(arg_0.yy, vec2<i32>(var_0.a.x, -2147483647i))) >> (var_3.b.c % vec2<u32>(32u)), abs(min(vec2<i32>(arg_1, arg_1), var_0.a.xz))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(616f, var_0.d.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(145f, -569f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_3.b.b.a.x)))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(min(arg_0.b.a.x, min(firstTrailingBit(u_input.c), arg_0.a | ~u_input.a)), arg_0.b, firstLeadingBit(~countOneBits(vec2<i32>(u_input.c, -37159i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-297f, arg_1.d.a.x, arg_1.b.a.x))) + arg_1.d.a.wwz) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-157f, -1742f, arg_1.d.a.x), arg_1.b.a.zyw) + vec3<f32>(arg_0.d.x, arg_0.b.b.a.x, -513f)) + _wgslsmith_div_vec3_f32(arg_1.b.a.wyz, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a.x, arg_0.b.d.a.x, -316f) * vec3<f32>(arg_0.b.d.a.x, arg_1.d.a.x, -322f))))));
    let var_1 = Struct_3(~(-55063i), func_4(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-1i, arg_0.c.x), abs(var_0.a), 64393i), vec3<i32>(~1i, ~u_input.a, abs(-15753i))), 87477i).b, var_0.c, vec3<f32>(func_4(vec3<i32>(-1i) * -vec3<i32>(arg_1.a.x, -2147483647i, -57877i), countOneBits(_wgslsmith_div_i32(-15306i, 2147483647i))).b.d.a.x, arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d.a.x))));
    let var_2 = _wgslsmith_f_op_f32(var_1.d.x - var_0.b.b.a.x);
    var var_3 = Struct_2(min(-var_0.b.a, ~max(var_1.b.a ^ vec4<i32>(-72516i, arg_0.c.x, -16424i, 1i), countOneBits(arg_1.a))), var_1.b.d, arg_1.c, func_4(vec3<i32>(-1i) * -(var_1.b.a.wyw | vec3<i32>(-1i, -43867i, 2147483647i)), -(~45781i) >> (~min(arg_1.b.b, arg_1.d.b) % 32u)).b.d);
    var_3 = Struct_2(-reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a, 0i, 1i, 1i), vec4<i32>(1i, 53238i, -25813i, arg_0.a))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -479f, var_0.d.x, -1377f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-609f, var_2, 305f, arg_1.d.a.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d.a.x, arg_0.d.x, arg_0.b.d.a.x, var_2) * arg_0.b.b.a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(2078f, var_2, 319f, var_2), vec4<f32>(1375f, 768f, 204f, 402f))))), 4294967295u, var_3.d.c), vec2<u32>(var_1.b.d.b, _wgslsmith_mod_u32(arg_0.b.d.b, abs(arg_0.b.c.x >> (23605u % 32u)))), func_4(~var_0.b.a.xxw, 0i).b.d);
    return arg_0.b;
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_3(u_input.a, func_5(func_4(-vec3<i32>(-1i, -6991i, 0i), func_2()), Struct_2(-(~vec4<i32>(u_input.a, 2147483647i, u_input.a, 6603i)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1419f, 712f, -1070f, 305f) + vec4<f32>(571f, 117f, 820f, 191f)), u_input.b, vec4<bool>(true, false, false, true)), ~firstLeadingBit(vec2<u32>(u_input.b, 4294967295u)), func_4(vec3<i32>(19653i, arg_0.x, 3291i) | arg_0, abs(arg_0.x)).b.d)), arg_0.zz, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(305f, -1672f, 1050f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(256f, -765f, -130f))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))))));
    let var_1 = select(vec4<i32>(arg_0.x, 18204i, i32(-1i) * -1i, min(u_input.c, var_0.b.a.x)), var_0.b.a ^ var_0.b.a, !vec4<bool>(!(!var_0.b.d.c.x), ~1u <= _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.c.x, 16154u, 4294967295u, 3250u), vec4<u32>(u_input.b, 0u, 0u, var_0.b.c.x)), var_0.b.b.c.x, var_0.b.d.c.x));
    var var_2 = var_0.b.b.a.x == var_0.b.b.a.x;
    var var_3 = 800f;
    var var_4 = _wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec4_u32(~min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 1u, 45832u), vec4<u32>(var_0.b.b.b, u_input.b, 9644u, 16421u)), vec4<u32>(var_0.b.d.b, u_input.b, u_input.b, 51924u)), countOneBits(~vec4<u32>(var_0.b.b.b, 20434u, var_0.b.d.b, u_input.b)) ^ vec4<u32>(~u_input.b, var_0.b.b.b, ~u_input.b, var_0.b.d.b)));
    return func_4(~func_4(vec3<i32>(-2147483647i, u_input.a, arg_0.x | arg_0.x), -7769i).b.a.yxw, var_1.x).b;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> vec4<i32> {
    var var_0 = arg_1.b;
    var_0 = Struct_2(_wgslsmith_sub_vec4_i32(arg_1.b.a, var_0.a), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_1.b.b.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_1.b.b.a)))), _wgslsmith_mult_u32(~var_0.c.x, arg_1.b.b.b), !arg_1.b.b.c), arg_0.c, arg_1.b.b);
    let var_1 = func_5(arg_1, func_5(arg_1, Struct_2(vec4<i32>(abs(6438i), 0i, u_input.a | arg_0.a.x, u_input.a), func_5(Struct_3(arg_0.a.x, Struct_2(arg_1.b.a, arg_0.d, vec2<u32>(1390u, 66808u), Struct_1(var_0.b.a, 13468u, vec4<bool>(var_0.b.c.x, false, false, true))), arg_0.a.zy, vec3<f32>(-1483f, arg_1.b.b.a.x, 565f)), Struct_2(arg_1.b.a, arg_1.b.b, vec2<u32>(22074u, 0u), Struct_1(var_0.b.a, 19372u, vec4<bool>(arg_1.b.d.c.x, true, var_0.d.c.x, true)))).d, vec2<u32>(~arg_3, func_5(arg_1, arg_1.b).d.b), Struct_1(arg_1.b.b.a, u_input.b, vec4<bool>(false, var_0.b.c.x, true, true))))).d;
    let var_2 = arg_1.b;
    let var_3 = var_1.c.zw;
    return func_1(vec3<i32>(firstLeadingBit(max(arg_1.c.x, -1i >> (arg_2 % 32u))), u_input.c, arg_0.a.x)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(vec3<i32>(~0i, _wgslsmith_sub_i32(-37182i, -40939i ^ u_input.a), ~firstLeadingBit(u_input.c))), Struct_3(-(~(~11322i)), func_4(vec3<i32>(i32(-1i) * -6285i, 0i, _wgslsmith_div_i32(u_input.a, u_input.a)), _wgslsmith_mod_i32(~0i, u_input.a << (u_input.b % 32u))).b, _wgslsmith_clamp_vec2_i32(~func_1(vec3<i32>(u_input.c, u_input.a, 1i)).a.xy, abs(vec2<i32>(3219i, 2147483647i)), vec2<i32>(37086i, 27190i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1413f, -708f, 1079f)))))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~28301u, u_input.b), reverseBits(u_input.b) & 57449u) ^ 37131u, u_input.b);
    let var_1 = vec2<bool>(true, true);
    var_0 = countOneBits(-vec4<i32>(u_input.a, u_input.a, ~(-11350i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 25381i, u_input.a, var_0.x), vec4<i32>(-21986i, u_input.a, 1i, -6600i))) & func_1(var_0.zyx).a);
    let var_2 = Struct_2(~vec4<i32>(_wgslsmith_sub_i32(~var_0.x, _wgslsmith_add_i32(-46829i, 39216i)), 16164i, var_0.x, -(~0i)), Struct_1(vec4<f32>(-296f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f + 289f) - _wgslsmith_f_op_f32(-3172f * -1651f)), func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-27800i, -14352i, 1i)), firstLeadingBit(u_input.a)).b.b.a.x, func_5(func_4(vec3<i32>(var_0.x, u_input.c, u_input.a), -36795i), func_4(vec3<i32>(var_0.x, var_0.x, u_input.c), var_0.x).b).b.a.x), ~u_input.b >> (~u_input.b % 32u), vec4<bool>(!var_1.x, -1i <= u_input.c, false, !(!var_1.x))), func_5(func_4(firstTrailingBit(vec3<i32>(var_0.x, u_input.c, u_input.a) & var_0.wzx), _wgslsmith_div_i32(28992i, var_0.x)), func_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 31531i), vec3<i32>(u_input.a, 2147483647i, var_0.x)), _wgslsmith_sub_vec3_i32(var_0.zxw, var_0.yxy)))).c, Struct_1(vec4<f32>(func_5(func_4(vec3<i32>(-2147483647i, -30178i, 1i), -50717i), func_4(vec3<i32>(var_0.x, u_input.a, -65804i), 17864i).b).d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-654f - -201f)), func_4(var_0.zyw, abs(0i)).b.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -895f)), func_4(var_0.xxy, var_0.x).b.c.x, vec4<bool>(!(23465u > u_input.b), any(vec3<bool>(var_1.x, var_1.x, false)), true, true)));
    var var_3 = func_4(var_0.xxz, var_2.a.x).b.c;
    var var_4 = Struct_2(var_2.a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_2.d.a)) * var_2.d.a)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, 69546u), var_2.c), var_2.c | var_2.c), var_2.d.c), abs(reverseBits(_wgslsmith_sub_vec2_u32(var_2.c, vec2<u32>(14771u, 80125u)))), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(func_5(Struct_3(var_0.x, Struct_2(vec4<i32>(0i, var_2.a.x, var_2.a.x, var_2.a.x), Struct_1(vec4<f32>(var_2.d.a.x, var_2.d.a.x, var_2.d.a.x, var_2.d.a.x), var_3.x, vec4<bool>(var_2.b.c.x, true, true, false)), var_2.c, Struct_1(vec4<f32>(var_2.b.a.x, var_2.d.a.x, 903f, var_2.b.a.x), 49276u, var_2.d.c)), vec2<i32>(var_0.x, 0i), var_2.d.a.yxy), var_2).b.a.x, _wgslsmith_f_op_f32(trunc(175f)), -324f, _wgslsmith_f_op_f32(-var_2.b.a.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b.a.x, -1000f, var_2.b.a.x, var_2.b.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.d.a.x, -653f, var_2.d.a.x)), true)), all(!var_2.d.c.ww))), var_3.x & ~countOneBits(u_input.b), !vec4<bool>(true, false, !var_1.x, var_1.x)));
    var_3 = vec2<u32>(abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~var_2.c, var_2.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_3.x, var_3.x, var_3.x), vec4<u32>(30597u, 19797u, 50376u, var_2.d.b)))), func_4(var_2.a.ywx, 39408i).b.d.b);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-823f, 0u | _wgslsmith_mod_u32(41837u, func_1(max(vec3<i32>(u_input.a, -8993i, u_input.c), vec3<i32>(u_input.a, var_0.x, -1i))).d.b));
}

