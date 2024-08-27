struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 31>;

var<private> global2: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false));

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(1u, vec2<f32>(-1046f, -1113f), false, 1i, vec3<bool>(true, true, true)), Struct_1(105868u, vec2<f32>(-303f, 357f), false, 1i, vec3<bool>(false, true, false)), Struct_1(33299u, vec2<f32>(-694f, 1000f), true, -12779i, vec3<bool>(true, true, true)), Struct_1(4294967295u, vec2<f32>(1782f, 1333f), true, 37881i, vec3<bool>(false, true, false)), Struct_1(65958u, vec2<f32>(-982f, -1370f), true, 13624i, vec3<bool>(false, false, false)), Struct_1(27049u, vec2<f32>(1237f, -639f), true, 19511i, vec3<bool>(false, false, true)), Struct_1(16783u, vec2<f32>(1171f, -1141f), false, 0i, vec3<bool>(true, false, false)), Struct_1(40607u, vec2<f32>(779f, 549f), false, -51441i, vec3<bool>(true, true, false)), Struct_1(0u, vec2<f32>(-328f, 1572f), true, 0i, vec3<bool>(false, true, true)), Struct_1(17408u, vec2<f32>(514f, 421f), true, -1i, vec3<bool>(false, false, false)), Struct_1(1u, vec2<f32>(858f, 1051f), true, -3423i, vec3<bool>(false, false, false)), Struct_1(113242u, vec2<f32>(960f, 1028f), true, -22874i, vec3<bool>(true, false, true)), Struct_1(4294967295u, vec2<f32>(-1024f, 1528f), true, 1i, vec3<bool>(false, false, false)));

var<private> global4: array<i32, 13>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_2(vec2<u32>(~u_input.c.x, u_input.c.x), 14058i, global3[_wgslsmith_index_u32(~u_input.b.x, 13u)], Struct_1(u_input.c.x & _wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1444f, arg_0))))), (u_input.b.x | 90926u) == u_input.b.x, 3892i, !vec3<bool>(any(vec3<bool>(false, false, true)), true, true)), Struct_1(u_input.b.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, arg_0))))))), true, u_input.a, select(select(select(global2[_wgslsmith_index_u32(37622u, 31u)], vec3<bool>(true, true, false), false), global2[_wgslsmith_index_u32(0u, 31u)], all(vec4<bool>(false, true, true, false))), global2[_wgslsmith_index_u32(~(~u_input.c.x), 31u)], any(vec4<bool>(false, true, false, true)))));
    let var_1 = 2167f;
    var var_2 = Struct_2(_wgslsmith_mult_vec2_u32(countOneBits(var_0.a), vec2<u32>(1u, ~25332u)), var_0.b, global3[_wgslsmith_index_u32(~reverseBits(~firstLeadingBit(var_0.a.x)), 13u)], var_0.c, Struct_1(~u_input.b.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(var_0.c.b)), vec2<f32>(var_1, _wgslsmith_f_op_f32(var_0.d.b.x * -1521f)))), all(!vec4<bool>(var_0.e.e.x, false, false, var_0.e.e.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(var_0.e.d, 63391i)), ~vec2<i32>(global4[_wgslsmith_index_u32(var_0.d.a, 13u)], var_0.e.d)), abs(var_0.b)), select(vec3<bool>(false, var_0.c.e.x, true), vec3<bool>(var_0.d.e.x, true | var_0.e.c, var_0.c.c), vec3<bool>(var_0.d.e.x, true, u_input.c.x != 1u))));
    let var_3 = Struct_1(var_2.d.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1057f, arg_0))))), true, -(global4[_wgslsmith_index_u32(min(var_2.d.a, u_input.b.x), 13u)] ^ global4[_wgslsmith_index_u32(35904u, 13u)]), var_0.e.e);
    var_0 = Struct_2(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(var_2.a, var_2.a), var_0.a), var_3.d, var_2.e, Struct_1(13243u, var_3.b, var_0.e.c, var_0.e.d, !vec3<bool>(true, !var_2.c.c, true)), var_3);
    return 1u;
}

