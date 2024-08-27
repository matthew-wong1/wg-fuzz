struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: bool;

var<private> global2: i32;

var<private> global3: u32 = 1u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = Struct_2(arg_3.a, false, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -134f) * _wgslsmith_f_op_f32(min(arg_0.c.c, -226f))))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-499f - _wgslsmith_f_op_f32(arg_3.c.c - 1000f)) - arg_3.c.c), _wgslsmith_add_vec3_i32(arg_0.c.d, -arg_3.c.d), arg_2.c.b), true, false);
    var var_1 = !vec4<bool>(arg_0.a.x < u_input.a, arg_0.b | true, arg_3.b, true);
    global1 = true;
    let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(34543i, ~arg_1.d.x, arg_2.c.d.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, min(-1i, arg_2.c.d.x), -arg_1.d.x), vec3<i32>(-42743i, u_input.b & -1i, 0i)), var_0.c.d << (~max(arg_0.a, arg_3.a) % vec3<u32>(32u))) | vec3<i32>(arg_3.c.d.x, 40911i, ~(_wgslsmith_sub_i32(-49608i, 19846i) >> (arg_3.a.x % 32u)));
    global3 = countOneBits(arg_3.a.x & ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(31396u, arg_0.a.x, u_input.a, arg_0.a.x), vec4<u32>(0u, 4294967295u, 31252u, arg_3.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, 1u, var_0.a.x, var_0.a.x), vec4<u32>(var_0.a.x, arg_2.a.x, 1u, 1u))));
    return !(!(!vec2<bool>(false, 39872u < arg_3.a.x)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = true != any(!func_3(arg_1, arg_1.c, arg_1, Struct_2(vec3<u32>(arg_1.a.x, arg_1.a.x, u_input.a), true, arg_1.c, true, arg_2)));
    let var_1 = 4294967295u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.c.c - -1082f))))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(386f, 1541f, arg_3.x))))) - -1011f), _wgslsmith_mult_vec3_i32(select(vec3<i32>(_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b, _wgslsmith_dot_vec3_i32(arg_1.c.d, arg_1.c.d)), vec3<i32>(_wgslsmith_add_i32(u_input.b, 0i), arg_1.c.d.x, countOneBits(u_input.b)), arg_3.x & arg_2), select(~vec3<i32>(31663i, arg_1.c.d.x, -21381i), firstTrailingBit(select(arg_1.c.d, arg_1.c.d, vec3<bool>(arg_2, arg_3.x, arg_1.c.b))), false)), arg_3.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x - 468f), var_2.c))), -1080f, 694f, var_2.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1108f * global0.x) + _wgslsmith_f_op_f32(-global0.x)), 403f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.c.a, 1002f))))), arg_3));
    let var_4 = var_2;
    return Struct_1(-2340f, all(select(arg_3.xyz, select(arg_3.ywx, !arg_3.xww, !arg_3.zwx), !(!arg_3.x))), _wgslsmith_f_op_f32(f32(-1f) * -2117f), ~max(-countOneBits(var_4.d), vec3<i32>(firstLeadingBit(-3918i), 0i, ~(-1i))), func_3(Struct_2(arg_1.a, any(arg_3), Struct_1(1475f, true, -587f, var_2.d, var_2.b), true, true), var_2, arg_1, Struct_2(vec3<u32>(var_1, 37530u, u_input.a) >> (vec3<u32>(arg_1.a.x, u_input.a, u_input.a) % vec3<u32>(32u)), all(arg_3.zzx), arg_1.c, !var_4.e, arg_2)).x | all(!arg_3));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = arg_3;
    let var_1 = ~(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(var_0.a.x, u_input.a, 5240u, 39945u) ^ vec4<u32>(66451u, arg_0, arg_3.a.x, 0u)), vec4<u32>(49139u, 1u, min(0u, u_input.a), ~arg_3.a.x), vec4<u32>(0u, arg_0, _wgslsmith_mod_u32(0u, arg_0), var_0.a.x)) << (~(~select(vec4<u32>(arg_0, 4294967295u, 1u, 0u), vec4<u32>(0u, arg_0, u_input.a, u_input.a), vec4<bool>(false, arg_3.d, false, var_0.d))) % vec4<u32>(32u)));
    let var_2 = arg_3;
    global3 = _wgslsmith_mod_u32(arg_3.a.x, ~firstLeadingBit(firstTrailingBit(var_0.a.x) << (~85548u % 32u)));
    var var_3 = var_1.x;
    return reverseBits(~abs(~4071u) & (1u >> (((arg_0 ^ var_0.a.x) | 0u) % 32u)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = -1000f;
    global1 = all(vec2<bool>(all(!vec3<bool>(false, arg_0.b, arg_0.e)), !(!(!arg_0.d))));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -184f)), var_0) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1747f, -2583f) * vec2<f32>(global0.x, -2329f))))))));
    global2 = -1867i;
    var var_1 = vec2<u32>(~(arg_0.a.x ^ func_4(~u_input.a, func_2(false, Struct_2(vec3<u32>(u_input.a, u_input.a, 0u), arg_0.e, Struct_1(var_0, arg_0.e, -1000f, vec3<i32>(arg_0.c.d.x, -2147483647i, -1i), arg_0.d), arg_0.b, arg_0.d), arg_0.d, vec4<bool>(arg_0.d, false, false, true)), all(vec2<bool>(true, false)), Struct_2(vec3<u32>(67180u, 1u, u_input.a), arg_0.d, arg_0.c, arg_0.e, arg_0.c.b))), u_input.a);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~max(39923u, func_1(Struct_2(vec3<u32>(1u, u_input.a, u_input.a), false, Struct_1(global0.x, false, 371f, vec3<i32>(13444i, u_input.b, 1i), true), true, false))));
    global2 = -40266i;
    global2 = 25424i;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1364f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-685f, global0.x)))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(1645f, global0.x), global0.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-665f, 664f)))))))));
    global3 = 18478u;
    var var_1 = firstTrailingBit(select(~min(vec4<i32>(-13382i, u_input.b, u_input.b, u_input.b), vec4<i32>(-2147483647i, u_input.b, -2147483647i, u_input.b)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, 40303i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, -15021i, u_input.b, -16988i)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)))) | min(~max(vec4<i32>(u_input.b, -39599i, -2147483647i, -2147483647i), vec4<i32>(-1i, u_input.b, -57708i, u_input.b)), countOneBits(vec4<i32>(u_input.b, _wgslsmith_clamp_i32(u_input.b, -12418i, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(-1i, u_input.b, u_input.b)), -2147483647i)));
    var var_2 = select(_wgslsmith_mod_i32(~var_1.x, _wgslsmith_dot_vec3_i32(-firstTrailingBit(var_1.xzx), var_1.zxy | var_1.zyx)), _wgslsmith_dot_vec2_i32(var_1.ww, vec2<i32>(0i, -55709i)), all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), func_3(Struct_2(vec3<u32>(0u, var_0, 0u), true, Struct_1(702f, true, -1706f, var_1.zyy, true), true, false), Struct_1(global0.x, false, -690f, vec3<i32>(-5193i, var_1.x, -1i), true), Struct_2(vec3<u32>(43106u, var_0, 10780u), false, Struct_1(579f, false, 1837f, var_1.ywy, false), false, true), Struct_2(vec3<u32>(47397u, var_0, var_0), true, Struct_1(-1063f, true, 1634f, var_1.www, false), true, false)), select(false, true, true) && true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_0 >> (u_input.a % 32u)) & u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(386f, global0.x))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-319f, global0.x) - vec2<f32>(-1000f, global0.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-437f, global0.x)))))), (vec3<u32>(var_0, ~30148u, ~4294967295u) | vec3<u32>(_wgslsmith_add_u32(52871u, u_input.a), 29498u << (u_input.a % 32u), 31055u)) & (firstLeadingBit(abs(vec3<u32>(u_input.a, var_0, 18763u))) ^ vec3<u32>(1u, 1u, 1u)), _wgslsmith_dot_vec2_i32(abs(_wgslsmith_mod_vec2_i32(var_1.yw, vec2<i32>(-1i, u_input.b)) & ~var_1.xw), var_1.zz));
}

