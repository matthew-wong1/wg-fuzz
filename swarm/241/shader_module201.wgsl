struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
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

var<private> global0: array<bool, 8> = array<bool, 8>(true, true, true, true, true, true, false, true);

var<private> global1: vec3<f32> = vec3<f32>(366f, -1487f, 148f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: i32) -> vec3<u32> {
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(arg_0)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-762f, global1.x, arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-492f, arg_0.x, -563f) * vec3<f32>(-1399f, global1.x, arg_0.x))))))), !(!select(select(vec2<bool>(true, true), vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1)), vec2<bool>(true, true), true)), -u_input.b.zz);
    var var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(65450u, 15412u, u_input.a, u_input.a), vec4<u32>(84294u, u_input.a, 4324u, 23199u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(40264u, 39769u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 19674u)), (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, 15291u, u_input.a, u_input.a)) >> (reverseBits(vec4<u32>(u_input.a, 0u, 50181u, u_input.a)) % vec4<u32>(32u))), 8u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1162f, 137f, arg_0.x)) - var_0.b), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 8u)]), !var_0.c, select(var_0.c, vec2<bool>(arg_1, true), !vec2<bool>(arg_1, true))), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.ww, ~var_0.d), vec2<i32>(~var_0.d.x, -1i))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~u_input.a), 8u)];
    var var_3 = select(!vec2<bool>(u_input.b.x < -var_1.a.d.x, -800f == global1.x), var_1.a.c, var_1.a.c);
    global1 = var_1.a.b;
    return _wgslsmith_sub_vec3_u32(~firstLeadingBit(~vec3<u32>(u_input.a, u_input.a, 2958u)) & ~reverseBits(vec3<u32>(u_input.a, u_input.a, 578u) >> (vec3<u32>(u_input.a, u_input.a, 3913u) % vec3<u32>(32u))), ~vec3<u32>(~4294967295u, ~83874u, 19820u));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = array<bool, 8>();
    global1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(949f, -210f, -325f) + vec3<f32>(565f, arg_0, -1000f)))) + vec3<f32>(_wgslsmith_f_op_f32(616f * 564f), 1150f, 1f))))));
    global0 = array<bool, 8>();
    var var_0 = _wgslsmith_add_vec3_u32(~(~(_wgslsmith_div_vec3_u32(vec3<u32>(20376u, 4294967295u, u_input.a), vec3<u32>(34488u, u_input.a, u_input.a)) << (~vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_u32(func_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, arg_0, 778f))))), !global0[_wgslsmith_index_u32(max(u_input.a, u_input.a), 8u)], u_input.b.x), ~select(abs(vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a), false)));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 * global1.x))), _wgslsmith_f_op_f32(trunc(global1.x)))))));
    return Struct_2(Struct_1(!(!global0[_wgslsmith_index_u32(reverseBits(4294967295u), 8u)]), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 805f, 2000f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(625f, -217f, -1837f))), select(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(44394u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)]))))), select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], false), !vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 8u)]), false), vec2<bool>(true, true), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(39535u, 8u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 8u)]), vec2<bool>(false, true), vec2<bool>(true, true)), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 8u)], global0[_wgslsmith_index_u32(3645u, 8u)]))), ~u_input.b.wx));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-global1.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1418f, var_0) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.a.b.yx - vec2<f32>(2173f, arg_0.a.b.x)), _wgslsmith_div_vec2_f32(arg_1.b.zy, arg_1.b.yz), !vec2<bool>(true, arg_0.a.a)))))));
    var var_2 = func_2(_wgslsmith_f_op_f32(-arg_0.a.b.x)).a.b.x;
    var var_3 = _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), reverseBits(vec3<u32>(u_input.a, 1u, u_input.a))), 1u), ~vec2<u32>(85523u, 20746u), vec2<u32>(85260u, abs(u_input.a))), countOneBits(~vec2<u32>(u_input.a, u_input.a) ^ (countOneBits(vec2<u32>(1u, u_input.a)) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))), _wgslsmith_mod_vec2_u32(max(_wgslsmith_mod_vec2_u32(vec2<u32>(21209u, 1u), reverseBits(vec2<u32>(40653u, u_input.a))), max(countOneBits(vec2<u32>(u_input.a, 44147u)), ~vec2<u32>(38395u, 18276u))), firstLeadingBit(firstLeadingBit(~vec2<u32>(22843u, u_input.a)))));
    var var_4 = _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_0.a.d.x, arg_0.a.d.x), -(~1i));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(394f).a.b.x + -1011f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-114f, _wgslsmith_f_op_f32(sign(662f))) - _wgslsmith_f_op_f32(2064f - -196f))));
}

