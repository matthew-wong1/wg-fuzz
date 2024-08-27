struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec4<f32>(-175f, 738f, -567f, 639f)), Struct_2(vec4<f32>(-306f, -947f, -404f, 1308f)), Struct_2(vec4<f32>(-1550f, -421f, -156f, 2582f)), Struct_2(vec4<f32>(-962f, -385f, 550f, -1117f)), Struct_2(vec4<f32>(665f, -1247f, -184f, 1449f)), Struct_2(vec4<f32>(-192f, -1177f, 1531f, -989f)), Struct_2(vec4<f32>(-1447f, 117f, -2629f, 2131f)), Struct_2(vec4<f32>(1000f, 1808f, -582f, -1000f)), Struct_2(vec4<f32>(1313f, 1349f, 572f, 153f)), Struct_2(vec4<f32>(878f, -1000f, -1090f, -114f)), Struct_2(vec4<f32>(-598f, -223f, 1258f, -794f)));

var<private> global2: array<f32, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, -769f, arg_0.b, -1116f), vec4<f32>(212f, -267f, -477f, global2[_wgslsmith_index_u32(59795u, 1u)]))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], -929f, 498f) * vec4<f32>(-1829f, 3866f, -178f, 473f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(555f, arg_0.a.x, 778f, arg_0.a.x))))))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.x)), var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))))), -188f, select(arg_0.c, arg_0.c, arg_0.c), _wgslsmith_mod_i32(arg_0.d, firstTrailingBit(max(~(-6090i), arg_1))), any(vec3<bool>(arg_0.c.x, any(select(vec4<bool>(true, true, arg_0.c.x, false), vec4<bool>(arg_0.e, arg_0.e, true, arg_0.e), vec4<bool>(arg_0.e, false, arg_0.c.x, true))), (arg_0.c.x == arg_0.c.x) == arg_0.e)));
    var var_2 = arg_0;
    var var_3 = any(vec2<bool>(true, var_1.e));
    let var_4 = arg_0;
    return arg_0.e;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.b.yxy, countOneBits(~(~vec3<u32>(u_input.b.x, 9674u, u_input.b.x)))), vec3<u32>(12424u, 17083u, ~u_input.b.x));
    var_0 = u_input.b.x;
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 11u)];
    var var_2 = 1u;
    let var_3 = Struct_2(var_1.a);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, -383f, var_3.a.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.a.x, global2[_wgslsmith_index_u32(16060u, 1u)], global2[_wgslsmith_index_u32(u_input.b.x, 1u)]))), func_3(Struct_1(var_1.a.zzx, var_3.a.x, vec2<bool>(false, false), arg_0.x, false), u_input.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(u_input.b.yyw, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), firstLeadingBit(4294967295u), all(vec3<bool>(true, false, false))), 1u)])) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(var_1.a.x))), _wgslsmith_f_op_f32(trunc(1042f))))), vec2<bool>(any(vec2<bool>(true, true)), true), _wgslsmith_mult_i32(arg_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(16377i, 0i, u_input.a, arg_0.x), arg_0), arg_0)) >> (u_input.b.x % 32u), (false | select(all(vec4<bool>(false, false, false, true)), any(vec4<bool>(false, false, true, false)), true)) & false);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = min(vec3<i32>(-(~countOneBits(arg_0.d)), u_input.a, _wgslsmith_mod_i32(firstLeadingBit(-4489i), ~_wgslsmith_mult_i32(1i, arg_0.d))), vec3<i32>(1i, abs(abs(arg_0.d ^ u_input.a)), arg_0.d));
    var var_1 = 744f;
    global2 = array<f32, 1>();
    global1 = array<Struct_2, 11>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -527f, global2[_wgslsmith_index_u32(4294967295u, 1u)], -1004f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 1000f, 217f, global2[_wgslsmith_index_u32(0u, 1u)]) - vec4<f32>(1000f, -383f, 628f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1320f, arg_0.a.x, arg_0.b, global2[_wgslsmith_index_u32(u_input.b.x, 1u)]))))));
    return global1[_wgslsmith_index_u32(~1u, 11u)];
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = !(true | all(vec4<bool>(true, u_input.b.x < u_input.b.x, true, true)));
    global1 = array<Struct_2, 11>();
    global2 = array<f32, 1>();
    let var_1 = u_input.a;
    let var_2 = func_4(func_2(_wgslsmith_mod_vec4_i32(~vec4<i32>(-43643i, -1i, var_1, 2147483647i), _wgslsmith_add_vec4_i32(-vec4<i32>(arg_0, 0i, -77552i, u_input.a), -vec4<i32>(104082i, 15474i, 1i, -1i)))));
    return global1[_wgslsmith_index_u32(u_input.b.x, 11u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    var var_0 = select(abs(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-1i, -2147483647i), ~vec2<i32>(-4177i, u_input.a), vec2<i32>(u_input.a, u_input.a))) | vec2<i32>(-u_input.a, reverseBits(arg_3.d) << (u_input.b.x % 32u)), vec2<i32>(16873i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-5i, u_input.a), vec2<i32>(2147483647i, -1i), vec2<i32>(-16894i, u_input.a)), firstTrailingBit(vec2<i32>(arg_3.d, u_input.a))), -vec2<i32>(6847i, -2147483647i))), all(arg_3.c));
    let var_1 = u_input.b.xx;
    let var_2 = func_2(abs(~(-vec4<i32>(arg_3.d, u_input.a, 1i, -2147483647i)) << (vec4<u32>(~var_1.x, 61273u & u_input.b.x, u_input.b.x, 23162u) % vec4<u32>(32u))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)));
    var_0 = _wgslsmith_sub_vec2_i32(max(reverseBits(~vec2<i32>(34731i, 2147483647i)), ~abs(vec2<i32>(-1i, u_input.a))), -((vec2<i32>(arg_3.d, var_0.x) << (u_input.b.yz % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(var_1, ~var_1) % vec2<u32>(32u))));
    return Struct_2(vec4<f32>(548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(719f - _wgslsmith_f_op_f32(-565f - arg_1.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-702f * arg_3.b))))), 598f));
}

