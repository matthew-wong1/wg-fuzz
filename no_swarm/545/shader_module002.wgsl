struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(1u, 0u, 1u), 77223u, vec3<f32>(-1252f, 664f, -293f), Struct_1(vec2<f32>(-1003f, 1110f), true), vec4<u32>(24082u, 5926u, 4294967295u, 1u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = ~min(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, global1.b, 4294967295u), global1.e), global1.e.x, ~(~global1.a.x), global1.b), abs(vec4<u32>(~4294967295u, ~0u, ~global1.e.x, min(global1.e.x, 155317u))));
    global1 = Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~_wgslsmith_mod_u32(44125u, 2249u), ~var_0.x ^ ~17299u), ~vec3<u32>(48455u, ~var_0.x, _wgslsmith_add_u32(global1.e.x, var_0.x)), countOneBits(global1.e.yzw)), 1u, vec3<f32>(790f, _wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), global1.d, vec4<u32>(select(~4294967295u, var_0.x, false), _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(global1.e, vec4<u32>(44939u, 0u, var_0.x, global1.b)), var_0.x), ~max(_wgslsmith_clamp_u32(4294967295u, global1.a.x, var_0.x), 1u), _wgslsmith_dot_vec2_u32(global1.a.xy, ~var_0.xx)));
    global1 = Struct_2(~global1.a, (min(countOneBits(4294967295u), 2116u) << (global1.a.x % 32u)) ^ ~((var_0.x | global1.b) << (24379u % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, -345f)) * global0.a.www)))), global1.d, ~vec4<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 21014u, global1.a.x, var_0.x), vec4<u32>(1u, 17874u, 1u, global1.a.x)), countOneBits(global1.e.x), true), 4195u, global1.e.x, abs(1u)));
    var var_1 = !(true & select(any(!vec3<bool>(global1.d.b, global1.d.b, global1.d.b)), true | (true && global1.d.b), all(select(vec3<bool>(global1.d.b, global1.d.b, global1.d.b), vec3<bool>(false, false, false), vec3<bool>(global1.d.b, true, global1.d.b)))));
    var var_2 = global1.d;
    return _wgslsmith_div_f32(-659f, var_2.a.x);
}

