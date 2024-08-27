struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(i32(-2147483648), -28609i, -38373i, -12054i), vec4<i32>(2147483647i, -31635i, 1i, -3601i), vec4<i32>(1i, 4142i, 2147483647i, 68370i), vec4<i32>(47721i, -1i, 2147483647i, -22408i), vec4<i32>(1i, -20871i, -29130i, -36132i), vec4<i32>(2147483647i, -15215i, 1i, -1i), vec4<i32>(-30636i, 1i, -1i, -1790i), vec4<i32>(-14419i, 0i, 1i, -7317i), vec4<i32>(47484i, -21196i, 2147483647i, -1i), vec4<i32>(-1i, -5704i, 43713i, 2416i), vec4<i32>(-20289i, 8555i, 51302i, 23957i), vec4<i32>(i32(-2147483648), -5566i, 2147483647i, 1i), vec4<i32>(2147483647i, 1i, -73788i, 2147483647i), vec4<i32>(0i, 12545i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-5221i, 29811i, 40577i, -27820i), vec4<i32>(-7333i, i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(3293i, -1i, -21908i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(-3121i, -19060i, 0i, -4861i), vec4<i32>(1i, -1i, -1i, 43922i), vec4<i32>(62719i, 1i, -3769i, -25113i), vec4<i32>(-1794i, 13429i, 2147483647i, -42106i), vec4<i32>(i32(-2147483648), -61755i, 40335i, 2147483647i), vec4<i32>(1i, i32(-2147483648), 55166i, 2147483647i), vec4<i32>(-36782i, -1i, 0i, i32(-2147483648)), vec4<i32>(1i, 38989i, 1i, -1i), vec4<i32>(-4997i, 2147483647i, 0i, 45290i), vec4<i32>(22418i, 3504i, 3970i, 1i), vec4<i32>(2147483647i, 2147483647i, 8428i, -6974i), vec4<i32>(-15739i, 29533i, 0i, 1i), vec4<i32>(2147483647i, -1i, -30792i, -1i), vec4<i32>(1i, 28027i, -11127i, 0i));

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(-855f, i32(-2147483648), -1i), Struct_2(-487f, -1i, i32(-2147483648)), Struct_2(-1581f, -26524i, 85973i), Struct_2(944f, 2147483647i, 2805i), Struct_2(178f, 13889i, 1i), Struct_2(483f, 1i, 1i), Struct_2(555f, 1i, 1i), Struct_2(-323f, 1i, -8976i), Struct_2(1000f, 36838i, -1i), Struct_2(335f, -35652i, 2900i), Struct_2(1011f, 2147483647i, 0i), Struct_2(-1279f, -1i, 15774i), Struct_2(905f, -62407i, -10872i), Struct_2(-2415f, 0i, -21367i), Struct_2(-1000f, -43556i, i32(-2147483648)), Struct_2(-1405f, -53969i, -14675i), Struct_2(-2621f, i32(-2147483648), -1i), Struct_2(1126f, -24283i, 2147483647i), Struct_2(-778f, 1i, 2147483647i), Struct_2(128f, -1i, 1i), Struct_2(1368f, 33105i, 0i), Struct_2(814f, 13852i, i32(-2147483648)), Struct_2(2250f, 2147483647i, i32(-2147483648)), Struct_2(-494f, -26784i, 1i));

