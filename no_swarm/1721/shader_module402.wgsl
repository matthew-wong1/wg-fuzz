struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17>;

var<private> global1: f32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> u32 {
    let var_0 = arg_1;
    global1 = arg_3;
    global1 = _wgslsmith_f_op_f32(arg_1.d.b.x * 1624f);
    global1 = 1000f;
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_1.a.b);
    return arg_0.d.a.x;
}

fn func_2() -> i32 {
    var var_0 = ~firstTrailingBit((_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, 11382i)) >> ((vec3<u32>(1u, 31815u, 0u) | global0[_wgslsmith_index_u32(u_input.b, 17u)]) % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_add_i32(u_input.c, u_input.c), _wgslsmith_div_i32(-49000i, -15801i), ~(-76338i)));
    let var_1 = vec2<u32>(u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(firstTrailingBit(u_input.b), 0u, func_3(Struct_2(Struct_1(vec4<u32>(11988u, u_input.b, 0u, u_input.a), vec3<f32>(176f, -320f, -678f), vec2<bool>(true, true)), Struct_1(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.b), vec3<f32>(-981f, -1655f, -212f), vec2<bool>(true, false)), true, Struct_1(vec4<u32>(76475u, u_input.b, 57231u, 32856u), vec3<f32>(1000f, 435f, -1000f), vec2<bool>(true, false))), Struct_2(Struct_1(vec4<u32>(u_input.b, u_input.b, 14594u, 1u), vec3<f32>(1601f, -1000f, -1756f), vec2<bool>(false, false)), Struct_1(vec4<u32>(u_input.a, 0u, 22523u, 4294967295u), vec3<f32>(-689f, -301f, -313f), vec2<bool>(true, false)), true, Struct_1(vec4<u32>(u_input.a, 54179u, 4294967295u, 1u), vec3<f32>(-203f, 443f, 589f), vec2<bool>(false, false))), var_0.x, 1139f), 8665u), ~(~abs(vec4<u32>(u_input.b, 0u, 1u, u_input.a)))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(~max(vec4<u32>(87931u, 93785u, u_input.b, 3378u), vec4<u32>(u_input.d, 85122u, 48215u, 34025u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(21431u, var_1.x, 9070u, 4788u), vec4<u32>(2897u, var_1.x, 30940u, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(52952u, 13262u, 4294967295u, u_input.a), vec4<u32>(var_1.x, 18426u, 4294967295u, u_input.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(215f, 547f, -576f))), vec2<bool>(true, true)), Struct_1(vec4<u32>(firstTrailingBit(min(var_1.x, 42959u)), 0u, 4294967295u, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(1u, 17u)], vec3<u32>(49727u, 2618u, 3180u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1773f, -212f, -2294f), vec3<f32>(-3584f, 800f, -792f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(716f, -1391f, 3404f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-571f, -1287f, -1000f)))), vec2<bool>(false, false)), true, Struct_1(~_wgslsmith_sub_vec4_u32(~vec4<u32>(31737u, 11211u, u_input.a, 38400u), ~vec4<u32>(0u, var_1.x, 0u, 4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(895f, -794f, 831f), vec3<f32>(1260f, 681f, -1180f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 488f, -441f) * vec3<f32>(1f, 1f, 1f))), vec2<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true)), true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_2.d.b.zx)))))))));
    let var_4 = min(~(-_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -58883i), var_0.zx)), reverseBits(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(u_input.c, var_0.x)), abs(var_0.yx)))) ^ select(-vec2<i32>(-38220i, 27794i) >> (~reverseBits(var_2.d.a.zy) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.c, 15494i), -vec2<i32>(var_0.x, 22197i)), select(var_2.d.c, var_2.b.c, var_2.d.c));
    return -16769i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(ceil(-1090f));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1.b.xz))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-315f - arg_1.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.b.x, 180f), arg_1.b.zy)) + _wgslsmith_f_op_vec2_f32(floor(arg_1.b.xy))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_1.b.xx)))));
    var_0 = -761f;
    let var_2 = arg_0.x ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~arg_0 ^ vec4<i32>(arg_0.x, 28942i, u_input.c, -48781i), vec4<i32>(_wgslsmith_sub_i32(33580i, u_input.c), -1i, i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(122i, 12486i, u_input.c, arg_0.x)))), arg_0.x, arg_0.x);
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-736f + 1236f)));
    return Struct_2(arg_1, Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 699f, 215f))), vec3<f32>(1079f, -998f, 575f), select(vec3<bool>(false, true, true), vec3<bool>(true, true, arg_1.c.x), arg_1.c.x)))), vec2<bool>(false & any(vec3<bool>(true, true, arg_1.c.x)), arg_1.c.x)), arg_1.c.x, Struct_1(arg_1.a, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-243f, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -776f)), _wgslsmith_div_f32(-1009f, _wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(ceil(var_1.x)))), arg_1.c));
}

