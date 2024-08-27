struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, false), -989f, vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<f32>(-1000f, 1584f, -240f, 611f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec4<f32> {
    let var_0 = all(global2.d.yyx);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(arg_1.e, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1138f, -1000f, 204f, -1543f) + vec4<f32>(1349f, 627f, global0.e.x, 887f)), arg_0.e))))), _wgslsmith_div_vec4_f32(arg_0.e, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * arg_1.e.x) - -1000f), _wgslsmith_f_op_f32(-407f + -488f), arg_1.b))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(global2.a, _wgslsmith_f_op_f32(global0.b - 1000f), !vec4<bool>(global2.a.x, false, false, global2.d.x), !select(select(select(vec4<bool>(global2.d.x, global0.c.x, true, global0.d.x), global0.d, global0.d), vec4<bool>(global0.a.x, arg_0, global0.d.x, false), global2.d), select(global2.c, vec4<bool>(global0.c.x, arg_0, false, global2.a.x), global2.b >= global2.b), select(false, true, global0.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(!global2.d.ywy, _wgslsmith_f_op_f32(-global0.e.x), vec4<bool>(arg_0, global0.c.x, global0.d.x, global2.d.x), vec4<bool>(true, arg_0, global2.d.x, true), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2189f, 197f, -436f, global0.e.x)))), Struct_1(!global2.d.wxz, -245f, vec4<bool>(arg_0, global2.a.x, global2.a.x, global0.c.x), !vec4<bool>(global2.d.x, false, false, global0.d.x), vec4<f32>(global0.b, -273f, global2.e.x, global0.e.x)), u_input.b))));
    var var_1 = Struct_1(select(vec3<bool>(arg_0, global2.d.x, !all(global0.a)), !vec3<bool>(true, global2.a.x, var_0.a.x), global0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1160f)), global2.c, global0.d, global0.e);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(726f, _wgslsmith_f_op_f32(var_1.e.x * 1152f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.b))))) + var_1.b);
    var var_3 = 141f;
    var var_4 = -(vec2<i32>(-1i) * -abs(countOneBits(u_input.a.yz)));
    return Struct_1(vec3<bool>(!global0.c.x, global2.d.x, !any(vec4<bool>(false, true, var_1.d.x, true))), _wgslsmith_f_op_f32(-var_2), select(vec4<bool>(true, global0.e.x >= var_2, any(!global2.d.xw), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), u_input.a.zx) == -2147483647i), !select(!global2.c, !vec4<bool>(var_0.c.x, global0.a.x, true, var_0.a.x), !vec4<bool>(true, global0.d.x, global0.c.x, false)), false & !(2147483647i >= u_input.b)), !select(var_1.c, !vec4<bool>(true, arg_0, var_0.d.x, false), true), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1116f + -1000f) - _wgslsmith_f_op_f32(540f - var_0.b)), -1169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), var_0.e));
}

