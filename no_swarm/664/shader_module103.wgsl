struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -32980i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -995f))), -1000f), arg_1, _wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, arg_1) * 932f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -1429f, arg_0.a)) - vec4<f32>(arg_1, arg_1, arg_1, -583f))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1082f, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(591f, -1000f))), arg_1, _wgslsmith_f_op_f32(-arg_1)), arg_0.e)));
    let var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a))), countOneBits(u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.d, ~_wgslsmith_sub_u32(var_1.b.x, 4294967295u), ~arg_0.d, ~(~0u)), vec4<u32>(1u, _wgslsmith_mult_u32(var_1.b.x, var_1.c.x | 0u), var_1.d, ~var_1.d)), var_1.c.x, vec4<bool>(true && !(-24158i < u_input.b), true, false, (var_1.c.x == 0u) || var_1.e.x));
    var var_3 = ~(~min((arg_0.c >> (vec4<u32>(var_1.c.x, 15047u, 4294967295u, u_input.a.x) % vec4<u32>(32u))) | vec4<u32>(var_2.d, 29717u, var_2.d, arg_0.d), firstLeadingBit(_wgslsmith_clamp_vec4_u32(arg_0.c, vec4<u32>(arg_0.c.x, var_2.b.x, 0u, 37213u), var_1.c))));
    let var_4 = ~arg_2.yx;
    return select(select(arg_0.e.zy, !select(vec2<bool>(true, true), select(arg_0.e.xz, vec2<bool>(false, true), var_2.e.x), vec2<bool>(false, false)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_2, arg_2), min(var_4.x, -24075i)) <= var_4.x), !select(!var_1.e.xy, select(arg_0.e.wz, vec2<bool>(true, var_2.e.x), true), true), vec2<bool>(true, var_2.e.x));
}

fn func_2() -> vec2<f32> {
    global0 = abs(-select(2147483647i, 0i, all(vec4<bool>(true, false, true, true))));
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(abs(-29434i), 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b | -41294i, -7824i), ~vec2<i32>(u_input.b, u_input.b) >> (~vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)))), u_input.b, abs(u_input.b));
    var_0 = vec3<i32>(-1i) * -vec3<i32>(-26839i, var_0.x, 1i | (var_0.x >> (u_input.a.x % 32u)));
    var var_1 = 347f;
    let var_2 = all(select(!(!func_3(Struct_1(800f, vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 9506u, u_input.a.x), u_input.a.x, vec4<bool>(true, false, false, true)), 471f, vec3<i32>(0i, 2147483647i, 7709i))), !(!func_3(Struct_1(-1000f, vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), u_input.a.x, vec4<bool>(false, true, false, true)), 1000f, vec3<i32>(-45364i, u_input.b, var_0.x))), !func_3(Struct_1(1000f, u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), u_input.a.x, vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -912f), vec3<i32>(-1i, u_input.b, 3683i))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1477f, 156f), vec2<f32>(-838f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -496f)))))) * vec2<f32>(_wgslsmith_div_f32(-466f, 670f), 1f));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = select(vec2<bool>((true && any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))) | all(vec4<bool>(arg_0.x, arg_0.x, false, true)), true), arg_0, arg_0.x);
    var var_1 = firstTrailingBit(abs(max(_wgslsmith_sub_u32(~1u, abs(31476u)), firstTrailingBit(1u))));
    global0 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_3 = select(vec2<bool>(false, any(!vec4<bool>(var_0.x, arg_0.x, false, var_0.x)) && (false & (var_0.x | arg_0.x))), arg_0, arg_0);
    return Struct_1(_wgslsmith_f_op_f32(var_2.x * -946f), _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a.x, 48764u, u_input.a.x) | ~vec3<u32>(u_input.a.x, 14155u, u_input.a.x)), vec3<u32>(_wgslsmith_add_u32(305u, 16739u), abs(96315u), u_input.a.x) & vec3<u32>(abs(u_input.a.x), _wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x), ~u_input.a.x)), ~(~reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<u32>(21583u, u_input.a.x, 22148u, u_input.a.x))), ~(~(u_input.a.x << (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u))), select(!vec4<bool>(all(vec2<bool>(false, false)), !var_0.x, false, false), !(!(!vec4<bool>(true, true, arg_0.x, true))), select(vec4<bool>(true, var_2.x > var_2.x, !arg_0.x, -397f < var_2.x), !select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_3.x, arg_0.x, var_3.x, true), vec4<bool>(true, true, var_3.x, var_0.x)), vec4<bool>(!arg_0.x, var_3.x, !var_3.x, true))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    global0 = -90433i;
    return func_1(func_1(select(vec2<bool>(arg_0.e.x, true), select(vec2<bool>(arg_0.e.x, arg_0.e.x), !vec2<bool>(arg_0.e.x, false), func_3(Struct_1(arg_0.a, arg_0.c.yyx, arg_0.c, arg_0.c.x, arg_0.e), arg_1.x, vec3<i32>(u_input.b, u_input.b, -1i))), arg_0.e.zy)).e.wx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = func_4(func_1(vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1759f), _wgslsmith_div_f32(_wgslsmith_div_f32(1770f, -1194f), _wgslsmith_f_op_f32(sign(209f))), _wgslsmith_f_op_vec2_f32(func_2()).x)));
    let var_2 = func_1(func_1(var_1.e.yy).e.ww);
    global0 = ~1i;
    var var_3 = -2147483647i;
    var_3 = firstTrailingBit(9883i);
    var var_4 = !vec3<bool>(!var_2.e.x, true, var_1.e.x && func_1(vec2<bool>(false, false)).e.x);
    global0 = abs(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(63714i, 13337i, -2147483647i, u_input.b)), ~vec4<i32>(u_input.b, u_input.b, u_input.b, 1i)) << (~var_1.c % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b, -2147483647i, u_input.b, 45816i), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.b, -7805i), vec4<i32>(u_input.b, 18130i, u_input.b, 2147483647i), vec4<i32>(u_input.b, 0i, 19483i, 0i)), countOneBits(vec4<i32>(u_input.b, u_input.b, 15856i, u_input.b)), max(vec4<i32>(u_input.b, u_input.b, 1i, 0i), vec4<i32>(17164i, u_input.b, u_input.b, u_input.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, -98471i), vec3<i32>(u_input.b, -22627i, u_input.b)))));
}

