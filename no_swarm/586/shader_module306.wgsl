struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(true, 29768u, 0i, vec4<bool>(false, false, false, true)), Struct_1(false, 0u, 0i, vec4<bool>(false, false, false, false)), Struct_1(true, 83971u, 2147483647i, vec4<bool>(false, true, false, true)), Struct_1(false, 24620u, 0i, vec4<bool>(false, true, false, false)), Struct_1(true, 1u, i32(-2147483648), vec4<bool>(false, false, false, true)), Struct_1(true, 0u, -33824i, vec4<bool>(false, true, true, true)), Struct_1(true, 25719u, 10774i, vec4<bool>(false, true, false, false)), Struct_1(true, 3564u, -1i, vec4<bool>(false, true, true, false)), Struct_1(true, 46909u, -33215i, vec4<bool>(true, false, true, false)), Struct_1(false, 4294967295u, 0i, vec4<bool>(true, true, true, false)), Struct_1(false, 1u, i32(-2147483648), vec4<bool>(true, true, false, true)), Struct_1(false, 1u, 18056i, vec4<bool>(true, true, false, false)), Struct_1(false, 1u, 1i, vec4<bool>(false, false, true, true)), Struct_1(true, 4294967295u, 2147483647i, vec4<bool>(false, true, true, true)), Struct_1(false, 0u, 0i, vec4<bool>(false, true, true, true)), Struct_1(true, 0u, 26147i, vec4<bool>(false, true, true, false)), Struct_1(true, 14513u, i32(-2147483648), vec4<bool>(true, false, true, false)), Struct_1(false, 7707u, 0i, vec4<bool>(true, true, true, false)), Struct_1(false, 1u, -1i, vec4<bool>(false, true, false, false)), Struct_1(false, 4205u, -84550i, vec4<bool>(false, false, false, true)), Struct_1(false, 21121u, i32(-2147483648), vec4<bool>(false, false, true, true)));

var<private> global1: Struct_1;

