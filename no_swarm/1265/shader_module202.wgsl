struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(0u, 1u, 1u, 19824u), vec4<u32>(82646u, 34894u, 0u, 1u), vec4<u32>(63544u, 29792u, 1u, 0u), vec4<u32>(6443u, 0u, 4294967295u, 2613u), vec4<u32>(21900u, 51229u, 0u, 4294967295u), vec4<u32>(82906u, 7467u, 62121u, 0u), vec4<u32>(14636u, 17548u, 20553u, 20989u), vec4<u32>(0u, 35627u, 61872u, 4294967295u), vec4<u32>(44616u, 4294967295u, 0u, 11328u), vec4<u32>(8966u, 0u, 4294967295u, 4294967295u), vec4<u32>(1u, 1794u, 58969u, 26738u), vec4<u32>(106283u, 35989u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(17388u, 55513u, 137942u, 4294967295u), vec4<u32>(40495u, 0u, 22297u, 34323u), vec4<u32>(0u, 80015u, 1u, 747u));

var<private> global1: f32;

var<private> global2: bool = true;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    global0 = array<vec4<u32>, 16>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(363f, 833f, 832f), vec3<f32>(1781f, -134f, 455f), arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-996f, -1193f, 902f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(189f, -2031f, 294f)))))));
    var var_1 = arg_2.b.x;
    let var_2 = var_0.xx;
    let var_3 = select(vec3<bool>(arg_0, any(!select(vec2<bool>(true, arg_1.x), arg_2.a, vec2<bool>(false, arg_0))), !(any(arg_2.a) | !arg_1.x)), !select(vec3<bool>(true, arg_2.a.x | true, arg_2.a.x), vec3<bool>(true, !arg_2.a.x, -300f >= var_0.x), arg_1.x), arg_1);
    return vec4<bool>(true, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))) != _wgslsmith_f_op_f32(trunc(-166f)), false);
}