fn func_2() -> f32 {
    global0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<f32>(global1.c.x, -1442f, -1000f, global0.a.x)))) + _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(-global1.d.a.x), global1.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(788f, 945f) + _wgslsmith_f_op_f32(func_3(Struct_3(vec4<f32>(global0.a.x, 114f, -423f, 614f)))))));
    var var_0 = Struct_2(~abs(select(vec3<u32>(global1.e.x, 4294967295u, 9618u), _wgslsmith_mod_vec3_u32(global1.a, global1.e.xwx), global1.d.b)), global1.a.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(global1.c, vec3<f32>(global0.a.x, global1.d.a.x, -161f)))) - global0.a.wwx))), Struct_1(global1.c.zx, global1.d.b), ~global1.e);
    let var_1 = _wgslsmith_f_op_f32(-848f + global0.a.x);
    var_0 = Struct_2(var_0.e.ywz, var_0.a.x, var_0.c, var_0.d, abs(vec4<u32>(~var_0.e.x, abs(4294967295u), ~firstTrailingBit(10870u), ~2075u)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(global1.d.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.c.x, global0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -2250f), -269f)));
    return 1023f;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>) -> vec3<f32> {
    let var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1758f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2())))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1217f, global0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(global1.c.x - 1000f)))), global1.d.b);
    global1 = Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 0u, 1u)), vec3<u32>(74455u, var_0.a.x, 1u)), vec3<u32>(global1.e.x, ~arg_0.a.x, _wgslsmith_add_u32(1u, 6871u)) ^ firstTrailingBit(select(var_0.e.wyw, arg_0.a, vec3<bool>(arg_0.d.b, var_1.b, true)))), global1.a.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-204f, global1.d.a.x, global1.d.a.x) - global1.c))))), global0.a.wzz, select(vec3<bool>(true, var_0.d.b && var_1.b, global1.b >= 4294967295u), !vec3<bool>(var_0.d.b, false, true), !arg_1))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(global1.d.a)), !all(arg_1.zy)), vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, global1.e.x, 1u), arg_0.a)), _wgslsmith_sub_u32(global1.a.x, _wgslsmith_mod_u32(var_0.a.x, global1.e.x))), 8408u, 100103u, _wgslsmith_add_u32(global1.e.x, var_0.a.x)));
    let var_2 = var_0.d;
    var var_3 = (max(59895i | select(-1i, 1i, true), _wgslsmith_add_i32(u_input.a, u_input.a)) << (0u % 32u)) > ~(-2147483647i);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.a.x, -1187f, 1866f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: bool) -> Struct_3 {
    var var_0 = all(select(!vec4<bool>(true, false, global1.d.b, all(vec3<bool>(global1.d.b, arg_2, false))), !(!vec4<bool>(true, false, global1.d.b, global1.d.b)), vec4<bool>(true, true, all(vec2<bool>(false, global1.d.b)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(global1.d.b, false))))));
    let var_1 = !((u_input.a <= (u_input.a | 1i)) & !global1.d.b);
    var var_2 = select(select(!select(vec4<bool>(false, true, var_1, true), vec4<bool>(arg_2, arg_2, var_1, arg_2), true), !vec4<bool>(global1.d.b, all(vec4<bool>(true, arg_2, false, var_1)), global1.d.b, arg_2), arg_2), !vec4<bool>(true, select(true, false && arg_2, var_1), _wgslsmith_f_op_f32(1323f * global0.a.x) <= _wgslsmith_f_op_f32(ceil(1361f)), arg_2), any(select(select(vec4<bool>(global1.d.b, var_1, arg_2, false), select(vec4<bool>(true, true, global1.d.b, true), vec4<bool>(global1.d.b, var_1, true, var_1), vec4<bool>(false, true, true, true)), false), vec4<bool>(global1.d.b, arg_2, global1.e.x <= 34825u, true), vec4<bool>(!arg_2, true, false, global1.d.b))));
    var_0 = var_1;
    let var_3 = vec2<bool>(any(var_2.ywx), any(vec3<bool>(arg_2, any(select(vec4<bool>(var_2.x, false, global1.d.b, false), vec4<bool>(var_1, false, false, true), global1.d.b)), !arg_2)));
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(1059f + _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(max(840f, global1.c.x)))), global1.d.a.x, _wgslsmith_f_op_f32(trunc(global0.a.x)), _wgslsmith_f_op_f32(func_3(Struct_3(global0.a)))));
}

