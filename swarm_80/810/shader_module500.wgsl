struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec3<i32>(-39594i, 1i, -1i), vec3<u32>(1u, 0u, 24706u)), Struct_3(vec3<i32>(-1i, -16119i, 11702i), vec3<u32>(54095u, 4294967295u, 27342u)), Struct_3(vec3<i32>(-8410i, 2147483647i, 0i), vec3<u32>(1u, 39188u, 71441u)), Struct_3(vec3<i32>(1i, 22823i, 13028i), vec3<u32>(4810u, 0u, 28165u)), Struct_3(vec3<i32>(41366i, 1i, -2032i), vec3<u32>(29691u, 23256u, 1u)), Struct_3(vec3<i32>(-1i, -54338i, i32(-2147483648)), vec3<u32>(18256u, 22775u, 0u)), Struct_3(vec3<i32>(1i, -1i, 0i), vec3<u32>(1u, 1u, 1u)), Struct_3(vec3<i32>(16543i, 1i, -11513i), vec3<u32>(16937u, 40860u, 5035u)));

var<private> global2: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true));

var<private> global3: array<bool, 25>;

var<private> global4: array<vec2<f32>, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_clamp_i32(~arg_0.a.x, -reverseBits(_wgslsmith_sub_i32(u_input.a, -global0.d)), 32152i);
    global1 = array<Struct_3, 8>();
    global0 = Struct_4(Struct_1(vec3<u32>(max(firstLeadingBit(u_input.c), arg_1.b.b.x), _wgslsmith_sub_u32(u_input.c & 24065u, arg_2.b.d), ~4294967295u), ~arg_1.c.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.c.c.x, 479f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.c.x, global0.c.c.x) * vec2<f32>(210f, -548f))) + global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c, arg_1.b.b.x), arg_0.b.x, 4294967295u), 27u)]), 4294967295u, arg_2.a.a.x), Struct_3(arg_0.a, ~vec3<u32>(~4294967295u, reverseBits(arg_1.c.a.x), arg_1.b.b.x)), arg_2.a, arg_1.a.b);
    let var_1 = vec4<f32>(arg_1.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.c.x), 318f)))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(abs(arg_1.a.c.x))), 1848f);
    return ~arg_2.b.b;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(abs(u_input.a), 0i, 10668i), vec3<i32>(func_3(global0.b, Struct_4(global0.c, global0.b, global0.c, 1i), Struct_2(global0.c, global0.c, vec4<f32>(-1685f, -1127f, global0.a.c.x, -1863f))), abs(~global0.c.b), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 0i, global0.a.b, u_input.a), -vec4<i32>(global0.a.b, u_input.a, global0.c.b, 2147483647i)))) >> (~vec3<u32>(global0.c.a.x, ~(~4294967295u), 67861u) % vec3<u32>(32u));
    var var_1 = Struct_1(~arg_0.wzz, -(_wgslsmith_dot_vec2_i32(vec2<i32>(2685i, global0.a.b), _wgslsmith_div_vec2_i32(vec2<i32>(-4858i, 11766i), vec2<i32>(-29193i, var_0.x))) ^ reverseBits(620i)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.c.x, global0.c.c.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.c.x, 1717f), vec2<f32>(935f, 1223f))))) + _wgslsmith_div_vec2_f32(global0.c.c, _wgslsmith_f_op_vec2_f32(global4[_wgslsmith_index_u32(global0.b.b.x, 27u)] - global4[_wgslsmith_index_u32(4112u, 27u)]))))), countOneBits(_wgslsmith_mod_u32(abs(global0.b.b.x), 1562u)), 4294967295u);
    var var_2 = global0.c;
    var var_3 = var_2.c.x;
    var var_4 = Struct_4(Struct_1(~(~var_2.a) | ~var_2.a, firstLeadingBit(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-2147483647i, u_input.a, u_input.a)), u_input.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.c.c.x, 1536f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1379f, 670f)), global0.c.c, vec2<bool>(false, global3[_wgslsmith_index_u32(var_1.d, 25u)])))), arg_0.x, _wgslsmith_div_u32(~1u, select(52659u, min(0u, var_2.e), all(vec4<bool>(false, global3[_wgslsmith_index_u32(var_1.e, 25u)], global3[_wgslsmith_index_u32(var_2.e, 25u)], global3[_wgslsmith_index_u32(26155u, 25u)]))))), Struct_3(countOneBits(vec3<i32>(var_0.x & 2147483647i, -var_2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(9256i, 7427i, 2147483647i, var_2.b), vec4<i32>(var_0.x, var_0.x, 2147483647i, 0i)))), vec3<u32>(_wgslsmith_add_u32(reverseBits(u_input.c), 0u), 1u, 1u)), Struct_1(vec3<u32>(var_2.e, ~max(u_input.c, arg_0.x), var_1.a.x), 2147483647i, var_1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(~15148u, var_2.d), select(var_2.a.zx, firstLeadingBit(var_2.a.zy), var_1.c.x == -1091f)), u_input.c), -24918i);
    return var_4.c.c.x;
}

