struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: array<Struct_1, 18>;

var<private> global2: i32 = 1i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_mod_u32(u_input.c, ~(~(~u_input.c)));
    var var_1 = -1956f;
    var var_2 = ~(~min(countOneBits(0u), min(u_input.c, u_input.c))) | ~(~(~u_input.c));
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1851f), -1000f, 1f, 573f)) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1241f, 968f)))), _wgslsmith_f_op_f32(max(-827f, _wgslsmith_div_f32(-1265f, 228f))), -367f, -146f)));
    let var_4 = select(select(vec3<bool>(-637f != var_3.b.x, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, true), vec3<bool>(firstLeadingBit(u_input.b.x) < u_input.a, !global0.x, var_3.b.x == -320f)), vec3<bool>(true, !global0.x, false), select(select(vec3<bool>(false, true, true), !select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, global0.x, true), global0.x), global0.x), vec3<bool>(global0.x, true, ~4294967295u <= firstTrailingBit(454u)), vec3<bool>(false, global0.x, any(global0.zz))));
    return _wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(70529i, u_input.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    global2 = 1i;
    let var_0 = (i32(-1i) * -u_input.a) & u_input.b.x;
    var var_1 = vec4<i32>(func_3(), 56286i, 33255i, -13061i);
    let var_2 = !select(vec4<bool>(arg_0.x | false, (arg_1.a.a & 46260u) <= ~u_input.c, any(vec3<bool>(true, true, true)), arg_0.x), !vec4<bool>(global0.x, true, !arg_0.x, false), all(select(!vec4<bool>(true, false, arg_0.x, global0.x), !vec4<bool>(false, true, global0.x, true), false)));
    var var_3 = arg_1.a.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-807f, _wgslsmith_f_op_f32(exp2(arg_1.b.x)))));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(u_input.c), vec4<f32>(-244f, -2233f, arg_2.x, -144f));
    var var_1 = countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(14628u, ~_wgslsmith_sub_u32(var_0.a.a, u_input.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, var_0.a.a, 31440u, 4294967295u), min(vec4<u32>(1u, 32740u, var_0.a.a, 0u), vec4<u32>(u_input.c, 31039u, var_0.a.a, var_0.a.a)))), ~(~(~vec3<u32>(1u, 4294967295u, 4294967295u))), vec3<u32>(~_wgslsmith_sub_u32(0u, var_0.a.a), ~1u, 0u)));
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(682f, _wgslsmith_div_f32(1092f, arg_0), false))) != _wgslsmith_f_op_f32(max(-195f, _wgslsmith_f_op_f32(ceil(1000f)))), global0.x, global0.x);
    global2 = ~(-_wgslsmith_div_i32(_wgslsmith_mult_i32(47394i, u_input.b.x), -_wgslsmith_mult_i32(37529i, 11425i)));
    global0 = vec3<bool>(all(vec3<bool>(true, true, any(global0.yy) && any(vec4<bool>(false, global0.x, true, global0.x)))), all(!select(select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(false, true, false, var_2.x), false), !vec4<bool>(true, true, var_2.x, false), vec4<bool>(true, true, false, false))), all(!(!var_2)) && all(select(!vec4<bool>(true, global0.x, true, false), vec4<bool>(false, false, var_2.x, true), vec4<bool>(var_2.x, true, false, var_2.x))));
    return Struct_2(Struct_1(u_input.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 772f, 531f, -172f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(261f, arg_0, arg_1.x, -383f)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(arg_1.b.zwx)), arg_1.b.yzz)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-314f, -505f, 375f) * _wgslsmith_f_op_vec3_f32(arg_1.b.xwx - vec3<f32>(483f, 340f, -1000f))))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + _wgslsmith_f_op_f32(-1000f * 870f)), _wgslsmith_f_op_f32(-arg_1.b.x)) - arg_1.b.wzw));
    return arg_2;
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = arg_2;
    let var_1 = ~vec4<u32>(17818u, var_0.a, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_2.a, 4294967295u, var_0.a), 56429u), ~1u);
    var var_2 = Struct_2(Struct_1(0u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + -381f))))), _wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), Struct_2(arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-112f, 148f, 1161f, -875f))))), _wgslsmith_f_op_f32(max(-416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1305f, -814f)))))));
    global2 = -_wgslsmith_mod_i32(18377i, -arg_1);
    var_2 = Struct_2(global1[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(1u, 4294967295u, var_2.a.a)), 18u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b))) - vec4<f32>(_wgslsmith_f_op_f32(var_2.b.x - 2156f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.b.x)) * 1297f), _wgslsmith_f_op_f32(min(-784f, var_2.b.x)), var_2.b.x)));
    return vec3<bool>(u_input.b.x <= 1i, arg_0, !global0.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-975f, _wgslsmith_f_op_f32(f32(-1f) * -1188f))));
    let var_1 = any(!(!vec4<bool>(global0.x || global0.x, global0.x | global0.x, true, -1i < u_input.a)));
    global0 = func_6(any(vec2<bool>(!(!var_1), true)), u_input.b.x, func_5(select(!(!vec4<bool>(var_1, true, var_1, var_1)), vec4<bool>(true, true, true, true), false), func_4(1278f, vec2<f32>(_wgslsmith_f_op_f32(func_2(global0.xx, Struct_2(global1[_wgslsmith_index_u32(61040u, 18u)], vec4<f32>(-306f, 376f, -631f, 209f)))), _wgslsmith_f_op_f32(trunc(-840f))), vec3<f32>(1f, 1f, 1f), 805f), func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-458f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1567f, 1853f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(512f, 236f))), _wgslsmith_div_vec3_f32(vec3<f32>(-861f, 943f, -2449f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-143f, -471f, -1456f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(553f - 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -431f))).a));
    let var_2 = arg_0.x & 29150i;
    global2 = 45088i ^ u_input.a;
    return Struct_2(arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-566f, 515f, 1298f, 1364f), _wgslsmith_div_vec4_f32(vec4<f32>(-308f, 1000f, -774f, 1648f), vec4<f32>(-1086f, -1748f, 1196f, 553f)), select(vec4<bool>(false, true, false, true), vec4<bool>(global0.x, true, false, true), vec4<bool>(var_1, false, false, global0.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(117f - 998f), _wgslsmith_div_f32(449f, -1000f), -187f, -172f))));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<bool>) -> Struct_2 {
    global1 = array<Struct_1, 18>();
    var var_0 = Struct_1(arg_1.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-855f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(arg_0.b.x * arg_2.x))))));
    var_1 = _wgslsmith_f_op_f32(ceil(-659f));
    var var_2 = func_4(arg_0.b.x, arg_2, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_0.b.www * vec3<f32>(1338f, arg_2.x, arg_2.x)), arg_0.b.yzx))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), -1305f)), -256f, arg_2.x), func_6(true, _wgslsmith_div_i32(-u_input.b.x, -u_input.a), global1[_wgslsmith_index_u32(u_input.c, 18u)]))), arg_0.b.x);
    return func_4(var_2.b.x, vec2<f32>(_wgslsmith_f_op_f32(select(282f, arg_2.x, !all(vec3<bool>(true, arg_3.x, arg_3.x)))), arg_0.b.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(998f, 320f, _wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.x), arg_2.x));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    global0 = vec3<bool>(global0.x, global0.x, true);
    global2 = countOneBits(u_input.a & u_input.a);
    var var_0 = arg_1.a.a;
    global0 = !select(select(vec3<bool>(arg_3.a < arg_0.a, global0.x, arg_1.b.x < 1631f), select(func_6(true, 1i, arg_3), !arg_2.zwy, func_6(arg_2.x, -39163i, arg_1.a)), !(global0.x & true)), vec3<bool>(!func_6(false, 2147483647i, Struct_1(arg_3.a)).x, global0.x, (u_input.c < arg_3.a) && global0.x), select(vec3<bool>(arg_2.x, select(false, arg_2.x, arg_2.x), global0.x), select(select(arg_2.xwz, arg_2.wyx, true), func_6(global0.x, 2147483647i, arg_1.a), vec3<bool>(false, global0.x, false)), any(vec2<bool>(false, true))));
    global2 = 1i & u_input.b.x;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 18>();
    var var_0 = Struct_2(Struct_1(u_input.c), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(239f, 2652f, 1129f, 949f))))))))));
    let var_1 = ~var_0.a.a;
    var var_2 = Struct_1(var_1);
    var var_3 = var_0.a;
    let var_4 = Struct_1(func_8(var_0.a, func_7(func_1(vec2<i32>(0i, 0i), var_0.a), var_0.a, vec2<f32>(229f, -1771f), global0.zx), select(vec4<bool>(false, global0.x, true, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, false, global0.x, false)), vec4<bool>(global0.x, true, global0.x, true)), Struct_1(var_1)) & _wgslsmith_sub_u32(abs(firstTrailingBit(u_input.c)), var_0.a.a));
    var_2 = Struct_1(var_3.a ^ firstLeadingBit(min(~var_0.a.a, func_4(1917f, var_0.b.xy, var_0.b.zzy, -875f).a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, 180f);
}

