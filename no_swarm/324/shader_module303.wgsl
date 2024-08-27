struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<f32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 1u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = -25001i;
    global1 = ~vec2<u32>(u_input.b.x, _wgslsmith_add_u32(~12260u, arg_0.b.a.x));
    var var_1 = arg_2.yz;
    global0 = array<Struct_1, 26>();
    let var_2 = arg_0.c.yww;
    return !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
}

fn func_2() -> u32 {
    var var_0 = !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(626f + 565f) * -561f) == _wgslsmith_f_op_f32(round(-264f)), true, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -730f);
    var_0 = vec3<bool>(false, var_0.x, all(!func_3(Struct_3(u_input.d, Struct_2(u_input.b.zz), vec4<f32>(var_1, 566f, 1060f, var_1), u_input.b.xz, Struct_1(global1.x)), Struct_2(u_input.b.zx), u_input.a, Struct_3(0i, Struct_2(u_input.b.zz), vec4<f32>(352f, var_1, -800f, var_1), vec2<u32>(1u, 4024u), Struct_1(u_input.c)))));
    let var_2 = Struct_2(~(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(69882u, 39663u)), u_input.b.xy, select(u_input.b.yx, u_input.b.zx, vec2<bool>(true, false))) ^ vec2<u32>(47438u, global1.x)));
    var_0 = !vec3<bool>(!(!(!var_0.x)), true, !(all(vec4<bool>(false, true, var_0.x, false)) || !var_0.x));
    return countOneBits(47554u);
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1824f) - 1f) * -138f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -189f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1004f)) + _wgslsmith_f_op_f32(-2046f * -301f)));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zy) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1404f, var_0.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1680f, -220f), var_0.xz)), var_0.zy)))), all(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), var_0.x, (_wgslsmith_clamp_u32(u_input.b.x, global1.x, 14850u) >> (62380u % 32u)) <= 39572u);
    var var_2 = global0[_wgslsmith_index_u32(~0u, 26u)];
    var_2 = Struct_1(~func_2());
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1445f, -220f))))), _wgslsmith_f_op_vec2_f32(-var_1.b));
    return Struct_2(_wgslsmith_sub_vec2_u32(u_input.b.yy, vec2<u32>(35223u, 0u)));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_3) -> Struct_4 {
    var var_0 = -249f;
    var_0 = 896f;
    var var_1 = Struct_3(47972i, arg_2.b, vec4<f32>(arg_2.c.x, -484f, _wgslsmith_f_op_f32(-arg_2.c.x), arg_2.c.x), vec2<u32>(arg_1, 0u), arg_2.e);
    let var_2 = !func_3(Struct_3(abs(reverseBits(var_1.a)), arg_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, 2491f, var_1.c.x, 570f) * vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, -1389f))), ~(~vec2<u32>(4294967295u, var_1.d.x)), Struct_1(max(arg_1, global1.x))), Struct_2(min(var_1.b.a, vec2<u32>(0u, arg_0)) ^ u_input.b.zy), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, firstTrailingBit(var_1.a), 1i, 1i), _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(arg_2.a, arg_2.a, 0i, -2147483647i), ~u_input.a)), Struct_3(arg_2.a, func_1(), _wgslsmith_div_vec4_f32(arg_2.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1052f, -1298f, 910f, -1161f))), ~min(u_input.b.yy, vec2<u32>(global1.x, global1.x)), global0[_wgslsmith_index_u32((27094u >> (1u % 32u)) << (~arg_0 % 32u), 26u)]));
    var var_3 = countOneBits(~(~vec4<u32>(func_1().a.x, arg_1 >> (0u % 32u), ~arg_0, arg_2.d.x | 4294967295u)));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_div_f32(var_1.c.x, 1000f), any(vec3<bool>(var_2.x, true, false)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_2.c.x)), _wgslsmith_f_op_f32(-var_1.c.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.c.x, var_1.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.x, -2099f)) - _wgslsmith_div_vec2_f32(arg_2.c.yw, var_1.c.xw)), !(!vec2<bool>(var_2.x, var_2.x)))) - _wgslsmith_f_op_vec2_f32(var_1.c.zx - arg_2.c.wz)), var_2.x, arg_2.c.x, func_3(arg_2, Struct_2(vec2<u32>(global1.x, ~15401u)), -(~_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(u_input.d, u_input.a.x, var_1.a, -1i))), Struct_3(-52133i, arg_2.b, _wgslsmith_f_op_vec4_f32(-var_1.c), reverseBits(vec2<u32>(arg_2.d.x, arg_2.d.x)) ^ vec2<u32>(arg_1, 11150u), Struct_1(~1u))).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.c, 70495u, Struct_3(-13124i, func_1(), _wgslsmith_f_op_vec4_f32(vec4<f32>(-972f, _wgslsmith_f_op_f32(1131f + 689f), -604f, _wgslsmith_f_op_f32(f32(-1f) * -1430f)) - vec4<f32>(1706f, _wgslsmith_f_op_f32(round(2181f)), _wgslsmith_f_op_f32(step(-637f, -451f)), _wgslsmith_f_op_f32(f32(-1f) * -1151f))), vec2<u32>(94227u, reverseBits(select(4294967295u, global1.x, false))), Struct_1(~4294967295u)));
    var var_1 = ~(~func_2());
    global1 = ~abs(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(18919u, 4294967295u, 33426u, 43534u), vec4<u32>(global1.x, 1u, u_input.c, 14844u)), _wgslsmith_add_u32(~u_input.b.x, ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 28248u, 51266u, 4294967295u), vec4<u32>(global1.x, global1.x, u_input.b.x, 1u), var_0.c), ~vec4<u32>(u_input.b.x, global1.x, 24501u, global1.x)), vec4<u32>(~global1.x, 1u, func_2(), _wgslsmith_mult_u32(global1.x, global1.x)) >> (vec4<u32>(~u_input.b.x, 32816u, u_input.b.x, global1.x << (13799u % 32u)) % vec4<u32>(32u)), !vec4<bool>(any(vec4<bool>(false, false, true, var_0.c)), false, true, var_0.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.a, var_0.d, var_0.d) - _wgslsmith_div_vec4_f32(vec4<f32>(766f, -741f, var_0.d, var_0.a), vec4<f32>(var_0.b.x, -159f, var_0.b.x, var_0.d))))));
}

