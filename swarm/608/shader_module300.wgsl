struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 1781i));

var<private> global1: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<u32> {
    global0 = Struct_1(vec2<i32>(-(-global0.a.x >> (select(u_input.b.x, u_input.b.x, true) % 32u)), 1i));
    global0 = arg_2;
    var var_0 = max(u_input.a, i32(-1i) * -1i);
    global0 = arg_2;
    var var_1 = arg_0;
    return u_input.b.wwy;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = ~func_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-197f)))), ~(~(~vec2<u32>(arg_1, arg_1))), arg_0);
    var var_1 = 555f;
    let var_2 = true;
    let var_3 = arg_0.a.x;
    global0 = arg_0;
    return firstLeadingBit(global0.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> Struct_1 {
    global1 = ~(~u_input.b.x);
    var var_0 = vec2<i32>(14002i, 12669i);
    var_0 = _wgslsmith_sub_vec2_i32(arg_0.a, abs((countOneBits(global0.a) ^ -arg_0.a) << (u_input.b.zz % vec2<u32>(32u))));
    global1 = 100044u;
    let var_1 = arg_1;
    return Struct_1(vec2<i32>(_wgslsmith_sub_i32(func_2(Struct_1(arg_0.a), u_input.b.x), 17278i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(27745i, 0i, arg_2), vec3<i32>(arg_2, var_0.x, global0.a.x) & vec3<i32>(0i, 2147483647i, -1264i)), firstLeadingBit(vec3<i32>(arg_0.a.x, -1i, -1i)) ^ max(vec3<i32>(arg_0.a.x, u_input.a, global0.a.x), vec3<i32>(arg_2, arg_2, 16732i)))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = 44085u & _wgslsmith_mod_u32(30053u, _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(~u_input.b.x, ~u_input.b.x, 0u)));
    let var_1 = 2147483647i;
    let var_2 = ~vec2<i32>(_wgslsmith_add_i32(~1i, _wgslsmith_sub_i32(-40525i, 1i & u_input.a)), max(min(u_input.a >> (var_0 % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(18327i, 0i, arg_0.a.x), vec3<i32>(arg_0.a.x, u_input.a, 2147483647i))), ~_wgslsmith_add_i32(-2147483647i, u_input.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1487f + 406f) + -409f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1288f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(961f, -266f)), _wgslsmith_f_op_f32(func_4(func_1(Struct_1(vec2<i32>(29994i, u_input.a)), Struct_2(206f), u_input.a, false))))))));
    var var_1 = Struct_2(-772f);
    let var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(~vec2<i32>(~u_input.a, func_1(Struct_1(global0.a), Struct_2(201f), global0.a.x, true).a.x), firstLeadingBit(~global0.a) | vec2<i32>(global0.a.x, 3685i), vec2<i32>(-1i, u_input.a)));
    let var_3 = var_2;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_5 = !select(vec4<bool>(false, !(u_input.b.x <= 21764u), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), any(vec3<bool>(false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, false, true)), true, false, true), vec4<bool>(true, true, true, true)), true);
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(910f, select(u_input.b.x, ~_wgslsmith_mult_u32(u_input.b.x ^ 0u, ~1u), false), vec2<i32>(firstTrailingBit(-(~59807i)), _wgslsmith_mod_i32(var_3.a.x, var_3.a.x)), var_2.a.x, ~u_input.b.x);
}

