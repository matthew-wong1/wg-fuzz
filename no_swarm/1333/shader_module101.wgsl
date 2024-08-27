struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(4294967295u, 74585u, 4294967295u, 135032u, 28607u, 1u, 63587u, 4294967295u, 26512u, 4294967295u);

var<private> global1: array<Struct_2, 21>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> u32 {
    var var_0 = ~min(~(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], arg_2.c.b.a, 4294967295u) ^ vec3<u32>(7307u, 25329u, arg_2.c.b.a)), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(arg_1, 10u)], 0u) & vec3<u32>(4294967295u, 4294967295u, 39741u)) & ~vec3<u32>(50919u, ~arg_2.b.a, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_1, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(13442u, 10691u), 10u)]), 10u)]);
    var var_1 = Struct_2(arg_2.d.a, arg_2.d.b);
    var var_2 = global1[_wgslsmith_index_u32(~53944u, 21u)];
    var_1 = Struct_2((abs(-vec4<i32>(2147483647i, var_2.a.x, -1i, -2147483647i)) >> (reverseBits(~vec4<u32>(var_2.b.a, var_0.x, global0[_wgslsmith_index_u32(1u, 10u)], var_2.b.a)) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_sub_i32(1i, 18198i), 1i, -_wgslsmith_dot_vec4_i32(var_1.a, var_2.a), -_wgslsmith_mod_i32(-1i, 38600i)), var_1.b);
    var_0 = min(~vec3<u32>(abs(var_2.b.a << (8064u % 32u)), ~1u, _wgslsmith_sub_u32(0u, ~u_input.b)), ~(~(~reverseBits(vec3<u32>(var_1.b.a, var_0.x, 4294967295u)))));
    return min(4294967295u, countOneBits(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(arg_2.b.a, global0[_wgslsmith_index_u32(arg_2.b.a, 10u)], global0[_wgslsmith_index_u32(arg_2.b.a, 10u)], 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(71925u, arg_2.d.b.a, var_1.b.a, 81880u), vec4<u32>(1u, 4294967295u, 7297u, var_0.x)), !vec4<bool>(arg_2.e.x, arg_2.e.x, arg_2.e.x, arg_2.e.x)), vec4<u32>(select(4294967295u, var_0.x, false), 4294967295u, ~1u, u_input.b))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-834f + -417f);
    var var_1 = Struct_1(~firstTrailingBit(2729u << (0u % 32u)));
    let var_2 = Struct_3(644f, arg_0, arg_1, arg_1, select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), 0u < u_input.a), select(all(vec2<bool>(true, true)), true, true)));
    let var_3 = vec4<bool>(var_2.d.a.x <= var_2.d.a.x, !(!(true & (global0[_wgslsmith_index_u32(u_input.a, 10u)] < var_1.a))), !(1u == arg_0.a), true | ((true & var_2.e.x) & !var_2.e.x));
    global0 = array<u32, 10>();
    return 1i >> (~_wgslsmith_add_u32(var_2.d.b.a, 31673u) % 32u);
}

