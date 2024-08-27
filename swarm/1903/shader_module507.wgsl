struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_2,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-44153i, 1i, -82539i), vec3<i32>(-27896i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-34362i, 0i, -36798i), vec3<i32>(i32(-2147483648), 2147483647i, -51272i), vec3<i32>(-1i, 1i, -26598i), vec3<i32>(26072i, -1i, -1i), vec3<i32>(i32(-2147483648), -1i, -51263i), vec3<i32>(46413i, 23468i, 2147483647i), vec3<i32>(13616i, -39909i, 2147483647i), vec3<i32>(18139i, -65048i, -3982i), vec3<i32>(-21956i, 1i, 0i), vec3<i32>(-1i, -43385i, 0i), vec3<i32>(-1i, -10164i, 6286i), vec3<i32>(-31122i, 2147483647i, -58324i), vec3<i32>(38297i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(-42824i, -3565i, 1i), vec3<i32>(i32(-2147483648), -1i, -88234i));

var<private> global2: array<i32, 4> = array<i32, 4>(0i, 0i, -7999i, 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(1374f, 1339f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(870f, 258f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1028f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2430f, -490f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2218f, -1008f))), select(vec2<bool>(true, false), vec2<bool>(false, false), true)))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(157f, 240f)))))));
    let var_1 = ~min(min(~min(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], -10531i, -1i), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], -1i, global2[_wgslsmith_index_u32(47280u, 4u)])), global1[_wgslsmith_index_u32(73849u, 18u)]), vec3<i32>(~_wgslsmith_mult_i32(0i, global2[_wgslsmith_index_u32(32004u, 4u)]), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, 4294967295u), 4u)], ~21866i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -2147483647i, global2[_wgslsmith_index_u32(41947u, 4u)]) & vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(48658u, 4u)], 1i, -2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(arg_0, 4u)], global2[_wgslsmith_index_u32(arg_0, 4u)], 48816i, global2[_wgslsmith_index_u32(4294967295u, 4u)]))));
    let var_2 = Struct_4(vec2<bool>(true == (~1855u > firstTrailingBit(u_input.a.x)), false));
    let var_3 = var_2;
    let var_4 = _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_1.x, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], var_1.x) ^ vec4<i32>(-33339i, var_1.x, global2[_wgslsmith_index_u32(32344u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)]), vec4<i32>(5627i, global2[_wgslsmith_index_u32(1u, 4u)], 0i, -5819i)), ~select(vec4<i32>(38521i, var_1.x, -2147483647i, -1i), vec4<i32>(-25672i, global2[_wgslsmith_index_u32(1u, 4u)], 5624i, 14308i), vec4<bool>(var_2.a.x, false, var_2.a.x, var_2.a.x))), max(-(firstLeadingBit(33051i) << ((arg_0 & arg_0) % 32u)), -52705i));
    return var_3.a;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1012f, 777f, -1704f) - vec3<f32>(-720f, -111f, 1103f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(756f, -592f, 344f)))))));
    var var_1 = u_input.a.x;
    var var_2 = ~firstLeadingBit(abs(vec2<i32>(arg_0, global2[_wgslsmith_index_u32(u_input.a.x, 4u)])));
    var var_3 = !select(vec2<bool>((global2[_wgslsmith_index_u32(42327u, 4u)] > arg_0) == true, !all(vec2<bool>(true, true))), select(vec2<bool>(true, true), !func_3(u_input.a.x), !any(vec2<bool>(false, false))), true);
    var var_4 = select(-countOneBits(vec2<i32>(abs(-1i), global2[_wgslsmith_index_u32(0u, 4u)] >> (1467u % 32u))), ~vec2<i32>(max(var_2.x, var_2.x), 1i), !func_3(u_input.a.x | 100123u));
    return var_0.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -413f)), -469f, _wgslsmith_f_op_f32(func_2(-3149i)), _wgslsmith_f_op_f32(-1027f * 1000f)), _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.x << (u_input.a.x % 32u), countOneBits(-32404i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-10462i, 0i) | arg_0, vec2<i32>(2147483647i, -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -109f)))), arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -203f) + _wgslsmith_f_op_f32(f32(-1f) * -1164f))), vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) | ~u_input.a.wyw, vec3<u32>(u_input.a.x ^ u_input.a.x, u_input.a.x & u_input.a.x, max(u_input.a.x, 4294967295u))), ~(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -947f), _wgslsmith_div_f32(276f, -239f), false)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1574f, -1180f, 1788f, 487f))) + vec4<f32>(-757f, -1696f, -1010f, -779f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(448f, 1599f, 1077f, -372f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-845f, -649f, 612f, -923f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1213f, 866f, 909f, -534f), vec4<f32>(383f, 662f, 2005f, 1107f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, 1027f, -188f, 194f))))));
    var_0 = Struct_2(var_0.a, ~min(min(vec3<u32>(u_input.a.x, 4294967295u, 13317u), vec3<u32>(0u, 10417u, var_0.b.x)) >> (select(vec3<u32>(var_0.b.x, u_input.a.x, 1469u), var_0.b, vec3<bool>(false, arg_1.a.x, var_0.a.d.x)) % vec3<u32>(32u)), vec3<u32>(var_0.b.x, ~var_0.b.x, ~var_0.b.x)), _wgslsmith_f_op_f32(ceil(var_0.d.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.e.x)) * _wgslsmith_f_op_f32(sign(var_0.a.e))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-736f, 1730f) - _wgslsmith_f_op_f32(step(1000f, 259f))), var_0.c, var_0.e.x), vec4<f32>(1f, 671f, var_0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.c, var_0.a.c)))), var_0.a.d.x)), var_0.a.a);
    let var_1 = !select(vec3<bool>(!var_0.a.d.x, 1000f < var_0.e.x, var_0.a.d.x || any(vec3<bool>(var_0.a.d.x, arg_1.a.x, true))), select(select(select(vec3<bool>(var_0.a.d.x, true, arg_1.a.x), vec3<bool>(false, arg_1.a.x, arg_1.a.x), vec3<bool>(false, arg_1.a.x, var_0.a.d.x)), !vec3<bool>(false, true, var_0.a.d.x), false), !vec3<bool>(true, arg_1.a.x, var_0.a.d.x), true), select(vec3<bool>(true, true, true), !(!vec3<bool>(var_0.a.d.x, true, false)), !(!vec3<bool>(var_0.a.d.x, true, false))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-423f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_div_i32(-1i, global2[_wgslsmith_index_u32(var_0.b.x, 4u)]))))));
    global2 = array<i32, 4>();
    return arg_1;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<u32>) -> vec2<u32> {
    let var_0 = 1i;
    let var_1 = max(u_input.a, select(u_input.a, reverseBits(vec4<u32>(46249u, u_input.a.x, 4294967295u, 4294967295u)) | (u_input.a & vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 1u)), vec4<bool>(all(vec4<bool>(arg_0.a.x, true, arg_0.a.x, true)), arg_0.a.x, arg_0.a.x, false)));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1f))))), _wgslsmith_mult_i32(max(1i, _wgslsmith_mod_i32(2147483647i, var_0)) << (1u % 32u), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(global1[_wgslsmith_index_u32(arg_3.x, 18u)], vec3<i32>(15934i, var_0, -2147483647i))), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], var_0, 1i))), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(423f - -1063f)))), vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0, -2147483647i, 11084i), -vec3<i32>(var_0, var_0, var_0))), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(var_1.x, 4u)], global2[_wgslsmith_index_u32(var_1.x, 4u)], 2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec4<i32>(-36943i, global2[_wgslsmith_index_u32(91378u, 4u)], var_0, global2[_wgslsmith_index_u32(arg_3.x, 4u)])), abs(vec4<i32>(var_0, 1i, var_0, var_0)))), _wgslsmith_mod_i32(2147483647i, -24036i), var_0));
    let var_3 = Struct_3(select(vec3<i32>(-max(var_0, var_0), -2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, arg_3.x, 3859u), var_1.xyz), ~vec3<u32>(4294967295u, arg_3.x, var_1.x)), 4u)]), reverseBits(~(vec3<i32>(var_0, -2147483647i, 1i) & var_2.e.xzx)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, var_2.d, var_2.d, var_2.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -568f, 1019f, 242f) * vec4<f32>(-681f, 1547f, var_2.d, -1340f)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2810f, 582f, var_2.a, var_2.d) + vec4<f32>(var_2.d, var_2.a, var_2.a, var_2.d)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-307f, 481f, var_2.d, -122f) * vec4<f32>(var_2.d, var_2.d, var_2.a, 277f))))), Struct_2(Struct_1(vec4<f32>(var_2.a, 111f, _wgslsmith_f_op_f32(var_2.d - var_2.a), _wgslsmith_f_op_f32(ceil(735f))), global2[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, -305f)), arg_2.a, var_2.d), vec3<u32>(var_1.x, arg_3.x, arg_3.x), _wgslsmith_f_op_f32(-2139f * _wgslsmith_f_op_f32(f32(-1f) * -975f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.d, var_2.d, var_2.a, var_2.d), vec4<f32>(var_2.d, 511f, var_2.d, -415f)), vec4<f32>(1031f, var_2.a, var_2.a, 999f), select(vec4<bool>(false, false, true, true), vec4<bool>(arg_0.a.x, false, var_2.c.x, true), true))) + _wgslsmith_div_vec4_f32(vec4<f32>(-788f, 372f, 1498f, -651f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1620f, -636f, 201f, -497f) - vec4<f32>(766f, var_2.d, var_2.a, 798f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.d, 1000f, 1671f, var_2.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(973f, var_2.d, 1650f, var_2.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, var_2.a, 1000f, -724f), vec4<f32>(var_2.a, var_2.a, -601f, var_2.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-142f, var_2.d, var_2.a, var_2.d) + vec4<f32>(-264f, var_2.a, 442f, 1420f)))))), global2[_wgslsmith_index_u32(0u, 4u)], u_input.a.x);
    var var_4 = _wgslsmith_clamp_vec3_i32(max(var_2.e.zzz, vec3<i32>(var_0, ~var_3.c.a.b, i32(-1i) * -1i)), -(~var_3.a), countOneBits(var_3.a));
    return _wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u << (var_1.x % 32u), _wgslsmith_mod_u32(firstLeadingBit(arg_3.x), u_input.a.x))), vec2<u32>(_wgslsmith_dot_vec2_u32(var_3.c.b.xz, _wgslsmith_mod_vec2_u32(vec2<u32>(37978u, 21604u), arg_3)), 15348u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(u_input.a.zz ^ u_input.a.ww, ~func_4(func_1(-vec2<i32>(-2147483647i, 0i), Struct_4(vec2<bool>(true, true))), Struct_4(vec2<bool>(true, true)), func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-35507i, -14259i), vec2<i32>(64270i, 27229i)), Struct_4(vec2<bool>(true, true))), ~vec2<u32>(0u, u_input.a.x)));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-592f))))))), -1i >> (_wgslsmith_dot_vec4_u32(~abs(u_input.a), vec4<u32>(39040u, 21696u, 0u, 1u)) % 32u), select(vec2<bool>(true, true), vec2<bool>(true, true), !func_3(var_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(277f - 625f), _wgslsmith_f_op_f32(select(-1000f, 427f, true))))))), (vec4<i32>(-1i) * -abs(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(29026u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)]))) | ~vec4<i32>(global2[_wgslsmith_index_u32(var_0, 4u)], global2[_wgslsmith_index_u32(~var_0, 4u)], reverseBits(global2[_wgslsmith_index_u32(var_0, 4u)]), global2[_wgslsmith_index_u32(1u, 4u)]));
    let var_2 = var_1.c.x;
    global0 = -(countOneBits(~global2[_wgslsmith_index_u32(1u, 4u)] | -var_1.e.x) >> (var_0 % 32u));
    var var_3 = _wgslsmith_add_vec3_u32(countOneBits(~(~(u_input.a.zxz << (u_input.a.yxx % vec3<u32>(32u))))), _wgslsmith_div_vec3_u32(max(~vec3<u32>(1u, 0u, var_0), firstTrailingBit(reverseBits(vec3<u32>(u_input.a.x, 48487u, u_input.a.x)))), ~u_input.a.xxy));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(-var_1.d))))));
    global1 = array<vec3<i32>, 18>();
    global1 = array<vec3<i32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(min(u_input.a.yxx, u_input.a.ywz)) ^ (vec3<u32>(select(var_0, 0u, var_1.c.x), _wgslsmith_dot_vec2_u32(var_3.zx, vec2<u32>(u_input.a.x, var_0)), ~10463u) & vec3<u32>(abs(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 93072u, var_3.x, 1u), u_input.a), u_input.a.x >> (48096u % 32u))), -var_1.e, reverseBits(var_1.e));
}

