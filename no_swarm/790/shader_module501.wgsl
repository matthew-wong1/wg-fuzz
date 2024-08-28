struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_3,
    d: vec3<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.a)));
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(-970f * _wgslsmith_f_op_f32(-2290f + 1125f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-300f, 187f)) * _wgslsmith_f_op_f32(max(global0.a, global0.a)))))));
    let var_0 = Struct_1(all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), global0.a == 763f)) | all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true)), -_wgslsmith_mult_vec4_i32(firstLeadingBit(firstTrailingBit(vec4<i32>(34869i, 2147483647i, u_input.a.x, u_input.a.x))), vec4<i32>(34862i, select(u_input.a.x, u_input.a.x, true), ~(-18245i), 9985i)), firstLeadingBit(u_input.a), 3492u);
    global0 = Struct_2(_wgslsmith_f_op_f32(min(-975f, -1000f)));
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-110f, global0.a)))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_5 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-global0.a));
    var_0 = Struct_2(_wgslsmith_f_op_f32(min(-135f, -1643f)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a, var_0.a, arg_2.b.a)))))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - global0.a), global0.a)))));
    var var_1 = !vec4<bool>(!(arg_2.b.a != false), !select(true, true, all(vec2<bool>(false, false))), all(vec3<bool>(true, true, true)), arg_2.a.a);
    return Struct_5(6607u >= ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 52625u), firstLeadingBit(vec2<u32>(4294967295u, 1u))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: u32) -> Struct_3 {
    global0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, arg_1.x) + -1745f)))));
    let var_0 = Struct_4(~_wgslsmith_sub_i32(arg_2.a.c.x, _wgslsmith_add_i32(~38938i, _wgslsmith_sub_i32(u_input.a.x, arg_2.a.b.x))), -_wgslsmith_mult_i32(1i, 1i), Struct_3(Struct_1(arg_2.a.a, -arg_2.a.b, _wgslsmith_div_vec3_i32(u_input.a >> (vec3<u32>(arg_2.a.d, 4294967295u, 4294967295u) % vec3<u32>(32u)), arg_2.a.c), arg_3), Struct_1(all(select(vec4<bool>(false, arg_2.a.a, true, arg_2.a.a), vec4<bool>(true, arg_0.a, arg_2.b.a, arg_0.a), true)), arg_2.a.b, vec3<i32>(-u_input.a.x, 1i, 0i), 51886u), _wgslsmith_dot_vec2_i32(select(arg_2.b.b.yx, vec2<i32>(arg_2.c, arg_2.c), vec2<bool>(false, arg_2.b.a)) | arg_2.b.c.zz, -(~arg_2.b.c.yy))), vec3<u32>(4294967295u, max(~(~3544u), arg_3), arg_2.a.d));
    let var_1 = ~0u;
    var var_2 = arg_2.a.d;
    let var_3 = Struct_4(~1i, ~(1i << (~_wgslsmith_clamp_u32(arg_3, 1u, 61524u) % 32u)), Struct_3(arg_2.b, Struct_1(arg_0.a & all(vec4<bool>(arg_2.a.a, false, false, arg_2.a.a)), vec4<i32>(23324i, 1i, 1i | var_0.b, _wgslsmith_div_i32(u_input.a.x, arg_2.c)), -vec3<i32>(-11741i, u_input.a.x, var_0.c.c), ~(~var_1)), 14769i), vec3<u32>(var_0.c.a.d ^ var_0.d.x, ~(~0u), ~(~var_0.c.b.d) >> (_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1, 17049u), _wgslsmith_sub_u32(34662u, arg_2.a.d), select(3522u, 80783u, arg_2.b.a)) % 32u)));
    return Struct_3(arg_2.b, var_0.c.a, 24260i);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    var var_0 = ~(arg_0.a.d << (16568u % 32u));
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(abs(-570f))));
    let var_1 = arg_0.a;
    var_0 = 54113u;
    let var_2 = func_2(Struct_1(firstLeadingBit(~var_1.d) > min(~arg_0.a.d, 1u), countOneBits(arg_0.b.b), vec3<i32>(-21178i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, 2147483647i), arg_0.a.b.xw), ~6960i), ~64025u), min(arg_0.a.b, _wgslsmith_add_vec4_i32(arg_0.a.b, ~vec4<i32>(u_input.a.x, var_1.c.x, -2651i, -46888i))) ^ arg_0.b.b, Struct_3(Struct_1(func_2(var_1, ~var_1.b, func_4(Struct_5(arg_0.a.a), vec3<f32>(-195f, -102f, -292f), arg_0, arg_2)).a, firstTrailingBit(~var_1.b), _wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.b.x, arg_0.c, u_input.a.x), ~vec3<i32>(var_1.b.x, 1i, -23272i), _wgslsmith_div_vec3_i32(u_input.a, u_input.a)), ~(0u >> (var_1.d % 32u))), var_1, -(u_input.a.x & _wgslsmith_div_i32(arg_0.a.b.x, var_1.c.x))));
    return func_4(func_2(func_4(var_2, vec3<f32>(_wgslsmith_f_op_f32(step(700f, arg_1.a)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(abs(global0.a))), func_4(Struct_5(var_2.a), vec3<f32>(-1343f, 1000f, arg_1.a), arg_0, var_1.d), var_1.d).b, vec4<i32>(-1i, arg_0.c & u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.c.x, 4950i), var_1.b.yz), -878i) ^ (vec4<i32>(-1i) * -arg_0.a.b), arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(135f, global0.a, global0.a)))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a, arg_1.a, global0.a))))), arg_0, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.b.d, countOneBits(0u), 44326u), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(var_1.d, 39333u, arg_0.b.d)), abs(vec3<u32>(var_1.d, 34061u, var_1.d)))))).b;
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_3(func_5(func_4(func_2(Struct_1(var_0, vec4<i32>(20190i, u_input.a.x, -2147483647i, -27210i), vec3<i32>(-26091i, -16752i, u_input.a.x), 1u), -vec4<i32>(u_input.a.x, -23171i, u_input.a.x, u_input.a.x), Struct_3(Struct_1(var_0, vec4<i32>(2147483647i, 0i, 1i, u_input.a.x), u_input.a, 1u), Struct_1(var_0, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -16535i), 49467u), u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-584f, global0.a, 914f)) * vec3<f32>(global0.a, global0.a, -1130f)), Struct_3(Struct_1(true, vec4<i32>(-9714i, u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), 1u), Struct_1(true, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(46551i, u_input.a.x, u_input.a.x), 4294967295u), -1988i), 1u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-660f + global0.a))), reverseBits(0u)), func_5(Struct_3(func_4(Struct_5(var_0), vec3<f32>(global0.a, global0.a, -1046f), Struct_3(Struct_1(true, vec4<i32>(u_input.a.x, u_input.a.x, 7904i, u_input.a.x), vec3<i32>(0i, u_input.a.x, u_input.a.x), 1u), Struct_1(var_0, vec4<i32>(-1i, u_input.a.x, -8824i, u_input.a.x), u_input.a, 34786u), u_input.a.x), ~37163u).a, Struct_1(var_0, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-16240i, 25500i, -27200i, 1i)), u_input.a & u_input.a, select(1u, 4294967295u, var_0)), abs(-21976i)), Struct_2(730f), reverseBits(min(~4294967295u, 6388u))), ~_wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(1i, u_input.a.x)));
    let var_2 = !(!(!(!select(vec4<bool>(var_0, var_1.b.a, var_1.a.a, var_1.b.a), vec4<bool>(false, false, var_1.a.a, var_1.a.a), true))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(sign(829f)));
    let var_4 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-403f - global0.a) - _wgslsmith_f_op_f32(select(var_3.a, 739f, var_2.x)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.a, _wgslsmith_f_op_f32(global0.a * -359f)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_3.a)), -1000f), _wgslsmith_f_op_f32(min(var_3.a, _wgslsmith_f_op_f32(global0.a - global0.a)))), !(!select(var_2.yx, var_2.wz, true))))));
    return Struct_1(false, select(~_wgslsmith_mod_vec4_i32(~var_1.a.b, var_1.a.b ^ vec4<i32>(0i, u_input.a.x, 34356i, -55819i)), max(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, -1i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b.b.x, -2147483647i, 1i, u_input.a.x), vec4<i32>(-1i, -10164i, var_1.a.c.x, 439i))), vec4<i32>(~u_input.a.x, abs(11917i), -var_1.a.b.x, 1i)), true), var_1.a.c, func_5(Struct_3(func_4(func_2(var_1.a, var_1.b.b, var_1), vec3<f32>(var_4.x, 403f, global0.a), var_1, var_1.b.d).a, func_5(Struct_3(var_1.b, Struct_1(var_0, vec4<i32>(-1i, var_1.c, u_input.a.x, -5247i), vec3<i32>(var_1.b.c.x, 2147483647i, 2147483647i), 29672u), 11748i), var_3, 22904u), var_1.b.c.x), var_3, ~reverseBits(var_1.a.d)).d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))) == (-292f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, 667f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(489f + global0.a)))));
    let var_1 = Struct_3(func_1(), func_4(Struct_5(!any(vec3<bool>(false, false, var_0))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(1275f)), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -1530f)))), Struct_3(func_1(), func_4(func_2(Struct_1(var_0, vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-1i, u_input.a.x, -24537i), 0u), vec4<i32>(-28932i, u_input.a.x, u_input.a.x, -2147483647i), Struct_3(Struct_1(var_0, vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, -1i, u_input.a.x), 69536u), Struct_1(false, vec4<i32>(-1i, -31601i, 2147483647i, -1i), vec3<i32>(u_input.a.x, -2147483647i, 19072i), 4294967295u), u_input.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 540f, global0.a)), Struct_3(Struct_1(true, vec4<i32>(-62296i, -1i, u_input.a.x, u_input.a.x), vec3<i32>(-69707i, u_input.a.x, -29227i), 31477u), Struct_1(var_0, vec4<i32>(2147483647i, 1i, 37431i, u_input.a.x), u_input.a, 36804u), u_input.a.x), 6251u).b, _wgslsmith_mult_i32(abs(-68931i), -15311i)), 0u).a, u_input.a.x);
    let var_2 = var_1;
    var var_3 = Struct_3(var_1.a, func_1(), ~_wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, -64041i, u_input.a.x, u_input.a.x), var_1.a.b), var_2.a.c.x));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(global0.a - 547f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 395f))), func_5(Struct_3(var_2.a, var_3.b, 30332i), Struct_2(-1191f), 5158u).a)))));
    var var_5 = Struct_3(Struct_1(all(!vec4<bool>(true, false, var_1.b.a, false)), vec4<i32>(var_2.b.c.x, -_wgslsmith_sub_i32(-26698i, -40800i), func_5(Struct_3(Struct_1(var_3.a.a, var_3.b.b, vec3<i32>(-2147483647i, -12113i, 2048i), var_1.a.d), var_3.a, var_2.b.b.x), Struct_2(-1000f), abs(var_1.a.d)).c.x, ~countOneBits(var_2.c)), vec3<i32>(57452i, 32435i, var_1.b.c.x), _wgslsmith_div_u32(4294967295u, min(~31936u, var_2.a.d))), func_1(), -4439i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_mod_u32(4294967295u, var_2.b.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, var_4.x))))), -875f, _wgslsmith_div_vec3_i32(countOneBits(select(func_4(Struct_5(var_0), vec3<f32>(400f, global0.a, -652f), Struct_3(Struct_1(var_0, var_3.b.b, var_1.a.b.wxy, var_5.a.d), Struct_1(false, vec4<i32>(var_3.a.b.x, -46501i, 1i, -43976i), vec3<i32>(-41743i, 51225i, var_1.b.c.x), 39792u), var_1.b.c.x), 72611u).b.b.xzx, countOneBits(var_1.a.b.wwz), select(vec3<bool>(var_5.a.a, var_0, true), vec3<bool>(var_1.b.a, var_5.b.a, var_5.a.a), var_5.b.a))), firstTrailingBit(vec3<i32>(-54362i, -var_3.a.c.x, -13624i))));
}

