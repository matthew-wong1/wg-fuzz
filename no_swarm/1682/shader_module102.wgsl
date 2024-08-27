struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = vec4<bool>(!global0.c, false, all(!(!select(vec3<bool>(global0.d.x, false, global0.b.x), vec3<bool>(global0.b.x, global0.b.x, true), vec3<bool>(global0.d.x, false, global0.b.x)))), _wgslsmith_div_i32(~(~arg_0), ~_wgslsmith_add_i32(2147483647i, u_input.a.x)) >= _wgslsmith_mod_i32(~_wgslsmith_sub_i32(2769i, -25357i), arg_0));
    return Struct_2(Struct_1(select(select(!vec4<bool>(global0.c, global0.d.x, global0.d.x, true), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, var_0.x)), !vec4<bool>(false, true, global0.d.x, var_0.x), any(select(vec4<bool>(true, global0.d.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), true))), false), Struct_1(!vec4<bool>(global0.d.x, true, true, all(var_0.yzw)), true), Struct_1(!select(select(vec4<bool>(var_0.x, var_0.x, global0.d.x, true), vec4<bool>(var_0.x, global0.a, var_0.x, global0.c), vec4<bool>(global0.d.x, false, global0.a, false)), !vec4<bool>(false, true, global0.c, global0.c), true), !any(!vec2<bool>(true, global0.b.x))), firstTrailingBit(select(0u, ~_wgslsmith_mult_u32(1640u, 62568u), true)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_4) -> Struct_1 {
    global0 = arg_2;
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)))));
    let var_1 = _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(select(9128u, 77036u, arg_2.d.x), 21318u), vec2<u32>(max(1u, 0u), _wgslsmith_add_u32(56824u, 1u))) | (abs(_wgslsmith_clamp_u32(12407u, 4294967295u, 1u)) | abs(~7994u)));
    global1 = u_input.a.x;
    var_0 = _wgslsmith_f_op_f32(-348f + _wgslsmith_f_op_f32(min(-1634f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))))));
    return Struct_1(vec4<bool>(all(!global0.d) || (u_input.a.x == (-9839i >> (var_1 % 32u))), !(!arg_2.b.x), any(!vec4<bool>(global0.c, false, true, global0.c)), true), global0.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> u32 {
    global0 = Struct_4(any(vec4<bool>(arg_3.b.a.x, false || arg_3.c.a.x, true, true)) | select(!any(arg_0.c.a), any(!vec2<bool>(arg_0.b.b, global0.a)), any(vec2<bool>(false, global0.c))), global0.b, !(!arg_0.b.b), select(arg_3.a.a.ww, global0.d, !(!select(vec2<bool>(arg_3.b.b, true), arg_3.c.a.yz, arg_0.c.a.xy))));
    var var_0 = vec3<bool>(true, true, all(!(!select(vec3<bool>(arg_3.b.a.x, true, arg_0.b.a.x), vec3<bool>(arg_3.b.a.x, global0.d.x, arg_3.c.b), vec3<bool>(true, false, arg_3.c.b)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1271f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_2, arg_2)), arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -768f) * -1479f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(313f, -945f, arg_2) + vec3<f32>(-1000f, -1138f, arg_2))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1029f, arg_2, arg_2))))))));
    var_0 = arg_3.b.a.zzw;
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1048f)), arg_2, _wgslsmith_sub_i32(u_input.a.x, -2147483647i) < select(-30956i, u_input.a.x, arg_3.c.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 1214f) * _wgslsmith_f_op_f32(floor(arg_2))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1038f - 1004f) + _wgslsmith_f_op_f32(max(arg_1, -575f))))), _wgslsmith_f_op_f32(floor(-1545f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) * 459f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), var_1.x, var_1.x))));
    return ~46200u;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = min(~(~1i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.yx, _wgslsmith_mult_vec2_i32(u_input.a.xx, u_input.a.xz) | reverseBits(vec2<i32>(-63667i, u_input.a.x))), u_input.a.x));
    global0 = Struct_4(arg_1.b.b, !vec2<bool>(global0.c == !global0.b.x, true), global0.c, vec2<bool>(true, global0.d.x));
    global0 = Struct_4(any(arg_1.c.a), vec2<bool>(false, any(select(arg_1.b.a, vec4<bool>(arg_1.b.b, true, global0.b.x, global0.d.x), arg_1.b.a))), true, select(!arg_1.c.a.wy, arg_1.b.a.xw, all(!arg_1.b.a)));
    let var_1 = func_2(-7743i);
    let var_2 = var_1.a.a.wyx;
    return Struct_4(var_1.b.b, !(!select(func_2(-2147483647i).c.a.wy, arg_1.b.a.zw, func_2(-21792i).a.a.wx)), true, vec2<bool>(true, !global0.b.x));
}

