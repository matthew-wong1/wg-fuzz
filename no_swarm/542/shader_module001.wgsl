struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(1u, 1u, 3025u, 4294967295u, 59202u);

var<private> global1: array<i32, 1> = array<i32, 1>(-1i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(940f)), 2107f))));
    var var_1 = vec4<bool>(!all(vec4<bool>(true, true, true, true)), true, false, true);
    global0 = array<u32, 5>();
    var var_2 = select(!var_1.zw, var_1.zz, var_1.xx);
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, reverseBits(~global0[_wgslsmith_index_u32(1u, 5u)]), min(~u_input.b.x, u_input.b.x)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(min(vec3<u32>(41611u, 18041u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67566u, 5u)], 5u)]))), ~(~min(vec3<u32>(25962u, 89653u, u_input.a), vec3<u32>(1u, u_input.a, 86475u))), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 51691u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(114106u, 5u)], 5u)], 49193u)), vec3<u32>(global0[_wgslsmith_index_u32(~0u, 5u)], ~u_input.b.x, 78074u)))), 1u)];
    return reverseBits(49392i) <= global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b) >> (4294967295u % 32u), 1u)];
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    var var_0 = Struct_3(1u, Struct_1(!select(select(vec2<bool>(true, arg_0), vec2<bool>(false, true), arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0)), true)));
    let var_1 = _wgslsmith_mod_u32(~(~global0[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_add_u32(4294967295u, min(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(var_0.a, 5u)], 17276u), 5u)] & 0u, 4294967295u)));
    var var_2 = 1865f;
    var_0 = Struct_3(28925u | countOneBits(var_1), Struct_1(select(var_0.b.a, vec2<bool>(select(var_0.b.a.x, true, arg_0), true), var_0.b.a)));
    var_2 = _wgslsmith_f_op_f32(round(-1000f));
    return global0[_wgslsmith_index_u32(max(var_0.a, ~(u_input.b.x << (~var_0.a % 32u))), 5u)] << (_wgslsmith_dot_vec2_u32(~u_input.b, vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(5965u, global0[_wgslsmith_index_u32(1u, 5u)], 29337u), vec3<u32>(4294967295u, 84771u, 75663u))), firstLeadingBit(0u))) % 32u);
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = vec3<i32>(arg_0, -2147483647i, _wgslsmith_mult_i32(-2147483647i, arg_0));
    global1 = array<i32, 1>();
    var var_1 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(50539u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], 5u)]), 5u)] << (u_input.a % 32u), func_4(func_3(), Struct_2(1i, vec2<i32>(20697i, 1i)), vec4<i32>(global1[_wgslsmith_index_u32(22372u, 1u)], 1i, 1i, 29142i)), u_input.a, ~4294967295u), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10311u, 5u)], 5u)], 12498u, u_input.a) | vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 20078u, 33133u), _wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(40899u, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)], u_input.b.x, 24755u), vec4<u32>(0u, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23114u, 5u)], 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]))))), Struct_1(select(!arg_1.zz, select(!vec2<bool>(arg_1.x, arg_1.x), select(arg_1.yz, vec2<bool>(arg_1.x, arg_1.x), arg_1.zy), func_3()), true)));
    let var_2 = var_1.b;
    let var_3 = vec2<i32>(_wgslsmith_dot_vec3_i32(abs(-(vec3<i32>(2147483647i, 2147483647i, var_0.x) << (vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]) % vec3<u32>(32u)))), vec3<i32>(~(i32(-1i) * -2101i), 0i, arg_0)), firstTrailingBit(min(arg_0, ~abs(var_0.x))));
    return Struct_3(abs(var_1.a), Struct_1(vec2<bool>(true, all(vec4<bool>(true, true, true, true)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3) -> u32 {
    var var_0 = (abs(~(~vec2<u32>(0u, arg_0.a))) >> (vec2<u32>(49433u, ~4294967295u) % vec2<u32>(32u))) ^ vec2<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(36510u, 0u, u_input.a, global0[_wgslsmith_index_u32(0u, 5u)]), ~vec4<u32>(4294967295u, arg_0.a, 1u, u_input.a)));
    var_0 = vec2<u32>(abs(~func_4(true, Struct_2(-2147483647i, vec2<i32>(global1[_wgslsmith_index_u32(1u, 1u)], -11750i)), firstTrailingBit(vec4<i32>(14584i, global1[_wgslsmith_index_u32(78578u, 1u)], 0i, 14246i)))), max(43358u, ~(~(~4294967295u))));
    var var_1 = func_2(~global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(66789u, 163158u), vec2<u32>(4294967295u, arg_0.a))), 1u)], arg_1.zwx);
    let var_2 = min(countOneBits(-_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 1i, global1[_wgslsmith_index_u32(1u, 1u)]), vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 5u)], 1u)], 0i, 49817i), vec3<i32>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(arg_2.a, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)])) | vec3<i32>(_wgslsmith_mod_i32(8794i, global1[_wgslsmith_index_u32(4294967295u, 1u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_0.x, 1u)], global1[_wgslsmith_index_u32(arg_0.a, 1u)], global1[_wgslsmith_index_u32(54074u, 1u)]), vec3<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 1u)], 0i)), ~(-2147483647i))), max(min(-(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_2.a, 1u)], 21616i) | vec3<i32>(7940i, 35119i, global1[_wgslsmith_index_u32(arg_0.a, 1u)])), select(_wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a, 5u)], 1u)], global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(var_0.x, 1u)]), vec3<i32>(-1i, global1[_wgslsmith_index_u32(27939u, 1u)], -32284i)), vec3<i32>(-22956i, -41687i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 1u)]) >> (vec3<u32>(u_input.b.x, 0u, 14625u) % vec3<u32>(32u)), arg_1.zzw)), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -2137i, 1i), vec3<i32>(global1[_wgslsmith_index_u32(var_0.x, 1u)], -44719i, 1i)) << (vec3<u32>(var_0.x, arg_2.a, u_input.a) % vec3<u32>(32u)))));
    var_0 = ~abs(vec2<u32>(min(abs(arg_0.a), abs(var_0.x)), var_1.a | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 7542u), vec3<u32>(14560u, arg_2.a, global0[_wgslsmith_index_u32(48062u, 5u)]))));
    return ~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, 1u));
}

