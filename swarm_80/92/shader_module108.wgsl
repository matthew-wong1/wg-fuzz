struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_4, 8>;

var<private> global2: array<bool, 15> = array<bool, 15>(false, false, false, false, true, false, false, false, true, true, false, true, false, true, false);

var<private> global3: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(vec4<i32>(70537i, 2147483647i, 8296i, -14471i), Struct_2(-10174i), -61014i, false), Struct_3(vec4<i32>(-63437i, -58648i, 7338i, -8467i), Struct_2(1329i), 1i, true), Struct_3(vec4<i32>(34173i, -28489i, -2529i, 1i), Struct_2(0i), 0i, true), Struct_3(vec4<i32>(1i, 20572i, i32(-2147483648), i32(-2147483648)), Struct_2(-2527i), -2673i, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = array<Struct_4, 8>();
    global0 = true;
    global1 = array<Struct_4, 8>();
    global3 = array<Struct_3, 4>();
    global3 = array<Struct_3, 4>();
    return 1000f;
}

fn func_2() -> Struct_4 {
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2110f))))));
    let var_2 = global3[_wgslsmith_index_u32(~u_input.a, 4u)];
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(769f + _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(191f, 220f, 244f), 219f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-509f, -729f)))), _wgslsmith_f_op_f32(-995f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-642f + 139f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1551f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f))))));
    let var_4 = select(vec3<bool>(global2[_wgslsmith_index_u32(35018u, 15u)], global2[_wgslsmith_index_u32(6957u, 15u)], false), vec3<bool>(all(select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(false, var_2.d, global2[_wgslsmith_index_u32(58513u, 15u)]), false)) || any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(var_2.d, false))), true, !any(select(vec4<bool>(var_2.d, var_2.d, global2[_wgslsmith_index_u32(88063u, 15u)], global2[_wgslsmith_index_u32(46215u, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_0, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], var_2.d, true), vec4<bool>(true, var_2.d, global2[_wgslsmith_index_u32(4294967295u, 15u)], true)))), u_input.a > max(_wgslsmith_add_u32(u_input.a, var_0 << (145352u % 32u)), ~4294967295u));
    return Struct_4(var_3, all(vec3<bool>(true, !(var_3.b > 697f), true)), Struct_3(var_2.a, var_2.b, _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_2.c, -46248i, ~2147483647i), -11631i), any(select(select(vec3<bool>(var_4.x, false, var_2.d), vec3<bool>(var_4.x, false, var_2.d), var_4), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 15u)], false, true), select(var_4, var_4, var_4)))), vec4<f32>(_wgslsmith_div_f32(var_3.a.x, -392f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.b)) - _wgslsmith_f_op_f32(f32(-1f) * -984f))), -1653f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1322f) * 792f) - _wgslsmith_div_f32(-455f, 469f))), var_3.a.x);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_3 {
    var var_0 = vec4<i32>(arg_2.a, arg_2.a, arg_0.c.c, _wgslsmith_mult_i32(-1i, -71202i) | arg_0.c.c);
    global3 = array<Struct_3, 4>();
    var_0 = abs(_wgslsmith_mod_vec4_i32(arg_3.a, min(arg_3.a, firstLeadingBit(vec4<i32>(arg_0.c.b.a, var_0.x, var_0.x, arg_3.b.a))) & countOneBits(reverseBits(arg_0.c.a))));
    var_0 = arg_3.a;
    var var_1 = func_2().c;
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(351f, -512f), _wgslsmith_f_op_vec2_f32(vec2<f32>(2346f, -996f) + vec2<f32>(-297f, 1069f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -222f), vec2<f32>(546f, 277f), vec2<bool>(true, arg_1.d))), vec2<f32>(-1000f, -1107f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1407f, -185f) + vec2<f32>(-799f, -1088f))) - vec2<f32>(_wgslsmith_f_op_f32(1012f + 1000f), _wgslsmith_f_op_f32(1000f * -1088f)))));
    let var_1 = select(!select(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 15u)], arg_1.d), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, arg_1.d, false, global2[_wgslsmith_index_u32(52854u, 15u)]), global2[_wgslsmith_index_u32(22528u, 15u)]), _wgslsmith_f_op_f32(-var_0.x) != 1420f), vec4<bool>(arg_1.d, global2[_wgslsmith_index_u32(~u_input.a, 15u)], (!global2[_wgslsmith_index_u32(3989u, 15u)] && true) | true, global2[_wgslsmith_index_u32(1u, 15u)]), select(select(vec4<bool>(global2[_wgslsmith_index_u32(~9902u, 15u)], global2[_wgslsmith_index_u32(reverseBits(36310u), 15u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 22236u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), 15u)], arg_1.c < arg_1.b.a), !select(vec4<bool>(false, arg_1.d, global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(7904u, 15u)]), vec4<bool>(arg_1.d, global2[_wgslsmith_index_u32(43365u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], false, arg_1.d)), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 15u)], false, global2[_wgslsmith_index_u32(u_input.a, 15u)], false), vec4<bool>(arg_1.d, true, true, true), false)), !vec4<bool>(arg_1.d, true, true, global2[_wgslsmith_index_u32(4294967295u, 15u)]), any(vec2<bool>(false, false))));
    global2 = array<bool, 15>();
    let var_2 = var_0.x;
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(537f * 845f), -2139f))))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    global2 = array<bool, 15>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_5(Struct_2(-2147483647i), func_4(func_2(), firstLeadingBit(~vec3<i32>(20336i, 1i, 2147483647i)), Struct_2(~1i), Struct_3(vec4<i32>(-57907i, 9405i, 1i, 21708i), func_2().c.b, ~(-56746i), true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(713f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(233f, 518f)) + _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(-1473f, 348f, 508f), -905f))))), func_2().d.x));
    global3 = array<Struct_3, 4>();
    return _wgslsmith_mult_u32(~arg_0.x, ~_wgslsmith_add_u32(u_input.a & 1u, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 8>();
    var var_0 = all(vec2<bool>(global2[_wgslsmith_index_u32(~(~func_1(vec2<u32>(61675u, u_input.a))), 15u)], global2[_wgslsmith_index_u32(max(u_input.a, ~0u), 15u)]));
    var var_1 = global2[_wgslsmith_index_u32(40509u, 15u)];
    let var_2 = Struct_2(max(40371i, ~min(~1i, -32686i)));
    var var_3 = max(vec3<i32>(47367i, 23500i, -_wgslsmith_add_i32(-2147483647i, var_2.a)), abs(vec3<i32>(-35287i, -23400i, var_2.a))) >> (_wgslsmith_add_vec3_u32(countOneBits(select(~vec3<u32>(17536u, u_input.a, 47913u), _wgslsmith_sub_vec3_u32(vec3<u32>(21552u, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(53751u, 15u)], global2[_wgslsmith_index_u32(14695u, 15u)], true), global2[_wgslsmith_index_u32(u_input.a, 15u)]))), _wgslsmith_clamp_vec3_u32(vec3<u32>(25666u, u_input.a, 106777u), min(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(26271u, 0u, u_input.a)), vec3<u32>(4294967295u, u_input.a, u_input.a) & vec3<u32>(u_input.a, 66727u, 41719u)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(1u, u_input.a, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u));
    global2 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_f_op_vec3_f32(func_5(var_2, func_2().c)).x, 11989i);
}

