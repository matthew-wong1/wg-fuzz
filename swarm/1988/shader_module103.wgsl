struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), -34923i, i32(-2147483648));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: f32) -> bool {
    let var_0 = vec4<i32>(max(_wgslsmith_sub_i32(~(-7885i), abs(firstLeadingBit(18234i))), select(u_input.c ^ global1.x, select(u_input.b, select(61159i, global1.x, arg_1.b), true), !any(vec4<bool>(arg_1.c.x, true, arg_2.x, false)))), -1i >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(global0.x, 15124u), u_input.a) % 32u), 1i, u_input.b);
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(select(var_0.xxy >> (vec3<u32>(arg_0.d.x, global0.x, 53204u) % vec3<u32>(32u)), var_0.zyx, !arg_2.zzz), var_0.ywy), u_input.c);
    var var_2 = select(arg_1.c, arg_0.c, any(select(arg_2, arg_2, arg_2)));
    var var_3 = arg_0.e.yyy;
    return arg_0.b;
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(282f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-375f, _wgslsmith_f_op_f32(360f * -662f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(215f + -696f))))));
    return firstTrailingBit(abs(vec4<i32>(u_input.b, global1.x, 2147483647i, ~2147483647i))) << (~reverseBits(~vec4<u32>(u_input.a, 0u, 34949u, global0.x) ^ _wgslsmith_div_vec4_u32(vec4<u32>(global0.x, u_input.a, global0.x, u_input.a), vec4<u32>(30508u, 1u, 43786u, 35571u))) % vec4<u32>(32u));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = vec2<u32>(~firstLeadingBit(~arg_2.d.x << (~36268u % 32u)), ~(u_input.a | 48022u));
    global0 = ~(~vec4<u32>(max(_wgslsmith_sub_u32(arg_2.d.x, 4294967295u), _wgslsmith_sub_u32(u_input.a, arg_2.d.x)), _wgslsmith_div_u32(global0.x, 41627u), ~u_input.a ^ (u_input.a << (0u % 32u)), global0.x));
    let var_1 = arg_2;
    var_0 = _wgslsmith_sub_vec2_u32(~(~(~(vec2<u32>(20069u, 1u) ^ vec2<u32>(global0.x, u_input.a)))), ~arg_2.d.yy);
    let var_2 = _wgslsmith_f_op_vec4_f32(var_1.e - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-590f, arg_2.e.x, var_1.e.x, var_1.e.x) - vec4<f32>(-1490f, arg_2.e.x, -981f, var_1.e.x))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.e.x, _wgslsmith_f_op_f32(arg_2.e.x - -1190f), 1707f, var_1.e.x))))));
    return reverseBits(var_1.d.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = arg_0;
    var var_2 = !(!arg_2.c);
    let var_3 = vec3<u32>(1u, ~var_1.d.x, _wgslsmith_mod_u32(~var_1.d.x, reverseBits(func_4(true, func_3(vec2<i32>(43082i, -23925i), var_0), Struct_1(vec2<f32>(245f, arg_2.a.x), false, arg_2.c, vec3<u32>(var_1.d.x, global0.x, u_input.a), var_1.e)))));
    var var_4 = true;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-309f + 606f), -1118f)), all(vec3<bool>(false, true, true)), vec2<bool>(true, true), global0.www, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(113f + 981f), 1000f, -905f, _wgslsmith_div_f32(1000f, 968f)), false))), select(vec4<bool>(false, u_input.b < (14592i & u_input.c), -489f <= _wgslsmith_f_op_f32(select(-1495f, -705f, false)), false || func_1(Struct_1(vec2<f32>(-254f, -820f), false, vec2<bool>(true, false), vec3<u32>(global0.x, u_input.a, u_input.a), vec4<f32>(-184f, 337f, -242f, -171f)), Struct_1(vec2<f32>(1000f, 1932f), false, vec2<bool>(false, false), global0.yzw, vec4<f32>(425f, 208f, -1628f, -503f)), vec4<bool>(false, true, true, false), 256f)), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, false, false), global0.x >= 0u), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, global0.x >= global0.x, all(vec2<bool>(false, false))), vec4<bool>(true, false, true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(-640f)))), global0.x <= max(global0.x, u_input.a >> (global0.x % 32u)), vec2<bool>(true, true), vec3<u32>(countOneBits(88337u), _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.x, u_input.a), 30656u), u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(-572f + -804f), -648f, -417f))), vec3<u32>(~(~global0.x), 1u, 4294967295u) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, global0.x, ~33956u), global0.xwz));
    let var_1 = func_2(func_2(func_2(Struct_1(vec2<f32>(-1084f, var_0.e.x), var_0.c.x, !var_0.c, vec3<u32>(u_input.a, 1u, global0.x), var_0.e), vec4<bool>(all(vec3<bool>(var_0.b, var_0.c.x, var_0.b)), u_input.c < global1.x, any(var_0.c), u_input.b >= -1i), Struct_1(var_0.a, true, vec2<bool>(var_0.b, true), vec3<u32>(1u, 4294967295u, 1u), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_0.e.x, var_0.e.x, var_0.e.x), var_0.e)), vec3<u32>(0u, 91436u, 15753u) << (global0.xxw % vec3<u32>(32u))), !(!select(vec4<bool>(true, var_0.c.x, false, false), vec4<bool>(false, true, var_0.b, var_0.c.x), var_0.b)), Struct_1(var_0.a, true, !select(var_0.c, var_0.c, vec2<bool>(var_0.c.x, true)), var_0.d, vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + -875f), 1157f, _wgslsmith_f_op_f32(-642f + 603f), _wgslsmith_f_op_f32(298f + 566f))), var_0.d), select(!vec4<bool>(func_1(Struct_1(var_0.e.xz, true, var_0.c, var_0.d, var_0.e), Struct_1(var_0.a, var_0.b, vec2<bool>(var_0.c.x, var_0.c.x), global0.xzz, vec4<f32>(var_0.e.x, var_0.a.x, var_0.e.x, 729f)), vec4<bool>(false, true, var_0.b, var_0.c.x), var_0.a.x), var_0.b, var_0.c.x, var_0.b), !vec4<bool>(all(vec3<bool>(true, var_0.c.x, var_0.b)), any(var_0.c), var_0.b, false), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.c.x, var_0.b, var_0.b, true), vec4<bool>(var_0.b, var_0.b, true, var_0.b)), !vec4<bool>(var_0.c.x, var_0.b, var_0.c.x, false), !var_0.c.x), !vec4<bool>(false, false, var_0.b, var_0.c.x), any(select(var_0.c, var_0.c, false)))), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x + var_0.e.x), 833f), func_2(func_2(Struct_1(var_0.e.wx, false, vec2<bool>(var_0.c.x, var_0.c.x), global0.zzw, var_0.e), vec4<bool>(true, true, var_0.b, var_0.c.x), Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), false, vec2<bool>(false, var_0.c.x), global0.zxw, var_0.e), vec3<u32>(global0.x, 28948u, u_input.a)), vec4<bool>(false, true, false, var_0.b), func_2(Struct_1(vec2<f32>(var_0.e.x, 1147f), var_0.c.x, var_0.c, vec3<u32>(37222u, var_0.d.x, u_input.a), vec4<f32>(var_0.a.x, 1000f, var_0.a.x, var_0.a.x)), vec4<bool>(true, var_0.b, var_0.b, var_0.b), Struct_1(var_0.e.yz, true, var_0.c, vec3<u32>(u_input.a, global0.x, 1u), vec4<f32>(206f, 1458f, var_0.e.x, -270f)), global0.wzy), _wgslsmith_add_vec3_u32(var_0.d, var_0.d)).a), !(_wgslsmith_f_op_f32(exp2(var_0.a.x)) != _wgslsmith_div_f32(var_0.a.x, -159f)), !vec2<bool>(any(vec4<bool>(true, false, var_0.c.x, var_0.b)), true), ~global0.zxx, vec4<f32>(_wgslsmith_f_op_f32(-323f + 390f), 1f, var_0.e.x, _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.d.x, 4294967295u, 1u), countOneBits(vec3<u32>(26397u, u_input.a, 1u))), vec3<u32>(_wgslsmith_mult_u32(global0.x << (7316u % 32u), u_input.a), 18821u & ~global0.x, ~_wgslsmith_mult_u32(1u, global0.x))));
    let var_2 = vec3<u32>(~(~7936u), firstLeadingBit(4294967295u), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(-1244f, 1i);
}

