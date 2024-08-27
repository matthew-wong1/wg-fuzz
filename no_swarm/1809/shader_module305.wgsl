struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(arg_0.b.a)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.b.b.x, arg_0.a.b.x), _wgslsmith_clamp_vec2_i32(arg_3.b.b, arg_3.a.b, arg_0.a.b), ~vec2<i32>(arg_3.a.b.x, -2147483647i)), any(!arg_0.a.d.xx), arg_0.b.d, _wgslsmith_f_op_f32(floor(arg_0.a.a)) < arg_1.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.b.a, arg_0.b.a))) - _wgslsmith_f_op_f32(arg_3.b.a + _wgslsmith_f_op_f32(158f * 1000f))), arg_0.a.b, !arg_3.b.d.x, vec3<bool>(!(!arg_0.b.c), true, !(!arg_0.a.d.x)), arg_2.x), max(_wgslsmith_sub_vec4_u32(arg_0.c, select(u_input.d, vec4<u32>(arg_0.c.x, 97339u, u_input.d.x, arg_3.c.x), global0.x)), vec4<u32>(~7908u, 46711u, ~arg_0.c.x, 4294967295u)) & ~firstLeadingBit(vec4<u32>(25441u, 3449u, arg_3.c.x, arg_3.c.x)));
    global0 = vec4<bool>(var_0.b.c, all(!select(vec4<bool>(global0.x, var_0.b.c, arg_2.x, var_0.b.c), vec4<bool>(false, global0.x, true, arg_3.b.d.x), false & arg_0.a.e)), true, var_0.a.c);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -230f)))), ~(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -15186i), u_input.c.xw) ^ vec2<i32>(u_input.c.x, -1i)), all(select(!vec4<bool>(arg_3.a.c, arg_3.b.d.x, global0.x, arg_3.a.d.x), vec4<bool>(true, false, arg_3.a.d.x, arg_0.a.c), select(vec4<bool>(arg_3.a.d.x, false, true, var_0.a.d.x), vec4<bool>(true, global0.x, false, true), global0.x))), global0.xxx, ~(~arg_0.b.b.x) != min(u_input.c.x, -4539i)), arg_0.a, ~_wgslsmith_div_vec4_u32(vec4<u32>(abs(5885u), 57209u, u_input.d.x, u_input.d.x), vec4<u32>(24843u, var_0.c.x << (49782u % 32u), select(u_input.d.x, 24295u, global0.x), arg_3.c.x)));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.a), _wgslsmith_f_op_f32(max(1197f, -163f))) * 1485f);
    return select(vec4<bool>(any(vec3<bool>(-1i > arg_0.a.b.x, arg_3.a.e, false)), any(var_1.a.d.yz), true, all(vec2<bool>(arg_2.x, var_0.b.e)) || (global0.x && true)), select(select(!(!vec4<bool>(false, false, var_0.a.c, true)), vec4<bool>(true, any(vec3<bool>(true, arg_3.b.e, true)), true, false), global0.x), vec4<bool>(!(false || var_1.a.e), !arg_2.x, all(!arg_0.b.d.zz), var_0.a.d.x && all(vec2<bool>(false, arg_2.x))), global0.x), !(!select(true, true, true)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = any(global0.xx);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(-495f)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -4240i), vec2<i32>(70651i, -58470i) & u_input.c.yx) >> (firstTrailingBit(~vec2<u32>(4294967295u, u_input.d.x)) % vec2<u32>(32u)), 1i < u_input.c.x, select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, false), global0.zzy), global0.yzw, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)) || true), all(global0.xz)), Struct_1(arg_0, u_input.c.ww, !global0.x, vec3<bool>(true, true, arg_0 != _wgslsmith_f_op_f32(round(arg_0))), false), _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x))), u_input.d));
    var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, var_1.c.x, u_input.d.x), u_input.d), u_input.d.x & _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.c.x, var_1.c.x), var_1.c.x)) <= max(14162u, firstTrailingBit(u_input.d.x));
    var var_2 = false;
    var_2 = all(select(global0.yzy, vec3<bool>(false, any(func_3(Struct_2(var_1.a, var_1.b, var_1.c), vec4<f32>(var_1.a.a, arg_0, 1513f, var_1.a.a), var_1.a.d, Struct_2(Struct_1(-470f, vec2<i32>(var_1.a.b.x, u_input.b), global0.x, global0.ywz, false), Struct_1(var_1.a.a, vec2<i32>(u_input.c.x, -2147483647i), false, vec3<bool>(true, true, global0.x), global0.x), var_1.c))), all(vec2<bool>(false, var_1.a.c))), global0.xxz));
    return Struct_1(-908f, select(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.c.x), -(vec2<i32>(u_input.c.x, -25311i) << (var_1.c.wx % vec2<u32>(32u)))), var_1.a.b, vec2<bool>(!(var_1.a.d.x | true), !func_3(var_1, vec4<f32>(var_1.b.a, arg_0, var_1.a.a, 975f), vec3<bool>(false, false, true), var_1).x)), all(vec4<bool>(all(vec3<bool>(false, global0.x, var_1.a.c)), !var_1.a.d.x, false & !global0.x, true)), vec3<bool>(false, true, u_input.d.x <= 1u), false);
}

