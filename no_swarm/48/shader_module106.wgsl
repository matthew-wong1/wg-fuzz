struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<vec3<f32>, 5>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: f32) -> vec4<f32> {
    var var_0 = arg_1.a;
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_1.a.d))), arg_1.a.d));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32) -> Struct_3 {
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    var var_0 = Struct_2(Struct_1(select(_wgslsmith_mod_vec4_u32(vec4<u32>(44090u, arg_2, arg_2, arg_1), vec4<u32>(4294967295u, 52958u, u_input.c.x, 1u)) >> (abs(vec4<u32>(u_input.a, 0u, arg_2, 50583u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(35662u, 51769u, 114379u, 4294967295u)), abs(vec4<u32>(17171u, 1u, 3833u, arg_2))), vec4<bool>(any(vec2<bool>(true, true)), false, all(vec4<bool>(false, false, false, false)), true)), u_input.c ^ (vec2<u32>(1u, arg_2) & _wgslsmith_div_vec2_u32(u_input.c, u_input.c)), _wgslsmith_mult_i32(countOneBits(min(46882i, u_input.b)), global0[_wgslsmith_index_u32(32114u, 32u)]), _wgslsmith_f_op_vec4_f32(func_3(~firstLeadingBit(vec3<u32>(arg_2, arg_1, 20297u)), Struct_2(Struct_1(vec4<u32>(arg_2, 1u, arg_1, 97845u), u_input.c, u_input.b, vec4<f32>(1170f, 844f, arg_0, -705f))), vec2<u32>(10829u, ~4294967295u), arg_0))));
    var var_1 = true;
    return Struct_3(firstTrailingBit(~(-(vec3<i32>(18761i, var_0.a.c, var_0.a.c) << (vec3<u32>(arg_1, 14859u, 61916u) % vec3<u32>(32u))))));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    var var_0 = arg_0;
    global1 = array<vec3<f32>, 5>();
    var var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(abs(reverseBits(max(vec4<u32>(arg_1, 1u, u_input.c.x, 1u), vec4<u32>(0u, 63488u, 4294967295u, 4294967295u)))), ~(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_1), vec2<u32>(arg_1, arg_1)) & reverseBits(u_input.c)), var_1.a.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(119f, 1036f, 803f, -1658f) + vec4<f32>(929f, -890f, -1111f, -358f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1218f, 1678f, 914f, -944f), vec4<f32>(204f, -360f, -1905f, 981f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(318f, 180f, 1341f, 927f))))));
    var var_3 = Struct_2(Struct_1(vec4<u32>(arg_1, ~var_2.a.b.x & (var_2.a.b.x | 4294967295u), ~56564u, arg_1), ~u_input.c, ~arg_0.a.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a.d + var_2.a.d)), _wgslsmith_f_op_vec4_f32(select(var_2.a.d, vec4<f32>(-1285f, 510f, 1279f, 608f), vec4<bool>(true, true, true, true)))))));
    return Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, 0u, 3701u), reverseBits(var_2.a.a)), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 0u)), 1u | ~var_3.a.b.x, 28431u >> (0u % 32u)), var_3.a.a.xx, var_2.a.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a.d) * vec4<f32>(-262f, var_2.a.d.x, var_2.a.d.x, -2417f)), var_3.a.d, vec4<bool>(true, true, true, 127f != var_2.a.d.x)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: f32, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(~firstLeadingBit(0u), ~abs(arg_0.x)), 81607u) >> ((arg_0.x >> (71371u % 32u)) % 32u);
    var var_1 = vec4<u32>(~1u, max(44470u, _wgslsmith_mod_u32(31837u, 1u)), _wgslsmith_add_u32(_wgslsmith_add_u32(~(~u_input.c.x), 4294967295u), (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_1, arg_1, 0u), arg_0) ^ (arg_0.x | 0u)) ^ (select(0u, u_input.c.x, true) ^ arg_0.x)), ~(~33476u));
    var var_2 = arg_2;
    var var_3 = func_4(func_2(_wgslsmith_f_op_f32(exp2(arg_2)), u_input.c.x, select(_wgslsmith_sub_u32(var_1.x ^ var_1.x, var_1.x), 15788u, !arg_3.x)), 16042u);
    let var_4 = Struct_1(_wgslsmith_div_vec4_u32(abs(arg_0), _wgslsmith_add_vec4_u32(~arg_0, vec4<u32>(var_3.a.b.x, var_1.x, 1u, 4294967295u) << (vec4<u32>(var_3.a.a.x, 70335u, arg_1, 41323u) % vec4<u32>(32u))) | var_3.a.a), var_1.yz, 0i, var_3.a.d);
    return Struct_3(~_wgslsmith_div_vec3_i32(vec3<i32>(abs(var_3.a.c), var_3.a.c, firstLeadingBit(-2147483647i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, 15828i, var_4.c), vec3<i32>(var_4.c, u_input.b, -6591i))));
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    var var_0 = vec2<u32>(38914u, 0u);
    global1 = array<vec3<f32>, 5>();
    return Struct_2(Struct_1(firstTrailingBit(vec4<u32>(0u, arg_0, ~43907u, ~46756u)), ~firstLeadingBit(vec2<u32>(16570u, var_0.x)), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(74831u, 32u)], -(~arg_2.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -984f, arg_1.x, 1549f) - vec4<f32>(arg_1.x, -169f, 263f, arg_1.x))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_4) -> Struct_2 {
    global0 = array<i32, 32>();
    var var_0 = Struct_2(Struct_1(vec4<u32>(func_5(~19355u, arg_1.c.a.d.wx, Struct_3(vec3<i32>(-2147483647i, 57531i, u_input.b)), func_1(arg_1.c.a.a, u_input.c.x, arg_1.c.a.d.x, arg_1.d.xyy)).a.b.x, arg_1.a.a.a.x, ~u_input.a, 1u), ~countOneBits(min(vec2<u32>(0u, u_input.a), u_input.c)), u_input.b, _wgslsmith_f_op_vec4_f32(-arg_1.a.a.d)));
    var_0 = arg_1.a;
    var var_1 = arg_1.a.a.d.x;
    var var_2 = true;
    return func_5(abs(max(~var_0.a.a.x, _wgslsmith_mult_u32(1u, 35255u))), func_5(u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xy)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d.x, -672f) - arg_0.zx) * arg_1.c.a.d.zx)), func_2(_wgslsmith_f_op_f32(-arg_1.c.a.d.x), abs(_wgslsmith_div_u32(var_0.a.a.x, u_input.c.x)), u_input.a), arg_1.e).a.d.xw, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1308f + -1503f), arg_0.x)) * _wgslsmith_f_op_f32(-var_0.a.d.x)), 0u, abs(min(arg_1.a.a.b.x, ~0u))), Struct_3(vec3<i32>(arg_1.c.a.c, _wgslsmith_div_i32(24028i, -2564i), ~(-2147483647i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-7931i, 0i, u_input.b), arg_1.e.a))));
}

