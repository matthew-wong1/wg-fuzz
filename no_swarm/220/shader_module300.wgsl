struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(true, false, 0i), Struct_1(true, true, 55241i), -536f, vec3<f32>(239f, 562f, 3053f), Struct_1(false, false, -25272i)), Struct_2(Struct_1(true, false, 1i), Struct_1(true, false, -60269i), 1472f, vec3<f32>(-463f, 1000f, -153f), Struct_1(true, true, -1i)), Struct_2(Struct_1(true, true, -13451i), Struct_1(false, true, i32(-2147483648)), 234f, vec3<f32>(547f, 838f, 354f), Struct_1(true, false, 2147483647i)), Struct_2(Struct_1(true, true, 3924i), Struct_1(true, false, i32(-2147483648)), 553f, vec3<f32>(933f, 1000f, -935f), Struct_1(true, false, 74130i)), Struct_2(Struct_1(true, false, i32(-2147483648)), Struct_1(false, false, -777i), -1195f, vec3<f32>(-753f, 453f, 1000f), Struct_1(false, false, -9191i)), Struct_2(Struct_1(false, false, 1i), Struct_1(true, false, -55010i), 1941f, vec3<f32>(604f, 1479f, 1116f), Struct_1(false, true, 12356i)), Struct_2(Struct_1(true, false, 0i), Struct_1(true, true, 0i), 246f, vec3<f32>(110f, -274f, -1000f), Struct_1(true, false, 0i)), Struct_2(Struct_1(false, false, 1i), Struct_1(false, true, i32(-2147483648)), -1680f, vec3<f32>(-1364f, -526f, -787f), Struct_1(true, false, 8139i)), Struct_2(Struct_1(true, false, -19087i), Struct_1(true, false, -58254i), -1000f, vec3<f32>(1406f, 146f, -1519f), Struct_1(false, true, -9880i)), Struct_2(Struct_1(false, false, -22515i), Struct_1(false, true, 26582i), -245f, vec3<f32>(-876f, 1000f, -354f), Struct_1(true, true, 3230i)), Struct_2(Struct_1(false, false, -1i), Struct_1(true, false, 25083i), -719f, vec3<f32>(625f, -584f, 354f), Struct_1(false, false, i32(-2147483648))), Struct_2(Struct_1(true, false, -5040i), Struct_1(false, true, 9689i), -1705f, vec3<f32>(1000f, 856f, 1338f), Struct_1(true, false, i32(-2147483648))), Struct_2(Struct_1(false, false, 40963i), Struct_1(false, true, 31554i), 1210f, vec3<f32>(-170f, 625f, -1242f), Struct_1(true, true, 105524i)), Struct_2(Struct_1(false, true, -31645i), Struct_1(true, true, -1i), 336f, vec3<f32>(-620f, 1302f, -845f), Struct_1(true, true, i32(-2147483648))), Struct_2(Struct_1(false, false, 1i), Struct_1(true, true, 25797i), 864f, vec3<f32>(226f, -415f, -1347f), Struct_1(true, true, 0i)), Struct_2(Struct_1(true, false, 0i), Struct_1(true, false, -26486i), -645f, vec3<f32>(-558f, -1968f, -1337f), Struct_1(true, false, 1i)), Struct_2(Struct_1(false, false, 1i), Struct_1(true, false, -1i), -825f, vec3<f32>(-253f, -1908f, 185f), Struct_1(false, true, -1833i)), Struct_2(Struct_1(false, true, -59358i), Struct_1(false, true, i32(-2147483648)), 1215f, vec3<f32>(1267f, -1234f, 749f), Struct_1(true, true, 1i)), Struct_2(Struct_1(false, false, -54816i), Struct_1(true, true, 2147483647i), 109f, vec3<f32>(570f, 1000f, -538f), Struct_1(false, true, 0i)), Struct_2(Struct_1(true, false, 32878i), Struct_1(true, false, 421i), -348f, vec3<f32>(-518f, 625f, 1869f), Struct_1(true, true, -11724i)), Struct_2(Struct_1(true, true, 1i), Struct_1(true, false, 0i), -1000f, vec3<f32>(1067f, -448f, 1456f), Struct_1(false, true, -30787i)));

