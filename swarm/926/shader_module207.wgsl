struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-396f, 292f, -1189f, -1000f, -1903f, -565f, -830f, 476f, -1497f, 233f, -1673f, 717f, 1210f, 939f, -199f, 1097f, 440f, 143f, -1189f, 1056f, -2175f, 1642f, 2183f, -1559f, -180f, -787f, 185f);

var<private> global1: vec4<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = arg_1;
    var var_1 = all(!global1.xx);
    return !(!select(select(select(vec4<bool>(global1.x, arg_0.d, arg_0.d, false), vec4<bool>(true, global1.x, true, true), vec4<bool>(global1.x, global1.x, global1.x, arg_0.d)), vec4<bool>(arg_0.d, true, global1.x, false), select(arg_0.d, arg_0.d, true)), vec4<bool>(global1.x, any(vec4<bool>(true, global1.x, arg_0.d, false)), all(vec4<bool>(false, arg_0.d, true, false)), any(global1.xw)), false));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec4<i32> {
    global1 = select(!(!vec4<bool>(any(vec3<bool>(false, arg_1.b.d, arg_1.b.d)), all(global1.yw), select(arg_1.e, arg_0.d, false), arg_0.d)), vec4<bool>(arg_1.e, any(!vec4<bool>(true, global1.x, global1.x, arg_1.c.d)), true, false), true);
    global1 = !select(!(!func_2(Struct_1(vec4<i32>(-6361i, arg_1.d.x, arg_0.c, arg_1.b.c), vec3<i32>(1i, arg_0.a.x, -2147483647i), arg_0.a.x, global1.x, -1248f), arg_1.a, vec3<f32>(-1619f, -1260f, global0[_wgslsmith_index_u32(29198u, 27u)]))), !(!vec4<bool>(global1.x, arg_0.d, false, false)), _wgslsmith_f_op_f32(-arg_1.c.e) >= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.a.x, 27u)] - _wgslsmith_f_op_f32(835f - 1000f)));
    let var_0 = Struct_1(vec4<i32>(abs(~arg_0.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, u_input.e.x), arg_1.a.yz) % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.b.c, arg_0.c), arg_0.b.zy, vec2<i32>(-64045i, 19471i)), vec2<i32>(-2147483647i, arg_0.c)), -1i, ~(-38443i) >> (0u % 32u)), _wgslsmith_add_vec3_i32(arg_1.b.b, vec3<i32>(i32(-1i) * -arg_1.d.x, _wgslsmith_dot_vec2_i32(reverseBits(arg_0.a.yw), vec2<i32>(arg_0.c, arg_0.b.x)), arg_0.a.x)), min(-2147483647i, ~_wgslsmith_mult_i32(-2147483647i, 1i & arg_0.b.x)), all(func_2(Struct_1(abs(vec4<i32>(-40642i, 1i, -2147483647i, arg_1.b.a.x)), arg_0.a.wwy, 1i ^ arg_1.c.c, true, global0[_wgslsmith_index_u32(46028u, 27u)]), vec3<u32>(u_input.b.x, 54369u, 1u), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.e, arg_0.e, 218f)))).xy), _wgslsmith_f_op_f32(-arg_0.e));
    global0 = array<f32, 27>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1271f), _wgslsmith_f_op_f32(783f - arg_0.e), global0[_wgslsmith_index_u32(1u, 27u)])) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(var_0.e)), arg_0.e)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(926f, var_0.e, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.e, -712f, arg_0.e))))));
    return firstTrailingBit(vec4<i32>(arg_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(select(arg_0.a.x, arg_1.b.a.x, false), arg_1.d.x, _wgslsmith_sub_i32(arg_1.d.x, -13687i)), arg_1.d), -abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -60501i, -1i), arg_0.a.xyw)), 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = arg_1.b;
    let var_1 = _wgslsmith_clamp_vec4_i32(-(~arg_1.b.a), -arg_1.b.a, reverseBits(max(vec4<i32>(arg_2.d.x, 362i, var_0.c, -17009i), vec4<i32>(-26952i, -35047i, -1i, var_0.c)))) >> ((abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, arg_2.a.x, 1u), vec4<u32>(20935u, arg_2.a.x, u_input.c.x, 77715u)) << ((vec4<u32>(arg_1.a.x, u_input.b.x, 82909u, u_input.c.x) << (vec4<u32>(u_input.a.x, arg_1.a.x, u_input.b.x, 7002u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ vec4<u32>(u_input.d, 0u, arg_1.a.x, ~(~1u))) % vec4<u32>(32u));
    var var_2 = Struct_3(Struct_1(~(func_1(arg_1.b, Struct_2(arg_2.a, arg_1.c, arg_2.c, vec3<i32>(-9616i, arg_2.d.x, var_1.x), false)) >> ((vec4<u32>(arg_2.a.x, 4294967295u, 4294967295u, arg_2.a.x) >> (vec4<u32>(u_input.a.x, 81880u, arg_1.a.x, 8520u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_clamp_vec3_i32(var_1.xyw, select(arg_2.b.b, vec3<i32>(-38828i, arg_0.x, var_0.c), true), abs(arg_0.xzy)) << (vec3<u32>(_wgslsmith_mod_u32(arg_2.a.x, 50218u), arg_1.a.x, u_input.d) % vec3<u32>(32u)), -countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, -1i), arg_0.wx)), any(select(select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(var_0.d, arg_2.b.d, true, true), vec4<bool>(arg_1.c.d, false, global1.x, false)), vec4<bool>(var_0.d, arg_2.c.d, arg_2.e, arg_2.e), !vec4<bool>(false, arg_2.e, arg_1.e, true))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_0.e * arg_2.b.e))));
    let var_3 = Struct_3(arg_2.b);
    var_2 = Struct_3(arg_1.c);
    return ~var_3.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global1.x, (_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 27u)]) < global0[_wgslsmith_index_u32(4294967295u, 27u)]) || global1.x);
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(22933i, -45488i, 0i, -2147483647i), vec4<i32>(-68942i, -1i, 36631i, 8924i) >> (vec4<u32>(99654u, 37615u, u_input.b.x, 67050u) % vec4<u32>(32u)), vec4<i32>(25973i, 31523i, 1i, 1i)), reverseBits(func_1(Struct_1(vec4<i32>(0i, 2147483647i, 79231i, -2147483647i), vec3<i32>(-49187i, 10812i, 1i), 2147483647i, true, -666f), Struct_2(vec3<u32>(1u, 20529u, 1u), Struct_1(vec4<i32>(-1i, 777i, -37213i, 23519i), vec3<i32>(1i, -9106i, 0i), -2147483647i, global1.x, global0[_wgslsmith_index_u32(40022u, 27u)]), Struct_1(vec4<i32>(-30568i, -1i, 8016i, -3673i), vec3<i32>(-1i, 1i, 2147483647i), -41258i, false, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<i32>(-2147483647i, 6622i, 2147483647i), true)))), vec4<i32>(func_3(vec4<i32>(-17552i, -2147483647i, -1i, 2147483647i), Struct_2(vec3<u32>(u_input.e.x, 64501u, u_input.a.x), Struct_1(vec4<i32>(2147483647i, -2147483647i, -22106i, 449i), vec3<i32>(13750i, -1i, -12819i), -12115i, global1.x, 1088f), Struct_1(vec4<i32>(2147483647i, -54965i, -2147483647i, 2147483647i), vec3<i32>(-55682i, 0i, -27972i), 14417i, var_0.x, global0[_wgslsmith_index_u32(1u, 27u)]), vec3<i32>(-32865i, 36920i, 14414i), global1.x), Struct_2(vec3<u32>(u_input.e.x, 7619u, u_input.e.x), Struct_1(vec4<i32>(-33311i, -23171i, 0i, -2147483647i), vec3<i32>(0i, -2147483647i, -38071i), -5806i, false, global0[_wgslsmith_index_u32(u_input.e.x, 27u)]), Struct_1(vec4<i32>(1i, -1i, 0i, 0i), vec3<i32>(2147483647i, 4743i, 17006i), -14207i, global1.x, -170f), vec3<i32>(-1859i, -1i, -2147483647i), true)) ^ 0i, _wgslsmith_mod_i32(1i, select(12330i, 2147483647i, true)), countOneBits(_wgslsmith_sub_i32(-33416i, 20945i)), ~1i), vec4<i32>(1i, -(~(-2147483647i)), -44454i, func_1(Struct_1(vec4<i32>(2147483647i, -84650i, -2147483647i, 2147483647i), vec3<i32>(-5219i, 61637i, -2147483647i), -2147483647i, true, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), Struct_2(vec3<u32>(u_input.a.x, 39693u, 47470u), Struct_1(vec4<i32>(19767i, -2147483647i, -2147483647i, -1i), vec3<i32>(10681i, 2147483647i, 0i), -14061i, true, -369f), Struct_1(vec4<i32>(0i, -1i, 50278i, 47165i), vec3<i32>(-50310i, 2147483647i, -2254i), 67013i, true, global0[_wgslsmith_index_u32(0u, 27u)]), vec3<i32>(-2147483647i, -39222i, -1i), var_0.x)).x)), _wgslsmith_div_vec3_i32(vec3<i32>(func_3(vec4<i32>(0i, -80536i, 0i, 0i), Struct_2(vec3<u32>(4294967295u, u_input.b.x, 0u), Struct_1(vec4<i32>(0i, 1i, -1i, -10978i), vec3<i32>(1i, -48185i, -1i), 0i, global1.x, global0[_wgslsmith_index_u32(61457u, 27u)]), Struct_1(vec4<i32>(-1i, 1i, -1i, -1i), vec3<i32>(1i, -19192i, 5286i), -2147483647i, global1.x, global0[_wgslsmith_index_u32(u_input.e.x, 27u)]), vec3<i32>(-65577i, 2147483647i, 0i), global1.x), Struct_2(vec3<u32>(u_input.d, u_input.b.x, 59378u), Struct_1(vec4<i32>(1i, -26222i, -10665i, -36241i), vec3<i32>(1i, 2147483647i, 35357i), 45323i, global1.x, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), Struct_1(vec4<i32>(-2147483647i, 2947i, 66359i, -2147483647i), vec3<i32>(29827i, -20266i, -2650i), 0i, global1.x, -1000f), vec3<i32>(-78513i, 2147483647i, -1i), false)), _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, -1i), firstTrailingBit(-2147483647i)), 1i), firstTrailingBit(vec3<i32>(1i, -1i, -1i) << (vec3<u32>(9370u, 4294967295u, u_input.b.x) % vec3<u32>(32u))) & _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(29527i, 0i), vec2<i32>(24009i, 0i)), firstTrailingBit(vec2<i32>(-2147483647i, 46197i)))), -80423i), !select(global1.x, true, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = 23550i;
    var var_3 = Struct_3(Struct_1(var_1.a, var_1.a.zyx, -(_wgslsmith_clamp_i32(var_1.a.x, 2147483647i, -1i) & _wgslsmith_div_i32(var_2, var_2)), max(var_2, ~var_1.a.x) >= _wgslsmith_mult_i32(-1i, 1i), global0[_wgslsmith_index_u32(4294967295u, 27u)]));
    let var_4 = any(vec2<bool>(true, var_1.c > ~1i));
    let var_5 = Struct_1(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_2, abs(var_1.b.x), var_1.c, -2147483647i), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_1.a, var_1.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-22719i, 2147483647i, -7625i, var_1.c), var_3.a.a))), vec3<i32>(_wgslsmith_div_i32(reverseBits(~var_1.c), 0i), var_2, -2147483647i), 1i, !(!(!any(vec4<bool>(var_3.a.d, var_4, true, var_3.a.d)))), _wgslsmith_f_op_f32(f32(-1f) * -381f));
    var var_6 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(-countOneBits(-17822i), ~max(-20310i, var_5.c), max(-35533i, var_3.a.c << (1u % 32u))), _wgslsmith_mult_vec3_i32(var_3.a.a.yyw | vec3<i32>(-1i, var_3.a.a.x, -1i), var_1.b) >> (vec3<u32>(u_input.c.x, ~4294967295u, 69720u) % vec3<u32>(32u)), select(global1.wxw, global1.yzx, false)), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~u_input.b.x), u_input.d), 27u)], var_5.e, var_5.d)));
}

