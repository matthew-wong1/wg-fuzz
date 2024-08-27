struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_3) -> bool {
    var var_0 = (_wgslsmith_mod_u32(1u, min(arg_3.e.a.x, ~27837u)) >= u_input.a.x) && ((all(vec4<bool>(false, true, arg_0.b.x, arg_3.d.x)) != true) || arg_2);
    let var_1 = -11681i;
    let var_2 = -50016i;
    var var_3 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(max(var_2, -1i), _wgslsmith_sub_i32(var_1, var_1), _wgslsmith_clamp_i32(-1i, -51078i, 2147483647i), abs(-2147483647i)), abs(vec4<i32>(var_2, 38240i, 29603i, arg_3.c.x)) | _wgslsmith_div_vec4_i32(vec4<i32>(var_2, -21735i, arg_3.e.e, var_2), vec4<i32>(var_2, 1i, u_input.d, 0i)));
    var_3 = select(countOneBits(vec4<i32>(var_2 >> (_wgslsmith_add_u32(85852u, 37582u) % 32u), 1i, var_2, -15367i)), -_wgslsmith_mult_vec4_i32(abs(~vec4<i32>(var_3.x, -42070i, arg_3.c.x, var_2)), countOneBits(firstTrailingBit(vec4<i32>(var_3.x, var_1, u_input.d, var_2)))), any(vec4<bool>(true, all(arg_0.b.xw), !arg_1.x, select(true, arg_3.b.x, arg_2))) || !(!(var_3.x != -1i)));
    return false | arg_0.b.x;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<bool>) -> bool {
    let var_0 = !vec2<bool>(arg_2.x || true, true);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(1354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(453f + 557f)))), 2297f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-562f, -769f), -1572f)))), select(!(!(!vec4<bool>(arg_1, false, true, false))), !select(vec4<bool>(true, true, false, true), !arg_2, !arg_2), !any(arg_2.yxx)));
    var var_2 = ~(~1u);
    var_2 = 95453u;
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, _wgslsmith_f_op_f32(trunc(549f)), var_1.a.x)), select(select(arg_2, select(arg_2, vec4<bool>(var_0.x, arg_2.x, true, false), false), !vec4<bool>(var_1.b.x, arg_2.x, true, true)), vec4<bool>(true, var_0.x, all(vec3<bool>(true, var_0.x, var_0.x)), var_1.b.x), !select(vec4<bool>(arg_1, var_1.b.x, var_1.b.x, true), vec4<bool>(false, false, true, true), false))), select(vec4<bool>(false, all(var_1.b.wz), !func_3(Struct_1(var_1.a, var_1.b), vec4<bool>(arg_2.x, false, false, true), var_1.b.x, Struct_3(Struct_1(vec3<f32>(var_1.a.x, var_1.a.x, 1000f), arg_2), arg_2, vec3<i32>(u_input.d, u_input.d, u_input.d), vec4<bool>(arg_2.x, true, arg_1, false), Struct_2(u_input.c, vec4<u32>(0u, 100197u, u_input.b, arg_0), var_1.b.x, Struct_1(var_1.a, var_1.b), 2584i))), func_3(Struct_1(var_1.a, arg_2), vec4<bool>(false, arg_2.x, false, var_1.b.x), var_0.x, Struct_3(Struct_1(vec3<f32>(-789f, var_1.a.x, var_1.a.x), var_1.b), var_1.b, vec3<i32>(u_input.d, u_input.d, u_input.d), vec4<bool>(var_0.x, var_0.x, false, true), Struct_2(vec3<u32>(36687u, 45542u, 37135u), vec4<u32>(u_input.a.x, 4294967295u, u_input.c.x, u_input.b), false, Struct_1(var_1.a, arg_2), u_input.d)))), vec4<bool>(!arg_2.x, !(var_1.a.x < var_1.a.x), arg_2.x == (u_input.d < -19774i), false), select(arg_2, vec4<bool>(!var_1.b.x, true, true, true), var_1.b)), _wgslsmith_add_vec3_i32(-(~vec3<i32>(u_input.d, u_input.d, 1i)), vec3<i32>(_wgslsmith_div_i32(32976i, -108837i), reverseBits(u_input.d), _wgslsmith_add_i32(u_input.d, -1i))) ^ -max(firstLeadingBit(vec3<i32>(21990i, u_input.d, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 0i, u_input.d), vec3<i32>(1i, u_input.d, 1i))), !select(vec4<bool>(func_3(Struct_1(vec3<f32>(-825f, 1219f, 261f), arg_2), arg_2, arg_1, Struct_3(Struct_1(vec3<f32>(-1484f, 791f, 575f), vec4<bool>(true, false, arg_1, arg_1)), arg_2, vec3<i32>(u_input.d, 44066i, u_input.d), vec4<bool>(arg_1, var_0.x, true, arg_1), Struct_2(vec3<u32>(0u, u_input.a.x, 1u), vec4<u32>(0u, u_input.b, 4294967295u, arg_0), var_1.b.x, Struct_1(vec3<f32>(var_1.a.x, 1212f, var_1.a.x), arg_2), -1i))), var_1.a.x <= var_1.a.x, !var_0.x, !arg_2.x), vec4<bool>(!var_0.x, true, !arg_1, var_1.b.x), select(select(var_1.b, arg_2, arg_2.x), select(var_1.b, var_1.b, true), true)), Struct_2(u_input.c, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(83558u, 4294967295u, 20209u, u_input.a.x), vec4<u32>(19701u, 16838u, 0u, arg_0)), _wgslsmith_div_vec4_u32(select(vec4<u32>(arg_0, arg_0, 43397u, 31512u), vec4<u32>(u_input.b, 1u, u_input.a.x, 1u), var_1.b), vec4<u32>(arg_0, 1u, 0u, u_input.b))), any(select(vec3<bool>(true, var_1.b.x, false), !vec3<bool>(var_0.x, arg_2.x, false), var_0.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(379f, -866f, 461f))), arg_2), abs(27133i)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_1.a.x)), var_1.a.x)))) + _wgslsmith_f_op_f32(-var_3.a.a.x)) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-438f, _wgslsmith_f_op_f32(select(var_3.e.d.a.x, var_3.e.d.a.x, true))));
}

