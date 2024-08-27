struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    global0 = false;
    let var_0 = Struct_1(all(select(select(vec2<bool>(true, global1.a), !vec2<bool>(true, global1.a), !global1.a), !vec2<bool>(global1.a, false), false)));
    let var_1 = false;
    let var_2 = _wgslsmith_add_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(70761u, 72592u), vec2<u32>(1u, 1u))), 19995u);
    let var_3 = min(abs(_wgslsmith_add_vec4_u32(vec4<u32>(~var_2, var_2, abs(var_2), 6458u), ~vec4<u32>(63930u, 4294967295u, 1846u, 1u))), abs(~countOneBits(vec4<u32>(var_2, var_2, 1u, 1u))));
    return select(var_1, true, true);
}

fn func_2() -> vec4<f32> {
    let var_0 = global1.a;
    global1 = Struct_1(global1.a);
    global0 = false;
    global0 = func_3();
    let var_1 = Struct_1(global1.a);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1321f, -1077f, 391f) - vec4<f32>(-529f, 449f, 475f, 340f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(328f * _wgslsmith_f_op_f32(353f - -1000f)), _wgslsmith_f_op_f32(ceil(-185f)), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(664f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    global0 = !select(true, select(any(select(arg_2, vec2<bool>(false, true), arg_2.x)), select(true, all(arg_2), arg_2.x | arg_2.x), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, arg_1.a, true, true), vec4<bool>(true, false, true, arg_1.a)))), true);
    global0 = false;
    let var_0 = arg_1;
    var var_1 = var_0;
    var var_2 = arg_1;
    return var_0.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<bool> {
    global0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1518f, 1397f, -1575f, -649f) * vec4<f32>(-2150f, -1155f, 558f, 1472f))))))), arg_0, select(vec2<bool>(true, true), select(vec2<bool>(true, false), !select(vec2<bool>(global1.a, global1.a), vec2<bool>(arg_0.a, arg_0.a), arg_0.a), select(vec2<bool>(global1.a, false), !vec2<bool>(arg_0.a, arg_0.a), false)), vec2<bool>(!(!arg_0.a), arg_0.a)));
    let var_0 = -(~(-12753i));
    var var_1 = ~(_wgslsmith_div_vec3_u32(select(vec3<u32>(100797u, 67934u, 0u), vec3<u32>(13285u, 0u, 42058u), arg_0.a), vec3<u32>(4294967295u, 0u, 84690u)) << (vec3<u32>(31907u, 1u, 4294967295u) % vec3<u32>(32u))) ^ vec3<u32>(~(~1u), 0u, 1u);
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-996f, 336f, -275f, -581f))))))));
    return vec4<bool>(false, var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 530f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_3.x, var_3.x), var_3.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(select(!(!select(vec4<bool>(global1.a, global1.a, global1.a, false), vec4<bool>(global1.a, global1.a, false, true), true)), select(!vec4<bool>(true, true, true, global1.a), select(select(vec4<bool>(global1.a, global1.a, true, true), vec4<bool>(false, false, global1.a, global1.a), global1.a), select(vec4<bool>(true, true, true, global1.a), vec4<bool>(true, global1.a, true, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, global1.a, global1.a, true), vec4<bool>(global1.a, true, global1.a, false))), true), select(select(vec4<bool>(global1.a, global1.a, global1.a, true), func_1(Struct_1(true), vec3<i32>(36769i, 12920i, -23624i)), !vec4<bool>(global1.a, global1.a, false, true)), !(!vec4<bool>(false, true, true, global1.a)), true)));
    var var_0 = min(firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 0i, u_input.a, 2147483647i)), firstLeadingBit(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i))) | _wgslsmith_clamp_vec4_i32(min(vec4<i32>(-73281i, u_input.a, u_input.a, 17548i), vec4<i32>(21527i, -14276i, -33822i, 14988i)), firstLeadingBit(vec4<i32>(u_input.a, 42672i, 2147483647i, u_input.a)), -vec4<i32>(2147483647i, -2147483647i, -2147483647i, u_input.a))) | abs(firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, -20643i, u_input.a)));
    let var_1 = Struct_1(true);
    global0 = any(!(!(!(!vec2<bool>(var_1.a, true)))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(round(871f)), var_1.a))));
    global0 = any(vec2<bool>(false, global1.a));
    var var_3 = -1909f;
    let var_4 = ~(~(~vec2<u32>(~67839u, ~1u)));
    var var_5 = Struct_1(func_3());
    let x = u_input.a;
    s_output = StorageBuffer(37013i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1355f)), -1000f, all(vec2<bool>(true, true))))), _wgslsmith_div_vec4_i32(vec4<i32>(2773i, u_input.a, 2901i, 1i), min(_wgslsmith_div_vec4_i32(vec4<i32>(23715i, 0i, u_input.a, var_0.x), vec4<i32>(1i, 1i, 35792i, u_input.a)) ^ -vec4<i32>(2147483647i, 7377i, 1i, var_0.x), abs(min(vec4<i32>(var_0.x, u_input.a, u_input.a, -6869i), vec4<i32>(-2147483647i, -25728i, -11503i, 1815i))))), ~countOneBits((1u << (var_4.x % 32u)) << (22528u % 32u)));
}

