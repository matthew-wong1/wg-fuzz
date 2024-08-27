struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_4, 9>;

var<private> global2: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<u32> {
    let var_0 = vec4<f32>(401f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-537f - -692f))), 1043f) * -841f), 1373f);
    var var_1 = ~(~reverseBits(~u_input.a.x << (_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, 57919u)) % 32u)));
    var_1 = 1u;
    let var_2 = abs(4294967295u);
    let var_3 = var_0.xwx;
    return vec2<u32>(~(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, var_2), 517u) ^ ~21401u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(reverseBits(global0.wz), global0.zz) >> (~(~global0.x) % 32u), ~var_2, reverseBits(65028u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: vec4<i32>) -> vec3<i32> {
    let var_0 = firstTrailingBit(u_input.b);
    var var_1 = vec3<bool>(any(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, true, true)), false), vec2<bool>(true, all(vec4<bool>(false, true, true, false))))), all(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), select(true, false, true), true)));
    var var_2 = Struct_1(u_input.a.x, vec4<i32>(_wgslsmith_dot_vec4_i32(arg_2, arg_2), 1i, ~(-(arg_2.x >> (1u % 32u))), u_input.d.x));
    global1 = array<Struct_4, 9>();
    var var_3 = Struct_3(Struct_1(var_2.a, var_2.b), vec4<f32>(-412f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1336f, -905f)))) * -595f), 1582f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(621f)))))), abs(~(~var_2.b)), vec2<u32>(1u, arg_0.x), Struct_2(select(select(!vec3<bool>(false, var_1.x, true), !vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(var_1.x, var_1.x, true)), select(!vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, true, true)), vec3<bool>(!var_1.x, all(vec2<bool>(false, true)), true)), Struct_1(u_input.a.x, select(abs(vec4<i32>(-20117i, 820i, arg_1.a.x, 28988i)), vec4<i32>(var_0, var_0, 14302i, 0i) << (vec4<u32>(32371u, 17516u, 43170u, var_2.a) % vec4<u32>(32u)), any(vec4<bool>(true, var_1.x, true, true))))));
    return vec3<i32>(-(~arg_2.x), 0i, countOneBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.d, select(vec2<i32>(arg_2.x, arg_1.a.x), u_input.c.yx, var_1.yx)), _wgslsmith_dot_vec3_i32(vec3<i32>(42016i, arg_2.x, -1i) & vec3<i32>(-33250i, arg_2.x, 1i), _wgslsmith_clamp_vec3_i32(var_2.b.zyx, vec3<i32>(-690i, 9199i, 0i), var_2.b.ywy)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: bool) -> Struct_5 {
    global1 = array<Struct_4, 9>();
    var var_0 = vec3<bool>(arg_2, true, _wgslsmith_mult_i32(-21063i, 1i) != _wgslsmith_dot_vec3_i32(func_4(func_3(), Struct_5(vec3<i32>(u_input.b, 2147483647i, arg_0.x)), -vec4<i32>(0i, arg_0.x, u_input.b, -55858i)), select(vec3<i32>(2147483647i, 1i, u_input.c.x), vec3<i32>(2147483647i, -16303i, arg_0.x), !vec3<bool>(arg_2, false, false))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~select(1u ^ global0.x, 61421u, false) | u_input.a.x), 9u)];
    var var_2 = var_1.b.b;
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(759f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
    return Struct_5(firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(3392i, u_input.d.x, -15505i)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_5 {
    var var_0 = ~2147483647i;
    var var_1 = func_2(select(countOneBits(select(vec4<i32>(-2147483647i, -1i, -58362i, 0i), arg_1.b, false)) ^ ~(~arg_1.b), vec4<i32>(1i, ~u_input.b, _wgslsmith_clamp_i32(-u_input.d.x, arg_1.b.x, select(u_input.c.x, u_input.d.x, false)), 1i), all(vec2<bool>(true, true))), vec4<f32>(-1090f, _wgslsmith_f_op_f32(sign(-1273f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(119f)), -1724f)), 1242f), any(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    var_1 = func_2(~vec4<i32>(-1i, ~(-var_1.a.x), 10093i, u_input.b >> (~45103u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -783f, 2309f, 1412f), vec4<f32>(884f, 718f, -371f, -1100f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(362f, -1070f, -1912f, -241f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-303f, 1647f, _wgslsmith_f_op_f32(f32(-1f) * -1292f), -405f))), true);
    var_0 = arg_1.b.x;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1695f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f - 557f)))), 848f);
    return func_2(select(vec4<i32>(-40497i, _wgslsmith_div_i32(arg_1.b.x, 2147483647i), u_input.b, -2147483647i), ~arg_1.b ^ (arg_1.b | vec4<i32>(u_input.b, var_1.a.x, -17746i, var_1.a.x)), any(vec3<bool>(true, false, true))) | _wgslsmith_mult_vec4_i32(abs(select(vec4<i32>(1i, 0i, arg_1.b.x, arg_1.b.x), vec4<i32>(arg_1.b.x, -2147483647i, var_1.a.x, -5636i), vec4<bool>(true, true, false, false))), vec4<i32>(-1i) * -arg_1.b), vec4<f32>(353f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(min(823f, 230f)), any(vec3<bool>(true, true, true)))), 1000f, true)), _wgslsmith_f_op_f32(1576f * -1133f), var_2.x), (all(vec2<bool>(true, true)) != true) & all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_5, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(~4294967295u, vec4<i32>(-_wgslsmith_dot_vec3_i32(~arg_2.a, vec3<i32>(-17166i, 2147483647i, u_input.c.x)), ~arg_2.a.x, func_4(vec2<u32>(reverseBits(2569u), u_input.a.x ^ 57296u), func_2(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, arg_2.a.x, -6929i), vec4<i32>(u_input.c.x, arg_2.a.x, arg_2.a.x, 0i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1616f, -1578f, -1000f, -387f) + vec4<f32>(-1222f, -1000f, 671f, 465f)), all(vec2<bool>(true, false))), (vec4<i32>(-2147483647i, -1i, 36294i, arg_2.a.x) & vec4<i32>(-11241i, arg_2.a.x, -2147483647i, 13995i)) & select(vec4<i32>(u_input.d.x, u_input.b, -20837i, arg_1), vec4<i32>(-21262i, arg_2.a.x, arg_1, arg_1), false)).x, 2147483647i >> (~_wgslsmith_add_u32(37246u, arg_3.x) % 32u)));
    var_0 = Struct_1(func_3().x, ~abs(vec4<i32>(u_input.c.x, -35605i & u_input.b, -arg_2.a.x, ~arg_2.a.x)));
    let var_1 = all(vec4<bool>(true, false && (abs(arg_1) <= 9017i), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), all(select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
    let var_2 = vec2<bool>(any(vec4<bool>(select(true, true, true), var_0.a < (global0.x ^ arg_3.x), true, var_1)), true);
    let var_3 = firstTrailingBit(firstTrailingBit(vec3<u32>(var_0.a, _wgslsmith_div_u32(abs(arg_0.x), 86316u), ~(~arg_0.x))));
    return Struct_1(arg_3.x, -vec4<i32>(select(arg_2.a.x, select(-2147483647i, 0i, var_2.x), false), arg_1, var_0.b.x, 3433i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), false, true), func_5(select(vec4<u32>(~35014u, _wgslsmith_clamp_u32(u_input.a.x, 12694u, global0.x), 41986u, 45298u), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, 6484u, u_input.a.x), vec4<u32>(4294967295u, global0.x, 62265u, global0.x)), select(vec4<u32>(26952u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 39903u), true)), false), 1i, func_1(select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.a.x), global0.xwz), reverseBits(u_input.a.x), any(vec4<bool>(false, false, false, true))), Struct_1(u_input.a.x, max(vec4<i32>(u_input.d.x, u_input.b, u_input.c.x, 2147483647i), vec4<i32>(2147483647i, -2147483647i, u_input.b, u_input.c.x)))), ~u_input.a.yx));
    let var_1 = Struct_2(vec3<bool>(any(!select(var_0.a.xz, var_0.a.yz, vec2<bool>(true, var_0.a.x))), u_input.c.x < -2147483647i, !any(!vec4<bool>(true, var_0.a.x, var_0.a.x, false))), Struct_1(~10363u, _wgslsmith_mod_vec4_i32(vec4<i32>(~0i, 1i, select(-1158i, u_input.b, false), 1i), vec4<i32>(-1i) * -vec4<i32>(var_0.b.b.x, var_0.b.b.x, u_input.d.x, 1i))));
    var var_2 = _wgslsmith_f_op_f32(ceil(-1265f));
    let var_3 = Struct_5(_wgslsmith_mod_vec3_i32(-u_input.c, select(_wgslsmith_mod_vec3_i32(vec3<i32>(-78716i, u_input.d.x, 31784i), ~var_0.b.b.yxw), var_0.b.b.wyy, any(vec4<bool>(false, false, false, var_0.a.x)))));
    global1 = array<Struct_4, 9>();
    var var_4 = func_5(vec4<u32>(47033u, _wgslsmith_add_u32(var_0.b.a, func_5(vec4<u32>(4294967295u, var_1.b.a, 8502u, global0.x) | vec4<u32>(u_input.a.x, var_1.b.a, var_0.b.a, global0.x), 0i, var_3, vec2<u32>(var_1.b.a, var_1.b.a) ^ global0.wz).a), 33448u, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_div_u32(~var_0.b.a, _wgslsmith_add_u32(var_0.b.a, 0u)))), 42345i, var_3, _wgslsmith_add_vec2_u32(~global0.zy >> (~(u_input.a.zz >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.a.zz));
    var_0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(global0.zw, _wgslsmith_mult_vec2_u32(abs(u_input.a.yz) ^ u_input.a.zy, vec2<u32>(firstTrailingBit(41234u), var_0.b.a)), vec2<u32>(8383u, var_4.a) >> (abs(~vec2<u32>(global0.x, 0u)) % vec2<u32>(32u))));
}

