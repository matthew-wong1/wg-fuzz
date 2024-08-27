struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(-5600i);

var<private> global1: vec4<i32>;

var<private> global2: vec4<f32> = vec4<f32>(-189f, 230f, 190f, 842f);

var<private> global3: array<u32, 27> = array<u32, 27>(34679u, 0u, 75458u, 0u, 0u, 4294967295u, 13359u, 0u, 2592u, 1u, 0u, 6041u, 1u, 0u, 26922u, 1u, 20029u, 64153u, 22023u, 1u, 66109u, 39855u, 65437u, 4294967295u, 15523u, 48322u, 16794u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> bool {
    let var_0 = ~min(_wgslsmith_div_u32(_wgslsmith_mult_u32(64843u, 51229u), arg_1), firstLeadingBit(1u));
    global1 = vec4<i32>(~_wgslsmith_dot_vec3_i32((vec3<i32>(2147483647i, -14518i, 1i) | global1.zww) ^ vec3<i32>(u_input.e, 3808i, u_input.c), vec3<i32>(u_input.c, global1.x, 1i) >> (vec3<u32>(var_0, arg_0.x, 1u) % vec3<u32>(32u))), 0i, global1.x, -41765i);
    global1 = max(~(~(-vec4<i32>(10351i, 1i, -25266i, 12624i)) & (vec4<i32>(-23753i, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 1u)], u_input.c) & vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 1u)], global1.x, -1456i, -7927i))), abs(abs(firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.x, 27u)], 1u)], 12853i, 11770i, global1.x)))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global2.x, 645f)), -419f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1223f, 1611f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(838f))), _wgslsmith_f_op_f32(-560f + global2.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(199f, 292f, -584f, global2.x)) - vec4<f32>(global2.x, -840f, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, -1000f)), true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, 878f, -706f, global2.x)))), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -222f), all(vec3<bool>(false, true, false)))), 473f, -375f), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, global2.x, -1000f, -359f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1000f, -1000f, 927f)))))));
    return all(!vec3<bool>(!(global1.x <= global0[_wgslsmith_index_u32(var_0, 1u)]), true, true));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: vec3<u32>) -> u32 {
    global0 = array<i32, 1>();
    let var_0 = vec3<bool>(!all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))) | !func_3(u_input.a, ~4294967295u), true, !all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))));
    let var_1 = 13967i;
    global2 = arg_0.a;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(max(arg_2.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, arg_0.a.x, -769f, -636f) * _wgslsmith_f_op_vec4_f32(arg_2.a * vec4<f32>(1700f, arg_2.a.x, 515f, 407f))))))));
    return countOneBits(78177u);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(f32(-1f) * -369f))))));
    var var_1 = vec2<f32>(1001f, 2335f);
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.xww + global2.xwx) - global2.zxz);
    let var_4 = _wgslsmith_div_vec4_i32(-(~min(vec4<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14569u, 27u)], 1u)], u_input.e, -37041i, u_input.e), ~vec4<i32>(-82295i, 767i, arg_0.a, 1i))), max(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, reverseBits(0i), global1.x, ~0i), _wgslsmith_add_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], 21347i, arg_0.a), -vec4<i32>(-1i, 2147483647i, -20129i, global1.x))), countOneBits(vec4<i32>(55063i, arg_0.a, u_input.e, max(arg_0.a, global0[_wgslsmith_index_u32(u_input.d, 1u)])))));
    return Struct_2(false, arg_0, _wgslsmith_clamp_i32(-abs(29542i), global1.x, _wgslsmith_div_i32(abs(var_4.x), global0[_wgslsmith_index_u32(~u_input.a.x, 1u)])) & _wgslsmith_mult_i32(max(var_4.x, -25645i), ~var_4.x));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = arg_0.b;
    var var_1 = ~u_input.a;
    var var_2 = func_4(Struct_1((-var_0.a >> (func_2(Struct_3(vec4<f32>(global2.x, global2.x, global2.x, 1011f)), global1.x, Struct_3(vec4<f32>(global2.x, global2.x, global2.x, global2.x)), var_1.xzx) % 32u)) >> (var_1.x % 32u)));
    var var_3 = _wgslsmith_sub_i32(-14497i, 0i);
    return func_4(var_2.b).b;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -countOneBits(func_1(func_4(func_4(arg_1).b), arg_0).a);
    var var_1 = Struct_2(~1i < global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, global3[_wgslsmith_index_u32(16151u, 27u)]), vec2<u32>(26342u, u_input.b.x))), 1u)], Struct_1(u_input.c), -1i | firstLeadingBit(arg_0));
    var var_2 = -8862i;
    var var_3 = Struct_2(any(vec2<bool>(_wgslsmith_mod_u32(5968u, 4294967295u) > _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.a.x, 27u)], global3[_wgslsmith_index_u32(u_input.a.x, 27u)]), u_input.a.xww), !(!var_1.a))), var_1.b, i32(-1i) * -17742i);
    let var_4 = abs(vec4<i32>((arg_0 | 2147483647i) >> (_wgslsmith_clamp_u32(u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 27u)], 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)]) % 32u), i32(-1i) * -44275i, -37240i, -7374i)) ^ ~_wgslsmith_sub_vec4_i32(vec4<i32>(-53202i, countOneBits(var_3.b.a), ~2147483647i, 1i), vec4<i32>(countOneBits(-71690i), -14941i, abs(var_1.c), -arg_1.a));
    return Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(~var_4.x, 1i, firstLeadingBit(func_1(Struct_2(true, Struct_1(var_1.c), arg_1.a), -39862i).a), _wgslsmith_div_i32(-4973i, -38631i)), var_4));
}

