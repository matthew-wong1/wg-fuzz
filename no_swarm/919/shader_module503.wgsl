struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: vec3<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    global0 = array<bool, 31>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-756f, -847f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1470f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - global1.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = ~1u;
    let var_2 = Struct_2(vec4<bool>(false, !(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1, var_1), 31u)]), any(select(vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(19296u, 31u)]), true)), any(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 31u)], true, false), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(0u, 31u)])) || global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1, ~var_1), 31u)]), vec3<u32>(var_1, var_1, 70856u));
    var var_3 = 1u;
    return global0[_wgslsmith_index_u32(53594u, 31u)] != global0[_wgslsmith_index_u32(var_2.b.x, 31u)];
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_2(!vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)], all(!vec2<bool>(arg_1.a.x, global0[_wgslsmith_index_u32(34767u, 31u)])), all(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1.b.x, 31u)]))), arg_1.b);
    let var_1 = arg_0.b.b;
    let var_2 = -12133i;
    global1 = arg_0.c.wwy;
    var var_3 = firstLeadingBit(_wgslsmith_mod_u32(arg_1.b.x, (~var_0.b.x & _wgslsmith_mult_u32(4294967295u, 1u)) >> (~(~arg_1.b.x) % 32u)));
    return (reverseBits(-2147483647i) ^ select(var_2, _wgslsmith_dot_vec2_i32(min(vec2<i32>(arg_0.b.b, -1i), vec2<i32>(var_1, 12428i)), select(u_input.b.xz, vec2<i32>(-3382i, var_2), false)), true)) << (~1u % 32u);
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_2 {
    let var_0 = func_4(Struct_4(Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 15994i, -16048i, u_input.c.x), vec4<i32>(-36540i, -28091i, u_input.d, u_input.b.x) | vec4<i32>(u_input.d, 27307i, -1i, 16264i)), min(-u_input.d, ~0i)), Struct_1(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.a.x, u_input.b.x), vec4<i32>(0i, u_input.d, u_input.a.x, 2147483647i))), ~u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(abs(global1.x)), 1000f, global1.x)), !func_3()), Struct_2(vec4<bool>(func_3(), false, arg_0, true), abs(~vec3<u32>(1u, 1012u, 0u))));
    var var_1 = Struct_1(select(min(-vec4<i32>(0i, -22188i, u_input.c.x, -47202i), -vec4<i32>(34556i, -4954i, var_0, 532i)) | ((vec4<i32>(u_input.a.x, 0i, u_input.c.x, -38240i) << (vec4<u32>(1u, 4294967295u, 1u, 16977u) % vec4<u32>(32u))) << (~vec4<u32>(60869u, 45838u, 12074u, 11680u) % vec4<u32>(32u))), select(vec4<i32>(8869i, 2147483647i, 64111i, -5407i) ^ select(vec4<i32>(61462i, 1i, u_input.c.x, u_input.c.x), vec4<i32>(var_0, var_0, var_0, var_0), false), countOneBits(vec4<i32>(0i, var_0, var_0, u_input.c.x)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(6440i, u_input.a.x, var_0, -1619i), vec4<i32>(u_input.d, var_0, -11971i, 0i), vec4<i32>(0i, -2147483647i, -1i, 8669i)), !vec4<bool>(arg_1, true, arg_1, false)), true), abs(_wgslsmith_mod_i32(2147483647i, u_input.d)));
    var var_2 = var_0;
    return Struct_2(!vec4<bool>(false, !arg_0, arg_1 & true, any(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], arg_1))), ~reverseBits(~max(vec3<u32>(4294967295u, 10540u, 37439u), vec3<u32>(1u, 39320u, 44888u))));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_4(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(select(u_input.c.x, u_input.b.x, true), u_input.d, func_4(Struct_4(Struct_1(vec4<i32>(u_input.a.x, 1i, u_input.b.x, 2147483647i), u_input.a.x), Struct_1(vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.d), u_input.b.x), vec4<f32>(-140f, 173f, 549f, -1015f), true), arg_1), -u_input.b.x), countOneBits(vec4<i32>(u_input.b.x, u_input.a.x, 1i, u_input.b.x) >> (vec4<u32>(44315u, arg_0, arg_0, arg_1.b.x) % vec4<u32>(32u)))), u_input.a.x), Struct_1(firstLeadingBit(vec4<i32>(-43113i >> (arg_1.b.x % 32u), 1i, _wgslsmith_mult_i32(2147483647i, u_input.d), min(-2147483647i, 8864i))), u_input.c.x), vec4<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) * _wgslsmith_div_f32(1536f, global1.x)), _wgslsmith_f_op_f32(abs(-889f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * 589f), 557f)))), global1.x), !any(!(!arg_1.a.yxw)));
    var var_1 = 1i;
    var_1 = func_4(Struct_4(var_0.a, var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), var_0.d), Struct_2(vec4<bool>(arg_1.a.x, false || global0[_wgslsmith_index_u32(1756u, 31u)], global0[_wgslsmith_index_u32(~1u, 31u)], !global0[_wgslsmith_index_u32(1u, 31u)]), func_2(787f != global1.x, global0[_wgslsmith_index_u32(~arg_1.b.x, 31u)]).b)) << (arg_0 % 32u);
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.c * _wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(-var_0.c)))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, -1044f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -1790f, var_0.c.x) + var_0.c.yyx)), var_0.c.yzy), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c.x, global1.x, var_0.c.x), var_2.xwz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.xxw * var_2.xwy))))));
    return Struct_1(vec4<i32>(countOneBits(2147483647i), -1i, u_input.c.x, -1i), min(-u_input.a.x, -(_wgslsmith_add_i32(u_input.b.x, u_input.b.x) >> (arg_1.b.x % 32u))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_u32(~countOneBits(vec3<u32>(22218u, ~17748u, _wgslsmith_add_u32(0u, arg_0))), vec3<u32>(min(~abs(arg_0), ~(~41704u)), reverseBits(arg_0 & 1u), arg_0 << (max(reverseBits(0u), 1u) % 32u)));
    var var_1 = Struct_4(func_5(4294967295u, func_2(true, false)), func_5(55041u, func_2(all(!vec3<bool>(global0[_wgslsmith_index_u32(39814u, 31u)], global0[_wgslsmith_index_u32(28895u, 31u)], global0[_wgslsmith_index_u32(39533u, 31u)])), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x << (0u % 32u), _wgslsmith_div_u32(4294967295u, 6330u), 1u), 31u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(972f, global1.x), _wgslsmith_f_op_f32(ceil(global1.x)), -473f, -926f)))), all(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 31u)], true)));
    let var_2 = Struct_4(var_1.b, var_1.b, var_1.c, !(any(vec4<bool>(false, true, false, true)) || true) && (!global0[_wgslsmith_index_u32(1u, 31u)] && all(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], var_1.d, true))));
    return Struct_2(vec4<bool>(true, true, all(vec4<bool>(false | var_1.d, all(vec3<bool>(global0[_wgslsmith_index_u32(43647u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], var_1.d)), true, var_2.d)), all(vec2<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], false)), true))), var_0);
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>) -> i32 {
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -389f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x - global1.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 1844f)) - 961f), 1068f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -443f)))));
    let var_0 = arg_0;
    let var_1 = ~1u;
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    return _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~u_input.b, ~min(_wgslsmith_sub_vec3_i32(u_input.b, u_input.b), vec3<i32>(u_input.a.x, u_input.c.x, -10100i) | vec3<i32>(-56608i, 1i, u_input.d))), vec3<i32>(-abs(u_input.a.x), ~(~1i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-68075i, u_input.c.x, -1i)), _wgslsmith_add_i32(-2084i, -13438i)), u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(882f)) < global1.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -357f, global1.x, 429f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1117f, -107f, -473f, 1614f), vec4<f32>(global1.x, 2024f, global1.x, global1.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -421f, 388f) - vec4<f32>(global1.x, global1.x, 1165f, global1.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -166f, global1.x, 877f), vec4<f32>(-181f, global1.x, -835f, global1.x), vec4<bool>(var_0, false, false, var_0)))) + vec4<f32>(309f, _wgslsmith_f_op_f32(-842f - global1.x), global1.x, _wgslsmith_f_op_f32(sign(global1.x)))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, global1.x, 447f, global1.x))))))));
    let var_2 = abs(_wgslsmith_mod_i32(firstLeadingBit(-(~u_input.c.x)), func_6(_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 16466u, 41162u, 4294967295u), vec4<u32>(94414u, 22085u, 48641u, 1u))), func_1(countOneBits(1u)), vec2<bool>(!var_0, !var_0))));
    global0 = array<bool, 31>();
    let var_3 = func_2(any(vec2<bool>(true, true)), true).a;
    let var_4 = Struct_4(func_5(_wgslsmith_mult_u32(32720u, 0u), func_1(1u & select(26475u, 0u, var_0))), func_5(min(1u, 38678u), Struct_2(vec4<bool>(any(var_3.xw), true, false || var_3.x, any(vec2<bool>(false, false))), vec3<u32>(1u, 1u, 1u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -788f, global1.x, global1.x)) - vec4<f32>(global1.x, -1292f, var_1.x, -208f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, -686f, var_1.x, var_1.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 450f) + vec4<f32>(-318f, 1837f, -1468f, 1798f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1874f, var_1.x, global1.x, global1.x), vec4<f32>(var_1.x, global1.x, var_1.x, var_1.x), vec4<bool>(false, true, true, var_0)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, var_1.x, global1.x, var_1.x) - vec4<f32>(-282f, global1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -169f, 1304f, 1837f) * vec4<f32>(global1.x, -490f, var_1.x, -355f)), var_3)))), false);
    var var_5 = Struct_4(Struct_1(vec4<i32>(-var_4.a.a.x, u_input.b.x >> (~1u % 32u), func_6(4294967295u, Struct_2(var_3, vec3<u32>(29151u, 1u, 6935u)), !var_3.yz), var_4.b.a.x), 19374i), Struct_1(~func_5(~0u, func_1(14591u)).a, ~(-(var_4.a.a.x ^ 56358i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_4.c + var_4.c)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_4.c, var_4.c) * vec4<f32>(var_4.c.x, -1077f, 1730f, global1.x))), false);
    global0 = array<bool, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~1u, var_4.c, ~max(vec3<u32>(55471u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 17386u, 4294967295u, 90896u), vec4<u32>(4294967295u, 4294967295u, 64404u, 4294967295u)), _wgslsmith_div_u32(89690u, 1u)), firstTrailingBit(vec3<u32>(34786u, 0u, 4294967295u))));
}

