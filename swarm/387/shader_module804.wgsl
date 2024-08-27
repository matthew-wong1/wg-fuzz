struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(14896u, 4294967295u, 4294967295u, 1u), vec4<u32>(92548u, 42714u, 4294967295u, 41231u), vec4<u32>(3620u, 0u, 47866u, 1u), vec4<u32>(1u, 4294967295u, 1u, 3271u), vec4<u32>(1u, 4294967295u, 78672u, 0u), vec4<u32>(9636u, 0u, 4294967295u, 35637u), vec4<u32>(53683u, 0u, 0u, 43295u), vec4<u32>(4294967295u, 29564u, 47989u, 69312u), vec4<u32>(27210u, 5339u, 1u, 1u), vec4<u32>(16004u, 71283u, 31247u, 4294967295u), vec4<u32>(56433u, 0u, 0u, 4294967295u), vec4<u32>(39999u, 4294967295u, 65266u, 12158u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 47516u, 4294967295u, 1u), vec4<u32>(4294967295u, 24555u, 39615u, 25282u), vec4<u32>(8302u, 4294967295u, 4294967295u, 20035u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_4) -> u32 {
    let var_0 = 0u;
    let var_1 = vec4<i32>(arg_3.c, -45828i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_2.a, 1623i, arg_3.a), max(vec3<i32>(28563i, arg_3.a, -12892i), vec3<i32>(2147483647i, arg_2.a, arg_3.c)) | (vec3<i32>(arg_2.c, arg_3.a, 16699i) ^ vec3<i32>(1i, -28317i, 40983i))), ~(~vec3<i32>(-2147483647i, 0i, arg_2.a)) ^ ((vec3<i32>(-1i, arg_2.a, 2147483647i) ^ vec3<i32>(arg_3.a, 1i, arg_2.a)) << (abs(u_input.a.ywy) % vec3<u32>(32u)))), countOneBits(-32954i | (_wgslsmith_dot_vec3_i32(vec3<i32>(-7862i, 0i, -65344i), vec3<i32>(2147483647i, -19390i, -162i)) | 1i)));
    global0 = array<vec4<u32>, 17>();
    let var_2 = !(!(select(true, true, true) & all(vec3<bool>(true, false, false)))) || true;
    var var_3 = Struct_2(select(vec3<bool>(all(!vec2<bool>(var_2, var_2)), all(select(vec2<bool>(true, var_2), vec2<bool>(true, var_2), vec2<bool>(false, true))), true), select(!(!vec3<bool>(var_2, var_2, var_2)), select(select(vec3<bool>(false, var_2, var_2), vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, var_2, var_2)), select(vec3<bool>(false, false, var_2), vec3<bool>(true, var_2, var_2), false), all(vec3<bool>(false, true, true))), -421f < _wgslsmith_f_op_f32(-arg_3.b)), select(select(vec3<bool>(var_2, true, var_2), select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, true, var_2), vec3<bool>(false, var_2, var_2)), !vec3<bool>(false, var_2, var_2)), !select(vec3<bool>(true, false, var_2), vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, true, var_2)), !vec3<bool>(var_2, false, true))), arg_1, ~_wgslsmith_div_u32((arg_1.a.x | var_0) | var_0, _wgslsmith_mod_u32(111582u, u_input.b.x >> (25717u % 32u))));
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: u32, arg_3: vec3<bool>) -> f32 {
    var var_0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~16432u >> (u_input.a.x % 32u), ~arg_0.c | arg_2), ~vec3<u32>(select(arg_2, 14510u, arg_0.a.x), arg_0.b.a.x, 4294967295u));
    var var_1 = Struct_5(abs(firstLeadingBit(func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(u_input.a.x, var_0.x)), arg_0.b, Struct_4(-2147483647i, arg_0.b.b, 0i), Struct_4(-27370i, -1531f, 1i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(497f, -1976f)), _wgslsmith_div_f32(arg_0.b.b, -412f), 1000f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.b, -799f, arg_0.b.b), vec3<f32>(arg_0.b.b, arg_0.b.b, -1781f)))), arg_3)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.b.b)), _wgslsmith_f_op_f32(round(822f)), -222f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b.b, arg_0.b.b, arg_0.b.b), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b.b, 742f, arg_0.b.b), vec3<f32>(arg_0.b.b, 1116f, arg_0.b.b))))))), _wgslsmith_mod_vec2_i32(-min(vec2<i32>(1i, 1i), firstTrailingBit(vec2<i32>(-1i, -52213i))), vec2<i32>(min(11164i, 37710i) | _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 39765i, 16402i), vec4<i32>(0i, -1i, -26330i, -36511i)), 6317i)), !select(vec2<bool>(true, true), select(!vec2<bool>(arg_3.x, arg_3.x), select(arg_3.zx, arg_0.a.zz, arg_0.a.x), !vec2<bool>(arg_0.a.x, arg_0.a.x)), any(vec4<bool>(false, arg_0.a.x, false, arg_0.a.x))), arg_3.yy);
    var_1 = Struct_5(countOneBits(~1u), vec3<f32>(_wgslsmith_f_op_f32(min(var_1.b.x, 1035f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.b), var_1.b.x)), abs(var_1.c), !(!(!arg_3.yz)), select(var_1.d, var_1.e, arg_0.a.xz));
    var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~4294967295u, 54257u, arg_1.x), vec3<u32>(var_0.x, abs(_wgslsmith_sub_u32(9675u, arg_2)) & (arg_2 >> (1u % 32u)), var_1.a));
    var var_2 = -firstTrailingBit(-firstLeadingBit(_wgslsmith_div_i32(var_1.c.x, 1i)));
    return -816f;
}

