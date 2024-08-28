struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 32> = array<i32, 32>(i32(-2147483648), 1i, -3010i, 2147483647i, 2738i, 1i, 2147483647i, i32(-2147483648), i32(-2147483648), 1i, 2147483647i, 6749i, 14974i, i32(-2147483648), -2742i, -28132i, 2147483647i, 40287i, i32(-2147483648), -49987i, 16576i, 2147483647i, 48601i, -22109i, -16804i, i32(-2147483648), 0i, 15008i, 2147483647i, 0i, 0i, 44121i);

var<private> global2: array<vec2<f32>, 31>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    var var_0 = Struct_5(90022u, Struct_2(all(arg_1), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b, 645f, -2147f, arg_0.b), vec4<f32>(449f, arg_0.b, arg_0.b, 384f)), vec4<f32>(arg_0.b, -163f, arg_0.b, 467f)))), ~vec3<u32>(arg_0.c.x, u_input.a.x, arg_0.c.x), global2[_wgslsmith_index_u32(arg_0.c.x, 31u)], arg_0), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(114f, -1000f, 455f), vec3<f32>(-326f, 1104f, 1937f))), vec3<f32>(638f, -660f, arg_0.b), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1010f, arg_0.b, -2209f))) * vec3<f32>(arg_0.b, 1862f, arg_0.b)))), !((~u_input.a.x & arg_0.c.x) < _wgslsmith_mod_u32(arg_0.c.x, ~arg_0.c.x)));
    var var_1 = Struct_3(~1i, var_0.b.b, Struct_2((_wgslsmith_f_op_f32(var_0.b.d.x * var_0.c.x) == -1217f) & true, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.e.b), _wgslsmith_f_op_f32(-arg_0.b), 125f, 1000f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(var_0.b.b, vec4<f32>(873f, var_0.c.x, var_0.c.x, -984f), vec4<bool>(var_0.d, arg_1.x, true, false))))))), ~(vec3<u32>(var_0.a, 44968u, u_input.a.x) & var_0.b.c), var_0.c.xy, Struct_1(arg_0.a, 423f, arg_0.c)));
    var var_2 = Struct_5(1084u, Struct_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.d.x), _wgslsmith_f_op_f32(var_1.c.b.x - arg_0.b), _wgslsmith_f_op_f32(2059f + 1035f), _wgslsmith_f_op_f32(var_1.b.x + -1014f))), vec3<u32>(reverseBits(_wgslsmith_mult_u32(26442u, 3123u)), 29997u, _wgslsmith_add_u32(arg_0.c.x, ~var_1.c.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -309f))) * var_0.c.xz), Struct_1(1i, _wgslsmith_f_op_f32(sign(-1723f)), ~(u_input.a ^ var_0.b.e.c))), vec3<f32>(-1274f, var_1.b.x, 1f), any(vec2<bool>(var_1.c.a, true)));
    var var_3 = vec4<f32>(var_2.b.b.x, var_1.b.x, var_2.b.b.x, -858f);
    let var_4 = vec2<u32>(~(~13439u), 86460u);
    return abs(arg_0.a);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_3) -> f32 {
    let var_0 = ~_wgslsmith_div_i32(firstLeadingBit(25703i), i32(-1i) * -10234i);
    global0 = arg_2.a;
    global1 = array<i32, 32>();
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_add_i32(-1852i, 15399i), func_3(arg_0.c.e, !vec4<bool>(arg_2.c.a, false, arg_2.c.a, arg_2.c.a)), -1i), min(~firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 32u)], -1i, arg_1.x, var_0)), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(5845i, var_0), arg_1.x, 11990i))) ^ (vec4<i32>(-1i) * -vec4<i32>(~arg_2.c.e.a, arg_2.c.e.a, _wgslsmith_dot_vec3_i32(vec3<i32>(43077i, 1i, arg_0.a), vec3<i32>(arg_0.c.e.a, arg_0.c.e.a, arg_0.c.e.a)), _wgslsmith_mod_i32(arg_1.x, 8124i)));
    global1 = array<i32, 32>();
    return -1046f;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = Struct_5(arg_1.c.x, arg_1, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b.ywx), arg_1.b.yxz), arg_1.a);
    global1 = array<i32, 32>();
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.b.x))) <= -808f, true);
    global2 = array<vec2<f32>, 31>();
    var var_2 = select(~reverseBits(vec4<u32>(4294967295u, arg_1.e.c.x, arg_1.e.c.x, 4294967295u) ^ vec4<u32>(115557u, arg_1.c.x, arg_1.e.c.x, 36460u)), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(74929u, arg_1.c.x, u_input.b, var_0.b.e.c.x), vec4<u32>(var_0.b.e.c.x, 1u, 7394u, 11617u), vec4<u32>(97533u, u_input.a.x, 50582u, 96383u)), max(vec4<u32>(arg_1.e.c.x, u_input.b, 13905u, arg_1.e.c.x), vec4<u32>(u_input.b, var_0.a, 1u, 6099u))), _wgslsmith_div_u32(abs(62906u), var_0.b.c.x), countOneBits(var_0.b.c.x), ~firstLeadingBit(4294967295u)), !(!arg_0)) >> (countOneBits(~vec4<u32>(arg_1.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.e.c.x, var_0.b.e.c.x, u_input.b, u_input.a.x), vec4<u32>(46865u, 67682u, 0u, arg_1.c.x)), ~18434u, _wgslsmith_add_u32(var_0.a, 67215u))) % vec4<u32>(32u));
    return Struct_3(countOneBits(-global1[_wgslsmith_index_u32(~var_2.x, 32u)]), var_0.b.b, arg_1);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = arg_1.c;
    var var_1 = Struct_5(~arg_3.c.x & select(~arg_0.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.c.x, arg_1.c.e.c.x, u_input.a.x, 1u), vec4<u32>(arg_2.c.x, arg_0.x, arg_1.c.c.x, 41497u)), ~6661u, ~arg_1.c.e.c.x), !var_0.a), Struct_2(any(!(!vec4<bool>(false, arg_1.c.a, arg_1.c.a, var_0.a))), func_4(!select(vec4<bool>(false, var_0.a, arg_1.c.a, false), vec4<bool>(true, true, arg_1.c.a, false), arg_1.c.a), arg_1.c).b, _wgslsmith_sub_vec3_u32(min(arg_0, vec3<u32>(1u, var_0.c.x, arg_3.c.x)), var_0.c), global2[_wgslsmith_index_u32(4294967295u, 31u)], func_4(select(vec4<bool>(true, true, arg_1.c.a, arg_1.c.a), !vec4<bool>(true, var_0.a, true, false), arg_3.b > -102f), Struct_2(arg_0.x != 18426u, _wgslsmith_div_vec4_f32(vec4<f32>(777f, 741f, arg_1.b.x, arg_2.b), vec4<f32>(228f, 1234f, 1000f, arg_1.b.x)), reverseBits(arg_1.c.c), _wgslsmith_div_vec2_f32(arg_1.b.yy, vec2<f32>(-963f, 963f)), func_4(vec4<bool>(var_0.a, true, false, false), arg_1.c).c.e)).c.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.xxw * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.b.ywz + arg_1.c.b.zyz), vec3<f32>(-683f, -762f, -423f))))), arg_1.c.a);
    let var_2 = Struct_4(Struct_2(arg_1.c.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2813f))), func_4(select(vec4<bool>(var_0.a, arg_1.c.a, arg_1.c.a, false), vec4<bool>(arg_1.c.a, true, var_0.a, false), vec4<bool>(true, var_1.d, false, var_0.a)), Struct_2(var_0.a, vec4<f32>(arg_2.b, -1000f, arg_2.b, 1278f), vec3<u32>(var_0.c.x, arg_2.c.x, var_0.e.c.x), var_1.b.d, arg_1.c.e)).c.b.x, _wgslsmith_f_op_f32(abs(arg_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(955f + arg_1.b.x) + _wgslsmith_f_op_f32(abs(549f)))), ~_wgslsmith_mult_vec3_u32(arg_0, vec3<u32>(1u, 41076u, 0u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f * -472f)), var_1.c.x), func_4(!(!vec4<bool>(false, false, var_1.d, arg_1.c.a)), func_4(select(vec4<bool>(arg_1.c.a, arg_1.c.a, var_1.b.a, arg_1.c.a), vec4<bool>(var_1.b.a, var_0.a, true, true), true), var_1.b).c).c.e));
    var var_3 = _wgslsmith_mod_i32(min(firstLeadingBit(arg_3.a), 2147483647i & var_2.a.e.a) & -firstLeadingBit(var_0.e.a), -2147483647i) & _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_1.a, global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(arg_2.c.x, 32u)], var_2.a.e.a), select(vec4<i32>(1i, 2147483647i, var_0.e.a, var_1.b.e.a), vec4<i32>(var_0.e.a, var_1.b.e.a, 1i, var_0.e.a), vec4<bool>(true, var_0.a, var_2.a.a, arg_1.c.a))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(arg_2.a, -25844i, var_1.b.e.a, -15743i), firstTrailingBit(vec4<i32>(-1i, arg_1.a, 43248i, arg_1.c.e.a))), vec4<i32>(-42997i, select(24423i, var_0.e.a, var_0.a), ~arg_1.c.e.a, arg_2.a)));
    var var_4 = max(~((vec3<i32>(-2019i, -9384i, 36371i) << (vec3<u32>(var_2.a.e.c.x, 28200u, var_0.c.x) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(21447u, var_2.a.c.x, u_input.b), vec3<u32>(1u, u_input.b, 1u) << (var_0.c % vec3<u32>(32u))) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_i32(~firstTrailingBit(vec3<i32>(var_1.b.e.a, 0i, var_0.e.a)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.a, 1i, 0i), vec3<i32>(2147483647i, arg_1.a, global1[_wgslsmith_index_u32(0u, 32u)]) | vec3<i32>(-1i, 1i, arg_1.a)), vec3<i32>(_wgslsmith_mod_i32(var_0.e.a, var_1.b.e.a), _wgslsmith_dot_vec3_i32(vec3<i32>(12516i, arg_2.a, 2147483647i), vec3<i32>(0i, 2147483647i, 5583i)), -2147483647i)));
    return reverseBits(countOneBits(~_wgslsmith_add_vec4_u32(vec4<u32>(7250u, var_2.a.c.x, 0u, 48070u), ~vec4<u32>(var_2.a.e.c.x, var_0.c.x, var_2.a.c.x, var_0.e.c.x))));
}

