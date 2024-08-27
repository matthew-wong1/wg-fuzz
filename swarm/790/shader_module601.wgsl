struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<vec2<f32>, 1>;

var<private> global2: vec2<u32>;

var<private> global3: array<i32, 4>;

var<private> global4: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(4294967295u, 5821u, 9072u), vec3<u32>(23182u, 1u, 1u), vec3<u32>(10639u, 15231u, 15596u), vec3<u32>(4294967295u, 18443u, 32509u), vec3<u32>(44723u, 4294967295u, 0u), vec3<u32>(44202u, 20434u, 4294967295u), vec3<u32>(1u, 20847u, 11212u), vec3<u32>(40691u, 42216u, 1u), vec3<u32>(44767u, 74626u, 1u), vec3<u32>(0u, 1u, 41072u), vec3<u32>(4294967295u, 23251u, 0u), vec3<u32>(0u, 0u, 27731u), vec3<u32>(56009u, 98560u, 1u), vec3<u32>(1u, 18637u, 1u), vec3<u32>(14498u, 5408u, 1u), vec3<u32>(9014u, 30050u, 14875u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(196f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-631f + -880f), 1377f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2107f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(109f * 120f), _wgslsmith_f_op_f32(abs(1549f)))), _wgslsmith_f_op_f32(max(229f, _wgslsmith_f_op_f32(f32(-1f) * -1530f))))));
    global2 = vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_div_u32(global2.x, arg_0), arg_0), abs(u_input.b));
    var var_1 = vec3<bool>(!any(arg_1.wx), true, all(!arg_1));
    let var_2 = Struct_1(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1251f + 385f) * -261f), arg_1.x, 798f, _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0, ~abs(global2.x)), global2.x));
    var_1 = select(select(arg_1.yzw, vec3<bool>(!var_1.x, var_2.c, var_1.x), any(!vec3<bool>(false, var_1.x, var_1.x))), select(select(!vec3<bool>(arg_1.x, true, var_1.x), !(!arg_1.wyx), vec3<bool>(false, any(arg_1), arg_1.x)), arg_1.yxz, true && (any(arg_1.wz) == false)), any(vec4<bool>(any(vec3<bool>(var_1.x, var_2.c, var_1.x)), false, any(arg_1.yyx), true)));
    return _wgslsmith_dot_vec2_u32(min(~(~vec2<u32>(arg_0, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.e, global2.x), countOneBits(vec2<u32>(global2.x, arg_0)))) & vec2<u32>(firstLeadingBit(u_input.b), 0u), firstLeadingBit(reverseBits(~vec2<u32>(u_input.b, global2.x))) & vec2<u32>(global2.x, _wgslsmith_mult_u32(u_input.b, arg_0 >> (0u % 32u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: u32, arg_3: vec3<u32>) -> bool {
    var var_0 = Struct_5(vec3<i32>(-1i) * -vec3<i32>(select(2147483647i, -44849i, false), arg_0.x, _wgslsmith_dot_vec3_i32(arg_0.yzx, vec3<i32>(arg_0.x, -19755i, -1i))), Struct_4(true, global0[_wgslsmith_index_u32(~arg_2, 25u)], countOneBits((arg_0.ywy ^ vec3<i32>(u_input.a, 0i, 2147483647i)) ^ (arg_0.zzy & vec3<i32>(u_input.c, -7011i, 2147483647i))), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), Struct_2(arg_0.wy, global0[_wgslsmith_index_u32(~u_input.b << (1u % 32u), 25u)])), Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(arg_3.x, 4u)], -1i), 2147483647i), u_input.d), global0[_wgslsmith_index_u32(~(~firstLeadingBit(38878u)), 25u)]), Struct_4(any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1263f), _wgslsmith_f_op_f32(278f + _wgslsmith_f_op_f32(max(-1216f, -1692f))), !any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(294f)), -1537f)), arg_2), ~min(vec3<i32>(u_input.a, arg_1, global3[_wgslsmith_index_u32(u_input.b, 4u)]), arg_0.yzz) >> (firstTrailingBit(vec3<u32>(4294967295u, global2.x, u_input.b)) % vec3<u32>(32u)), vec2<bool>(true, true), Struct_2(countOneBits(vec2<i32>(-1i, u_input.d.x) | arg_0.zz), Struct_1(268f, 1f, true, _wgslsmith_f_op_f32(f32(-1f) * -943f), 1u))));
    var var_1 = select(max(~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.d.b.e, arg_2, 1u, 0u), vec4<u32>(var_0.c.b.e, global2.x, u_input.b, 2848u)), ~vec4<u32>(var_0.d.b.e, var_0.d.e.b.e, u_input.b, 1u)), select(~min(vec4<u32>(var_0.d.b.e, 66929u, arg_2, 57580u), vec4<u32>(global2.x, arg_3.x, u_input.b, 35289u)), ~vec4<u32>(u_input.b, arg_2, arg_2, var_0.b.e.b.e), false)), _wgslsmith_mult_vec4_u32(~select(vec4<u32>(1u, 124821u, arg_3.x, 14569u), vec4<u32>(var_0.c.b.e, 0u, var_0.c.b.e, 6378u), any(vec4<bool>(false, false, true, var_0.d.e.b.c))), vec4<u32>(~(~29921u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.b.e, arg_3.x, 1u, arg_3.x), vec4<u32>(u_input.b, 17024u, 0u, var_0.d.b.e)), reverseBits(func_3(global2.x, vec4<bool>(var_0.c.b.c, var_0.c.b.c, false, false))), var_0.b.e.b.e >> (1u % 32u))), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, var_0.b.e.b.c, var_0.b.d.x, var_0.b.b.c), vec4<bool>(var_0.d.d.x, var_0.c.b.c, var_0.b.d.x, var_0.b.a)), !vec4<bool>(var_0.d.b.c, true, var_0.c.b.c, var_0.c.b.c), !(!vec4<bool>(var_0.d.d.x, var_0.c.b.c, var_0.c.b.c, true))), select(select(vec4<bool>(false, false, false, var_0.d.e.b.c), vec4<bool>(true, var_0.c.b.c, true, var_0.c.b.c), true), vec4<bool>(u_input.b >= 35635u, !var_0.b.b.c, true, true), !(!vec4<bool>(var_0.b.e.b.c, true, var_0.c.b.c, true))), select(select(!vec4<bool>(var_0.b.e.b.c, true, false, true), select(vec4<bool>(var_0.b.b.c, false, false, false), vec4<bool>(var_0.c.b.c, false, var_0.c.b.c, true), vec4<bool>(var_0.d.e.b.c, var_0.b.d.x, var_0.c.b.c, false)), !var_0.c.b.c), !vec4<bool>(var_0.c.b.c, false, false, false), vec4<bool>(true, true, true, true))));
    global3 = array<i32, 4>();
    var var_2 = _wgslsmith_f_op_vec2_f32(round(global1[_wgslsmith_index_u32(~4294967295u, 1u)]));
    let var_3 = Struct_3(125f, !select(!select(vec3<bool>(false, true, var_0.b.a), vec3<bool>(var_0.b.b.c, true, var_0.b.d.x), vec3<bool>(false, false, var_0.b.e.b.c)), select(vec3<bool>(var_0.d.b.c, false, true), !vec3<bool>(true, true, var_0.d.e.b.c), true), select(vec3<bool>(var_0.d.e.b.c, var_0.b.e.b.c, true), vec3<bool>(true, true, true), select(vec3<bool>(true, var_0.d.a, false), vec3<bool>(false, false, false), vec3<bool>(false, var_0.d.a, var_0.d.e.b.c)))), u_input.a);
    return any(!var_3.b);
}