fn func_6(arg_0: Struct_1) -> u32 {
    var var_0 = func_4(Struct_1(_wgslsmith_mult_i32(global1.x, 37331i)));
    var var_1 = true;
    var var_2 = -106448i;
    let var_3 = _wgslsmith_f_op_f32(step(-2226f, 720f));
    let var_4 = false;
    return 6321u;
}

fn func_7(arg_0: i32, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = func_4(func_5(abs(-58449i), func_1(Struct_2(any(vec3<bool>(true, true, true)), Struct_1(-9426i), -1i), global1.x)));
    let var_1 = select(u_input.a, u_input.a, vec4<bool>(any(!select(vec3<bool>(var_0.a, true, false), vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, false, true))), false, true, var_0.a));
    let var_2 = global2.zy;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2088f, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_4 = vec4<u32>(66695u, 19976u, 30903u, u_input.a.x >> (~0u % 32u));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(414f * _wgslsmith_f_op_f32(f32(-1f) * -1563f)), var_3.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_3.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(global1.x, vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, -reverseBits(global1.x)), firstTrailingBit(-2147483647i)), select(_wgslsmith_div_i32(countOneBits(-2147483647i), -(~u_input.e)), global0[_wgslsmith_index_u32(func_6(func_5(0i, func_1(Struct_2(true, Struct_1(13159i), u_input.e), global0[_wgslsmith_index_u32(2643u, 1u)]))), 1u)], _wgslsmith_f_op_f32(global2.x * 1f) <= global2.x), _wgslsmith_div_vec4_i32(~(-vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)], 1u)], -2147483647i, -46097i) & countOneBits(vec4<i32>(-1i, 24543i, global0[_wgslsmith_index_u32(1u, 1u)], u_input.e))), _wgslsmith_div_vec4_i32((vec4<i32>(global1.x, -1i, 1i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(61639u, 27u)], 27u)], 1u)]) >> (u_input.a % vec4<u32>(32u))) & max(vec4<i32>(-2147483647i, -2147483647i, u_input.e, u_input.c), vec4<i32>(global1.x, u_input.e, global1.x, global1.x)), vec4<i32>(59912i, 1i, u_input.e, 1i) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(87703u, 27u)], 27u)], 27u)], u_input.d), vec4<u32>(68018u, u_input.d, 4294967295u, u_input.a.x), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)], global3[_wgslsmith_index_u32(u_input.a.x, 27u)], 4449u, 0u)) % vec4<u32>(32u)))));
    global1 = firstLeadingBit(~reverseBits(vec4<i32>(global1.x, global0[_wgslsmith_index_u32(115449u, 1u)], 2147483647i, 1i)) | vec4<i32>(reverseBits(1i), global0[_wgslsmith_index_u32(~4294967295u & global3[_wgslsmith_index_u32(30142u, 27u)], 1u)], global0[_wgslsmith_index_u32(0u, 1u)] & (2147483647i << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)] % 32u)), u_input.e));
    var var_1 = _wgslsmith_f_op_f32(trunc(-1951f));
    let var_2 = global1.xxz;
    let var_3 = min(select(vec4<u32>(_wgslsmith_mod_u32(u_input.d, 12179u) ^ _wgslsmith_add_u32(global3[_wgslsmith_index_u32(0u, 27u)], u_input.d), 4294967295u, ~(~u_input.b.x), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(0u, 27u)], 27u)]), u_input.a, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), u_input.a << (min(~_wgslsmith_sub_vec4_u32(vec4<u32>(4357u, 1u, 1u, u_input.b.x), vec4<u32>(4294967295u, 1u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 27u)], 27u)])), vec4<u32>(~u_input.a.x, reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)]), 23192u, 1u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~1u), 1u, func_6(func_4(Struct_1(-34753i)).b), (global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.b.x, 22793u), 27u)] >> (_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(2377u, 27u)], 25987u) % 32u)) << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, 11408u), ~4294967295u) % 32u)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(var_3, _wgslsmith_mod_vec4_u32(u_input.a, u_input.a)), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(53294u >> (0u % 32u), 27u)], 80679u)), -var_2.yy);
}

