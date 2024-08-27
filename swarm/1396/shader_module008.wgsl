struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<f32>,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
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

var<private> global0: vec3<f32>;

var<private> global1: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = ~countOneBits(min(~41470u, 0u) & _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, 54040u, 5492u), vec4<u32>(u_input.e, u_input.a, u_input.e, u_input.e)), vec4<u32>(15136u, u_input.d, 4442u, u_input.d)));
    global0 = arg_0.a;
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-518f, arg_0.b, 472f), vec3<f32>(global0.x, arg_0.a.x, arg_0.b), true)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0.a))))));
    global1 = 1u;
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_div_f32(global0.x, -1000f)))), 566f);
    return arg_0.a.x;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(global0.x, 109f, -132f), global0.x))))));
    return 1u;
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(arg_0.a, arg_0.a, !vec3<bool>(any(vec4<bool>(true, true, true, false)), false, false))), _wgslsmith_f_op_vec3_f32(-arg_0.a)));
    global1 = u_input.d;
    global1 = max(5742u, ~(~u_input.d) >> (func_2() % 32u)) | ~(0u << (1u % 32u));
    global1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, _wgslsmith_clamp_u32(u_input.a, u_input.e, 33271u) >> (~47844u % 32u)), _wgslsmith_div_vec2_u32(~abs(vec2<u32>(u_input.d, 1u)), max(abs(vec2<u32>(u_input.e, 0u)), vec2<u32>(23282u, u_input.e) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)))));
    global1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.e, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 9873u, 0u), vec3<u32>(u_input.e, u_input.e, u_input.a)) & u_input.a)), u_input.d);
    return Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(arg_0.a)), 538f), true, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-335f, -1000f, _wgslsmith_f_op_f32(abs(global0.x)), arg_0.a.x), vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(arg_0.a, arg_0.a.x))), _wgslsmith_f_op_f32(func_3(arg_0)), _wgslsmith_f_op_f32(-1216f - _wgslsmith_f_op_f32(select(global0.x, global0.x, true))), global0.x))), vec3<i32>(_wgslsmith_sub_i32(~1i, u_input.b), u_input.b, i32(-1i) * -35656i), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_div_f32(-793f, -349f), -431f), arg_0.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    global0 = arg_1.a.a;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1436f))) - _wgslsmith_f_op_f32(func_3(arg_0)))), 506f, _wgslsmith_div_f32(arg_2, -366f));
    global0 = arg_1.e.a;
    let var_0 = firstTrailingBit(vec4<i32>(-1i) * -(abs(vec4<i32>(-16977i, arg_1.d.x, arg_1.d.x, 1i)) | ~vec4<i32>(2147483647i, arg_1.d.x, 6676i, u_input.b)));
    global1 = 1u;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~_wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a, u_input.d)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(u_input.e, u_input.a)))));
    let var_1 = u_input.b;
    var var_2 = !vec4<bool>(any(vec2<bool>(true, true)), !(_wgslsmith_div_f32(-124f, global0.x) > global0.x), all(vec4<bool>(true, true, all(vec2<bool>(true, false)), all(vec3<bool>(false, false, true)))), any(vec4<bool>(true, true, any(vec4<bool>(true, false, false, true)), true)));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2494f), _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1242f, 2176f, -916f)), _wgslsmith_f_op_f32(global0.x - 142f)), func_1(Struct_2(vec3<f32>(-825f, 808f, global0.x), 704f)), global0.x, select(vec3<bool>(false, true, var_2.x), !vec3<bool>(var_2.x, var_2.x, true), var_2.zyy))), 968f));
    var_2 = vec4<bool>(func_1(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1028f, 1169f, global0.x))), _wgslsmith_f_op_f32(-func_1(Struct_2(vec3<f32>(1000f, -765f, global0.x), global0.x)).a.a.x))).b, select(false, var_2.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(35614i, 2147483647i), vec2<i32>(18282i, 0i)), u_input.b) == 21376i), var_2.x, !(true && var_2.x));
    var_0 = countOneBits(vec2<u32>(4294967295u, 8236u));
    var_2 = !(!vec4<bool>(var_2.x, any(select(vec2<bool>(var_2.x, var_2.x), var_2.xz, vec2<bool>(false, var_2.x))), var_2.x, var_2.x));
    var_0 = _wgslsmith_mod_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(4294967295u, 0u)), select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(1u, 4294967295u), var_2.x) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(30744u, u_input.d), vec2<u32>(var_0.x, 4299u)))), vec2<u32>(~var_0.x, _wgslsmith_mult_u32(var_0.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(4294967295u, u_input.d)) % 32u), _wgslsmith_sub_u32(~4294967295u, select(var_0.x, u_input.e, false)))));
    let var_3 = abs(abs(~(~23431u))) & var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