fn func_7(arg_0: Struct_2, arg_1: f32, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = select(vec4<u32>(~(~(arg_0.a.b.x << (0u % 32u))), ~arg_0.a.b.x, reverseBits(1u), u_input.c.x), arg_0.a.a << ((abs(func_4(Struct_3(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], -1i, arg_0.a.c)), arg_0.a.b.x).a.a) >> (_wgslsmith_add_vec4_u32(arg_0.a.a, vec4<u32>(u_input.a, arg_0.a.b.x, 1u, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-arg_1) != _wgslsmith_div_f32(-285f, 753f), all(!vec4<bool>(arg_2.x, arg_2.x, true, true)) || !arg_2.x, any(vec4<bool>(true, 11972u <= arg_0.a.a.x, false, true))));
    let var_1 = func_2(-242f, ~42112u, ~_wgslsmith_mult_u32(var_0.x, 29881u));
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    let var_2 = vec2<u32>(~(~select(_wgslsmith_add_u32(arg_0.a.b.x, u_input.c.x), arg_0.a.b.x ^ 1u, arg_2.x)), select(func_4(func_1(arg_0.a.a, ~25914u, _wgslsmith_f_op_f32(max(arg_1, -1255f)), !arg_2), ~_wgslsmith_mod_u32(39228u, var_0.x)).a.b.x, 9733u, false));
    return Struct_4(arg_0, arg_0.a.a, func_5(1u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.a.d.yy * _wgslsmith_f_op_vec2_f32(-arg_0.a.d.zz)), vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.d.x - -902f), func_4(var_1, arg_0.a.b.x).a.d.x), arg_2.yz)), Struct_3(abs(-vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 32u)], -2147483647i))), Struct_3(abs(var_1.a))), select(vec4<bool>(1i >= func_4(var_1, 12027u).a.c, !(false & arg_2.x), all(arg_2.yz), !(false || arg_2.x)), vec4<bool>(any(select(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), arg_2.x)), all(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), arg_2.x)), (arg_2.x || arg_2.x) == !arg_2.x, arg_2.x), u_input.b >= -1i), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a, 32u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-13126i, -5313i, u_input.b), vec3<i32>(2147483647i, 1i, u_input.b))), ~(-11480i)) & firstLeadingBit(~(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]))));
    let var_1 = ~vec3<u32>(~(~57442u) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_dot_vec4_u32(vec4<u32>(39149u, u_input.a, _wgslsmith_clamp_u32(4294967295u, 109007u, 0u), u_input.c.x), ~vec4<u32>(u_input.c.x, u_input.c.x, 9702u, u_input.a)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c.x, 0u, 44123u), vec3<u32>(95499u, u_input.c.x, 0u), vec3<bool>(false, true, true)) | ~vec3<u32>(u_input.a, u_input.c.x, 63150u), countOneBits(firstLeadingBit(vec3<u32>(u_input.c.x, 1u, u_input.c.x)))));
    global1 = array<vec3<f32>, 5>();
    var_0 = vec2<i32>(select(u_input.b & var_0.x, _wgslsmith_div_i32(~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(39241u, var_1.x), 32u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 0u, var_1.x), vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u)), 32u)] >> (~4294967295u % 32u)), false && !any(vec4<bool>(false, true, true, true))), countOneBits(_wgslsmith_add_i32(_wgslsmith_mod_i32(1i, 1i), var_0.x) << (firstTrailingBit(var_1.x) % 32u)));
    let var_2 = func_7(func_6(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-260f, 672f, 1062f)), global1[_wgslsmith_index_u32(4294967295u, 5u)]))), Struct_4(func_5(var_1.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-376f, -1123f) - vec2<f32>(-130f, 138f)), Struct_3(vec3<i32>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], 0i)), func_1(vec4<u32>(0u, var_1.x, u_input.c.x, var_1.x), u_input.a, -889f, vec3<bool>(true, false, false))), abs(~vec4<u32>(var_1.x, var_1.x, u_input.c.x, u_input.a)), func_4(func_2(-1351f, var_1.x, 0u), var_1.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), Struct_3(~vec3<i32>(5016i, 31092i, 2147483647i)))), _wgslsmith_f_op_f32(step(func_4(func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.a, var_1.x), vec4<u32>(var_1.x, 71819u, 4294967295u, var_1.x)), var_1.x, -1331f, select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)), var_1.x).a.d.x, _wgslsmith_f_op_f32(select(1000f, 629f, true)))), vec3<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), true, false));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -437f))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(48901i, ~(-1i), func_7(var_2.c, var_2.a.a.d.x, vec3<bool>(false, var_2.d.x, false)).e.a.x), ~var_2.e.a), ~(~(~4294967295u)));
}

