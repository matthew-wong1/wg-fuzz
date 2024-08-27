struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(-1i, 36598i, 3991i, i32(-2147483648)), vec4<i32>(-34762i, -26872i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), -39850i, 0i, 1i), vec4<i32>(22128i, 2147483647i, i32(-2147483648), -44877i), vec4<i32>(-1i, -40045i, -1i, i32(-2147483648)), vec4<i32>(-1i, -1i, 2147483647i, -34222i), vec4<i32>(i32(-2147483648), i32(-2147483648), 19165i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, 2147483647i, i32(-2147483648)), vec4<i32>(8416i, 1i, 0i, -5704i), vec4<i32>(64997i, 2147483647i, 10782i, 0i), vec4<i32>(-69475i, 836i, -1i, i32(-2147483648)), vec4<i32>(12722i, 2464i, 1i, i32(-2147483648)), vec4<i32>(-55538i, 1i, i32(-2147483648), 16279i), vec4<i32>(-7965i, 1192i, 0i, i32(-2147483648)), vec4<i32>(-12138i, 8896i, -9892i, 17311i), vec4<i32>(0i, i32(-2147483648), -1391i, 2147483647i), vec4<i32>(-16274i, 80487i, 1i, -19797i), vec4<i32>(-1i, 18027i, -1i, 11434i), vec4<i32>(26795i, 1i, 1i, 0i), vec4<i32>(19158i, 2147483647i, 1i, i32(-2147483648)), vec4<i32>(-1i, -1i, 0i, -20162i), vec4<i32>(1i, -1927i, -56477i, -1i), vec4<i32>(51333i, -50898i, 31790i, -52581i), vec4<i32>(0i, -3458i, -23793i, -33802i), vec4<i32>(-1i, -7183i, 0i, 0i), vec4<i32>(2147483647i, 0i, 22376i, -20243i), vec4<i32>(2147483647i, 23860i, -1i, 1i), vec4<i32>(-48454i, -1i, 6731i, 2147483647i), vec4<i32>(-1i, -60756i, i32(-2147483648), 0i));

var<private> global2: array<u32, 10>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    global1 = array<vec4<i32>, 29>();
    let var_0 = ~2147483647i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -851f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -919f))))));
    global1 = array<vec4<i32>, 29>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.e.x, 6u)];
    return _wgslsmith_add_u32(~(~(~_wgslsmith_sub_u32(u_input.a, 0u))), 9808u);
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = Struct_1(~_wgslsmith_add_u32(~(38550u & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 10u)], 10u)], 10u)], 10u)]), func_3(all(vec3<bool>(true, false, false)))));
    let var_1 = global0[_wgslsmith_index_u32(var_0.a, 6u)];
    global2 = array<u32, 10>();
    let var_2 = Struct_1(20635u);
    var var_3 = Struct_1(4294967295u | select(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(0u, 10u)], 90665u, max(global2[_wgslsmith_index_u32(var_1.a, 10u)], 9310u)), func_3(true), all(vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f)))), arg_0.x, !any(vec4<bool>(true, true, true, true)) && all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = true;
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    let var_1 = Struct_1(abs(1u));
    var var_2 = -1i;
    return Struct_1(reverseBits(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~u_input.b.x, 30598u), 10u)]));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    let var_0 = func_4(arg_0, 1093f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1220f, arg_2, 1164f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-228f + 712f))));
    global0 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_sub_i32(abs(-1i), ~(-1i >> ((_wgslsmith_div_u32(1u, arg_0.a) | _wgslsmith_mod_u32(var_0.a, arg_0.a)) % 32u)));
    var var_2 = firstLeadingBit(4578i);
    var var_3 = global0[_wgslsmith_index_u32(~((var_0.a & select(13817u & global2[_wgslsmith_index_u32(4294967295u, 10u)], 6937u, true)) >> (arg_0.a % 32u)), 6u)];
    return func_4(Struct_1(firstTrailingBit(~firstTrailingBit(u_input.c.x))), countOneBits(i32(-1i) * -1i) > max(var_1, reverseBits(abs(-1i))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> bool {
    var var_0 = countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_2.zz, arg_2.zw) << (min(8906u, 29951u) % 32u), 0i), arg_2.xx));
    global2 = array<u32, 10>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 410f, -1524f) - vec4<f32>(arg_1, -2866f, -973f, arg_1))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, arg_1, -140f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1548f, 226f, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-101f, arg_1, arg_1, arg_1)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1231f, 1148f, 1134f, arg_1)))), (85983i << (u_input.d % 32u)) <= _wgslsmith_mult_i32(var_0.x, -10317i)))));
    let var_2 = arg_0;
    global1 = array<vec4<i32>, 29>();
    return false;
}

fn func_6(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1139f, 245f))), _wgslsmith_div_f32(-1344f, -2670f), _wgslsmith_f_op_f32(f32(-1f) * -2340f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 812f, var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -311f, -705f))))));
    let var_2 = ~(-((vec3<i32>(21423i, -1i, 2147483647i) >> (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 10u)], 10u)], global2[_wgslsmith_index_u32(u_input.c.x, 10u)], 0u) % vec3<u32>(32u))) | ~vec3<i32>(2147483647i, 1i, 2147483647i)) >> (reverseBits(_wgslsmith_div_vec3_u32(max(u_input.c.zww, vec3<u32>(u_input.b.x, 12467u, u_input.d)), u_input.c.yzw)) % vec3<u32>(32u)));
    global2 = array<u32, 10>();
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1), var_1));
    return global0[_wgslsmith_index_u32(1u, 6u)];
}

fn func_7(arg_0: Struct_1) -> f32 {
    var var_0 = vec2<bool>((~0u == (~global2[_wgslsmith_index_u32(4294967295u, 10u)] & 73748u)) && true, any(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), true))));
    global1 = array<vec4<i32>, 29>();
    global0 = array<Struct_1, 6>();
    var var_1 = func_4(Struct_1(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, arg_0.a), _wgslsmith_sub_u32(func_4(arg_0, true).a, ~u_input.c.x), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b.x, 0u)), ~vec2<u32>(0u, 4294967295u)))), !var_0.x);
    global1 = array<vec4<i32>, 29>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(956f - -411f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-564f)))))), 2049f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_0 = _wgslsmith_f_op_f32(func_7(func_6(!func_5(func_1(Struct_1(4294967295u), vec4<f32>(225f, -400f, -894f, -139f), -1000f), _wgslsmith_f_op_f32(floor(-1142f)), countOneBits(global1[_wgslsmith_index_u32(u_input.a, 29u)])))));
    var var_1 = global0[_wgslsmith_index_u32(~u_input.e.x, 6u)];
    global0 = array<Struct_1, 6>();
    var_1 = global0[_wgslsmith_index_u32(reverseBits(1u), 6u)];
    global0 = array<Struct_1, 6>();
    var var_2 = global0[_wgslsmith_index_u32(func_3(!(!func_5(global0[_wgslsmith_index_u32(19146u, 6u)], 1062f, vec4<i32>(-2147483647i, 2147483647i, -1i, -26251i)) && true)), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u << ((firstLeadingBit(1u) >> ((~var_2.a ^ 1u) % 32u)) % 32u), -28908i);
}

