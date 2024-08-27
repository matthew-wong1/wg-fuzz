struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec3<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> vec4<bool> {
    let var_0 = ~_wgslsmith_sub_u32(arg_1.a.b, 0u);
    return select(select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, false, false, false), arg_1.d.c == arg_1.b.x), vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), true, true, true), select(vec4<bool>(arg_1.a.a.c <= 0u, any(vec2<bool>(false, true)), all(vec3<bool>(true, false, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, select(false, false, false), false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, all(vec2<bool>(true, true)), any(vec2<bool>(false, true)) != false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, false)))));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_mod_vec2_u32(arg_0, arg_0);
    let var_1 = vec4<bool>(any(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), all(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(449f * -1061f)), Struct_4(Struct_3(Struct_1(u_input.b, -2147483647i, arg_0.x), var_0.x, 78232i, vec3<i32>(0i, -2147483647i, -19632i), vec2<f32>(-1101f, 417f)), _wgslsmith_mod_vec2_i32(vec2<i32>(-39714i, u_input.c), vec2<i32>(u_input.c, 17813i)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, arg_0.x), vec3<u32>(0u, u_input.a.x, u_input.b)), Struct_3(Struct_1(u_input.b, 2147483647i, var_0.x), var_0.x, -1i, vec3<i32>(20694i, -66176i, u_input.c), vec2<f32>(-1361f, 1455f))))), true, true);
    var var_2 = Struct_3(Struct_1(firstTrailingBit(min(u_input.a.x, var_0.x)), u_input.c, countOneBits(_wgslsmith_div_u32(var_0.x, u_input.a.x))), 7967u, ~1i, vec3<i32>(-1i) * -select(vec3<i32>(u_input.c, u_input.c, u_input.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(u_input.c, 26943i, u_input.c), vec3<i32>(u_input.c, u_input.c, -2147483647i)), all(var_1.ywz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-925f)), _wgslsmith_f_op_f32(f32(-1f) * -1492f)))));
    var_2 = Struct_3(Struct_1(firstLeadingBit(~(arg_0.x << (u_input.b % 32u))), u_input.c, arg_0.x), abs(max(~arg_0.x, countOneBits(~var_0.x))), ~firstTrailingBit(2147483647i), var_2.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(121f, 900f) + var_2.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.e - vec2<f32>(547f, 1128f)) + var_2.e), select(var_1.wz, vec2<bool>(true, true), !var_1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e.x, _wgslsmith_f_op_f32(var_2.e.x - var_2.e.x)))));
    let var_3 = select(!vec2<bool>(var_1.x, false), vec2<bool>(true, var_1.x), var_1.yx);
    return var_2.e.x;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<f32>, arg_3: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(func_2(vec2<u32>(1u, _wgslsmith_sub_u32(~16189u, abs(u_input.a.x)) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(21097u, u_input.b, u_input.a.x), vec3<u32>(u_input.a.x, u_input.b, u_input.a.x)))));
    var var_1 = ~u_input.b | u_input.b;
    var var_2 = _wgslsmith_mult_vec3_i32(-firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.c, -19245i, 1i))), select(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, 1i, -2147483647i)), vec3<i32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_add_vec3_i32(vec3<i32>(-10492i, 70702i, -1i), min(vec3<i32>(-48775i, 1i, u_input.c), vec3<i32>(-1i, 5094i, u_input.c))), arg_0) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, -23616i), vec3<i32>(u_input.c, u_input.c, 2147483647i)), vec3<i32>(1i, 2147483647i, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(40698i, 1i, 1i), vec3<i32>(2147483647i, u_input.c, 0i)) >> (select(vec3<u32>(u_input.a.x, 81482u, 53503u), vec3<u32>(4294967295u, u_input.b, 0u), vec3<bool>(false, arg_0, true)) % vec3<u32>(32u)), select(vec3<i32>(34129i, 1i, -16414i) | vec3<i32>(-26540i, u_input.c, -2147483647i), -vec3<i32>(u_input.c, u_input.c, u_input.c), !vec3<bool>(false, arg_0, arg_1))));
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(22523u, _wgslsmith_clamp_u32(u_input.b, 1u, 1u)), u_input.b, 1u, abs(u_input.a.x)), _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(0u, u_input.a.x, u_input.b, u_input.a.x))), abs(vec4<u32>(58633u, _wgslsmith_div_u32(1942u, u_input.b), _wgslsmith_clamp_u32(29602u, 0u, 34852u), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), ~vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~u_input.a.x, u_input.a.x)));
    var_1 = u_input.a.x << (_wgslsmith_mult_u32(67663u, u_input.b) % 32u);
    return func_3(_wgslsmith_f_op_f32(f32(-1f) * -1447f), Struct_4(Struct_3(Struct_1(1u, firstTrailingBit(var_2.x), 16705u), 51021u, _wgslsmith_mult_i32(~var_2.x, abs(2147483647i)), vec3<i32>(var_2.x & -2147483647i, _wgslsmith_mod_i32(var_2.x, 24361i), min(2147483647i, 1i)), arg_2.zw), vec2<i32>(u_input.c, var_2.x) ^ vec2<i32>(u_input.c & u_input.c, 0i), ~(~vec3<u32>(1u, 0u, u_input.a.x)), Struct_3(Struct_1(u_input.a.x, u_input.c, 1u), ~24249u, -37535i, _wgslsmith_mult_vec3_i32(select(vec3<i32>(var_2.x, 6092i, 25424i), vec3<i32>(-1i, 64421i, 8636i), vec3<bool>(arg_1, true, arg_1)), _wgslsmith_mult_vec3_i32(vec3<i32>(12195i, 2147483647i, var_2.x), vec3<i32>(var_2.x, var_2.x, -1i))), vec2<f32>(-334f, _wgslsmith_f_op_f32(133f + var_0))))).yyx;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> vec3<u32> {
    let var_0 = u_input.a;
    let var_1 = Struct_1(var_0.x, arg_1.x, ~1u >> (var_0.x % 32u));
    let var_2 = ~select(~73808u, 1u, arg_0.x);
    let var_3 = -1054f;
    let var_4 = Struct_4(Struct_3(Struct_1(77813u, 0i, ~(u_input.a.x << (0u % 32u))), _wgslsmith_mod_u32(~1u, u_input.a.x), -(_wgslsmith_sub_i32(1i, arg_1.x) << (_wgslsmith_add_u32(var_2, var_1.a) % 32u)), (vec3<i32>(-8507i, 0i, 0i) ^ (vec3<i32>(arg_1.x, 1i, arg_2.x) | vec3<i32>(-66973i, arg_2.x, u_input.c))) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, arg_2.x, u_input.c) >> (vec3<u32>(u_input.a.x, 1u, var_2) % vec3<u32>(32u)), reverseBits(vec3<i32>(var_1.b, var_1.b, -1i))), vec2<f32>(-358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<u32>(1u, var_2)))))), arg_1 >> (vec2<u32>(22767u, 0u) % vec2<u32>(32u)), ~_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.x, 70221u, 4294967295u), ~vec3<u32>(var_1.a, 2553u, var_1.a)) | ~vec3<u32>(~var_2, u_input.b >> (5205u % 32u), reverseBits(u_input.a.x)), Struct_3(var_1, var_2, arg_2.x, ~select(-vec3<i32>(-36754i, 2147483647i, var_1.b), ~vec3<i32>(arg_1.x, arg_1.x, var_1.b), select(vec3<bool>(arg_0.x, true, arg_0.x), arg_0, vec3<bool>(arg_0.x, arg_0.x, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(233f, 739f)))));
    return ~vec3<u32>(~var_0.x, firstTrailingBit(16665u), ~(~(var_4.a.b | var_0.x)));
}

