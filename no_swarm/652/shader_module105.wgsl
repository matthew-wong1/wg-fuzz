struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
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

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(119f, _wgslsmith_f_op_f32(round(-740f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-326f))) + -934f)))));
    global0 = !(!(!vec3<bool>(global0.x == false, any(vec2<bool>(false, global0.x)), true)));
    let var_1 = Struct_3(firstLeadingBit(~(~(vec2<u32>(arg_0.x, arg_1.a.x) | vec2<u32>(arg_0.x, 4294967295u)))));
    var var_2 = select(!select(vec4<bool>(false, global0.x, all(vec4<bool>(true, global0.x, false, global0.x)), global0.x), !select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, true, global0.x, true), true), !select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, true, global0.x, global0.x), global0.x)), select(vec4<bool>(true, false, !global0.x && all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), all(vec2<bool>(true, true))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(global0.x, true, false, global0.x), global0.x)), all(vec3<bool>(true, true, false))), vec4<bool>(true, true, false | global0.x, global0.x));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, -1768f, _wgslsmith_f_op_f32(sign(-2037f))))), vec3<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -518f) + _wgslsmith_div_f32(451f, var_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    return _wgslsmith_div_u32(79032u, arg_0.x);
}

fn func_2() -> Struct_4 {
    var var_0 = any(vec3<bool>(global0.x | true, all(global0.xy), true));
    var var_1 = Struct_5(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u << (1u % 32u), func_3(vec3<u32>(0u, 3274u, 4294967295u), Struct_3(vec2<u32>(4294967295u, 4294967295u)), vec4<i32>(u_input.a.x, -21963i, u_input.a.x, u_input.b.x))), vec2<u32>(1u, ~(~57931u)), min(~(~vec2<u32>(1u, 4294967295u)), vec2<u32>(1u, 1u))), vec4<i32>(~(-27498i), u_input.a.x, ~(0i), u_input.a.x), _wgslsmith_f_op_f32(floor(-287f)));
    let var_2 = reverseBits(vec3<u32>(var_1.a.x >> (~7870u % 32u), 38522u, var_1.a.x));
    let var_3 = _wgslsmith_f_op_f32(-var_1.c);
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(866f - var_3)))))));
    return Struct_4(Struct_3(select(min(reverseBits(vec2<u32>(28291u, 0u)), vec2<u32>(var_1.a.x, 13256u)), vec2<u32>(12999u, var_2.x << (var_1.a.x % 32u)), global0.yx)), Struct_3(firstLeadingBit(select(firstLeadingBit(var_1.a), var_1.a, any(global0.zy)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_4) -> Struct_2 {
    var var_0 = func_2().a;
    global0 = vec3<bool>(false, all(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, true, true, global0.x))), !all(select(vec4<bool>(true, global0.x, true, true), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x))) | all(vec3<bool>(2147483647i > u_input.a.x, true, true)));
    let var_1 = Struct_1(0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 165f, 525f, 329f) - vec4<f32>(-414f, 856f, arg_1.x, 1003f))))));
    var_0 = arg_0.b;
    var var_2 = _wgslsmith_mod_i32(u_input.a.x, 0i);
    return Struct_2(var_1, Struct_1(~(~4294967295u) ^ arg_0.b.a.x, _wgslsmith_f_op_vec4_f32(-var_1.b)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.x * _wgslsmith_f_op_f32(250f + 1991f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(560f, arg_0.a.b.x)))), arg_0.b.b.x);
    let var_1 = Struct_2(arg_0.b, Struct_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.a, arg_0.a.a), vec2<u32>(arg_0.a.a, arg_0.a.a)), vec2<u32>(max(4294967295u, 13273u), ~19085u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(658f, -1003f, var_0.x, -1895f))))))));
    var var_2 = func_2().a;
    let var_3 = _wgslsmith_dot_vec2_i32(~abs(min(~vec2<i32>(-54013i, -26292i), u_input.b.xy)), ~_wgslsmith_sub_vec2_i32(select(vec2<i32>(-12208i, u_input.b.x), u_input.b.xz, global0.x), vec2<i32>(36779i, -2147483647i)));
    let var_4 = vec2<i32>(14460i, -_wgslsmith_sub_i32(_wgslsmith_div_i32(var_3, ~2147483647i), i32(-1i) * -var_3));
    return func_4(Struct_4(func_2().b, Struct_3(select(vec2<u32>(arg_0.b.a, var_2.a.x), _wgslsmith_mod_vec2_u32(var_2.a, vec2<u32>(var_2.a.x, arg_0.a.a)), false && global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-820f, -1000f)))), var_1.b.b.zy)), func_2()).a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> Struct_4 {
    let var_0 = ~vec2<i32>(select(u_input.a.x, 1i, true || (u_input.b.x >= u_input.a.x)), -1i);
    let var_1 = any(!global0.zx);
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -571f, arg_0.a.b.x));
    let var_4 = abs(vec4<i32>(u_input.b.x, i32(-1i) * -_wgslsmith_div_i32(var_0.x, var_0.x), u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -8813i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.x, u_input.a.x), vec3<i32>(-9190i, u_input.a.x, -21190i))), u_input.a)));
    return Struct_4(Struct_3(vec2<u32>(4294967295u, 26021u)), func_2().b);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = func_6(Struct_2(func_5(func_4(func_2(), vec2<f32>(-1015f, arg_0.b.x), Struct_4(Struct_3(vec2<u32>(4294967295u, arg_0.a)), Struct_3(vec2<u32>(arg_0.a, 17944u))))), Struct_1(~(~0u), vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.b.x)), _wgslsmith_f_op_f32(690f - arg_0.b.x), _wgslsmith_div_f32(arg_0.b.x, -394f), _wgslsmith_f_op_f32(-arg_0.b.x)))), Struct_1(1u >> (arg_0.a % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1007f, -625f, 114f))))), abs(arg_0.a), select(!global0.xx, vec2<bool>(true, global0.x), select(vec2<bool>(!global0.x, global0.x), !vec2<bool>(global0.x, global0.x), !all(vec4<bool>(global0.x, true, true, true)))));
    var var_1 = vec3<u32>(var_0.b.a.x & countOneBits(11531u), var_0.a.a.x, ~_wgslsmith_dot_vec2_u32(select(var_0.a.a, var_0.b.a, global0.yz), vec2<u32>(arg_0.a, 4294967295u)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -644f);
    global0 = !(!vec3<bool>(global0.x, false, global0.x));
    var var_3 = Struct_2(arg_0, func_5(Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a.x, var_1.x, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, var_1.x, arg_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -293f, 1467f, arg_0.b.x))), Struct_1(var_0.a.a.x << (arg_0.a % 32u), vec4<f32>(292f, 1038f, var_2, arg_0.b.x)))));
    return Struct_2(Struct_1(47695u, _wgslsmith_f_op_vec4_f32(-func_4(var_0, arg_0.b.xx, func_2()).a.b)), Struct_1(~1u, vec4<f32>(1653f, _wgslsmith_f_op_f32(1311f - _wgslsmith_f_op_f32(-1060f - var_2)), var_3.a.b.x, -302f)));
}

