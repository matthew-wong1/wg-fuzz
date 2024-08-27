struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: vec3<u32> = vec3<u32>(72637u, 35259u, 0u);

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 0i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>) -> bool {
    var var_0 = !vec2<bool>(arg_1.x, arg_1.x);
    var var_1 = 1i << (~4294967295u % 32u);
    let var_2 = firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(~global0.x, abs(u_input.a.x | global0.x), u_input.a.x), 4294967295u, ~(~(~u_input.a.x))));
    let var_3 = Struct_2(~(~(-vec2<i32>(global1.x, 0i) << (var_2.yz % vec2<u32>(32u)))), Struct_1(vec3<u32>(~(~var_2.x), _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(u_input.a.x, var_2.x, 9839u)) | arg_0.x, _wgslsmith_mod_u32(39056u, ~34565u)), vec4<bool>(any(vec2<bool>(var_0.x, true)), false, all(!vec4<bool>(false, var_0.x, true, false)), arg_1.x != false), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1053f, 1140f, 703f))), vec3<f32>(685f, 1374f, -536f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-543f, -987f, -300f) * vec3<f32>(1495f, -1000f, 199f)))), arg_1)), abs(-vec3<i32>(global1.x, 1005i, 2785i)) | vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, -7902i, 2787i), vec3<i32>(2147483647i, global1.x, -1i)), global1.x, abs(global1.x))), ~vec4<u32>(var_2.x, max(var_2.x, u_input.a.x), ~71442u, u_input.a.x), !vec4<bool>(true, true, arg_1.x, arg_1.x), ~abs(-_wgslsmith_div_i32(1i, 21258i)));
    let var_4 = _wgslsmith_mod_vec2_u32(u_input.a.xx, ~_wgslsmith_mult_vec2_u32(~(~u_input.a.xx), firstTrailingBit(vec2<u32>(u_input.a.x, 1u) << (vec2<u32>(15255u, var_2.x) % vec2<u32>(32u)))));
    return var_3.b.b.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> bool {
    global0 = arg_2;
    var var_0 = Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_2.x, 1u), ~u_input.a), vec3<u32>(global0.x & 12701u, ~arg_2.x, ~85014u)), vec3<u32>(firstTrailingBit(~global0.x), 37869u, _wgslsmith_dot_vec2_u32(u_input.a.xz, abs(vec2<u32>(17184u, global0.x))))), vec4<bool>(true, any(vec4<bool>(all(vec3<bool>(arg_1, arg_1, arg_1)), true || arg_1, func_3(u_input.a, vec3<bool>(arg_1, false, true)), true)), global0.x > firstTrailingBit(4294967295u), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f + -1024f)), _wgslsmith_f_op_f32(914f + _wgslsmith_f_op_f32(-1000f + -444f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1005f - -2421f)))), vec3<i32>(-48820i, select(_wgslsmith_mod_i32(8569i, 1i) << (arg_2.x % 32u), 1i, arg_1), ~arg_0));
    let var_1 = Struct_3(select(var_0.b.wx, var_0.b.wz, true), -445f, 1140f, _wgslsmith_mod_i32(global1.x, global1.x));
    global0 = arg_2;
    let var_2 = vec4<u32>(_wgslsmith_add_u32(max(~6681u << (global0.x % 32u), _wgslsmith_mod_u32(firstTrailingBit(var_0.a.x), _wgslsmith_dot_vec2_u32(global0.zx, vec2<u32>(70171u, var_0.a.x)))), ~45577u), 1u, _wgslsmith_div_u32(~global0.x, global0.x), 16960u >> (_wgslsmith_dot_vec3_u32(firstTrailingBit(reverseBits(arg_2)), ~(~arg_2)) % 32u));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(63685u, var_0.a.x & global0.x), 27874u, _wgslsmith_dot_vec2_u32(vec2<u32>(17518u, 1u), vec2<u32>(global0.x, 0u)) | ~var_0.a.x, ~var_2.x), reverseBits(vec4<u32>(39929u ^ var_2.x, firstTrailingBit(49764u), 1u, ~var_0.a.x))) == ~1u;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    global0 = u_input.a;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1745f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(284f)))), _wgslsmith_f_op_f32(f32(-1f) * -430f), 1917f)));
    var var_1 = Struct_1(u_input.a, !(!vec4<bool>(any(vec2<bool>(false, false)), false, any(vec2<bool>(arg_3, true)), all(vec2<bool>(false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), 300f) + vec3<f32>(-2462f, _wgslsmith_f_op_f32(f32(-1f) * -381f), var_0.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(-2147483647i, 0i, arg_2.x)), arg_2.x, global1.x), arg_2));
    let var_2 = all(!var_1.b.xwz);
    let var_3 = Struct_3(vec2<bool>(!var_2, func_2(1i, any(var_1.b.xw), vec3<u32>(104191u, 8222u, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(abs(var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -819f) - var_0.x), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(abs(var_1.d.x), ~0i ^ (var_1.d.x >> (var_1.a.x % 32u)), -43952i), firstLeadingBit(_wgslsmith_mult_i32(~var_1.d.x, -1i))));
    return Struct_1(~u_input.a, !(!var_1.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(942f)) - _wgslsmith_f_op_f32(-var_1.c.x)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -151f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c)) + var_0.zwx), vec3<bool>(true, !func_3(var_1.a, var_1.b.xxz), !(!var_1.b.x)))), ~arg_2);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global1 = vec2<i32>(-1i) * -vec2<i32>(0i, firstLeadingBit(firstLeadingBit(global1.x)));
    let var_0 = Struct_2(~vec2<i32>(0i, global1.x), func_1(arg_1.d, ~_wgslsmith_add_vec2_u32(arg_1.a.zx & arg_1.a.zz, ~arg_2.a.xz), abs(~arg_1.d) | max(vec3<i32>(arg_1.d.x, arg_1.d.x, 1i), arg_1.d), (true & arg_2.b.x) & (arg_2.d.x == -arg_1.d.x)), vec4<u32>(4294967295u, ~arg_2.a.x, 4294967295u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), global0.zx)), select(!(!vec4<bool>(arg_1.b.x, arg_2.b.x, true, arg_2.b.x)), select(!vec4<bool>(arg_1.b.x, false, true, false), func_1(max(vec3<i32>(global1.x, global1.x, arg_1.d.x), arg_2.d), u_input.a.zy, -vec3<i32>(arg_2.d.x, arg_2.d.x, arg_1.d.x), arg_2.b.x & true).b, arg_1.b.x), !arg_2.b.x), i32(-1i) * -2147483647i);
    global1 = var_0.b.d.yx;
    var var_1 = vec2<bool>(arg_1.b.x, var_0.b.b.x);
    global1 = vec2<i32>(~(~arg_2.d.x), arg_1.d.x);
    return global0.x | 1u;
}

