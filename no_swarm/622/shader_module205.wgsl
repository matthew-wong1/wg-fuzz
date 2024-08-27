struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = 1i;

var<private> global2: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec2<i32> {
    let var_0 = vec4<u32>(u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(reverseBits(min(vec4<u32>(1u, 0u, u_input.a, u_input.a), vec4<u32>(1u, 15947u, u_input.a, 4294967295u))), ~vec4<u32>(14125u, 60926u, 1u, 54743u) | select(vec4<u32>(11643u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, 3797u, u_input.a, 0u), false)), 41800u), u_input.a, ~(~12757u));
    var var_1 = Struct_4(select(vec4<bool>(true, !all(vec3<bool>(true, true, true)), true, false), select(!select(global2[_wgslsmith_index_u32(var_0.x, 20u)], vec4<bool>(false, true, false, false), global2[_wgslsmith_index_u32(var_0.x, 20u)]), vec4<bool>(true, any(vec4<bool>(false, true, false, true)), true, 54647u == u_input.a), !select(vec4<bool>(false, true, true, false), global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)])), global2[_wgslsmith_index_u32(reverseBits(u_input.a), 20u)]), ~(~select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, var_0.x, var_0.x), vec4<u32>(u_input.a, 1u, u_input.a, 9736u)), var_0 & vec4<u32>(1u, 0u, u_input.a, 4294967295u), true)), var_0.zz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-795f, 1000f, 643f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1068f, 323f, -952f)))))), select(global2[_wgslsmith_index_u32((~68389u | _wgslsmith_add_u32(4774u, var_0.x)) ^ 1u, 20u)], select(global2[_wgslsmith_index_u32(var_0.x, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)], vec4<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(false, true)), true)), all(vec3<bool>(true, any(vec3<bool>(true, false, false)), any(vec3<bool>(false, false, false))))));
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~(~var_0.x), u_input.a), var_0.x), ~(~var_1.c));
    global2 = array<vec4<bool>, 20>();
    var_1 = Struct_4(select(select(global2[_wgslsmith_index_u32(~(var_0.x >> (var_0.x % 32u)), 20u)], !global2[_wgslsmith_index_u32(firstTrailingBit(var_1.b.x), 20u)], true), select(global2[_wgslsmith_index_u32(78843u, 20u)], global2[_wgslsmith_index_u32(61040u, 20u)], !(!vec4<bool>(true, false, var_1.a.x, var_1.a.x))), !global2[_wgslsmith_index_u32(u_input.a ^ _wgslsmith_sub_u32(107623u, 0u), 20u)]), reverseBits(~min(vec4<u32>(var_0.x, 0u, u_input.a, 84062u), vec4<u32>(u_input.a, var_0.x, var_2, 0u)) ^ abs(vec4<u32>(var_1.c.x, 1u, var_0.x, u_input.a) | var_1.b)), _wgslsmith_sub_vec2_u32(var_0.wx, var_1.b.ww), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f * -718f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.d.x, 1352f), var_1.d.x)), _wgslsmith_f_op_f32(max(var_1.d.x, -1263f)))), global2[_wgslsmith_index_u32(u_input.a, 20u)]);
    return vec2<i32>(_wgslsmith_clamp_i32(27390i, i32(-1i) * -31601i, _wgslsmith_mod_i32(1i, -3738i)), _wgslsmith_add_i32(max(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 5126i, 41308i), vec3<i32>(-2147483647i, 48547i, -7137i)), 0i), 19606i)) << (var_1.b.zx % vec2<u32>(32u));
}

