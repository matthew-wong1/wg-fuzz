struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(71667u, 34732u);

var<private> global1: array<u32, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<f32> {
    var var_0 = all(select(vec2<bool>(true, !any(vec3<bool>(true, true, true))), vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
    var_0 = true;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-283f, 500f) + vec2<f32>(765f, 458f)) * vec2<f32>(-1000f, 908f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-116f, 1260f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-410f, -805f), vec2<f32>(661f, 3015f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1239f, -426f), vec2<f32>(-302f, 519f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1591f, -928f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(434f, 574f), vec2<f32>(1625f, 385f)))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1422f), 1f))));
}

fn func_2() -> f32 {
    let var_0 = all(!vec2<bool>(true, any(vec2<bool>(true, false)))) | false;
    global0 = array<u32, 2>();
    var var_1 = ~countOneBits(0u);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(624f, -989f), vec2<f32>(1309f, -1368f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(937f, -155f)), select(vec2<bool>(true, true), vec2<bool>(var_0, false), vec2<bool>(var_0, false))))))), _wgslsmith_f_op_vec2_f32(func_3()));
    let var_3 = !all(!(!vec3<bool>(var_0, var_0, var_0)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.x)), var_2.x);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> Struct_3 {
    global0 = array<u32, 2>();
    let var_0 = u_input.d.x;
    global1 = array<u32, 16>();
    global1 = array<u32, 16>();
    var var_1 = Struct_1(min(u_input.e, 1u), select(select(vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)), true), vec3<bool>(false, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), vec3<bool>(true, all(vec3<bool>(false, true, true)) | true, (-356f < arg_1.x) && any(vec3<bool>(false, false, false))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), (select(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]), 1u, all(vec4<bool>(false, true, true, true))) >> (_wgslsmith_div_u32(_wgslsmith_add_u32(16322u, global1[_wgslsmith_index_u32(var_0, 16u)]), ~var_0) % 32u)) << (~0u % 32u));
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2378f, 268f, -287f, 571f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -113f))))), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -875f), arg_1.x), true)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -601f), -546f, 1000f, arg_1.x) + vec4<f32>(-870f, _wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x - arg_1.x)))), _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a, 14348u, var_1.c, arg_0), vec4<u32>(6928u, global1[_wgslsmith_index_u32(var_1.a, 16u)], 0u, 40118u)), abs(vec4<u32>(global0[_wgslsmith_index_u32(21493u, 2u)], u_input.d.x, var_0, global0[_wgslsmith_index_u32(0u, 2u)]))) & ~vec4<u32>(~var_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, var_0), vec3<u32>(arg_0, arg_0, u_input.d.x)), ~0u, _wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(var_0, 2u)])), Struct_2(Struct_1(~_wgslsmith_add_u32(u_input.d.x, global1[_wgslsmith_index_u32(var_0, 16u)]), var_1.b, 16584u), !select(select(vec4<bool>(true, var_1.b.x, var_1.b.x, false), vec4<bool>(var_1.b.x, true, var_1.b.x, var_1.b.x), vec4<bool>(var_1.b.x, true, var_1.b.x, var_1.b.x)), vec4<bool>(true, var_1.b.x, true, false), true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3()).x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), arg_1.x))), arg_1.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> i32 {
    global0 = array<u32, 2>();
    var var_0 = false;
    global1 = array<u32, 16>();
    var var_1 = func_4(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.e | global0[_wgslsmith_index_u32(0u, 2u)], 2u)] << (_wgslsmith_mult_u32(countOneBits(_wgslsmith_add_u32(4294967295u, u_input.d.x)), global0[_wgslsmith_index_u32(u_input.d.x, 2u)]) % 32u), 16u)], vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -420f), _wgslsmith_f_op_f32(arg_1 - arg_1))), arg_1), arg_1, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(func_2()))));
    var var_2 = Struct_4(Struct_2(func_4(_wgslsmith_dot_vec2_u32(u_input.d.yz & u_input.d.zy, select(vec2<u32>(21321u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.c.a.a, 2u)], 16u)]), u_input.d.zy, var_1.c.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-141f, 315f, 209f)))).c.a, vec4<bool>(!var_1.c.a.b.x, var_1.c.b.x, var_1.c.b.x, false)), var_1.a.xyy, firstLeadingBit(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(0u, 16u)]), reverseBits(u_input.e)))), i32(-1i) * -81834i);
    return _wgslsmith_dot_vec4_i32(abs(arg_0), ~(-(~_wgslsmith_clamp_vec4_i32(arg_0, vec4<i32>(u_input.b, arg_0.x, 2147483647i, arg_0.x), arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.a, func_1(min(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 40886i, u_input.b, -2147483647i), vec4<i32>(0i, u_input.a, 0i, u_input.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.c.x, 0i) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64425u, 2u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42486u, 16u)], 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22336u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60345u, 2u)], 2u)]) % vec4<u32>(32u)), vec4<i32>(u_input.b, 2147483647i, 15255i, u_input.a), ~vec4<i32>(u_input.c.x, u_input.c.x, 21821i, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-615f - 830f)))), -min((u_input.b | 0i) << (1u % 32u), 25499i));
    global0 = array<u32, 2>();
    let var_1 = abs(~firstLeadingBit(-14634i)) == _wgslsmith_mult_i32(select(u_input.c.x, -var_0.x, false), _wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, var_0.x, var_0.x)), -vec4<i32>(u_input.b, 1i, 1i, -1i) << (abs(vec4<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 16u)], 1686u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 42078u)) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(417f, -1000f, -886f, -453f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(742f, 375f, -212f, 545f)))))));
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_div_u32(7699u, _wgslsmith_mod_u32(select(u_input.e, _wgslsmith_clamp_u32(16109u, 0u, 0u), any(vec3<bool>(var_1, true, true))), 42643u)), 1u);
    let var_4 = Struct_2(Struct_1(u_input.e, select(!(!vec3<bool>(var_1, var_1, false)), vec3<bool>(var_1, any(vec2<bool>(var_1, false)), true), all(!vec3<bool>(true, var_1, true))), ~1u), vec4<bool>(false, var_1, var_1, !var_1));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~var_4.a.c, 0u, _wgslsmith_sub_u32(select(u_input.e, 33415u, true), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(var_4.a.c, 2u)], 27947u), 2u)]), (_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a.a, var_4.a.a, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<u32>(0u, 9224u, u_input.e, 28545u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 16u)], global1[_wgslsmith_index_u32(57166u, 16u)], 2408u, 55993u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(59954u, 2u)], 0u, global1[_wgslsmith_index_u32(29576u, 16u)]))) >> (_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)) % 32u)), select(select(firstLeadingBit(u_input.d.x), u_input.d.x, var_1 & false), 1u, false), firstTrailingBit(min(0u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(35247u, u_input.d.x)), 2u)], 16u)])), ~(~(~vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(1428u, 16u)], 0u))) & vec4<u32>(0u, _wgslsmith_add_u32(~11631u, _wgslsmith_sub_u32(67986u, var_4.a.a)), _wgslsmith_sub_u32(1u, var_4.a.a), _wgslsmith_div_u32(var_4.a.c, firstTrailingBit(var_4.a.c))), select(vec4<u32>(1u, ~global1[_wgslsmith_index_u32(9314u, 16u)], 0u, reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_4.a.c, 30588u), 16u)])), vec4<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.e, 16u)], ~0u), firstTrailingBit(func_4(6044u, vec3<f32>(var_2.x, -229f, -1073f)).c.a.c), var_4.a.c, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, var_4.a.a)) & 0u), true));
}

