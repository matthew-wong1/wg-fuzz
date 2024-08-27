struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, false, true, true, false);

var<private> global1: array<vec2<i32>, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> vec4<u32> {
    let var_0 = select(!vec4<bool>(true, all(vec2<bool>(true, true)) | any(vec4<bool>(global0[_wgslsmith_index_u32(48011u, 5u)], true, global0[_wgslsmith_index_u32(38121u, 5u)], false)), false, false), vec4<bool>(true, any(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, 36509u), 5u)], select(global0[_wgslsmith_index_u32(9397u, 5u)], global0[_wgslsmith_index_u32(2626u, 5u)], global0[_wgslsmith_index_u32(23146u, 5u)]))), any(!select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], true, global0[_wgslsmith_index_u32(3060u, 5u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(75074u, 5u)]), global0[_wgslsmith_index_u32(38261u, 5u)])), false), false);
    var var_1 = ~firstLeadingBit(vec4<u32>(~_wgslsmith_sub_u32(4294967295u, 38092u), _wgslsmith_mod_u32(~81u, _wgslsmith_div_u32(1u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), reverseBits(vec3<u32>(33895u, 52622u, 4294967295u))), 1u));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1000f))))));
    let var_3 = Struct_3(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x ^ 0u, ~var_1.x, 1u, ~0u), ~vec4<u32>(9419u, 0u, 1u, var_1.x) << (vec4<u32>(4294967295u, var_1.x, var_1.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(var_1.x, reverseBits(66682u), var_1.x, _wgslsmith_dot_vec2_u32(var_1.wy, var_1.xw)))));
    var_1 = var_3.a;
    return firstLeadingBit(vec4<u32>(1u, var_1.x, ~0u, 4290u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4) -> u32 {
    let var_0 = firstTrailingBit(func_3(u_input.b.x, firstTrailingBit(vec3<i32>(arg_1.b, 0i, arg_1.b)) << (min(vec3<u32>(52960u, 118401u, arg_1.e.a.x), vec3<u32>(0u, arg_1.e.a.x, 0u)) % vec3<u32>(32u)))) & countOneBits(vec4<u32>(~arg_1.e.a.x, firstLeadingBit(arg_1.e.a.x), 1u, _wgslsmith_dot_vec3_u32(arg_0.c.wyz, _wgslsmith_mult_vec3_u32(arg_1.e.a.xxz, vec3<u32>(6544u, arg_0.c.x, arg_0.b.a.x)))));
    global0 = array<bool, 5>();
    var var_1 = Struct_4(Struct_2(arg_1.a.a, Struct_1(~vec3<u32>(arg_0.b.a.x, 4294967295u, 16279u), select(!arg_0.a.b, arg_1.a.a.b, select(arg_1.a.b.b, vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a.a.a.x, 5u)], arg_1.a.a.c), false)), !(arg_0.a.b.x || global0[_wgslsmith_index_u32(var_0.x, 5u)])), arg_1.e.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.d, vec3<f32>(680f, -1000f, arg_0.d.x)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a.d.x, arg_0.d.x, 245f)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1314f, arg_1.d.x, 279f))))))), -(u_input.b.x | ~reverseBits(u_input.a.x)), arg_0.d.x, arg_1.a.d.yz, arg_1.e);
    var var_2 = arg_1;
    let var_3 = Struct_1(abs(vec3<u32>(_wgslsmith_add_u32(var_2.e.a.x, ~63323u), _wgslsmith_add_u32(~91427u, 0u), _wgslsmith_mult_u32(firstLeadingBit(0u), 59416u))), vec2<bool>(any(!(!vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(24285u, 5u)]))), var_2.a.b.b.x), all(select(!(!vec4<bool>(var_1.a.a.c, false, arg_1.a.a.c, arg_1.a.a.c)), select(!vec4<bool>(var_2.a.a.c, global0[_wgslsmith_index_u32(9277u, 5u)], var_2.a.b.c, global0[_wgslsmith_index_u32(var_1.e.a.x, 5u)]), select(vec4<bool>(arg_1.a.a.b.x, arg_1.a.b.b.x, true, global0[_wgslsmith_index_u32(0u, 5u)]), vec4<bool>(false, arg_1.a.a.b.x, false, true), vec4<bool>(var_2.a.b.c, false, true, var_2.a.b.c)), select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 5u)], arg_0.b.c, false, false), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b.a.x, 5u)], false, arg_0.a.b.x, false), arg_0.b.c)), select(!vec4<bool>(arg_1.a.a.c, true, arg_0.b.b.x, true), vec4<bool>(true, true, true, true), var_2.a.d.x > var_1.a.d.x))));
    return _wgslsmith_sub_u32(~0u, 63332u & (1u | min(4294967295u, var_3.a.x))) >> (_wgslsmith_clamp_u32(1u, ~(~_wgslsmith_dot_vec3_u32(var_1.a.c.xyz, arg_0.a.a)), var_1.a.b.a.x) % 32u);
}