var<private> global1: array<u32, 11> = array<u32, 11>(4294967295u, 63334u, 85447u, 50775u, 1u, 4294967295u, 4294967295u, 22265u, 36206u, 4294967295u, 86414u);

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<u32, 14> = array<u32, 14>(0u, 4294967295u, 4294967295u, 4294967295u, 0u, 35466u, 45995u, 4294967295u, 0u, 0u, 51554u, 101613u, 3921u, 25095u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    var var_0 = select(-_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(-61232i, u_input.a.x, -1i)), vec3<i32>(u_input.a.x, firstLeadingBit(u_input.a.x), 6945i), u_input.a), vec3<i32>(~u_input.a.x, _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -54204i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(6258i, u_input.a.x, u_input.a.x), vec3<i32>(-25645i, u_input.a.x, u_input.a.x)), vec3<i32>(2147483647i, u_input.a.x, 1i) >> (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 11u)], 11u)], 11u)], 4294967295u, 0u) % vec3<u32>(32u)), ~vec3<i32>(21471i, u_input.a.x, -39530i))), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.a.x, u_input.a.x, 50171i, 0i)), abs(vec4<i32>(u_input.a.x, 0i, u_input.a.x, -1i) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), select(vec3<bool>(!(!global2.x), global2.x, global2.x), select(select(select(vec3<bool>(false, false, false), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, false)), !vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(false, global2.x, true), true), any(vec2<bool>(true, false))), all(vec4<bool>(true, false, global2.x, global2.x)) == true), vec3<bool>(false, false, global2.x)));
    global1 = array<u32, 11>();
    global1 = array<u32, 11>();
    let var_1 = ~max(~151593u, ~select(20398u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(40886u, 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 36215u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31847u, 11u)], 14u)], 14u)]), vec4<u32>(1u, global1[_wgslsmith_index_u32(51750u, 11u)], global3[_wgslsmith_index_u32(0u, 14u)], 25459u)), true));
    let var_2 = global0[_wgslsmith_index_u32(min(27784u, var_1), 21u)];
    return global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(reverseBits(~(~vec2<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 11u)]))), countOneBits(~vec2<u32>(1u, 27999u))), global1[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(var_1, _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1, 11u)], 11u)]))), 68141u), 11u)], _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(global3[_wgslsmith_index_u32(26626u, 14u)], 71037u, global1[_wgslsmith_index_u32(34847u, 11u)]) ^ ~vec3<u32>(global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], global3[_wgslsmith_index_u32(var_1, 14u)])), ~(~vec3<u32>(30800u, 69197u, 0u)))), 14u)];
}

