struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<u32>) -> bool {
    let var_0 = vec4<f32>(arg_1.x, 2081f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * arg_1.x), _wgslsmith_f_op_f32(arg_1.x - arg_1.x));
    let var_1 = u_input.b.x;
    global0 = true;
    global0 = 1u != ~(~countOneBits(~arg_2.x));
    global0 = arg_2.x != var_1;
    return select(all(vec2<bool>(true, true)), (u_input.d == u_input.c.x) != all(vec2<bool>(true, true)), false);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(~u_input.b.x, u_input.b.x)));
    global0 = !(!any(vec2<bool>(func_3(Struct_2(vec2<u32>(1u, var_0.a.x)), vec3<f32>(560f, 2160f, -1231f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), true)));
    global0 = -25870i <= _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.d >> ((u_input.b.x >> (u_input.b.x % 32u)) % 32u), min(2147483647i, u_input.d) & (i32(-1i) * -2147483647i), 1i));
    var_0 = Struct_2(_wgslsmith_add_vec2_u32(u_input.b << ((vec2<u32>(1u, 0u) & countOneBits(vec2<u32>(var_0.a.x, 80001u))) % vec2<u32>(32u)), vec2<u32>(1u, _wgslsmith_clamp_u32(1u, 1u, u_input.b.x))));
    let var_1 = ~select(_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(~var_0.a.x, ~40143u)), (firstTrailingBit(vec2<u32>(var_0.a.x, 0u)) & u_input.b) | ~(u_input.b << (vec2<u32>(var_0.a.x, 4294967295u) % vec2<u32>(32u))), all(vec4<bool>(any(vec4<bool>(false, true, true, true)), true, any(vec4<bool>(false, true, false, true)), true)));
    return Struct_2(var_1);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(u_input.c, vec4<u32>(~(func_2().a.x >> (23016u % 32u)), ~25170u, 0u, 4294967295u), 0i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(358f - _wgslsmith_f_op_f32(1319f - -611f))), _wgslsmith_f_op_f32(f32(-1f) * -641f), 615f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-246f - 1206f), _wgslsmith_f_op_f32(1863f - 1626f))))), any(!vec3<bool>(false, func_3(arg_1, vec3<f32>(-1129f, 559f, 2730f), vec3<u32>(1574u, arg_1.a.x, arg_1.a.x)), true)));
    var var_1 = var_0;
    var var_2 = var_1.d.x;
    var_1 = var_0;
    var var_3 = vec2<bool>(!arg_0, -(var_0.c | u_input.d) != -_wgslsmith_mod_i32(countOneBits(u_input.a.x), firstTrailingBit(54636i)));
    return arg_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>) -> Struct_2 {
    global0 = true;
    var var_0 = arg_1.x;
    var_0 = 1229f;
    var var_1 = Struct_2(_wgslsmith_sub_vec2_u32(u_input.b, u_input.b));
    let var_2 = Struct_2(vec2<u32>(2096u, ~1u));
    return func_4((_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.c.x) | vec3<i32>(u_input.d, 37907i, 1i), u_input.c.xzz) != ~u_input.a.x) && false, func_2());
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = ~arg_0.a.x;
    let var_1 = u_input.a.x ^ u_input.a.x;
    var var_2 = Struct_2(vec2<u32>(min(min(max(0u, 0u), u_input.b.x), 70601u), func_4(true, Struct_2(~vec2<u32>(1u, 22936u))).a.x));
    let var_3 = ~(~func_2().a);
    var var_4 = true;
    return Struct_1(u_input.a, ~(~vec4<u32>(~24105u, 1u, u_input.b.x, _wgslsmith_mod_u32(9814u, 13669u))), -_wgslsmith_add_i32(firstTrailingBit(-26088i) | countOneBits(-1i), var_1), arg_2, !all(vec4<bool>(var_2.a.x <= 1u, any(vec2<bool>(false, true)), select(false, false, true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = func_5(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-180f, 918f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-767f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(419f, 529f, _wgslsmith_f_op_f32(trunc(-925f)), -1187f)), vec4<f32>(_wgslsmith_f_op_f32(-1748f + _wgslsmith_f_op_f32(f32(-1f) * -1797f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(560f + _wgslsmith_f_op_f32(1045f + -667f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(468f - _wgslsmith_f_op_f32(ceil(-889f)))), 1f));
    var var_1 = _wgslsmith_dot_vec3_u32(var_0.b.zww, var_0.b.zxy << (var_0.b.wzz % vec3<u32>(32u)));
    var_1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(~(~u_input.b), func_1(_wgslsmith_f_op_vec2_f32(step(var_0.d.yx, vec2<f32>(var_0.d.x, 245f))), _wgslsmith_f_op_vec2_f32(select(var_0.d.zx, vec2<f32>(var_0.d.x, var_0.d.x), var_0.e))).a), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(firstLeadingBit(var_0.b.x), ~91160u), max(_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(1u, u_input.b.x), var_0.b.yz), u_input.b | u_input.b), var_0.b.zy)));
    var_1 = ~(~func_5(Struct_2(~vec2<u32>(var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-var_0.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.x, var_0.d.x, -264f, -1465f), var_0.d)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(296f, -406f, var_0.d.x, -1000f) * var_0.d))).b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), 1451f, _wgslsmith_f_op_f32(-var_0.d.x), 1171f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.d.x, 1000f, var_0.d.x)) + var_0.d)) + _wgslsmith_f_op_vec4_f32(-var_0.d)), var_0.b.xxx);
}