fn func_2() -> bool {
    global0 = true;
    let var_0 = func_3();
    let var_1 = vec4<u32>(57435u ^ _wgslsmith_clamp_u32(u_input.a, reverseBits(1u), _wgslsmith_sub_u32(firstTrailingBit(u_input.a), select(u_input.a, 1u, false))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a))), 0u, ~(~(~1u)));
    let var_2 = Struct_2(Struct_1(var_0, true, true, ~_wgslsmith_mult_u32(~var_1.x, min(var_1.x, u_input.a)), countOneBits(vec4<i32>(func_3().x, -var_0.x, var_0.x, 0i))), select(vec3<bool>(true, !any(vec3<bool>(true, false, true)), false), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), false), vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), all(vec3<bool>(true, false, false)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)))), -1632f, Struct_1(~var_0, (select(var_0.x, -45146i, true) <= firstLeadingBit(var_0.x)) | all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), true, ~(~_wgslsmith_add_u32(u_input.a, var_1.x)), vec4<i32>(var_0.x, max(-2147483647i, ~(-10342i)), var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(39294i, 29843i, var_0.x, var_0.x), vec4<i32>(var_0.x, -45995i, var_0.x, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(978f)))))), -2741f, 1083f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-724f)) * -1436f))));
    var var_3 = Struct_1(max(~(~max(vec2<i32>(-51584i, var_2.d.e.x), var_2.a.a)), vec2<i32>(max(var_2.a.a.x, var_0.x) << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u), var_2.d.e.x)), true, !(~4294967295u >= u_input.a), 8997u, vec4<i32>(var_2.d.a.x, i32(-1i) * -(var_0.x & var_2.d.e.x), -2147483647i, _wgslsmith_dot_vec3_i32(var_2.a.e.wxw, _wgslsmith_mod_vec3_i32(~vec3<i32>(var_0.x, -2147483647i, -1i), vec3<i32>(var_0.x, var_2.d.e.x, var_2.a.a.x)))));
    return var_0.x > reverseBits(var_3.a.x);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    global2 = array<vec4<bool>, 20>();
    var var_0 = _wgslsmith_add_vec3_i32(-vec3<i32>(-_wgslsmith_mult_i32(1i, 0i), func_3().x, _wgslsmith_dot_vec3_i32(vec3<i32>(67742i, 1198i, -2147483647i), vec3<i32>(1i, 1i, 1i))), vec3<i32>(2147483647i, ~max(~2305i, _wgslsmith_dot_vec3_i32(vec3<i32>(-52821i, 1i, 11496i), vec3<i32>(26550i, 0i, -2147483647i))), ~(~(~(-75i)))));
    let var_1 = Struct_4(select(!(!select(vec4<bool>(arg_0, true, arg_1.x, false), vec4<bool>(false, arg_1.x, arg_1.x, arg_0), vec4<bool>(arg_0, arg_1.x, arg_0, false))), select(select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5411u, u_input.a, arg_2, 0u), vec4<u32>(arg_2, u_input.a, 82819u, arg_2)), 20u)], global2[_wgslsmith_index_u32(0u, 20u)], select(global2[_wgslsmith_index_u32(u_input.a, 20u)], vec4<bool>(false, false, false, arg_1.x), true)), select(global2[_wgslsmith_index_u32(u_input.a, 20u)], !vec4<bool>(arg_0, false, false, false), global2[_wgslsmith_index_u32(arg_2, 20u)]), !arg_0 & all(vec2<bool>(true, false))), select(all(arg_1) && (arg_2 == arg_2), arg_0, func_2())), vec4<u32>(44334u, arg_2 << (~43367u % 32u), 4294967295u, u_input.a) ^ ~(~abs(vec4<u32>(u_input.a, 4294967295u, arg_2, 0u))), firstLeadingBit(_wgslsmith_add_vec2_u32(select(~vec2<u32>(33718u, 1u), vec2<u32>(u_input.a, 4294967295u) | vec2<u32>(u_input.a, 0u), true), firstLeadingBit(vec2<u32>(4294967295u, 1u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(393f - -760f), _wgslsmith_f_op_f32(abs(2765f)), _wgslsmith_f_op_f32(step(-1509f, 665f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(513f, 254f, -492f) * vec3<f32>(-1278f, -131f, -1239f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1107f, 1192f, -1140f))))), !vec4<bool>(true, false, all(select(arg_1.wxx, vec3<bool>(arg_0, true, arg_1.x), true)), any(select(vec3<bool>(arg_0, true, arg_1.x), vec3<bool>(arg_1.x, false, true), true))));
    let var_2 = _wgslsmith_div_vec3_i32(~_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_0.x, -2147483647i), vec3<i32>(var_0.x, 15741i, 11415i)), abs(vec3<i32>(var_0.x, var_0.x, var_0.x))), -vec3<i32>(-12126i, var_0.x, var_0.x)), vec3<i32>(var_0.x ^ -51706i, 2147483647i, select(4514i, -(i32(-1i) * -5472i), any(!var_1.e.wy))));
    global2 = array<vec4<bool>, 20>();
    return Struct_1(abs(vec2<i32>(var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.x), -var_2.zx))), 1i >= firstTrailingBit(countOneBits(0i) >> (u_input.a % 32u)), !(!var_1.a.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(max(~1u, ~34867u), ~(20862u << (arg_2 % 32u))), u_input.a), reverseBits(vec4<i32>(var_0.x & (i32(-1i) * -30444i), countOneBits(min(-28374i, var_2.x)), -(~var_0.x), var_0.x)));
}

