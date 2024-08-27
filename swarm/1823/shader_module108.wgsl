struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-1936f, 587f, 557f, -809f), vec4<i32>(2147483647i, -91823i, 0i, 0i));

var<private> global2: i32 = 51725i;

var<private> global3: f32 = 568f;

var<private> global4: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    var var_0 = vec4<bool>(true, min(~0u, u_input.b.x) > ~_wgslsmith_sub_u32(countOneBits(u_input.a.x), 27936u), false, arg_0 | (any(vec2<bool>(arg_0, arg_0)) & any(!vec4<bool>(arg_0, true, true, true))));
    let var_1 = vec2<i32>(-2147483647i, abs(global1.b.x));
    global0 = _wgslsmith_sub_vec4_i32(~(~(~global1.b)), vec4<i32>(global1.b.x, -11060i, firstLeadingBit(u_input.c), ~var_1.x) ^ ~vec4<i32>(9557i, -24382i, 1i, -1i)) ^ min(~vec4<i32>(min(2147483647i, global1.b.x), 1i, -1i | u_input.c, -var_1.x), -(~min(global1.b, vec4<i32>(2147483647i, -1i, 27533i, u_input.c))));
    let var_2 = vec4<f32>(global1.a.x, 1412f, _wgslsmith_f_op_f32(round(global1.a.x)), global1.a.x);
    let var_3 = var_1.x;
    return ~(~(~(~global1.b)));
}

fn func_2() -> u32 {
    global2 = global0.x;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * -456f);
    global0 = global1.b;
    global0 = func_3(all(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_0 = !vec2<bool>(any(vec4<bool>(true, true, true, true)) && false, true);
    return _wgslsmith_sub_u32(u_input.a.x >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(abs(u_input.a.x), reverseBits(32851u)), ~34992u) % 32u), 0u);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    var var_0 = (u_input.a.x >> (~func_2() % 32u)) > func_2();
    let var_1 = 661f;
    global0 = global1.b;
    var var_2 = -2147483647i;
    var var_3 = ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c, 5206i), _wgslsmith_dot_vec3_i32(global1.b.zxw, vec3<i32>(global1.b.x, 1i, 0i))), 0i, _wgslsmith_clamp_i32(1i, global0.x, 4864i), -u_input.c), ~(~global1.b >> ((vec4<u32>(28084u, u_input.b.x, u_input.a.x, u_input.b.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 77500u)) % vec4<u32>(32u))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec4<f32>(1000f, -104f, global1.a.x, global1.a.x), ~global1.b);
    var var_0 = vec4<u32>(1u, reverseBits(_wgslsmith_add_u32(u_input.a.x, ~(~0u))), ~func_1(global1.b.x, vec4<f32>(-547f, -1000f, _wgslsmith_f_op_f32(round(global1.a.x)), global1.a.x)), abs(1u));
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(31206u, ~1u, countOneBits(4294967295u) << (_wgslsmith_dot_vec3_u32(max(var_0.yyz, var_0.zzy), max(var_0.zzz, vec3<u32>(var_0.x, var_0.x, u_input.a.x))) % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, var_0.x, 30553u, u_input.b.x), ~vec4<u32>(0u, 20416u, 6556u, 99u)), countOneBits(_wgslsmith_sub_u32(54389u, u_input.b.x)))), ~(~(~vec4<u32>(0u, 1u, 15878u, u_input.a.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(1435f, global1.a.x, global1.a.x, -475f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a))) + global1.a), ~vec4<i32>(firstLeadingBit(-9744i ^ global1.b.x), global0.x, i32(-1i) * -2147483647i, global1.b.x));
    var var_2 = Struct_1(var_1.a, var_1.b);
    let var_3 = ~(global1.b.xxz & (var_2.b.zzz ^ ~var_1.b.xzy));
    let var_4 = _wgslsmith_mult_i32(2147483647i, abs(global0.x));
    global2 = global1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(select(-var_2.b.zwy, var_3, vec3<bool>(false, false, true)), reverseBits(var_1.b.xww)), ~global0.yyx), -17343i, vec4<u32>(abs(reverseBits(~0u)), select(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x & u_input.b.x), 1u, true), var_0.x, var_0.x));
}

