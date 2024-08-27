struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<f32, 26> = array<f32, 26>(1251f, 375f, 1899f, 1096f, -598f, -1857f, -411f, -510f, 350f, 1733f, -1678f, -879f, -2219f, 1000f, -1330f, 943f, 1000f, 508f, 436f, 546f, 566f, 153f, -2762f, 313f, -601f, 652f);

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(-1153f), Struct_2(1169f), Struct_2(1000f), Struct_2(621f), Struct_2(1191f), Struct_2(1582f), Struct_2(476f), Struct_2(-699f), Struct_2(299f), Struct_2(1000f), Struct_2(-1576f), Struct_2(-1432f), Struct_2(-1418f), Struct_2(-1153f), Struct_2(1112f), Struct_2(436f), Struct_2(-100f), Struct_2(987f), Struct_2(248f), Struct_2(154f), Struct_2(274f), Struct_2(-902f));

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(513f, vec3<bool>(true, false, true), vec4<bool>(false, false, true, false)), Struct_1(-1000f, vec3<bool>(true, false, false), vec4<bool>(true, true, true, false)), Struct_1(-557f, vec3<bool>(false, true, true), vec4<bool>(true, true, true, false)), Struct_1(252f, vec3<bool>(false, true, true), vec4<bool>(false, true, false, false)), Struct_1(848f, vec3<bool>(false, true, false), vec4<bool>(true, false, false, true)), Struct_1(639f, vec3<bool>(false, false, true), vec4<bool>(false, false, false, false)), Struct_1(368f, vec3<bool>(true, true, false), vec4<bool>(false, true, false, true)), Struct_1(1333f, vec3<bool>(true, true, true), vec4<bool>(false, true, false, false)), Struct_1(434f, vec3<bool>(true, false, false), vec4<bool>(true, true, true, false)), Struct_1(-1000f, vec3<bool>(true, true, false), vec4<bool>(false, true, true, true)), Struct_1(507f, vec3<bool>(false, false, true), vec4<bool>(true, true, true, false)), Struct_1(1569f, vec3<bool>(false, false, false), vec4<bool>(false, true, false, true)), Struct_1(385f, vec3<bool>(false, true, true), vec4<bool>(false, false, true, true)), Struct_1(1669f, vec3<bool>(true, true, false), vec4<bool>(true, true, false, false)), Struct_1(-238f, vec3<bool>(true, false, true), vec4<bool>(true, true, false, true)), Struct_1(1971f, vec3<bool>(false, true, false), vec4<bool>(true, true, false, false)), Struct_1(170f, vec3<bool>(false, false, false), vec4<bool>(true, false, true, false)), Struct_1(-373f, vec3<bool>(true, false, false), vec4<bool>(false, false, false, false)), Struct_1(-1618f, vec3<bool>(true, true, false), vec4<bool>(true, false, true, false)), Struct_1(-1281f, vec3<bool>(true, true, false), vec4<bool>(false, true, false, true)), Struct_1(-281f, vec3<bool>(false, true, true), vec4<bool>(false, true, false, true)), Struct_1(764f, vec3<bool>(true, false, true), vec4<bool>(true, true, false, true)), Struct_1(-1123f, vec3<bool>(false, true, false), vec4<bool>(false, true, true, false)), Struct_1(762f, vec3<bool>(false, true, true), vec4<bool>(false, false, false, true)), Struct_1(1691f, vec3<bool>(false, false, false), vec4<bool>(true, true, true, true)), Struct_1(813f, vec3<bool>(false, false, false), vec4<bool>(true, false, true, true)), Struct_1(300f, vec3<bool>(false, false, true), vec4<bool>(true, false, true, true)), Struct_1(-1479f, vec3<bool>(false, true, false), vec4<bool>(false, false, true, true)), Struct_1(384f, vec3<bool>(false, true, false), vec4<bool>(true, true, false, false)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    let var_0 = !(!all(arg_2.b));
    global2 = array<Struct_2, 22>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(arg_1.a + arg_1.a), arg_2.c.zyz, select(select(vec4<bool>(false, arg_2.b.x || false, arg_2.c.x, false), arg_2.c, !any(vec2<bool>(false, arg_2.b.x))), arg_2.c, select(arg_2.c, arg_2.c, arg_2.c)));
    global0 = vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + -137f))) + _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(839f)) + -610f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(2488f)))), -1543f)) * 283f), select(!arg_2.b, arg_2.c.ywx, vec3<bool>(false, var_0, false)), vec4<bool>(true, false, true, arg_2.c.x));
    return false;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> i32 {
    var var_0 = ~max(_wgslsmith_dot_vec4_i32(vec4<i32>(6040i, firstLeadingBit(0i), 1i, u_input.b >> (u_input.a.x % 32u)), -(vec4<i32>(u_input.b, 1i, -6464i, 1i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 10304u, 44876u) % vec4<u32>(32u)))), -(1i | u_input.b) | 33989i);
    let var_1 = !func_3(u_input.a.x, Struct_2(752f), global3[_wgslsmith_index_u32(abs((u_input.a.x ^ 0u) ^ ~1u), 29u)]);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(countOneBits(18283u), 26u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_0.x)))), arg_1.a))));
    var var_3 = Struct_2(arg_0.x);
    global2 = array<Struct_2, 22>();
    return u_input.b;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> vec4<i32> {
    var var_0 = ~vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, 1i), _wgslsmith_sub_i32(-66390i, 0i), min(u_input.b, 2436i << (arg_2.x % 32u)), u_input.b) | ((vec4<i32>(_wgslsmith_mod_i32(0i, 5293i), countOneBits(1i), _wgslsmith_mod_i32(u_input.b, u_input.b), u_input.b << (1u % 32u)) | vec4<i32>(-2147483647i, -u_input.b, i32(-1i) * -2147483647i, func_2(arg_3, global2[_wgslsmith_index_u32(arg_2.x, 22u)]))) & _wgslsmith_clamp_vec4_i32(min(~vec4<i32>(18899i, -2213i, u_input.b, 0i), firstTrailingBit(vec4<i32>(89383i, -1i, u_input.b, u_input.b))), abs(vec4<i32>(-2147483647i, u_input.b, u_input.b, -43702i)), select(vec4<i32>(1i, -16735i, u_input.b, u_input.b) >> (vec4<u32>(21386u, arg_2.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), min(vec4<i32>(-55601i, -1i, 2147483647i, u_input.b), vec4<i32>(-78665i, -16873i, -2147483647i, u_input.b)), select(vec4<bool>(true, true, true, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, false)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(ceil(global0.x)), -597f, global1[_wgslsmith_index_u32(~4294967295u, 26u)]));
    let var_2 = -_wgslsmith_mult_i32(firstLeadingBit(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-100f, -1000f, var_1.x)), global2[_wgslsmith_index_u32(4294967295u, 22u)])), 9698i);
    var var_3 = ~firstLeadingBit((var_0.x & ~u_input.b) & ~(-11013i));
    var var_4 = _wgslsmith_f_op_f32(round(var_1.x));
    return _wgslsmith_mod_vec4_i32(~(((vec4<i32>(var_0.x, var_2, u_input.b, u_input.b) >> (vec4<u32>(76916u, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) ^ -vec4<i32>(-1i, 2147483647i, -65864i, var_0.x)) << (min(vec4<u32>(4294967295u, u_input.a.x, 0u, arg_2.x), vec4<u32>(54710u, u_input.a.x, u_input.a.x, 0u)) % vec4<u32>(32u))), max(select(vec4<i32>(var_2, var_0.x, -1055i, -40359i), vec4<i32>(_wgslsmith_sub_i32(29382i, -12911i), var_2, var_0.x, countOneBits(-37482i)), arg_0), vec4<i32>(34030i, u_input.b, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-13485i, -1i, var_0.x)), ~vec3<i32>(var_0.x, var_0.x, var_0.x)), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mult_vec4_i32(func_1(-u_input.b <= (u_input.b | u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-595f + global0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 1u) & vec2<u32>(0u, u_input.a.x), firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x))), vec3<f32>(452f, -2607f, -1194f)), (_wgslsmith_div_vec4_i32(vec4<i32>(0i, 0i, u_input.b, -7314i), vec4<i32>(-3408i, u_input.b, u_input.b, u_input.b)) >> (countOneBits(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 0u)) % vec4<u32>(32u))) ^ reverseBits(reverseBits(vec4<i32>(u_input.b, u_input.b, 21068i, -12821i)))));
    let var_1 = reverseBits(select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, ~(-15376i), i32(-1i) * -34799i, countOneBits(1i)), ~vec4<i32>(-19104i, -2147483647i, 43238i, u_input.b)), ((vec4<i32>(1i, -19472i, var_0.x, -47649i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u) % vec4<u32>(32u))) & vec4<i32>(1i, u_input.b, var_0.x, -17372i)) << (abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 52284u)) % vec4<u32>(32u)), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true))));
    let var_2 = ~var_0.x;
    let var_3 = _wgslsmith_mult_i32(-21339i, u_input.b);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(94629u, 26u)], -1253f, 1331f, -838f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1417f, global1[_wgslsmith_index_u32(0u, 26u)], global0.x) * vec4<f32>(global1[_wgslsmith_index_u32(18231u, 26u)], global0.x, -957f, -1003f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(356f, 367f, global1[_wgslsmith_index_u32(0u, 26u)], global0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~46500u, 26u)], _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], global0.x))))), global1[_wgslsmith_index_u32(u_input.a.x, 26u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(~u_input.a.x, 0u), 26u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], -1780f)), -234f, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~countOneBits(select(var_2, var_2, true)), -1i, 25540i), u_input.a.x);
}

