struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -23588i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    var var_0 = false;
    let var_1 = any(vec4<bool>(~(~u_input.b) < u_input.c.x, arg_0, select(!(!arg_0), (true || arg_0) | all(vec4<bool>(false, arg_0, false, true)), _wgslsmith_f_op_f32(select(2145f, -583f, true)) < _wgslsmith_f_op_f32(959f * -1000f)), arg_0));
    var_0 = true;
    var var_2 = arg_0 & (arg_0 || !arg_0);
    var var_3 = _wgslsmith_f_op_f32(step(-304f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-580f * -613f)))))));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -122f)), 388f, _wgslsmith_f_op_f32(-643f * _wgslsmith_f_op_f32(round(-162f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-297f - -456f) - 444f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(307f, 128f, 1039f, 1425f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1676f, 2870f, 411f, 2283f)), !vec4<bool>(arg_0, false, false, arg_0))))), all(vec4<bool>(var_1, true, true, var_1))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.a);
    var var_1 = vec4<i32>(u_input.d, -1i, _wgslsmith_dot_vec4_i32(u_input.a >> (~max(vec4<u32>(1u, u_input.c.x, u_input.b, 0u), vec4<u32>(1u, u_input.c.x, u_input.b, 1u)) % vec4<u32>(32u)), max(vec4<i32>(u_input.d, u_input.d, u_input.a.x, arg_2.b), -vec4<i32>(-1i, 36974i, arg_0.c.x, arg_2.c.x))), _wgslsmith_dot_vec3_i32(u_input.a.wzw, _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.d, -1i, 62450i), -vec3<i32>(-2147483647i, arg_2.b, arg_0.b))));
    let var_2 = firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(1u, u_input.c.x), u_input.c.x));
    let var_3 = arg_2;
    global0 = ~arg_2.c.x;
    return select(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)))), !select(vec2<bool>(var_3.a <= arg_2.a, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), true), !all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false))));
}

fn func_2() -> u32 {
    var var_0 = select(!vec3<bool>(true, false, _wgslsmith_f_op_f32(trunc(-1337f)) < 1000f), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), func_4(Struct_1(101f, 2147483647i, vec3<i32>(u_input.d, -19452i, 0i)), _wgslsmith_f_op_vec4_f32(func_3(true)), Struct_1(490f, -1i, u_input.a.zxz)))));
    var_0 = !select(vec3<bool>(true, var_0.x, !var_0.x), vec3<bool>(var_0.x, !(!var_0.x), true), vec3<bool>(all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x))), true, var_0.x));
    var_0 = !(!(!vec3<bool>(true, func_4(Struct_1(-273f, 1899i, u_input.a.zxz), vec4<f32>(473f, -735f, 1076f, -1816f), Struct_1(192f, u_input.d, u_input.a.xyx)).x, !var_0.x)));
    var var_1 = -2147483647i;
    var var_2 = u_input.a;
    return ~u_input.b;
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    global0 = u_input.d >> (max((_wgslsmith_sub_u32(20287u, u_input.c.x) >> (_wgslsmith_clamp_u32(4294967295u, 81070u, u_input.b) % 32u)) ^ 4294967295u, u_input.b) % 32u);
    global0 = -46640i;
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 92913u, u_input.c.x, u_input.b), vec4<u32>(0u, u_input.c.x, 1u, 1u)), vec4<u32>(u_input.c.x, 26331u, u_input.c.x, u_input.c.x) >> (vec4<u32>(53161u, 45496u, 1u, u_input.b) % vec4<u32>(32u)), select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(true, true, arg_0.x, true), arg_0.x)), vec4<u32>(~func_2(), ~(~u_input.b), ~(u_input.c.x >> (u_input.b % 32u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 1u), u_input.c.x))), vec4<u32>(u_input.c.x, ~u_input.b, 4294967295u & ~u_input.b, _wgslsmith_div_u32(min(17639u >> (u_input.c.x % 32u), u_input.c.x), min(u_input.b, 53870u) & _wgslsmith_add_u32(u_input.b, u_input.b))));
    global0 = abs(countOneBits(-2147483647i));
    var var_1 = -448f;
    return Struct_2(u_input.a.zyz, ~abs(var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x;
    let var_0 = func_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true && any(vec2<bool>(false, false))));
    global0 = reverseBits(firstLeadingBit(-(-u_input.d >> (var_0.b % 32u))));
    var var_1 = ~(~5660u);
    var_1 = countOneBits(1u);
    var_1 = firstLeadingBit(~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.d, var_0.a.x), ~vec3<i32>(-func_1(vec3<bool>(false, false, false)).a.x, -2147483647i, select(u_input.a.x, -1i, true)), firstTrailingBit(vec3<u32>(u_input.c.x, 60376u, u_input.c.x) << (abs(vec3<u32>(u_input.c.x, var_0.b, 16531u)) % vec3<u32>(32u))) >> (~firstTrailingBit(vec3<u32>(17560u, 1511u, var_0.b)) % vec3<u32>(32u)));
}

