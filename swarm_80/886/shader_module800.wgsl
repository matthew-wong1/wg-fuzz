struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_3,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 18>;

var<private> global2: bool = true;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), abs(vec2<u32>(u_input.a, u_input.a))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, 1u, 0u, 15630u)), vec4<u32>(1u, 0u, 1u, 375u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.a, 35792u, u_input.a)) << (_wgslsmith_div_u32(44579u, 67064u) % 32u), 41881u), vec4<u32>(countOneBits(68344u), ~61538u, 25815u, 1u)), vec4<u32>(select(~u_input.b, u_input.b, any(vec4<bool>(false, false, false, false))), _wgslsmith_div_u32(4294967295u, 4294967295u) >> (u_input.a % 32u), ~(~max(u_input.b, u_input.a)), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.a)), ~_wgslsmith_div_vec4_u32(vec4<u32>(45749u, u_input.b, u_input.b, 4756u), vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b)))));
    var var_1 = Struct_2(_wgslsmith_mult_u32(var_0, var_0) << (countOneBits(var_0) % 32u), !vec4<bool>(true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false)), true, select(false, true, true)));
    var var_2 = ~firstLeadingBit(~select(select(vec2<u32>(u_input.a, var_0), vec2<u32>(var_0, 4294967295u), var_1.b.x), reverseBits(vec2<u32>(32944u, var_1.a)), vec2<bool>(false, var_1.b.x)));
    var_2 = vec2<u32>(min(var_2.x, u_input.a), ~_wgslsmith_add_u32(~countOneBits(4294967295u), countOneBits(var_2.x | u_input.a)));
    global0 = 77791u;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0, _wgslsmith_div_u32(1u, firstTrailingBit(_wgslsmith_mod_u32(27651u, var_0))), ~(~var_1.a ^ var_0)), vec4<u32>(var_1.a, 45741u, ~(~4294967295u), _wgslsmith_mod_u32(var_0 | (28417u | u_input.b), ~(var_1.a | 4294967295u))));
}