fn func_1(arg_0: vec4<f32>) -> Struct_4 {
    global4 = array<vec2<f32>, 27>();
    global4 = array<vec2<f32>, 27>();
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(func_2(~vec4<u32>(0u, u_input.c, u_input.c, u_input.c) | ~vec4<u32>(global0.c.e, global0.b.b.x, 1u, u_input.c))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.c.c.x, -2179f), 270f), -652f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-484f)))), arg_0.x)));
    var var_1 = !vec2<bool>(global3[_wgslsmith_index_u32(54820u | u_input.c, 25u)], global3[_wgslsmith_index_u32(u_input.c, 25u)]);
    var var_2 = abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c.d, firstTrailingBit(42579u), ~global0.a.d, 0u), vec4<u32>(global0.c.e, max(u_input.c, countOneBits(u_input.c)), 4294967295u, 1u)));
    return Struct_4(Struct_1(max(vec3<u32>(global0.c.a.x, 1u, ~global0.c.e), countOneBits(global0.c.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, global0.b.a.x, -35681i), vec4<i32>(global0.c.b, 0i, -2147483647i, -2147483647i)), max(26253i, u_input.b.x), -global0.a.b, _wgslsmith_add_i32(u_input.a, 2442i)), ~(vec4<i32>(1i, 1i, -55529i, -98040i) >> (vec4<u32>(u_input.c, 11077u, u_input.c, 1u) % vec4<u32>(32u)))), vec2<f32>(_wgslsmith_div_f32(global0.a.c.x, _wgslsmith_f_op_f32(-global0.c.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.x, global0.a.c.x), _wgslsmith_div_f32(-120f, var_0.x)))), ~32289u, u_input.c), global0.b, Struct_1(vec3<u32>(max(u_input.c, 1u) & ~4294967295u, 8383u, 478u), _wgslsmith_sub_i32(~_wgslsmith_mod_i32(0i, 21603i), ~(~u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f))), ~global0.a.a.x, abs(56629u)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.c.c - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global0.c.c.x)))));
    let var_1 = func_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(743f + var_0.x) - _wgslsmith_f_op_f32(global0.c.c.x + 1157f)), var_0.x)), global0.a.c.x, -912f, var_0.x));
    let var_2 = _wgslsmith_add_vec3_i32(-var_1.b.a & abs(global0.b.a), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1116f, 1000f, var_0.x, 505f)))).b.a);
    global0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.c.x, var_1.c.c.x, 362f, var_1.c.c.x) - vec4<f32>(-1510f, -393f, global0.a.c.x, 156f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-940f, -1329f, var_0.x, -378f) + vec4<f32>(var_0.x, 496f, -1211f, 1104f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(783f, var_0.x, -972f, var_1.a.c.x)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.c.c.x, var_0.x, -1367f, 1032f), vec4<f32>(-2166f, var_1.a.c.x, 1258f, global0.c.c.x)))))));
    var var_3 = select(~select(~(-2147483647i), -2147483647i, select(global3[_wgslsmith_index_u32(global0.c.d, 25u)], true, true)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b.a.x, var_1.a.b, global0.b.a.x) ^ u_input.b, _wgslsmith_sub_vec3_i32(u_input.b, var_1.b.a)), abs(vec3<i32>(var_2.x, global0.c.b, u_input.b.x) ^ var_2)), all(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.c.a.x, global0.c.a.x) & _wgslsmith_mult_u32(30683u, global0.a.e), 4u)])) << (u_input.c % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global0.a.a) & var_1.b.b, firstLeadingBit(global0.b.a.yx), vec3<f32>(var_0.x, global0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c.x) * global0.c.c.x))), vec4<i32>(-2147483647i, -var_1.d, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.c.x, -143f, 1769f, global0.a.c.x)))).c.b, firstTrailingBit(_wgslsmith_mod_i32(i32(-1i) * -20124i, ~(-6747i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -588f))));
}

