struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(563f, vec3<bool>(true, false, false), 6379u, vec2<bool>(false, true), vec3<bool>(false, true, false)), Struct_1(910f, vec3<bool>(true, true, false), 38641u, vec2<bool>(false, false), vec3<bool>(true, true, false)), Struct_1(-160f, vec3<bool>(false, false, false), 1u, vec2<bool>(true, false), vec3<bool>(false, true, true)), Struct_1(-1579f, vec3<bool>(false, false, false), 66948u, vec2<bool>(true, true), vec3<bool>(false, false, false)), Struct_1(-522f, vec3<bool>(true, true, false), 25510u, vec2<bool>(true, true), vec3<bool>(true, true, false)), Struct_1(1439f, vec3<bool>(true, false, true), 42863u, vec2<bool>(true, false), vec3<bool>(false, true, false)), Struct_1(3607f, vec3<bool>(false, false, false), 28400u, vec2<bool>(false, true), vec3<bool>(true, false, false)), Struct_1(-258f, vec3<bool>(true, false, false), 26891u, vec2<bool>(false, true), vec3<bool>(true, false, true)), Struct_1(-1437f, vec3<bool>(true, false, false), 14358u, vec2<bool>(false, false), vec3<bool>(true, true, true)), Struct_1(-512f, vec3<bool>(true, false, true), 1u, vec2<bool>(false, false), vec3<bool>(false, true, true)), Struct_1(827f, vec3<bool>(false, true, true), 0u, vec2<bool>(false, true), vec3<bool>(false, false, true)), Struct_1(1645f, vec3<bool>(true, true, true), 4848u, vec2<bool>(true, false), vec3<bool>(false, false, false)), Struct_1(806f, vec3<bool>(true, false, true), 0u, vec2<bool>(false, false), vec3<bool>(false, false, true)), Struct_1(-980f, vec3<bool>(true, true, true), 36817u, vec2<bool>(true, true), vec3<bool>(true, true, false)), Struct_1(679f, vec3<bool>(true, false, true), 0u, vec2<bool>(true, false), vec3<bool>(false, false, false)), Struct_1(-331f, vec3<bool>(true, true, false), 62478u, vec2<bool>(false, true), vec3<bool>(true, true, false)), Struct_1(1392f, vec3<bool>(false, false, false), 23353u, vec2<bool>(true, true), vec3<bool>(true, false, true)), Struct_1(-1280f, vec3<bool>(false, false, false), 38502u, vec2<bool>(true, false), vec3<bool>(false, true, true)), Struct_1(360f, vec3<bool>(true, false, true), 7534u, vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_1(585f, vec3<bool>(false, true, true), 26963u, vec2<bool>(true, true), vec3<bool>(true, true, false)), Struct_1(-1000f, vec3<bool>(false, false, false), 0u, vec2<bool>(false, false), vec3<bool>(false, false, true)), Struct_1(2685f, vec3<bool>(false, true, false), 1u, vec2<bool>(true, true), vec3<bool>(false, true, true)), Struct_1(-592f, vec3<bool>(true, true, true), 1u, vec2<bool>(true, true), vec3<bool>(true, false, true)), Struct_1(-2238f, vec3<bool>(false, false, true), 15410u, vec2<bool>(false, true), vec3<bool>(false, true, false)));

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-1314f, vec3<bool>(true, false, true), 4294967295u, vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_1(1000f, vec3<bool>(false, false, false), 7341u, vec2<bool>(false, false), vec3<bool>(false, false, true)), Struct_1(-867f, vec3<bool>(false, false, true), 16178u, vec2<bool>(false, true), vec3<bool>(true, true, true)), Struct_1(-787f, vec3<bool>(false, false, false), 0u, vec2<bool>(true, true), vec3<bool>(false, false, false)), Struct_1(165f, vec3<bool>(false, false, false), 1u, vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_1(-1880f, vec3<bool>(false, true, true), 60512u, vec2<bool>(false, false), vec3<bool>(true, false, false)), Struct_1(-932f, vec3<bool>(true, false, false), 950u, vec2<bool>(true, false), vec3<bool>(true, false, false)), Struct_1(-1730f, vec3<bool>(true, false, true), 19180u, vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_1(-2555f, vec3<bool>(false, true, false), 51762u, vec2<bool>(false, false), vec3<bool>(true, true, true)), Struct_1(1460f, vec3<bool>(true, true, true), 68091u, vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_1(648f, vec3<bool>(false, true, false), 0u, vec2<bool>(true, false), vec3<bool>(false, true, true)), Struct_1(112f, vec3<bool>(false, true, false), 1u, vec2<bool>(true, false), vec3<bool>(false, false, true)), Struct_1(1971f, vec3<bool>(false, true, false), 0u, vec2<bool>(false, false), vec3<bool>(false, false, true)), Struct_1(-1348f, vec3<bool>(true, false, false), 37092u, vec2<bool>(false, true), vec3<bool>(true, false, true)), Struct_1(-169f, vec3<bool>(false, false, true), 55617u, vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_1(-740f, vec3<bool>(false, false, true), 67713u, vec2<bool>(false, true), vec3<bool>(false, false, false)), Struct_1(694f, vec3<bool>(false, false, false), 26090u, vec2<bool>(true, true), vec3<bool>(true, false, true)), Struct_1(-1230f, vec3<bool>(false, true, true), 35143u, vec2<bool>(false, true), vec3<bool>(true, true, false)), Struct_1(-1818f, vec3<bool>(true, false, true), 11485u, vec2<bool>(true, true), vec3<bool>(true, false, true)), Struct_1(1237f, vec3<bool>(true, false, false), 13216u, vec2<bool>(false, false), vec3<bool>(true, true, true)), Struct_1(508f, vec3<bool>(true, false, false), 13095u, vec2<bool>(true, false), vec3<bool>(true, true, true)), Struct_1(-1577f, vec3<bool>(false, true, false), 49878u, vec2<bool>(true, false), vec3<bool>(false, false, false)), Struct_1(-1739f, vec3<bool>(true, false, true), 4294967295u, vec2<bool>(true, false), vec3<bool>(true, true, true)), Struct_1(-188f, vec3<bool>(false, true, true), 43965u, vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_1(-1666f, vec3<bool>(true, true, true), 13625u, vec2<bool>(false, false), vec3<bool>(true, true, false)), Struct_1(-486f, vec3<bool>(false, false, false), 0u, vec2<bool>(false, false), vec3<bool>(false, false, true)), Struct_1(1641f, vec3<bool>(false, false, true), 0u, vec2<bool>(false, false), vec3<bool>(true, false, true)), Struct_1(704f, vec3<bool>(true, false, true), 23744u, vec2<bool>(true, true), vec3<bool>(false, true, true)), Struct_1(-545f, vec3<bool>(false, false, true), 15655u, vec2<bool>(true, false), vec3<bool>(false, false, true)), Struct_1(492f, vec3<bool>(true, true, true), 1u, vec2<bool>(false, true), vec3<bool>(true, false, true)));

var<private> global2: Struct_1 = Struct_1(-755f, vec3<bool>(false, true, true), 0u, vec2<bool>(false, false), vec3<bool>(true, true, true));

var<private> global3: array<Struct_1, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<u32> {
    global0 = array<Struct_1, 24>();
    var var_0 = Struct_1(-149f, select(vec3<bool>(any(vec3<bool>(arg_0, arg_3.b.x, arg_3.d.x)), !(global2.c >= 972u), true), select(vec3<bool>(true, arg_0, any(vec3<bool>(true, true, true))), arg_1.e, select(all(vec4<bool>(false, false, false, global2.b.x)), global2.b.x, all(global2.e.yz))), true), ~(~u_input.a), select(arg_3.d, select(select(select(vec2<bool>(arg_1.d.x, arg_3.b.x), vec2<bool>(false, true), arg_3.b.xz), !arg_3.d, arg_3.d.x || true), arg_1.b.yy, !(!vec2<bool>(true, arg_0))), !all(vec4<bool>(false, global2.d.x, false, arg_3.b.x))), select(select(vec3<bool>(true, all(arg_1.b.zz), arg_2.x != -27862i), !select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_3.e.x, false, arg_3.b.x), arg_1.d.x), false), arg_3.b, arg_0));
    global0 = array<Struct_1, 24>();
    let var_1 = false;
    var_0 = global3[_wgslsmith_index_u32(6593u, 4u)];
    return ~_wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 27030u), vec2<u32>(0u, 66424u)), vec2<u32>(_wgslsmith_mod_u32(arg_3.c, arg_1.c), 1u)) | ~vec2<u32>(_wgslsmith_sub_u32(abs(4294967295u), 1u), 1u);
}