fn func_1() -> u32 {
    var var_0 = func_4(true, !vec4<bool>(!all(vec2<bool>(true, false)), true, true, func_2()), 25818u);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global2 = array<vec4<bool>, 20>();
    let var_2 = Struct_3(vec2<u32>(_wgslsmith_div_u32(u_input.a, ~15216u << (~var_0.d % 32u)), 4294967295u), ~(~_wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, 50069u), vec2<u32>(u_input.a, 4294967295u), vec2<bool>(true, var_0.c)), ~vec2<u32>(u_input.a, u_input.a))));
    var var_3 = Struct_1(_wgslsmith_mult_vec2_i32(-var_0.e.xx << (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a.x, 1345u), vec2<u32>(1u, var_0.d)), var_2.b) % vec2<u32>(32u)), vec2<i32>(-2147483647i, ~(~var_0.a.x))), var_0.b, var_0.e.x > min(109267i, firstTrailingBit(func_4(var_0.c, vec4<bool>(var_0.b, false, var_0.c, true), var_2.a.x).a.x)), countOneBits(0u ^ var_0.d), vec4<i32>(-1i, ~1i, -39953i, var_0.e.x) ^ _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(38379i, var_0.a.x, var_0.e.x, -1315i)), ~vec4<i32>(1i, var_0.e.x, -20686i, 2147483647i), ~func_4(var_0.c, global2[_wgslsmith_index_u32(27158u, 20u)], 27093u).e));
    return reverseBits(46169u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(-1i);
    global0 = all(global2[_wgslsmith_index_u32(~(abs(u_input.a) ^ 0u), 20u)]);
    let var_0 = _wgslsmith_add_i32(0i, _wgslsmith_clamp_i32(1i >> (~firstTrailingBit(u_input.a) % 32u), -1i, -686i));
    global1 = var_0;
    global1 = 1i;
    var var_1 = (-(~(var_0 << (52818u % 32u))) ^ _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -1i, var_0), vec3<i32>(32792i, -2147483647i, -48320i))), -1i)) & (i32(-1i) * -var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, var_0, vec4<u32>(_wgslsmith_mod_u32(func_1(), ~u_input.a ^ 45903u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 26909u), vec4<u32>(u_input.a, 20171u, u_input.a, 1u)), 38038u), 22545u), firstLeadingBit(~u_input.a), select(_wgslsmith_mult_u32(u_input.a, 1u), u_input.a, true)), -_wgslsmith_mod_i32(-2147483647i ^ var_0, _wgslsmith_mod_i32(var_0, -1i)) & -(~_wgslsmith_mod_i32(var_0, 2147483647i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -271f)))))));
}