fn func_4(arg_0: Struct_2) -> u32 {
    let var_0 = -(87138i ^ _wgslsmith_dot_vec3_i32(u_input.c.wxx, firstLeadingBit(vec3<i32>(arg_0.b.b.x, 2147483647i, arg_0.a.b.x))));
    global0 = vec4<bool>(!(!(!all(vec2<bool>(arg_0.b.c, arg_0.b.c)))), true, arg_0.b.c, func_3(arg_0, vec4<f32>(-361f, -357f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1604f, -207f)) - -1374f), _wgslsmith_f_op_f32(-829f * _wgslsmith_f_op_f32(-120f + -1012f))), select(!func_3(Struct_2(Struct_1(-460f, vec2<i32>(28281i, u_input.c.x), arg_0.b.e, global0.zyy, global0.x), Struct_1(arg_0.b.a, u_input.c.xy, false, global0.zxz, global0.x), vec4<u32>(4294967295u, arg_0.c.x, 8499u, u_input.d.x)), vec4<f32>(arg_0.b.a, arg_0.b.a, 1115f, arg_0.a.a), vec3<bool>(false, arg_0.b.e, global0.x), Struct_2(Struct_1(arg_0.b.a, arg_0.b.b, arg_0.a.d.x, vec3<bool>(true, true, arg_0.a.e), true), arg_0.b, u_input.d)).wzw, global0.yxx, true), arg_0).x);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a) - _wgslsmith_f_op_f32(-arg_0.a.a)) + 1016f)));
    let var_2 = vec4<i32>(-53914i, 4609i, -(~(-1i)), _wgslsmith_mult_i32(var_0, firstTrailingBit(reverseBits(0i))));
    var var_3 = u_input.c.www;
    return min(7822u, arg_0.c.x);
}