fn func_1() -> u32 {
    let var_0 = func_5(vec4<u32>(func_4(func_2(-u_input.a.x), -497f, -952f, Struct_2(func_3(Struct_3(vec4<f32>(1000f, 313f, -421f, -675f)), Struct_3(vec4<f32>(-131f, -458f, 360f, 1034f)), Struct_4(global0.c, global0.b, true, global0.d)), Struct_1(vec4<bool>(false, global0.c, true, true), global0.a), func_3(Struct_3(vec4<f32>(-413f, 1000f, 1047f, 1593f)), Struct_3(vec4<f32>(-921f, 1000f, 777f, 1701f)), Struct_4(global0.b.x, vec2<bool>(true, global0.d.x), false, global0.b)), ~42244u)), ~1u, ~20092u, _wgslsmith_mult_u32(71465u, _wgslsmith_dot_vec2_u32(vec2<u32>(4138u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(33058u, 20461u), vec2<u32>(15887u, 4868u))))), func_2(u_input.a.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1247f))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(103f, 744f), -661f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1683f))))));
    let var_1 = max(vec4<i32>(min(_wgslsmith_mod_i32(~41910i, ~u_input.a.x), ~_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, -11714i)), -10041i, ~_wgslsmith_mult_i32(1i, u_input.a.x), _wgslsmith_div_i32(_wgslsmith_div_i32(-u_input.a.x, abs(u_input.a.x)), _wgslsmith_add_i32(u_input.a.x, reverseBits(-25275i)))), vec4<i32>(u_input.a.x, select(-4792i, _wgslsmith_dot_vec2_i32(~u_input.a.yz, ~vec2<i32>(u_input.a.x, u_input.a.x)), var_0.a), firstLeadingBit(59202i & -u_input.a.x), u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(885f))))) - 515f);
    global1 = var_1.x;
    var var_3 = true;
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(43110u, 0u), ~0u), ~(~4294967295u)), vec2<u32>(1u, _wgslsmith_add_u32(1u, 35087u)));
}

fn func_6(arg_0: u32, arg_1: Struct_3) -> vec2<bool> {
    global1 = u_input.a.x;
    let var_0 = _wgslsmith_f_op_vec4_f32(arg_1.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1096f, -218f, arg_1.a.x, arg_1.a.x) * vec4<f32>(arg_1.a.x, 912f, 750f, arg_1.a.x)), vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, -1000f)))) + arg_1.a));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, ~u_input.a.x), ~(~(~u_input.a.zx))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -17370i, u_input.a.x, u_input.a.x) >> (vec4<u32>(arg_0, 1u, arg_0, 51922u) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, u_input.a.x, -37914i, u_input.a.x)), ~max(u_input.a.x, -2147483647i), 27804i ^ u_input.a.x), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x >> (arg_0 % 32u), 0i, 0i & u_input.a.x))), _wgslsmith_clamp_i32(u_input.a.x, -25136i, _wgslsmith_add_i32(_wgslsmith_div_i32(-24235i, _wgslsmith_add_i32(u_input.a.x, 1i)), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))));
    let var_2 = vec4<bool>(global0.d.x, true, func_3(arg_1, arg_1, Struct_4(global0.b.x, func_5(vec4<u32>(arg_0, 4294967295u, 1u, 95552u) >> (vec4<u32>(4294967295u, 4294967295u, arg_0, 4294967295u) % vec4<u32>(32u)), Struct_2(Struct_1(vec4<bool>(global0.a, global0.c, global0.b.x, global0.c), global0.b.x), Struct_1(vec4<bool>(false, global0.d.x, true, global0.d.x), true), Struct_1(vec4<bool>(global0.a, true, global0.c, global0.c), false), 4294967295u), vec2<f32>(-1202f, -1102f)).b, global0.a, !(!vec2<bool>(global0.b.x, global0.a)))).a.x, any(!select(!vec4<bool>(global0.d.x, true, true, false), vec4<bool>(global0.c, global0.a, global0.a, global0.c), global0.b.x)));
    let var_3 = select(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_clamp_i32(var_1, 28780i, u_input.a.x), _wgslsmith_add_i32(33596i, 1i), firstTrailingBit(-11283i)), vec3<i32>(select(~_wgslsmith_mod_i32(u_input.a.x, -2147483647i), i32(-1i) * -29722i, true), 23859i, -firstTrailingBit(u_input.a.x)), !(!var_2.yyy));
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(true, global0.d, false, !func_6(min(func_1(), _wgslsmith_mod_u32(0u, 26267u)), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, 2037f, -1575f) * vec4<f32>(-591f, -1467f, 119f, -1849f)))));
    let var_1 = Struct_4(~func_2(firstTrailingBit(-1i)).d > ~1u, func_5(firstTrailingBit(select(vec4<u32>(4294967295u, 17011u, 51907u, 4294967295u), vec4<u32>(1u, 56171u, 4294967295u, 42971u), vec4<bool>(global0.c, var_0.a, global0.b.x, var_0.b.x)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), Struct_2(Struct_1(!vec4<bool>(var_0.b.x, global0.a, global0.d.x, true), global0.d.x), func_3(Struct_3(vec4<f32>(-945f, 1109f, 985f, 1071f)), Struct_3(vec4<f32>(-1696f, -1190f, 875f, -371f)), var_0), Struct_1(!vec4<bool>(global0.d.x, var_0.d.x, var_0.c, global0.b.x), var_0.b.x), 34855u), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1808f, 568f), vec2<f32>(-680f, -468f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-370f, -1137f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-441f, 1268f) + vec2<f32>(-774f, 536f)))))).d, true, func_2(13489i).a.a.yy);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(max(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x) ^ vec3<i32>(-46748i, 34294i, -2147483647i), reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), firstLeadingBit(u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x), -vec3<i32>(2147483647i, u_input.a.x, -2908i)), ~(-u_input.a)), _wgslsmith_mod_i32(u_input.a.x, ~u_input.a.x) ^ -1i);
}

