struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(359f, -286f, 890f, -958f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    let var_0 = !arg_0.a.b;
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1053f), _wgslsmith_f_op_f32(arg_0.b.x + 1212f), -637f, global0.x))))));
    var var_1 = Struct_2(u_input.a, select(!arg_1.b, vec3<bool>(true, false, arg_0.a.b.x), var_0.x));
    let var_2 = min(1u, 1u);
    global0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-526f, _wgslsmith_f_op_f32(select(-371f, 1718f, arg_1.b.x))) * _wgslsmith_f_op_f32(540f + _wgslsmith_f_op_f32(global0.x - -790f))), _wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(sign(arg_0.b.x)), true)), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(111f, 723f), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(round(global0.x))))))));
    return 1966f;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = all(vec4<bool>(true, false, any(vec4<bool>(!arg_0, arg_1, true || arg_1, true)), true));
    var var_1 = vec3<bool>(true, !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))) >= 550f), arg_1);
    var var_2 = Struct_3(Struct_2(u_input.a, !(!(!vec3<bool>(false, var_1.x, false)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)))), -479f, _wgslsmith_f_op_f32(-184f + _wgslsmith_f_op_f32(-1150f - 1000f)), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec2<u32>(u_input.a.x, 35694u), vec3<bool>(var_1.x, var_0, false)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, -991f, global0.x, -263f))), vec3<i32>(arg_2, arg_2, 45568i), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_2(vec2<u32>(58256u, u_input.a.x), vec3<bool>(false, arg_0, arg_1)), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 37573u, 1045u), vec4<u32>(0u, u_input.a.x, 61538u, u_input.a.x)))))), select(~vec3<i32>(~arg_2, -30201i, -2985i), vec3<i32>(~(-arg_2), ~select(arg_2, arg_2, false), _wgslsmith_add_i32(~63638i, 0i)), !(_wgslsmith_sub_u32(u_input.a.x, 76419u) <= 1u)), ~(~firstTrailingBit(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u))));
    var var_3 = _wgslsmith_clamp_vec3_i32(-select(var_2.c, var_2.c, select(select(vec3<bool>(arg_1, true, false), vec3<bool>(var_2.a.b.x, var_2.a.b.x, false), var_2.a.b), select(var_2.a.b, vec3<bool>(false, false, var_1.x), var_2.a.b), vec3<bool>(arg_0, var_2.a.b.x, var_0))), _wgslsmith_div_vec3_i32(vec3<i32>(3091i, select(-15903i, arg_2, true), -arg_2), -(var_2.c ^ var_2.c)) ^ ((vec3<i32>(65801i, -2147483647i, var_2.c.x) << (vec3<u32>(70529u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) << (~vec3<u32>(u_input.a.x, 46099u, 1u) % vec3<u32>(32u))), vec3<i32>(var_2.c.x, ~_wgslsmith_add_i32(-20012i, -67730i), _wgslsmith_add_i32(max(1i, -69217i), -firstLeadingBit(-1i))));
    let var_4 = -(arg_2 >> (4294967295u % 32u));
    return _wgslsmith_f_op_f32(-global0.x);
}

fn func_1() -> vec3<bool> {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1799f, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(220f, global0.x, global0.x, 807f) + vec4<f32>(413f, global0.x, 373f, -458f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, -1000f, global0.x, -1627f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1187f, global0.x, -2017f, global0.x), vec4<f32>(1160f, global0.x, 1064f, global0.x), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1181f, -1000f, -633f, global0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(min(global0.x, 948f)), _wgslsmith_f_op_f32(step(-512f, global0.x)), _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) - _wgslsmith_f_op_f32(1804f * global0.x)), _wgslsmith_f_op_f32(func_2(1281f >= global0.x, false, 45700i)), _wgslsmith_f_op_f32(global0.x + -142f))));
    var var_0 = vec4<u32>(max(~u_input.a.x, u_input.a.x), ~u_input.a.x, 124149u, u_input.a.x);
    var_0 = vec4<u32>(_wgslsmith_clamp_u32(var_0.x, select(var_0.x, 1u, true), u_input.a.x), 0u, ~u_input.a.x, 65535u & select(_wgslsmith_mod_u32(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 27057u, 39000u), vec4<u32>(0u, u_input.a.x, 107314u, 25891u))), _wgslsmith_add_u32(~47668u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.x, 1u), var_0.zwx)), !any(vec3<bool>(true, true, false))));
    var var_1 = _wgslsmith_mult_vec2_i32(~select(~(vec2<i32>(0i, -1i) >> (var_0.ww % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-2147483647i, 2221i)), -vec2<i32>(59364i, -2147483647i)), !select(vec2<bool>(true, false), vec2<bool>(false, true), false)), _wgslsmith_div_vec2_i32(vec2<i32>(countOneBits(~(-43711i)), _wgslsmith_div_i32(2147483647i, -19361i) << (min(u_input.a.x, 4294967295u) % 32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 1i)), -select(vec2<i32>(0i, 1i), vec2<i32>(22320i, -6616i), vec2<bool>(false, true)))));
    var var_2 = Struct_2(vec2<u32>(u_input.a.x, 1u), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), var_0.x >= u_input.a.x, select(true, true, true)), vec3<bool>(!any(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global0.x) < global0.x), vec3<bool>(any(vec3<bool>(true, false, true)), true, select(all(vec4<bool>(false, false, true, false)), true, true))));
    return select(vec3<bool>(true, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(var_2.a, var_2.b), vec4<f32>(global0.x, 141f, -1000f, 868f), vec3<i32>(2147483647i, var_1.x, -2147483647i), vec4<u32>(32449u, 4294967295u, var_2.a.x, u_input.a.x)), Struct_2(var_0.wy, vec3<bool>(true, true, var_2.b.x)), ~vec2<u32>(u_input.a.x, var_0.x))) < -277f, true), vec3<bool>(!(global0.x == _wgslsmith_f_op_f32(-global0.x)), any(select(select(vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.b.x), vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, true), false), vec4<bool>(false, true, true, var_2.b.x), true)), true), vec3<bool>(var_2.b.x, var_2.b.x, all(vec3<bool>(select(var_2.b.x, false, var_2.b.x), 0i <= var_1.x, var_2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<u32>(firstLeadingBit(select(0u, 28565u, select(true, true, true))), ~abs(_wgslsmith_div_u32(u_input.a.x, 1u))), !select(func_1(), vec3<bool>(true, any(vec4<bool>(true, false, true, true)), true), vec3<bool>(false, true, true)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.zzy - vec3<f32>(-1000f, global0.x, global0.x)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1905f, global0.x)), vec3<f32>(global0.x, global0.x, global0.x)))))), firstLeadingBit(vec3<i32>(1i, 1i, 1i)));
    var_0 = Struct_2(vec2<u32>(u_input.a.x, ~_wgslsmith_mult_u32(~50642u, ~u_input.a.x)), vec3<bool>(u_input.a.x < ~4294967295u, all(var_0.b.xy), true));
    let var_2 = _wgslsmith_mod_vec2_u32(var_0.a, _wgslsmith_add_vec2_u32(vec2<u32>(~var_0.a.x, u_input.a.x & 16468u), vec2<u32>(var_0.a.x, var_0.a.x & 57488u)) << (var_0.a % vec2<u32>(32u)));
    var var_3 = vec3<i32>(abs(-_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-12634i, 33102i)), select(var_1.b.yx, var_1.b.xz, var_0.b.xx))), -(_wgslsmith_sub_i32(-10273i, var_1.b.x) >> (1u % 32u)), _wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, var_1.b.x), var_1.b.x));
    var var_4 = max(_wgslsmith_div_vec3_i32(vec3<i32>(28452i, 1i, var_1.b.x), reverseBits(vec3<i32>(_wgslsmith_clamp_i32(-48718i, var_1.b.x, var_3.x), var_3.x, var_1.b.x))), -select(vec3<i32>(~(-1464i), 1i, var_1.b.x), ~vec3<i32>(-17813i, 3395i, 2147483647i), vec3<bool>(false, true, var_0.b.x)));
    let var_5 = 65812i;
    let var_6 = Struct_3(Struct_2(vec2<u32>(_wgslsmith_add_u32(82928u, u_input.a.x), abs(var_2.x) & 4730u), var_0.b), vec4<f32>(_wgslsmith_f_op_f32(floor(-665f)), global0.x, _wgslsmith_f_op_f32(abs(var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-841f, _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -721f) * _wgslsmith_f_op_f32(-742f + global0.x)))), ~_wgslsmith_sub_vec3_i32(firstTrailingBit(var_1.b), vec3<i32>(0i, 34551i, 2147483647i) << (~vec3<u32>(var_0.a.x, u_input.a.x, var_2.x) % vec3<u32>(32u))), vec4<u32>(34390u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(57236u, 53997u, var_2.x), vec3<u32>(var_0.a.x, var_0.a.x, 1u)), u_input.a.x, _wgslsmith_sub_u32(var_0.a.x, 4294967295u)), vec4<u32>(abs(1u), ~0u, min(0u, u_input.a.x), 0u)), 1u, var_2.x));
    var_3 = vec3<i32>(abs(var_4.x), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 35812i >> (var_0.a.x % 32u), _wgslsmith_mod_i32(2147483647i, -1i)), ~vec3<i32>(-1i, var_3.x, 2147483647i)), _wgslsmith_sub_vec3_i32(var_6.c, var_1.b)), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-357f - _wgslsmith_f_op_f32(round(global0.x))), var_0.a);
}