fn func_2() -> Struct_2 {
    global4 = array<i32, 13>();
    global1 = array<vec4<i32>, 31>();
    global2 = array<vec3<bool>, 31>();
    global0 = u_input.c.x;
    return Struct_2(~(~vec2<u32>(1u, func_3(-1990f))), (_wgslsmith_add_i32(max(global4[_wgslsmith_index_u32(0u, 13u)], u_input.a), ~(-1i)) | -(~(-1i))) & (i32(-1i) * -select(u_input.a, global4[_wgslsmith_index_u32(0u, 13u)], false)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u >> (u_input.c.x % 32u), _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(u_input.c.x, 0u)), u_input.b.x), ~u_input.b), select(u_input.b, ~(~u_input.b), select(select(global2[_wgslsmith_index_u32(53186u, 31u)], global2[_wgslsmith_index_u32(u_input.b.x, 31u)], true), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 31u)], global2[_wgslsmith_index_u32(~0u, 31u)]))), 13u)], Struct_1(abs(u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(322f, 1369f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f))), all(vec4<bool>(false, true, true, select(false, false, false))), u_input.a, vec3<bool>(false, any(vec4<bool>(false, false, false, false)), true)), global3[_wgslsmith_index_u32(u_input.b.x, 13u)]);
}

fn func_1() -> i32 {
    var var_0 = u_input.c.x;
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.e.b.x)), _wgslsmith_f_op_f32(var_1.c.b.x - var_1.e.b.x)))), var_1.e.b.x));
    var var_3 = var_1;
    let var_4 = var_1;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(u_input.b.x ^ abs(_wgslsmith_mult_u32(abs(firstLeadingBit(u_input.b.x)), u_input.c.x)), 13u)];
    var var_1 = var_0.e.x;
    global1 = array<vec4<i32>, 31>();
    let var_2 = (-_wgslsmith_add_i32(-49522i, var_0.d >> (var_0.a % 32u)) | (firstLeadingBit(u_input.a & 78643i) & func_1())) | -51582i;
    var_0 = func_2().e;
    let var_3 = Struct_2(select(reverseBits(vec2<u32>(~20020u, 45382u)), ~select(vec2<u32>(var_0.a, var_0.a), u_input.c, var_0.c), func_2().d.e.x), ~(-func_1()), Struct_1(1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b * var_0.b)) + var_0.b), !all(select(var_0.e.xz, var_0.e.zy, var_0.e.x)), ~_wgslsmith_div_i32(_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(var_0.a, 13u)], u_input.a), firstTrailingBit(-18886i)), select(!vec3<bool>(false, var_0.c, true), var_0.e, all(vec2<bool>(var_0.c, var_0.e.x)) & false)), Struct_1(~max(7199u, ~var_0.a), _wgslsmith_f_op_vec2_f32(-var_0.b), any(!(!vec2<bool>(var_0.c, true))), var_0.d, global2[_wgslsmith_index_u32(u_input.c.x, 31u)]), Struct_1(_wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(u_input.c.x, 0u, u_input.b.x, 211u), vec4<u32>(var_0.a, 77670u, var_0.a, var_0.a), var_0.c)), abs(~vec4<u32>(u_input.b.x, var_0.a, 8063u, 77678u))), vec2<f32>(-360f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1038f))), var_0.e.x, -_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 31u)] & global1[_wgslsmith_index_u32(var_0.a, 31u)], _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -21345i, 1i, 2147483647i), global1[_wgslsmith_index_u32(u_input.c.x, 31u)])), select(var_0.e, vec3<bool>(var_0.e.x, var_0.e.x == true, true), var_0.e.x)));
    var var_4 = -1484f;
    var var_5 = Struct_2(abs(~(~var_3.a)), 0i, global3[_wgslsmith_index_u32(var_3.e.a, 13u)], func_2().e, Struct_1(~u_input.c.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.c.b) + var_0.b), var_3.c.b)), !(!(var_3.e.c || var_0.c)), abs(~20603i) ^ func_2().d.d, select(select(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], var_3.c.e, !vec3<bool>(false, var_0.e.x, var_3.d.c)), func_2().d.e, vec3<bool>(!var_3.d.c, var_3.d.c, any(global2[_wgslsmith_index_u32(6071u, 31u)])))));
    global3 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~(vec2<i32>(var_0.d, var_5.e.d) & vec2<i32>(1i, 0i)), ~vec2<i32>(var_0.d, 16475i) ^ vec2<i32>(u_input.a, var_3.e.d)) ^ (abs(var_0.d) ^ -45302i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * -734f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_5.e.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_5.c.b.x), _wgslsmith_f_op_f32(307f + 2065f))))), var_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1000f)))), var_3.e.b);
}

