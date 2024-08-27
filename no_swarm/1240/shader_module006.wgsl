struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<f32>(3146f, -1044f, -1089f, 356f), 2147483647i, vec3<i32>(-1i, -2111i, i32(-2147483648))), Struct_1(vec4<f32>(-507f, -345f, -1882f, 854f), i32(-2147483648), vec3<i32>(i32(-2147483648), 1i, -1i)), Struct_1(vec4<f32>(368f, -1662f, 1788f, -809f), 8706i, vec3<i32>(-1i, 11618i, 1i)), Struct_1(vec4<f32>(1943f, 121f, -241f, -901f), -25955i, vec3<i32>(i32(-2147483648), 48875i, 0i)), Struct_1(vec4<f32>(-582f, 2691f, -179f, -610f), 1278i, vec3<i32>(2330i, 0i, 26028i)), Struct_1(vec4<f32>(494f, -1120f, -1637f, 494f), -1i, vec3<i32>(3886i, 10096i, 1i)), Struct_1(vec4<f32>(290f, -795f, -462f, -331f), 0i, vec3<i32>(-36002i, 0i, -36042i)), Struct_1(vec4<f32>(-1345f, -2579f, 1049f, -501f), 2147483647i, vec3<i32>(1i, 0i, 12456i)), Struct_1(vec4<f32>(758f, 1642f, 1515f, 503f), -5623i, vec3<i32>(-1i, 1i, i32(-2147483648))), Struct_1(vec4<f32>(-1145f, 108f, -953f, -478f), -1i, vec3<i32>(55529i, -1i, 26762i)), Struct_1(vec4<f32>(1597f, -215f, -1206f, 393f), -1i, vec3<i32>(-7903i, 2147483647i, -1i)), Struct_1(vec4<f32>(289f, 371f, -664f, 647f), 29027i, vec3<i32>(-45454i, 1i, -5579i)), Struct_1(vec4<f32>(-966f, 412f, -251f, 432f), 6528i, vec3<i32>(-33i, 0i, 0i)), Struct_1(vec4<f32>(664f, 238f, 1911f, 1823f), 1i, vec3<i32>(-21464i, -13103i, 7493i)), Struct_1(vec4<f32>(-812f, 370f, -766f, -562f), 23173i, vec3<i32>(12245i, 1i, 0i)), Struct_1(vec4<f32>(-1291f, 492f, -401f, -461f), -1i, vec3<i32>(0i, 1i, 6088i)), Struct_1(vec4<f32>(-522f, 1645f, -2737f, -1344f), 27841i, vec3<i32>(i32(-2147483648), 1i, -38528i)), Struct_1(vec4<f32>(-418f, 300f, -669f, 269f), 1i, vec3<i32>(-1i, -1i, -31604i)), Struct_1(vec4<f32>(660f, 357f, 949f, 1000f), -10397i, vec3<i32>(-39580i, 1i, -58520i)), Struct_1(vec4<f32>(1000f, -598f, -138f, -718f), 21056i, vec3<i32>(48154i, -1485i, -1i)), Struct_1(vec4<f32>(-797f, -1000f, -1038f, -734f), 2147483647i, vec3<i32>(0i, -14684i, -15819i)), Struct_1(vec4<f32>(-1371f, 524f, -872f, 984f), 0i, vec3<i32>(55605i, -1i, -1i)), Struct_1(vec4<f32>(-1088f, -292f, -114f, 1000f), 2147483647i, vec3<i32>(11591i, i32(-2147483648), -20540i)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f)), -1000f, all(vec4<bool>(arg_1.a.x, arg_1.a.x, false, true)) | arg_1.a.x))) * 1f);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(198f + arg_0.a.x))))), _wgslsmith_f_op_vec2_f32(arg_0.a.wz * arg_1.b.a.xy));
    let var_2 = vec2<bool>(arg_1.a.x, true);
    let var_3 = ~arg_0.b;
    var var_4 = ~u_input.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(859f + 777f), var_1.x), arg_1.b.a.x))) - _wgslsmith_f_op_f32(sign(-311f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -627f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(1u, 23u)], Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec4<f32>(842f, 871f, -1185f, -478f), -12312i, vec3<i32>(0i, -1i, u_input.a)), vec2<i32>(-17051i, u_input.c.x), -1305f), arg_1)) + _wgslsmith_f_op_f32(f32(-1f) * -1687f)))), _wgslsmith_f_op_f32(step(436f, _wgslsmith_f_op_f32(-1626f * -1123f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-565f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(711f + -1000f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(-270f, 507f, -980f, -505f), -15750i, vec3<i32>(-46320i, u_input.a, u_input.c.x)), Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec4<f32>(-1000f, 1000f, -2312f, 714f), u_input.c.x, vec3<i32>(u_input.c.x, -2147483647i, 22837i)), u_input.c, -513f), 4294967295u))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))) + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(arg_1, 23u)], Struct_2(vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(69397u, 23u)], vec2<i32>(-2147483647i, u_input.c.x), var_0.x), 0u))))), -1141f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_f32(-1842f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x))))));
    global0 = array<Struct_1, 23>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x, -881f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f), vec4<f32>(var_0.x, var_0.x, 2031f, 429f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, 629f, var_0.x), vec4<f32>(-898f, -299f, 572f, 2178f), vec4<bool>(false, true, true, true)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(722f, -556f, var_0.x, 461f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, -977f, var_0.x, var_0.x))))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -147f), 443f)));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(614f, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -2519f), -468f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1150f, 341f, var_0.x, -686f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -104f, -378f, 1096f), vec4<f32>(var_0.x, var_0.x, var_0.x, -1149f), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 310f, var_0.x, var_0.x) * vec4<f32>(-1223f, 877f, 1608f, 589f)))))));
    return ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.c.x), vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, 7211i), vec3<i32>(u_input.c.x, u_input.a, -10921i))), -1i));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<f32>, arg_3: vec2<bool>) -> bool {
    let var_0 = Struct_2(!vec4<bool>(u_input.a <= _wgslsmith_dot_vec2_i32(vec2<i32>(-25625i, u_input.a), vec2<i32>(u_input.a, u_input.c.x)), all(vec2<bool>(arg_1, false)), !(arg_3.x & true), 1041f <= _wgslsmith_f_op_f32(arg_2.x + arg_2.x)), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(arg_2.x - 1568f), 1f, -166f, _wgslsmith_f_op_f32(trunc(arg_2.x))))), countOneBits(~u_input.c.x), _wgslsmith_sub_vec3_i32(-(~vec3<i32>(50548i, -1i, u_input.a)), vec3<i32>(func_2(vec4<u32>(47381u, u_input.b, u_input.b, u_input.b), 1u), i32(-1i) * -1i, 0i))), vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.a, u_input.c.x, u_input.a), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -9209i, -2147483647i, -1i), vec4<i32>(40309i, u_input.c.x, u_input.a, 96561i), vec4<i32>(-5443i, 20001i, -10100i, -3370i)), ~vec4<i32>(32163i, 1i, u_input.a, u_input.a))), 1i), arg_2.x);
    var var_1 = reverseBits(reverseBits(-26042i));
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(max(var_0.b.c.x, var_0.c.x), u_input.c.x), min(u_input.c, -vec2<i32>(-79i, u_input.a))), 18940i, max(~var_0.b.b, ~(-var_0.b.c.x))), var_0.b.c);
    var var_3 = var_0.b;
    var_3 = var_0.b;
    return all(arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1837f, -2131f)) - -566f))));
    var var_1 = vec3<f32>(-1097f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-2480f)), -230f)))));
    var_1 = vec3<f32>(var_1.x, -1086f, var_1.x);
    let var_2 = _wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(select(~vec4<i32>(2147483647i, u_input.a, -31775i, -2147483647i), abs(vec4<i32>(u_input.a, -12649i, -31692i, -1i)), func_1(vec4<u32>(98349u, u_input.b, u_input.b, 1u), true, vec3<f32>(2957f, var_1.x, var_1.x), vec2<bool>(false, false))), -vec4<i32>(u_input.c.x, 8381i, 2147483647i, -3950i) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 40580u, 3436u, u_input.b), vec4<u32>(u_input.b, 4294967295u, u_input.b, 31788u)) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(abs(select(vec4<i32>(u_input.c.x, -1i, 2147483647i, u_input.a), vec4<i32>(u_input.c.x, 5452i, 2147483647i, 74632i), vec4<bool>(true, true, false, true)) | -vec4<i32>(-49183i, 16051i, u_input.c.x, u_input.c.x)), vec4<i32>(u_input.a, 27979i, u_input.a, reverseBits(29847i)) | ~(~vec4<i32>(u_input.a, -20555i, u_input.c.x, u_input.c.x))));
    let var_3 = _wgslsmith_sub_u32(~u_input.b ^ _wgslsmith_mult_u32(countOneBits(_wgslsmith_mult_u32(u_input.b, 1u)), 0u), u_input.b ^ ~u_input.b);
    var var_4 = all(vec2<bool>(all(vec3<bool>(true, true, true)), var_2.x > _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, -14113i, 2147483647i, 0i), var_2, var_2), -var_2)));
    var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-484f, -337f, -1000f) * vec3<f32>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 763f, 547f) * vec3<f32>(1081f, -1169f, var_1.x)))), var_2.x != -43186i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(600f, var_1.x, -599f), vec3<f32>(547f, var_1.x, var_1.x), vec3<bool>(true, false, false)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2278f, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -667f, -916f) * vec3<f32>(var_1.x, -1410f, var_1.x))))), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-1050f)), 35620i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-445f, -813f)), _wgslsmith_div_f32(var_1.x, -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1.x)))), var_1.x), 110f, -1i ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(var_2.x, var_2.x), vec2<i32>(var_2.x, 65945i)), -select(vec2<i32>(0i, var_2.x), var_2.zy, vec2<bool>(true, false))));
}

