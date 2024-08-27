struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
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

var<private> global0: vec3<i32> = vec3<i32>(-13935i, 77004i, -48680i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = -40430i;
    let var_1 = vec2<f32>(-781f, -467f);
    var var_2 = -409f;
    var var_3 = !(!all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), any(vec2<bool>(true, false)))));
    global0 = vec3<i32>(-1i) * -(-abs(vec3<i32>(9205i, global0.x, global0.x)) >> (u_input.a % vec3<u32>(32u)));
    return var_1.x < var_1.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = arg_2;
    global0 = vec3<i32>(global0.x, 31327i, arg_0.c.a);
    global0 = vec3<i32>(~(i32(-1i) * -2147483647i), 2721i, -1i);
    var var_1 = var_0.a.x;
    global0 = vec3<i32>(select(arg_0.c.d, 0i, (_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.c.a, -97738i), vec3<i32>(global0.x, global0.x, 0i)) >= ~global0.x) & (arg_1.x || func_3())), 3750i, _wgslsmith_add_i32(reverseBits(select(arg_0.c.d, -arg_0.c.d, arg_1.x)), firstLeadingBit(firstTrailingBit(-17617i))));
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = u_input.b.xxz;
    var var_1 = !(763f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x)));
    let var_2 = select(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, all(vec2<bool>(false, true))), vec2<bool>(true, true)), !(!select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true))), all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), true)));
    var var_3 = reverseBits(max(_wgslsmith_mult_vec4_i32(-vec4<i32>(global0.x, -11011i, global0.x, -1i), vec4<i32>(2147483647i, 3733i, arg_0 >> (4294967295u % 32u), i32(-1i) * -11158i)), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-5043i, arg_0, 1i, -55420i), vec4<i32>(arg_0, -18153i, global0.x, 13717i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(171u, 1u, 47199u, arg_3.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, arg_3.x)) % vec4<u32>(32u)))));
    global0 = vec3<i32>(arg_0, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-min(var_3.x, var_3.x), abs(_wgslsmith_mult_i32(global0.x, arg_0))), var_3.x), min(~var_3.x, ~(-1420i)) << (~5692u % 32u));
    return Struct_1(_wgslsmith_dot_vec2_i32(select(-_wgslsmith_div_vec2_i32(var_3.wy, global0.zy), global0.yz, true), firstLeadingBit(firstLeadingBit(vec2<i32>(var_3.x, -1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-799f + _wgslsmith_f_op_f32(abs(2514f))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1652f)))))), true, -34079i, var_2.x);
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(arg_0.c.b + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1041f)))));
    var var_2 = func_4(~abs(~(-42537i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.b))), -1721f)), func_2(arg_0, var_0.a, Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.b, -482f) + vec2<f32>(-192f, var_1)), vec2<f32>(var_1, -493f)))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(58595u, 1u), u_input.b.x, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(48556u, 1u, u_input.a.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u)), ~u_input.b.zzz)), u_input.a.x));
    var_2 = Struct_1(~arg_0.c.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.b.x)))), -483f), false, 69602i, false);
    var var_3 = !vec4<bool>(var_2.c, var_0.a.x, all(select(select(vec2<bool>(arg_0.a.x, false), vec2<bool>(true, false), var_0.a.zy), !vec2<bool>(var_2.e, var_0.a.x), !vec2<bool>(arg_0.a.x, var_0.a.x))), all(var_0.a));
    return func_2(arg_0, !vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 29152u, u_input.b.x, 62954u), vec4<u32>(55319u, 4294967295u, 4294967295u, 58823u)) > (40919u ^ u_input.b.x), false, -2147483647i != -arg_0.c.d), func_2(Struct_2(!var_0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.c.b, 542f))), arg_0.b), arg_0.c), !(!(!vec3<bool>(true, var_0.a.x, arg_0.a.x))), func_2(arg_0, !select(var_0.a, vec3<bool>(arg_0.a.x, var_0.c.e, var_3.x), false), Struct_3(_wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(arg_0.b.x, 683f))))));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    var var_0 = false;
    global0 = firstLeadingBit(-vec3<i32>(_wgslsmith_add_i32(countOneBits(-3930i), global0.x), 40918i | -global0.x, global0.x));
    return func_4(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -237f), Struct_3(vec2<f32>(arg_0.a.x, arg_0.a.x)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(53864u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)) | u_input.a.xz);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = ~u_input.b;
    var var_1 = -1330f;
    var var_2 = func_4(arg_1.d, -225f, Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))), func_1(Struct_2(vec3<bool>(true, arg_2, true), vec2<f32>(847f, arg_3), arg_1)).a))), ~select(select(var_0.zw, ~var_0.xz, vec2<bool>(arg_1.e, arg_1.e)), u_input.b.zy, select(select(vec2<bool>(arg_2, true), vec2<bool>(true, arg_1.c), true), vec2<bool>(true, true), vec2<bool>(false, arg_2))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -974f);
    var_2 = arg_1;
    return 28980i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(_wgslsmith_div_i32(1i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-7011i, -22714i, 36867i), ~2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -799f), false, func_6(_wgslsmith_div_f32(-413f, 1829f), func_5(func_1(Struct_2(vec3<bool>(true, true, false), vec2<f32>(187f, 891f), Struct_1(2147483647i, 1797f, true, 1i, true))), true), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(-1i, -942f, Struct_3(vec2<f32>(1000f, 884f)), u_input.a.zx).b))), (func_6(_wgslsmith_f_op_f32(-301f * 584f), func_4(-2147483647i, -400f, Struct_3(vec2<f32>(-227f, -152f)), u_input.a.yy), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(floor(1051f))) ^ _wgslsmith_div_i32(global0.x & -5044i, -10263i)) <= ~global0.x);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.b)), -194f, !var_0.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f), _wgslsmith_f_op_f32(var_0.b - var_0.b)), false)) * var_0.b), all(!vec2<bool>(var_0.c, !var_0.e)), _wgslsmith_mod_i32(~(-reverseBits(1i)), var_0.d ^ global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, 330f) * func_2(Struct_2(vec3<bool>(var_0.c, false, false), vec2<f32>(-549f, 1836f), Struct_1(var_0.a, 1000f, var_0.c, var_0.d, var_0.c)), vec3<bool>(false, var_0.c, false), Struct_3(vec2<f32>(var_0.b, var_0.b))).a.x)) != 370f);
    global0 = vec3<i32>(var_0.a, firstTrailingBit(~countOneBits(var_0.d) | 13213i), _wgslsmith_sub_i32(i32(-1i) * -global0.x, -37682i >> (~select(u_input.b.x, 4294967295u, var_0.c) % 32u)));
    global0 = abs(select(vec3<i32>(global0.x ^ 2147483647i, global0.x, var_0.a), ~vec3<i32>(-var_0.d, 2147483647i >> (1u % 32u), -36203i), !vec3<bool>(var_0.e, var_0.e, var_0.e)));
    let var_1 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, u_input.b.x) & ~4294967295u, u_input.a.x) ^ 39826u);
}

