struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(vec4<i32>(1i, 24753i, 0i, 43750i), false), Struct_5(vec4<i32>(1i, -26605i, i32(-2147483648), 1i), true), Struct_5(vec4<i32>(16308i, 2147483647i, -59234i, -43005i), true), Struct_5(vec4<i32>(-1i, 2147483647i, -38572i, -1i), false), Struct_5(vec4<i32>(-22106i, i32(-2147483648), -28515i, 1i), false), Struct_5(vec4<i32>(i32(-2147483648), i32(-2147483648), -21355i, 2147483647i), true), Struct_5(vec4<i32>(14216i, i32(-2147483648), 1i, -37036i), true), Struct_5(vec4<i32>(-25320i, -40251i, 1i, i32(-2147483648)), true), Struct_5(vec4<i32>(78077i, 0i, -1i, 33571i), true), Struct_5(vec4<i32>(27867i, -25389i, 29377i, i32(-2147483648)), true), Struct_5(vec4<i32>(-23800i, i32(-2147483648), -36089i, 67768i), false), Struct_5(vec4<i32>(0i, i32(-2147483648), -1i, -45511i), true), Struct_5(vec4<i32>(i32(-2147483648), -2970i, i32(-2147483648), i32(-2147483648)), true), Struct_5(vec4<i32>(1i, -6832i, 26700i, -20942i), false), Struct_5(vec4<i32>(-1i, 2147483647i, 14031i, 0i), false), Struct_5(vec4<i32>(1i, -2566i, i32(-2147483648), 0i), false), Struct_5(vec4<i32>(-1i, 0i, i32(-2147483648), 42427i), true), Struct_5(vec4<i32>(0i, 35117i, i32(-2147483648), 52990i), false), Struct_5(vec4<i32>(i32(-2147483648), i32(-2147483648), 21891i, 13175i), true), Struct_5(vec4<i32>(2147483647i, i32(-2147483648), 11183i, 0i), false), Struct_5(vec4<i32>(i32(-2147483648), 2147483647i, -1i, 28802i), false));

var<private> global2: array<Struct_3, 23>;

var<private> global3: array<f32, 6>;

