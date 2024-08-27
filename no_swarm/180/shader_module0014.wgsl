struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(0i, -1i);

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    global1 = select(!vec3<bool>(!arg_0.a, true, true), select(vec3<bool>(true, arg_0.a, all(vec3<bool>(arg_0.a, global1.x, true))), select(vec3<bool>(true, true, true), vec3<bool>(select(true, global1.x, global1.x), global1.x && true, arg_0.a), all(!vec3<bool>(true, false, global1.x))), true), select(select(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, true, true), any(vec3<bool>(true, false, arg_0.a))), select(vec3<bool>(global1.x, false, arg_0.a), select(vec3<bool>(global1.x, true, true), vec3<bool>(arg_0.a, false, true), vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), vec3<bool>(false, true, arg_0.a)), !(!vec3<bool>(global1.x, false, global1.x))), select(vec3<bool>(select(arg_0.a, false, false), true, true), !(!vec3<bool>(global1.x, arg_0.a, true)), any(!vec3<bool>(arg_0.a, global1.x, global1.x))), (-466f >= _wgslsmith_f_op_f32(sign(arg_1))) || ((global1.x & true) && global1.x)));
    return vec3<bool>(!(!any(select(vec4<bool>(arg_0.a, false, global1.x, global1.x), vec4<bool>(false, global1.x, false, arg_0.a), vec4<bool>(false, true, true, true)))), !(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, u_input.a.x) >> (vec3<u32>(1u, 35555u, 0u) % vec3<u32>(32u)), vec3<i32>(2147483647i, 10992i, -11240i) ^ vec3<i32>(16396i, u_input.a.x, -5917i)) != global0.a), arg_0.a);
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_3(Struct_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(484f, -1000f, -589f, -706f) * vec4<f32>(-455f, 231f, 809f, -1000f)))), vec4<i32>(global0.a, ~u_input.a.x, firstTrailingBit(select(u_input.a.x, u_input.a.x, global1.x)), ~_wgslsmith_sub_i32(u_input.a.x, 61658i))), Struct_1(all(select(func_3(Struct_1(true), 1214f), !vec3<bool>(global1.x, true, global1.x), !vec3<bool>(global1.x, true, true)))), 135f, ~(~(~(~vec2<u32>(4294967295u, 1u)))), vec3<bool>(_wgslsmith_f_op_f32(abs(-1260f)) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(638f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -187f))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-237f)))), any(select(select(vec4<bool>(false, false, global1.x, false), vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(true, true, global1.x, true)), select(vec4<bool>(false, true, global1.x, false), vec4<bool>(global1.x, global1.x, true, global1.x), false), global1.x))));
    var var_1 = _wgslsmith_div_i32(u_input.a.x, -2147483647i);
    var var_2 = select(vec3<bool>(true, true & (u_input.a.x == select(u_input.a.x, 21513i, global1.x)), global1.x), var_0.e, -230f != var_0.a.b.x);
    var_2 = var_0.e;
    var var_3 = Struct_4(17532i, u_input.a.x & ~_wgslsmith_mult_i32(firstLeadingBit(global0.b), abs(global0.a)));
    return var_0.e;
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: Struct_4) -> Struct_4 {
    global0 = arg_3;
    global1 = func_2();
    let var_0 = !select(!vec4<bool>(!arg_0.b.a, global1.x, any(vec4<bool>(global1.x, true, false, false)), global1.x), select(vec4<bool>(true, !global1.x, true, global1.x || true), !select(vec4<bool>(global1.x, false, arg_0.b.a, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true), global1.x), vec4<bool>(global1.x, true, func_2().x, true)), !all(select(global1.zx, vec2<bool>(true, true), vec2<bool>(global1.x, false))));
    return Struct_4(~arg_3.b, _wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(arg_0.a.c.x, _wgslsmith_clamp_i32(global0.a & 2147483647i, _wgslsmith_mult_i32(0i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(4581i, -9287i, u_input.a.x), vec3<i32>(57032i, 0i, arg_3.a))), ~(~arg_0.a.a))));
}

