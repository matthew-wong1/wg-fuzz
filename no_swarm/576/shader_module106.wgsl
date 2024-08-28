struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(2393f, 1000f), vec2<f32>(-1641f, 1552f), vec2<f32>(727f, -108f), vec2<f32>(1020f, -2263f), vec2<f32>(-351f, 207f), vec2<f32>(-2621f, 1893f), vec2<f32>(1873f, 340f), vec2<f32>(758f, 421f), vec2<f32>(1453f, -1396f), vec2<f32>(818f, 280f), vec2<f32>(-131f, 1000f), vec2<f32>(463f, 1000f), vec2<f32>(-1000f, -2850f), vec2<f32>(221f, 1295f), vec2<f32>(434f, -1437f), vec2<f32>(-1908f, 1041f), vec2<f32>(777f, 1683f), vec2<f32>(1000f, 322f), vec2<f32>(326f, -447f), vec2<f32>(134f, -165f), vec2<f32>(3348f, 1722f), vec2<f32>(-430f, 1044f), vec2<f32>(438f, 723f), vec2<f32>(-1531f, 1079f), vec2<f32>(732f, 1646f), vec2<f32>(592f, 1685f), vec2<f32>(921f, 120f), vec2<f32>(434f, 193f), vec2<f32>(1115f, 2403f));

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(33372i), Struct_2(2147483647i), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648)), Struct_2(2147483647i), Struct_2(2147483647i), Struct_2(2147483647i), Struct_2(i32(-2147483648)), Struct_2(-21944i), Struct_2(13159i), Struct_2(-2104i), Struct_2(14573i), Struct_2(2147483647i), Struct_2(0i), Struct_2(-1i), Struct_2(17107i), Struct_2(-17972i));

var<private> global2: array<Struct_3, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool) -> bool {
    global2 = array<Struct_3, 12>();
    global2 = array<Struct_3, 12>();
    let var_0 = Struct_1(1i, select(!vec4<bool>(false, true, arg_0 && arg_0, arg_0), !select(!vec4<bool>(true, true, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, false, arg_0), select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), u_input.b.x >= (~u_input.b.x >> (_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) % 32u))));
    global0 = array<vec2<f32>, 29>();
    let var_1 = !(-_wgslsmith_add_i32(~u_input.a.x, _wgslsmith_add_i32(var_0.a, 28874i)) <= u_input.a.x);
    return arg_0;
}

