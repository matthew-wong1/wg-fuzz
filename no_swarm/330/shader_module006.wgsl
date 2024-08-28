struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: bool,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: Struct_1;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-766f, -2012f, -178f), vec3<f32>(485f, 2443f, -286f), vec3<f32>(-755f, -906f, -1170f), vec3<f32>(-933f, -513f, 1000f), vec3<f32>(-737f, 361f, 268f), vec3<f32>(-296f, -751f, 900f), vec3<f32>(609f, 472f, -1912f), vec3<f32>(1140f, 923f, 767f), vec3<f32>(1479f, -159f, 1207f), vec3<f32>(-1000f, 1458f, 1000f), vec3<f32>(378f, -115f, 2034f), vec3<f32>(1741f, -1249f, 1175f), vec3<f32>(-1205f, -441f, -873f), vec3<f32>(372f, 188f, 1792f), vec3<f32>(120f, -450f, 461f), vec3<f32>(1157f, -271f, 853f), vec3<f32>(566f, -594f, -1397f), vec3<f32>(1849f, -1000f, -599f), vec3<f32>(-154f, 164f, 265f), vec3<f32>(-575f, -1889f, -382f), vec3<f32>(-436f, -461f, 855f), vec3<f32>(-1646f, -324f, 1341f), vec3<f32>(280f, -490f, 1668f), vec3<f32>(-385f, 1674f, 1012f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = 0u;
    global1 = arg_3;
    var var_1 = select(arg_1.d.wxz, vec3<bool>(!any(vec4<bool>(false, false, arg_0.c, true)), global2.x, false), arg_0.d.wyz);
    let var_2 = 1u;
    let var_3 = arg_1;
    return vec3<u32>(28924u, arg_0.e.x, max(global1.a.x, ~(~(~6582u))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-450f, 1000f)), _wgslsmith_f_op_f32(round(665f)), 1f, 1599f) + vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -775f), _wgslsmith_f_op_f32(-1071f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -431f))), vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -361f)), _wgslsmith_f_op_f32(max(919f, _wgslsmith_f_op_f32(-295f - -413f))), _wgslsmith_f_op_f32(floor(-1941f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1694f + 1195f)))), true))));
    let var_1 = ~_wgslsmith_mult_u32(1u, ~min(u_input.a, 0u));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * -1157f))))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, -431f, var_2, var_2), vec4<f32>(-665f, var_2, -1433f, var_2), any(vec4<bool>(arg_0.d.x, global2.x, global1.c, global2.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2, var_2, var_0.x, var_0.x), vec4<f32>(318f, -1329f, var_0.x, 1531f))), _wgslsmith_div_vec4_f32(var_0, var_0), !vec4<bool>(false, arg_0.c, true, false)))), _wgslsmith_f_op_vec4_f32(trunc(var_0))));
    var var_4 = Struct_1(~(arg_0.a & (abs(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], 1u, var_1, u_input.a)) << (_wgslsmith_mult_vec4_u32(global1.a, global1.a) % vec4<u32>(32u)))), countOneBits(~arg_0.b) | _wgslsmith_mult_vec3_i32(abs(vec3<i32>(arg_0.b.x, arg_0.b.x, global1.b.x)), -abs(vec3<i32>(41405i, arg_0.b.x, arg_0.b.x))), !any(vec4<bool>(!arg_0.d.x, false, true, true)), select(!select(!global1.d, global1.d, any(arg_0.d.zw)), !vec4<bool>(all(arg_0.d.zy), false | arg_0.d.x, all(global1.d.zwz), global2.x), (global1.d.x && false) & false), _wgslsmith_mult_vec3_u32(~global1.e, select(_wgslsmith_sub_vec3_u32(abs(arg_0.e), vec3<u32>(global0[_wgslsmith_index_u32(var_1, 22u)], 45277u, arg_2.x) | arg_0.a.zxw), firstTrailingBit(vec3<u32>(53320u, u_input.c, global1.a.x)), vec3<bool>(any(vec2<bool>(global2.x, false)), select(true, true, false), true))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    global2 = !vec2<bool>(all(vec2<bool>(select(true, true, true), !global1.c)), global1.c);
    global2 = !select(func_3(arg_1, min(_wgslsmith_clamp_u32(40479u, 84595u, global1.e.x), arg_3), abs(~vec3<u32>(global1.e.x, 1u, global0[_wgslsmith_index_u32(global1.e.x, 22u)]))).d.yz, vec2<bool>(arg_0.c, select(all(arg_0.d.xw), false, any(global1.d.xxx))), vec2<bool>(!global2.x, global2.x & true));
    var var_0 = !(16225u <= firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(5471u, 22u)], 22324u, 0u), vec3<u32>(arg_1.a.x, 1u, 1u))));
    var var_1 = true;
    var var_2 = ~_wgslsmith_sub_u32(arg_1.a.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(31624u, arg_1.e.x, 0u, 21838u)), _wgslsmith_mult_vec4_u32(arg_1.a, vec4<u32>(4294967295u, arg_1.a.x, 24988u, global0[_wgslsmith_index_u32(0u, 22u)])))) < global1.a.x;
    return arg_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> vec3<u32> {
    global1 = func_4(func_3(Struct_1(global1.a, -(~vec3<i32>(arg_0.x, -21223i, -20754i)), global1.c, global1.d, abs(func_2(Struct_1(vec4<u32>(58921u, 1u, global0[_wgslsmith_index_u32(0u, 22u)], 1u), vec3<i32>(arg_0.x, global1.b.x, 1i), true, vec4<bool>(global1.c, true, false, global1.c), vec3<u32>(global1.a.x, 14672u, 16614u)), Struct_1(vec4<u32>(58125u, global0[_wgslsmith_index_u32(global1.e.x, 22u)], 4294967295u, 68352u), vec3<i32>(-12160i, 61457i, global1.b.x), false, global1.d, u_input.b.yxz), Struct_1(u_input.b, vec3<i32>(arg_0.x, arg_0.x, 2147483647i), true, global1.d, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 22u)], 32049u, 1u)), Struct_1(vec4<u32>(4294967295u, 36136u, 69182u, 60249u), vec3<i32>(global1.b.x, arg_0.x, global1.b.x), true, global1.d, global1.e)))), u_input.c, ~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.e.x, 103612u, 46130u), ~vec3<u32>(6536u, u_input.a, global1.a.x))), func_3(Struct_1(u_input.b | reverseBits(vec4<u32>(22643u, global1.a.x, u_input.b.x, 0u)), abs(global1.b), !global1.c, !vec4<bool>(global2.x, global1.c, global1.c, global1.d.x), vec3<u32>(u_input.d, ~global0[_wgslsmith_index_u32(15671u, 22u)], global1.e.x)), 45295u, func_2(Struct_1(_wgslsmith_mult_vec4_u32(global1.a, vec4<u32>(17996u, u_input.b.x, u_input.c, u_input.b.x)), arg_0, any(vec3<bool>(arg_1, true, true)), !vec4<bool>(false, global2.x, false, global2.x), global1.e), Struct_1(vec4<u32>(global1.a.x, 12558u, global1.e.x, 70473u), _wgslsmith_mult_vec3_i32(arg_0, arg_0), true, global1.d, u_input.b.zwy), Struct_1(vec4<u32>(1u, 1u, 6660u, 33154u), ~vec3<i32>(-46325i, arg_0.x, global1.b.x), all(vec2<bool>(true, global2.x)), !vec4<bool>(false, global1.d.x, global2.x, arg_1), vec3<u32>(32224u, global0[_wgslsmith_index_u32(global1.a.x, 22u)], global1.a.x)), func_3(func_3(Struct_1(vec4<u32>(58644u, 1u, global1.a.x, global0[_wgslsmith_index_u32(0u, 22u)]), vec3<i32>(2147483647i, 24538i, arg_0.x), true, vec4<bool>(false, global1.c, global2.x, arg_1), global1.e), u_input.d, vec3<u32>(global1.a.x, global0[_wgslsmith_index_u32(0u, 22u)], 1u)), ~78440u, u_input.b.zyy | global1.a.xwz))), min(_wgslsmith_sub_vec3_i32(select(max(arg_0, global1.b), func_3(Struct_1(u_input.b, arg_0, true, vec4<bool>(true, global2.x, true, true), vec3<u32>(15751u, 1874u, u_input.a)), 4294967295u, u_input.b.ywx).b, !vec3<bool>(global2.x, false, global1.d.x)), -vec3<i32>(arg_0.x, global1.b.x, 2147483647i)), reverseBits(select(vec3<i32>(global1.b.x, arg_0.x, global1.b.x), ~vec3<i32>(arg_0.x, 14133i, 1i), global1.d.xyy))), u_input.d);
    let var_0 = -vec2<i32>(_wgslsmith_div_i32(global1.b.x, arg_0.x), _wgslsmith_mod_i32(-38905i, ~global1.b.x));
    let var_1 = _wgslsmith_clamp_i32(~(~arg_0.x), var_0.x, ~((i32(-1i) * -1i) ^ _wgslsmith_sub_i32(func_4(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(global1.e.x, 22u)], 4294967295u, 16678u, global0[_wgslsmith_index_u32(11674u, 22u)]), global1.b, true, global1.d, vec3<u32>(u_input.b.x, 0u, 0u)), Struct_1(global1.a, arg_0, true, vec4<bool>(arg_1, true, false, false), vec3<u32>(global0[_wgslsmith_index_u32(global1.e.x, 22u)], u_input.b.x, 22391u)), global1.b, 4294967295u).b.x, arg_0.x)));
    var var_2 = func_3(Struct_1(global1.a, global1.b, true, global1.d, func_4(func_3(Struct_1(u_input.b, arg_0, false, global1.d, vec3<u32>(0u, global1.a.x, u_input.b.x)), 0u, u_input.b.ywx), Struct_1(u_input.b, global1.b, global2.x, global1.d, vec3<u32>(global0[_wgslsmith_index_u32(52878u, 22u)], global0[_wgslsmith_index_u32(global1.a.x, 22u)], 45647u)), arg_0, global1.e.x).a.xyy ^ global1.e), global1.a.x, ~(~(~(~global1.a.xzy))));
    global1 = func_4(Struct_1(u_input.b, vec3<i32>(1i, func_3(Struct_1(vec4<u32>(4294967295u, var_2.a.x, 2960u, var_2.a.x), arg_0, global2.x, vec4<bool>(true, false, true, true), var_2.a.wzy), global1.e.x, global1.a.xyz).b.x, 31153i), global2.x, func_3(Struct_1(_wgslsmith_sub_vec4_u32(var_2.a, vec4<u32>(28119u, 25524u, 5572u, 1u)), vec3<i32>(var_1, var_1, -2147483647i), !global2.x, !vec4<bool>(true, arg_1, false, global1.c), global1.a.xwy), var_2.a.x, vec3<u32>(var_2.a.x, 0u, ~59242u)).d, ~countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(5918u, 1u, global0[_wgslsmith_index_u32(64837u, 22u)]), var_2.e))), Struct_1(firstLeadingBit(vec4<u32>(~var_2.a.x, 39451u, ~global1.e.x, 1u)), func_3(Struct_1(vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 22u)], 11305u, global1.a.x), arg_0, false, var_2.d, global1.e), global1.a.x, vec3<u32>(9051u, var_2.e.x, 1u)).b | func_3(func_3(Struct_1(var_2.a, global1.b, var_2.d.x, vec4<bool>(arg_1, arg_1, global2.x, global1.c), vec3<u32>(38206u, 28447u, 4294967295u)), global1.a.x, global1.a.xwx), 56648u, _wgslsmith_div_vec3_u32(u_input.b.wxw, var_2.a.yzy)).b, arg_1, func_3(Struct_1(firstTrailingBit(u_input.b), select(var_2.b, global1.b, global1.d.wxy), true, !var_2.d, ~var_2.a.yxz), ~4294967295u >> (_wgslsmith_div_u32(u_input.c, 1u) % 32u), min(~var_2.a.wzx, u_input.b.xww)).d, global1.e), -global1.b, 1u);
    return global1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = global1.d.xw;
    let var_1 = ~(~_wgslsmith_mult_vec3_u32((global1.e >> (global1.e % vec3<u32>(32u))) << (func_1(vec3<i32>(global1.b.x, -1i, -2147483647i), global2.x) % vec3<u32>(32u)), min(~vec3<u32>(0u, u_input.b.x, u_input.c), u_input.b.zxw)));
    global1 = Struct_1(min(~global1.a, u_input.b), global1.b, max(global1.b.x, -1i) == (i32(-1i) * -min(global1.b.x, global1.b.x)), select(!vec4<bool>(global1.c, true, !global1.c, false), select(vec4<bool>(all(vec3<bool>(false, global2.x, false)), func_4(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], var_1.x, global1.e.x, var_1.x), global1.b, global2.x, global1.d, vec3<u32>(4294967295u, global1.e.x, var_1.x)), Struct_1(vec4<u32>(var_1.x, 4294967295u, 1u, global1.e.x), global1.b, false, vec4<bool>(global2.x, var_0, global1.c, true), global1.e), vec3<i32>(global1.b.x, global1.b.x, 47033i), global1.e.x).d.x, global1.c, all(vec4<bool>(global2.x, true, var_0, global1.d.x))), select(vec4<bool>(global1.d.x, var_0, false, false), !vec4<bool>(true, global1.c, false, global2.x), global1.d), global1.d.x), select(!global1.d, !(!vec4<bool>(global1.c, global1.d.x, global1.c, var_0)), true || all(global1.d.xz))), ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(global1.e, var_1) | (global1.e << (u_input.b.zwz % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(14130u, 24344u, 0u), var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f - -1406f)))), 1056f, 1f), vec4<i32>(global1.b.x, -22289i, _wgslsmith_mult_i32(18022i, ~global1.b.x), -1i));
}

