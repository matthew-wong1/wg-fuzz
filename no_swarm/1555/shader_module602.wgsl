struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = select(select(select(select(vec2<bool>(true, arg_2.d), !vec2<bool>(arg_2.d, true), vec2<bool>(true, true)), vec2<bool>(true, global0[_wgslsmith_index_u32(65516u, 1u)] > -2040f), !(!vec2<bool>(arg_2.d, arg_2.d))), select(!select(vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(true, arg_0.d), false), select(!vec2<bool>(arg_2.d, arg_0.d), !vec2<bool>(arg_2.d, false), true), arg_2.d), any(!(!vec2<bool>(true, arg_2.d)))), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), arg_2.d), arg_2.d)), !vec2<bool>(true, any(vec4<bool>(true, arg_0.d, arg_0.d, false))));
    return !select(!select(!vec3<bool>(true, arg_2.d, arg_2.d), !vec3<bool>(arg_2.d, false, var_0.x), vec3<bool>(arg_0.d, false, var_0.x)), vec3<bool>(~16273u > (25024u << (arg_2.e % 32u)), arg_0.d, !(!arg_2.d)), arg_0.d);
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: vec2<bool>) -> u32 {
    let var_0 = arg_1.c.d.yz;
    var var_1 = select(arg_1.b.d != true, all(!(!vec4<bool>(var_0.x, false, var_0.x, var_0.x))), any(!(!vec3<bool>(true, var_0.x, false))));
    let var_2 = select(all(vec3<bool>(~u_input.c.x > arg_1.c.c, !arg_3.x | true, true)), any(select(vec3<bool>(false, all(vec4<bool>(true, true, arg_1.b.d, arg_1.b.d)), !arg_1.b.d), arg_1.c.d.yzw, func_3(arg_1.b, _wgslsmith_f_op_f32(arg_2 * arg_2), arg_1.c.b))), false);
    var_1 = !var_0.x;
    var var_3 = arg_1.c;
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_sub_u32(_wgslsmith_div_u32(39664u, 40948u), arg_1.d.e | ((arg_1.a << (arg_0.b.e % 32u)) & arg_0.b.e)), arg_1.e, -_wgslsmith_dot_vec3_i32(firstTrailingBit(arg_1.d.a) << (firstTrailingBit(vec3<u32>(4690u, u_input.a.x, arg_1.e.a)) % vec3<u32>(32u)), -max(vec3<i32>(arg_1.b.b.c, 0i, -1i), arg_0.c.b.a)), Struct_1(_wgslsmith_div_vec3_i32(max(~vec3<i32>(arg_1.c, 20563i, -2147483647i), abs(arg_0.c.b.a)), max(countOneBits(vec3<i32>(arg_0.a.x, arg_1.d.c, arg_0.a.x)), max(arg_0.c.b.a, vec3<i32>(1i, arg_1.c, arg_1.d.c)))), _wgslsmith_sub_i32(reverseBits(~(-28582i)), _wgslsmith_mod_i32(1i, 32871i)), _wgslsmith_clamp_i32(-arg_1.c, ~_wgslsmith_dot_vec3_i32(vec3<i32>(11872i, -29104i, -1i), vec3<i32>(arg_0.a.x, 19171i, arg_1.b.c)), i32(-1i) * -arg_0.a.x), true, select(max(_wgslsmith_mult_u32(u_input.a.x, 47238u), ~0u), ~max(4294967295u, 0u), false)), arg_1.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -272f))), _wgslsmith_f_op_f32(f32(-1f) * -1209f)), global0[_wgslsmith_index_u32(64938u, 1u)], global0[_wgslsmith_index_u32(arg_0.b.e, 1u)]));
    var var_2 = vec2<bool>(-(~arg_1.d.b) < var_0.e.c, any(!arg_0.c.d.wyy));
    var_2 = var_0.e.d.xx;
    var var_3 = select(func_3(arg_1.d, _wgslsmith_f_op_f32(-2322f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.e.b.e, 1u)] - global0[_wgslsmith_index_u32(0u, 1u)]), global0[_wgslsmith_index_u32(var_0.d.e, 1u)])), Struct_1(var_0.b.b.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_1.d.a, arg_1.e.b.a), vec3<i32>(-2147483647i, 2147483647i, var_0.d.c) ^ vec3<i32>(-10810i, var_0.e.c, -108482i)), _wgslsmith_div_i32(_wgslsmith_mult_i32(43747i, u_input.d), var_0.d.a.x), true, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(arg_1.e.a, var_0.e.a, 28055u, u_input.a.x)), u_input.a << (vec4<u32>(1u, 1u, arg_1.d.e, 1u) % vec4<u32>(32u))))), select(arg_1.e.d.ywy, vec3<bool>(!(!arg_0.c.d.x), all(vec3<bool>(arg_1.b.d.x, true, false)), all(vec3<bool>(true, true, false))), arg_1.e.b.d), func_3(arg_1.b.b, -3376f, Struct_1(vec3<i32>(~var_0.e.b.a.x, _wgslsmith_mult_i32(var_0.c, 0i), countOneBits(2147483647i)), ~firstLeadingBit(-374i), -25276i, arg_2.x, 4294967295u)).x);
    return Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.e.b.e, 1u, 26104u) ^ vec3<u32>(var_0.e.a, 4294967295u, 87896u), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(6936u, 94228u, 43120u), u_input.a.yzy), vec3<u32>(u_input.a.x, arg_1.a, 31833u) & vec3<u32>(20995u, arg_0.b.e, arg_1.a), u_input.a.xzz)), var_0.a), arg_0.c.b, (-1i >> (reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.a, var_0.a, arg_0.c.a, arg_0.b.e), u_input.a)) % 32u)) & ~(~(~arg_1.e.b.c)), arg_1.e.d);
}