fn func_1(arg_0: vec3<u32>) -> vec4<bool> {
    var var_0 = -781f;
    var_0 = -690f;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1838f, 719f) + vec2<f32>(-719f, 853f)) - vec2<f32>(_wgslsmith_f_op_f32(abs(-747f)), _wgslsmith_div_f32(1351f, 879f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1800f, 168f), vec2<f32>(3102f, -425f))) - _wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(u_input.b, 31u)], vec2<f32>(-836f, -571f)))))));
    let var_2 = func_5(arg_0, func_4(vec4<bool>(true, global1[_wgslsmith_index_u32(~arg_0.x, 32u)] <= global1[_wgslsmith_index_u32(~arg_0.x, 32u)], var_1.x <= var_1.x, !any(vec4<bool>(false, true, true, false))), Struct_2(all(vec3<bool>(false, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(381f, var_1.x, -234f, -1000f)))), ~vec3<u32>(12831u, u_input.b, u_input.b), vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(global1[_wgslsmith_index_u32(38192u, 32u)], vec4<f32>(var_1.x, 1000f, 586f, -495f), Struct_2(false, vec4<f32>(504f, var_1.x, 649f, var_1.x), arg_0, vec2<f32>(var_1.x, var_1.x), Struct_1(-5414i, var_1.x, u_input.a))), vec2<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 32u)]), Struct_3(2147483647i, vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), Struct_2(false, vec4<f32>(-1068f, 348f, var_1.x, 137f), vec3<u32>(1u, 55918u, arg_0.x), global2[_wgslsmith_index_u32(arg_0.x, 31u)], Struct_1(global1[_wgslsmith_index_u32(16878u, 32u)], var_1.x, arg_0.zz))))), var_1.x), Struct_1(global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.x), 32u)], _wgslsmith_f_op_f32(-var_1.x), ~vec2<u32>(1787u, 0u)))), Struct_1(_wgslsmith_div_i32(firstTrailingBit(0i) | _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(arg_0.x, 32u)], global1[_wgslsmith_index_u32(u_input.b, 32u)]), firstLeadingBit(29047i) | global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 32u)]), 811f, countOneBits(~abs(u_input.a))), func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, all(vec3<bool>(true, false, true)), true), vec4<bool>(true, true, true, true)), Struct_2(true, vec4<f32>(348f, -1000f, _wgslsmith_f_op_f32(select(-1000f, 190f, true)), -150f), _wgslsmith_div_vec3_u32(~arg_0, arg_0), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(arg_0.x, 31u)]))), func_4(vec4<bool>(true, true, true, true), Struct_2(true, vec4<f32>(var_1.x, 457f, var_1.x, 897f), vec3<u32>(u_input.b, u_input.b, u_input.a.x), vec2<f32>(var_1.x, var_1.x), Struct_1(2147483647i, var_1.x, u_input.a))).c.e)).c.e);
    let var_3 = ~vec2<u32>(~(~21752u), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(2758u, 30931u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), u_input.a)));
    return vec4<bool>(true, false, false, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(any(vec4<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, false, false)), true, any(vec4<bool>(false, false, true, true)))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -960f))) > 1f, false);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-488f)) * _wgslsmith_f_op_f32(f32(-1f) * -703f)) + 1022f), _wgslsmith_f_op_f32(270f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2517f) * _wgslsmith_f_op_f32(f32(-1f) * -338f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(-1281f, -1000f, var_0.x))));
    var_0 = select(func_1(~(~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), select(vec4<bool>(true, var_0.x, true, true || (var_0.x || false)), !select(select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(true, true, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, true)), vec4<bool>(false, var_0.x, var_0.x, true), !vec4<bool>(true, var_0.x, true, true)), vec4<bool>(func_1(vec3<u32>(u_input.b, 29512u, 4294967295u)).x, false, var_0.x, all(var_0.zw))), func_1(_wgslsmith_add_vec3_u32(func_4(vec4<bool>(var_0.x, true, false, var_0.x), Struct_2(var_0.x, vec4<f32>(var_1.x, 780f, 112f, var_1.x), vec3<u32>(1u, u_input.a.x, 4294967295u), global2[_wgslsmith_index_u32(u_input.b, 31u)], Struct_1(0i, var_1.x, u_input.a))).c.c >> (vec3<u32>(62874u, u_input.b, 84785u) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, u_input.a.x, 0u))).x);
    let var_2 = -global1[_wgslsmith_index_u32(func_4(!vec4<bool>(false, true, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), false), Struct_2(func_4(select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), false), func_4(vec4<bool>(var_0.x, var_0.x, true, var_0.x), Struct_2(var_0.x, vec4<f32>(var_1.x, -300f, 1880f, 1258f), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), vec2<f32>(504f, var_1.x), Struct_1(-1i, var_1.x, vec2<u32>(u_input.b, u_input.b)))).c).c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, -440f, var_1.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -381f, var_1.x, 890f), vec4<f32>(var_1.x, var_1.x, -754f, var_1.x))), ~(~vec3<u32>(41595u, 0u, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-370f, 2025f)))), func_4(!vec4<bool>(false, false, false, var_0.x), Struct_2(true, vec4<f32>(-831f, var_1.x, var_1.x, 135f), vec3<u32>(u_input.b, u_input.b, u_input.a.x), var_1.zy, Struct_1(-2147483647i, 271f, vec2<u32>(21986u, u_input.a.x)))).c.e)).c.e.c.x, 32u)];
    var var_3 = Struct_3(func_4(func_1(vec3<u32>(abs(u_input.b), firstLeadingBit(u_input.a.x), u_input.a.x)), Struct_2(_wgslsmith_clamp_i32(-2147483647i, 30728i, global1[_wgslsmith_index_u32(1u, 32u)]) < var_2, vec4<f32>(_wgslsmith_f_op_f32(floor(124f)), -956f, _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(abs(585f))), _wgslsmith_mod_vec3_u32(func_4(vec4<bool>(true, var_0.x, true, var_0.x), Struct_2(var_0.x, vec4<f32>(-818f, var_1.x, var_1.x, var_1.x), vec3<u32>(71326u, u_input.a.x, 0u), vec2<f32>(var_1.x, 949f), Struct_1(2147483647i, var_1.x, vec2<u32>(55749u, 4294967295u)))).c.c, ~vec3<u32>(8638u, 41443u, 35924u)), vec2<f32>(_wgslsmith_f_op_f32(-1095f - var_1.x), var_1.x), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 2147483647i), vec3<i32>(-2147483647i, var_2, var_2)), _wgslsmith_f_op_f32(var_1.x * var_1.x), vec2<u32>(u_input.b, 40960u)))).c.e.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1231f, 1368f, _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(-var_1.x)))), Struct_2(false, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1021f), var_1.x, _wgslsmith_f_op_f32(-var_1.x)) - vec4<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(floor(var_1.x)), 256f)), select(vec3<u32>(~1u, ~u_input.b, reverseBits(0u)), vec3<u32>(select(u_input.b, u_input.a.x, false), ~u_input.a.x, ~u_input.a.x), -688f > var_1.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, -213f), vec2<f32>(var_1.x, var_1.x))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, var_1.x), var_0.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, var_1.x), global2[_wgslsmith_index_u32(u_input.a.x, 31u)])))))), func_4(!vec4<bool>(var_0.x, var_0.x, true, false), Struct_2(true, vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), abs(vec3<u32>(u_input.a.x, 1u, 0u)), global2[_wgslsmith_index_u32(20597u, 31u)], func_4(vec4<bool>(true, var_0.x, true, var_0.x), Struct_2(true, vec4<f32>(var_1.x, 1175f, -587f, var_1.x), vec3<u32>(36068u, 4294967295u, u_input.a.x), vec2<f32>(-277f, 1560f), Struct_1(30226i, -737f, vec2<u32>(0u, 1u)))).c.e)).c.e));
    var var_4 = Struct_4(func_4(vec4<bool>(all(vec2<bool>(var_3.c.a, true)) || var_0.x, var_0.x, true, true && var_3.c.a), func_4(vec4<bool>(all(vec4<bool>(var_3.c.a, var_3.c.a, true, false)), any(vec4<bool>(true, var_3.c.a, var_0.x, false)), var_3.c.a, any(var_0.xy)), Struct_2(all(vec4<bool>(var_3.c.a, var_3.c.a, false, var_0.x)), _wgslsmith_f_op_vec4_f32(-var_3.c.b), var_3.c.c, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), u_input.a), 31u)], var_3.c.e)).c).c);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(vec4<bool>(!var_0.x, var_4.a.a, var_3.c.a, var_4.a.a), var_4.a).c.e.c.x);
}

