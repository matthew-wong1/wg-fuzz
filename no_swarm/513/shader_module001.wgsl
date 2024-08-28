struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6>;

var<private> global1: Struct_3;

var<private> global2: array<f32, 15>;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - arg_1.b.b.x))))) + 522f);
    let var_1 = arg_1.b.d;
    let var_2 = _wgslsmith_sub_i32(~2147483647i, -_wgslsmith_clamp_i32(-u_input.a, 32407i, arg_1.c.x));
    let var_3 = global1.b.b.wx;
    global1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0)), -207f, false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_f32(-871f * -447f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_1.b.a.x) + 404f)))), arg_1.b, vec3<i32>(-(~u_input.a) >> (_wgslsmith_mod_u32(~1u, select(74412u, arg_1.b.d, true)) % 32u), var_2, arg_1.b.c.x), ~arg_1.d, global1.e);
    return vec3<bool>(all(select(!select(vec3<bool>(global1.e, arg_1.e, arg_1.e), vec3<bool>(global3.x, false, true), global3.x), vec3<bool>(global3.x, global1.e && true, arg_1.e), false)), select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1307f, 1220f)), _wgslsmith_f_op_f32(step(-1259f, var_3.x)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-701f * -945f)), false, true), any(!select(global3.zz, !vec2<bool>(global1.e, true), vec2<bool>(true, global3.x))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_1 {
    global2 = array<f32, 15>();
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_0.b.c.x, u_input.a, arg_0.c.x), vec3<i32>(358i, 0i, arg_0.b.c.x)) ^ arg_0.c, ~global1.c) ^ select(countOneBits(-(-2147483647i & global1.b.c.x)), abs(global1.b.c.x), true);
    var var_1 = 1u;
    global3 = select(arg_1, select(vec3<bool>(false, all(!vec3<bool>(true, arg_0.e, false)), (global1.a >= arg_0.a) | (true | global1.e)), !select(func_3(369f, Struct_3(arg_0.a, arg_0.b, global1.c, global1.d, global1.e), -187f, 0i), !arg_1, true), vec3<bool>(true, global3.x, func_3(-378f, Struct_3(global2[_wgslsmith_index_u32(50127u, 15u)], Struct_1(vec2<f32>(1792f, -1199f), arg_0.b.b, arg_0.b.c, 53314u), arg_0.c, vec3<u32>(arg_0.d.x, global1.b.d, global1.b.d), arg_0.e), global2[_wgslsmith_index_u32(1u, 15u)], var_0).x)), select(global1.e, arg_1.x, arg_0.b.c.x <= firstTrailingBit(arg_0.c.x)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-406f - global2[_wgslsmith_index_u32(arg_0.d.x << (_wgslsmith_div_u32(12289u, 78157u) % 32u), 15u)])), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(944f, _wgslsmith_f_op_f32(537f + global2[_wgslsmith_index_u32(3687u, 15u)]), global1.e && arg_0.e)), global2[_wgslsmith_index_u32(~1u, 15u)]), global1.b.b, vec2<i32>(_wgslsmith_mod_i32(2147483647i, -14486i), abs(u_input.a)) & reverseBits(select(arg_0.c.yx, vec2<i32>(81875i, global1.b.c.x), vec2<bool>(global3.x, global1.e))), global1.d.x << ((min(arg_0.b.d, arg_0.b.d) >> (~1u % 32u)) % 32u)), global1.c, arg_0.d ^ ~global1.d, any(arg_1));
    return arg_0.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = arg_2;
    global2 = array<f32, 15>();
    var var_1 = !select(select(!vec4<bool>(global1.e, global3.x, global1.e, false), !vec4<bool>(global1.e, global3.x, global1.e, false), global1.e), select(!vec4<bool>(global3.x, true, false, false), select(!vec4<bool>(global1.e, false, true, false), vec4<bool>(true, false, global3.x, false), vec4<bool>(global3.x, global3.x, false, false)), all(select(vec2<bool>(false, global1.e), global3.xx, global3.yx))), vec4<bool>(false, global1.e, !global3.x, !global3.x));
    var var_2 = arg_1.b;
    var var_3 = global1.a;
    return Struct_2(_wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 16712i, arg_1.c.x, u_input.a), max(vec4<i32>(1i, u_input.a, 23208i, arg_0.x), vec4<i32>(global1.b.c.x, arg_1.c.x, -10332i, -22184i))), ~countOneBits(-1i))), global1.d, vec4<u32>(global1.b.d, ~_wgslsmith_mod_u32(arg_3, ~16271u), global1.b.d, ~(~_wgslsmith_add_u32(0u, arg_3))));
}

