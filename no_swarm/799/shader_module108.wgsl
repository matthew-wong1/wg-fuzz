struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = true;
    let var_1 = 8338u;
    var var_2 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-147f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -874f)))) + -201f));
}

fn func_2(arg_0: i32) -> vec4<i32> {
    let var_0 = Struct_4(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, arg_0, u_input.a | u_input.b, -arg_0), vec4<i32>(max(-1i, u_input.b), arg_0, -2147483647i, -17773i), reverseBits(vec4<i32>(u_input.b, -10367i, -2147483647i, 23048i)) | _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, 0i, -26459i, 7578i), vec4<i32>(u_input.b, arg_0, 58995i, 17435i))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 1406f));
    let var_1 = var_0;
    let var_2 = Struct_3(vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(20538u, 68248u, 36364u, 1u), vec4<u32>(0u, 0u, 32633u, 1u), vec4<u32>(83250u, 30907u, 0u, 5505u))), ~vec4<u32>(1u, 1u, 1u, 1u)), 1u), !select(!select(vec4<bool>(var_0.b, var_0.b, var_1.b, var_1.b), vec4<bool>(var_0.b, true, false, false), var_0.b), vec4<bool>(u_input.a >= var_1.a.x, true, true, var_1.b), !vec4<bool>(true, var_0.b, var_0.b, var_1.b)), Struct_1(select(!(!vec4<bool>(true, var_1.b, false, var_0.b)), select(vec4<bool>(var_1.b, true, true, false), select(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<bool>(true, var_0.b, false, var_1.b), vec4<bool>(var_0.b, false, var_1.b, true)), false), select(select(vec4<bool>(true, var_0.b, true, var_1.b), vec4<bool>(true, var_0.b, true, false), true), !vec4<bool>(var_1.b, true, var_1.b, var_0.b), true)), 0u, !vec3<bool>(true, true || var_0.b, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, -471f)), -1000f));
    var var_3 = Struct_1(var_2.b, 0u, !(!vec3<bool>(true, false, select(var_0.b, false, false))), var_2.c.e, -718f);
    var_3 = Struct_1(!var_2.c.a, var_2.c.b, var_3.a.xyy, _wgslsmith_f_op_f32(-var_1.c), -612f);
    return var_1.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_3 {
    let var_0 = reverseBits(firstLeadingBit(~(~(~vec2<u32>(0u, 7120u)))));
    let var_1 = -_wgslsmith_div_vec4_i32((vec4<i32>(-12861i, 14572i, u_input.b, u_input.b) >> (vec4<u32>(17247u, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(12387u, 17267u, var_0.x, 5585u), vec4<u32>(4294967295u, 36846u, var_0.x, 1u)) % vec4<u32>(32u)), func_2(-u_input.b)) & abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.b, u_input.b, 0i, ~u_input.a), ~(-vec4<i32>(-60148i, 30785i, u_input.a, u_input.a))));
    var var_2 = Struct_4(_wgslsmith_mult_vec4_i32(~var_1, var_1), any(select(!select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(false, true, true, arg_1), vec4<bool>(true, arg_1, arg_1, true)), !(!vec4<bool>(true, true, arg_1, true)), var_0.x < _wgslsmith_add_u32(var_0.x, 58727u))), 1031f);
    var_2 = Struct_4(select(var_2.a, -var_2.a, !vec4<bool>(select(arg_1, true, arg_1), true && arg_1, var_2.b, true)), var_2.b, var_2.c);
    let var_3 = Struct_2(Struct_1(select(select(select(vec4<bool>(arg_1, var_2.b, false, arg_1), vec4<bool>(true, var_2.b, arg_1, var_2.b), vec4<bool>(arg_1, false, var_2.b, var_2.b)), select(vec4<bool>(false, arg_1, var_2.b, true), vec4<bool>(false, false, var_2.b, false), true), false || arg_1), select(vec4<bool>(false, true, arg_1, arg_1), !vec4<bool>(true, true, arg_1, arg_1), !vec4<bool>(false, var_2.b, true, arg_1)), all(!vec3<bool>(false, var_2.b, true))), var_0.x, select(select(select(vec3<bool>(true, var_2.b, arg_1), vec3<bool>(false, var_2.b, var_2.b), false), !vec3<bool>(false, false, var_2.b), true), !select(vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, var_2.b, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, arg_1, true), vec3<bool>(true, true, true), 1u > var_0.x)), 1526f, -1000f), Struct_1(!select(!vec4<bool>(true, true, var_2.b, var_2.b), vec4<bool>(true, var_2.b, arg_1, true), !vec4<bool>(true, true, var_2.b, false)), 4995u, !select(!vec3<bool>(false, arg_1, arg_1), !vec3<bool>(true, true, arg_1), all(vec4<bool>(false, false, true, true))), arg_0.x, _wgslsmith_f_op_f32(round(-304f))), vec3<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(15202u, var_0.x, 1u), vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, 0u)), ~firstTrailingBit(vec3<u32>(4294967295u, var_0.x, var_0.x))), _wgslsmith_add_u32(var_0.x, firstTrailingBit(37163u)), min(32914u, firstTrailingBit(43434u))), countOneBits(var_0 << (vec2<u32>(var_0.x, ~0u) % vec2<u32>(32u))));
    return Struct_3(var_0, vec4<bool>(any(vec2<bool>(arg_1 || false, false != var_3.a.a.x)), arg_1 | !(var_2.b & var_3.b.c.x), arg_1, false), Struct_1(var_3.b.a, ~(var_3.c.x << (4294967295u % 32u)), var_3.b.c, var_3.b.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.c * 2068f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(273f, 518f, 353f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-232f, -318f, -1472f) * vec3<f32>(150f, -2143f, -2165f)))), var_0.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-832f, -772f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1255f, 263f, 1292f) - vec3<f32>(715f, -1235f, 190f))))))), select(true, !var_0.x, all(vec3<bool>(!var_0.x, all(vec3<bool>(var_0.x, true, var_0.x)), var_0.x))));
    let var_2 = Struct_3(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u) ^ select(vec2<u32>(11172u, var_1.a.x), vec2<u32>(4294967295u, 1u), vec2<bool>(var_1.c.c.x, false)), _wgslsmith_add_vec2_u32(~var_1.a, ~vec2<u32>(3104u, 36730u))), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.a, var_1.a) | (vec2<u32>(881u, var_1.a.x) << (vec2<u32>(30804u, 1u) % vec2<u32>(32u))), var_1.a)), !vec4<bool>(select(var_1.c.a.x, true, var_0.x & true), all(vec3<bool>(true, false, var_1.c.a.x)), var_0.x, var_0.x | any(vec3<bool>(true, true, true))), var_1.c);
    let var_3 = var_1.c.a.x;
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(max(select(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, var_1.a.x, var_1.c.b), vec3<bool>(var_1.b.x, var_1.b.x, var_3)), countOneBits(vec3<u32>(var_1.c.b, 15175u, var_2.a.x))) & vec3<u32>(0u, var_1.c.b ^ 38151u, 0u)));
}