fn func_7(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = func_4(Struct_4(Struct_3(~(~vec2<u32>(arg_1.b.a, arg_1.a.a))), Struct_3(vec2<u32>(1u << (arg_1.a.a % 32u), arg_1.a.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.b.yz), func_5(arg_1).b.zy) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(378f, arg_2), vec2<f32>(117f, -958f)))))), Struct_4(Struct_3(select(vec2<u32>(0u, 1u), vec2<u32>(arg_1.a.a, 0u), arg_0) << (~vec2<u32>(48511u, arg_1.a.a) % vec2<u32>(32u))), func_2().a));
    let var_1 = u_input.a.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(all(select(vec4<bool>(global0.x, false, false, true), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x)) & global0.x, !global0.x, func_7(true, func_1(Struct_1(1u, vec4<f32>(-750f, -708f, 2038f, 816f))), -134f));
    global0 = vec3<bool>(any(!vec3<bool>(global0.x, !global0.x, true)), true, true);
    global0 = vec3<bool>(true, all(select(vec4<bool>(!global0.x, true, global0.x, true), select(!vec4<bool>(true, global0.x, true, false), !vec4<bool>(false, true, global0.x, true), true), vec4<bool>(any(vec2<bool>(false, global0.x)), global0.x | false, global0.x, all(vec2<bool>(false, false))))), global0.x);
    let var_0 = vec4<bool>(global0.x, any(select(vec3<bool>(false, global0.x, !global0.x), select(vec3<bool>(false, global0.x, false), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x)), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, false))), vec3<bool>(global0.x, global0.x, global0.x))), true, (-1i ^ firstTrailingBit(~u_input.b.x)) > -18485i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-683f, -1194f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-115f, 2174f)) + _wgslsmith_f_op_f32(1061f - 1001f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1398f, -1104f)) * 388f))));
    let var_2 = func_2().a;
    var var_3 = func_2().a;
    var_3 = Struct_3(~vec2<u32>(min(4294967295u, var_2.a.x), _wgslsmith_mod_u32(var_3.a.x, 132u)) ^ var_3.a);
    var var_4 = !(!vec3<bool>(true, true, !all(var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)))), var_1.x, -2227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(102f * 588f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1.x)))))));
}