fn func_1() -> f32 {
    let var_0 = vec3<bool>(!(_wgslsmith_sub_u32(countOneBits(u_input.a), u_input.a) >= ~1u), true | global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(49796u, u_input.a, u_input.a), 8u)], select(all(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.a, 8u)], true, !global0[_wgslsmith_index_u32(98977u, 8u)], true)), global0[_wgslsmith_index_u32(55675u, 8u)], any(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(17065u, 8u)])))));
    global0 = array<bool, 8>();
    global1 = vec3<f32>(global1.x, global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x), any(vec3<bool>(var_0.x, var_0.x, false)))), _wgslsmith_f_op_f32(func_4(func_2(815f), func_2(global1.x).a)))), _wgslsmith_f_op_f32(global1.x + global1.x)));
    let var_1 = ~(min(_wgslsmith_dot_vec4_i32(countOneBits(u_input.b), select(vec4<i32>(-3844i, -21713i, u_input.b.x, u_input.b.x), vec4<i32>(-35831i, -39081i, -50595i, 0i), vec4<bool>(false, false, var_0.x, false))), min(~u_input.b.x, -u_input.b.x)) ^ u_input.b.x);
    let var_2 = vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)))));
    return 1465f;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<u32> {
    var var_0 = u_input.b;
    var var_1 = select(vec4<u32>(~1u | u_input.a, arg_0, 9076u, _wgslsmith_sub_u32(~5370u, ~arg_0)), vec4<u32>(1u, arg_0, firstLeadingBit(u_input.a), u_input.a), (-14060i > -arg_2.x) | select(true, !arg_1.c.x, !global0[_wgslsmith_index_u32(u_input.a, 8u)])) & ~min(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(35540u, 38713u, arg_0, 4294967295u), vec4<u32>(0u, arg_0, 8621u, u_input.a))), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 0u, 32231u, 0u), ~vec4<u32>(u_input.a, 0u, 4294967295u, 1u)));
    var var_2 = vec2<bool>(!all(select(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 8u)], true, true, global0[_wgslsmith_index_u32(arg_0, 8u)]), select(vec4<bool>(arg_1.a, true, true, global0[_wgslsmith_index_u32(var_1.x, 8u)]), vec4<bool>(false, true, arg_1.a, arg_1.a), false), global0[_wgslsmith_index_u32(u_input.a, 8u)])), any(!select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 8u)], global0[_wgslsmith_index_u32(8325u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)]), vec3<bool>(true, arg_1.a, arg_1.c.x), vec3<bool>(arg_1.a, true, global0[_wgslsmith_index_u32(arg_0, 8u)]))) | false);
    var var_3 = Struct_2(func_2(global1.x).a);
    let var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~var_0.wyw, var_0.wyz >> (func_3(vec3<f32>(global1.x, arg_1.b.x, var_3.a.b.x), var_3.a.c.x && false, arg_2.x) % vec3<u32>(32u))), firstLeadingBit(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, arg_2.x, -42798i) | var_0.zzw, -arg_2))));
    return vec3<u32>(0u, ~select(20187u, ~4294967295u ^ (u_input.a << (u_input.a % 32u)), true), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.a, Struct_1(-717f == _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-func_2(global1.x).a.b), vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1434f)))), !func_2(global1.x).a.c, countOneBits(_wgslsmith_clamp_vec2_i32(min(u_input.b.ww, u_input.b.yx), u_input.b.wz ^ vec2<i32>(u_input.b.x, 2711i), ~vec2<i32>(26756i, u_input.b.x)))), vec3<i32>((-1i << (u_input.a % 32u)) & 0i, -(~(~u_input.b.x)), u_input.b.x));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * global1.x), global1.x), true)))), global1.x);
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_1 = -(vec2<i32>(u_input.b.x, 2147483647i) >> (abs(~var_0.yz) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(~1540u, 68045u));
}