fn func_2(arg_0: f32, arg_1: bool) -> f32 {
    global1 = array<vec2<f32>, 1>();
    global3 = array<i32, 4>();
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(112f, _wgslsmith_f_op_f32(-arg_0)), global1[_wgslsmith_index_u32(40868u, 1u)]);
    let var_1 = Struct_4(func_4(~_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(13679i, u_input.c, 28971i, -1i)), max(vec4<i32>(29128i, u_input.c, 34689i, -35348i), vec4<i32>(-15087i, u_input.d.x, 15784i, -1i))), -2147483647i, 0u, ~vec3<u32>(_wgslsmith_div_u32(0u, global2.x), 1u, func_3(27897u, vec4<bool>(arg_1, arg_1, false, true)))), Struct_1(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))), 612f, false, -455f, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~global2.x, _wgslsmith_div_u32(u_input.b, u_input.b)), firstTrailingBit(countOneBits(global4[_wgslsmith_index_u32(1u, 16u)])))), vec3<i32>(889i, global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(1u, 4u)]), !select(!(!vec2<bool>(arg_1, arg_1)), vec2<bool>(true, true), any(vec4<bool>(arg_1, arg_1, arg_1, arg_1))), Struct_2(~(~u_input.d), global0[_wgslsmith_index_u32(u_input.b, 25u)]));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - 2142f);
    return var_1.b.d;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_3 {
    global3 = array<i32, 4>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1287f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-131f, 762f)))), all(vec2<bool>(false, true)))), arg_0, 1439f, global2.x);
    var var_1 = 51207u;
    var var_2 = vec2<bool>(!all(!vec2<bool>(arg_0, false)), arg_0);
    let var_3 = u_input.d;
    return Struct_3(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_0.d) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(119f * -775f))))), select(!vec3<bool>(!var_0.c, func_4(vec4<i32>(-1i, var_3.x, u_input.d.x, 57568i), u_input.a, arg_1.x, global4[_wgslsmith_index_u32(arg_1.x, 16u)]), var_2.x), !vec3<bool>(19257i >= global3[_wgslsmith_index_u32(1u, 4u)], false, true), true), min(~(~37672i << (firstTrailingBit(1u) % 32u)), ~(~10669i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!any(vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, global2.x), ~((vec2<u32>(u_input.b, global2.x) >> (vec2<u32>(global2.x, 82035u) % vec2<u32>(32u))) << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))), vec2<u32>(u_input.b, global2.x)));
    let var_1 = -7481i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(195f, var_0.a) * _wgslsmith_f_op_f32(ceil(var_0.a))), _wgslsmith_f_op_f32(select(-498f, var_0.a, all(vec4<bool>(true, false, false, false)))))), var_0.a)));
    var var_3 = Struct_5(_wgslsmith_clamp_vec3_i32((countOneBits(vec3<i32>(u_input.d.x, 1i, global3[_wgslsmith_index_u32(global2.x, 4u)])) >> (global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global2.x), 16u)] % vec3<u32>(32u))) ^ firstLeadingBit(~vec3<i32>(global3[_wgslsmith_index_u32(global2.x, 4u)], -19958i, u_input.a)), vec3<i32>(2147483647i, i32(-1i) * -23680i, var_1), vec3<i32>(-9246i, 1i, func_1(true, vec2<u32>(u_input.b, u_input.b) | vec2<u32>(global2.x, 24613u)).c)), Struct_4(true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(13699u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.x), vec2<u32>(u_input.b, 22971u))), u_input.b >> (_wgslsmith_mult_u32(34172u, global2.x) % 32u)), 25u)], abs(vec3<i32>(75364i, -var_1, _wgslsmith_add_i32(-1i, global3[_wgslsmith_index_u32(21887u, 4u)]))), func_1(var_0.b.x, ~vec2<u32>(global2.x, 92691u) & reverseBits(vec2<u32>(global2.x, 4294967295u))).b.xz, Struct_2(~u_input.d, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -678f), 1277f, false, _wgslsmith_f_op_f32(max(1673f, var_2)), _wgslsmith_add_u32(45877u, global2.x)))), Struct_2(max(vec2<i32>(u_input.d.x, firstTrailingBit(-2147483647i)), -u_input.d), global0[_wgslsmith_index_u32(u_input.b, 25u)]), Struct_4(all(var_0.b), global0[_wgslsmith_index_u32(global2.x, 25u)], reverseBits(reverseBits(vec3<i32>(1i, u_input.a, 6066i))) | ((vec3<i32>(61230i, global3[_wgslsmith_index_u32(10430u, 4u)], 1i) & vec3<i32>(-48188i, 33897i, 1i)) | _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, -2147483647i), vec3<i32>(-1i, -1i, 13680i))), vec2<bool>(false, select(var_0.b.x, all(var_0.b), any(vec3<bool>(false, true, false)))), Struct_2(u_input.d, Struct_1(-2279f, _wgslsmith_div_f32(657f, var_0.a), !var_0.b.x, _wgslsmith_f_op_f32(-var_2), 4294967295u))));
    global1 = array<vec2<f32>, 1>();
    let var_4 = Struct_5(var_3.b.c, Struct_4(var_3.b.a, var_3.d.b, countOneBits(vec3<i32>(1i, ~var_1, func_1(false, vec2<u32>(0u, 0u)).c)), !var_0.b.yz, Struct_2(u_input.d, Struct_1(313f, -572f, true, _wgslsmith_f_op_f32(floor(-1420f)), 57675u & var_3.b.e.b.e))), Struct_2(vec2<i32>(-31543i, global3[_wgslsmith_index_u32(abs(global2.x), 4u)]), Struct_1(var_2, _wgslsmith_f_op_f32(-var_3.d.b.d), false, var_3.d.e.b.b, ~(~1u))), var_3.d);
    var var_5 = vec2<f32>(125f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, var_2)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a)))) - 1763f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstLeadingBit(reverseBits(-global3[_wgslsmith_index_u32(24071u, 4u)])), -41133i, -15508i), -33022i ^ (i32(-1i) * -firstLeadingBit(var_4.a.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2663f, 1723f)) + _wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(1125f * -369f)))), var_5.x, _wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-682f * 1000f))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, global2.x, var_3.b.b.e) ^ ~vec4<u32>(0u, var_4.d.b.e, 36231u, 0u), ~select(vec4<u32>(var_3.c.b.e, var_3.c.b.e, 17324u, 4294967295u), vec4<u32>(35776u, global2.x, var_3.c.b.e, var_4.d.e.b.e), var_0.b.x), ~vec4<u32>(var_3.b.b.e, u_input.b, u_input.b, 31627u)));
}

