struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<bool>(false, true, false, false), 586f, false, vec4<i32>(-1i, -1i, 0i, -16956i)), Struct_1(vec4<bool>(false, true, true, false), -1097f, false, vec4<i32>(16758i, 1805i, -48353i, -27919i)), Struct_1(vec4<bool>(false, false, false, false), 230f, true, vec4<i32>(0i, i32(-2147483648), 2147483647i, 1i)), Struct_1(vec4<bool>(true, true, true, false), -1158f, false, vec4<i32>(i32(-2147483648), -1i, 2147483647i, -32179i)), Struct_1(vec4<bool>(false, false, true, true), -1000f, true, vec4<i32>(2147483647i, 0i, 1i, 10283i)), Struct_1(vec4<bool>(false, false, true, false), 723f, false, vec4<i32>(1i, -1i, 5020i, -1i)), Struct_1(vec4<bool>(true, true, false, false), -1579f, true, vec4<i32>(1i, 0i, i32(-2147483648), -5574i)), Struct_1(vec4<bool>(false, true, true, true), -674f, true, vec4<i32>(-739i, 0i, 4126i, -1i)), Struct_1(vec4<bool>(true, false, true, false), 1421f, true, vec4<i32>(-10243i, 0i, 0i, -193i)), Struct_1(vec4<bool>(false, false, true, false), -500f, false, vec4<i32>(1i, -18926i, 37363i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, false, false), -383f, false, vec4<i32>(-1i, 52488i, -1i, 1i)), Struct_1(vec4<bool>(true, true, false, true), -212f, false, vec4<i32>(0i, -34133i, -35513i, 0i)), Struct_1(vec4<bool>(true, false, true, true), -735f, true, vec4<i32>(70780i, -24307i, 41384i, 71363i)), Struct_1(vec4<bool>(true, false, false, true), 1000f, true, vec4<i32>(0i, 9702i, -6647i, 7942i)), Struct_1(vec4<bool>(false, false, true, true), -198f, true, vec4<i32>(-27959i, 0i, -7564i, -12227i)), Struct_1(vec4<bool>(true, false, false, false), -610f, true, vec4<i32>(0i, 9297i, 1i, i32(-2147483648))), Struct_1(vec4<bool>(false, false, false, false), 616f, false, vec4<i32>(-34709i, -12705i, 17161i, 1i)), Struct_1(vec4<bool>(false, true, true, true), -1057f, false, vec4<i32>(i32(-2147483648), -30844i, i32(-2147483648), -1i)), Struct_1(vec4<bool>(false, true, true, true), 952f, false, vec4<i32>(-28954i, -21027i, -1i, -13630i)));

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_3, 19>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_1(!vec4<bool>(true, true, true, any(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(935f * 2030f), _wgslsmith_f_op_f32(-802f - 1000f))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, false))), vec4<i32>(_wgslsmith_clamp_i32(u_input.d, firstTrailingBit(96293i), 36545i), ~(-u_input.d), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.d, u_input.d), abs(18545i), 45394i), 31645i)));
    global2 = array<Struct_3, 19>();
    return !(!(!var_0.a.a.x));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = arg_0;
    global2 = array<Struct_3, 19>();
    return Struct_1(vec4<bool>(arg_0, arg_0, arg_0, func_3()), _wgslsmith_f_op_f32(-arg_1.x), false, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~(vec4<i32>(2147483647i, u_input.d, 22288i, u_input.b) & vec4<i32>(u_input.d, u_input.d, u_input.d, 7009i)), max(-vec4<i32>(17801i, -42929i, u_input.b, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -17626i, 2147483647i), vec4<i32>(u_input.d, -2147483647i, u_input.b, 1i)))), vec4<i32>(i32(-1i) * -42415i, -u_input.b, i32(-1i) * -51643i, _wgslsmith_sub_i32(countOneBits(-10378i), 35383i << (1u % 32u)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = reverseBits(select(u_input.a.x, 7059u, true));
    var_0 = global1.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(1107f + arg_0.b), _wgslsmith_f_op_f32(-arg_0.b), 1021f) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-574f + 693f), -479f, -310f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b, arg_0.b, 308f, 1980f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, 426f, arg_0.b) - vec4<f32>(arg_0.b, 841f, -1136f, 780f)), vec4<bool>(true, false, false, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 226f, arg_0.b, arg_0.b)))))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 1924f, arg_0.b, -551f))))))), vec4<bool>(false, true, false, false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(278f, func_2(arg_0.c, vec2<f32>(var_1.x, -655f)).b, _wgslsmith_f_op_f32(step(605f, -1064f)), _wgslsmith_f_op_f32(arg_0.b - arg_0.b))))));
    var var_3 = Struct_2(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.c, ~global1.x)), u_input.a), var_1.x, !vec3<bool>(true, true, any(!arg_0.a)));
    return func_2(true, _wgslsmith_f_op_vec2_f32(-var_1.wy));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = reverseBits(~_wgslsmith_add_vec2_u32(u_input.a, u_input.a));
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(global1.x, var_0.x), _wgslsmith_clamp_u32(1u, ~(0u >> (u_input.c % 32u)) >> (var_0.x % 32u), 0u), 4294967295u);
    var var_2 = true;
    let var_3 = !((992f <= arg_2.b) & !func_3());
    var var_4 = global2[_wgslsmith_index_u32(16063u, 19u)];
    return Struct_2(14879u, -1518f, func_2(!var_4.a.c, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(-323f)), _wgslsmith_f_op_f32(-var_4.a.b)), vec2<f32>(_wgslsmith_f_op_f32(sign(929f)), var_4.a.b)))).a.ywx);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<f32>) -> vec4<f32> {
    let var_0 = func_5(!all(arg_1.wyx), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.x)) + arg_2), arg_3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))))), -767f), func_4(func_2(!arg_1.x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2, arg_2))))), true);
    let var_1 = Struct_2(abs(~var_0.a), _wgslsmith_f_op_f32(-333f - var_0.b), vec3<bool>(all(arg_1.xy), func_4(func_2(true, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2, -3098f))))).c, true));
    var var_2 = global1.yx;
    var var_3 = Struct_3(Struct_1(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false, vec2<f32>(var_0.b, 521f)).b + _wgslsmith_f_op_f32(select(var_0.b, -1537f, false))) * -2377f), true, max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, -16955i, u_input.d, u_input.d) ^ vec4<i32>(0i, -22392i, 67829i, u_input.d), vec4<i32>(12052i, 2147483647i, u_input.b, -1i)), ~firstTrailingBit(vec4<i32>(6838i, -28536i, u_input.b, u_input.b)))));
    let var_4 = Struct_1(select(func_2(var_3.a.c, _wgslsmith_f_op_vec2_f32(-arg_3)).a, vec4<bool>(var_3.a.c, func_5(arg_1.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.x, arg_3.x, 539f, var_1.b))), Struct_1(arg_1, arg_2, true, vec4<i32>(var_3.a.d.x, arg_0.x, u_input.d, arg_0.x)), all(arg_1.ww)).c.x, false, var_3.a.c), var_1.c.x), -665f, var_0.c.x, _wgslsmith_add_vec4_i32(var_3.a.d, _wgslsmith_mult_vec4_i32(firstTrailingBit(var_3.a.d & vec4<i32>(u_input.d, var_3.a.d.x, 17524i, var_3.a.d.x)), ~(var_3.a.d | var_3.a.d))));
    return vec4<f32>(_wgslsmith_f_op_f32(-423f + -677f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-734f)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.b))))) * var_1.b), _wgslsmith_f_op_f32(sign(func_2(var_4.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, arg_3.x), vec2<f32>(-2761f, var_3.a.b))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, var_1.b)))).b)), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(abs(vec3<i32>(-9348i, u_input.d, 24653i)), vec4<bool>(true, true, true, true), 1f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-316f, 455f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(394f, 1228f, -1460f, 462f) * vec4<f32>(-197f, -868f, -671f, -1326f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(select(359f, -1183f, false)), _wgslsmith_f_op_f32(f32(-1f) * -904f), -881f, 151f), vec4<f32>(_wgslsmith_div_f32(995f, 412f), _wgslsmith_f_op_f32(max(632f, 146f)), _wgslsmith_div_f32(1125f, -364f), 1355f)))))));
    global1 = reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 0u, ~17058u), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u, global1.x), u_input.a.x, _wgslsmith_add_u32(global1.x, 4294967295u)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 13289u, 67145u)), vec3<u32>(u_input.c, 1846u, 4294967295u) & vec3<u32>(global1.x, 0u, 70490u), vec3<bool>(true, true, true)))));
    global1 = vec3<u32>(1u, u_input.c, _wgslsmith_div_u32(countOneBits(u_input.a.x), ~global1.x));
    var var_1 = global0[_wgslsmith_index_u32(1u, 19u)];
    let var_2 = 412f;
    var_1 = Struct_1(func_2(any(!(!vec4<bool>(true, var_1.a.x, true, true))), var_0.yx).a, -1000f, false, -vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -17273i), vec2<i32>(-2147483647i, 7257i)), countOneBits(_wgslsmith_add_i32(var_1.d.x, 7791i)), min(_wgslsmith_dot_vec3_i32(var_1.d.zxz, vec3<i32>(u_input.d, var_1.d.x, u_input.d)), var_1.d.x), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