fn func_2(arg_0: vec4<i32>) -> vec4<f32> {
    var var_0 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3(true, vec3<bool>(true, true, true), Struct_1(vec2<bool>(false, true), arg_0), u_input.a))));
    var var_1 = !vec3<bool>(!(var_0.x || (2147483647i <= arg_0.x)), var_0.x, var_0.x);
    var_1 = vec3<bool>(true, var_1.x, false);
    var var_2 = true;
    var var_3 = vec4<f32>(-958f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(240f + -1113f)) + _wgslsmith_f_op_f32(-146f - _wgslsmith_f_op_f32(ceil(-847f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(456f - 1165f) + _wgslsmith_f_op_f32(f32(-1f) * -226f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f) - -729f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1660f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f) + -666f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-389f + -1664f)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x)))), -2433f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_div_f32(var_3.x, var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -439f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-582f, -549f, var_0.x)), _wgslsmith_f_op_f32(719f * 153f))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_1(arg_0.a, abs(-vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -2147483647i), arg_0.b.x, 18345i, arg_0.b.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_2(arg_1.b));
    global2 = select(true, !func_3(true, select(!vec3<bool>(arg_0.a.x, arg_1.a.x, true), !vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), true), arg_1, u_input.c).x, false);
    var var_2 = Struct_3(vec2<u32>(u_input.b, ~(~u_input.d) >> (u_input.c % 32u)), _wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(arg_2)), _wgslsmith_f_op_vec4_f32(-arg_2))) * _wgslsmith_f_op_vec4_f32(-arg_2))), var_1.x);
    let var_3 = Struct_3(var_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(420f, var_1.x, arg_2.x, -136f)))), var_2.b, false))), var_1.x);
    return Struct_3(var_3.a & var_3.a, _wgslsmith_f_op_vec4_f32(-var_2.b), var_2.b.x);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = vec2<i32>(1i, select(arg_0, -_wgslsmith_dot_vec3_i32(vec3<i32>(-24743i, arg_0, arg_0), vec3<i32>(4833i, 0i, -4124i)), true) << (abs(4294967295u) % 32u));
    let var_1 = true;
    global0 = array<vec4<u32>, 16>();
    var var_2 = reverseBits(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(abs(arg_1.a.x), 3476u), ~4294967295u), select(abs(func_1(Struct_1(vec2<bool>(true, var_1), vec4<i32>(arg_0, arg_0, -10998i, -1i)), Struct_1(vec2<bool>(var_1, true), vec4<i32>(-48107i, arg_0, arg_0, 0i)), vec4<f32>(-578f, arg_1.c, 1594f, arg_1.c)).a.x), 3133u, !(!var_1)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~0u, ~u_input.d, arg_1.a.x), firstTrailingBit(max(4294967295u, 4294967295u)))));
    let var_3 = vec4<bool>(var_1, all(vec4<bool>(!(!var_1), any(vec2<bool>(false, var_1)) | select(true, var_1, var_1), min(4978u, var_2.x) > (arg_1.a.x & var_2.x), select(var_1, true, true))), var_1, (true & any(vec2<bool>(false, var_1))) && var_1);
    return _wgslsmith_clamp_vec4_i32(countOneBits(reverseBits(vec4<i32>(arg_0 << (40638u % 32u), -10592i, 1i, 41591i))), (_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, arg_0, arg_0), vec4<i32>(0i, 1i, -2147483647i, arg_0)), vec4<i32>(0i, -9754i, var_0.x, arg_0) | vec4<i32>(81428i, arg_0, var_0.x, var_0.x)) | (vec4<i32>(var_0.x, var_0.x, 1i, -1i) ^ max(vec4<i32>(arg_0, var_0.x, 2530i, arg_0), vec4<i32>(arg_0, arg_0, var_0.x, var_0.x)))) ^ (_wgslsmith_div_vec4_i32(-vec4<i32>(1i, -7270i, 77i, arg_0), firstTrailingBit(vec4<i32>(arg_0, 66494i, -40131i, var_0.x))) & ~vec4<i32>(var_0.x, var_0.x, -2624i, var_0.x)), vec4<i32>(arg_0, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(var_0.x, 6168i)) & _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, -1i), vec2<i32>(var_0.x, arg_0)), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-13210i, arg_0)), -vec2<i32>(var_0.x, var_0.x))), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 1i, 37812i, var_0.x), vec4<i32>(1i, var_0.x, 2147483647i, 19744i) ^ vec4<i32>(var_0.x, 0i, arg_0, arg_0)) >> (56070u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~13691u;
    global1 = 1f;
    global1 = -1903f;
    var var_1 = -611f;
    let var_2 = _wgslsmith_add_vec4_i32(abs(func_4(_wgslsmith_mod_i32(70881i, 2147483647i), func_1(Struct_1(vec2<bool>(true, false), vec4<i32>(-38268i, 2147483647i, 19851i, -44275i)), Struct_1(vec2<bool>(false, true), vec4<i32>(1i, 0i, 2147483647i, 1i)), vec4<f32>(937f, 1000f, -2046f, 165f)))) ^ -_wgslsmith_mult_vec4_i32(-vec4<i32>(-53507i, 0i, -11714i, 2147483647i), firstTrailingBit(vec4<i32>(-45478i, 2509i, -1i, -1i))), -(~(vec4<i32>(-1i) * -vec4<i32>(0i, 1i, -1i, 27600i))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(572f - 645f)))) * -974f);
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -984f);
    global1 = -1088f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, var_0, 1u), global0[_wgslsmith_index_u32(1u, 16u)])) << (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(41869u, 16u)]) << (4294967295u % 32u), 16u)] % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(271f, 153f, 166f, -1331f)))), ~_wgslsmith_mod_u32(u_input.b, 7382u), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.x, _wgslsmith_div_i32(var_2.x, -1i), _wgslsmith_add_i32(-1i, var_2.x)), vec3<i32>(~var_2.x, var_2.x, -33589i >> (var_0 % 32u))), var_2.wxx, var_2.xwz), vec3<u32>(u_input.d, _wgslsmith_add_u32(_wgslsmith_mult_u32(~var_0, var_0), 0u), var_0));
}