var<private> global3: Struct_4;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<f32>) -> vec2<f32> {
    global3 = Struct_4(true);
    global0 = Struct_4(any(!vec2<bool>(any(vec2<bool>(true, arg_1)), true)));
    var var_0 = true;
    let var_1 = _wgslsmith_mod_vec4_i32(select(firstLeadingBit(~vec4<i32>(71494i, u_input.c.x, 1349i, 1i)), _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x ^ 13091u), 32u)], ~max(global1[_wgslsmith_index_u32(u_input.b, 32u)], global1[_wgslsmith_index_u32(u_input.b, 32u)])), vec4<bool>(true, true, true, true)), select(-select(global1[_wgslsmith_index_u32(43288u, 32u)], ~global1[_wgslsmith_index_u32(69429u, 32u)], vec4<bool>(false, true, true, global3.a)), global1[_wgslsmith_index_u32(u_input.b, 32u)], select(vec4<bool>(all(vec2<bool>(false, true)), select(arg_1, global0.a, false), true, true), select(select(vec4<bool>(true, global0.a, false, false), vec4<bool>(false, true, global3.a, false), arg_1), select(vec4<bool>(false, false, true, global3.a), vec4<bool>(false, arg_1, global3.a, true), vec4<bool>(global3.a, true, global0.a, global0.a)), !vec4<bool>(arg_1, global0.a, arg_1, arg_1)), !(!vec4<bool>(true, global0.a, true, false)))));
    let var_2 = Struct_2(arg_0.x, u_input.e, _wgslsmith_div_i32(select(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.e), var_1.zz), -49200i, global0.a), var_1.x));
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1000f, arg_2.x, global3.a)))), arg_2.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-790f))), arg_2.x)));
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: i32, arg_3: vec3<u32>) -> Struct_1 {
    global1 = array<vec4<i32>, 32>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1324f, -969f, -217f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-772f, -771f, -560f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-869f, -701f, 1000f) + vec3<f32>(-896f, -302f, 504f))))) - vec3<f32>(-511f, 908f, -1068f));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))), 828f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(680f, var_0.x, -1709f) * vec3<f32>(var_0.x, var_0.x, var_0.x)), true, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), var_0.zx));
    global2 = array<Struct_2, 24>();
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), 214f))) * _wgslsmith_f_op_f32(-var_1.x)), -385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    return Struct_1(~(~arg_3.x), u_input.c, 36470u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(336f, var_0.x, var_1.x), vec3<f32>(var_1.x, -273f, 1127f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 564f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-143f, var_1.x, var_0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1740f, var_1.x, 396f))))));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: Struct_4) -> vec3<bool> {
    global2 = array<Struct_2, 24>();
    var var_0 = Struct_1(_wgslsmith_mult_u32(49867u, arg_1.x), ~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.d, u_input.d), ~vec3<i32>(26245i, u_input.d, 0i), u_input.c)), 0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1361f, -511f, 122f) * vec3<f32>(189f, -1417f, -699f)) + vec3<f32>(1f, 1f, 1f)))));
    var_0 = func_2(all(vec2<bool>(arg_0.a, true)), Struct_4(true), firstTrailingBit(var_0.b.x), reverseBits(vec3<u32>(51893u, 92475u, u_input.b) >> (abs(u_input.a) % vec3<u32>(32u))) | vec3<u32>(1u, var_0.a, 1u));
    global3 = Struct_4(true);
    var_0 = func_2(!all(!(!vec2<bool>(arg_3.a, arg_3.a))), Struct_4(true), 0i, _wgslsmith_add_vec3_u32(arg_1, ~firstLeadingBit(min(arg_1, vec3<u32>(var_0.c, 15978u, arg_1.x)))));
    return select(vec3<bool>(all(select(vec3<bool>(true, global3.a, arg_3.a), vec3<bool>(global3.a, global3.a, true), !arg_3.a)), global3.a, global3.a), vec3<bool>(all(select(!vec3<bool>(arg_3.a, true, arg_0.a), vec3<bool>(global3.a, global0.a, false), arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, 465f) - -348f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d.x)) - -1000f), (min(var_0.b.x, 0i) < var_0.b.x) | arg_3.a), vec3<bool>(all(!vec3<bool>(true, arg_0.a, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1415f))) < _wgslsmith_f_op_f32(-1f), arg_3.a));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    let var_0 = 21839i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(-1585f, arg_1.a), _wgslsmith_f_op_f32(abs(arg_2.x))), 1328f, !any(arg_0.yx))))));
    let var_2 = arg_1;
    global0 = Struct_4(true);
    let var_3 = u_input.a.x;
    return _wgslsmith_mod_u32(~46621u, 57751u);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: i32, arg_3: vec4<bool>) -> StorageBuffer {
    global1 = array<vec4<i32>, 32>();
    var var_0 = func_4(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -100f)) < _wgslsmith_f_op_f32(-743f * _wgslsmith_f_op_f32(trunc(-2053f))), true, true), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(822f)) - -1000f)), 1i, u_input.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2253f, 1252f, 425f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(433f, 216f, 988f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1076f, 571f, -784f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1199f, 1000f, 1975f) + vec3<f32>(1442f, -798f, -1000f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(607f, 1070f, -1518f)))))));
    global2 = array<Struct_2, 24>();
    var var_1 = Struct_4(true);
    let var_2 = 137465u;
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-856f - 688f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -594f) - _wgslsmith_f_op_f32(-1758f - -333f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(229f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-391f))))), reverseBits(var_2), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -859f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(940f)) - _wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(-775f, -1296f, 496f), var_1.a, vec4<f32>(-191f, -965f, 159f, -1262f))).x)), -677f, _wgslsmith_f_op_f32(step(-900f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(819f)), _wgslsmith_f_op_f32(f32(-1f) * -773f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 32>();
    var var_0 = -u_input.d;
    var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-518f - _wgslsmith_f_op_f32(-235f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1070f)))));
    let x = u_input.a;
    s_output = func_5(select(vec4<u32>(func_4(func_1(Struct_4(global0.a), vec3<u32>(4294967295u, 1u, u_input.b), u_input.a.xz, Struct_4(false)), Struct_2(330f, -27537i, u_input.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1554f, 477f))), reverseBits(u_input.a.x) ^ 57983u, u_input.b, u_input.a.x), ~vec4<u32>(u_input.b, u_input.a.x ^ 1u, _wgslsmith_sub_u32(u_input.a.x, u_input.b), 4294967295u), vec4<bool>(global3.a, any(vec2<bool>(false, false)) && global3.a, true, true)), u_input.c, u_input.e, select(select(vec4<bool>(any(vec3<bool>(true, global3.a, true)), global0.a == true, all(vec4<bool>(false, false, true, global3.a)), global0.a), select(!vec4<bool>(global3.a, global0.a, false, global0.a), select(vec4<bool>(true, global0.a, false, global0.a), vec4<bool>(global3.a, true, global3.a, true), false), !vec4<bool>(false, global0.a, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, global3.a, false, global0.a), vec4<bool>(true, false, global3.a, true), vec4<bool>(false, false, true, true)), select(global3.a, true, global3.a))), vec4<bool>(u_input.c.x > 27495i, true, false, true), true));
}