fn func_1() -> u32 {
    let var_0 = func_2(!global2.d.x);
    let var_1 = select(select(global2.c, !var_0.c, var_0.d.x), select(select(func_2(true).c, global0.d, all(var_0.a.yx) && var_0.c.x), select(!vec4<bool>(true, global0.d.x, false, var_0.a.x), select(func_2(global2.c.x).d, select(vec4<bool>(true, false, var_0.a.x, global2.d.x), vec4<bool>(false, global2.d.x, global0.d.x, false), global0.d), select(vec4<bool>(global2.c.x, true, global0.c.x, false), global0.c, vec4<bool>(global0.a.x, true, true, global0.d.x))), vec4<bool>(false, true, true, select(false, global2.d.x, var_0.d.x))), !select(global0.d, var_0.c, func_2(global2.d.x).d)), vec4<bool>(!all(global0.d.zx), _wgslsmith_mod_u32(40278u, firstTrailingBit(0u)) <= ~58793u, global0.d.x, global2.d.x));
    let var_2 = global0.d.zy;
    var var_3 = ~(~(-6734i));
    global0 = Struct_1(!func_2(true).a, global2.b, !(!vec4<bool>(true, var_1.x, var_1.x, global2.a.x)), vec4<bool>(!select(true, true, var_1.x), all(!select(var_1, vec4<bool>(true, var_2.x, global0.d.x, false), false)), !var_2.x, true), global0.e);
    return _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(firstTrailingBit(reverseBits(65078u) | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(61690u, 78752u))), ~46203u));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(vec3<bool>(global0.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.e.x + -961f))) < global0.b, global0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b)))), global2.c, global0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.e) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0), global0.e))));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1, 0u, 4294967295u), ~(vec3<u32>(20645u, 0u, 4294967295u) >> (vec3<u32>(arg_1, arg_1, 3341u) % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_mult_u32(arg_1, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(40868u, 0u), ~vec2<u32>(arg_1, 16676u)), ~abs(arg_1))), 1u);
    let var_3 = _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, i32(-1i) * -u_input.b, _wgslsmith_dot_vec2_i32(~u_input.a.zz, u_input.a.zy), _wgslsmith_sub_i32(~var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, u_input.a.x), vec3<i32>(-2147483647i, u_input.a.x, u_input.b)))), vec4<i32>(var_0, var_0, var_0, var_0));
    var var_4 = func_2(false);
    return Struct_1(global2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.b + global2.e.x), 1497f)))), !(!vec4<bool>(var_1.e.x >= 251f, var_4.d.x, all(var_4.a.zz), true)), vec4<bool>(true, true, false, false), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(ceil(-116f))), 530f, _wgslsmith_f_op_f32(166f + global2.b), var_1.e.x))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~1u;
    let var_1 = Struct_1(global2.d.xzw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -241f) * _wgslsmith_f_op_f32(-global2.e.x))), -683f), !(!(!vec4<bool>(false, global2.c.x, true, arg_0.a.x))), vec4<bool>(global2.d.x, arg_0.d.x & true, any(func_4(global2.e, countOneBits(1u)).a.yz), !(!global2.c.x) && true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e)));
    var_0 = select(~(~reverseBits(33393u)), max(firstTrailingBit(4294967295u), ~(~(~61834u))), true);
    var var_2 = vec2<bool>(false, all(global0.d));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(539f, var_1.e.x)), global0.b) * global0.e.x)));
    return func_4(var_1.e, abs(abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(53232u, 0u, 132276u, 48788u), vec4<u32>(4294967295u, 22955u, 1u, 11050u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 131336u, 10033u, 28285u), vec4<u32>(4294967295u, 26750u, 0u, 19570u))))));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select(!global0.d.xzy, vec3<bool>(global0.c.x, ~u_input.b != (i32(-1i) * -12068i), all(global0.a.yy)), true), arg_0.e.x, global0.d, vec4<bool>(false, true, !(abs(u_input.b) <= u_input.b), global2.a.x), vec4<f32>(1000f, -855f, func_5(func_4(vec4<f32>(281f, 109f, -509f, arg_0.b), _wgslsmith_sub_u32(13036u, 6262u))).e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(arg_0.b, -442f)))));
    let var_1 = arg_0;
    var_0 = arg_0;
    let var_2 = arg_0;
    global2 = Struct_1(!select(select(global0.a, select(vec3<bool>(false, global2.a.x, true), var_2.a, arg_0.a.x), !vec3<bool>(false, var_0.c.x, var_0.c.x)), vec3<bool>(arg_0.c.x, var_0.d.x, u_input.a.x >= 2147483647i), var_1.a), 165f, !vec4<bool>(true, false, false, _wgslsmith_clamp_i32(u_input.a.x, u_input.b, 48143i) > u_input.b), var_0.d, global0.e);
    return func_4(vec4<f32>(global2.e.x, 564f, var_0.b, arg_0.b), 31441u >> (0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(func_5(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e.x, global2.b, -1885f, global2.e.x)), func_1() << (1u % 32u))));
    let var_0 = Struct_1(vec3<bool>(all(!vec4<bool>(true, global0.a.x, true, true)), (func_5(Struct_1(global0.d.wyx, -500f, vec4<bool>(false, global2.d.x, global0.d.x, true), global2.c, global2.e)).b <= 1941f) | any(vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(-525f + _wgslsmith_f_op_f32(global0.b * global2.b)), func_5(func_4(global0.e, 104140u)).d, vec4<bool>(!all(global2.c.wy), ((u_input.a.x ^ u_input.a.x) > ~(-2228i)) | all(vec4<bool>(false, global0.c.x, global0.d.x, true)), false, true), vec4<f32>(_wgslsmith_f_op_f32(func_6(func_6(Struct_1(vec3<bool>(global2.c.x, false, true), global0.b, global2.c, vec4<bool>(false, true, global0.c.x, true), vec4<f32>(1509f, -554f, global2.e.x, global0.e.x)))).e.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.e.x + -1625f), global2.b))), -361f, -340f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global2.b, global2.b, any(global2.d.zy))), 503f))));
    global2 = func_2(any(global2.a.zz));
    let var_1 = func_4(vec4<f32>(-1292f, global0.e.x, -1000f, -957f), 4294967295u).e.wx;
    global0 = func_2(true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b, ~u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, u_input.b, u_input.a.x), u_input.a.x) | abs(~(-19806i)), -2147483647i), vec4<i32>(_wgslsmith_clamp_i32(~0i, 0i, -13778i), 2147483647i, ~39053i, _wgslsmith_mod_i32(0i, firstLeadingBit(u_input.a.x))) << (vec4<u32>(~1u, select(~114566u, ~63214u, false), ~abs(39131u), min(~4294967295u, 1u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~13058u, ~1u, ~1u, ~0u), vec4<u32>(_wgslsmith_div_u32(0u, 19071u), ~0u, ~4294967295u, 1u), ~reverseBits(vec4<u32>(62524u, 105003u, 1u, 1u))) << (~vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 86724u), vec4<u32>(31108u, 1u, 0u, 50295u)), abs(63409u), func_1()) % vec4<u32>(32u)), var_1.x);
}