fn func_1(arg_0: vec3<bool>) -> bool {
    let var_0 = vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32((1u | ~(u_input.a.x << (16846u % 32u))) ^ u_input.a.x, 1u)], -2411f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(41928u, 1u)])))) - global0[_wgslsmith_index_u32(~0u, 1u)]));
    global0 = array<f32, 1>();
    var var_1 = func_4(Struct_3(~abs(u_input.b), Struct_1(~u_input.b.wwz, _wgslsmith_clamp_i32(u_input.b.x, -42112i, u_input.c.x), u_input.d, arg_0.x, func_2(~u_input.a.x, Struct_3(u_input.c, Struct_1(u_input.c.xzx, u_input.d, 26808i, true, u_input.a.x), Struct_2(62750u, Struct_1(vec3<i32>(u_input.d, u_input.d, -54204i), -1261i, u_input.c.x, arg_0.x, 12921u), u_input.d, vec4<bool>(false, arg_0.x, arg_0.x, true))), -451f, vec2<bool>(true, arg_0.x))), Struct_2(_wgslsmith_dot_vec3_u32(u_input.a.xzx, ~u_input.a.zzz), Struct_1(vec3<i32>(-15447i, 1i, -68133i) ^ u_input.b.yww, 1i, -u_input.b.x, func_3(Struct_1(vec3<i32>(u_input.d, 2147483647i, u_input.b.x), 16767i, -22353i, true, u_input.a.x), 425f, Struct_1(vec3<i32>(u_input.d, u_input.b.x, 2147483647i), u_input.d, u_input.d, true, u_input.a.x)).x, u_input.a.x), u_input.b.x, vec4<bool>(any(arg_0.zx), false, arg_0.x | arg_0.x, false))), Struct_4(~_wgslsmith_mod_u32(u_input.a.x, 4294967295u) >> (reverseBits(88175u) % 32u), Struct_2(~4294967295u & _wgslsmith_dot_vec2_u32(u_input.a.ww, u_input.a.zz), Struct_1(vec3<i32>(52923i, u_input.d, u_input.b.x), -u_input.b.x, -2147483647i, true, ~10436u), ~min(-18470i, u_input.b.x), !select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, true, arg_0.x, false))), 39069i, Struct_1(_wgslsmith_add_vec3_i32(~u_input.b.wwz, vec3<i32>(30026i, 2147483647i, 2147483647i)), u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x) << (~50812u % 32u), any(arg_0), u_input.a.x), Struct_2(_wgslsmith_mult_u32(1u, 4294967295u), Struct_1(firstLeadingBit(u_input.c.xxw), u_input.d, ~u_input.c.x, all(arg_0.yy), select(u_input.a.x, u_input.a.x, arg_0.x)), -1797i, vec4<bool>(arg_0.x, true, true, arg_0.x))), func_3(Struct_1(vec3<i32>(countOneBits(u_input.b.x), -33385i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.d, u_input.c.x), vec3<i32>(-1i, -1064i, u_input.d))), u_input.b.x, (57105i | u_input.b.x) & 38074i, any(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_mod_u32(0u, u_input.a.x)), var_0.x, Struct_1(-vec3<i32>(-58999i, u_input.b.x, -14089i), abs(-2147483647i), reverseBits(countOneBits(u_input.b.x)), any(func_3(Struct_1(vec3<i32>(u_input.b.x, -1i, 28526i), u_input.b.x, 1i, false, u_input.a.x), 600f, Struct_1(u_input.b.xxz, u_input.b.x, -8760i, arg_0.x, u_input.a.x))), (u_input.a.x ^ 73250u) << (u_input.a.x % 32u))));
    var_1 = func_4(Struct_3(~firstTrailingBit(max(u_input.c, u_input.c)), var_1.b, func_4(Struct_3(vec4<i32>(u_input.d, var_1.c, -36594i, var_1.b.a.x), Struct_1(vec3<i32>(var_1.c, 66913i, var_1.b.b), -1520i, 2147483647i, true, u_input.a.x), func_4(Struct_3(u_input.c, Struct_1(vec3<i32>(u_input.c.x, u_input.d, 2147483647i), -42619i, 0i, var_1.d.x, 3424u), Struct_2(44141u, Struct_1(var_1.b.a, var_1.b.c, var_1.b.b, true, var_1.b.e), -2147483647i, var_1.d)), Struct_4(u_input.a.x, Struct_2(var_1.a, var_1.b, var_1.b.a.x, vec4<bool>(true, arg_0.x, var_1.b.d, true)), var_1.c, var_1.b, Struct_2(44922u, Struct_1(vec3<i32>(var_1.b.a.x, 2147483647i, -2147483647i), -1885i, 15098i, arg_0.x, 48972u), u_input.c.x, vec4<bool>(arg_0.x, false, arg_0.x, var_1.d.x))), vec3<bool>(false, arg_0.x, false))), Struct_4(var_1.b.e, Struct_2(4294967295u, Struct_1(var_1.b.a, 31892i, var_1.b.a.x, false, var_1.a), 9069i, var_1.d), ~2147483647i, Struct_1(var_1.b.a, -2147483647i, 2316i, arg_0.x, var_1.b.e), Struct_2(4294967295u, Struct_1(vec3<i32>(-72173i, var_1.c, 21229i), u_input.d, 1i, arg_0.x, 53794u), -2147483647i, vec4<bool>(arg_0.x, var_1.d.x, var_1.b.d, arg_0.x))), vec3<bool>(all(var_1.d.yyz), any(vec4<bool>(var_1.b.d, arg_0.x, true, true)), true))), Struct_4(0u << (_wgslsmith_mod_u32(var_1.a, ~u_input.a.x) % 32u), func_4(Struct_3(~vec4<i32>(1i, 1i, -2147483647i, var_1.c), Struct_1(u_input.b.zyw, u_input.b.x, var_1.c, true, 25649u), func_4(Struct_3(vec4<i32>(-38565i, 1i, 0i, -1i), var_1.b, Struct_2(u_input.a.x, Struct_1(vec3<i32>(u_input.b.x, var_1.b.a.x, var_1.b.b), u_input.d, 2147483647i, false, 38991u), 2147483647i, vec4<bool>(var_1.d.x, arg_0.x, true, true))), Struct_4(27915u, Struct_2(var_1.a, Struct_1(u_input.b.wwz, u_input.c.x, -3597i, arg_0.x, 62388u), 12495i, var_1.d), -11411i, Struct_1(vec3<i32>(0i, 0i, 2147483647i), -9526i, -7703i, true, 37037u), Struct_2(4986u, var_1.b, 1i, vec4<bool>(var_1.b.d, arg_0.x, false, true))), vec3<bool>(true, false, false))), Struct_4(var_1.a, func_4(Struct_3(u_input.b, var_1.b, Struct_2(29724u, var_1.b, var_1.b.a.x, var_1.d)), Struct_4(var_1.b.e, Struct_2(26031u, var_1.b, u_input.d, vec4<bool>(false, arg_0.x, false, true)), 2147483647i, Struct_1(var_1.b.a, u_input.d, -1i, var_1.d.x, var_1.b.e), Struct_2(var_1.a, Struct_1(vec3<i32>(-31558i, var_1.c, u_input.d), var_1.c, 30884i, false, var_1.b.e), var_1.b.a.x, vec4<bool>(var_1.b.d, false, true, false))), var_1.d.yxx), _wgslsmith_mod_i32(32747i, u_input.c.x), func_4(Struct_3(vec4<i32>(0i, var_1.c, -2147483647i, -2147483647i), Struct_1(var_1.b.a, -9261i, u_input.c.x, var_1.b.d, 1u), Struct_2(0u, Struct_1(vec3<i32>(-28726i, u_input.d, -63873i), var_1.b.c, u_input.b.x, false, 34856u), 1i, vec4<bool>(var_1.d.x, true, arg_0.x, false))), Struct_4(var_1.a, Struct_2(var_1.a, var_1.b, 20373i, vec4<bool>(arg_0.x, arg_0.x, var_1.d.x, arg_0.x)), -1i, Struct_1(u_input.b.xwz, -6230i, 2687i, var_1.d.x, 17420u), Struct_2(31214u, var_1.b, var_1.c, vec4<bool>(arg_0.x, var_1.b.d, var_1.b.d, false))), arg_0).b, func_4(Struct_3(u_input.b, Struct_1(u_input.c.xxz, var_1.b.c, 0i, true, var_1.b.e), Struct_2(11689u, Struct_1(var_1.b.a, var_1.c, -75965i, false, u_input.a.x), u_input.c.x, var_1.d)), Struct_4(u_input.a.x, Struct_2(var_1.a, Struct_1(vec3<i32>(-1i, var_1.b.a.x, u_input.b.x), 2147483647i, -65743i, false, u_input.a.x), 15175i, vec4<bool>(false, false, var_1.d.x, var_1.d.x)), -2147483647i, var_1.b, Struct_2(4294967295u, Struct_1(vec3<i32>(1i, 14393i, 1i), u_input.c.x, 36330i, var_1.b.d, u_input.a.x), 3624i, vec4<bool>(false, var_1.b.d, arg_0.x, true))), var_1.d.yzz)), !vec3<bool>(arg_0.x, var_1.d.x, arg_0.x)), -_wgslsmith_dot_vec2_i32(~var_1.b.a.zz, u_input.b.zy), func_4(Struct_3(u_input.b, var_1.b, func_4(Struct_3(vec4<i32>(var_1.b.b, 1i, -1i, -1i), var_1.b, Struct_2(var_1.b.e, Struct_1(var_1.b.a, u_input.d, -28621i, arg_0.x, u_input.a.x), -39070i, var_1.d)), Struct_4(u_input.a.x, Struct_2(var_1.a, var_1.b, var_1.b.b, vec4<bool>(var_1.d.x, false, false, true)), var_1.c, Struct_1(u_input.c.zyx, var_1.c, u_input.b.x, true, 0u), Struct_2(10929u, Struct_1(var_1.b.a, 9012i, var_1.b.c, var_1.b.d, 4294967295u), u_input.c.x, vec4<bool>(var_1.d.x, arg_0.x, false, arg_0.x))), vec3<bool>(false, true, var_1.d.x))), Struct_4(var_1.b.e, func_4(Struct_3(u_input.b, var_1.b, Struct_2(0u, var_1.b, var_1.c, var_1.d)), Struct_4(44448u, Struct_2(u_input.a.x, Struct_1(var_1.b.a, 46883i, u_input.d, arg_0.x, var_1.b.e), 2147483647i, var_1.d), u_input.b.x, var_1.b, Struct_2(u_input.a.x, Struct_1(var_1.b.a, u_input.b.x, 36748i, true, u_input.a.x), 1i, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), arg_0), 2147483647i, Struct_1(vec3<i32>(15953i, 0i, u_input.b.x), var_1.c, -2147483647i, var_1.b.d, u_input.a.x), Struct_2(u_input.a.x, var_1.b, u_input.b.x, var_1.d)), var_1.d.wzy).b, func_4(Struct_3(max(vec4<i32>(u_input.b.x, -1i, 1i, 34853i), u_input.c), Struct_1(vec3<i32>(0i, u_input.b.x, 0i), -19316i, u_input.b.x, arg_0.x, var_1.b.e), func_4(Struct_3(u_input.b, var_1.b, Struct_2(u_input.a.x, var_1.b, -1i, vec4<bool>(false, var_1.b.d, true, arg_0.x))), Struct_4(4294967295u, Struct_2(0u, var_1.b, var_1.c, vec4<bool>(false, arg_0.x, arg_0.x, var_1.d.x)), var_1.b.a.x, Struct_1(var_1.b.a, u_input.b.x, -5896i, true, u_input.a.x), Struct_2(var_1.b.e, Struct_1(vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x), u_input.d, var_1.b.b, false, var_1.a), 1i, vec4<bool>(var_1.b.d, false, false, false))), vec3<bool>(false, var_1.d.x, true))), Struct_4(~u_input.a.x, func_4(Struct_3(u_input.c, Struct_1(u_input.b.ywz, 2147483647i, u_input.c.x, var_1.d.x, u_input.a.x), Struct_2(var_1.b.e, var_1.b, -33853i, vec4<bool>(true, var_1.d.x, arg_0.x, false))), Struct_4(u_input.a.x, Struct_2(var_1.a, Struct_1(vec3<i32>(-50483i, 13072i, var_1.b.c), u_input.c.x, u_input.d, var_1.d.x, u_input.a.x), 1i, vec4<bool>(var_1.b.d, true, arg_0.x, true)), u_input.c.x, Struct_1(vec3<i32>(1i, -24710i, var_1.c), u_input.d, -2147483647i, var_1.b.d, 16577u), Struct_2(61143u, var_1.b, -2147483647i, var_1.d)), vec3<bool>(arg_0.x, var_1.b.d, false)), u_input.c.x, Struct_1(vec3<i32>(-45442i, var_1.b.b, -7496i), -2267i, u_input.c.x, arg_0.x, 44466u), func_4(Struct_3(vec4<i32>(var_1.b.a.x, -1i, -369i, var_1.c), Struct_1(vec3<i32>(u_input.c.x, -1i, -70036i), 2147483647i, -69120i, false, 1u), Struct_2(u_input.a.x, var_1.b, var_1.b.c, var_1.d)), Struct_4(var_1.a, Struct_2(u_input.a.x, var_1.b, 0i, vec4<bool>(true, var_1.b.d, var_1.d.x, true)), -20201i, Struct_1(vec3<i32>(var_1.c, 21696i, var_1.c), var_1.c, u_input.b.x, true, 43912u), Struct_2(28374u, var_1.b, var_1.c, var_1.d)), vec3<bool>(false, false, var_1.b.d))), arg_0)), func_3(func_4(Struct_3(~u_input.c, Struct_1(vec3<i32>(15082i, u_input.b.x, u_input.c.x), u_input.b.x, u_input.d, true, 0u), Struct_2(u_input.a.x, Struct_1(vec3<i32>(u_input.c.x, var_1.b.c, var_1.c), 2147483647i, 8586i, true, 0u), var_1.c, vec4<bool>(false, arg_0.x, true, true))), Struct_4(~u_input.a.x, Struct_2(18902u, Struct_1(u_input.c.wzx, var_1.b.c, 19768i, arg_0.x, 4294967295u), u_input.d, vec4<bool>(false, arg_0.x, false, true)), -2147483647i, func_4(Struct_3(vec4<i32>(u_input.c.x, 9593i, var_1.c, 0i), var_1.b, Struct_2(1u, var_1.b, var_1.b.a.x, vec4<bool>(false, arg_0.x, arg_0.x, var_1.b.d))), Struct_4(u_input.a.x, Struct_2(u_input.a.x, Struct_1(u_input.b.wyz, 2147483647i, -15874i, true, 1u), -17511i, vec4<bool>(false, arg_0.x, false, false)), var_1.c, var_1.b, Struct_2(45673u, var_1.b, u_input.d, var_1.d)), arg_0).b, Struct_2(u_input.a.x, Struct_1(vec3<i32>(u_input.d, 13572i, 22716i), u_input.c.x, var_1.b.a.x, true, var_1.b.e), var_1.b.b, var_1.d)), !select(vec3<bool>(arg_0.x, arg_0.x, true), var_1.d.wxw, true)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(16633u, 1u)], -273f) - _wgslsmith_f_op_f32(sign(-668f)))), func_4(Struct_3(~vec4<i32>(u_input.c.x, 23479i, u_input.b.x, u_input.d), func_4(Struct_3(vec4<i32>(u_input.d, var_1.b.b, u_input.c.x, u_input.d), Struct_1(vec3<i32>(var_1.c, u_input.c.x, u_input.b.x), -3313i, var_1.c, var_1.d.x, 4294967295u), Struct_2(u_input.a.x, Struct_1(var_1.b.a, 18580i, var_1.c, false, u_input.a.x), u_input.c.x, var_1.d)), Struct_4(1u, Struct_2(4294967295u, var_1.b, 72991i, var_1.d), 50975i, Struct_1(vec3<i32>(u_input.c.x, var_1.b.b, -88082i), u_input.c.x, -1i, true, var_1.b.e), Struct_2(4294967295u, var_1.b, u_input.b.x, var_1.d)), vec3<bool>(arg_0.x, false, true)).b, Struct_2(u_input.a.x, Struct_1(vec3<i32>(27009i, var_1.c, u_input.b.x), var_1.c, -19419i, true, 69486u), var_1.c, vec4<bool>(true, var_1.b.d, var_1.b.d, false))), Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(7816u, var_1.b.e, 0u, var_1.b.e), vec4<u32>(var_1.a, 100062u, var_1.b.e, 34594u)), func_4(Struct_3(u_input.b, var_1.b, Struct_2(var_1.b.e, var_1.b, u_input.c.x, var_1.d)), Struct_4(u_input.a.x, Struct_2(34088u, Struct_1(vec3<i32>(32743i, u_input.c.x, 0i), 18301i, u_input.c.x, var_1.d.x, var_1.a), -45586i, var_1.d), var_1.b.a.x, Struct_1(var_1.b.a, u_input.b.x, var_1.c, arg_0.x, 1u), Struct_2(var_1.a, Struct_1(var_1.b.a, var_1.b.b, u_input.b.x, var_1.b.d, u_input.a.x), 6066i, var_1.d)), arg_0), u_input.c.x, var_1.b, Struct_2(u_input.a.x, var_1.b, 7256i, vec4<bool>(var_1.d.x, false, arg_0.x, arg_0.x))), vec3<bool>(true, true, true)).b));
    var var_2 = !(!func_4(Struct_3(abs(vec4<i32>(20732i, u_input.d, -1i, -15644i)), Struct_1(u_input.c.wyy, var_1.c, u_input.d, var_1.b.d, u_input.a.x), Struct_2(var_1.a, Struct_1(vec3<i32>(6074i, u_input.d, 45838i), u_input.d, 39683i, true, 4294967295u), 2147483647i, vec4<bool>(arg_0.x, arg_0.x, false, true))), Struct_4(var_1.a, func_4(Struct_3(u_input.b, Struct_1(u_input.b.yyz, 1i, 5900i, arg_0.x, u_input.a.x), Struct_2(u_input.a.x, Struct_1(var_1.b.a, u_input.d, var_1.c, var_1.d.x, 45502u), 0i, vec4<bool>(false, false, var_1.d.x, true))), Struct_4(u_input.a.x, Struct_2(u_input.a.x, Struct_1(var_1.b.a, 0i, -48359i, arg_0.x, 14650u), 2147483647i, var_1.d), 5688i, Struct_1(u_input.c.zzz, u_input.c.x, -13224i, var_1.b.d, u_input.a.x), Struct_2(1u, Struct_1(u_input.c.yyx, 20247i, 2147483647i, var_1.b.d, var_1.a), -21569i, vec4<bool>(var_1.d.x, arg_0.x, false, var_1.d.x))), var_1.d.wwx), var_1.b.c, var_1.b, Struct_2(var_1.a, var_1.b, -34493i, vec4<bool>(true, arg_0.x, true, var_1.d.x))), !select(arg_0, vec3<bool>(arg_0.x, false, true), arg_0.x)).d);
    return true;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_4(u_input.a.x, func_4(Struct_3(u_input.b, Struct_1(-vec3<i32>(14799i, u_input.b.x, arg_1.x), _wgslsmith_mult_i32(arg_1.x, -11035i), u_input.d, true, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 15307u), vec3<u32>(u_input.a.x, u_input.a.x, 12814u))), Struct_2(func_4(Struct_3(vec4<i32>(arg_1.x, arg_1.x, 55755i, arg_1.x), Struct_1(u_input.c.yzw, arg_1.x, u_input.b.x, false, u_input.a.x), Struct_2(u_input.a.x, Struct_1(u_input.b.xyy, arg_1.x, u_input.d, arg_2.x, 1475u), -44960i, arg_2)), Struct_4(104727u, Struct_2(u_input.a.x, Struct_1(u_input.b.wzw, arg_1.x, -3615i, arg_0.x, u_input.a.x), -1i, arg_2), arg_1.x, Struct_1(u_input.c.xyw, 28496i, 27303i, true, 81816u), Struct_2(30220u, Struct_1(u_input.c.zzx, u_input.d, -77252i, false, u_input.a.x), 23787i, arg_0)), arg_0.xzw).b.e, func_4(Struct_3(u_input.b, Struct_1(u_input.b.yxw, -2147483647i, -7534i, true, 3094u), Struct_2(u_input.a.x, Struct_1(u_input.b.yyw, arg_1.x, -2147483647i, false, 4294967295u), arg_1.x, arg_2)), Struct_4(4294967295u, Struct_2(u_input.a.x, Struct_1(vec3<i32>(-4917i, -26154i, u_input.c.x), arg_1.x, 2147483647i, arg_0.x, 4294967295u), 47873i, vec4<bool>(arg_2.x, true, arg_2.x, arg_0.x)), u_input.c.x, Struct_1(u_input.c.wyz, 38570i, arg_1.x, arg_2.x, 20235u), Struct_2(4294967295u, Struct_1(u_input.b.wzy, arg_1.x, 647i, true, 4294967295u), 0i, arg_2)), vec3<bool>(true, arg_2.x, false)).b, 2147483647i, select(vec4<bool>(arg_2.x, arg_0.x, true, arg_2.x), vec4<bool>(false, arg_0.x, true, true), vec4<bool>(true, true, arg_2.x, false)))), Struct_4(_wgslsmith_mult_u32(1u, 4294967295u), func_4(Struct_3(u_input.c, Struct_1(u_input.b.zwz, 2421i, -49i, true, 56069u), Struct_2(u_input.a.x, Struct_1(vec3<i32>(-55513i, u_input.d, 1i), u_input.d, arg_1.x, arg_2.x, 1u), u_input.b.x, arg_2)), Struct_4(u_input.a.x, Struct_2(0u, Struct_1(u_input.c.ywz, -1i, arg_1.x, arg_0.x, 24592u), u_input.b.x, arg_0), u_input.d, Struct_1(u_input.c.xxx, u_input.d, -36576i, arg_2.x, u_input.a.x), Struct_2(1u, Struct_1(u_input.b.www, arg_1.x, -4781i, false, 0u), 16641i, arg_0)), vec3<bool>(arg_0.x, false, arg_0.x)), countOneBits(min(-14867i, arg_1.x)), Struct_1(_wgslsmith_add_vec3_i32(u_input.c.zxx, u_input.b.zzy), u_input.c.x, arg_1.x, false, _wgslsmith_div_u32(u_input.a.x, 4294967295u)), Struct_2(u_input.a.x, Struct_1(u_input.b.ywy, arg_1.x, -2967i, true, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-20646i, arg_1.x, 2147483647i), u_input.c.xwx), vec4<bool>(arg_0.x, arg_2.x, arg_2.x, arg_0.x))), arg_2.zxw), u_input.d, Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-5943i, _wgslsmith_div_i32(arg_1.x, -5765i), _wgslsmith_div_i32(u_input.c.x, arg_1.x)), vec3<i32>(-u_input.d, firstTrailingBit(1i), -4043i)), ~664i, -25857i, all(vec4<bool>(all(vec4<bool>(true, arg_0.x, false, true)), any(vec2<bool>(arg_0.x, arg_0.x)), global0[_wgslsmith_index_u32(u_input.a.x, 1u)] < -496f, func_3(Struct_1(vec3<i32>(u_input.c.x, u_input.b.x, arg_1.x), arg_1.x, arg_1.x, true, u_input.a.x), global0[_wgslsmith_index_u32(9719u, 1u)], Struct_1(u_input.c.wxx, arg_1.x, arg_1.x, arg_2.x, 0u)).x)), ~0u), Struct_2(firstLeadingBit(~func_4(Struct_3(vec4<i32>(u_input.c.x, arg_1.x, -47907i, -19456i), Struct_1(u_input.b.xxz, 0i, -30757i, false, u_input.a.x), Struct_2(u_input.a.x, Struct_1(vec3<i32>(u_input.c.x, u_input.d, arg_1.x), -2147483647i, -1i, arg_2.x, 47732u), 2147483647i, vec4<bool>(true, true, arg_2.x, arg_0.x))), Struct_4(46645u, Struct_2(u_input.a.x, Struct_1(u_input.b.xxz, u_input.c.x, -3200i, false, 93816u), u_input.b.x, vec4<bool>(false, arg_2.x, arg_0.x, arg_2.x)), arg_1.x, Struct_1(u_input.c.yxy, arg_1.x, 2147483647i, arg_0.x, 4294967295u), Struct_2(u_input.a.x, Struct_1(vec3<i32>(u_input.d, 1i, arg_1.x), 7097i, -17303i, arg_2.x, u_input.a.x), arg_1.x, arg_0)), vec3<bool>(false, arg_0.x, true)).a), func_4(Struct_3(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(-1i, arg_1.x, arg_1.x, arg_1.x)), Struct_1(u_input.c.yyx, u_input.d, 14553i, arg_2.x, u_input.a.x), Struct_2(4294967295u, Struct_1(u_input.c.wyw, u_input.c.x, u_input.d, arg_0.x, 4294967295u), 52741i, vec4<bool>(arg_2.x, false, false, arg_0.x))), Struct_4(u_input.a.x, Struct_2(12700u, Struct_1(u_input.c.zyw, arg_1.x, arg_1.x, arg_2.x, 0u), -17782i, arg_0), u_input.b.x, Struct_1(vec3<i32>(1i, -1i, 35060i), arg_1.x, u_input.d, arg_0.x, 4294967295u), func_4(Struct_3(u_input.b, Struct_1(vec3<i32>(arg_1.x, u_input.b.x, -46709i), 0i, -31498i, arg_0.x, u_input.a.x), Struct_2(22375u, Struct_1(vec3<i32>(-10733i, -1i, u_input.b.x), -1i, 10320i, true, u_input.a.x), arg_1.x, vec4<bool>(arg_2.x, arg_2.x, true, true))), Struct_4(3251u, Struct_2(37043u, Struct_1(u_input.b.xwz, arg_1.x, u_input.d, arg_0.x, 66315u), arg_1.x, arg_2), arg_1.x, Struct_1(u_input.c.ywz, 195i, -2147483647i, false, u_input.a.x), Struct_2(u_input.a.x, Struct_1(vec3<i32>(u_input.b.x, -2147483647i, 72888i), 0i, u_input.b.x, false, 0u), arg_1.x, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), vec3<bool>(true, true, arg_2.x))), !select(arg_0.zww, arg_0.ywy, false)).b, -arg_1.x, func_4(Struct_3(vec4<i32>(arg_1.x, -26837i, arg_1.x, u_input.c.x), Struct_1(u_input.b.wxz, -53132i, 50098i, true, u_input.a.x), func_4(Struct_3(vec4<i32>(arg_1.x, -2147483647i, arg_1.x, 1i), Struct_1(u_input.c.yyz, 844i, 1i, arg_2.x, u_input.a.x), Struct_2(u_input.a.x, Struct_1(vec3<i32>(2147483647i, arg_1.x, arg_1.x), -1i, u_input.c.x, arg_2.x, 7012u), -2147483647i, arg_0)), Struct_4(1u, Struct_2(u_input.a.x, Struct_1(vec3<i32>(-19373i, u_input.c.x, u_input.d), u_input.d, arg_1.x, false, 40773u), -10614i, vec4<bool>(true, arg_2.x, arg_0.x, arg_2.x)), 14648i, Struct_1(vec3<i32>(41250i, 0i, u_input.c.x), -41542i, 10385i, true, 0u), Struct_2(4294967295u, Struct_1(u_input.b.xxz, arg_1.x, -14052i, false, u_input.a.x), -1i, arg_2)), arg_0.yzy)), Struct_4(u_input.a.x, Struct_2(0u, Struct_1(vec3<i32>(0i, -1i, -2147483647i), 1i, arg_1.x, false, u_input.a.x), arg_1.x, vec4<bool>(true, true, false, arg_2.x)), arg_1.x, func_4(Struct_3(u_input.c, Struct_1(u_input.b.xyw, 2147483647i, arg_1.x, arg_2.x, 1u), Struct_2(58559u, Struct_1(vec3<i32>(-1i, 1i, 0i), 26294i, 2147483647i, false, u_input.a.x), u_input.c.x, arg_0)), Struct_4(u_input.a.x, Struct_2(1u, Struct_1(vec3<i32>(u_input.d, 0i, u_input.c.x), -12660i, arg_1.x, arg_0.x, 6370u), 2147483647i, arg_2), 11394i, Struct_1(vec3<i32>(u_input.c.x, -2147483647i, 54290i), u_input.c.x, -30608i, true, u_input.a.x), Struct_2(0u, Struct_1(u_input.c.ywx, 1i, arg_1.x, false, 0u), 2147483647i, vec4<bool>(false, arg_2.x, arg_2.x, arg_0.x))), arg_2.wxy).b, Struct_2(0u, Struct_1(vec3<i32>(3237i, arg_1.x, u_input.d), -1i, arg_1.x, false, u_input.a.x), -1i, arg_2)), vec3<bool>(true, func_4(Struct_3(u_input.b, Struct_1(u_input.c.yzx, -17443i, -1i, arg_2.x, 23910u), Struct_2(u_input.a.x, Struct_1(vec3<i32>(u_input.b.x, arg_1.x, 0i), 1i, 2147483647i, arg_2.x, 4294967295u), arg_1.x, arg_0)), Struct_4(0u, Struct_2(u_input.a.x, Struct_1(u_input.c.wzx, u_input.b.x, u_input.b.x, false, 4294967295u), u_input.d, vec4<bool>(false, true, true, false)), -1i, Struct_1(vec3<i32>(4060i, arg_1.x, arg_1.x), u_input.d, -18198i, arg_0.x, u_input.a.x), Struct_2(u_input.a.x, Struct_1(u_input.c.zww, -1158i, 66675i, true, 12428u), u_input.c.x, vec4<bool>(true, false, arg_0.x, true))), arg_0.yyy).d.x, arg_0.x)).d));
    global0 = array<f32, 1>();
    var var_1 = u_input.b;
    var var_2 = firstLeadingBit(countOneBits(u_input.b));
    var var_3 = true;
    return Struct_1(~(vec3<i32>(i32(-1i) * -28248i, arg_1.x, _wgslsmith_mod_i32(-1i, arg_1.x)) | abs(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 11552i), var_0.d.a))), -(~min(2184i, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), _wgslsmith_clamp_i32(0i, arg_1.x, var_2.x) ^ 0i, _wgslsmith_mod_i32(var_2.x, -1i), u_input.c.x), _wgslsmith_add_vec4_i32((vec4<i32>(var_1.x, u_input.b.x, -34587i, var_1.x) & vec4<i32>(var_1.x, var_2.x, var_0.b.c, -1i)) << (~vec4<u32>(var_0.b.b.e, u_input.a.x, 49498u, var_0.e.b.e) % vec4<u32>(32u)), u_input.c)), any(func_4(Struct_3(vec4<i32>(-2147483647i, -46973i, 1i, 48746i), func_4(Struct_3(u_input.b, var_0.e.b, var_0.b), Struct_4(var_0.a, var_0.b, arg_1.x, var_0.d, Struct_2(u_input.a.x, Struct_1(vec3<i32>(-39149i, -51952i, u_input.d), -1i, var_0.c, arg_0.x, 35312u), u_input.d, vec4<bool>(false, true, false, var_0.e.b.d))), var_0.e.d.wxz).b, Struct_2(15608u, Struct_1(vec3<i32>(24136i, u_input.b.x, -2147483647i), -24665i, var_0.b.b.c, arg_2.x, u_input.a.x), var_0.c, vec4<bool>(false, var_0.e.b.d, true, arg_2.x))), var_0, !select(vec3<bool>(arg_0.x, false, false), vec3<bool>(false, arg_2.x, arg_2.x), arg_0.wxx)).d), _wgslsmith_add_u32(0u, abs(_wgslsmith_dot_vec3_u32(u_input.a.www, u_input.a.xxy))) | 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 1>();
    var var_0 = func_5(vec4<bool>(!(!(u_input.a.x >= u_input.a.x)), true, false, true), select(~(-u_input.b.xz), vec2<i32>(-1i, _wgslsmith_div_i32(-10173i, u_input.c.x)), true), vec4<bool>(true, !select(func_1(vec3<bool>(true, false, false)), u_input.d <= -12937i, func_1(vec3<bool>(true, true, true))), true, select(true, true, true) & (_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a.x, 1u)])) <= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 1u)] - -949f))));
    let var_1 = ~u_input.a;
    let var_2 = abs(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-u_input.b, select(vec4<i32>(u_input.c.x, -24066i, 16988i, 2147483647i), u_input.b, false)), u_input.b) & vec4<i32>(var_0.c, abs(35009i), ~abs(-36225i), u_input.b.x));
    let var_3 = ~u_input.c.yx;
    var_0 = Struct_1(u_input.c.zyy, _wgslsmith_div_i32(-1i, select(func_5(vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), func_5(vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), vec2<i32>(u_input.b.x, 0i), vec4<bool>(true, var_0.d, true, var_0.d)).a.zx, vec4<bool>(true, false, var_0.d, true)).c, var_2.x, true)), -_wgslsmith_sub_i32(var_0.b, abs(func_4(Struct_3(var_2, Struct_1(vec3<i32>(var_3.x, 425i, -45700i), var_2.x, 2147483647i, var_0.d, var_0.e), Struct_2(1u, Struct_1(var_2.yzz, var_2.x, var_0.a.x, true, var_1.x), u_input.d, vec4<bool>(true, false, var_0.d, var_0.d))), Struct_4(var_0.e, Struct_2(var_0.e, Struct_1(var_2.xyw, u_input.d, 25844i, true, 4294967295u), -37560i, vec4<bool>(var_0.d, false, false, var_0.d)), -981i, Struct_1(var_0.a, -7071i, -2147483647i, var_0.d, u_input.a.x), Struct_2(u_input.a.x, Struct_1(u_input.b.yxx, -2147483647i, -12006i, true, 0u), 0i, vec4<bool>(var_0.d, true, var_0.d, true))), vec3<bool>(var_0.d, var_0.d, true)).b.a.x)), !(!func_4(Struct_3(vec4<i32>(var_0.a.x, 3088i, 1i, u_input.b.x), Struct_1(var_0.a, u_input.d, -1i, false, var_1.x), Struct_2(44767u, Struct_1(var_0.a, u_input.d, -1i, var_0.d, var_0.e), 8858i, vec4<bool>(true, false, var_0.d, var_0.d))), Struct_4(var_0.e, Struct_2(var_1.x, Struct_1(vec3<i32>(1i, -26122i, -1i), u_input.d, 11709i, var_0.d, 31977u), u_input.d, vec4<bool>(false, var_0.d, var_0.d, var_0.d)), var_2.x, Struct_1(vec3<i32>(69247i, -1i, 2147483647i), u_input.b.x, var_2.x, var_0.d, u_input.a.x), Struct_2(u_input.a.x, Struct_1(vec3<i32>(0i, -526i, var_2.x), -2147483647i, 12223i, var_0.d, u_input.a.x), var_2.x, vec4<bool>(true, false, true, false))), !vec3<bool>(false, var_0.d, var_0.d)).b.d), u_input.a.x);
    let var_4 = max(-2147483647i, ~(~u_input.d & -var_0.a.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_0.e, var_1.x, ~var_0.e), u_input.a) % 32u));
    let var_5 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(36850u << (var_1.x % 32u)), ~_wgslsmith_mult_u32(0u, 16987u), countOneBits(~82572u), ~(~14883u)), _wgslsmith_clamp_vec4_u32(abs(var_1), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(241u, var_1.x)), countOneBits(u_input.a.x), 4294967295u), ~(~vec4<u32>(0u, 27659u, 1u, var_1.x)))) == min(firstTrailingBit(1u), var_0.e);
    global0 = array<f32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_1.zz)), i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -32873i), vec2<i32>(-1i, 2147483647i)), -633i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_0.e, 1u)], global0[_wgslsmith_index_u32(67683u, 1u)])), -1105f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(5092u, 1u)] - _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(14568u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)])))) + vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, 0u), 1u)] - -455f), global0[_wgslsmith_index_u32(countOneBits(~var_0.e), 1u)], _wgslsmith_f_op_f32(select(-1976f, _wgslsmith_f_op_f32(-416f + global0[_wgslsmith_index_u32(0u, 1u)]), !var_0.d)))));
}

