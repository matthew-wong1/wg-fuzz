struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>, arg_3: i32) -> bool {
    var var_0 = arg_0;
    global0 = false;
    global1 = arg_0;
    global0 = false;
    global2 = all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, false), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), false)), vec2<bool>(true, true)));
    return true;
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = all(select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec2<bool>(true, true), vec2<bool>(select(true, any(vec4<bool>(false, true, true, true)), true), all(vec4<bool>(true, true, true, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1918f, -2355f)))))));
    var var_2 = ~(vec2<u32>(12490u, 4294967295u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)));
    global0 = false;
    global0 = !(80281i == firstTrailingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(-65469i, u_input.c, -27295i), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -1i, 47734i), vec3<i32>(-1i, 2147483647i, u_input.a.x), vec3<i32>(-7045i, u_input.d, u_input.a.x)))));
    return Struct_1(638f, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_2.b, vec3<f32>(1196f, arg_1, var_1.x)))) + _wgslsmith_f_op_vec3_f32(floor(arg_0.xzy))))));
}

fn func_1(arg_0: vec2<bool>) -> vec3<bool> {
    var var_0 = countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, i32(-1i) * -u_input.d, u_input.d, u_input.c), ~max(~vec4<i32>(u_input.d, 42953i, u_input.c, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 898i, u_input.c, u_input.d), vec4<i32>(u_input.d, 17811i, 36928i, -17062i)))));
    global1 = func_3(vec4<f32>(-628f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(412f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-181f + 1095f), _wgslsmith_f_op_f32(f32(-1f) * -1317f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(f32(-1f) * -482f), func_2(Struct_1(1649f, vec3<f32>(global1.b.x, global1.b.x, global1.b.x)), global1.a, vec4<f32>(global1.b.x, -383f, 384f, global1.a), u_input.c))) + _wgslsmith_f_op_f32(select(global1.a, global1.b.x, true)))), 1706f, Struct_1(global1.b.x, global1.b));
    let var_1 = Struct_1(global1.a, global1.b);
    var var_2 = Struct_1(-3156f, _wgslsmith_f_op_vec3_f32(-func_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1426f, 611f, 1664f)), vec4<f32>(var_1.b.x, -229f, var_1.a, -2954f))), _wgslsmith_f_op_f32(f32(-1f) * -1095f), var_1).b));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.a + var_1.b.x), _wgslsmith_f_op_f32(sign(-1000f)))))));
    return select(!select(select(select(vec3<bool>(false, arg_0.x, true), vec3<bool>(true, arg_0.x, arg_0.x), false), select(vec3<bool>(false, true, false), vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, false, true)), !vec3<bool>(arg_0.x, false, arg_0.x)), vec3<bool>(any(arg_0), all(vec4<bool>(true, arg_0.x, false, arg_0.x)), u_input.a.x <= -1i), true), vec3<bool>(true || any(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), any(select(!vec4<bool>(arg_0.x, arg_0.x, true, false), !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, false, false))), !arg_0.x), false);
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = func_3(vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_div_f32(-841f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 401f))), _wgslsmith_f_op_f32(-func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1000f, -1304f, 516f)), _wgslsmith_f_op_f32(1467f * -966f), func_3(vec4<f32>(1000f, -796f, 474f, -1657f), arg_0.x, Struct_1(arg_0.x, global1.b))).b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1328f), func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, arg_0.x, -1000f, -359f) * vec4<f32>(arg_0.x, arg_0.x, 659f, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-204f, -782f, global1.a, -291f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1217f * -432f))) + _wgslsmith_f_op_f32(1200f * _wgslsmith_div_f32(global1.a, -393f))), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -1505f, global1.a, arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.b.x + 281f), _wgslsmith_f_op_f32(1487f + arg_0.x), true)), Struct_1(_wgslsmith_f_op_f32(-arg_0.x), global1.b))));
    let var_1 = any(!func_1(vec2<bool>(true, true)).xx);
    var var_2 = -60411i;
    global1 = var_0;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -289f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x + -1168f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-155f, -226f)))))));
    return func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, 1033f, var_0.a, var_3))), vec4<f32>(1009f, global1.b.x, _wgslsmith_f_op_f32(-var_3), -912f))), 1162f, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(239f, vec3<f32>(global1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + global1.b.x)))), global1.b.x));
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.b, _wgslsmith_f_op_vec3_f32(global1.b - vec3<f32>(var_1.b.x, -564f, 425f)), func_1(vec2<bool>(true, var_0.x))))), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -213f), -1112f), vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.a)), _wgslsmith_f_op_f32(1160f + -1008f), _wgslsmith_f_op_f32(sign(987f)))))));
    var var_3 = _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-1i, -u_input.a.x, _wgslsmith_mult_i32(-1i, u_input.a.x) << (~12853u % 32u))), vec3<i32>(1i, ~(~u_input.c), -_wgslsmith_dot_vec4_i32(vec4<i32>(-13680i, u_input.a.x, 1i, 36299i) & vec4<i32>(-17167i, u_input.d, u_input.c, u_input.d), select(vec4<i32>(u_input.a.x, 2147483647i, 30606i, -2147483647i), vec4<i32>(18110i, -9034i, -1i, 0i), var_0.x))), vec3<i32>(-7081i, reverseBits(i32(-1i) * -u_input.a.x), min(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.a), countOneBits(vec2<i32>(0i, u_input.c))), _wgslsmith_sub_i32(0i, u_input.a.x) & _wgslsmith_sub_i32(u_input.a.x, u_input.d))));
    let var_4 = Struct_1(-859f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.b)))));
    let var_5 = abs((_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(27360u, 15422u, 12717u), vec3<u32>(7620u, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, 21738u)), select(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(36423u, 0u, u_input.b), true)) | select(_wgslsmith_mod_vec3_u32(vec3<u32>(29231u, 4294967295u, u_input.b), vec3<u32>(3423u, u_input.b, 0u)), ~vec3<u32>(11065u, 13807u, u_input.b), true)) & vec3<u32>(_wgslsmith_mod_u32(min(4294967295u, 1u), 49752u), firstLeadingBit(abs(2240u)), ~(~u_input.b)));
    var var_6 = _wgslsmith_add_vec2_u32(var_5.yy, var_5.yx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-354f, 1000f, global1.a, 602f) + vec4<f32>(var_1.a, global1.a, -226f, global1.b.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(359f, global1.a, 349f, var_4.b.x))))))), ~max(vec3<u32>(var_6.x, var_6.x, 0u), select(vec3<u32>(4294967295u, 34390u, u_input.b) | vec3<u32>(u_input.b, u_input.b, var_5.x), vec3<u32>(8099u, 4294967295u, var_5.x), !vec3<bool>(var_0.x, true, var_0.x))), abs(var_5), ~firstLeadingBit(-_wgslsmith_sub_i32(1i, 8649i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_1.a), var_1.b))))));
}