fn func_4(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(151f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))) * 527f), _wgslsmith_f_op_f32(f32(-1f) * -643f)));
    var var_1 = Struct_1(false, global2.x, _wgslsmith_clamp_i32(1i, reverseBits(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 577i))), u_input.a.x));
    global2 = select(select(vec2<bool>(all(select(vec2<bool>(global2.x, var_1.a), vec2<bool>(false, false), vec2<bool>(false, true))), any(select(vec4<bool>(var_1.b, true, false, global2.x), vec4<bool>(true, var_1.a, var_1.a, global2.x), vec4<bool>(false, global2.x, global2.x, false)))), !(!(!vec2<bool>(var_1.a, true))), true), select(!vec2<bool>(any(vec4<bool>(var_1.b, global2.x, global2.x, global2.x)), var_1.b), select(!select(vec2<bool>(true, true), vec2<bool>(false, global2.x), global2.x), vec2<bool>(any(vec4<bool>(var_1.b, false, true, false)), all(vec4<bool>(global2.x, var_1.b, true, false))), vec2<bool>(!var_1.a, true)), vec2<bool>(select(global2.x | global2.x, true, !global2.x), true)), any(!(!vec3<bool>(global2.x, var_1.a, false))));
    var var_2 = -2147483647i;
    global2 = select(!(!select(!vec2<bool>(global2.x, global2.x), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(true, false), vec2<bool>(true, var_1.a)), vec2<bool>(false, var_1.b))), !select(!select(vec2<bool>(true, false), vec2<bool>(false, true), var_1.a), vec2<bool>(true, global2.x), !(!vec2<bool>(true, global2.x))), !vec2<bool>(true, any(!vec4<bool>(false, true, global2.x, global2.x))));
    return 635f;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(firstLeadingBit(~(~func_3()))));
    return abs(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(0u, 14u)], _wgslsmith_sub_u32(15712u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7494u, 11u)], 14u)], 14u)]) >> (max(1u, global1[_wgslsmith_index_u32(98656u, 11u)]) % 32u)), 11u)], global1[_wgslsmith_index_u32(~(~1u), 11u)]));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> Struct_2 {
    let var_0 = ~vec3<u32>(25552u, ~4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(max(func_2(Struct_1(arg_0.a.b, arg_0.e.b, -2147483647i)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), global3[_wgslsmith_index_u32(~9354u, 14u)], global3[_wgslsmith_index_u32(~55291u, 14u)])), 14u)], 14u)]);
    var var_1 = Struct_2(Struct_1(all(select(select(vec2<bool>(true, true), vec2<bool>(global2.x, arg_0.e.b), false), vec2<bool>(true, global2.x), arg_0.b.a)), !all(!vec2<bool>(global2.x, global2.x)), ~_wgslsmith_add_i32(arg_1 >> (var_0.x % 32u), arg_1 << (var_0.x % 32u))), arg_0.a, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-494f, _wgslsmith_f_op_f32(-arg_2)), -460f, -1187f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(107f + -1145f), arg_0.d.x, _wgslsmith_f_op_f32(func_4(var_0.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-792f, 1178f, -677f)))), !select(vec3<bool>(false, arg_0.a.b, true), vec3<bool>(global2.x, true, false), global2.x))))), Struct_1(arg_0.b.b, !all(select(vec3<bool>(false, false, true), vec3<bool>(true, arg_0.e.b, true), arg_0.e.a)), u_input.a.x));
    var var_2 = var_1.b;
    var var_3 = var_1.e;
    global2 = !(!(!vec2<bool>(true, global2.x)));
    return Struct_2(arg_0.e, var_1.b, -1000f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.d) + _wgslsmith_f_op_vec3_f32(trunc(var_1.d))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(var_1.d)))))), select(!(!vec3<bool>(arg_0.b.b, var_3.a, arg_0.e.b)), vec3<bool>(true, false, any(vec2<bool>(var_1.a.b, true))), var_3.b))), Struct_1(any(vec4<bool>(all(vec2<bool>(global2.x, false)), var_3.b, var_1.e.b, false)), true, var_2.c));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool) -> bool {
    var var_0 = arg_0.d.yz;
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.d.zy);
    var_0 = func_1(func_1(arg_0, arg_0.e.c, var_0.x), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1938f, _wgslsmith_f_op_f32(f32(-1f) * -1894f))))).d.yz;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(true, true | global2.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-455f * 671f), _wgslsmith_f_op_f32(ceil(-613f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -811f))))));
    global0 = array<Struct_2, 21>();
    var_0 = select(vec2<bool>(select(global2.x, false, true & (u_input.a.x <= u_input.a.x)), global2.x), !vec2<bool>(all(!vec3<bool>(global2.x, true, true)), func_5(func_1(Struct_2(Struct_1(global2.x, false, u_input.a.x), Struct_1(var_0.x, var_0.x, u_input.a.x), 158f, vec3<f32>(1158f, 2145f, 1000f), Struct_1(false, var_0.x, -2147483647i)), u_input.a.x, 199f), vec4<i32>(u_input.a.x, 0i, -55675i, 1186i), var_0.x)), select(select(select(vec2<bool>(var_0.x, global2.x), vec2<bool>(false, true), vec2<bool>(var_0.x, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, var_0.x), vec2<bool>(true, false), vec2<bool>(false, true)), !global2.x), true), vec2<bool>(true, true), all(!select(vec2<bool>(var_0.x, global2.x), vec2<bool>(global2.x, var_0.x), vec2<bool>(true, false)))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(max(_wgslsmith_add_u32(4294967295u, func_2(Struct_1(false, global2.x, u_input.a.x))), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18936u, 14u)], 11u)], 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(76223u, 14u)], 14u)], 14u)]), 11u)], 14u)], 0u), 14u)]), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], reverseBits(~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 11u)]))), ~(~_wgslsmith_sub_u32(44479u, global3[_wgslsmith_index_u32(4294967295u, 14u)]) ^ 70639u)), 21u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(160f, var_2.c, var_2.c, var_2.d.x)))))));
    global1 = array<u32, 11>();
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.d.x, -108f, var_3.x, 1059f), _wgslsmith_f_op_vec4_f32(vec4<f32>(644f, -884f, var_2.c, var_3.x) + vec4<f32>(var_2.d.x, -1908f, -1000f, var_2.c)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~abs(vec2<i32>(-4750i, 2147483647i)))), func_1(func_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~43206u, 0u), 21u)], u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -989f)), 1i, 1756f).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(f32(-1f) * -1495f)), var_2.d.x))), _wgslsmith_mult_vec4_u32(max(countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], global1[_wgslsmith_index_u32(0u, 11u)], 0u, 4294967295u)), vec4<u32>(1779u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63497u, 11u)], 11u)], 11u)], 11u)], global3[_wgslsmith_index_u32(6744u, 14u)], 38964u)), abs(vec4<u32>(73670u, 13379u, 0u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 14u)]))) >> (vec4<u32>(~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 11u)] | 30151u, ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], global3[_wgslsmith_index_u32(2989u, 14u)]), global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32((1u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30059u, 11u)], 11u)], 11u)] % 32u)) >> (min(5710u, global1[_wgslsmith_index_u32(1u, 11u)]) % 32u), 11u)]) % vec4<u32>(32u)));
}