fn func_6(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = func_2(max(vec4<i32>(arg_0, ~(-14544i), _wgslsmith_div_i32(arg_0 << (28909u % 32u), firstLeadingBit(u_input.a)), select(arg_0, -23868i, 18204i <= u_input.a)), max(_wgslsmith_mod_vec4_i32(vec4<i32>(-31145i, -42818i, -2147483647i, -63430i), countOneBits(vec4<i32>(-1i, -1i, 6046i, 21419i))), vec4<i32>(_wgslsmith_mod_i32(arg_0, arg_0), ~u_input.a, u_input.a << (1u % 32u), ~(-38518i)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_5(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 37606u, u_input.b.x), _wgslsmith_mod_vec4_u32(u_input.b | vec4<u32>(u_input.b.x, 53485u, u_input.b.x, u_input.b.x), u_input.b >> (vec4<u32>(0u, 4465u, 0u, 4294967295u) % vec4<u32>(32u)))), 11u)], Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(201f, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], global2[_wgslsmith_index_u32(5474u, 1u)], global2[_wgslsmith_index_u32(u_input.b.x, 1u)]))) - _wgslsmith_f_op_vec4_f32(-arg_2.a))), any(vec3<bool>(var_0.e, all(vec3<bool>(false, var_0.c.x, arg_3)), arg_3)), Struct_1(func_1(-2147483647i).a.yxy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) - -1000f), vec2<bool>(true, true), 1i, any(select(vec3<bool>(false, var_0.e, true), vec3<bool>(false, var_0.e, arg_3), vec3<bool>(false, false, true))))).a.wz * vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -417f));
    var var_2 = ~firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_0, u_input.a)), u_input.a, _wgslsmith_div_i32(34971i, arg_0), u_input.a | 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_0, 12937i, 2147483647i), select(vec4<i32>(var_0.d, -2147483647i, var_0.d, 2147483647i), vec4<i32>(1i, 39799i, arg_0, var_0.d), var_0.e), ~vec4<i32>(-41802i, -47128i, 29085i, u_input.a))));
    let var_3 = arg_1.zx;
    global2 = array<f32, 1>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.b, -378f) - var_0.a), _wgslsmith_div_vec3_f32(vec3<f32>(-1077f, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 293f), arg_1), vec3<bool>(true, var_0.c.x, false)))))), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(13274u, 1u)])), var_0.c, _wgslsmith_dot_vec4_i32(max(countOneBits(vec4<i32>(1i, var_2.x, -23125i, 1i)), vec4<i32>(var_2.x, var_0.d, arg_0, 0i)) & vec4<i32>(1i, -u_input.a, _wgslsmith_div_i32(var_0.d, 12014i), i32(-1i) * -2147483647i), -_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, -1i, 56116i, u_input.a), firstLeadingBit(vec4<i32>(0i, 41698i, var_2.x, var_0.d)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(-29162i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(u_input.b.x, 1u)], -2059f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(319f, 595f, global2[_wgslsmith_index_u32(u_input.b.x, 1u)])) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 990f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 1f, -995f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(604f, 418f, 682f)) * vec3<f32>(1000f, -531f, global2[_wgslsmith_index_u32(4294967295u, 1u)])))), func_5(func_1(abs(-u_input.a)), global1[_wgslsmith_index_u32(6791u, 11u)], all(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), false), false)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], -1949f, global2[_wgslsmith_index_u32(1u, 1u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(430f)))), vec2<bool>(true, true), _wgslsmith_add_i32(select(u_input.a, -24584i, false), -20119i), true)), all(!vec2<bool>(any(vec3<bool>(false, true, true)), u_input.b.x <= 57178u)));
    global1 = array<Struct_2, 11>();
    var var_1 = select(vec2<i32>(firstLeadingBit(20506i), max(func_2(vec4<i32>(u_input.a, var_0.d, u_input.a, var_0.d)).d, func_6(-2147483647i, var_0.a, Struct_2(vec4<f32>(1031f, 1000f, 342f, var_0.b)), var_0.e).d) ^ u_input.a), -select(select(abs(vec2<i32>(1i, 27238i)), vec2<i32>(2931i, var_0.d), var_0.e), _wgslsmith_add_vec2_i32(vec2<i32>(-7888i, -41668i), vec2<i32>(var_0.d, u_input.a)) << ((u_input.b.zw >> (u_input.b.xy % vec2<u32>(32u))) % vec2<u32>(32u)), true), var_0.e || (u_input.b.x != countOneBits(1u)));
    let var_2 = _wgslsmith_add_i32(-_wgslsmith_sub_i32(-26771i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, -1i, 9748i), vec3<i32>(var_1.x, u_input.a, -13152i) | vec3<i32>(-1i, u_input.a, var_0.d))), var_0.d);
    var var_3 = 4294967295u;
    var_1 = vec2<i32>(-11964i, 11985i);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~0u), var_0.d, firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-26750i, 2147483647i), min(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(var_0.d, var_0.d)), -vec2<i32>(2147483647i, -2147483647i)))), ~u_input.b.xzy, vec4<i32>(firstLeadingBit(var_2), _wgslsmith_mod_i32(abs(29547i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i) << (u_input.b.xw % vec2<u32>(32u)), vec2<i32>(17063i, var_2))), func_2(select(vec4<i32>(var_1.x, 74067i, var_2, u_input.a), vec4<i32>(-2147483647i, var_0.d, -27016i, -1i), select(vec4<bool>(var_0.e, true, false, var_0.e), vec4<bool>(false, true, true, var_0.c.x), false))).d, -1i >> (~(~u_input.b.x) % 32u)));
}