fn func_2() -> bool {
    global1 = array<vec4<bool>, 18>();
    global0 = 0u;
    let var_0 = Struct_2(~(select(u_input.b, 26104u, false) ^ firstTrailingBit(1u)) >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(func_3(), 26295u), 15773u) % 32u), select(vec4<bool>(true, u_input.a != u_input.b, all(vec2<bool>(true, false)), any(vec3<bool>(true, true, false))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.b, 4294967295u)), abs(vec2<u32>(u_input.a, 18657u))), abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(95798u, 38910u)))), 18u)], vec4<bool>(all(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.a), 18u)]), ~u_input.a < 18568u, all(vec3<bool>(false, false, false)) && true, false)));
    let var_1 = Struct_4(Struct_1(vec2<i32>(-13162i, -1217i), countOneBits(i32(-1i) * -10860i), true), ~(vec4<u32>(u_input.b, 2312u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 5876u, 1u), vec4<u32>(var_0.a, 1u, 18511u, u_input.b)), min(var_0.a, var_0.a)) << ((vec4<u32>(0u, 29347u, u_input.b, 42987u) | ~vec4<u32>(3776u, 2316u, 13891u, 19689u)) % vec4<u32>(32u))), Struct_1(vec2<i32>(-1i, -_wgslsmith_mult_i32(0i, 8941i)), 4479i, !var_0.b.x), Struct_3(~countOneBits(vec3<u32>(1u, u_input.b, u_input.b) >> (vec3<u32>(var_0.a, 4971u, u_input.b) % vec3<u32>(32u)))), vec2<i32>(1i, 2147483647i));
    var var_2 = _wgslsmith_dot_vec4_u32(var_1.b, select(var_1.b, reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 73465u, 1u, u_input.b), var_1.b), 0u, _wgslsmith_dot_vec2_u32(var_1.d.a.yz, var_1.b.wx), 0u)), true));
    return any(vec2<bool>(true, any(select(select(var_0.b.zw, var_0.b.yz, vec2<bool>(true, var_1.c.c)), var_0.b.xz, false))));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    var var_0 = -1i;
    global2 = func_2();
    let var_1 = Struct_4(Struct_1(~(~(~vec2<i32>(27025i, -22029i))), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 1i), vec3<i32>(0i, 12181i, 47838i))), true), vec4<u32>(u_input.b, 7697u, ~(~(~9547u)), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(u_input.b, 33067u, u_input.b), vec3<u32>(u_input.a, 0u, 4294967295u), true), ~vec3<u32>(48372u, 1u, 0u))), Struct_1(vec2<i32>(~(~(-8024i)), -75389i), 1i, func_2()), Struct_3(countOneBits(vec3<u32>(min(89847u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.a, 62054u), vec4<u32>(u_input.b, u_input.a, u_input.a, 12961u)), u_input.b))), select(vec2<i32>(-10063i, _wgslsmith_div_i32(0i, 1i)), vec2<i32>(-1i) * -(~vec2<i32>(0i, 6242i)), true));
    var var_2 = var_1.d.a.x;
    let var_3 = var_1.c;
    return vec2<bool>(all(vec3<bool>(var_3.c, true, var_1.c.c)), ~(~(12585u ^ u_input.a)) >= _wgslsmith_dot_vec2_u32(vec2<u32>(67257u, 27966u) | select(vec2<u32>(21960u, 1u), vec2<u32>(u_input.a, 89251u), true), select(vec2<u32>(9939u, var_1.b.x) ^ var_1.d.a.yz, ~var_1.b.yw, select(var_3.c, true, var_1.a.c))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: i32) -> vec4<bool> {
    var var_0 = vec3<i32>(1i, ~1i & arg_2, firstLeadingBit(2147483647i));
    var_0 = vec3<i32>(-11680i, _wgslsmith_dot_vec3_i32(vec3<i32>(2486i, arg_2, arg_2 << (select(u_input.a, 0u, false) % 32u)), min(vec3<i32>(arg_2, firstLeadingBit(arg_2), _wgslsmith_mult_i32(-2147483647i, var_0.x)), -(~vec3<i32>(-1i, -1i, var_0.x)))), -(~arg_2));
    var var_1 = 0u;
    global1 = array<vec4<bool>, 18>();
    let var_2 = select(false, false, firstLeadingBit(5596i) > (arg_2 | ~(~var_0.x)));
    return vec4<bool>(any(vec4<bool>(!func_2(), true, true, !select(arg_1.x, var_2, arg_1.x))), false, true, -1i < -(~var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(741f + 907f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(423f, -304f)) + 1f) * -2720f)));
    let var_1 = !(2073f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(657f, var_0, true)), _wgslsmith_f_op_f32(var_0 - var_0)) - _wgslsmith_f_op_f32(-var_0)));
    let var_2 = _wgslsmith_f_op_f32(step(var_0, var_0));
    global0 = countOneBits(countOneBits(~u_input.a));
    let var_3 = func_4(func_1(_wgslsmith_f_op_f32(var_2 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2, var_0)), var_2))), select(vec3<bool>(~0u <= reverseBits(u_input.b), !func_1(-334f).x, var_1), vec3<bool>(func_1(_wgslsmith_f_op_f32(-var_2)).x, true, true), var_1), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 0i, i32(-1i) * -34547i), -vec4<i32>(1i, 1i, 1i, 1i)));
    var var_4 = ~(~_wgslsmith_sub_vec3_u32(max(vec3<u32>(6397u, u_input.b, u_input.b), ~vec3<u32>(0u, u_input.a, 4294967295u)), ~(~vec3<u32>(u_input.b, 29076u, u_input.b))));
    var var_5 = _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_2))))))));
    var_4 = reverseBits(reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_4.x, 28094u), vec3<u32>(3743u, 4294967295u, 214u)), ~vec3<u32>(var_4.x, var_4.x, 50258u))) >> (~((vec3<u32>(var_4.x, var_4.x, 10454u) & vec3<u32>(89857u, var_4.x, 25816u)) | vec3<u32>(6397u, 53837u, u_input.a)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(-(~vec2<i32>(1i, -1i)), vec2<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(-40679i, -80629i, 52395i)), vec3<i32>(1i, 1i, 1i)), select(-2360i, -2147483647i, var_1 == true))), var_2);
}

