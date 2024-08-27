struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = arg_1.a;
    var var_1 = !(!(!vec3<bool>(any(vec3<bool>(true, false, false)), all(vec3<bool>(true, false, true)), true)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-545f, var_0.a.x, 477f))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.a.x, var_0.a.x, 1403f), vec3<f32>(-1045f, 851f, -1187f)))) + _wgslsmith_f_op_vec3_f32(min(arg_2.wyw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -1000f, 706f)))))));
    let var_2 = 0u ^ select(firstTrailingBit(~max(4294967295u, 62903u)), 38377u, var_1.x);
    var_1 = select(vec3<bool>(select(false, var_2 <= 1u, !all(vec4<bool>(var_1.x, true, var_1.x, false))), _wgslsmith_clamp_u32(1u, ~24156u, var_2) >= var_2, !(~var_2 < var_2)), select(vec3<bool>(!all(vec3<bool>(false, false, var_1.x)), any(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x))), 61637u <= max(55808u, var_2)), vec3<bool>(var_1.x, true, !var_1.x), !vec3<bool>(true, false, !var_1.x)), ((firstTrailingBit(20369u) & ~3177u) == var_2) | true);
    return -abs(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-16408i, 2147483647i, u_input.b.x), vec3<i32>(u_input.c.x, arg_0, 1i)), u_input.c.x));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = max(u_input.b.x, ~u_input.a.x & -_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, -27165i)), func_3(-1i, Struct_3(Struct_1(vec3<f32>(1000f, -929f, 310f))), vec4<f32>(146f, 1089f, -271f, 669f))));
    var var_1 = u_input.b;
    var var_2 = vec4<i32>(2147483647i, select(u_input.c.x, var_0, true), u_input.c.x, 0i);
    let var_3 = all(vec3<bool>(!(arg_0 < ~arg_0), true, any(vec4<bool>(true, true, true, true))));
    let var_4 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1219f, 319f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-655f, -748f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-430f, -830f), -955f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -915f), _wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(min(1000f, 1188f))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_4.a.x * -2333f)));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<f32>, arg_3: i32) -> Struct_2 {
    var var_0 = -1055f;
    var_0 = 639f;
    let var_1 = Struct_2(any(select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec4<bool>(true, true, false, true)))));
    var var_2 = vec4<i32>(min(-u_input.a.x, u_input.a.x), ~_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(arg_3, arg_3 << (26672u % 32u), 0i)), _wgslsmith_mult_i32(~(arg_3 << (~9498u % 32u)), u_input.c.x), _wgslsmith_div_i32(arg_0.x & _wgslsmith_dot_vec3_i32(u_input.b, -u_input.b), -2147483647i));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-697f, arg_1, -428f)))));
    return Struct_2(!var_1.a);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec3<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1122f * var_0), var_0))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, -197f, 674f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) - vec3<f32>(367f, var_0, -624f)))))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.a.x, var_2.a.a.x, var_2.a.a.x) * vec3<f32>(var_0, var_0, var_0)) * _wgslsmith_f_op_vec3_f32(-var_2.a.a)))));
    var var_4 = var_3;
    return select(vec3<bool>(any(!(!vec4<bool>(false, arg_1.a, false, false))), all(arg_2.zy), all(vec4<bool>(!arg_1.a, -46004i <= arg_0, true, !arg_2.x))), !select(!select(vec3<bool>(false, false, false), arg_2, arg_2.x), select(vec3<bool>(true, true, false), !arg_2, vec3<bool>(true, true, true)), arg_2.x), any(select(vec2<bool>(arg_2.x, false), select(vec2<bool>(true, true), select(arg_2.zz, vec2<bool>(false, true), vec2<bool>(arg_1.a, true)), arg_1.a), arg_2.yy)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    var var_0 = func_5(u_input.c.x, func_4(firstLeadingBit(vec3<i32>(~u_input.b.x, -38088i, ~u_input.c.x)), _wgslsmith_f_op_f32(func_2(arg_0)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1190f, -842f) * _wgslsmith_f_op_f32(trunc(968f))), -1030f), _wgslsmith_sub_i32(u_input.a.x, -43979i)), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(false, true, false)), all(vec2<bool>(false, false)), false), true));
    var_0 = vec3<bool>(all(vec2<bool>(!var_0.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1701f * 1146f), _wgslsmith_f_op_f32(abs(arg_1.a.x))))) != _wgslsmith_f_op_f32(sign(arg_1.a.x)), var_0.x);
    var var_1 = -firstTrailingBit(vec4<i32>(u_input.b.x, abs(_wgslsmith_mult_i32(u_input.b.x, u_input.c.x)), 0i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, u_input.b.x, u_input.a.x)), -u_input.b)));
    var_1 = vec4<i32>(abs(1i), _wgslsmith_sub_i32(-firstTrailingBit(var_1.x), var_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -var_1.yxy, u_input.b) >> (1u % 32u), -2147483647i);
    var var_2 = func_4(_wgslsmith_add_vec3_i32(~(~vec3<i32>(var_1.x, -4109i, 0i) >> (~vec3<u32>(0u, arg_0, 87899u) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(u_input.b, countOneBits(_wgslsmith_add_vec3_i32(u_input.b, var_1.wxy)))), _wgslsmith_f_op_f32(f32(-1f) * -2252f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_1.a.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.zx) + _wgslsmith_f_op_vec2_f32(select(arg_1.a.xx, vec2<f32>(830f, arg_2.x), var_0.zz))))), reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, var_1.x, var_1.x, var_1.x), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.c.x))), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -4607i, u_input.c.x, -1i), vec4<i32>(-2147483647i, 5530i, var_1.x, 12844i), vec4<i32>(var_1.x, 7311i, u_input.b.x, var_1.x)), -vec4<i32>(9811i, -29594i, var_1.x, var_1.x)))));
    return 1105f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1129f)))) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(4635u, Struct_1(vec3<f32>(1246f, -1713f, 342f)), vec3<f32>(-2398f, 2324f, 1716f))))))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + -562f)));
    let var_2 = Struct_3(Struct_1(vec3<f32>(-1000f, -1000f, -1000f)));
    var var_3 = Struct_2(var_0.a);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -618f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1158f, -2000f, true)))));
    var_0 = Struct_2(var_3.a);
    var var_5 = var_3.a;
    let var_6 = vec2<i32>(u_input.b.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x) ^ -vec2<i32>(u_input.b.x, 1i), -firstTrailingBit(vec2<i32>(-12831i, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-597f, -1595f, -1000f, -1314f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a.x, var_2.a.a.x, -501f, var_2.a.a.x) + vec4<f32>(var_1, var_1, -1029f, var_4))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1479f, var_1, var_2.a.a.x) - vec4<f32>(-1260f, -672f, 870f, var_4))))));
}

