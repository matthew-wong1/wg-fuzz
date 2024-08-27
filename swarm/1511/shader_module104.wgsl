struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(true, Struct_3(vec4<u32>(1u, 4294967295u, 4294967295u, 48199u))), Struct_4(false, Struct_3(vec4<u32>(0u, 1u, 1u, 4294967295u))), Struct_4(false, Struct_3(vec4<u32>(30149u, 4294967295u, 9142u, 0u))), Struct_4(true, Struct_3(vec4<u32>(17958u, 1u, 1u, 59158u))), Struct_4(true, Struct_3(vec4<u32>(1u, 22023u, 1u, 1u))), Struct_4(false, Struct_3(vec4<u32>(1u, 44705u, 0u, 4294967295u))), Struct_4(true, Struct_3(vec4<u32>(0u, 50002u, 1u, 47876u))), Struct_4(false, Struct_3(vec4<u32>(4294967295u, 21930u, 18379u, 4294967295u))));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_4, 8>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1118f, _wgslsmith_f_op_f32(1240f + -144f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-210f, 676f), vec2<f32>(-958f, -382f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1545f)))), !vec4<bool>(any(vec4<bool>(false, false, false, true)), all(vec2<bool>(true, false)), true, true)));
    let var_1 = all(!var_0.a.c);
    let var_2 = Struct_3(~vec4<u32>(~u_input.c.x, abs(48242u), 0u, u_input.e));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.b, 1640f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.a.a - _wgslsmith_f_op_vec2_f32(var_0.a.a * vec2<f32>(var_0.a.b, var_0.a.a.x)))))), !(any(var_0.a.c) & ((336f != var_0.a.b) & var_0.a.c.x))));
    return var_0.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    global0 = array<Struct_4, 8>();
    var var_0 = -_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(2147483647i, -1i), vec2<i32>(-15359i, 0i)), vec2<i32>(16187i, -1i) << (u_input.b.yy % vec2<u32>(32u))), _wgslsmith_add_i32(~2147483647i, 2147483647i), 1i, 0i >> (firstLeadingBit(u_input.d.x) % 32u)), vec4<i32>(1i, 1i, 1i, 1i) << (~(~u_input.c) % vec4<u32>(32u)));
    let var_1 = ~0u;
    var_0 = _wgslsmith_mod_vec4_i32(abs(~firstTrailingBit(vec4<i32>(-16790i, var_0.x, var_0.x, var_0.x) & vec4<i32>(var_0.x, var_0.x, -19853i, 34584i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.xyy, vec3<i32>(var_0.x, -2147483647i, 40162i)), var_0.zwz), -2147483647i, -var_0.x), firstTrailingBit((vec4<i32>(-1i, var_0.x, var_0.x, -2147483647i) >> (u_input.c % vec4<u32>(32u))) | ~vec4<i32>(-18963i, -1i, var_0.x, 16242i)), -countOneBits(min(vec4<i32>(var_0.x, -1i, -2147483647i, -1i), vec4<i32>(0i, var_0.x, 1i, 0i)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a - arg_0.a))), -1525f, !select(!vec4<bool>(arg_0.c.x, arg_0.c.x, false, true), select(arg_0.c, arg_0.c, arg_0.c), !arg_1.x)));
    return 33245u;
}

fn func_1(arg_0: i32) -> Struct_3 {
    global0 = array<Struct_4, 8>();
    global0 = array<Struct_4, 8>();
    let var_0 = vec3<bool>(true, true, all(vec2<bool>(true, true)));
    global0 = array<Struct_4, 8>();
    var var_1 = Struct_2(func_2());
    return Struct_3(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(func_3(var_1.a, var_0), u_input.e), _wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.d.x, 13512u)))), ~abs(abs(u_input.b.x)), _wgslsmith_mod_u32(~abs(u_input.a.x), 12516u), 1u));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    var var_0 = vec3<bool>(arg_0.a, all(func_2().c.yww), all(!select(!vec2<bool>(arg_0.a, false), vec2<bool>(arg_1, false), arg_0.a)));
    var_0 = !(!vec3<bool>(arg_1, var_0.x, false));
    let var_1 = Struct_3(arg_2.a);
    let var_2 = vec2<bool>(true, all(vec3<bool>(arg_1, arg_0.a, true)));
    let var_3 = arg_2.a.x;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(-756f, _wgslsmith_f_op_f32(1453f - -1874f)), select(true, any(vec3<bool>(var_2.x, arg_1, false)), arg_3 == -47479i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(165f, 197f)), vec4<bool>(false, arg_0.a, arg_0.a, (~var_1.a.x == u_input.e) | (_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, -2147483647i), vec2<i32>(arg_3, 26505i)) > arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(all(vec4<bool>(true, true, u_input.c.x < 44700u, all(vec3<bool>(false, true, false)))), Struct_3(u_input.b)), !all(vec2<bool>(true, any(vec3<bool>(false, false, false)))), func_1(-2579i), _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 2147483647i), countOneBits(vec2<i32>(2147483647i, 17085i))), -_wgslsmith_dot_vec3_i32(vec3<i32>(-37147i, -2629i, 1i) >> (vec3<u32>(u_input.a.x, u_input.c.x, u_input.b.x) % vec3<u32>(32u)), vec3<i32>(49622i, -19353i, 10331i) << (u_input.b.yxw % vec3<u32>(32u)))));
    let var_1 = func_1(-(select(-1i, -50191i, all(var_0.c.xy)) ^ _wgslsmith_mod_i32(max(18474i, 0i), 1i)));
    global0 = array<Struct_4, 8>();
    var var_2 = func_1(-23022i >> (firstTrailingBit(~var_1.a.x) % 32u));
    let var_3 = firstLeadingBit(abs(var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, u_input.b.x, 5493u), func_4(Struct_4(_wgslsmith_f_op_f32(var_0.b * 1682f) != _wgslsmith_f_op_f32(-var_0.b), Struct_3(var_1.a)), var_0.c.x || (var_0.c.x || false), func_1(firstTrailingBit(-28124i) >> (var_2.a.x % 32u)), max(-(~(-1i)), -37119i)).a, vec4<u32>(var_2.a.x, u_input.c.x << (reverseBits(var_3) % 32u), var_3, select(~func_3(var_0, var_0.c.zxw), var_2.a.x, func_4(Struct_4(true, Struct_3(var_2.a)), var_0.c.x, func_1(6862i), -15837i).c.x)), _wgslsmith_f_op_f32(func_2().b + -206f), vec3<u32>(~u_input.c.x, var_3, 9014u ^ (_wgslsmith_mult_u32(var_3, var_1.a.x) & var_1.a.x)));
}