fn func_4(arg_0: Struct_4) -> Struct_5 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-825f, 553f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1684f - 101f), -730f, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1343f))), 1f);
    var var_1 = ~vec2<u32>(select(abs(59043u), 4294967295u, false), 4294967295u) ^ vec2<u32>(1u, 1u);
    var var_2 = Struct_3(Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, 133f, -437f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-810f, var_0.x, var_0.x, var_0.x) - vec4<f32>(506f, 1286f, 1000f, -208f))), firstTrailingBit(abs(vec4<i32>(arg_0.b, global0.a, u_input.a.x, 10906i)) << ((vec4<u32>(var_1.x, 66299u, 0u, var_1.x) & vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)) % vec4<u32>(32u)))), Struct_1(!global1.x && global1.x), var_0.x, _wgslsmith_mod_vec2_u32(abs(vec2<u32>(var_1.x, 1u)) << (vec2<u32>(1u, var_1.x) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(65657u, 4294967295u), ~vec2<u32>(var_1.x, var_1.x)), ~var_1.x)), select(!(!(!vec3<bool>(global1.x, global1.x, global1.x))), vec3<bool>(false, false, false), vec3<bool>(true, ~0u < var_1.x, global1.x)));
    var var_3 = -vec3<i32>(var_2.a.c.x ^ _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, global0.b)), vec2<i32>(-2147483647i, arg_0.a)), global0.a & _wgslsmith_dot_vec3_i32(var_2.a.c.wyy, _wgslsmith_mod_vec3_i32(vec3<i32>(-5083i, global0.a, var_2.a.c.x), vec3<i32>(arg_0.b, var_2.a.a, -16622i))), ~(-2147483647i & -u_input.a.x));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(210f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1296f) - _wgslsmith_f_op_f32(f32(-1f) * -709f)))));
    return Struct_5(i32(-1i) * -1421i, func_1(Struct_3(Struct_2(~var_3.x, _wgslsmith_f_op_vec4_f32(-var_2.a.b), vec4<i32>(-2147483647i, 0i, var_2.a.c.x, -1i)), var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4))), ~(~var_2.d), !var_2.e), min(var_2.d.x, _wgslsmith_clamp_u32(~32942u, firstTrailingBit(var_2.d.x), _wgslsmith_mult_u32(var_1.x, 61794u))), _wgslsmith_add_u32(_wgslsmith_div_u32(19051u >> (1u % 32u), ~var_1.x), ~var_1.x), arg_0), ~_wgslsmith_div_u32(_wgslsmith_div_u32(1u, firstTrailingBit(24596u)), var_1.x));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_2) -> vec2<bool> {
    global1 = select(func_3(Struct_1(true), _wgslsmith_f_op_f32(-1000f * arg_3.b.x)), !(!(!vec3<bool>(global1.x, false, global1.x))), !(!(!select(vec3<bool>(true, global1.x, true), vec3<bool>(false, false, false), false))));
    var var_0 = Struct_3(Struct_2(firstLeadingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c.x, 1i, 0i), vec3<i32>(u_input.a.x, arg_3.c.x, arg_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.b))), vec4<i32>(-1i) * -vec4<i32>(49545i, -42669i, -23768i, -2147483647i)), Struct_1(true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(215f, 1000f))))), _wgslsmith_div_vec2_u32(max(vec2<u32>(arg_1.c, 0u), vec2<u32>(19578u, arg_1.c)) | ~vec2<u32>(1u, 6414u), (vec2<u32>(4294967295u, arg_1.c) | vec2<u32>(arg_1.c, 18352u)) & vec2<u32>(0u, arg_1.c)) >> (vec2<u32>(reverseBits(arg_1.c), 1u) % vec2<u32>(32u)), vec3<bool>(select(global1.x, !global1.x && false, global1.x), func_3(Struct_1(all(vec4<bool>(global1.x, false, global1.x, global1.x))), -1050f).x, global1.x && false));
    var_0 = Struct_3(Struct_2(13631i, arg_3.b, firstTrailingBit(-min(arg_3.c, vec4<i32>(arg_3.a, 29681i, arg_3.a, 0i)))), Struct_1(true), _wgslsmith_f_op_f32(f32(-1f) * -342f), _wgslsmith_clamp_vec2_u32(var_0.d, select(reverseBits(vec2<u32>(arg_1.c, arg_1.c) | var_0.d), var_0.d, var_0.b.a), _wgslsmith_clamp_vec2_u32(var_0.d, _wgslsmith_clamp_vec2_u32(var_0.d, vec2<u32>(4294967295u, arg_1.c), ~vec2<u32>(42771u, 104182u)), select(var_0.d ^ var_0.d, ~vec2<u32>(var_0.d.x, var_0.d.x), var_0.e.yx))), !func_3(var_0.b, arg_0.x));
    let var_1 = vec2<u32>(0u, 50401u);
    global0 = func_4(arg_1.b).b;
    return vec2<bool>(any(vec4<bool>(global1.x, var_0.b.a, true, true)), 53443u > (_wgslsmith_sub_u32(~var_1.x, 1u | var_0.d.x) << (var_0.d.x % 32u)));
}