fn func_5(arg_0: u32, arg_1: f32) -> vec3<bool> {
    var var_0 = u_input.c;
    var var_1 = vec4<f32>(475f, _wgslsmith_f_op_f32(abs(-1000f)), arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_1, !(_wgslsmith_f_op_f32(-arg_1) <= func_2(arg_1).a))));
    var var_2 = ~u_input.d.zxz;
    let var_3 = u_input.d;
    var var_4 = func_2(var_1.x);
    return global0.zww;
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    global0 = vec4<bool>(!(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), -2036f)) <= -1000f), true, 297f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1565f) + arg_0.a), 1046f), true);
    let var_0 = func_5(_wgslsmith_mod_u32(func_4(Struct_2(func_2(-1769f), Struct_1(-1562f, vec2<i32>(u_input.b, -33115i), global0.x, global0.xzy, arg_0.e), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x) << (u_input.d % vec4<u32>(32u)))), firstLeadingBit(14179u) & _wgslsmith_mult_u32(3146u, select(4294967295u, u_input.d.x, true))), _wgslsmith_div_f32(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a, -1826f)) - _wgslsmith_f_op_f32(-549f + 854f)), arg_0.a)));
    let var_1 = ~vec2<u32>(_wgslsmith_add_u32(~(~73457u), reverseBits(u_input.d.x & 8852u)), u_input.d.x);
    global0 = select(vec4<bool>(true, !arg_0.c, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - arg_0.a))).c, func_3(Struct_2(func_2(arg_0.a), Struct_1(arg_0.a, vec2<i32>(u_input.b, u_input.b), true, arg_0.d, false), u_input.d), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -954f, arg_0.a, arg_0.a) * vec4<f32>(arg_0.a, arg_0.a, -1354f, arg_0.a)))), !(!var_0), Struct_2(func_2(1392f), arg_0, u_input.d)).x), !(!select(vec4<bool>(true, global0.x, false, false), select(vec4<bool>(global0.x, var_0.x, true, false), vec4<bool>(true, false, false, arg_0.c), vec4<bool>(arg_0.d.x, true, global0.x, true)), true & var_0.x)), true);
    global0 = select(!select(select(!vec4<bool>(true, var_0.x, var_0.x, true), select(vec4<bool>(false, arg_0.e, arg_0.c, true), vec4<bool>(false, global0.x, var_0.x, global0.x), vec4<bool>(global0.x, arg_0.c, false, global0.x)), !vec4<bool>(true, true, false, global0.x)), vec4<bool>(true, any(var_0), false, global0.x && false), func_3(Struct_2(arg_0, arg_0, u_input.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(-145f, arg_0.a, 1195f, arg_0.a) - vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), vec3<bool>(var_0.x, arg_0.d.x, global0.x), Struct_2(arg_0, Struct_1(953f, arg_0.b, false, vec3<bool>(arg_0.e, true, true), true), vec4<u32>(21590u, 11107u, u_input.d.x, u_input.d.x)))), !(!(!vec4<bool>(global0.x, arg_0.c, false, true))), (13076i <= -(~arg_0.b.x)) | (-10727i >= _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-13916i, u_input.b, arg_0.b.x), _wgslsmith_div_i32(-2147483647i, 45408i), 6321i)));
    return _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, firstTrailingBit(2147483647i) >> (~(~30192u) % 32u)), vec2<i32>(-arg_0.b.x, _wgslsmith_dot_vec3_i32(u_input.c.yxw << (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.d.x, 34022u), u_input.d.zzx, u_input.d.zyw) % vec3<u32>(32u)), select(vec3<i32>(-1i, u_input.a, 27962i), _wgslsmith_div_vec3_i32(u_input.c.xwy, u_input.c.xwx), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(true, false, !global0.x, global0.x | global0.x);
    var var_0 = Struct_1(-346f, func_1(Struct_1(_wgslsmith_f_op_f32(-888f + 463f), ~vec2<i32>(2147483647i, -30336i), !(false | global0.x), !global0.xxz, true)), global0.x, global0.wzy, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-808f, -368f)))).e || func_5(71244u, 320f).x);
    let var_1 = _wgslsmith_add_u32(u_input.d.x >> (u_input.d.x % 32u), 29426u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_sub_vec2_i32(var_0.b, -var_0.b << (~(~vec2<u32>(17073u, 1u)) % vec2<u32>(32u))), true && var_0.e, !select(vec3<bool>(true, true, func_3(Struct_2(Struct_1(-1049f, vec2<i32>(var_0.b.x, u_input.a), global0.x, vec3<bool>(var_0.e, var_0.d.x, var_0.e), true), Struct_1(-1000f, vec2<i32>(2147483647i, -2147483647i), false, var_0.d, false), u_input.d), vec4<f32>(-1000f, 912f, var_0.a, 1000f), vec3<bool>(false, var_0.d.x, var_0.e), Struct_2(Struct_1(var_0.a, vec2<i32>(-1i, var_0.b.x), global0.x, vec3<bool>(false, var_0.d.x, true), true), Struct_1(-158f, vec2<i32>(var_0.b.x, u_input.c.x), false, global0.zyw, false), vec4<u32>(1u, 4294967295u, u_input.d.x, var_1))).x), vec3<bool>(true, var_0.d.x, global0.x | false), !vec3<bool>(true, var_0.d.x, true)), func_3(Struct_2(func_2(345f), Struct_1(_wgslsmith_f_op_f32(floor(985f)), -vec2<i32>(-39564i, 0i), any(vec4<bool>(var_0.d.x, var_0.e, false, false)), vec3<bool>(false, false, var_0.c), !global0.x), firstLeadingBit(firstTrailingBit(vec4<u32>(1u, 22926u, 1u, u_input.d.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1316f, 377f, -1224f, -665f) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(step(var_0.a, var_0.a)), -1116f, _wgslsmith_f_op_f32(max(var_0.a, 1820f)))), vec3<bool>(true, global0.x, !global0.x), Struct_2(func_2(1314f), Struct_1(_wgslsmith_f_op_f32(floor(var_0.a)), ~var_0.b, var_1 <= 46774u, global0.xxw, true), vec4<u32>(1u, ~var_1, firstTrailingBit(var_1), 7641u))).x);
    global0 = select(vec4<bool>(!var_0.e, var_0.d.x, _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(ceil(1651f))) != var_0.a, true), !(!(!(!vec4<bool>(false, global0.x, false, global0.x)))), all(vec3<bool>(true, var_2.c, false)));
    var var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