fn func_2() -> i32 {
    var var_0 = vec2<f32>(-156f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = Struct_3(Struct_2(global1[_wgslsmith_index_u32(~(~global2.c) >> ((u_input.b << (4294967295u % 32u)) % 32u), 30u)], _wgslsmith_add_vec2_u32(func_3(global2.b.x, Struct_1(var_0.x, global2.e, 34833u, vec2<bool>(false, true), global2.e), firstLeadingBit(vec2<i32>(-1i, -1i)), global0[_wgslsmith_index_u32(global2.c ^ global2.c, 24u)]), ~vec2<u32>(13597u, 37994u) ^ vec2<u32>(1u, global2.c)), Struct_1(144f, !global2.b, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.c, 22473u, u_input.b, 0u), vec4<u32>(0u, 1u, 50353u, global2.c)), ~vec4<u32>(0u, 101732u, u_input.b, global2.c)), global2.e.zz, global2.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), vec3<bool>(337f == var_0.x, any(vec2<bool>(global2.b.x, global2.b.x)), false), u_input.b, vec2<bool>(-1093f != global2.a, true), !select(global2.e, vec3<bool>(false, true, global2.d.x), false)), true), firstTrailingBit(global2.c), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(select(4294967295u, 1u, true) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, global2.c), vec4<u32>(u_input.a, 1u, 8364u, 10586u)) % 32u)), 16915u), 24u)]);
    var var_2 = -24251i;
    var var_3 = var_1.a.b;
    var_2 = _wgslsmith_dot_vec2_i32(abs(-_wgslsmith_clamp_vec2_i32(max(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(31999i, -8011i)), firstTrailingBit(vec2<i32>(7972i, 9381i)), abs(vec2<i32>(2147483647i, -1i)))), _wgslsmith_sub_vec2_i32(select(vec2<i32>(12412i, -49227i), vec2<i32>(-60610i, -15572i), !var_1.a.c.b.zx), vec2<i32>(1i, 1i)) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.a.a.c, u_input.a), ~reverseBits(vec2<u32>(22831u, var_3.x))) % vec2<u32>(32u)));
    return 38608i;
}