fn func_1(arg_0: f32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(570f)))));
    global1 = array<i32, 1>();
    var var_1 = -vec2<i32>(global1[_wgslsmith_index_u32(func_5(Struct_3(u_input.a, Struct_1(vec2<bool>(false, true))), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), func_2(31619i, vec3<bool>(true, true, true))), 1u)] >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 0u, global0[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(12360u, 31629u, u_input.b.x, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(11718u, 5u)], u_input.b.x, u_input.a, u_input.b.x))) % 32u), _wgslsmith_add_i32(2147483647i ^ ~global1[_wgslsmith_index_u32(11425u, 1u)], -31282i));
    var var_2 = Struct_1(func_2(abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(3980u, 1u)], -10652i, global1[_wgslsmith_index_u32(4672u, 1u)], var_1.x), select(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], 51219i, -8454i, var_1.x), vec4<i32>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 1u)], 2147483647i), vec4<bool>(false, false, false, true)))), select(vec3<bool>(arg_0 >= -701f, true, true), vec3<bool>(true, false, true), select(-17846i == var_1.x, false, any(vec3<bool>(true, true, true))))).b.a);
    let var_3 = reverseBits(-(-vec3<i32>(2169i, global1[_wgslsmith_index_u32(4294967295u, 1u)], var_1.x) & select(-vec3<i32>(0i, 0i, 33542i), vec3<i32>(var_1.x, var_1.x, 5532i), vec3<bool>(var_2.a.x, var_2.a.x, false))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, arg_0))), vec2<f32>(1669f, 1958f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0)), -313f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-672f, var_0))))))));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = func_2(0i, select(select(vec3<bool>(true, false, any(arg_1)), arg_1.ywx, true), vec3<bool>(arg_1.x, _wgslsmith_f_op_vec2_f32(func_1(-749f)).x != 1173f, !arg_1.x), true)).a;
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    let var_1 = firstTrailingBit(vec2<i32>(-2147483647i, -2147483647i)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(~firstLeadingBit(1i), -global1[_wgslsmith_index_u32(abs(u_input.b.x), 1u)]), firstTrailingBit(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 1u)])), ~vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], -1i))));
    var var_2 = -vec4<i32>(_wgslsmith_clamp_i32(-30406i, ~(-1i), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 1u)] & var_1.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, -2147483647i), vec3<i32>(-1i, -31210i, global1[_wgslsmith_index_u32(12510u, 1u)])), global1[_wgslsmith_index_u32(func_4(false, Struct_2(var_1.x, var_1), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], var_1.x, 46935i, global1[_wgslsmith_index_u32(u_input.b.x, 1u)])), 1u)] >> (func_4(true, Struct_2(1i, var_1), vec4<i32>(-1i, 17843i, global1[_wgslsmith_index_u32(11962u, 1u)], global1[_wgslsmith_index_u32(745u, 1u)])) % 32u), global1[_wgslsmith_index_u32(countOneBits(53101u), 1u)] >> (~1u % 32u)) << (vec4<u32>(~(~1u), ~_wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u), 83367u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], min(0u, 21763u)) & abs(72666u)) % vec4<u32>(32u));
    return _wgslsmith_div_f32(-1261f, arg_0.x);
}

fn func_7(arg_0: f32) -> Struct_4 {
    let var_0 = Struct_4(Struct_1(vec2<bool>(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], 5u)], 5u)]) < (u_input.b.x & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)]), true)));
    var var_1 = func_2(_wgslsmith_dot_vec2_i32(select(_wgslsmith_mult_vec2_i32(select(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], 28226i), vec2<i32>(-58213i, 2147483647i), var_0.a.a), abs(vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4198u, 5u)], 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]))), vec2<i32>(-16339i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)], -8662i), vec4<i32>(global1[_wgslsmith_index_u32(77011u, 1u)], global1[_wgslsmith_index_u32(83567u, 1u)], global1[_wgslsmith_index_u32(62116u, 1u)], -2147483647i))), vec2<bool>(0u < global0[_wgslsmith_index_u32(123141u, 5u)], 1u != global0[_wgslsmith_index_u32(4294967295u, 5u)])), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(10016i, global1[_wgslsmith_index_u32(7431u, 1u)]), vec2<i32>(5143i, global1[_wgslsmith_index_u32(u_input.a, 1u)])) >> ((vec2<u32>(u_input.a, u_input.a) >> (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)))), vec3<bool>(true, true, true));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 28404u;
    var var_1 = func_7(_wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec2_f32(func_1(-2775f)), vec4<bool>(!any(vec3<bool>(false, true, false)), false, u_input.b.x == 0u, true))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

