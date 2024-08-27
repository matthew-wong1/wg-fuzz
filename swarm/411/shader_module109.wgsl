struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = array<vec4<bool>, 11>();
    global0 = array<vec4<bool>, 11>();
    var var_0 = vec4<i32>(-1i) * -u_input.e;
    var_0 = firstLeadingBit(u_input.b) & (u_input.b | vec4<i32>(_wgslsmith_mult_i32(-2147483647i, -var_0.x), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_0.x, 14173i), vec3<i32>(15562i, var_0.x, var_0.x)), var_0.xwx), -24i, firstTrailingBit(var_0.x) << (u_input.d % 32u)));
    var var_1 = u_input.d;
    return false;
}

fn func_3(arg_0: bool, arg_1: bool) -> Struct_2 {
    global0 = array<vec4<bool>, 11>();
    let var_0 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 57036u, 1u, _wgslsmith_sub_u32(u_input.d, u_input.d))), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(79945u, u_input.d), min(vec2<u32>(u_input.d, u_input.d), ~vec2<u32>(22315u, u_input.d))), ~(~(~u_input.d)), 27562u));
    global0 = array<vec4<bool>, 11>();
    let var_1 = i32(-1i) * -u_input.a.x;
    global0 = array<vec4<bool>, 11>();
    return Struct_2(Struct_1(-243f, _wgslsmith_mult_u32(~var_0, firstLeadingBit(_wgslsmith_mult_u32(u_input.d, var_0)))), 101355u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -170f, -1535f));
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.a;
    var_0 = Struct_1(var_0.a, 4294967295u);
    return var_0.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_4(func_3(true, func_2(Struct_1(arg_1.a, u_input.d))))), 1u), 57837u, vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(func_3(arg_0.x, false).a.a * _wgslsmith_f_op_f32(ceil(arg_1.a)))));
    let var_1 = arg_1;
    global0 = array<vec4<bool>, 11>();
    global0 = array<vec4<bool>, 11>();
    let var_2 = abs(4294967295u);
    return func_3(arg_0.x, abs(countOneBits(u_input.a.x)) < _wgslsmith_clamp_i32(u_input.c.x, -53762i, _wgslsmith_div_i32(u_input.b.x, 2147483647i))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 11>();
    var var_0 = u_input.c.yzz;
    var var_1 = Struct_2(func_1(vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1665f, 360f)), 0u), ~(~(~u_input.d))), 85237u, vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), 1f, _wgslsmith_f_op_f32(round(1f))));
    var var_2 = 2659f;
    var var_3 = Struct_2(var_1.a, firstTrailingBit(~u_input.d), var_1.c);
    var_2 = _wgslsmith_f_op_f32(ceil(-1686f));
    var var_4 = Struct_2(func_1(vec2<bool>(true, true), Struct_1(var_3.c.x, max(~7078u, var_3.b)), u_input.d), var_1.a.b, var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i << (max(firstLeadingBit(var_4.a.b << (u_input.d % 32u)), 5308u) % 32u));
}