fn func_2() -> f32 {
    let var_0 = func_4(Struct_1(0u), Struct_2(vec4<i32>(max(-1i, u_input.c.x), u_input.d, ~u_input.d, u_input.c.x >> (global0[_wgslsmith_index_u32(30491u, 10u)] % 32u)) | abs(vec4<i32>(u_input.e, u_input.d, u_input.d, 19766i)), Struct_1((global0[_wgslsmith_index_u32(0u, 10u)] >> (u_input.b % 32u)) | func_3(689f, u_input.b, Struct_3(-848f, Struct_1(u_input.a), global1[_wgslsmith_index_u32(u_input.a, 21u)], Struct_2(vec4<i32>(4163i, u_input.c.x, 2147483647i, 29357i), Struct_1(u_input.b)), vec2<bool>(false, true))))), ~_wgslsmith_add_vec2_i32(u_input.c, ~u_input.c >> ((vec2<u32>(77468u, 0u) << (vec2<u32>(u_input.a, 3961u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    global1 = array<Struct_2, 21>();
    var var_1 = !vec4<bool>(any(vec2<bool>(true, true)), any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true)), any(vec2<bool>(false, false)) && true, true);
    let var_2 = ~vec2<i32>(_wgslsmith_clamp_i32(u_input.d, _wgslsmith_div_i32(u_input.e ^ 0i, abs(var_0)), -var_0), _wgslsmith_clamp_i32(u_input.e, _wgslsmith_sub_i32(-u_input.d, u_input.e), -var_0 ^ 1i));
    let var_3 = vec3<f32>(1143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1139f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -556f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1192f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(738f))))));
    return var_3.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(736f + -1000f) + _wgslsmith_f_op_f32(func_2()))), -638f), 1086f, _wgslsmith_f_op_f32(floor(-1437f)));
    return _wgslsmith_f_op_f32(func_2());
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1184f, arg_0.x) * 1176f);
    var var_2 = arg_1.c.b;
    let var_3 = arg_0.x;
    let var_4 = abs(_wgslsmith_mod_vec3_u32(~max(vec3<u32>(24817u, arg_1.d.b.a, 4294967295u), abs(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], u_input.a, 88456u))), reverseBits(vec3<u32>(0u ^ var_2.a, 0u, ~arg_1.d.b.a))));
    return Struct_3(_wgslsmith_f_op_f32(892f + _wgslsmith_f_op_f32(sign(var_3))), arg_1.b, Struct_2(arg_1.d.a, Struct_1(4294967295u)), arg_1.c, vec2<bool>(select(select(true, true, arg_1.e.x | arg_1.e.x), false, arg_1.e.x), arg_1.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 10>();
    global1 = array<Struct_2, 21>();
    let var_0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.c.x, -34955i, u_input.e), global0[_wgslsmith_index_u32(1u, 10u)])))), 335f, 786f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(295f, -1072f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(200f, -808f) * _wgslsmith_f_op_f32(sign(-1049f))))), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-357f, -2050f)), -293f), Struct_1(global0[_wgslsmith_index_u32(~select(0u, u_input.b, false), 10u)]), global1[_wgslsmith_index_u32(1u, 21u)], Struct_2(-firstTrailingBit(vec4<i32>(-24284i, 14416i, 31873i, u_input.e)), Struct_1(1u)), !vec2<bool>(any(vec3<bool>(true, true, false)), any(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f)) - _wgslsmith_f_op_f32(trunc(-2528f))) * _wgslsmith_f_op_f32(select(-230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2101f)), true))));
    var var_1 = var_0.a != func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f)), 969f, var_0.a, _wgslsmith_f_op_f32(func_2())), func_5(vec4<f32>(523f, _wgslsmith_div_f32(var_0.a, 2072f), 1604f, _wgslsmith_f_op_f32(func_2())), Struct_3(_wgslsmith_f_op_f32(354f - 725f), Struct_1(4294967295u), Struct_2(var_0.d.a, var_0.b), var_0.d, func_5(vec4<f32>(-1028f, var_0.a, 1271f, 461f), Struct_3(1401f, Struct_1(1u), var_0.c, Struct_2(vec4<i32>(9459i, var_0.d.a.x, -2147483647i, 16199i), var_0.c.b), vec2<bool>(true, true)), 1384f).e), var_0.a), _wgslsmith_f_op_f32(max(var_0.a, 973f))).a;
    var var_2 = vec2<i32>(u_input.c.x, 34953i);
    var var_3 = var_0.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.b.a, u_input.b, _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.b.a, _wgslsmith_sub_u32(89849u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.a, 10u)], 10u)], 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 94u, 0u))), vec3<u32>(var_0.c.b.a >> (u_input.a % 32u), reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c.b.a, 10u)], 10u)], 10u)]), ~var_0.b.a)), firstTrailingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 28481u), vec3<u32>(4294967295u, 1u, 1u)))));
}