fn func_1() -> vec3<bool> {
    global0 = array<vec2<u32>, 18>();
    global0 = array<vec2<u32>, 18>();
    var var_0 = min(select(vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(-18345i), 1405i & u_input.d), min(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.d, u_input.d), vec3<i32>(-2147483647i, u_input.d, 2147483647i))), firstLeadingBit(16567i) | -u_input.d, _wgslsmith_div_i32(u_input.d, 79031i)), ~((vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d) | vec4<i32>(u_input.d, u_input.d, 3991i, -2147483647i)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 4294967295u), vec4<u32>(0u, 31324u, u_input.a.x, 4294967295u)) % vec4<u32>(32u))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), true)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, firstLeadingBit(~u_input.d), reverseBits(countOneBits(u_input.d)), u_input.d), vec4<i32>(2147483647i, 1i, _wgslsmith_div_i32(u_input.d << (51284u % 32u), u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(40760i, 19517i, u_input.d), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.d, u_input.d), vec3<i32>(-37527i, 1i, -23952i))))));
    global0 = array<vec2<u32>, 18>();
    var var_1 = vec2<bool>(any(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), all(vec3<bool>(true, true, true)))), true);
    return select(vec3<bool>(var_1.x, func_2(15449u, var_1.x, !vec4<bool>(var_1.x, true, true, var_1.x)), false), !vec3<bool>(true, true, any(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false)))), vec3<bool>(all(vec4<bool>(39938i > u_input.d, true, !var_1.x, true)), var_1.x, var_1.x && var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec3<bool>(true, all(vec3<bool>(true, false, true)), false), !func_1(), vec3<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(false, true)), all(vec4<bool>(true, false, true, true))))) | true;
    let var_1 = vec4<i32>(~u_input.d & _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, u_input.d) & _wgslsmith_clamp_vec2_i32(vec2<i32>(7321i, 0i), vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, 37364i)), vec2<i32>(~u_input.d, u_input.d)), _wgslsmith_add_i32(u_input.d, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_mod_i32(u_input.d, -1i)), firstLeadingBit(u_input.d << (0u % 32u)))), u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(10583i), 0i | u_input.d, abs(4976i), 1i), min(_wgslsmith_div_vec4_i32(max(vec4<i32>(22334i, u_input.d, u_input.d, u_input.d), vec4<i32>(u_input.d, 1i, 1i, 2147483647i)), vec4<i32>(1i, u_input.d, -36641i, u_input.d) ^ vec4<i32>(60249i, -22495i, u_input.d, -32568i)), vec4<i32>(-u_input.d, u_input.d | u_input.d, u_input.d, u_input.d))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * 1452f), _wgslsmith_f_op_f32(select(-313f, -446f, true)), _wgslsmith_f_op_f32(select(-1526f, 2050f, false)))), vec4<bool>(var_0, func_1().x, true, var_0)), vec4<bool>(false, var_0, var_0, var_1.x == (-28439i << (~u_input.c.x % 32u))), (abs(-vec3<i32>(u_input.d, u_input.d, var_1.x)) & ~var_1.xxw) ^ var_1.ywx, vec4<bool>(true, true, true, !(!var_0)), Struct_2(u_input.c, vec4<u32>(u_input.b, firstTrailingBit(~1u), _wgslsmith_div_u32(~38942u, reverseBits(17363u)), ~17511u), 31704i < abs(firstLeadingBit(u_input.d)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(-387f, 225f)), -1000f, _wgslsmith_f_op_f32(1000f * -671f)), select(vec4<bool>(true, false, var_0, true), !vec4<bool>(true, var_0, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, var_0, var_0), var_0))), _wgslsmith_clamp_i32(-min(0i, var_1.x), -(var_1.x >> (0u % 32u)), ~(-u_input.d))));
    global0 = array<vec2<u32>, 18>();
    var var_3 = var_2;
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.d.a.x, _wgslsmith_f_op_f32(-var_2.a.a.x)) - _wgslsmith_f_op_vec2_f32(-var_3.a.a.xz));
    let var_5 = var_3.e;
    let var_6 = var_5.d.a;
    let var_7 = _wgslsmith_clamp_vec3_u32(firstTrailingBit(min(max(var_3.e.b.yyy, var_3.e.b.zxx), ~vec3<u32>(var_3.e.a.x, 1u, var_2.e.b.x) | _wgslsmith_add_vec3_u32(vec3<u32>(19800u, var_2.e.b.x, var_2.e.b.x), vec3<u32>(54300u, 16817u, 4294967295u)))), abs(var_2.e.a | var_5.a), vec3<u32>(_wgslsmith_mod_u32(max(51992u, max(var_5.b.x, var_3.e.a.x)), ~73494u), 0u, 40434u & select(abs(0u), _wgslsmith_div_u32(var_2.e.a.x, 4294967295u), any(vec3<bool>(var_3.a.b.x, var_0, var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(984f);
}