fn func_1() -> Struct_2 {
    global0 = array<vec3<u32>, 17>();
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(-(~_wgslsmith_sub_i32(u_input.c, u_input.c)), max(-2355i, -2147483647i)), 1i);
    var var_1 = vec4<u32>(19197u, u_input.d, firstLeadingBit(~(51185u << (~u_input.d % 32u))), ~min(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(34307u, u_input.d, u_input.d), global0[_wgslsmith_index_u32(u_input.b, 17u)])) >> (86694u % 32u));
    return func_4(firstLeadingBit(abs(vec4<i32>(u_input.c >> (u_input.b % 32u), func_2(), -u_input.c, -18095i ^ u_input.c))), Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, var_1.x, 4294967295u, var_1.x) & vec4<u32>(var_1.x, 49473u, 48630u, var_1.x), min(vec4<u32>(4294967295u, u_input.a, u_input.b, u_input.d), vec4<u32>(18350u, 1u, 33345u, var_1.x))), ~vec4<u32>(u_input.b, 4294967295u, u_input.b, 44997u)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-199f, 260f, 623f), vec3<f32>(-796f, -2852f, 1504f), vec3<bool>(false, true, false))))))), vec2<bool>(true, true)));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: i32) -> Struct_2 {
    let var_0 = arg_0 >> (1u % 32u);
    var var_1 = arg_1.d;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(735f)));
    let var_2 = select(vec4<bool>((!var_1.c.x | false) & (any(arg_1.a.c) | !arg_2.x), false, true, arg_1.d.c.x), vec4<bool>(all(!select(vec3<bool>(arg_1.b.c.x, false, arg_1.d.c.x), vec3<bool>(arg_2.x, true, var_1.c.x), true)), !(!var_1.c.x), var_1.c.x, arg_1.a.c.x), !(!(!select(vec4<bool>(false, var_1.c.x, false, arg_1.d.c.x), vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(var_1.c.x, true, false, true)))));
    global0 = array<vec3<u32>, 17>();
    return func_4(countOneBits(~vec4<i32>(_wgslsmith_clamp_i32(6109i, 0i, -1i), arg_3, arg_3, u_input.c)), func_4(min(vec4<i32>(0i, -2147483647i, 9011i, u_input.c) << (vec4<u32>(var_1.a.x, arg_1.a.a.x, var_0, arg_0) % vec4<u32>(32u)), firstTrailingBit(abs(vec4<i32>(arg_3, arg_3, arg_3, arg_3)))), Struct_1(vec4<u32>(8463u, ~u_input.b, _wgslsmith_div_u32(0u, arg_1.a.a.x), 4023u), vec3<f32>(_wgslsmith_f_op_f32(floor(-1673f)), _wgslsmith_f_op_f32(abs(1073f)), arg_1.b.b.x), arg_1.d.c)).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(4294967295u, func_1(), select(select(vec2<bool>(any(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, false, false))), vec2<bool>(true, false), vec2<bool>(true, true)), !(!func_1().a.c), false), u_input.c);
    let var_1 = ~_wgslsmith_mod_vec4_i32(countOneBits(abs(vec4<i32>(-10271i, 2147483647i, u_input.c, -1i))), vec4<i32>(1i, -_wgslsmith_clamp_i32(u_input.c, 0i, 20571i), -_wgslsmith_mod_i32(9456i, u_input.c), i32(-1i) * -2147483647i));
    let var_2 = func_5(~u_input.d, func_4(vec4<i32>(select(-2147483647i, _wgslsmith_add_i32(u_input.c, var_1.x), func_5(0u, Struct_2(var_0.d, var_0.d, var_0.a.c.x, var_0.a), vec2<bool>(var_0.d.c.x, true), u_input.c).b.c.x), -abs(u_input.c), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -34863i, var_1.x, 1i), var_1), var_1), max(~u_input.c, 1i)), Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(var_0.a.a, vec4<u32>(34067u, 1u, var_0.b.a.x, var_0.d.a.x)), var_0.b.a), var_0.a.b, vec2<bool>(!var_0.d.c.x, true))), vec2<bool>(all(vec3<bool>(var_0.c, var_0.b.c.x, var_0.a.c.x)), true), -12958i);
    global0 = array<vec3<u32>, 17>();
    global1 = _wgslsmith_f_op_f32(sign(1502f));
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_f32(-func_5(_wgslsmith_clamp_u32(_wgslsmith_add_u32(475u, u_input.b), u_input.d, u_input.b) ^ 0u, func_1(), vec2<bool>(true, true), min(_wgslsmith_div_i32(-11814i, var_3.x), var_1.x | 2147483647i) | -u_input.c).b.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(_wgslsmith_sub_u32(35218u, u_input.a), abs(~var_0.b.a.x), _wgslsmith_sub_u32(~90592u, var_2.a.a.x), countOneBits(u_input.d))), ~abs(~_wgslsmith_clamp_vec3_u32(var_0.b.a.xyx, global0[_wgslsmith_index_u32(25029u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)])), _wgslsmith_add_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, var_2.d.a.x), var_0.a.a.xxz), u_input.a), var_0.a.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.x, 2521f, var_2.a.b.x, 1431f) + vec4<f32>(var_0.b.b.x, var_0.b.b.x, -398f, -464f)), vec4<f32>(360f, 1577f, var_2.b.b.x, -1000f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.d.b.x, var_2.b.b.x, var_0.a.b.x, 1042f))), vec4<f32>(var_2.b.b.x, 1069f, var_2.a.b.x, -627f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.b.x, 1577f, var_0.b.b.x, -1324f)))))))));
}