var<private> global2: vec2<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global2.x >> (arg_0.b % 32u), _wgslsmith_clamp_u32(13285u, 0u, 19581u)), 21u)];
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, arg_0.c), vec3<i32>(global1.c, 25717i, u_input.a)), -(arg_0.c & 1890i)), firstLeadingBit(max(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1.c, -3128i, global1.c), vec4<i32>(-44035i, u_input.a, u_input.b, 0i))))) | firstTrailingBit(max(vec2<i32>(_wgslsmith_mult_i32(5911i, 9856i), -6793i), vec2<i32>(2147483647i, arg_0.c)));
    global1 = Struct_1(all(!(!global1.d.wyw)), firstTrailingBit(global2.x | (global2.x & global1.b)) << (_wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(0u, 124308u)), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global1.b), vec2<u32>(global1.b, global1.b)))) % 32u), -4366i, vec4<bool>(any(!select(global1.d.yx, vec2<bool>(true, true), vec2<bool>(false, arg_1))), arg_0.a, !all(global1.d), select(arg_1 | all(vec2<bool>(false, global1.d.x)), arg_0.d.x, true)));
    let var_1 = Struct_1(!global1.a, 64095u, -_wgslsmith_clamp_i32(arg_0.c, var_0.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 20516i, 0i), vec4<i32>(2147483647i, -14732i, var_0.x, 2147483647i))), select(select(global1.d, select(!vec4<bool>(global1.a, true, arg_1, true), !vec4<bool>(true, global1.a, arg_0.a, true), all(arg_0.d)), any(!vec2<bool>(arg_0.d.x, false))), vec4<bool>(true, max(0u, global2.x) < global1.b, any(vec2<bool>(global1.d.x, arg_1)), true), global1.d));
    var var_2 = select(vec3<bool>(arg_1, arg_0.d.x, true), !select(arg_0.d.yww, vec3<bool>(true, true, true), all(var_1.d.zw)), arg_0.d.x);
    return var_1.b;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    global1 = Struct_1(true, _wgslsmith_sub_u32(func_3(global0[_wgslsmith_index_u32(21777u, 21u)], false), max(global1.b << (1u % 32u), ~4294967295u) | global2.x), global1.c, vec4<bool>(false, !global1.a && global1.d.x, true, 33828u != reverseBits(global2.x | global1.b)));
    var var_0 = !(!select(global1.d.zzy, !(!vec3<bool>(true, global1.d.x, false)), false));
    let var_1 = 4294967295u;
    var var_2 = Struct_1(global1.a & !var_0.x, _wgslsmith_add_u32(var_1, _wgslsmith_dot_vec3_u32(arg_0.wxx, ~vec3<u32>(3143u, global1.b, 0u))) >> (firstLeadingBit(global1.b) % 32u), _wgslsmith_add_i32(u_input.b, u_input.b), !(!(!global1.d)));
    global0 = array<Struct_1, 21>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-816f)) * _wgslsmith_f_op_f32(trunc(1f)));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    return Struct_1(global1.a, abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 53847u, global1.b), vec3<u32>(11650u, 4294967295u, global2.x))) >> (1u % 32u), global1.c, !global1.d);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: i32) -> vec2<bool> {
    global2 = arg_0;
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-577f, -1364f, 516f)), vec3<f32>(190f, 638f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(918f, -117f, -442f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-278f, -1039f, 537f))) - vec3<f32>(_wgslsmith_f_op_f32(1638f + -652f), -708f, _wgslsmith_f_op_f32(func_2(vec4<u32>(global2.x, 34855u, 37759u, 149182u)))))));
    global0 = array<Struct_1, 21>();
    var var_1 = true;
    var var_2 = var_0;
    return var_0.d.ww;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(-1463f, 720f), _wgslsmith_f_op_f32(614f * 281f), _wgslsmith_f_op_f32(trunc(-324f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -551f, _wgslsmith_f_op_f32(596f - 576f)))));
    var var_1 = vec4<i32>(select(abs(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(380f, -1000f, -364f))).c), min(32208i, _wgslsmith_sub_i32(countOneBits(arg_0.c), _wgslsmith_mult_i32(u_input.a, -2147483647i))), arg_1), global1.c, -abs(-func_4(vec3<f32>(-622f, -1353f, -1922f)).c), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-779f, 197f, 614f))).c);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(314f)));
    var var_3 = Struct_1(-217f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(741f)))), ~(~global1.b), ~29319i, vec4<bool>(true, arg_0.a, all(vec2<bool>(true, all(vec4<bool>(arg_1, var_0.d.x, var_0.d.x, false)))), true));
    let var_4 = -func_4(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(182f - 1282f), _wgslsmith_f_op_f32(trunc(-598f)))), 949f, -421f)).c;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(622f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -894f) + _wgslsmith_f_op_f32(-295f * -1215f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(Struct_1(true, 1u, min(~2147483647i, u_input.b >> (4294967295u % 32u)), vec4<bool>(!(!global1.a), !global1.d.x, all(select(vec4<bool>(false, false, false, global1.a), global1.d, vec4<bool>(global1.d.x, global1.a, global1.d.x, false))), _wgslsmith_mult_i32(-22208i, global1.c) > -2147483647i)), !all(func_1(vec2<u32>(0u, global2.x), false, u_input.b)) | true, vec4<i32>(-u_input.a, ~_wgslsmith_add_i32(-global1.c, global1.c), firstLeadingBit(u_input.a), i32(-1i) * -5999i), vec3<i32>(-17694i, -_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c, global1.c, -26843i, 22111i), vec4<i32>(-2147483647i, global1.c, 21388i, 2147483647i)), reverseBits(i32(-1i) * -2868i))));
    global0 = array<Struct_1, 21>();
    let var_1 = -269f;
    var var_2 = ~global1.b;
    var_2 = ~77270u;
    var var_3 = vec4<bool>(global1.a, false, false, any(vec4<bool>(func_4(_wgslsmith_div_vec3_f32(vec3<f32>(146f, var_1, 1407f), vec3<f32>(var_1, 1026f, -775f))).a, true, true, !(global1.c > 0i))));
    var var_4 = -(~(~select(vec4<i32>(0i, 2147483647i, global1.c, 0i), vec4<i32>(u_input.a, -15622i, 0i, u_input.b), global1.d)));
    let var_5 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(342f, var_1, 471f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, var_1, -412f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1418f, -1000f, var_1) - vec3<f32>(var_1, var_1, -934f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 1000f, 1425f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))), _wgslsmith_f_op_f32(-var_1), 1271f, vec4<f32>(-364f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(768f + var_1)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1)) - var_1) + var_1), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * -557f) + _wgslsmith_div_f32(-796f, var_1))))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 54314u), vec2<u32>(var_5.b, global2.x)), vec2<u32>(global2.x, 4294967295u)), ~(~(vec2<u32>(global1.b, 47186u) >> (vec2<u32>(6431u, var_5.b) % vec2<u32>(32u)))), vec2<u32>(~(~115172u), global2.x)));
}

