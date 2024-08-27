struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: f32;

var<private> global2: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(57449u, 19862u));

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: array<vec4<u32>, 20>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>) -> vec2<u32> {
    let var_0 = arg_0.b;
    global3 = select(select(vec2<bool>(!(arg_0.b.b.x != u_input.c), false), var_0.a.wx, select(select(vec2<bool>(true, true), select(arg_0.b.a.zy, vec2<bool>(true, var_0.a.x), false), !vec2<bool>(arg_0.a, global3.x)), select(arg_0.b.a.xw, vec2<bool>(true, true), arg_0.b.a.x), vec2<bool>(true, true))), !arg_0.b.a.zy, any(vec4<bool>(select(true, true, true), !arg_0.b.a.x, true, true)) && var_0.a.x);
    var var_1 = !(!(!all(arg_0.b.a.zw)) == false);
    global2 = array<vec2<u32>, 1>();
    global4 = array<vec4<u32>, 20>();
    return vec2<u32>(var_0.b.x, countOneBits(4294967295u));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.c.x, 488f) * vec3<f32>(178f, -530f, -981f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-267f, -167f, 1000f) * vec3<f32>(-1558f, 222f, arg_0.c.x)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b, 233f, -1178f)))))))));
    let var_1 = Struct_4(true, Struct_3(vec4<bool>(true, global3.x, true, all(select(vec4<bool>(global3.x, false, arg_1, arg_1), vec4<bool>(true, global3.x, arg_1, global3.x), arg_1))), ~_wgslsmith_add_vec2_u32(func_3(Struct_4(true, Struct_3(vec4<bool>(true, arg_1, global3.x, global3.x), vec2<u32>(0u, u_input.b)), u_input.b), global2[_wgslsmith_index_u32(u_input.c, 1u)]), select(vec2<u32>(u_input.d, u_input.b), vec2<u32>(u_input.b, 1u), global3.x))), reverseBits(~9049u));
    global1 = -1868f;
    let var_2 = 4294967295u;
    var var_3 = arg_0;
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(935f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1564f - var_0.x)))), _wgslsmith_f_op_f32(-var_3.c.x)), var_3.b);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_3;
    var var_1 = Struct_4(global3.x, Struct_3(vec4<bool>(global3.x, !(!global3.x), true == (-667f < arg_2), true), ~var_0.a.wy), firstLeadingBit(66246u) & arg_1.x);
    global0 = false;
    var var_2 = Struct_4(true, Struct_3(!(!vec4<bool>(false, var_1.b.a.x, var_1.a, false)), ~var_0.a.wx), u_input.b);
    let var_3 = Struct_4(all(!var_2.b.a.wy), var_2.b, _wgslsmith_sub_u32(u_input.d, ~46503u));
    return Struct_3(var_3.b.a, arg_3.a.xy);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.e), vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(11150i, arg_2.x, 2147483647i))))), -arg_2.x);
    var var_1 = u_input.c;
    global2 = array<vec2<u32>, 1>();
    var var_2 = arg_0.b.x;
    var var_3 = vec4<u32>(~(~(~1u)), arg_0.b.x, 1u, firstTrailingBit(firstLeadingBit(~(u_input.c ^ arg_0.b.x))));
    return func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(723f * -1000f), _wgslsmith_f_op_f32(step(-742f, -1000f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1063f, 255f), vec2<f32>(-1309f, 1041f))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-558f, 815f)))))), ~(vec4<u32>(1u, var_3.x, arg_0.b.x, ~var_3.x) << (global4[_wgslsmith_index_u32(~arg_0.b.x, 20u)] % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(func_2(Struct_2(1f, _wgslsmith_f_op_f32(sign(-861f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-822f, 892f) + _wgslsmith_div_vec2_f32(vec2<f32>(-969f, -223f), vec2<f32>(-621f, 762f)))), any(vec3<bool>(true, func_4(vec2<f32>(-1143f, -917f), global4[_wgslsmith_index_u32(arg_0.b.x, 20u)], -1450f, Struct_1(global4[_wgslsmith_index_u32(24064u, 20u)], -384f)).a.x, true)))).x, Struct_1(countOneBits(max(~vec4<u32>(arg_0.b.x, 37678u, 13331u, var_3.x), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_3.yxz, var_3.zxw), 20u)])), -505f));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -537f)))), arg_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_1.x), vec2<f32>(-856f, -374f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(arg_1, vec2<f32>(-380f, -610f), global3.x)), arg_1)))));
    var var_1 = Struct_4(global3.x, func_5(func_4(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(arg_2, 1728f, vec2<f32>(arg_1.x, arg_2)), true)), global4[_wgslsmith_index_u32(arg_0, 20u)], arg_1.x, Struct_1(~vec4<u32>(1u, arg_0, u_input.c, u_input.d), _wgslsmith_f_op_f32(exp2(arg_2)))), select(!vec2<bool>(global3.x, true), vec2<bool>(true, u_input.b <= arg_0), global3.x), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-18467i, 2810i, u_input.e), vec3<i32>(15273i, u_input.a, -1i), vec3<i32>(-1i, u_input.a, 9089i)) | ~vec3<i32>(u_input.a, u_input.e, u_input.a)), arg_0);
    let var_2 = var_1.b;
    let var_3 = -27844i;
    global3 = !select(vec2<bool>(!var_1.a, all(func_4(vec2<f32>(arg_2, arg_2), global4[_wgslsmith_index_u32(6423u, 20u)], var_0.b, Struct_1(vec4<u32>(var_1.c, var_1.c, var_1.b.b.x, var_2.b.x), var_0.c.x)).a)), select(!var_1.b.a.xz, var_1.b.a.wx, !var_1.a), true);
    return Struct_1(vec4<u32>(120906u, min(_wgslsmith_sub_u32(~var_2.b.x, 4294967295u), ~(~11120u)), var_2.b.x, 1u), arg_1.x);
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> Struct_3 {
    global3 = !(!(!vec2<bool>(func_4(vec2<f32>(218f, -530f), vec4<u32>(0u, arg_1.a.x, 5132u, 1u), -711f, arg_1).a.x, all(vec4<bool>(global3.x, global3.x, global3.x, false)))));
    global4 = array<vec4<u32>, 20>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-768f + -314f), arg_0)), global3.x))));
    var var_0 = vec4<u32>(50607u, firstLeadingBit(select(abs(_wgslsmith_div_u32(arg_1.a.x, u_input.b)), 1u, any(vec2<bool>(true, true)))), func_5(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1278f, 148f), vec2<f32>(arg_1.b, arg_1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, 1132f) * vec2<f32>(1744f, arg_0))), ~(vec4<u32>(arg_1.a.x, arg_1.a.x, u_input.c, 4294967295u) ^ vec4<u32>(1u, 4294967295u, 0u, 1u)), -792f, func_1(4294967295u & arg_1.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(791f, 727f) - vec2<f32>(arg_1.b, -978f)), _wgslsmith_f_op_f32(1000f + arg_0))), !vec2<bool>(all(vec2<bool>(false, global3.x)), func_4(vec2<f32>(1035f, arg_0), global4[_wgslsmith_index_u32(0u, 20u)], arg_0, Struct_1(vec4<u32>(arg_1.a.x, 46286u, arg_1.a.x, u_input.b), 1000f)).a.x), vec3<i32>(~u_input.e, ~0i, reverseBits(u_input.a ^ 2147483647i))).b.x, 66904u);
    let var_1 = ~abs(12465i);
    return func_5(Struct_3(select(func_5(func_4(vec2<f32>(-514f, 645f), global4[_wgslsmith_index_u32(u_input.c, 20u)], arg_1.b, Struct_1(vec4<u32>(arg_1.a.x, arg_1.a.x, 0u, u_input.b), arg_0)), vec2<bool>(global3.x, false), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.e, var_1), vec3<i32>(-35974i, var_1, u_input.e))).a, !vec4<bool>(global3.x, global3.x, false, true), true), var_0.wz), vec2<bool>(func_4(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.b, -988f))), vec4<u32>(~var_0.x, u_input.d, func_3(Struct_4(global3.x, Struct_3(vec4<bool>(global3.x, true, global3.x, global3.x), global2[_wgslsmith_index_u32(u_input.d, 1u)]), 4294967295u), vec2<u32>(var_0.x, 4294967295u)).x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2018f, 1117f)), func_1(0u, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(651f, -862f))), _wgslsmith_f_op_f32(247f * -258f))).a.x, func_4(vec2<f32>(arg_1.b, _wgslsmith_div_f32(arg_0, arg_1.b)), vec4<u32>(var_0.x << (var_0.x % 32u), u_input.b, 23850u, 0u ^ u_input.b), _wgslsmith_f_op_f32(abs(849f)), arg_1).a.x), ~vec3<i32>(abs(-1i | u_input.e), _wgslsmith_mult_i32(~(-1i), -6719i), 88788i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1252f, -841f), _wgslsmith_f_op_f32(abs(1136f))))))));
    var var_1 = func_6(-629f, func_1(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, u_input.d, 4294967295u)), ~vec3<u32>(u_input.c, u_input.c, 47085u)), var_0, _wgslsmith_f_op_f32(f32(-1f) * -381f)));
    var var_2 = func_5(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-424f, var_0.x))) - vec2<f32>(234f, -1845f)), var_0), ~_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.b, 4401u, 11666u, 4294967295u), vec4<u32>(u_input.d, 0u, u_input.c, 4294967295u)), global4[_wgslsmith_index_u32(~73772u, 20u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -961f)), Struct_1(vec4<u32>(_wgslsmith_mod_u32(var_1.b.x, 15663u), 1u, min(4294967295u, var_1.b.x), 1u), _wgslsmith_f_op_f32(-var_0.x))), func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -339f) * var_0))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1129f, 442f)), vec2<f32>(var_0.x, var_0.x))), var_1.a.x)), global4[_wgslsmith_index_u32(select(29222u, ~4294967295u, func_6(312f, Struct_1(vec4<u32>(var_1.b.x, 4294967295u, 0u, var_1.b.x), -657f)).a.x), 20u)], _wgslsmith_f_op_f32(trunc(var_0.x)), Struct_1(min(~global4[_wgslsmith_index_u32(u_input.b, 20u)], global4[_wgslsmith_index_u32(0u, 20u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(var_0.x - 455f)))).a.zz, firstLeadingBit(_wgslsmith_div_vec3_i32(reverseBits(-vec3<i32>(-51701i, u_input.e, 2593i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -62680i, 2147483647i), vec3<i32>(-1i, 7198i, u_input.a)), -vec3<i32>(u_input.a, -2147483647i, -19230i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, u_input.a, -1i), vec3<i32>(0i, -2147483647i, u_input.a)))))).a.yx;
    global3 = vec2<bool>(var_2.x, var_1.a.x);
    var_2 = var_1.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(var_0 + var_0)))), var_0, 1i, u_input.e, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-28217i, -2147483647i), vec2<i32>(u_input.a, 2147483647i))), firstLeadingBit(~(vec2<i32>(u_input.e, u_input.a) >> (vec2<u32>(3953u, 4294967295u) % vec2<u32>(32u))))));
}

