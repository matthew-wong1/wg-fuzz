struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -39047i;

var<private> global1: array<Struct_1, 11>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global0 = -2147483647i;
    global1 = array<Struct_1, 11>();
    var var_0 = !(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), false), vec3<bool>(false, false, all(vec3<bool>(true, false, false))), vec3<bool>(false, any(vec2<bool>(false, true)), false)));
    global2 = global1[_wgslsmith_index_u32(~u_input.a.x, 11u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d.x, -565f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1836f)) - _wgslsmith_f_op_f32(floor(1049f))), 1f, var_0.x)), arg_0.e)));
    return vec3<f32>(-1409f, _wgslsmith_f_op_f32(f32(-1f) * -1349f), _wgslsmith_f_op_f32(min(arg_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-721f, arg_0.e, var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.e), var_1.x, any(vec4<bool>(true, true, false, true))))))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = global2.b.yyz;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(-249f)), _wgslsmith_f_op_f32(-1000f + global2.d.x), global2.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-964f, arg_0.d.x, arg_0.d.x)))) + _wgslsmith_f_op_vec3_f32(func_3(Struct_1(-26923i, vec4<i32>(28841i, 1i, 2942i, u_input.b.x), -2147483647i, global2.d, -1008f)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(arg_0)).x, global2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.d.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.x, 1000f, -1775f) - vec3<f32>(-1571f, global2.e, -656f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1628f, arg_0.e, -1228f) + vec3<f32>(global2.e, global2.e, -497f))))));
    global0 = -arg_0.c;
    global0 = countOneBits(reverseBits(select(var_0.x, min(~global2.b.x, 1i), true)));
    var var_2 = arg_0;
    return -303f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec2<u32> {
    global0 = _wgslsmith_dot_vec2_i32(-global2.b.yy, u_input.b);
    var var_0 = _wgslsmith_f_op_f32(trunc(-150f));
    let var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.e * arg_3.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.e), _wgslsmith_f_op_f32(round(1201f)))) * arg_1.d.x)));
    var var_3 = ~(~reverseBits(vec4<u32>(22727u, 76994u, u_input.a.x, 89080u))) ^ ~vec4<u32>(countOneBits(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), 1u, ~95059u | u_input.a.x, ~(~4294967295u));
    return vec2<u32>(1u, 4294967295u);
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: u32, arg_3: i32) -> u32 {
    var var_0 = vec3<u32>(arg_1.x, abs(firstTrailingBit((u_input.a.x << (u_input.a.x % 32u)) >> (~29303u % 32u))), arg_1.x);
    let var_1 = vec2<bool>(select(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)), !(max(4386i, u_input.b.x) >= 0i), false), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(-46965i, abs(vec4<i32>(31550i, -1i, -34071i, -16492i)), i32(-1i) * -39841i, _wgslsmith_f_op_vec2_f32(-global2.d), -1000f))).x >= global2.d.x);
    let var_2 = Struct_1(firstLeadingBit(~(-2147483647i)), ~global2.b & global2.b, -2147483647i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, global2.d.x)))), 2081f);
    global1 = array<Struct_1, 11>();
    return min(countOneBits(_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 3240u, arg_1.x)), select(vec4<u32>(22729u, u_input.a.x, 0u, var_0.x), vec4<u32>(u_input.a.x, 42672u, arg_1.x, 12883u), vec4<bool>(true, false, false, var_1.x))))), var_0.x);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global2 = global1[_wgslsmith_index_u32(func_5(~(-2147483647i), ~func_4(_wgslsmith_f_op_f32(func_2(Struct_1(arg_0.a, arg_0.b, arg_0.c, arg_0.d, 672f))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(7055u, 88801u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), ~vec3<u32>(u_input.a.x, 25243u, 4294967295u)), 11u)], true, Struct_1(abs(-38070i), vec4<i32>(global2.a, u_input.b.x, 2147483647i, 1i), u_input.b.x >> (28260u % 32u), arg_0.d, _wgslsmith_f_op_f32(-global2.d.x))), u_input.a.x, -1i), 11u)];
    global0 = select(abs(u_input.b.x) >> (func_4(arg_0.d.x, Struct_1(arg_0.b.x | u_input.b.x, min(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, global2.b.x), global2.b), arg_0.c & 40276i, vec2<f32>(arg_0.e, global2.e), _wgslsmith_f_op_f32(global2.e * arg_0.e)), true, global1[_wgslsmith_index_u32(reverseBits(~u_input.a.x), 11u)]).x % 32u), _wgslsmith_add_i32(abs(global2.b.x), _wgslsmith_mod_i32(abs(4037i), global2.a)) << (16607u % 32u), true);
    global2 = Struct_1(arg_0.a, ~(global2.b ^ max(global2.b, arg_0.b)), -23507i, _wgslsmith_f_op_vec2_f32(-arg_0.d), arg_0.e);
    global1 = array<Struct_1, 11>();
    var var_0 = global1[_wgslsmith_index_u32(~24021u, 11u)];
    return Struct_1(_wgslsmith_dot_vec2_i32(select(~vec2<i32>(1i, u_input.b.x), ~global2.b.xw, vec2<bool>(true, true)), global2.b.yz), -var_0.b, 2147483647i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(349f * 1571f) + _wgslsmith_f_op_f32(abs(512f)))), _wgslsmith_f_op_f32(-arg_0.e)), 1f);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> u32 {
    global2 = Struct_1(arg_0.c, firstLeadingBit(vec4<i32>(global2.b.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(17188i, -18453i), -62178i), 2649i, _wgslsmith_dot_vec3_i32(-arg_1.b.wzz, ~global2.b.xyw))), _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(~arg_0.b, arg_1.b ^ vec4<i32>(-1i, arg_1.c, 2147483647i, arg_0.c)), vec4<i32>(reverseBits(~62195i), _wgslsmith_dot_vec4_i32(abs(arg_1.b), -vec4<i32>(global2.c, u_input.b.x, 2147483647i, u_input.b.x)), ~reverseBits(2147483647i), -_wgslsmith_sub_i32(-23498i, 0i))), _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, -651f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.e, global2.e), vec2<f32>(-1147f, 229f))) * arg_1.d))), arg_0.e);
    let var_0 = -firstTrailingBit(vec3<i32>(arg_3, arg_3, -_wgslsmith_add_i32(global2.c, -1161i)));
    var var_1 = arg_2;
    let var_2 = func_1(arg_0);
    let var_3 = arg_0;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (59797u | firstLeadingBit(func_6(func_1(global1[_wgslsmith_index_u32(4294967295u, 11u)]), Struct_1(global2.c, vec4<i32>(global2.a, global2.b.x, global2.c, 0i), 0i, vec2<f32>(-1185f, 1000f), -1134f), func_4(1000f, Struct_1(global2.a, global2.b, -54385i, global2.d, global2.d.x), true, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]).x, 73410i))) >= _wgslsmith_dot_vec2_u32(~u_input.a, ~vec2<u32>(firstLeadingBit(1u), u_input.a.x >> (u_input.a.x % 32u)));
    var var_1 = any(select(vec3<bool>(true, true, true), !vec3<bool>(var_0, true, var_0), select(vec3<bool>(any(vec4<bool>(var_0, false, false, var_0)), var_0, var_0), !vec3<bool>(true, var_0, true), select(select(vec3<bool>(false, true, true), vec3<bool>(var_0, false, var_0), vec3<bool>(true, true, var_0)), !vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0)))));
    var var_2 = var_0;
    global0 = -(~firstTrailingBit(u_input.b.x));
    global0 = firstLeadingBit(~global2.a);
    let var_3 = select(select(select(select(select(vec4<bool>(var_0, true, var_0, true), vec4<bool>(var_0, false, false, false), vec4<bool>(var_0, true, false, var_0)), vec4<bool>(var_0, var_0, false, true), true), vec4<bool>(false, false, false, !var_0), false), select(vec4<bool>(var_0, false | var_0, true, false), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, true, true, var_0)), select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(false, false, var_0, false), var_0), select(vec4<bool>(true, var_0, false, true), vec4<bool>(false, var_0, var_0, true), false)), true), vec4<bool>(any(!vec3<bool>(var_0, var_0, var_0)), var_0, false, false)), vec4<bool>(true, true, var_0, any(!(!vec4<bool>(false, true, var_0, var_0)))), _wgslsmith_f_op_f32(global2.d.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.e + 1423f), _wgslsmith_f_op_f32(145f + 174f)))) < -350f);
    let x = u_input.a;
    s_output = StorageBuffer(~(max(i32(-1i) * -19505i, u_input.b.x) & -2147483647i), abs(_wgslsmith_sub_vec3_i32(global2.b.xyw, func_1(func_1(Struct_1(u_input.b.x, vec4<i32>(global2.b.x, -13122i, u_input.b.x, global2.b.x), 1i, vec2<f32>(global2.d.x, 1228f), 621f))).b.zyx)), countOneBits(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u)) << (~vec3<u32>(u_input.a.x, u_input.a.x, 149u) % vec3<u32>(32u))));
}

