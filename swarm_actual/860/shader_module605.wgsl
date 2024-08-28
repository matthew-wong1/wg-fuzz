struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(317f, -814f, -963f, 333f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(469f, 1575f, -667f, -646f))))), true)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(408f, -998f, _wgslsmith_f_op_f32(floor(-1100f)), -303f))))));
    let var_1 = u_input.a;
    var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.x, var_0.x))))), -436f, _wgslsmith_div_f32(-3016f, _wgslsmith_f_op_f32(sign(978f))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f) + _wgslsmith_div_f32(1712f, -1535f)))) >= var_0.x;
    let var_3 = Struct_3(Struct_1(vec4<u32>(20758u, ~_wgslsmith_mult_u32(u_input.a, var_1), _wgslsmith_dot_vec3_u32(u_input.e.zzy | vec3<u32>(4294967295u, 0u, 0u), countOneBits(u_input.e.zzy)), ~66481u), true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-600f, 329f, -647f, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1100f, -1408f, var_0.x)), global0.x))))), vec4<bool>(!global0.x, !(var_0.x != 133f) & !(!global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_0.x)) >= 495f, true), Struct_2(!(max(var_1, var_1) < 1u), select(select(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, true, true), vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(global0.x, false, global0.x), var_0.x > var_0.x), vec3<bool>(true, true, true), !vec3<bool>(global0.x, false, global0.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.xx, vec2<f32>(var_0.x, var_0.x), global0.x)) + var_0.zz)))), Struct_2(!(!global0.x), !select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, global0.x), !vec3<bool>(global0.x, true, global0.x)), var_0.xx));
    return 40862u;
}

fn func_2(arg_0: u32) -> vec4<u32> {
    global0 = vec2<bool>(any(!select(vec2<bool>(global0.x, true), !vec2<bool>(global0.x, true), true)), true);
    let var_0 = Struct_2(global0.x, vec3<bool>(all(select(vec3<bool>(false, global0.x, true), vec3<bool>(false, true, true), true)) || all(select(vec2<bool>(true, global0.x), vec2<bool>(true, global0.x), false)), -134i <= ~u_input.b, 44086u >= func_3()), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1082f, 918f) - vec2<f32>(1387f, -169f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(277f, -909f)) - vec2<f32>(-593f, 985f)))))));
    var var_1 = Struct_3(Struct_1(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(103916u, u_input.e.x, arg_0, 42643u), u_input.e, u_input.e), reverseBits(u_input.e)), true, vec4<f32>(257f, 407f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.x, -379f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(474f * var_0.c.x) - -1860f))), select(vec4<bool>(false, true, var_0.a, global0.x), !vec4<bool>(!global0.x, true, var_0.a | var_0.a, any(vec4<bool>(global0.x, global0.x, var_0.a, var_0.b.x))), vec4<bool>(false, !(!global0.x), false, !global0.x)), Struct_2(any(vec3<bool>(false, all(vec4<bool>(var_0.a, true, global0.x, true)), !var_0.a)), vec3<bool>(var_0.b.x, all(select(vec4<bool>(true, true, false, global0.x), vec4<bool>(var_0.b.x, var_0.a, true, true), global0.x)), var_0.a), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, 193f), vec2<f32>(147f, -309f)) * vec2<f32>(var_0.c.x, 483f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.c, var_0.c)))))), var_0);
    var var_2 = var_0.a;
    global0 = !var_1.c.b.xy;
    return u_input.e;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: bool) -> Struct_3 {
    return Struct_3(Struct_1(vec4<u32>(4294967295u, ~1u, ~(arg_0 ^ u_input.a), (u_input.a >> (u_input.e.x % 32u)) ^ min(20529u, 26054u)), all(!select(vec3<bool>(true, true, true), vec3<bool>(false, global0.x, true), false)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -696f), _wgslsmith_f_op_f32(-1000f + 128f), _wgslsmith_f_op_f32(max(1162f, -555f)), -676f), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(global0.x || false, true, true, true)))), vec4<bool>(true, any(select(!vec4<bool>(arg_3, arg_3, arg_3, true), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, arg_3, arg_3, true), vec4<bool>(true, global0.x, false, true)), true)), select(select(global0.x, any(vec2<bool>(arg_3, arg_3)), u_input.b >= u_input.c), arg_3, arg_3), true), Struct_2(select(!(u_input.e.x < 15933u), all(vec2<bool>(true, true)), false), !vec3<bool>(arg_3 & false, true, global0.x), vec2<f32>(1364f, 1460f)), Struct_2(any(select(!vec4<bool>(arg_3, arg_3, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, arg_3, arg_3, false), global0.x), true)), !(!vec3<bool>(arg_3, global0.x, true)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(637f * -501f))), _wgslsmith_f_op_f32(-3407f + _wgslsmith_f_op_f32(f32(-1f) * -2709f)))));
}

