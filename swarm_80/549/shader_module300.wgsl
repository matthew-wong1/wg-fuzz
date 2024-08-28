struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<Struct_2, 7>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4) -> f32 {
    var var_0 = vec2<i32>(select(arg_1.c.d, ~(_wgslsmith_clamp_i32(arg_1.d.b.d, 35806i, u_input.c) ^ 2147483647i), true), 2429i);
    var var_1 = vec2<u32>(~((max(u_input.a, u_input.a) >> (select(u_input.a, 37462u, arg_1.d.a.x) % 32u)) & max(4294967295u >> (1u % 32u), ~u_input.a)), u_input.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)])) * 976f));
    let var_3 = ~u_input.b;
    var var_4 = vec4<u32>(reverseBits(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), ~u_input.a)), reverseBits(~max(u_input.a, u_input.a)), 4294967295u, max(~(var_1.x << (0u % 32u)), var_1.x) >> (0u % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-186f * _wgslsmith_f_op_f32(1000f + arg_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f))))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = countOneBits(_wgslsmith_mod_vec3_i32(u_input.b.zxz, ~firstTrailingBit(u_input.b.xyy)) << (abs(~vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-544f, global0[_wgslsmith_index_u32(u_input.a, 12u)], 190f) + vec3<f32>(1000f, global0[_wgslsmith_index_u32(u_input.a, 12u)], arg_0.a)))))), Struct_4(207f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 12u)]), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a), 7u)], Struct_3(vec3<bool>(true, false, false), global1[_wgslsmith_index_u32(1u, 7u)]), Struct_3(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), global1[_wgslsmith_index_u32(4294967295u ^ u_input.a, 7u)])))), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b.a.x * 912f), arg_0.b.a.x)))) - arg_0.c), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-54273i, 0i, arg_0.d)) << ((_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 50322u), vec3<u32>(u_input.a, u_input.a, u_input.a)) & select(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(43949u, 4294967295u, 12540u), false)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(u_input.b.wwx, -u_input.b.ywx) << (~vec3<u32>(15666u, u_input.a, u_input.a) % vec3<u32>(32u))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-985f * arg_0.c))), 157f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(select(arg_0.b.a, vec3<f32>(arg_0.a, var_1.c, arg_0.c), vec3<bool>(false, false, true))), Struct_4(220f, global0[_wgslsmith_index_u32(u_input.a, 12u)], Struct_2(global0[_wgslsmith_index_u32(30381u, 12u)], arg_0.b, global0[_wgslsmith_index_u32(0u, 12u)], var_0.x), Struct_3(vec3<bool>(true, true, false), Struct_2(1091f, var_1.b, arg_0.a, 0i)), Struct_3(vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(45336u, 7u)])))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -261f)))), 1586f), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a))), arg_0.b, -107f, var_1.d), Struct_3(vec3<bool>(-1403f < _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 12u)] + var_1.b.a.x), true, all(vec2<bool>(true, true))), Struct_2(1000f, Struct_1(arg_0.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(0u, 12u)], -298f))), reverseBits(_wgslsmith_div_i32(0i, var_0.x)))), Struct_3(select(vec3<bool>(true, any(vec4<bool>(false, true, false, true)), var_1.a < var_1.b.a.x), vec3<bool>(true, true, true), vec3<bool>(true, u_input.a >= 1u, true)), global1[_wgslsmith_index_u32(max(~_wgslsmith_add_u32(u_input.a, 10216u), u_input.a), 7u)]));
    var_1 = Struct_2(_wgslsmith_f_op_f32(arg_0.a - 812f), arg_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 12u)])))))), abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~u_input.b, abs(vec4<i32>(2147483647i, 22900i, 3558i, 0i))), -(~var_2.d.b.d), ~firstTrailingBit(var_2.d.b.d))));
    var var_3 = _wgslsmith_clamp_u32(min(4294967295u, abs(_wgslsmith_mult_u32(u_input.a, u_input.a))) ^ u_input.a, ~(~u_input.a), u_input.a);
    return var_2.d.b.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = firstTrailingBit(abs(min(arg_1.x, arg_1.x)));
    let var_1 = arg_3.c.b;
    var var_2 = arg_3.e;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1821f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f) - var_1.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(-305f * var_2.b.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1467f + arg_0.a.x)))), _wgslsmith_f_op_f32(-1f)));
    var var_4 = arg_0;
    return arg_3.c;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4) -> vec3<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.d.b.c)))), func_4(arg_2.c.b, select(~abs(vec2<u32>(29481u, 4294967295u)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), reverseBits(vec2<u32>(6u, u_input.a))), !vec2<bool>(arg_2.e.a.x, arg_2.d.a.x)), _wgslsmith_mult_vec4_i32(u_input.b, _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_2.c.d, arg_1, -28425i, 57927i), ~vec4<i32>(arg_1, 1i, 3833i, -17929i), vec4<i32>(10326i, -6504i, arg_1, u_input.c))), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -389f), arg_0.b.a.x, Struct_2(_wgslsmith_f_op_f32(-arg_2.a), Struct_1(vec3<f32>(arg_0.c, 222f, 1109f)), arg_2.b, 1i | arg_0.d), arg_2.d, Struct_3(select(vec3<bool>(arg_2.d.a.x, false, false), vec3<bool>(false, arg_2.d.a.x, true), vec3<bool>(arg_2.d.a.x, arg_2.d.a.x, arg_2.e.a.x)), Struct_2(arg_0.b.a.x, arg_0.b, arg_0.b.a.x, arg_1)))).b, _wgslsmith_f_op_f32(ceil(arg_2.c.c)), select(-(~1i), ~firstTrailingBit(_wgslsmith_mod_i32(arg_2.e.b.d, -15938i)), true));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(func_4(func_2(Struct_2(var_0.c, Struct_1(arg_2.e.b.b.a), -488f, arg_1)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(58122u, u_input.a)), vec4<i32>(4060i, arg_1, 11404i, arg_0.d), Struct_4(arg_0.b.a.x, arg_2.b, Struct_2(var_0.a, Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(0u, 12u)], -815f, arg_0.c)), 398f, 35499i), Struct_3(vec3<bool>(arg_2.d.a.x, false, false), Struct_2(arg_0.b.a.x, arg_2.d.b.b, 479f, -25227i)), arg_2.d)).b.a.x, -436f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2189f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.a.x - 1152f) + _wgslsmith_f_op_f32(-var_0.b.a.x)), arg_0.c, all(arg_2.d.a)))));
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1376f, _wgslsmith_f_op_f32(select(595f, var_0.c, arg_2.d.a.x)), _wgslsmith_f_op_f32(-var_1.a.x)))), ~abs(~vec2<u32>(u_input.a, u_input.a)), -vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(26951i, arg_1, -26492i, 33565i), vec4<i32>(arg_0.d, 39833i, u_input.c, 37638i)), arg_2.d.b.d, 29018i, 14565i), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(633f + _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(floor(884f)), func_4(func_4(var_1, vec2<u32>(0u, u_input.a) & vec2<u32>(0u, 23589u), u_input.b, arg_2).b, _wgslsmith_add_vec2_u32(vec2<u32>(9955u, 0u), vec2<u32>(u_input.a, 11026u)) & vec2<u32>(u_input.a, 10022u), u_input.b, Struct_4(-1138f, var_0.a, func_4(Struct_1(arg_2.d.b.b.a), vec2<u32>(u_input.a, u_input.a), u_input.b, arg_2), Struct_3(vec3<bool>(arg_2.d.a.x, true, true), var_0), arg_2.e)), arg_2.e, Struct_3(!select(arg_2.d.a, vec3<bool>(arg_2.d.a.x, true, true), vec3<bool>(arg_2.e.a.x, arg_2.e.a.x, arg_2.d.a.x)), arg_0)));
    let var_3 = vec3<bool>(any(!vec2<bool>(!arg_2.e.a.x, true)), true, true);
    var_2 = Struct_2(var_2.a, arg_2.c.b, _wgslsmith_f_op_f32(-arg_2.e.b.a), 1i);
    return _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.a, 28304u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)), vec3<u32>(u_input.a, 0u, 23528u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), ~vec3<u32>(u_input.a, 4294967295u, u_input.a), ~vec3<u32>(62910u, u_input.a, 0u))), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 14495u, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 15983u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), max(vec3<u32>(u_input.a, u_input.a, 57653u), vec3<u32>(89367u, 36154u, u_input.a))) | abs(_wgslsmith_mult_vec3_u32(vec3<u32>(86866u, 4294967295u, 1u), vec3<u32>(1u, u_input.a, u_input.a)))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = select(~func_5(func_4(func_2(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 12u)], arg_0.b, global0[_wgslsmith_index_u32(57367u, 12u)], 1i)), vec2<u32>(0u, u_input.a), abs(vec4<i32>(u_input.c, -2147483647i, u_input.c, 23792i)), Struct_4(arg_0.c, -2152f, arg_0, Struct_3(vec3<bool>(false, true, false), Struct_2(1000f, Struct_1(arg_0.b.a), arg_0.a, arg_0.d)), Struct_3(vec3<bool>(false, false, true), global1[_wgslsmith_index_u32(73780u, 7u)]))), arg_0.d, Struct_4(566f, global0[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 26377u), 7u)], Struct_3(vec3<bool>(false, false, false), Struct_2(arg_0.c, Struct_1(arg_0.b.a), 1646f, arg_0.d)), Struct_3(vec3<bool>(true, true, false), Struct_2(707f, Struct_1(vec3<f32>(-1382f, 854f, global0[_wgslsmith_index_u32(4294967295u, 12u)])), 1000f, -58932i)))), vec3<u32>(countOneBits(_wgslsmith_div_u32(63161u, _wgslsmith_add_u32(4294967295u, u_input.a))), 96816u, 90803u), select(vec3<bool>(37863i != arg_0.d, ~u_input.b.x < u_input.b.x, select(select(false, true, true), true, false)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, true)));
    let var_1 = arg_0.b;
    global0 = array<f32, 12>();
    global1 = array<Struct_2, 7>();
    var var_2 = 1u;
    return func_2(func_4(var_1, var_0.yy, -(~vec4<i32>(-1i, u_input.c, 1i, 50552i)), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(min(var_1.a.x, 648f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1[_wgslsmith_index_u32(~u_input.a, 7u)], Struct_3(vec3<bool>(false, false, false), Struct_2(-1010f, var_1, -1257f, 36880i)), Struct_3(vec3<bool>(false, true, true), func_4(arg_0.b, vec2<u32>(7766u, 0u), u_input.b, Struct_4(233f, -1327f, Struct_2(-1123f, Struct_1(vec3<f32>(-953f, -605f, global0[_wgslsmith_index_u32(4294967295u, 12u)])), 471f, u_input.c), Struct_3(vec3<bool>(false, false, true), Struct_2(var_1.a.x, Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 12u)], 468f, arg_0.b.a.x)), arg_0.c, -54197i)), Struct_3(vec3<bool>(false, false, false), Struct_2(arg_0.a, Struct_1(arg_0.b.a), 1541f, u_input.c))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, all(vec2<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true)), any(vec4<bool>(false, true, true, true)))));
    global1 = array<Struct_2, 7>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(25997u, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], -2519f))), vec3<f32>(global0[_wgslsmith_index_u32(0u, 12u)], -145f, -309f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4737u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], 532f)))))));
    global0 = array<f32, 12>();
    var var_2 = _wgslsmith_f_op_f32(865f + 541f);
    let var_3 = vec4<u32>(u_input.a, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, select(0u, 27687u, var_0.x)), ~max(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, 21408u)))), _wgslsmith_mult_u32(0u, 27606u), 31441u);
    var var_4 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, abs(_wgslsmith_div_u32(u_input.a, 4294967295u))) >> (_wgslsmith_add_u32(~18372u, ~var_3.x) % 32u), 12u)], global0[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, var_3.x) << (~_wgslsmith_dot_vec4_u32(reverseBits(var_3), min(vec4<u32>(4294967295u, 35693u, var_3.x, 1u), var_3)) % 32u), 7u)], Struct_3(vec3<bool>(false, true, all(vec2<bool>(false, var_0.x))), global1[_wgslsmith_index_u32(u_input.a, 7u)]), Struct_3(vec3<bool>(var_0.x, var_0.x, all(!vec2<bool>(var_0.x, true))), Struct_2(var_1.a.x, func_1(global1[_wgslsmith_index_u32(var_3.x, 7u)]), -740f, i32(-1i) * -2147483647i)));
    var var_5 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -2186f), var_4.c.a, func_4(func_2(Struct_2(_wgslsmith_f_op_f32(-var_4.d.b.b.a.x), func_1(var_4.c), 1285f, i32(-1i) * -8068i)), var_3.yy, firstTrailingBit(u_input.b), Struct_4(_wgslsmith_f_op_f32(min(-635f, _wgslsmith_f_op_f32(step(-540f, global0[_wgslsmith_index_u32(24454u, 12u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a, 12u)])))), func_4(var_4.c.b, vec2<u32>(var_3.x, 1u), _wgslsmith_sub_vec4_i32(u_input.b, u_input.b), Struct_4(-1011f, var_4.c.a, var_4.d.b, Struct_3(vec3<bool>(var_4.d.a.x, false, true), Struct_2(var_4.a, Struct_1(var_4.e.b.b.a), 1000f, 0i)), Struct_3(vec3<bool>(var_4.d.a.x, var_4.e.a.x, true), Struct_2(global0[_wgslsmith_index_u32(1u, 12u)], Struct_1(var_1.a), var_1.a.x, -47994i)))), var_4.e, var_4.d)), Struct_3(var_4.d.a, var_4.e.b), var_4.d);
    global1 = array<Struct_2, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.zx, var_5.c.b.a);
}

