struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(1458f, 0i, true, vec3<i32>(50818i, -40328i, 1i)), Struct_1(569f, -1i, true, vec3<i32>(-1i, 11816i, i32(-2147483648))), Struct_1(-219f, 2147483647i, true, vec3<i32>(i32(-2147483648), 2147483647i, 65241i)), Struct_1(1238f, 2147483647i, true, vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648))), Struct_1(1000f, 30068i, false, vec3<i32>(14567i, 59121i, 1i)), Struct_1(-1000f, 37049i, false, vec3<i32>(33066i, -3123i, 1i)), Struct_1(1595f, 2147483647i, true, vec3<i32>(20945i, 0i, 1i)), Struct_1(142f, -1i, true, vec3<i32>(-5067i, 26961i, 2147483647i)), Struct_1(-629f, i32(-2147483648), false, vec3<i32>(-7829i, -62671i, -1i)), Struct_1(1071f, -15655i, false, vec3<i32>(2147483647i, 2147483647i, -19724i)), Struct_1(1018f, 26275i, true, vec3<i32>(-1i, -1i, -8976i)), Struct_1(-1569f, -44338i, false, vec3<i32>(0i, -1i, -1i)), Struct_1(-197f, 0i, false, vec3<i32>(-1i, 34009i, 1i)), Struct_1(-1833f, -5341i, false, vec3<i32>(-56202i, 2147483647i, 2147483647i)), Struct_1(837f, 3883i, true, vec3<i32>(2147483647i, -1i, 33610i)), Struct_1(351f, -58005i, false, vec3<i32>(-47236i, 12596i, -61695i)), Struct_1(406f, 0i, false, vec3<i32>(-1i, 1i, 7513i)), Struct_1(-341f, -1i, false, vec3<i32>(-1i, -1i, i32(-2147483648))), Struct_1(579f, 0i, false, vec3<i32>(-30206i, 249i, 15574i)), Struct_1(153f, -26558i, true, vec3<i32>(2147483647i, 0i, -53124i)), Struct_1(-336f, -15530i, false, vec3<i32>(1i, 1i, -1350i)), Struct_1(316f, -46380i, false, vec3<i32>(31680i, 7654i, 10326i)), Struct_1(-932f, 32208i, false, vec3<i32>(i32(-2147483648), -18183i, 18010i)), Struct_1(411f, 35170i, false, vec3<i32>(-44351i, -44530i, 41560i)), Struct_1(-118f, -7030i, true, vec3<i32>(513i, 0i, 2147483647i)), Struct_1(-834f, 2147483647i, false, vec3<i32>(0i, 1i, -25005i)), Struct_1(-1064f, -27375i, false, vec3<i32>(19374i, -39545i, 1i)), Struct_1(933f, -1i, true, vec3<i32>(-64255i, 0i, 2147483647i)));

var<private> global1: u32 = 1u;

var<private> global2: array<u32, 6> = array<u32, 6>(40249u, 37234u, 4294967295u, 4294967295u, 13588u, 1u);

var<private> global3: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global4: Struct_4 = Struct_4(vec2<bool>(false, false), true, -678f, 51853i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: Struct_5) -> i32 {
    var var_0 = Struct_4(select(vec2<bool>(true, true), select(select(arg_2.a.a.yz, !global3[_wgslsmith_index_u32(arg_0, 3u)], !arg_1.a.a.xz), arg_2.a.a.xx, !select(vec2<bool>(true, arg_1.a.d.c), vec2<bool>(false, global4.b), arg_2.c.b)), vec2<bool>(true | (-128f < global4.c), !arg_1.c.b)), true, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2.b.x);
    let var_1 = max(~global2[_wgslsmith_index_u32(~(~arg_0), 6u)], select(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_0, arg_0)), ~vec2<u32>(8368u, arg_0) ^ vec2<u32>(arg_0, 1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(21491u, arg_0), vec2<u32>(1u, 15485u)), vec2<u32>(9837u, global2[_wgslsmith_index_u32(arg_0, 6u)]) | vec2<u32>(4294967295u, arg_0)), firstLeadingBit(select(vec2<u32>(48112u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)]), vec2<u32>(arg_0, 4294967295u), vec2<bool>(false, true)))), true));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -526f))), arg_1.a.d.a)), var_0.c);
    let var_3 = true;
    global4 = arg_1.c;
    return -1i;
}

