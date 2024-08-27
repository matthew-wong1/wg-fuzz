struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = -u_input.d;
    let var_1 = -1431f;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(sign(-263f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(326f)))), var_1);
    var var_3 = ~min(select(max(vec4<i32>(2147483647i, arg_3.b, 0i, -2147483647i), ~vec4<i32>(-2147483647i, u_input.d, -42340i, u_input.d)), -vec4<i32>(1i, -12052i, 25335i, var_0), any(vec2<bool>(true, false))), vec4<i32>(-19003i, i32(-1i) * -arg_2.b, _wgslsmith_clamp_i32(-arg_3.b, _wgslsmith_mod_i32(var_0, 2147483647i), var_0), _wgslsmith_add_i32(countOneBits(-48026i), -2147483647i)));
    let var_4 = Struct_1(true, u_input.a, ~arg_2.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) + _wgslsmith_f_op_f32(sign(-590f))), 492f)), 700f));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = ~vec4<u32>(arg_1, 24937u, arg_1, 51516u);
    var var_1 = Struct_1(!any(vec2<bool>(arg_0.x, !arg_0.x)), ~(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, 2147483647i) & vec3<i32>(u_input.a, u_input.a, 1i), firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 2147483647i))) & 1i), 0u);
    let var_2 = Struct_1(!arg_0.x, ~var_1.b | 2147483647i, 26658u);
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-620f)))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(ceil(-993f)), -1393f, _wgslsmith_div_f32(-718f, _wgslsmith_f_op_f32(func_3(~arg_1, arg_0.x, Struct_1(var_1.a, 2147483647i, arg_1), var_2)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-525f, _wgslsmith_f_op_f32(1143f - -1414f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -180f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1400f, 1000f, -948f, 136f), vec4<f32>(1015f, -446f, -666f, 690f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-681f, 1000f, -755f, -1500f), vec4<f32>(-778f, -393f, -615f, 741f))), vec4<f32>(-487f, 1360f, 1003f, 219f), vec4<bool>(true, true, var_2.a, arg_0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(251f, 227f, -215f, 1288f) * vec4<f32>(-724f, 1464f, 575f, -2038f))))))));
    var var_4 = true;
    return Struct_1(false, 0i, _wgslsmith_mod_u32(var_0.x, _wgslsmith_div_u32(max(0u, 1u), 12242u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = func_2(vec3<bool>(func_2(select(!vec3<bool>(arg_1.a, arg_1.a, false), select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(var_0.a, true, false), true), vec3<bool>(true, arg_0.a, arg_0.a)), arg_3).a, any(vec2<bool>(var_0.a, true)), !arg_0.a), 1u);
    var_0 = arg_1;
    return func_2(select(select(select(select(vec3<bool>(arg_0.a, var_1.a, false), vec3<bool>(arg_0.a, false, arg_1.a), true), select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(false, false, false), var_1.a), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(var_1.a, var_1.a, false)), func_2(vec3<bool>(true, false, true), 1u).a, true), !(!vec3<bool>(arg_0.a, false, false))), vec3<bool>(true, all(!vec4<bool>(arg_0.a, arg_0.a, true, var_1.a)), !(arg_0.a && var_1.a)), vec3<bool>(select(arg_0.a, select(arg_1.a, arg_0.a, arg_0.a), var_1.a | var_1.a), !arg_0.a, true == arg_0.a)), ~_wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.zz) << (min(countOneBits(arg_3), _wgslsmith_add_u32(firstLeadingBit(u_input.c.x), _wgslsmith_div_u32(arg_3, u_input.c.x))) % 32u));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) + _wgslsmith_f_op_f32(-1043f + -720f)))));
    let var_1 = ~_wgslsmith_mult_vec2_u32(u_input.c.zy, countOneBits(vec2<u32>(reverseBits(u_input.b), u_input.c.x)));
    var_0 = arg_0;
    var var_2 = firstLeadingBit(~_wgslsmith_add_u32(_wgslsmith_add_u32(0u, ~u_input.b), ~var_1.x));
    let var_3 = func_4(func_2(vec3<bool>(true, (u_input.a ^ u_input.a) != ~53447i, true), u_input.b), func_2(!vec3<bool>(false, func_2(vec3<bool>(true, false, false), 38990u).a, select(false, false, false)), 64601u), ~133378u, abs(_wgslsmith_add_u32(~firstTrailingBit(4294967295u), ~var_1.x << (1u % 32u))));
    return select(any(select(select(vec3<bool>(var_3.a, var_3.a, var_3.a), vec3<bool>(var_3.a, true, false), !vec3<bool>(var_3.a, var_3.a, var_3.a)), select(vec3<bool>(true, true, true), select(vec3<bool>(var_3.a, true, false), vec3<bool>(var_3.a, true, var_3.a), var_3.a), false), var_3.a)), any(select(select(select(vec4<bool>(true, var_3.a, var_3.a, false), vec4<bool>(var_3.a, var_3.a, false, var_3.a), vec4<bool>(var_3.a, true, var_3.a, var_3.a)), vec4<bool>(var_3.a, true, false, false), vec4<bool>(var_3.a, var_3.a, true, var_3.a)), select(!vec4<bool>(false, var_3.a, true, false), vec4<bool>(var_3.a, false, var_3.a, var_3.a), any(vec2<bool>(true, true))), true)), false);
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = !(!vec3<bool>(false && any(vec3<bool>(true, arg_0.a, arg_0.a)), func_4(func_2(vec3<bool>(false, arg_0.a, true), 1u), func_2(vec3<bool>(true, arg_0.a, false), arg_0.c), arg_0.c ^ 1u, arg_0.c).a, any(vec4<bool>(false, true, arg_0.a, true)) == (arg_0.a && true)));
    let var_1 = false;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-30966i, 42285i, var_2.b), vec3<i32>(-2147483647i, arg_1, -21809i)), ~1i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, -441i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -53236i), vec2<i32>(arg_1, var_2.b)))), select(_wgslsmith_div_vec2_i32(select(vec2<i32>(-49449i, arg_0.b), vec2<i32>(u_input.d, arg_0.b), true), -vec2<i32>(25632i, arg_0.b)), vec2<i32>(~(-1i), _wgslsmith_div_i32(2147483647i, u_input.a)), vec2<bool>(!var_2.a, all(vec4<bool>(false, var_2.a, false, var_0.x))))), _wgslsmith_sub_i32(select(arg_0.b, arg_1, !(false && var_0.x)), ~(-43740i ^ firstTrailingBit(1i))));
    let var_4 = !vec2<bool>(true, select(select(true, var_2.a, true), false, false));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select((u_input.a >= ~u_input.d) & all(vec4<bool>(true, true, true, true)), true, true);
    var_0 = true;
    var var_1 = func_5(Struct_1(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1351f)), select(_wgslsmith_mult_i32(1i, -u_input.d), max(u_input.d, 26266i) << (1u % 32u), true), _wgslsmith_div_u32(_wgslsmith_div_u32(0u, u_input.c.x), abs(4294967295u))), -u_input.a);
    let var_2 = ~vec4<u32>(_wgslsmith_add_u32(u_input.b, var_1.c) & 1u, max(_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 47531u), var_1.c), countOneBits(~var_1.c)), 40903u, _wgslsmith_mult_u32(~firstLeadingBit(u_input.c.x), _wgslsmith_div_u32(abs(var_1.c), 1u)));
    var var_3 = _wgslsmith_f_op_f32(-766f * -1833f);
    var_1 = Struct_1(!(var_1.a & true), func_2(!vec3<bool>(var_1.a | var_1.a, true, false), 22978u).b, ~_wgslsmith_mult_u32(countOneBits(_wgslsmith_sub_u32(4294967295u, 1u)), u_input.b));
    var var_4 = Struct_1(true, var_1.b, ~28003u);
    var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_u32(~countOneBits(0u), func_5(func_5(Struct_1(true, u_input.d, u_input.c.x), -2147483647i), _wgslsmith_div_i32(u_input.d, var_4.b)).c, u_input.c.x), var_1.a, Struct_1(false, var_4.b, 25923u), Struct_1(var_4.a, 1i, (var_1.c << (var_4.c % 32u)) & ~19157u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(var_2.xwz, _wgslsmith_div_vec3_u32(vec3<u32>(10484u, 23890u, u_input.b), vec3<u32>(var_4.c, 4294967295u, 51410u)) | vec3<u32>(u_input.c.x, firstLeadingBit(11705u), _wgslsmith_clamp_u32(47735u, 4294967295u, var_1.c)), abs(~_wgslsmith_mult_vec3_u32(var_2.yyy, var_2.yxy))), var_1.b, -vec2<i32>(func_2(vec3<bool>(var_1.a, false, var_1.a), ~1u).b, 0i), -(vec4<i32>(~2147483647i, 0i, max(-31937i, u_input.d), u_input.d) << (vec4<u32>(func_4(Struct_1(true, -28353i, var_1.c), Struct_1(false, -2147483647i, var_4.c), 0u, 1u).c, 4294967295u, 1u & var_4.c, 4090u) % vec4<u32>(32u))));
}