fn func_1() -> Struct_4 {
    let var_0 = reverseBits(-2147483647i);
    global0 = array<bool, 5>();
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(~((49107u >> (1u % 32u)) | func_2(Struct_2(Struct_1(vec3<u32>(35937u, 4294967295u, 1974u), vec2<bool>(false, true), true), Struct_1(vec3<u32>(31606u, 4294967295u, 1u), vec2<bool>(global0[_wgslsmith_index_u32(0u, 5u)], true), false), vec4<u32>(4294967295u, 1u, 4294967295u, 1143u), vec3<f32>(504f, -807f, 675f)), Struct_4(Struct_2(Struct_1(vec3<u32>(1u, 0u, 52627u), vec2<bool>(true, true), global0[_wgslsmith_index_u32(8821u, 5u)]), Struct_1(vec3<u32>(36528u, 0u, 104251u), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 5u)]), global0[_wgslsmith_index_u32(1u, 5u)]), vec4<u32>(30525u, 4294967295u, 128554u, 0u), vec3<f32>(664f, 1571f, -207f)), u_input.a.x, -1117f, vec2<f32>(-364f, 417f), Struct_3(vec4<u32>(71250u, 139546u, 92433u, 4294967295u)))))), 5u)];
    var var_2 = u_input.a.x;
    let var_3 = countOneBits(_wgslsmith_mod_vec2_i32(u_input.b.ww, max(vec2<i32>(2147483647i, u_input.b.x) & vec2<i32>(-22962i, 2147483647i), u_input.b.zx)));
    return Struct_4(Struct_2(Struct_1(vec3<u32>(0u, _wgslsmith_div_u32(1u, 20019u), 1u), select(select(vec2<bool>(global0[_wgslsmith_index_u32(8485u, 5u)], global0[_wgslsmith_index_u32(20725u, 5u)]), vec2<bool>(global0[_wgslsmith_index_u32(14581u, 5u)], false), global0[_wgslsmith_index_u32(1u, 5u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 5u)]), any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(37584u, 5u)], global0[_wgslsmith_index_u32(46305u, 5u)]))), !all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], true, true))), Struct_1(vec3<u32>(select(0u, 69255u, true), 1u, ~0u), !(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false)), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 36486u, 4294967295u, 4294967295u), vec4<u32>(31387u, 0u, 75620u, 32278u)), 5u)], any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)])), global0[_wgslsmith_index_u32(min(30474u, 47877u), 5u)])), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(9832u, 7722u)), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 12821u), _wgslsmith_dot_vec4_u32(vec4<u32>(6194u, 9152u, 5767u, 0u), vec4<u32>(49971u, 23728u, 2561u, 11697u))), ~1u), vec3<f32>(_wgslsmith_f_op_f32(floor(-2347f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1424f, 526f), _wgslsmith_f_op_f32(max(-249f, -682f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(671f)))))), -5048i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1140f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-228f, -1153f), vec2<f32>(-411f, 1000f), !vec2<bool>(global0[_wgslsmith_index_u32(18007u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-467f, 646f)), vec2<f32>(180f, -1952f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1267f, 176f) * vec2<f32>(-386f, -454f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-231f, -1506f))), select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(48581u, 5u)]), vec2<bool>(true, true), true), !vec2<bool>(true, global0[_wgslsmith_index_u32(39054u, 5u)]), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], false)))), select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], false), vec2<bool>(global0[_wgslsmith_index_u32(5271u, 5u)], true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], false)), select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false))), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 5u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(14647u, 5u)], false))))), Struct_3(vec4<u32>(_wgslsmith_mod_u32(abs(9924u), max(18010u, 43510u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 1u, 63105u, 0u)), ~1u, ~(~3988u))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: i32) -> vec4<u32> {
    global0 = array<bool, 5>();
    let var_0 = Struct_3(~vec4<u32>(1u, arg_1.a.x, ~(~4294967295u), 72422u << (arg_1.a.x % 32u)));
    var var_1 = func_1().e.a.x;
    global1 = array<vec2<i32>, 22>();
    var var_2 = arg_0.a;
    return _wgslsmith_mult_vec4_u32(~var_0.a, ~((~vec4<u32>(6209u, arg_0.a.c.x, var_0.a.x, arg_0.a.b.a.x) | max(var_2.c, var_2.c)) & ~(var_2.c ^ var_0.a)));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_2) -> u32 {
    global1 = array<vec2<i32>, 22>();
    var var_0 = true;
    var var_1 = arg_1.x;
    var_0 = !all(!(!select(vec3<bool>(false, false, arg_2.a.c), vec3<bool>(arg_2.a.c, false, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 5u)], true, global0[_wgslsmith_index_u32(arg_1.x, 5u)]))));
    global1 = array<vec2<i32>, 22>();
    return _wgslsmith_dot_vec4_u32(func_3(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mod_i32(min(29704i, u_input.a.x), 1i)), countOneBits(reverseBits(vec3<i32>(-2147483647i, u_input.a.x, 0i) >> (arg_1.zzy % vec3<u32>(32u))))), vec4<u32>(~_wgslsmith_clamp_u32(1u, func_4(Struct_4(Struct_2(Struct_1(arg_2.c.wwz, vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 5u)], true), true), Struct_1(arg_0.wwx, arg_2.a.b, arg_2.b.b.x), arg_2.c, vec3<f32>(arg_2.d.x, 3607f, arg_2.d.x)), 42817i, -296f, arg_2.d.yz, Struct_3(arg_1)), Struct_3(vec4<u32>(arg_1.x, arg_0.x, 73632u, 4294967295u)), u_input.b.xzw, u_input.b.x).x, arg_2.a.a.x), arg_2.b.a.x, ~(~arg_0.x >> (arg_2.a.a.x % 32u)), _wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(arg_1.x, arg_2.a.a.x)), vec2<u32>(arg_1.x, 0u)) << (~(~arg_1.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(17502u, 5u)] || (_wgslsmith_clamp_i32(u_input.b.x, -2147483647i, reverseBits(_wgslsmith_div_i32(u_input.a.x, -1198i))) <= u_input.b.x);
    let var_1 = _wgslsmith_clamp_u32(3066u, ~func_5(func_4(func_1(), func_1().e, max(vec3<i32>(u_input.a.x, 0i, -6675i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x), func_1().a.c, Struct_2(Struct_1(vec3<u32>(0u, 60883u, 39389u), vec2<bool>(global0[_wgslsmith_index_u32(27006u, 5u)], false), true), Struct_1(vec3<u32>(15829u, 0u, 20677u), vec2<bool>(false, true), global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<u32>(0u, 0u, 1u, 1u), _wgslsmith_div_vec3_f32(vec3<f32>(-174f, 914f, -524f), vec3<f32>(-1490f, -606f, -371f)))), func_2(func_1().a, func_1()));
    var var_2 = var_0 & var_0;
    let var_3 = ~(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_1, var_1, 0u), vec3<u32>(22414u, 4294967295u, var_1))) ^ (vec3<u32>(4294967295u, 1u, 5040u) | _wgslsmith_sub_vec3_u32(vec3<u32>(var_1, var_1, 1u), vec3<u32>(var_1, var_1, 4294967295u)))) << (vec3<u32>(1u, var_1 >> (var_1 % 32u), 1u) % vec3<u32>(32u));
    global1 = array<vec2<i32>, 22>();
    global0 = array<bool, 5>();
    global1 = array<vec2<i32>, 22>();
    global1 = array<vec2<i32>, 22>();
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -197f) + -614f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -945f), func_1().c) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(583f)))))));
}