fn func_1() -> Struct_2 {
    var var_0 = func_2() << (0u % 32u);
    global1 = array<Struct_1, 30>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1307f - global2.a) * _wgslsmith_f_op_f32(-729f - global2.a)), select(vec3<bool>(true, true, global2.e.x), !select(global2.b, vec3<bool>(true, true, global2.b.x), true), vec3<bool>(true, all(vec4<bool>(false, global2.d.x, false, global2.e.x)), global2.b.x)), global2.c, global2.b.zy, global2.e), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 45205u), vec2<u32>(0u, 35911u)), vec2<u32>(u_input.a, 86078u)) >> (vec2<u32>(min(global2.c, 4294967295u), ~1435u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, global2.c), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global2.c), vec2<u32>(49903u, u_input.a)) ^ firstTrailingBit(vec2<u32>(u_input.a, 1u)))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.b >> (abs(~u_input.b) % 32u)), 30u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), !global2.e, reverseBits(8300u), select(select(global2.b.zz, global2.d, true), !select(vec2<bool>(global2.b.x, false), vec2<bool>(global2.d.x, true), global2.d), !select(vec2<bool>(true, global2.b.x), global2.b.xy, false)), vec3<bool>(global2.e.x, true, true)), select(true, true, any(vec2<bool>(all(vec4<bool>(true, false, true, true)), !global2.d.x))));
    var_1 = Struct_2(var_1.d, var_1.b, Struct_1(_wgslsmith_f_op_f32(step(global2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(461f, 163f)))))), !global2.b, global2.c, select(!select(global2.b.xx, global2.d, global2.b.zy), var_1.c.b.zz, global2.d.x), vec3<bool>(any(!vec3<bool>(false, var_1.d.d.x, false)), false, true)), Struct_1(1247f, var_1.d.b, var_1.c.c, global2.d, vec3<bool>(true || global2.d.x, !(global2.e.x && false), global2.c <= _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c, u_input.a, u_input.b, u_input.a), vec4<u32>(17146u, var_1.a.c, global2.c, 1u)))), !(4294967295u == _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.c.c), countOneBits(var_1.b))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(462f, var_1.d.a)) * _wgslsmith_f_op_f32(-var_1.d.a)))))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(-808f + _wgslsmith_f_op_f32(-var_1.d.a)))), !select(select(global2.b, var_1.a.e, false), vec3<bool>(true, var_1.d.e.x, true), vec3<bool>(true, true, true)), var_1.c.c & 1u, select(vec2<bool>(true, true), vec2<bool>(true, false), var_1.d.e.x), var_1.d.e), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global2.c, u_input.b) >> (vec3<u32>(45540u, global2.c, u_input.b) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(42654u, var_1.b.x, 4294967295u))), 86290u), abs(var_1.b)), global3[_wgslsmith_index_u32(66843u, 4u)], global1[_wgslsmith_index_u32(0u, 30u)], false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(), 8033u, Struct_1(global2.a, select(!(!global2.e), !select(vec3<bool>(true, true, global2.d.x), global2.e, global2.d.x), vec3<bool>(global2.a < -606f, all(vec4<bool>(false, true, global2.b.x, true)), false)), firstTrailingBit(_wgslsmith_mod_u32(79374u, u_input.b)), vec2<bool>(global2.e.x, all(vec3<bool>(global2.d.x, global2.e.x, global2.e.x))), !vec3<bool>(global2.b.x, any(vec4<bool>(true, global2.b.x, true, global2.d.x)), false)));
    global3 = array<Struct_1, 4>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(526f - _wgslsmith_f_op_f32(abs(var_0.c.a))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(916f, _wgslsmith_f_op_f32(global2.a - -819f))), -349f)), select(var_0.c.e, vec3<bool>(global2.e.x, var_0.c.d.x, any(select(vec4<bool>(global2.e.x, global2.b.x, true, true), vec4<bool>(true, global2.e.x, global2.e.x, false), vec4<bool>(var_0.c.d.x, global2.d.x, var_0.c.d.x, global2.d.x)))), all(!select(var_0.a.c.b.yx, var_0.a.d.e.zy, global2.d.x))), 0u, !select(func_1().a.e.xx, vec2<bool>(var_0.c.d.x, select(false, false, false)), vec2<bool>(false != var_0.a.d.e.x, true)), var_0.c.e);
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.c.c, 53029u), 24u)], var_0.a.b, global3[_wgslsmith_index_u32(func_1().c.c, 4u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.c, countOneBits(0u)), 4u)], var_0.c.a >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -331f))));
    var var_3 = false;
    var var_4 = ~(~(-2147483647i >> (1u % 32u)));
    var_0 = Struct_3(Struct_2(var_2.d, var_2.b, func_1().d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.d.a))), var_2.c.e, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, var_2.a.c, global2.c), countOneBits(vec3<u32>(global2.c, 16827u, var_2.b.x))), func_1().c.b.zy, vec3<bool>(var_0.a.e, true, all(global2.e))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.c.c, 0u, 34023u, var_0.b), ~vec4<u32>(4294967295u, 1u, var_2.b.x, u_input.b)) != ~_wgslsmith_div_u32(0u, u_input.b)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, u_input.b), ~1u, var_1.c), Struct_1(var_2.d.a, select(vec3<bool>(true, !var_2.d.d.x, u_input.a >= var_1.c), select(vec3<bool>(var_0.c.b.x, global2.b.x, true), !var_2.a.e, select(vec3<bool>(false, var_0.c.d.x, true), var_2.c.b, var_1.d.x)), select(select(var_2.d.b, vec3<bool>(var_2.a.d.x, false, var_0.a.a.e.x), global2.e), var_2.d.b, var_0.c.e)), ~(var_1.c >> (~4294967295u % 32u)), vec2<bool>(true, -1188f > var_0.a.a.a), !var_0.a.c.e));
    global1 = array<Struct_1, 30>();
    var var_5 = Struct_3(Struct_2(var_0.a.c, ~max(var_0.a.b, var_0.a.b >> (var_2.b % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-349f - 592f)), select(select(vec3<bool>(global2.e.x, global2.b.x, true), vec3<bool>(true, var_0.a.d.b.x, false), global2.b), global2.b, vec3<bool>(var_2.e, true, true)), min(_wgslsmith_clamp_u32(var_1.c, 25254u, 1u), ~var_2.b.x), var_0.a.a.b.xy, vec3<bool>(var_1.e.x | var_0.c.e.x, !var_1.d.x, true)), var_1, !func_1().c.b.x), var_1.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a * var_1.a), _wgslsmith_f_op_f32(sign(var_1.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.a.a)))), !vec3<bool>(any(var_1.e.zx), true, true), 7244u, vec2<bool>(!var_1.d.x, var_2.a.e.x), !(!(!var_1.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.c.a, 2049f, _wgslsmith_f_op_f32(var_2.a.a - -3678f), _wgslsmith_f_op_f32(ceil(var_5.c.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(493f, var_1.a, 1000f, var_5.a.a.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1308f, -357f, 2487f, 472f)))))));
}