fn func_1(arg_0: Struct_4) -> vec2<f32> {
    var var_0 = true;
    var var_1 = Struct_1(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, ~91840u, 1u >> (u_input.b.x % 32u)), ~(~u_input.a)), -1331f);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(vec3<bool>(true, false, true), Struct_1(vec4<u32>(23145u, u_input.c.x, u_input.a.x, 61216u), 1356f), u_input.d.x), countOneBits(global0[_wgslsmith_index_u32(var_1.a.x, 17u)]), reverseBits(u_input.b.x), vec3<bool>(true, false, true))))), _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(ceil(var_1.b))))), var_1.b);
    var var_3 = ~var_1.a.x;
    var_1 = Struct_1(vec4<u32>(~28247u, ~_wgslsmith_add_u32(u_input.d.x << (33395u % 32u), 1u), var_1.a.x, 2710u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(487f + var_1.b))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(514f, 430f))), _wgslsmith_div_vec2_f32(var_2.wz, var_2.zy)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, var_2.x)) * var_2.zz)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_4(1i, 458f, 6000i))))))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))));
    var var_1 = -2147483647i ^ ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -45603i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-4572i, 2497i), vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(4542i, 21218i))), firstTrailingBit(i32(-1i) * -1i));
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(max(1i, -2147483647i), firstLeadingBit(0i)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, -30801i, 2147483647i), -2147483647i)), _wgslsmith_mult_vec2_i32(~vec2<i32>(-18524i, 11214i) | firstTrailingBit(vec2<i32>(20587i, 13510i)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)))) | vec2<i32>(-reverseBits(i32(-1i) * -25944i), select(~1i, reverseBits(abs(2147483647i)), select(true, any(vec4<bool>(false, true, false, false)), var_0.x != 2082f)));
    let var_3 = var_2.x;
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<bool>(true, true, false), Struct_1(u_input.c, -1631f), u_input.a.x), global0[_wgslsmith_index_u32(u_input.d.x, 17u)], 4294967295u, vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(trunc(416f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-448f)) + 491f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) * _wgslsmith_f_op_f32(var_0.x - -425f)))));
    let var_4 = Struct_5(~select(u_input.a.x, ~u_input.a.x, 539f >= var_0.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1267f - 1027f) * _wgslsmith_f_op_f32(f32(-1f) * -2519f)), _wgslsmith_f_op_vec2_f32(func_1(Struct_4(7985i >> (u_input.d.x % 32u), _wgslsmith_f_op_f32(-852f * -1328f), i32(-1i) * -39256i))).x, 1683f), min(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(var_2.x, var_2.x), vec2<i32>(var_2.x, var_2.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, var_2.x), vec2<i32>(-54816i, var_2.x) << (vec2<u32>(u_input.b.x, u_input.c.x) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.x, -25302i) << (abs(vec2<u32>(1u, 129917u)) % vec2<u32>(32u)), ~vec2<i32>(var_2.x, var_2.x) & -vec2<i32>(var_2.x, var_2.x))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec3<bool>(true, true, true)))), vec2<bool>(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true)), any(vec4<bool>(true, select(false, true, false), true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), -1109f, 456f), abs(u_input.c), vec3<u32>(u_input.b.x, var_4.a, u_input.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1309f, -729f, 740f, var_4.b.x), vec4<f32>(-236f, -979f, -946f, 1228f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-996f, -163f, -625f, -780f) * vec4<f32>(var_0.x, var_4.b.x, var_4.b.x, var_4.b.x)))), var_4.c.x);
}