fn func_4(arg_0: Struct_5) -> vec4<bool> {
    global2 = array<u32, 6>();
    global4 = arg_0.c;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-932f * -107f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-191f + _wgslsmith_f_op_f32(f32(-1f) * -1079f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1660f, arg_0.c.c, true)), global4.c)), false))));
    let var_1 = Struct_3(select(select(select(vec3<bool>(true, true, arg_0.c.b), vec3<bool>(true, false, arg_0.c.a.x), select(vec3<bool>(false, global4.a.x, global4.b), vec3<bool>(global4.a.x, false, true), arg_0.a.a)), !vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, true), !arg_0.a.a), arg_0.a.a, vec3<bool>(all(!arg_0.a.a), arg_0.c.b, arg_0.a.a.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.a.b))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-874f)) * _wgslsmith_f_op_f32(min(global4.c, global4.c))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), arg_0.a.b.x))), arg_0.a.d);
    global3 = array<vec2<bool>, 3>();
    return !(!select(vec4<bool>(true, true, arg_0.a.c, arg_0.c.a.x | false), !select(vec4<bool>(global4.b, false, var_1.a.x, false), vec4<bool>(arg_0.c.a.x, arg_0.a.d.c, true, var_1.d.c), vec4<bool>(global4.b, global4.b, var_1.a.x, true)), select(vec4<bool>(var_1.d.c, arg_0.c.b, true, global4.a.x), vec4<bool>(var_1.a.x, global4.b, false, false), vec4<bool>(var_1.d.c, true, false, var_1.c))));
}

