struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: array<i32, 2>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, arg_0.x, -974f, 803f), vec4<f32>(arg_0.x, 100f, 845f, 469f))), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(889f, 846f, arg_0.x, arg_1.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1171f, arg_0.x, 2594f, 315f) - vec4<f32>(arg_0.x, 1000f, 1788f, 1068f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, -576f, global0[_wgslsmith_index_u32(26571u, 32u)]))))), -145f, arg_1.x));
    global1 = array<i32, 2>();
    var var_1 = Struct_4(true, Struct_3(~(~vec2<u32>(125143u, 19706u)) | ~_wgslsmith_clamp_vec2_u32(vec2<u32>(40476u, 4294967295u), vec2<u32>(4294967295u, 26596u), vec2<u32>(4294967295u, 0u)), 9076u, Struct_1(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 19779u), 32u)])), vec4<u32>(0u, countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 37550u), ~vec3<u32>(4294967295u, 89345u, 38990u))), firstLeadingBit(1u), select(~0u, abs(0u), true) ^ min(1u, ~3225u)), _wgslsmith_sub_i32(~(-34938i), -1i), ~(~vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 39195u), vec2<u32>(104669u, 51290u)), 54899u)));
    let var_2 = Struct_4(select(_wgslsmith_dot_vec3_i32(vec3<i32>(78946i, global1[_wgslsmith_index_u32(15825u, 2u)], 37583i), vec3<i32>(0i, -1i, -2147483647i)) <= _wgslsmith_sub_i32(2147483647i, u_input.b), var_1.a, true) || all(select(select(vec3<bool>(var_1.a, var_1.b.c.a, true), vec3<bool>(true, global0[_wgslsmith_index_u32(29667u, 32u)], global0[_wgslsmith_index_u32(var_1.e.x, 32u)]), vec3<bool>(false, var_1.b.c.a, false)), !vec3<bool>(var_1.a, var_1.b.c.a, global0[_wgslsmith_index_u32(1u, 32u)]), global0[_wgslsmith_index_u32(0u, 32u)])), var_1.b, var_1.c, u_input.a.x, vec3<u32>(reverseBits(23144u), _wgslsmith_clamp_u32(var_1.b.a.x, var_1.b.a.x, 0u) ^ (1u & ~var_1.b.a.x), _wgslsmith_dot_vec2_u32(min(firstTrailingBit(var_1.c.wz), var_1.b.a), _wgslsmith_mod_vec2_u32(var_1.e.xz, ~var_1.e.zz))));
    let var_3 = ~(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(2147483647i, 1i, var_1.d)), ~vec3<i32>(-52702i, u_input.a.x, u_input.b)), -(~vec3<i32>(var_2.d, -8206i, 1i))) >> (vec3<u32>(var_1.e.x, _wgslsmith_div_u32(~4294967295u, 41401u), ~var_2.e.x) % vec3<u32>(32u)));
    return -1000f;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 241f, 1236f))), vec2<f32>(1489f, -444f))), -2401f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -552f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1209f, 1939f))))));
    global0 = array<bool, 32>();
    let var_2 = -476f;
    let var_3 = !(!global0[_wgslsmith_index_u32(0u | select(1u, countOneBits(37101u), false), 32u)]);
    return var_1;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3;
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_1 = select(!(!(!select(vec4<bool>(var_0.a.a, false, global0[_wgslsmith_index_u32(1u, 32u)], true), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(1u, 32u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 32u)], var_0.a.a)))), select(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], true, global0[_wgslsmith_index_u32(4294967295u, 32u)], arg_3.a.a))), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 32u)], var_0.a.a, true && arg_3.a.a, var_0.a.a), select(all(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 32u)], true, true)) || (global0[_wgslsmith_index_u32(4294967295u, 32u)] & var_0.a.a), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, 1u), 32u)], !all(vec3<bool>(var_0.a.a, true, false)))), any(!(!vec4<bool>(false, true, arg_3.a.a, false))));
    global1 = array<i32, 2>();
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(reverseBits(select(global1[_wgslsmith_index_u32(~(~21173u), 2u)], max(arg_1.x, global1[_wgslsmith_index_u32(1u, 2u)]) & -arg_1.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a.x))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(3896u, 57989u), 2u)], Struct_2(Struct_1(all(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)]))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 - arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-421f + var_0) - 1000f), _wgslsmith_f_op_f32(func_2(arg_1.x & global1[_wgslsmith_index_u32(26326u, 2u)])))));
    let var_2 = ~firstTrailingBit(~(-abs(vec4<i32>(global1[_wgslsmith_index_u32(60599u, 2u)], -1i, -88712i, arg_1.x))));
    var var_3 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 32u)]));
    var var_4 = 1i;
    return _wgslsmith_f_op_f32(f32(-1f) * -638f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(-1000f, -1000f), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], -29128i, u_input.a.x)))))))));
    global1 = array<i32, 2>();
    var var_1 = all(!select(!select(vec4<bool>(global0[_wgslsmith_index_u32(89667u, 32u)], true, global0[_wgslsmith_index_u32(0u, 32u)], true), vec4<bool>(global0[_wgslsmith_index_u32(51053u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(51007u, 32u)], global0[_wgslsmith_index_u32(56519u, 32u)]), global0[_wgslsmith_index_u32(0u, 32u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 32u)], false, global0[_wgslsmith_index_u32(18225u, 32u)], false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)])), true), select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 32u)], true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], false, global0[_wgslsmith_index_u32(0u, 32u)]), global0[_wgslsmith_index_u32(4294967295u, 32u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(47203u, 32u)], global0[_wgslsmith_index_u32(77918u, 32u)], global0[_wgslsmith_index_u32(37965u, 32u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(80921u, 32u)], false, global0[_wgslsmith_index_u32(38318u, 32u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(33079u, 32u)], false, global0[_wgslsmith_index_u32(1u, 32u)]), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(4294967295u, 32u)])))));
    global1 = array<i32, 2>();
    let var_2 = _wgslsmith_div_i32(~(-11359i), ~(-global1[_wgslsmith_index_u32(~(~2433u), 2u)]));
    var_1 = !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 10144u), 32u)] && !(!(!global0[_wgslsmith_index_u32(firstLeadingBit(105128u), 32u)]));
    var var_3 = Struct_4(all(select(select(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 32u)], true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(86036u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), true), !vec4<bool>(global0[_wgslsmith_index_u32(41042u, 32u)], false, global0[_wgslsmith_index_u32(4271u, 32u)], global0[_wgslsmith_index_u32(17459u, 32u)]), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 32u)], false, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(22409u, 32u)])), !select(vec4<bool>(global0[_wgslsmith_index_u32(35800u, 32u)], false, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 32u)], false, global0[_wgslsmith_index_u32(4294967295u, 32u)]), false), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~39344u, 0u), 32u)])), Struct_3(vec2<u32>(~(~0u), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 40404u, 4294967295u, 19579u)), select(vec4<u32>(2331u, 42349u, 52156u, 27569u), vec4<u32>(4294967295u, 1u, 9735u, 16946u), vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 32u)], true)))), 1u, Struct_1(true)), vec4<u32>(0u, 25225u, 1u, firstLeadingBit(1u)), -_wgslsmith_div_i32(var_2, -2147483647i) | -var_2, vec3<u32>(1u, min(0u, ~54500u), ~1u) << (select(vec3<u32>(~0u, ~1u, firstTrailingBit(19659u)), firstTrailingBit(vec3<u32>(1u, 1u, 1u)), vec3<bool>(false, false, true)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-select(~(~1i), abs(u_input.a.x), !(true & global0[_wgslsmith_index_u32(var_3.e.x, 32u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(750f, -801f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -543f) - 924f)));
}