var<private> global4: vec4<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_5) -> vec4<u32> {
    var var_0 = arg_1.c.yx;
    var var_1 = 688f;
    return _wgslsmith_div_vec4_u32(vec4<u32>(47112u, ~abs(~u_input.c), firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 9267u, 87157u, 8278u), vec4<u32>(u_input.b.x, 53631u, 4294967295u, u_input.d))), 0u), ~select(vec4<u32>(u_input.d, 33170u, u_input.e.x, 16712u) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, 1u, 60361u), vec4<u32>(u_input.b.x, u_input.e.x, 0u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 70662u, 0u, u_input.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(18254u, u_input.d, u_input.e.x, 0u), vec4<u32>(0u, u_input.b.x, 68073u, 0u))), !all(arg_1.c.zww)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<bool>, arg_3: u32) -> vec4<i32> {
    let var_0 = Struct_3(Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e.x, _wgslsmith_dot_vec2_u32(~arg_0, arg_0), ~1u), 6u)], -2147483647i, 0i), _wgslsmith_div_vec4_u32(func_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 6u)]), -872f)), Struct_2(Struct_1(-1622f, u_input.a.x, -1i), Struct_1(-1368f, u_input.a.x, global4.x), vec4<bool>(false, true, false, arg_2.x), -709f), Struct_5(vec4<i32>(-25978i, global4.x, 6143i, 25455i) << (vec4<u32>(u_input.b.x, arg_0.x, 1u, u_input.b.x) % vec4<u32>(32u)), arg_3 > arg_3)), ~firstLeadingBit(vec4<u32>(arg_3, 1u, arg_3, u_input.c) << (vec4<u32>(arg_3, 77259u, arg_3, arg_3) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3[_wgslsmith_index_u32(0u, 6u)], -767f, _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.e.x, 6u)])), 1067f))))));
    let var_1 = select(select(select(vec4<bool>(false, !arg_1, -787f == var_0.a.a, !arg_1), !select(vec4<bool>(arg_1, arg_2.x, true, false), vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, arg_2.x, arg_1)), select(select(vec4<bool>(arg_2.x, arg_1, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, false, false), vec4<bool>(false, false, false, false)), !vec4<bool>(arg_1, arg_2.x, false, arg_2.x), arg_1)), !select(vec4<bool>(true, arg_2.x, true, arg_2.x), vec4<bool>(false, arg_1, false, false), select(vec4<bool>(false, true, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), false)), vec4<bool>(true, !(global3[_wgslsmith_index_u32(var_0.b.x, 6u)] != global3[_wgslsmith_index_u32(arg_3, 6u)]), true, true)), !(!(!select(vec4<bool>(false, arg_2.x, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, arg_1, arg_2.x, true)))), !(any(select(vec4<bool>(false, arg_1, false, true), vec4<bool>(true, false, arg_1, false), arg_2.x)) == !arg_2.x));
    var var_2 = vec3<bool>(!(!((4294967295u != arg_0.x) || all(var_1))), var_1.x, !arg_2.x | var_1.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1692f, _wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(-var_0.a.a)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(276f, 1387f, var_0.a.a), var_0.c.yyy), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3[_wgslsmith_index_u32(arg_3, 6u)], global3[_wgslsmith_index_u32(arg_0.x, 6u)], var_0.c.x)))), vec3<bool>(false, !arg_1, var_1.x))))));
    let var_4 = var_0.a;
    return firstLeadingBit(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(-34278i, u_input.a.x, u_input.a.x, var_4.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -1i, 39710i, -25101i), vec4<i32>(2147483647i, var_4.c, 25021i, 0i), vec4<i32>(20854i, 76205i, global4.x, -39440i))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec4<u32>) -> f32 {
    var var_0 = select(!select(!(!vec4<bool>(false, arg_1.x, arg_1.x, true)), vec4<bool>(true, !arg_1.x, all(arg_1.yxy), false), vec4<bool>(true, !arg_1.x, !arg_1.x, false)), vec4<bool>(false, true, u_input.d >= arg_2.x, arg_1.x), !arg_1.x);
    global4 = func_2(u_input.e, var_0.x, vec3<bool>(arg_1.x, _wgslsmith_f_op_f32(exp2(1f)) != global3[_wgslsmith_index_u32(~34656u, 6u)], !var_0.x), u_input.d | 66996u);
    let var_1 = global3[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(sign(-308f)), Struct_2(Struct_1(global3[_wgslsmith_index_u32(~arg_0.x, 6u)], select(global4.x, -global4.x, !var_0.x), global4.x | firstTrailingBit(-1i)), Struct_1(global3[_wgslsmith_index_u32(0u, 6u)], -5751i, _wgslsmith_dot_vec3_i32(global4.zzx, vec3<i32>(-21933i, 0i, global4.x)) | _wgslsmith_add_i32(u_input.a.x, -2147483647i)), !arg_1, global3[_wgslsmith_index_u32(62285u ^ _wgslsmith_mod_u32(_wgslsmith_mult_u32(7830u, 27591u), u_input.b.x & 0u), 6u)]), global1[_wgslsmith_index_u32(0u, 21u)]).x, 6u)];
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1f), -24534i, _wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, 1i, 2147483647i) | ~vec3<i32>(0i, u_input.a.x, u_input.a.x), ~u_input.a)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.yxw, vec3<u32>(2925u, 7373u, arg_2.x)), 6u)]))), -1i, select(10991i, global4.x | global4.x, any(select(vec4<bool>(var_0.x, arg_1.x, arg_1.x, var_0.x), arg_1, var_0.x)))), !select(select(select(vec4<bool>(arg_1.x, false, var_0.x, var_0.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), false), arg_1, arg_1), vec4<bool>(!arg_1.x, -131f > global3[_wgslsmith_index_u32(arg_2.x, 6u)], all(arg_1.wwy), all(vec3<bool>(true, false, true))), arg_1.x), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(53524u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2.x), min(arg_0.wx, vec2<u32>(arg_2.x, 14452u)))), 6u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -282f)))))));
    let var_3 = var_2;
    return -2324f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(744f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<u32>(12180u, u_input.b.x, u_input.c, 6106u), vec4<bool>(false, false, false, false), vec4<u32>(u_input.e.x, 12587u, u_input.b.x, 1u)))) * _wgslsmith_f_op_f32(abs(1000f)))), -(~(~_wgslsmith_add_i32(13711i, 1i))), (~u_input.a.x >> (u_input.b.x % 32u)) >> (1u % 32u));
    var var_1 = ~(~50149u | u_input.c);
    global0 = 1f;
    var var_2 = ~firstTrailingBit(~vec2<u32>(u_input.e.x & 0u, ~70798u));
    var var_3 = var_0;
    var var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(1i, -2147483647i);
}