fn func_5(arg_0: i32, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = -abs(select(arg_0, _wgslsmith_dot_vec2_i32(-vec2<i32>(13022i, arg_0), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, arg_0), vec2<i32>(u_input.c, u_input.c))), true));
    let var_1 = Struct_4(Struct_3(Struct_1(max(_wgslsmith_mult_u32(4294967295u, arg_1.x), max(u_input.b, 40942u)), arg_0 ^ -arg_0, arg_1.x), ((4291u & u_input.b) ^ 16862u) >> (u_input.b % 32u), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c >> (4294967295u % 32u), 49348i, 5982i), arg_0), vec3<i32>(_wgslsmith_add_i32(var_0, -var_0), _wgslsmith_sub_i32(3098i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, -21601i, var_0, u_input.c), vec4<i32>(var_0, 3866i, -1i, u_input.c))), ~(-arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-335f, _wgslsmith_div_f32(1354f, -716f)))), _wgslsmith_mod_vec2_i32(abs(countOneBits(~vec2<i32>(arg_0, arg_0))), vec2<i32>(var_0, _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, -22312i, -96164i), _wgslsmith_div_vec3_i32(vec3<i32>(var_0, var_0, -28463i), vec3<i32>(0i, 1227i, u_input.c))))), abs(countOneBits(arg_1)), Struct_3(Struct_1(4294967295u, -2147483647i, ~_wgslsmith_sub_u32(arg_1.x, 0u)), 3727u, min(-47878i, _wgslsmith_mult_i32(arg_0, -var_0)), vec3<i32>(max(~(-1i), -7618i), 0i, u_input.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f * 419f), _wgslsmith_f_op_f32(sign(-1950f))) + vec2<f32>(_wgslsmith_f_op_f32(round(1674f)), _wgslsmith_f_op_f32(444f - 367f)))));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(46495i, reverseBits(u_input.c), _wgslsmith_div_i32(1i, 2147483647i), var_1.a.d.x), ~(vec4<i32>(1i, 1i, 1i, 1i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, var_1.a.a.c, var_1.a.a.a, var_1.a.b), vec4<u32>(var_1.a.a.c, 9538u, arg_1.x, var_1.a.a.a)) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(65652i, 0i, arg_0, -27542i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, 11908i, -2182i, arg_0), vec4<i32>(-65515i, 14542i, 0i, u_input.c), vec4<i32>(0i, -15288i, -46057i, 2147483647i))), vec4<i32>(_wgslsmith_div_i32(var_1.b.x, 31019i), -u_input.c, 24919i, abs(-20651i)), ~vec4<i32>(var_1.b.x, -4612i, var_1.b.x, u_input.c)));
    var var_3 = Struct_1(reverseBits(3199u), ~(~var_1.d.c), ~u_input.b);
    var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-select(~vec4<i32>(var_1.b.x, 26622i, u_input.c, -2147483647i), vec4<i32>(25430i, arg_0, var_2.x, 33348i), any(vec4<bool>(true, true, true, false))), ~reverseBits(vec4<i32>(var_0, u_input.c, arg_0, 2147483647i) | vec4<i32>(54323i, var_3.b, var_0, var_3.b))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 0i, 1i, var_2.x), _wgslsmith_div_vec4_i32(vec4<i32>(-56166i, var_1.a.a.b, -76283i, var_2.x), vec4<i32>(arg_0, 3538i, 59941i, 1i)), abs(vec4<i32>(u_input.c, -6143i, var_0, arg_0)))) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, arg_1.x, arg_1.x, 71901u), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_3.c, var_1.a.a.c, u_input.b, arg_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 1u, arg_1.x), vec4<u32>(0u, var_1.c.x, 98057u, arg_1.x))), ~abs(vec4<u32>(110630u, var_3.c, 1u, 1u))) % vec4<u32>(32u)));
    return Struct_3(var_1.d.a, 1u, -2147483647i, -vec3<i32>(u_input.c, var_0, -reverseBits(-9535i)), _wgslsmith_f_op_vec2_f32(var_1.a.e + _wgslsmith_f_op_vec2_f32(var_1.a.e - vec2<f32>(1f, var_1.a.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32((_wgslsmith_mult_i32(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 51487i), vec2<i32>(-23905i, u_input.c))) >> ((~u_input.b & _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) % 32u)) & (_wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, u_input.c), 2147483647i) << ((_wgslsmith_mult_u32(11022u, u_input.b) ^ max(0u, 87297u)) % 32u)), u_input.c);
    var var_1 = func_5(53403i, ~func_4(func_1(all(vec2<bool>(false, false)), 4294967295u > u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(177f, -1381f, 702f, -859f)), -366f), vec2<i32>(1i, 1i), ~abs(vec2<i32>(1526i, u_input.c))));
    let var_2 = var_1.d;
    var var_3 = var_1.a;
    var_3 = Struct_1(countOneBits(~((0u << (var_1.b % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, 1133u, var_1.b, var_3.a), vec4<u32>(var_3.a, u_input.a.x, 40896u, var_3.c)) % 32u))), 6374i, ~(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.a, 25466u, u_input.b, var_3.c), vec4<u32>(0u, var_3.a, 29925u, 15568u)), vec4<u32>(32541u, var_3.c, u_input.b, var_3.a)) >> (((var_3.a | u_input.a.x) >> (~u_input.a.x % 32u)) % 32u)));
    var_1 = Struct_3(Struct_1(73313u, var_1.c & -2147483647i, (min(4294967295u, var_3.a) >> (83006u % 32u)) ^ firstLeadingBit(var_1.a.a)), 1u, ~_wgslsmith_add_i32(var_3.b, ~(-753i)), max(var_1.d, -select(-var_1.d, var_1.d, vec3<bool>(true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(max(-543f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-425f + 239f) * var_1.e.x))), 112f));
    let x = u_input.a;
    s_output = StorageBuffer(-394f, -(~var_3.b), var_1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-813f + var_1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.e.x, 804f, true))))));
}

