struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_2,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 387f;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f), 229f));
    global0 = var_0;
    let var_1 = 10185u;
    let var_2 = vec4<u32>(~firstLeadingBit(1u), _wgslsmith_mult_u32(_wgslsmith_add_u32((5959u & var_1) & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 0u, var_1), vec4<u32>(4294967295u, var_1, 247u, 60309u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1, 50791u, 6572u, var_1), vec4<u32>(u_input.a, 29653u, u_input.b.x, var_1)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 76155u, 4294967295u), vec4<u32>(1u, u_input.c.x, u_input.c.x, 1u)))), ~(~31168u) | ((var_1 | var_1) << (23997u % 32u))), var_1, reverseBits(28542u));
    let var_3 = Struct_2(Struct_1(vec2<i32>(-41718i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(13435i, -46142i), vec2<i32>(2147483647i, 1i)), -1i)), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1708f + 1366f) * -1502f), all(vec4<bool>(true, true, false, false))), !vec2<bool>(!(var_0 >= -1000f), true), ~vec3<i32>(-2147483647i, -_wgslsmith_add_i32(-13525i, -1i), 2147483647i), var_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1128f));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(-arg_2.c);
    var var_0 = Struct_4(max(_wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -1208i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a.x, arg_0.x), vec2<i32>(arg_0.x, -2147483647i))), -(arg_2.a ^ vec2<i32>(arg_0.x, arg_0.x))), reverseBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.a, vec2<i32>(arg_2.a.x, arg_0.x)), _wgslsmith_mod_vec2_i32(arg_2.a, arg_2.a), _wgslsmith_div_vec2_i32(vec2<i32>(arg_2.a.x, -13813i), arg_2.a)))), vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(0i, -2147483647i, arg_0.x)), vec3<i32>(1i, arg_2.a.x, 73878i) & vec3<i32>(39892i, arg_2.a.x, arg_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -36056i, arg_2.a.x, -1i) | vec4<i32>(arg_0.x, 0i, arg_0.x, arg_2.a.x), abs(-vec4<i32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_0.x))), i32(-1i) * -2147483647i), Struct_2(arg_2, arg_2.b.yz, abs(vec3<i32>(~arg_0.x, arg_2.a.x, arg_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(exp2(arg_2.c))))))), false, arg_1 & (u_input.c.x >= _wgslsmith_div_u32(~u_input.c.x, 12354u)));
    var var_1 = Struct_2(Struct_1(vec2<i32>(arg_2.a.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, arg_2.a.x, arg_0.x)), vec3<i32>(0i, arg_0.x, arg_2.a.x))), !arg_2.b, arg_2.c, _wgslsmith_div_u32(~u_input.a, 1u & u_input.c.x) <= firstLeadingBit(5203u)), vec2<bool>(false, all(select(select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(false, arg_1, var_0.e, arg_2.d), vec4<bool>(true, false, true, var_0.d)), select(vec4<bool>(arg_2.b.x, false, true, false), vec4<bool>(arg_1, var_0.e, false, var_0.e), true), arg_0.x > var_0.b.x))), vec3<i32>(arg_0.x, (-var_0.b.x | 115512i) << (1u % 32u), ~arg_2.a.x), var_0.c.d);
    let var_2 = Struct_1(~arg_2.a, vec3<bool>(any(select(!vec2<bool>(arg_2.d, true), !var_0.c.a.b.zx, select(vec2<bool>(var_1.b.x, var_0.e), arg_2.b.zz, var_1.a.b.zy))), true, any(!(!arg_2.b.zx))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-882f - _wgslsmith_f_op_f32(-1525f - 1000f))), _wgslsmith_f_op_f32(func_1()))), arg_1);
    var var_3 = !vec2<bool>(var_1.b.x, all(var_1.b));
    return select(vec4<bool>(!arg_1, false, true, false), !(!select(vec4<bool>(false, var_0.d, true, var_0.d), select(vec4<bool>(arg_1, var_1.a.d, false, var_1.a.d), vec4<bool>(false, var_1.b.x, true, var_2.d), vec4<bool>(false, false, arg_2.b.x, var_0.d)), var_0.d)), select(!(!vec4<bool>(var_3.x, true, true, true)), vec4<bool>(all(var_2.b.zy), var_3.x, arg_2.a.x <= _wgslsmith_dot_vec3_i32(vec3<i32>(-4382i, -22075i, -35481i), vec3<i32>(30989i, var_2.a.x, arg_0.x)), var_1.b.x), var_3.x));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> vec2<i32> {
    let var_0 = select(!vec4<bool>(true, !any(vec4<bool>(arg_2, false, arg_2, true)), arg_2, true), vec4<bool>(arg_1.b.x, arg_2, false, false), true);
    var var_1 = arg_1.a;
    let var_2 = Struct_4(vec2<i32>(-2147483647i, abs(1i)), firstLeadingBit(~arg_1.c), Struct_2(arg_1.a, select(select(select(var_1.b.xz, vec2<bool>(false, arg_2), var_0.x), select(vec2<bool>(arg_2, true), var_1.b.yz, var_0.yw), true), select(select(vec2<bool>(var_0.x, false), var_1.b.zy, vec2<bool>(false, false)), arg_1.b, arg_1.b), vec2<bool>(true, true)), arg_1.c, arg_0), any(func_3(vec2<i32>(arg_1.a.a.x, -6628i), true, Struct_1(arg_1.a.a, vec3<bool>(var_0.x, var_0.x, false), 149f, arg_1.b.x))) || var_1.b.x, _wgslsmith_f_op_f32(func_1()) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -652f))));
    let var_3 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(min(var_2.c.d, _wgslsmith_f_op_f32(1137f * -1207f))), 434f, var_1.c);
    let var_4 = u_input.a;
    return max(~(~(vec2<i32>(-1i) * -var_2.a)), ~(~vec2<i32>(-21948i, -1i) & vec2<i32>(firstTrailingBit(var_1.a.x), -var_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-(vec2<i32>(1i, 1i) << (reverseBits(u_input.b.yx) % vec2<u32>(32u))) | (-select(vec2<i32>(11037i, -1i), vec2<i32>(0i, -2147483647i), true) >> ((~u_input.c << (vec2<u32>(u_input.c.x, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))), select(vec3<bool>(true, any(vec3<bool>(true, true, true)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)))), vec3<bool>((u_input.b.x != 25439u) || true, true, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), -1241f, false);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-477f - -1040f)), var_0.c)))) - _wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(trunc(-1157f)))));
    let var_1 = -454f;
    global0 = _wgslsmith_f_op_f32(func_1());
    var var_2 = abs(vec3<i32>(-1i, 0i, var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_0.a, ~vec2<i32>(42860i, var_0.a.x)), _wgslsmith_div_vec2_i32(~var_0.a, func_2(var_1, Struct_2(Struct_1(vec2<i32>(2147483647i, var_2.x), vec3<bool>(var_0.b.x, true, var_0.d), var_1, var_0.d), vec2<bool>(var_0.d, true), vec3<i32>(var_2.x, 2147483647i, -9894i), -818f), var_0.b.x))) << (~(~(~u_input.b.x)) % 32u), vec4<u32>(0u, _wgslsmith_dot_vec4_u32(firstLeadingBit(countOneBits(vec4<u32>(u_input.c.x, u_input.a, 49202u, u_input.a))), countOneBits(vec4<u32>(16824u, u_input.c.x, u_input.c.x, 71282u) ^ vec4<u32>(1u, u_input.c.x, 1u, u_input.a))), reverseBits(~u_input.a) & reverseBits(~u_input.c.x), 4294967295u), _wgslsmith_dot_vec3_i32(abs(select(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, var_0.a.x, -13121i), vec3<i32>(var_0.a.x, 34932i, var_2.x)), countOneBits(vec3<i32>(var_2.x, -55271i, var_2.x)), vec3<bool>(var_0.b.x, true, true))), firstLeadingBit(abs(reverseBits(vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x))))), var_2.yy);
}