fn func_1() -> Struct_1 {
    var var_0 = (vec2<i32>(-1i) * -global1.c.xy) & global1.b.c;
    var var_1 = Struct_2(abs(global1.c.x), _wgslsmith_div_vec3_u32(select(abs(~vec3<u32>(global1.d.x, global1.b.d, global1.b.d)), global1.d, select(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, true, true), vec3<bool>(true, false, false)), vec3<bool>(global3.x, true, true), false)), max(vec3<u32>(global1.d.x, 0u, global1.d.x), ~global1.d) | vec3<u32>(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(global1.d.x, 6u)], vec4<u32>(global1.b.d, global1.d.x, global1.b.d, 15122u)), global1.b.d >> (4294967295u % 32u), global1.d.x ^ global1.b.d)), global0[_wgslsmith_index_u32(~46599u, 6u)]);
    var var_2 = Struct_4(func_4(global1.c, func_2(Struct_3(232f, global1.b, select(vec3<i32>(global1.b.c.x, u_input.a, var_0.x), global1.c, vec3<bool>(false, global1.e, global3.x)), vec3<u32>(114120u, 31868u, var_1.c.x) | vec3<u32>(global1.b.d, 57138u, var_1.b.x), global3.x || false), select(vec3<bool>(false, global3.x, global1.e), vec3<bool>(global3.x, global1.e, global1.e), select(vec3<bool>(global3.x, true, true), vec3<bool>(false, global3.x, global1.e), vec3<bool>(false, global3.x, false)))), _wgslsmith_div_f32(1023f, _wgslsmith_f_op_f32(step(1000f, 1f))), global1.b.d), func_4(-(global1.c >> (select(vec3<u32>(35662u, global1.b.d, 1u), vec3<u32>(0u, global1.d.x, 4294967295u), vec3<bool>(false, false, global3.x)) % vec3<u32>(32u))), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b.b.x)))), _wgslsmith_add_u32(53269u, func_2(Struct_3(1179f, global1.b, vec3<i32>(global1.b.c.x, var_1.a, var_0.x), var_1.c.xyy, global3.x), vec3<bool>(false, global3.x, global3.x)).d)), 205f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(~var_1.c.x, 15u)], _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(global1.d.x, 15u)], false)), -640f), vec3<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(50390u, 15u)])), _wgslsmith_f_op_f32(763f + global1.a), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 7362u), var_1.c.xy), 15u)]), !func_3(global2[_wgslsmith_index_u32(global1.d.x, 15u)], Struct_3(global2[_wgslsmith_index_u32(global1.b.d, 15u)], global1.b, vec3<i32>(global1.b.c.x, u_input.a, 92595i), vec3<u32>(26207u, 0u, 62294u), false), 1039f, var_1.a))), global1.b.b.xzz));
    var_1 = func_4(vec3<i32>(~var_2.a.a, var_2.b.a, 1i), func_2(Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(118f, -2243f)), _wgslsmith_f_op_f32(f32(-1f) * -983f))), Struct_1(var_2.d.yy, global1.b.b, global1.b.c, _wgslsmith_clamp_u32(27422u, 1u, 0u)), ~(~vec3<i32>(var_1.a, 55952i, 42150i)), ~(~vec3<u32>(var_1.c.x, var_2.b.b.x, var_2.a.b.x)), select(all(vec2<bool>(global3.x, true)), global3.x, !global1.e)), select(vec3<bool>(global1.e, global1.b.a.x >= 1481f, !global3.x), select(select(vec3<bool>(global1.e, global1.e, true), vec3<bool>(global1.e, true, true), false), !vec3<bool>(global3.x, false, true), vec3<bool>(false, false, global3.x)), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global1.b.b.x)))), func_2(Struct_3(_wgslsmith_f_op_f32(2187f - global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.d.x, global1.b.d), 15u)]), func_2(Struct_3(global2[_wgslsmith_index_u32(12505u, 15u)], Struct_1(global1.b.b.wx, global1.b.b, vec2<i32>(56756i, var_2.b.a), 1u), global1.c, vec3<u32>(4294967295u, var_2.b.c.x, global1.d.x), global1.e), !vec3<bool>(true, global3.x, global3.x)), abs(-global1.c), firstLeadingBit(var_1.c.xxy), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.d.x, 15u)]) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !select(!vec3<bool>(global1.e, global3.x, global3.x), !vec3<bool>(true, global3.x, global3.x), !vec3<bool>(global3.x, global3.x, global1.e))).d);
    var var_3 = Struct_3(540f, func_2(Struct_3(_wgslsmith_f_op_f32(var_2.c + global1.b.a.x), global1.b, abs(vec3<i32>(2147483647i, -1i, -1i)), vec3<u32>(~var_1.b.x, _wgslsmith_sub_u32(4294967295u, var_1.b.x), ~39025u), !(!global1.e)), func_3(_wgslsmith_f_op_f32(-global1.b.a.x), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -764f), func_2(Struct_3(global2[_wgslsmith_index_u32(var_1.c.x, 15u)], global1.b, global1.c, var_1.b, false), vec3<bool>(false, global1.e, global1.e)), ~vec3<i32>(53753i, global1.c.x, -4019i), vec3<u32>(1u, 0u, 0u), u_input.a >= var_2.a.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(3013u, 15u)]))), var_2.a.a)), vec3<i32>(~(-24021i), -(~var_1.a), 1i) ^ reverseBits(min(-vec3<i32>(-2147483647i, global1.b.c.x, var_0.x), global1.c | global1.c)), var_1.c.xww, true);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global1.b.b.x + global2[_wgslsmith_index_u32(1u, 15u)]), -1333f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(func_2(Struct_3(var_3.a, var_3.b, global1.c, vec3<u32>(var_3.d.x, 110201u, 0u), false), select(vec3<bool>(false, false, true), vec3<bool>(true, var_3.e, global1.e), false)).b)))), ~abs(~vec2<i32>(1i, -2147483647i)), global1.b.d << (_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, global1.b.d), _wgslsmith_clamp_vec2_u32(var_2.b.c.xy, global1.d.zz, ~vec2<u32>(7881u, global1.b.d))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 15>();
    let var_0 = func_1();
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.d.x, 9447u), 15u)], global1.b, (vec3<i32>(1i, _wgslsmith_mult_i32(2147483647i, -1i), 0i) << (_wgslsmith_add_vec3_u32(vec3<u32>(100150u, global1.d.x, 1u), vec3<u32>(45307u, var_0.d, global1.d.x) << (vec3<u32>(40590u, 6068u, global1.d.x) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (global1.d % vec3<u32>(32u)), ~countOneBits(vec3<u32>(max(1u, global1.d.x), ~38991u, 4294967295u)), all(global3.zy));
    var_1 = Struct_3(_wgslsmith_f_op_f32(max(-1205f, 318f)), func_1(), _wgslsmith_add_vec3_i32(~abs(~var_1.c), ~(~var_1.c)), vec3<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global1.d, vec3<u32>(var_0.d, var_1.d.x, global1.b.d)), global1.d), abs(~global1.d.x & ~global1.d.x), _wgslsmith_clamp_u32(~83383u ^ (25356u ^ var_0.d), min(global1.b.d, ~var_1.b.d), reverseBits(~var_0.d))), global1.e);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2151f)) + _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(4294967295u, 15u)])))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(912f * global2[_wgslsmith_index_u32(1u, 15u)])) - global1.a)) * 713f);
    var var_3 = vec2<u32>(~global1.b.d, var_1.b.d & ~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, 1717f, var_0.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(287f, var_1.b.b.x, func_2(Struct_3(var_1.b.b.x, var_1.b, global1.c, vec3<u32>(var_1.b.d, var_1.b.d, var_1.b.d), global1.e), vec3<bool>(global3.x, true, global3.x)).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global1.a + global2[_wgslsmith_index_u32(1u, 15u)]), -2270f, var_1.b.a.x, var_0.b.x))))));
}