fn func_5(arg_0: Struct_3) -> vec3<f32> {
    global0 = arg_0;
    var var_0 = ~reverseBits(abs(vec4<i32>(u_input.a, abs(30186i), -36912i, i32(-1i) * -728i)));
    global1 = Struct_2(~global1.e.wyz, global1.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - -1362f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_div_f32(101f, global1.c.x), _wgslsmith_f_op_f32(global0.a.x - -830f))), -518f), Struct_1(global1.d.a, !global1.d.b), _wgslsmith_add_vec4_u32(~vec4<u32>(global1.e.x, global1.e.x, _wgslsmith_dot_vec3_u32(global1.e.zxw, vec3<u32>(global1.a.x, global1.b, 5311u)), global1.b), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.e.x, 4294967295u, 26263u, 14856u), global1.e) & _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global1.a.x, global1.b, 8601u) ^ global1.e, ~vec4<u32>(7973u, 7101u, 1u, 66967u), vec4<u32>(4294967295u, 24948u, global1.e.x, 30412u))));
    global0 = arg_0;
    let var_1 = ~vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.xz, vec2<i32>(reverseBits(u_input.a), 1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.zzx, var_0.xyy) ^ reverseBits(vec3<i32>(-2147483647i, var_0.x, 2147483647i)), var_0.xyz), 1i, i32(-1i) * -2147483647i);
    return vec3<f32>(-238f, -173f, _wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(select(500f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1611f + 1914f))), global1.d.b & global1.d.b))));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    global0 = func_4(arg_2.c, _wgslsmith_f_op_f32(func_3(func_4(vec3<f32>(arg_2.d.a.x, 1594f, _wgslsmith_f_op_f32(sign(1251f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-2038f, arg_1.x), -298f), global1.d.b))), arg_3);
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.a.yx + arg_1.zx), arg_2.d.b);
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(global0.a)));
    global1 = arg_2;
    var var_1 = arg_2;
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(859f, 102f, arg_2.c.x, -420f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = ~global1.e;
    global0 = func_6(vec3<u32>(var_1.x, var_1.x, 8150u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global1.c))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a.x, -619f, 925f))))) + _wgslsmith_f_op_vec3_f32(func_5(func_4(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(vec3<u32>(global1.e.x, var_1.x, 1u), 0u, global1.c, global1.d, vec4<u32>(4294967295u, global1.b, var_1.x, var_1.x)), vec3<bool>(true, true, var_0))), _wgslsmith_div_f32(281f, global1.d.a.x), all(vec3<bool>(true, var_0, global1.d.b)))))), Struct_2(~var_1.yxy, var_1.x | (reverseBits(global1.e.x) << (var_1.x % 32u)), _wgslsmith_f_op_vec3_f32(func_1(Struct_2(select(global1.a, vec3<u32>(global1.b, 60790u, 38756u), vec3<bool>(global1.d.b, global1.d.b, var_0)), global1.b, vec3<f32>(-1333f, global0.a.x, global0.a.x), Struct_1(global1.d.a, var_0), var_1), !vec3<bool>(var_0, false, false))), global1.d, abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 12615u, 0u, 0u), var_1)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 17130u, 56105u, 4632u) << (var_1 % vec4<u32>(32u)), countOneBits(vec4<u32>(var_1.x, var_1.x, global1.a.x, global1.e.x)), ~var_1)), !(!((15402i ^ u_input.a) == u_input.a)));
    let var_2 = -u_input.a;
    global1 = Struct_2(global1.a ^ firstLeadingBit(~(~vec3<u32>(61763u, global1.a.x, var_1.x))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(min(~13141u, 4294967295u), global1.e.x ^ global1.b, global1.e.x), ~6145u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c + global1.c) - global1.c) * _wgslsmith_f_op_vec3_f32(func_5(func_6(vec3<u32>(34953u, 53322u, 28330u), vec3<f32>(1482f, global0.a.x, -236f), Struct_2(global1.e.wxz, global1.a.x, global0.a.zwz, Struct_1(global1.c.zz, false), vec4<u32>(var_1.x, var_1.x, 30237u, 0u)), global1.d.b)))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1142f, global0.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.zy))), true & all(vec3<bool>(false, false, global1.d.b))), var_1);
    let var_3 = global1.d;
    global1 = Struct_2(abs(vec3<u32>(4294967295u >> (1u % 32u), ~global1.a.x, ~0u)), _wgslsmith_div_u32(~global1.b, reverseBits(~_wgslsmith_clamp_u32(1u, global1.e.x, 82221u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-166f, global0.a.x, global1.d.a.x)))) * vec3<f32>(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(vec3<u32>(var_1.x, global1.b, 0u), 2730u, vec3<f32>(var_3.a.x, 1110f, global1.c.x), global1.d, global1.e), vec3<bool>(var_0, false, global1.d.b))).x, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.x, global1.d.a.x), _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1079f - global1.d.a.x) + _wgslsmith_f_op_f32(var_3.a.x - var_3.a.x)))), global1.d, ~vec4<u32>(global1.e.x, 4294967295u, 0u, 20271u));
    var var_4 = global0.a.x;
    var_4 = 580f;
    let x = u_input.a;
    s_output = StorageBuffer(~4498u);
}