fn func_6(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, 246f, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 1232f)))), !select(vec4<bool>(true, arg_2, false, global1.x), vec4<bool>(true, true, true, false), vec4<bool>(true, global1.x, arg_2, false)))))));
    global1 = vec3<bool>(false, global1.x, arg_2);
    var var_2 = Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(ceil(var_1)), max(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x, -1i, 19591i, global0.b) ^ firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, global0.a, u_input.a.x)), vec4<i32>(global0.a, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), 1i, countOneBits(11062i))), _wgslsmith_clamp_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a.x, global0.a, -7850i), vec4<i32>(-1i, 1i, u_input.a.x, global0.a))), abs(vec4<i32>(-14521i, 0i, -40771i, global0.a)), vec4<i32>(firstTrailingBit(-20342i), 2708i, _wgslsmith_sub_i32(52782i, -33510i), -1i >> (0u % 32u)))));
    let var_3 = ~(firstLeadingBit(178u) << ((~4294967295u << (0u % 32u)) % 32u)) << ((max(~(~32853u), 0u) ^ func_4(Struct_4(23454i, 0i)).c) % 32u);
    return Struct_1(-(_wgslsmith_add_i32(20959i, global0.b) << (~var_3 % 32u)) >= (((var_2.a << (var_3 % 32u)) | global0.b) | _wgslsmith_dot_vec4_i32(var_2.c, var_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(select(func_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(382f, -204f, -838f, 1228f))))), func_4(func_1(Struct_3(Struct_2(u_input.a.x, vec4<f32>(288f, 486f, -372f, 168f), vec4<i32>(3379i, -10087i, 2147483647i, 0i)), Struct_1(true), 1539f, vec2<u32>(61550u, 4294967295u), vec3<bool>(global1.x, true, false)), 9043u, 18174u, Struct_4(-2147483647i, -1i))), Struct_2(~global0.a, _wgslsmith_div_vec4_f32(vec4<f32>(1411f, -810f, 1113f, 903f), vec4<f32>(1097f, -181f, -205f, -579f)), vec4<i32>(-50710i, 1i, -27083i, global0.b)), Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -21915i), vec2<i32>(u_input.a.x, global0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-344f, 1000f, -622f, 1000f) - vec4<f32>(1518f, 635f, 629f, -627f)), -vec4<i32>(u_input.a.x, 2147483647i, 1i, 2147483647i))), func_3(Struct_1(func_3(Struct_1(true), -930f).x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -667f)))).yz, vec2<bool>(any(func_5(vec4<f32>(-341f, -591f, -1679f, -316f), Struct_5(global0.b, Struct_4(u_input.a.x, global0.b), 5024u), Struct_2(u_input.a.x, vec4<f32>(-1227f, -1037f, 1214f, 1000f), vec4<i32>(21953i, -33048i, 2147483647i, 517i)), Struct_2(1i, vec4<f32>(617f, -662f, 239f, 106f), vec4<i32>(1i, 2147483647i, u_input.a.x, global0.a)))), global1.x)), vec3<f32>(_wgslsmith_f_op_f32(-655f * 501f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1836f, -1198f)), -1070f, true)) + _wgslsmith_f_op_f32(-1f)), 781f), !all(global1.yy));
    global1 = !(!(!(!select(vec3<bool>(false, var_0.a, false), vec3<bool>(true, false, true), false))));
    let var_1 = select(func_2().yx, vec2<bool>(true, func_4(func_1(Struct_3(Struct_2(u_input.a.x, vec4<f32>(100f, -1459f, 269f, -1000f), vec4<i32>(-33877i, 0i, 0i, u_input.a.x)), Struct_1(var_0.a), -593f, vec2<u32>(1u, 20763u), vec3<bool>(var_0.a, true, false)), 4294967295u, 0u, Struct_4(-1i, -28020i))).c > 1u), global1.yz);
    var_0 = func_6(vec2<bool>(true, true), vec3<f32>(1f, 1f, 1f), -_wgslsmith_div_i32(2147483647i, 37237i << (0u % 32u)) == ~_wgslsmith_div_i32(-u_input.a.x, -59199i));
    let var_2 = Struct_2(~global0.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(288f + 667f) + _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(917f - 951f) - _wgslsmith_f_op_f32(1098f + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-196f * -1865f)), -1715f))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 0i), vec4<i32>(5455i, global0.b, 1i, 1i)), vec4<i32>(countOneBits(-4353i) | _wgslsmith_div_i32(u_input.a.x, 2147483647i), (u_input.a.x | -5716i) & 24708i, ~1i, global0.b << (1u % 32u))));
    let var_3 = abs(reverseBits(~(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 27371u, 0u), vec3<u32>(15618u, 61422u, 17992u)) | select(vec3<u32>(5984u, 52144u, 30180u), vec3<u32>(4294967295u, 0u, 68u), vec3<bool>(global1.x, true, true)))));
    var var_4 = firstTrailingBit(var_2.c.yz);
    let x = u_input.a;
    s_output = StorageBuffer(-1109f, 1542f);
}