fn func_2(arg_0: u32, arg_1: bool) -> f32 {
    global4 = Struct_4(!vec2<bool>(arg_1, global4.a.x), true, _wgslsmith_f_op_f32(-global4.c), u_input.a.x);
    global2 = array<u32, 6>();
    var var_0 = func_4(Struct_5(Struct_3(vec3<bool>(any(vec4<bool>(false, arg_1, true, false)), !arg_1, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1588f, global4.c, global4.c))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1134f, global4.c, -733f))), true, Struct_1(_wgslsmith_f_op_f32(min(global4.c, -940f)), global4.d | u_input.a.x, arg_1 && false, vec3<i32>(-4839i, 2147483647i, global4.d))), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -13229i, -2147483647i, abs(-31084i)), -reverseBits(vec4<i32>(global4.d, global4.d, 2147483647i, global4.d)), vec4<i32>(-1i, func_3(1u, Struct_5(Struct_3(vec3<bool>(true, true, global4.b), vec3<f32>(global4.c, -1000f, global4.c), global4.b, global0[_wgslsmith_index_u32(arg_0, 28u)]), vec4<i32>(u_input.a.x, u_input.a.x, global4.d, -1i), Struct_4(vec2<bool>(false, false), global4.a.x, 1349f, global4.d)), Struct_5(Struct_3(vec3<bool>(global4.a.x, global4.b, false), vec3<f32>(global4.c, global4.c, global4.c), arg_1, global0[_wgslsmith_index_u32(9040u, 28u)]), vec4<i32>(2147483647i, -2147483647i, u_input.a.x, 2147483647i), Struct_4(vec2<bool>(global4.a.x, true), true, global4.c, u_input.a.x))), countOneBits(42827i), ~(-1i))), Struct_4(!global4.a, true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global4.c, -702f, arg_1)), _wgslsmith_f_op_f32(global4.c - global4.c))), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, global4.d, 0i), u_input.a.zzx))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c) - global4.c);
    global4 = Struct_4(var_0.zw, false, var_1, -1i);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.c, _wgslsmith_f_op_f32(floor(global4.c))) * var_1);
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_1, 28>();
    global4 = Struct_4(!(!vec2<bool>(global4.b, all(vec3<bool>(true, true, false)))), true, _wgslsmith_f_op_f32(func_2(~_wgslsmith_clamp_u32(~4294967295u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(1u, 6u)], 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(50227u, 6u)], 27068u, 22317u)), 6u)], 0u), all(vec2<bool>(!global4.a.x, global4.a.x)))), -1i);
    let var_0 = Struct_3(!func_4(Struct_5(Struct_3(vec3<bool>(global4.b, false, global4.b), vec3<f32>(global4.c, -373f, global4.c), global4.a.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)], 28u)]), abs(vec4<i32>(-56707i, -29822i, -6181i, 1i)), Struct_4(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12057u, 6u)], 6u)], 3u)], global4.a.x, -813f, -1i))).zzx, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-755f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(814f, -482f)) - _wgslsmith_f_op_f32(f32(-1f) * -311f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1337f + 141f))))), all(vec4<bool>(global4.a.x, true, (true | global4.b) == global4.a.x, global4.b)), Struct_1(global4.c, -17227i, global4.a.x, u_input.a.yzz));
    global0 = array<Struct_1, 28>();
    return Struct_3(select(vec3<bool>(select(true, false && global4.b, false), any(!vec4<bool>(false, true, var_0.d.c, global4.b)), var_0.a.x), select(vec3<bool>(any(vec3<bool>(false, true, var_0.a.x)), true || global4.b, true), vec3<bool>(!var_0.a.x, 6629i > u_input.a.x, true), vec3<bool>(false, global4.a.x && false, any(vec4<bool>(var_0.d.c, var_0.c, global4.b, var_0.a.x)))), all(!vec4<bool>(var_0.a.x, global4.a.x, true, var_0.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b, var_0.b)), true, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_4(global4.a, global4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -183f, false)))) + global4.c), -2147483647i);
    let var_0 = func_1();
    var var_1 = select(var_0.a.zy, var_0.a.yz, true);
    let var_2 = var_0;
    var var_3 = func_1();
    var var_4 = var_3.d.a;
    var var_5 = Struct_5(func_1(), countOneBits(-min(vec4<i32>(2147483647i, global4.d, -11943i, 2147483647i) ^ u_input.a, u_input.a >> (vec4<u32>(29224u, 1u, 4294967295u, global2[_wgslsmith_index_u32(1u, 6u)]) % vec4<u32>(32u)))), Struct_4(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)] << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)] % 32u), _wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)]), any(vec4<bool>(false, false, var_1.x, global4.a.x))) << (global2[_wgslsmith_index_u32(31956u, 6u)] % 32u), 6u)], 3u)], !var_0.c, -1702f, countOneBits(min(func_1().d.b, func_1().d.b))));
    var var_6 = Struct_4(func_1().a.zz, var_0.d.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(795f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.d.a * -1426f), _wgslsmith_f_op_f32(sign(var_5.c.c))))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(-27534i, 25907i, u_input.a.x, 2147483647i), var_5.b), u_input.a), global4.d));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(min(global2[_wgslsmith_index_u32(16975u, 6u)], 4892u) << (38674u % 32u), 11105u), ~max(0u & global2[_wgslsmith_index_u32(9530u, 6u)], abs(0u)) ^ abs(27666u), vec4<u32>(61018u, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(3868u, 6510u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19187u, 6u)], 6u)], 6u)], 4294967295u)) << (~global2[_wgslsmith_index_u32(0u, 6u)] % 32u), 6u)]), 6u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(48020u, global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(4294967295u, 6u)]), 6u)]), 6u)], min(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(19737u, 6u)], 4294967295u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)]), 6u)], global2[_wgslsmith_index_u32(abs(countOneBits(1u)), 6u)])));
}