fn func_2() -> Struct_2 {
    let var_0 = 44169u;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1806f - -291f)), _wgslsmith_f_op_f32(f32(-1f) * -288f))), -894f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-811f + -993f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1710f, -831f) + -274f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) + _wgslsmith_f_op_f32(floor(-1000f))), true)), 1091f);
    let var_2 = (_wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(53232i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 14886i)), vec3<i32>(u_input.a.x, u_input.a.x, -29130i), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), vec3<i32>(30942i, u_input.a.x, u_input.a.x)) << (~_wgslsmith_div_u32(select(32087u, 64969u, true), ~0u) % 32u)) != ~(~1i);
    let var_3 = select(vec4<bool>(var_2 || !all(vec2<bool>(var_2, var_2)), func_3(false != var_2), any(!vec4<bool>(true, var_2, var_2, false)), false), select(select(select(select(vec4<bool>(false, true, var_2, false), vec4<bool>(var_2, false, var_2, var_2), var_2), select(vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(var_2, true, true, false), true), true), select(!vec4<bool>(var_2, var_2, false, var_2), !vec4<bool>(false, var_2, var_2, true), select(vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(var_2, false, false, true), var_2)), select(!vec4<bool>(true, var_2, var_2, var_2), select(vec4<bool>(true, true, var_2, true), vec4<bool>(false, var_2, var_2, false), vec4<bool>(var_2, false, false, true)), select(vec4<bool>(false, true, true, var_2), vec4<bool>(var_2, var_2, false, var_2), var_2))), vec4<bool>(false, true && any(vec3<bool>(var_2, var_2, var_2)), all(!vec4<bool>(true, true, true, var_2)), true), true), !select(vec4<bool>(func_3(var_2), var_2, any(vec2<bool>(var_2, false)), var_2), vec4<bool>(any(vec3<bool>(var_2, var_2, false)), var_2, -24070i <= u_input.a.x, false != var_2), select(vec4<bool>(var_2, var_2, var_2, var_2), !vec4<bool>(false, var_2, var_2, var_2), select(true, var_2, false))));
    var var_4 = vec3<i32>(u_input.a.x, 1i, 4577i);
    return Struct_2(-_wgslsmith_div_i32(1i, ~var_4.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_1(i32(-1i) * -62865i, select(arg_0.b, vec4<bool>(arg_0.b.x, any(arg_0.b.wzz) | arg_0.b.x, true, all(!vec2<bool>(arg_0.b.x, true))), false));
    var var_1 = func_2();
    let var_2 = var_0.b.xyx;
    var_1 = global1[_wgslsmith_index_u32(arg_1.x, 17u)];
    let var_3 = global2[_wgslsmith_index_u32(arg_1.x, 12u)];
    return global2[_wgslsmith_index_u32(arg_1.x, 12u)];
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    global0 = array<vec2<f32>, 29>();
    global0 = array<vec2<f32>, 29>();
    global0 = array<vec2<f32>, 29>();
    global2 = array<Struct_3, 12>();
    let var_0 = ~u_input.b;
    return func_1(Struct_1(i32(-1i) * -3331i, select(!(!vec4<bool>(false, arg_2, false, arg_0.a.x)), !select(vec4<bool>(arg_2, true, false, true), vec4<bool>(arg_1.a.x, arg_0.a.x, arg_0.a.x, false), true), arg_2)), vec2<u32>(4294967295u, arg_1.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(1i, _wgslsmith_mult_i32(-2147483647i, u_input.a.x), _wgslsmith_div_i32(u_input.a.x, u_input.a.x << (7897u % 32u)), _wgslsmith_div_i32(i32(-1i) * -54553i, ~(-13390i))), (vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << ((u_input.b << (var_0 % vec4<u32>(32u))) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_add_i32(-1i, 41258i), ~59112i, 0i, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 792f, 1859f, -656f), vec4<f32>(451f, 745f, -1421f, -715f), false)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1086f, 2081f, 941f, 440f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1165f, 1504f, -2674f))))));
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> i32 {
    var var_0 = max(6603i, -1i) <= u_input.a.x;
    global2 = array<Struct_3, 12>();
    global0 = array<vec2<f32>, 29>();
    global2 = array<Struct_3, 12>();
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, func_4(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], Struct_3(arg_2.a, vec3<u32>(1u, 0u, arg_2.b.x)), arg_0.x).b.x), arg_2.b.zx) | arg_3, ~firstLeadingBit(0u));
    return min(arg_1, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-29894i) ^ _wgslsmith_sub_i32(func_5(vec2<bool>(true, true), -(i32(-1i) * -26864i), func_4(func_1(Struct_1(u_input.a.x, vec4<bool>(true, true, true, true)), u_input.b.zy, vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x), vec4<f32>(244f, 315f, -591f, 3157f)), Struct_3(vec3<bool>(false, true, true), vec3<u32>(2167u, u_input.b.x, u_input.b.x)), false), 1u), _wgslsmith_mult_i32(-1i, -2147483647i ^ _wgslsmith_mod_i32(u_input.a.x, 1i)));
    var var_1 = Struct_1(select(max(~10694i, u_input.a.x), (u_input.a.x << (44709u % 32u)) >> (_wgslsmith_add_u32(35189u, 11725u) % 32u), false) ^ _wgslsmith_dot_vec4_i32(max(vec4<i32>(0i, -29036i, var_0, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, u_input.a.x, 2147483647i, 0i), vec4<i32>(-4364i, 2147483647i, 45657i, u_input.a.x))), select(-vec4<i32>(14943i, var_0, u_input.a.x, var_0), ~vec4<i32>(14598i, -2147483647i, -7854i, -15255i), true)), select(vec4<bool>(true, !(14008i <= u_input.a.x), !all(vec4<bool>(true, true, true, true)), true), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, func_4(global2[_wgslsmith_index_u32(65748u, 12u)], Struct_3(vec3<bool>(false, true, true), u_input.b.xyw), true).a.x, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, false, true), all(vec2<bool>(true, true))), true)));
    global1 = array<Struct_2, 17>();
    global0 = array<vec2<f32>, 29>();
    global2 = array<Struct_3, 12>();
    global1 = array<Struct_2, 17>();
    var var_2 = 1u;
    global2 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(3560u), _wgslsmith_add_vec4_i32(~(-abs(vec4<i32>(1i, var_1.a, 0i, u_input.a.x))), countOneBits(-(~vec4<i32>(var_0, var_0, var_0, var_1.a)))), vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-13821i, var_0, 2147483647i, 48156i), vec4<i32>(var_1.a, u_input.a.x, 17472i, 1i)), 28265i, -16288i) << (select(~abs(vec3<u32>(u_input.b.x, 0u, 24541u)), ~_wgslsmith_mult_vec3_u32(u_input.b.xyx, vec3<u32>(u_input.b.x, 0u, u_input.b.x)), true) % vec3<u32>(32u)), max(firstLeadingBit(~u_input.a ^ -u_input.a), u_input.a), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(51511u, u_input.b.x) >> (_wgslsmith_mult_u32(63088u, u_input.b.x) % 32u), 29u)]), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-790f, 304f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(545f - -1142f)))))));
}