fn func_1() -> Struct_2 {
    global0 = select(select(vec2<bool>(all(vec4<bool>(global0.x, global0.x, true, global0.x)) != select(global0.x, true, global0.x), true), !(!(!vec2<bool>(false, global0.x))), all(select(select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(true, true, true, false), false), !vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(true, global0.x, true, false)))), vec2<bool>(global0.x, !global0.x), false);
    let var_0 = -456f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1517f) + _wgslsmith_div_f32(-1254f, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0))));
    var var_2 = 67428i;
    let var_3 = func_4(_wgslsmith_mult_u32(u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, firstTrailingBit(u_input.a), 30599u), reverseBits(vec3<u32>(1u, u_input.e.x, 1u) & u_input.e.wyx))), u_input.e << (~func_2(~u_input.a) % vec4<u32>(32u)), ~u_input.e.wy, true);
    return var_3.c;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    global0 = func_4(1u, vec4<u32>(_wgslsmith_div_u32(~max(40338u, 265u), ~0u), u_input.d, arg_1.a.x ^ _wgslsmith_mult_u32(reverseBits(u_input.d), 103477u), ~(~firstLeadingBit(14986u))), func_2(select(_wgslsmith_dot_vec2_u32(u_input.e.zy, vec2<u32>(86209u, 26859u)), arg_1.a.x, !any(vec3<bool>(false, arg_0.a, false)))).wy, global0.x).b.yw;
    global0 = !(!(!vec2<bool>(arg_0.b.x, !global0.x)));
    var var_0 = func_4(4294967295u, arg_1.a, _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(~arg_1.a.wz), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e.x, 13990u), vec2<u32>(u_input.d, u_input.d)), ~u_input.e.xx, ~u_input.e.xy)), func_4(~2992u << (u_input.d % 32u), vec4<u32>(min(1u, arg_1.a.x), select(22672u, arg_1.a.x, false), u_input.e.x, 1u), vec2<u32>(~0u, 1u), true).a.a.xw, firstTrailingBit(~(~vec2<u32>(102725u, arg_1.a.x)))), true);
    let var_1 = Struct_3(var_0.a, var_0.b, func_4(1u, vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1.a.x, 4294967295u, 14936u)), ~arg_1.a.zww), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.e.x, var_0.a.a.x), ~vec4<u32>(arg_1.a.x, arg_1.a.x, 1u, 59277u)), ~arg_1.a.x >> (~4294967295u % 32u), ~50568u), vec2<u32>(1u, arg_1.a.x), !(!var_0.a.b | true)).c, func_4(_wgslsmith_sub_u32(var_0.a.a.x, ~(~0u)), ~var_0.a.a, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, arg_1.a.x, arg_1.a.x), vec4<u32>(arg_1.a.x, var_0.a.a.x, 1428u, var_0.a.a.x)), u_input.d), arg_1.b).c);
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, -37608i, 0i), ~(~abs(vec4<i32>(u_input.c, 1i, u_input.b, 16178i)))) >> (arg_1.a % vec4<u32>(32u));
    return Struct_2(all(func_1().b.zz), func_1().b, _wgslsmith_div_vec2_f32(var_0.d.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.c.x, arg_1.c.x) * _wgslsmith_f_op_vec2_f32(arg_0.c - arg_0.c)), _wgslsmith_div_vec2_f32(var_1.a.c.zy, arg_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), Struct_1(vec4<u32>(~6221u, u_input.e.x, 0u, abs(1u)), true, _wgslsmith_f_op_vec4_f32(func_4(u_input.a >> (u_input.e.x % 32u), abs(vec4<u32>(u_input.e.x, 1u, u_input.a, 17860u)), u_input.e.yz, true).a.c * _wgslsmith_f_op_vec4_f32(-vec4<f32>(629f, 640f, 245f, -1986f)))), vec3<bool>(func_1().a, false, func_1().a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.a, u_input.d >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(min(u_input.d, 373u), u_input.a, u_input.d << (4294967295u % 32u), u_input.a), select(~vec4<u32>(u_input.e.x, u_input.a, 7391u, 83746u), _wgslsmith_clamp_vec4_u32(u_input.e, vec4<u32>(u_input.a, u_input.e.x, u_input.a, 34288u), vec4<u32>(u_input.e.x, 4294967295u, 25810u, 18778u)), !var_0.b.x)), u_input.a & ~4294967295u), countOneBits(_wgslsmith_sub_vec4_u32(u_input.e, _wgslsmith_mult_vec4_u32(~u_input.e, u_input.e))), vec4<u32>(~42449u >> (~max(0u, u_input.d) % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.e.xwx, ~vec3<u32>(1u, u_input.a, 4294967295u)), u_input.d, 24785u), u_input.d | u_input.a, ~(~_wgslsmith_dot_vec4_u32(u_input.e, u_input.e))));
}

