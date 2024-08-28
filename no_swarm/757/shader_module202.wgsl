struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(-4559i, 2147483647i, 2147483647i, 2147483647i, 11273i, 15983i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = abs(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) << (vec3<u32>(0u, 0u, u_input.a.x) % vec3<u32>(32u))), vec3<u32>(u_input.a.x, abs(1u), ~u_input.a.x))), 6u)]);
    let var_1 = select(1i, -(~_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-3112i, -37622i, arg_0)), -vec3<i32>(30660i, arg_0, 13290i))), true);
    let var_2 = Struct_2(Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false))), countOneBits(u_input.a.x), -(~(var_1 & var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(171f - 555f) + -104f)), _wgslsmith_sub_vec2_u32(u_input.a, _wgslsmith_div_vec2_u32(~u_input.a, ~vec2<u32>(u_input.a.x, 0u)))), Struct_1(u_input.a.x < (u_input.a.x << (4294967295u % 32u)), u_input.a.x, global0[_wgslsmith_index_u32(0u, 6u)] & _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 13239i), -vec2<i32>(var_1, 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-406f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(365f * -1504f), _wgslsmith_div_f32(-502f, 1216f))), _wgslsmith_mult_vec2_u32(~u_input.a, abs(vec2<u32>(u_input.a.x, 112995u)))));
    let var_3 = -vec2<i32>(min(-10822i, u_input.c), 2147483647i) >> (~(~min(~vec2<u32>(u_input.a.x, 0u), ~u_input.a)) % vec2<u32>(32u));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.d) + _wgslsmith_f_op_f32(abs(1720f)))), -1666f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1219f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.d)), 537f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.d, var_2.b.d, var_2.b.d, -1583f)))))));
    return 567f;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global0 = array<i32, 6>();
    let var_0 = Struct_1(select(!any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))), select(false, !all(vec2<bool>(false, true)), true), true), u_input.a.x, reverseBits(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), arg_0.zyy))) >> (countOneBits(~u_input.a.x) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-459f - _wgslsmith_f_op_f32(f32(-1f) * -1069f)) + _wgslsmith_f_op_f32(func_3(~(-16260i))))), vec2<u32>(~(~u_input.a.x), abs(~u_input.a.x)) & ~(~vec2<u32>(u_input.a.x, 51536u) & u_input.a));
    var var_1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(~1u, ~u_input.a.x), ~4294967295u << (var_0.b % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.e.x, var_0.b), vec3<u32>(var_0.b, u_input.a.x, u_input.a.x)) & _wgslsmith_sub_u32(u_input.a.x, 4294967295u), ~countOneBits(var_0.b)), abs(_wgslsmith_clamp_vec4_u32(abs(max(vec4<u32>(u_input.a.x, var_0.e.x, u_input.a.x, 86903u), vec4<u32>(var_0.e.x, 54737u, 1u, u_input.a.x))), select(~vec4<u32>(var_0.b, 4294967295u, 0u, 0u), vec4<u32>(u_input.a.x, var_0.e.x, 6705u, var_0.b) ^ vec4<u32>(4294967295u, 0u, 34687u, 120848u), !vec4<bool>(false, false, var_0.a, var_0.a)), select(firstLeadingBit(vec4<u32>(var_0.b, 39903u, 47487u, u_input.a.x)), firstTrailingBit(vec4<u32>(0u, 104137u, 0u, u_input.a.x)), !vec4<bool>(var_0.a, true, var_0.a, var_0.a)))));
    let var_2 = ~global0[_wgslsmith_index_u32(12231u, 6u)];
    global0 = array<i32, 6>();
    return Struct_1(false, ~(17496u >> (~var_1.x % 32u)), global0[_wgslsmith_index_u32(~1u, 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(669f * var_0.d)), reverseBits(reverseBits(reverseBits(u_input.a))) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(29328u, u_input.a.x), reverseBits(u_input.a)), ~vec2<u32>(var_0.e.x, 0u), vec2<u32>(4294967295u << (var_1.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 1u, u_input.a.x, var_0.b), vec4<u32>(13473u, var_1.x, 62765u, var_0.b)))) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(!(0u != u_input.a.x), 1u, _wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_0.c, arg_0.c, -1i, -3920i), arg_1) | arg_1, ~(arg_1 & vec4<i32>(-1i, 5670i, arg_1.x, -31773i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), _wgslsmith_clamp_vec2_u32(u_input.a, select(vec2<u32>(arg_0.e.x, arg_0.b), vec2<u32>(arg_0.e.x, u_input.a.x), !vec2<bool>(arg_0.a, arg_0.a)), ~(~u_input.a))), Struct_1(all(select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), select(vec3<bool>(false, arg_0.a, true), vec3<bool>(false, arg_0.a, false), arg_0.a), all(vec3<bool>(false, arg_0.a, arg_0.a)))), _wgslsmith_dot_vec2_u32(select(~arg_0.e, vec2<u32>(4294967295u, 50092u) ^ arg_0.e, false), ~(u_input.a | vec2<u32>(arg_0.b, u_input.a.x))), arg_0.c, -221f, ~(~(vec2<u32>(u_input.a.x, u_input.a.x) >> (u_input.a % vec2<u32>(32u))))));
    let var_1 = select(select(!vec3<bool>(any(vec3<bool>(arg_0.a, var_0.b.a, true)), true, any(vec3<bool>(false, arg_0.a, false))), !vec3<bool>(true & var_0.a.a, false, true), false), vec3<bool>(true, all(vec3<bool>(var_0.b.a, true, arg_0.a)) && arg_0.a, var_0.b.a), var_0.b.a);
    var var_2 = Struct_2(Struct_1(true, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(20939u, arg_0.b, u_input.a.x, var_0.b.b)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 1u, arg_0.e.x, var_0.a.b), min(vec4<u32>(1u, 0u, arg_0.e.x, var_0.b.b), vec4<u32>(1u, 0u, arg_0.b, var_0.b.e.x)))), -1i, arg_2.x, reverseBits(arg_0.e)), arg_0);
    return Struct_2(Struct_1(func_2(select(vec4<i32>(1i, -2147483647i, 0i, arg_1.x), arg_1, var_2.a.a)).d > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1110f))), 32231u, min(-1i, 82588i << (var_0.b.b % 32u)) >> ((~var_2.b.e.x << (var_2.a.e.x % 32u)) % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.d * -129f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b.d))))), arg_0.e), var_2.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    global0 = array<i32, 6>();
    let var_0 = arg_0;
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    var var_1 = arg_0.a;
    return arg_0.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(arg_0.d + -2180f), _wgslsmith_f_op_f32(arg_0.d + 1382f), arg_0.d))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(-768f)), func_2(vec4<i32>(75177i, global0[_wgslsmith_index_u32(76408u, 6u)], -1i, 24774i)).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f) * _wgslsmith_f_op_f32(-arg_0.d))))), select(!vec3<bool>(u_input.a.x > 35099u, false | arg_0.a, arg_0.a), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, arg_0.a), false), !select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), arg_0.a), _wgslsmith_f_op_f32(-544f + 1405f) < _wgslsmith_f_op_f32(-arg_0.d)), !vec3<bool>(true, arg_0.a, all(vec3<bool>(false, arg_0.a, arg_0.a))))));
    let var_1 = func_2(-reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, arg_0.c, -1i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(arg_0.b, 6u)], u_input.b, arg_0.c, 0i), vec4<i32>(0i, 46993i, 41407i, -2147483647i)))));
    let var_2 = var_1;
    var var_3 = 70298u;
    let var_4 = func_4(func_4(var_2, vec4<i32>(26640i, -global0[_wgslsmith_index_u32(6619u, 6u)], _wgslsmith_div_i32(var_1.c << (var_1.e.x % 32u), ~(-36621i)), abs(_wgslsmith_mod_i32(var_2.c, var_1.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-248f, 416f, -1661f, -699f), vec4<f32>(var_0.x, 1138f, -2386f, arg_0.d)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.d, var_1.d, -351f)))))).b, vec4<i32>(-2147483647i, -(-13743i << (_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(u_input.a.x, 25503u, 4294967295u, 56418u)) % 32u)), ~u_input.c, -23108i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0.d)), _wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d + var_2.d) + -100f))));
    return var_1.d;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_1(true, arg_3, global0[_wgslsmith_index_u32(arg_3, 6u)], _wgslsmith_f_op_f32(func_6(func_5(func_4(func_2(vec4<i32>(global0[_wgslsmith_index_u32(39139u, 6u)], u_input.c, -7069i, 33500i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-40415i, u_input.b, -1i, u_input.b), vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(arg_1.x, 6u)], -26113i, 2147483647i), vec4<i32>(2147483647i, 4766i, global0[_wgslsmith_index_u32(51770u, 6u)], global0[_wgslsmith_index_u32(10529u, 6u)])), vec4<f32>(-186f, -1077f, 373f, 217f)), vec3<bool>(any(vec3<bool>(true, false, true)), arg_0, !arg_0), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b, 48197i, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(20718u, 6u)]), vec4<i32>(global0[_wgslsmith_index_u32(arg_1.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], u_input.c, global0[_wgslsmith_index_u32(78763u, 6u)])), 4294967295u), arg_1, arg_3)), countOneBits(vec2<u32>(arg_1.x, 13954u)));
    var var_1 = all(select(select(!vec2<bool>(var_0.a, true), select(vec2<bool>(false, false), !vec2<bool>(var_0.a, true), !vec2<bool>(arg_0, true)), vec2<bool>(true, true)), vec2<bool>(all(select(vec3<bool>(var_0.a, false, true), vec3<bool>(arg_0, false, true), false)), !arg_0), vec2<bool>(all(vec3<bool>(var_0.a, false, var_0.a)) || any(vec4<bool>(false, arg_0, arg_0, true)), true)));
    let var_2 = select(!select(vec2<bool>(all(vec2<bool>(false, arg_0)), false), vec2<bool>(true, true), select(select(vec2<bool>(false, arg_0), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, arg_0)), !vec2<bool>(arg_0, false), all(vec4<bool>(arg_0, false, arg_0, true)))), !(!vec2<bool>(func_5(Struct_2(Struct_1(true, 1u, global0[_wgslsmith_index_u32(1u, 6u)], -392f, arg_1.yw), Struct_1(true, arg_1.x, -1i, -1613f, vec2<u32>(arg_1.x, 0u))), vec3<bool>(var_0.a, var_0.a, arg_0), vec4<i32>(0i, -1i, 2147483647i, u_input.b), u_input.a.x).a, true)), all(!vec2<bool>(true, arg_0)));
    let var_3 = var_2;
    var_1 = true;
    return func_4(func_4(func_5(func_4(Struct_1(false, 1u, global0[_wgslsmith_index_u32(4294967295u, 6u)], 308f, vec2<u32>(0u, 42493u)), -vec4<i32>(-23700i, -2147483647i, global0[_wgslsmith_index_u32(1u, 6u)], var_0.c), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d, -516f, -403f, -574f)))), vec3<bool>(true, false, var_2.x), vec4<i32>(45791i, var_0.c, 33840i, var_0.c) ^ ~vec4<i32>(var_0.c, 59497i, 14112i, var_0.c), 1u), _wgslsmith_div_vec4_i32(min(min(vec4<i32>(-2147483647i, -1i, global0[_wgslsmith_index_u32(93089u, 6u)], 0i), vec4<i32>(var_0.c, 9638i, global0[_wgslsmith_index_u32(var_0.b, 6u)], 2147483647i)), vec4<i32>(1i, 19523i, global0[_wgslsmith_index_u32(1u, 6u)], 1i)), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 6987i, -1i, u_input.b), vec4<i32>(-1i, 0i, global0[_wgslsmith_index_u32(4294967295u, 6u)], -17125i), vec4<i32>(var_0.c, 0i, -2147483647i, -12049i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-734f, arg_2.x, var_0.d, 335f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-955f, 555f, var_0.d, 1000f))))).a, _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(arg_1.x, 6u)], u_input.b, u_input.b, var_0.c), reverseBits(vec4<i32>(var_0.c, u_input.c, -25057i, -41074i))), u_input.c, 33494i, abs(_wgslsmith_clamp_i32(2168i, global0[_wgslsmith_index_u32(1u, 6u)], var_0.c))), ~(-(~vec4<i32>(84025i, var_0.c, 2147483647i, var_0.c))), -((vec4<i32>(-2147483647i, -11598i, var_0.c, -2147483647i) >> (vec4<u32>(var_0.e.x, 29870u, u_input.a.x, arg_1.x) % vec4<u32>(32u))) << (vec4<u32>(u_input.a.x, u_input.a.x, 0u, var_0.e.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1822f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-587f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(861f + -1328f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -1850f, var_0.d, -1148f), vec4<f32>(var_0.d, arg_2.x, -241f, -1694f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    var var_0 = func_1(all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), true))), vec4<u32>(~u_input.a.x, _wgslsmith_add_u32(u_input.a.x >> (_wgslsmith_mult_u32(0u, u_input.a.x) % 32u), u_input.a.x), 12587u, u_input.a.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(1118f, -1364f)), 341f))), u_input.a.x);
    global0 = array<i32, 6>();
    var var_1 = abs(~0i) << ((u_input.a.x >> (func_1(false, _wgslsmith_clamp_vec4_u32(~vec4<u32>(25684u, 4294967295u, 17589u, u_input.a.x), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 33561u), vec4<u32>(u_input.a.x, var_0.a.e.x, 0u, var_0.b.b)), vec2<f32>(131f, func_5(Struct_2(Struct_1(var_0.a.a, var_0.a.e.x, var_0.b.c, var_0.a.d, vec2<u32>(0u, var_0.b.e.x)), var_0.a), vec3<bool>(true, var_0.b.a, var_0.b.a), vec4<i32>(47741i, var_0.b.c, var_0.a.c, var_0.b.c), 35372u).d), ~1u | (u_input.a.x | 99712u)).a.e.x % 32u)) % 32u);
    var_0 = Struct_2(Struct_1(var_0.a.a, _wgslsmith_add_u32(var_0.b.b, 0u), -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(var_0.a, vec4<u32>(u_input.a.x, var_0.a.b, var_0.b.b, 1u), firstLeadingBit(var_0.b.b))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-310f + var_0.b.d)))), vec2<u32>(u_input.a.x, u_input.a.x)), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(-1274f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -1073f, _wgslsmith_f_op_f32(-var_0.a.d), var_0.a.d) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.d, -151f, -127f, var_0.b.d))))), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.b, var_0.a.b, 1u, u_input.a.x) >> (abs(vec4<u32>(101283u, 4294967295u, u_input.a.x, var_0.a.b)) % vec4<u32>(32u)), select(~vec4<u32>(u_input.a.x, var_0.b.b, 101945u, 1u), ~vec4<u32>(22905u, var_0.a.b, 0u, 69237u), vec4<bool>(true, var_0.b.a, var_0.a.a, var_0.b.a))) | firstTrailingBit(~(~vec4<u32>(u_input.a.x, 5195u, 0u, u_input.a.x))), ~(~(~vec4<u32>(u_input.a.x, 55677u, u_input.a.x, var_0.a.e.x))) >> (~(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u) ^ (vec4<u32>(2906u, u_input.a.x, 40978u, u_input.a.x) << (vec4<u32>(21609u, 4294967295u, 0u, u_input.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), u_input.c ^ (_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 0i), vec3<i32>(u_input.c, var_0.b.c, 4839i)), min(vec3<i32>(-24228i, global0[_wgslsmith_index_u32(var_0.a.b, 6u)], -1i), vec3<i32>(-338i, global0[_wgslsmith_index_u32(var_0.a.e.x, 6u)], -21742i))) >> (~var_0.a.e.x % 32u)));
}

