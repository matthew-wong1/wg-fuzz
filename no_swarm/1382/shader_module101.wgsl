struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(1u, 4294967295u, 3430u), vec2<bool>(false, false));

var<private> global2: vec2<f32> = vec2<f32>(655f, 1000f);

var<private> global3: vec4<u32> = vec4<u32>(0u, 1u, 4294967295u, 11321u);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> vec4<u32> {
    global1 = Struct_2(min(vec3<u32>(1u, 66587u, global1.a.x), ~countOneBits(_wgslsmith_sub_vec3_u32(global1.a, vec3<u32>(u_input.b, u_input.b, 15808u)))), select(select(global1.b, arg_1, true), select(vec2<bool>(true, arg_1.x), !(!vec2<bool>(global1.b.x, global1.b.x)), global1.b), !arg_0.d.b.x));
    global1 = arg_0.d;
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), -425f);
    let var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-822f + arg_0.c.x))), _wgslsmith_f_op_f32(-1048f + arg_0.c.x)), arg_0.b, arg_0.b, arg_0.d);
    let var_1 = arg_1.x;
    return firstLeadingBit(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(max(1u, 1u), ~1u, ~global3.x, select(1u, u_input.b, false))), ~(vec4<u32>(var_0.d.a.x, 77243u, 13631u, 7001u) << (vec4<u32>(26394u, global3.x, 1u, 24680u) % vec4<u32>(32u))) >> (~(~vec4<u32>(93768u, 2034u, u_input.d, 1u)) % vec4<u32>(32u))));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    global3 = ~(~abs(func_3(Struct_3(-1163f, vec2<f32>(639f, global2.x), vec2<f32>(-396f, global2.x), Struct_2(vec3<u32>(33110u, global3.x, 66933u), vec2<bool>(true, true))), global1.b)) | ~vec4<u32>(~global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(47197u, 1u, 24832u, 39978u), vec4<u32>(51744u, 38229u, u_input.b, 0u)), _wgslsmith_mod_u32(global1.a.x, u_input.b), _wgslsmith_sub_u32(global3.x, 1u)));
    let var_0 = Struct_3(651f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1123f) * vec2<f32>(global2.x, global2.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-413f, global2.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, global2.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1027f) - vec2<f32>(-1000f, -226f))) + vec2<f32>(217f, _wgslsmith_div_f32(-1766f, global2.x)))), Struct_2(countOneBits(~(~global3.zyz)), !vec2<bool>(true, global1.b.x || false)));
    var var_1 = vec2<f32>(global2.x, -851f);
    global3 = vec4<u32>(1u, 24748u, ~(~(~(~0u))), ~global3.x);
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -547f) + var_0.b) * vec2<f32>(259f, global2.x)), vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x - global2.x), _wgslsmith_f_op_f32(-var_1.x)), all(!global0.yz))), _wgslsmith_f_op_vec2_f32(var_0.c - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c.x, 1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.c * var_0.b))))), global0.x));
    return vec3<bool>(false, !(!var_0.d.b.x), true);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> vec3<u32> {
    global0 = select(vec3<bool>(global0.x, global1.b.x || true, global0.x), !(!(!func_2(true))), vec3<bool>(global1.b.x, all(!vec2<bool>(global1.b.x, false)) & all(select(vec3<bool>(false, global0.x, global1.b.x), vec3<bool>(false, global0.x, true), vec3<bool>(true, false, global0.x))), !(!all(vec4<bool>(global0.x, global0.x, global1.b.x, global0.x)))));
    var var_0 = Struct_2(global1.a, !(!vec2<bool>(21866u <= u_input.b, true)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(floor(global2.x)), vec2<f32>(-1238f, _wgslsmith_f_op_f32(abs(arg_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1569f))))), Struct_2(var_0.a, global0.xz));
    var var_2 = var_1.d;
    let var_3 = select(_wgslsmith_sub_u32(_wgslsmith_sub_u32(reverseBits(var_1.d.a.x), 23623u), global3.x), _wgslsmith_clamp_u32(67129u, ~var_2.a.x, u_input.d), 32852u <= ~abs(global1.a.x >> (var_0.a.x % 32u)));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (i32(-1i) * -8415i) << (u_input.d % 32u);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(-858f, _wgslsmith_f_op_f32(abs(global2.x)), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)))))), _wgslsmith_f_op_f32(-277f * global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, ~_wgslsmith_mult_u32(13293u, global3.x), _wgslsmith_mod_vec2_i32(min(-u_input.a, vec2<i32>(2147483647i, u_input.a.x) >> (vec2<u32>(global3.x, 1u) % vec2<u32>(32u))) >> (~vec2<u32>(global3.x, global1.a.x) % vec2<u32>(32u)), vec2<i32>(~var_0, _wgslsmith_div_i32(-27548i, -1i)) >> (global1.a.zx % vec2<u32>(32u))), global1.a << (countOneBits(max(func_1(vec2<u32>(18637u, 67542u), 686f), global1.a)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -575f, 542f, -1064f) - vec4<f32>(1114f, -1191f, 540f, var_1.x)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1240f, 1346f, 1019f, var_1.x)))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, var_1.x, global2.x) * vec4<f32>(475f, 825f, -1000f, 1300f)) - vec4<f32>(-406f, var_1.x, -1045f, -1306f))))));
}