fn func_5(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = vec3<i32>(global1.x >> (~0u % 32u), global1.x, -1i);
    global1 = reverseBits(-_wgslsmith_sub_vec2_i32(var_0.zx, ~_wgslsmith_add_vec2_i32(var_0.zx, vec2<i32>(var_0.x, var_0.x))));
    let var_1 = Struct_2(~(vec2<i32>(var_0.x, -2147483647i) >> ((~vec2<u32>(u_input.a.x, 4294967295u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(37191u, 5015u), global0.xy)) % vec2<u32>(32u))), func_1(select(vec3<i32>(min(var_0.x, var_0.x), 42773i, -global1.x), func_1(-vec3<i32>(global1.x, global1.x, 26332i), max(vec2<u32>(53727u, arg_1.x), u_input.a.xy), -vec3<i32>(-75474i, var_0.x, -1i), false).d, !func_1(vec3<i32>(global1.x, global1.x, var_0.x), global0.zy, vec3<i32>(global1.x, var_0.x, global1.x), true).b.wxw), ~(~vec2<u32>(arg_1.x, 4294967295u) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, 14083u)) % vec2<u32>(32u))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0.x, global1.x), vec3<i32>(var_0.x, var_0.x, 1i)), (all(vec2<bool>(false, false)) == false) || (true != func_3(arg_1, vec3<bool>(false, true, false)))), vec4<u32>(4294967295u, 4294967295u, arg_1.x, _wgslsmith_dot_vec3_u32(~(~arg_1), ~(~arg_1))), func_1(vec3<i32>(~(~(-16270i)), ~1i | global1.x, _wgslsmith_clamp_i32(global1.x, -var_0.x, 0i >> (global0.x % 32u))), vec2<u32>(global0.x, 1u), max(countOneBits(firstTrailingBit(vec3<i32>(global1.x, var_0.x, global1.x))), vec3<i32>(global1.x, 1i, -global1.x)), _wgslsmith_f_op_f32(floor(439f)) < 1266f).b, -(~firstLeadingBit(-35685i)));
    let var_2 = func_1(var_1.b.d, ~vec2<u32>(1u, global0.x), vec3<i32>(-21104i, -37120i, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.x, var_0.x, 1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 0i, var_1.b.d.x, var_0.x), vec4<i32>(var_1.a.x, var_0.x, -2899i, -1i)))), true).d.x;
    let var_3 = arg_0;
    return Struct_1(~vec3<u32>(countOneBits(~1u), ~(~arg_1.x), _wgslsmith_mult_u32(6377u, countOneBits(1u))), vec4<bool>(!(!(1406f >= var_1.b.c.x)), all(vec3<bool>(var_1.b.b.x, true, false)), false, func_3(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 11764u), vec3<u32>(global0.x, 1u, 64697u)), var_1.d.www)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1.b.c, vec3<f32>(var_3, var_3, -1897f)), vec3<f32>(var_3, var_3, -1000f)))), abs(-vec3<i32>(var_0.x, -4966i, ~var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-1532f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-590f, -941f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(619f, -2194f) - -741f)))), vec3<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(25388u, global0.x), vec2<u32>(global0.x, u_input.a.x))), min(reverseBits(4294967295u), 4294967295u), func_4(1403f, func_1(-vec3<i32>(global1.x, global1.x, global1.x), firstTrailingBit(vec2<u32>(u_input.a.x, 43694u)), vec3<i32>(-30020i, global1.x, global1.x) ^ vec3<i32>(global1.x, global1.x, global1.x), true), Struct_1(firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec4<bool>(true, false, false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1557f, -452f, 1237f)), abs(vec3<i32>(-4379i, 0i, 2147483647i))))));
    global0 = var_0.a;
    var_0 = Struct_1(~u_input.a, func_5(_wgslsmith_f_op_f32(-var_0.c.x), reverseBits(vec3<u32>(0u, ~global0.x, ~28414u))).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-716f, var_0.c.x, var_0.c.x) * vec3<f32>(479f, -219f, -422f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x) * var_0.c))))), var_0.d);
    var var_1 = Struct_1(select((vec3<u32>(1u, 0u, u_input.a.x) | func_1(var_0.d, var_0.a.xz, var_0.d, var_0.b.x).a) << (~_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(var_0.a.x, 26274u, global0.x)) % vec3<u32>(32u)), ~firstTrailingBit(u_input.a), var_0.b.x), vec4<bool>(func_1(var_0.d, vec2<u32>(~1u, 1u), ~(~var_0.d), select(var_0.b.x, true, var_0.b.x || true)).b.x, !func_1(-var_0.d, _wgslsmith_div_vec2_u32(vec2<u32>(76734u, 36528u), u_input.a.zz), reverseBits(vec3<i32>(global1.x, 1i, var_0.d.x)), var_0.c.x <= var_0.c.x).b.x, !var_0.b.x, false), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(952f, _wgslsmith_f_op_f32(451f * var_0.c.x), _wgslsmith_f_op_f32(var_0.c.x - -233f)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.c)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1117f, var_0.c.x, var_0.c.x))))))), var_0.d);
    var var_2 = vec4<i32>(~(-var_0.d.x), max(_wgslsmith_sub_i32(firstLeadingBit(var_1.d.x) ^ global1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.d.xz, vec2<i32>(var_1.d.x, 803i)), vec2<i32>(2147483647i, var_1.d.x))), -1i), _wgslsmith_mod_i32(~(-3i), -2147483647i), var_1.d.x);
    var var_3 = var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x);
}

