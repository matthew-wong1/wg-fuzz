struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = ~(~_wgslsmith_clamp_u32(arg_2 | _wgslsmith_clamp_u32(20844u, u_input.a.x, 3672u), ~u_input.a.x, 4294967295u));
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, arg_3, arg_3), vec3<f32>(arg_3, arg_3, -665f), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_3, 516f) - vec3<f32>(global0.x, global0.x, -1093f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(537f, global0.x, _wgslsmith_f_op_f32(max(-971f, arg_3))))), false))));
    let var_1 = Struct_2(Struct_1(vec2<bool>(true, _wgslsmith_clamp_u32(54209u, 9689u, var_0) == ~1u)));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 822f) - arg_3), _wgslsmith_f_op_f32(min(1052f, _wgslsmith_f_op_f32(-arg_3)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-676f, -605f, global0.x))))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1280f, arg_3, global0.x, -2289f), vec4<f32>(arg_3, global0.x, arg_3, -742f)) + vec4<f32>(arg_3, 511f, 735f, global0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(180f, -1535f, global0.x, 883f)), vec4<f32>(_wgslsmith_f_op_f32(step(global0.x, -159f)), 192f, _wgslsmith_f_op_f32(global0.x - global0.x), global0.x)), select(!(!vec4<bool>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x, false)), vec4<bool>(true, !var_1.a.a.x, false, false), !(!vec4<bool>(true, var_1.a.a.x, var_1.a.a.x, var_1.a.a.x))))), !vec3<bool>(var_1.a.a.x, arg_1 < ~24275u, true), _wgslsmith_mult_i32(arg_0, i32(-1i) * -2147483647i), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 41513u) << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(28979u, 0u), u_input.a.zz), arg_1) % 32u), countOneBits(var_0)));
    return -393f;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<u32>) -> bool {
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(func_3(arg_0, 1u, u_input.a.x, -1826f)), all(vec3<bool>(true, true, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * global0.x), -1057f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global0.x, 376f))))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1256f, global0.x, -1913f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1407f, -904f, 2371f), vec3<f32>(global0.x, 167f, 238f))))))));
    let var_0 = global0.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1156f))));
    var var_1 = (_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, arg_0) | reverseBits(vec2<i32>(arg_0, arg_0)), vec2<i32>(1i, 1i)) | _wgslsmith_mod_vec2_i32(min(-vec2<i32>(-2147483647i, -54230i), countOneBits(vec2<i32>(arg_0, 1i))), -min(vec2<i32>(2147483647i, -1i), vec2<i32>(arg_0, arg_0)))) & select(reverseBits(max(firstTrailingBit(vec2<i32>(-16934i, 1i)), vec2<i32>(arg_0, -1i) | vec2<i32>(arg_0, arg_0))), ~(-vec2<i32>(arg_0, arg_0)) >> (~(~arg_1.zz) % vec2<u32>(32u)), select(!vec2<bool>(var_0, var_0), !(!vec2<bool>(var_0, true)), !select(vec2<bool>(var_0, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_2 = firstLeadingBit(~(~abs(vec2<u32>(u_input.a.x, arg_3.x))));
    return false;
}

fn func_1() -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1031f, global0.x, global0.x, global0.x) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2004f, -717f, global0.x, -615f))))))), !vec3<bool>(select(func_2(38231i, u_input.a.zww, u_input.a.x, u_input.a.ww), true, true), select(any(vec4<bool>(false, true, true, false)), true, true), (u_input.a.x < 3041u) & true), -_wgslsmith_dot_vec4_i32(max(vec4<i32>(-40563i, -32846i, 18374i, -22476i) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(1i, 2147483647i, 25908i, -49785i)), firstLeadingBit(~vec4<i32>(2147483647i, 2147483647i, 1i, -2147483647i))), 59516u);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = Struct_2(arg_1.a);
    let var_1 = !select(select(!(!vec4<bool>(arg_2.a.x, true, false, arg_3.b.x)), select(select(vec4<bool>(arg_2.a.x, var_0.a.a.x, true, true), vec4<bool>(arg_3.b.x, false, arg_2.a.x, arg_0), arg_2.a.x), !vec4<bool>(var_0.a.a.x, false, true, arg_3.b.x), vec4<bool>(arg_2.a.x, var_0.a.a.x, true, true)), select(arg_3.b.x, global0.x <= arg_3.a.x, 1718f == global0.x)), select(select(vec4<bool>(arg_2.a.x, arg_3.b.x, true, true), !vec4<bool>(var_0.a.a.x, arg_3.b.x, false, true), select(vec4<bool>(arg_2.a.x, var_0.a.a.x, arg_3.b.x, false), vec4<bool>(true, true, var_0.a.a.x, true), arg_1.a.a.x)), !(!vec4<bool>(var_0.a.a.x, true, false, arg_0)), !(!vec4<bool>(true, arg_3.b.x, true, true))), true);
    let var_2 = arg_1;
    var var_3 = vec3<u32>(30239u, 12712u, ~_wgslsmith_dot_vec4_u32(reverseBits(u_input.a), ~u_input.a)) | ~(~vec3<u32>(1u, 0u, 9000u));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_3.a.x)), _wgslsmith_f_op_f32(trunc(arg_3.a.x)), -728f));
    return arg_3.a.xwy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(true, Struct_2(Struct_1(vec2<bool>(false, true))), Struct_1(vec2<bool>(false, true)), func_1())), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 807f)), vec3<f32>(global0.x, -1750f, global0.x), false))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.x)), global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1193f))))), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(-global0.x))));
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, select(any(vec2<bool>(false, false)), true, true))));
    global0 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, 1i, 1i, 1i), max(vec4<i32>(72266i, 0i, 10972i, 15563i), vec4<i32>(-40385i, -21834i, -1i, 24375i))), -countOneBits(vec4<i32>(-2147483647i, 1i, -1i, 62587i))) < (i32(-1i) * -72237i), var_0, var_0.a, func_1()));
    let var_1 = 0i;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(729f + 476f), -196f, global0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -647f, -804f), vec3<f32>(global0.x, global0.x, global0.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 314f, 507f) - vec3<f32>(global0.x, global0.x, global0.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, global0.x)) - vec3<f32>(global0.x, global0.x, 1235f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, -743f, global0.x)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.x)))), -1224f, global0.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(global0.yz + vec2<f32>(_wgslsmith_f_op_f32(939f * 1175f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(max(global0.x, global0.x))))));
    var_2 = _wgslsmith_f_op_vec2_f32(floor(global0.zy));
    let var_3 = _wgslsmith_add_i32(13032i, _wgslsmith_add_i32(firstTrailingBit(0i), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-48091i, var_1, -2147483647i), vec3<i32>(var_1, var_1, -16264i)), _wgslsmith_sub_i32(~var_1, _wgslsmith_clamp_i32(var_1, -12032i, 8576i)), i32(-1i) * -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~117369u | ~abs(u_input.a.x), reverseBits(1u));
}

