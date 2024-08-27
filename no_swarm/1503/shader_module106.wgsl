struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -935f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -831f);
    let var_0 = Struct_3(Struct_2(reverseBits(vec4<u32>(u_input.c.x, 1u, u_input.c.x >> (u_input.c.x % 32u), u_input.c.x & u_input.c.x)), ~(~vec3<u32>(u_input.c.x, 21325u, u_input.c.x)), true), arg_0, Struct_2(~vec4<u32>(u_input.c.x, u_input.c.x << (0u % 32u), u_input.c.x, 61923u), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x) & vec3<u32>(8002u, 64705u, 31254u))), true), u_input.c.x & 44016u);
    global0 = _wgslsmith_f_op_f32(min(1890f, -342f));
    global0 = arg_0.e;
    var var_1 = Struct_1(vec4<bool>(true && (arg_0.a.x && (var_0.b.c <= -8191i)), any(vec3<bool>(var_0.b.a.x, any(vec2<bool>(arg_0.a.x, var_0.b.a.x)), true)), !arg_0.a.x | (_wgslsmith_f_op_f32(-var_0.b.b) != _wgslsmith_f_op_f32(f32(-1f) * -1494f)), select(all(var_0.b.a.ywx), false, var_0.b.b > arg_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(120f))), -firstLeadingBit(-var_0.b.c) | -42453i, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -622f), _wgslsmith_f_op_f32(2237f * _wgslsmith_f_op_f32(round(arg_1))))), -1081f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -162f) + _wgslsmith_f_op_f32(arg_1 * -298f)))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.e, 560f, var_0.b.e, arg_1), vec4<f32>(1116f, 373f, var_1.d.x, 1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(591f, arg_0.b, 268f, 577f) * vec4<f32>(1207f, arg_0.d.x, -316f, -222f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(792f, arg_1, var_0.b.d.x, arg_1))), select(vec4<bool>(arg_0.a.x, var_1.a.x, arg_0.a.x, var_1.a.x), select(arg_2, vec4<bool>(arg_2.x, arg_2.x, var_1.a.x, false), var_0.b.a), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.e, var_1.b, var_0.b.d.x)) * vec4<f32>(-112f, 1925f, var_0.b.d.x, _wgslsmith_f_op_f32(var_0.b.e * var_0.b.b)))), vec4<bool>(false, var_0.b.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 34493u), var_0.c.b.xy) <= firstLeadingBit(_wgslsmith_div_u32(var_0.d, 78917u)), all(select(var_0.b.a, var_0.b.a, vec4<bool>(false, var_1.a.x, arg_2.x, false))))));
}

fn func_2(arg_0: i32, arg_1: f32) -> vec4<bool> {
    global0 = -904f;
    global0 = -665f;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<bool>(true, true, true, true), arg_1, -u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-233f, arg_1, -449f)), _wgslsmith_f_op_f32(arg_1 - -1580f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(631f))), vec4<bool>(true, true, true, true))) - vec4<f32>(arg_1, -580f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-633f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, arg_1, false))))));
    var var_1 = Struct_3(Struct_2(select(vec4<u32>(1u, 38452u, 0u, 1u) | vec4<u32>(15637u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(1u, 40126u, u_input.c.x, 53059u), 4294967295u > u_input.c.x) ^ _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(53147u, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), ~vec4<u32>(44086u, u_input.c.x, 2079u, 4294967295u)), ~vec3<u32>(u_input.c.x, u_input.c.x << (27970u % 32u), 1u), true), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<bool>(false, false, false, false), var_0.x, 39821i, vec3<f32>(var_0.x, -1067f, 1000f), arg_1), arg_1, vec4<bool>(true, false, true, true))).x)), -25589i, vec3<f32>(_wgslsmith_f_op_f32(floor(1576f)), var_0.x, -1000f), -697f), Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 1u >> (0u % 32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(126458u, 52802u, 1u, u_input.c.x), vec4<u32>(u_input.c.x, 79184u, u_input.c.x, u_input.c.x) ^ vec4<u32>(u_input.c.x, 18941u, u_input.c.x, u_input.c.x)), countOneBits(abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u)))), ~abs(vec3<u32>(u_input.c.x, 52646u, u_input.c.x)) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) % vec3<u32>(32u)), (_wgslsmith_f_op_f32(abs(927f)) <= _wgslsmith_f_op_f32(max(arg_1, arg_1))) || all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), u_input.c.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(var_1.b.d.xy * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_1) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.xy)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_1.b.a, arg_1, arg_0, _wgslsmith_f_op_vec3_f32(trunc(var_1.b.d)), 609f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b.d.x * arg_1), _wgslsmith_div_f32(-1835f, var_0.x))), vec4<bool>(!var_1.c.c, var_1.a.c | var_1.a.c, !var_1.b.a.x, true))).xx, select(vec2<bool>(any(var_1.b.a), var_1.b.a.x), select(var_1.b.a.wy, select(var_1.b.a.wz, var_1.b.a.yx, var_1.a.c), var_1.a.c), select(select(var_1.b.a.yz, var_1.b.a.zx, var_1.c.c), select(var_1.b.a.yz, vec2<bool>(var_1.a.c, var_1.c.c), var_1.b.a.yw), select(var_1.b.a.wy, var_1.b.a.zz, vec2<bool>(true, true)))))));
    return !select(select(select(select(var_1.b.a, vec4<bool>(var_1.b.a.x, false, false, true), var_1.a.c), vec4<bool>(true, true, true, true), var_1.b.a), !select(vec4<bool>(true, var_1.c.c, true, var_1.b.a.x), vec4<bool>(false, var_1.a.c, var_1.b.a.x, var_1.a.c), var_1.b.a), vec4<bool>(true, true, any(vec2<bool>(var_1.b.a.x, var_1.a.c)), !var_1.b.a.x)), var_1.b.a, true && var_1.c.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(select(vec4<bool>(arg_0.a.x, arg_1.c.c, arg_1.c.c, true), select(arg_0.a, vec4<bool>(false, arg_1.b.a.x, true, true), vec4<bool>(arg_0.a.x, arg_1.a.c, arg_1.b.a.x, arg_1.b.a.x)), any(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_1.a.c, arg_1.c.c))), arg_1.b.d.x, arg_0.c, _wgslsmith_f_op_vec4_f32(func_3(arg_0, _wgslsmith_f_op_f32(-arg_0.e), !vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x))).yxy, 107f), _wgslsmith_f_op_f32(-138f + _wgslsmith_f_op_f32(-491f + _wgslsmith_f_op_f32(arg_1.b.d.x + -677f))), select(!vec4<bool>(false, false, true, arg_0.a.x), func_2(-arg_0.c, _wgslsmith_f_op_f32(floor(1000f))), vec4<bool>(!arg_1.c.c, all(arg_1.b.a.xw), true, true)))).xxz);
    let var_1 = min(arg_1.a.a, ~vec4<u32>(countOneBits(53125u), 4294967295u, 4294967295u, ~(~arg_3.x)));
    var var_2 = Struct_3(Struct_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.a.a.x, 4294967295u, arg_3.x, arg_3.x), ~vec4<u32>(27453u, arg_1.c.a.x, arg_1.a.a.x, arg_3.x)), reverseBits(arg_1.a.b), false), Struct_1(select(!func_2(26715i, -871f), !(!arg_0.a), !(!arg_1.b.a)), -729f, 0i << (firstLeadingBit(arg_3.x) % 32u), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-215f, 864f, _wgslsmith_f_op_f32(min(-775f, -341f))))), arg_1.b.d.x), arg_1.c, abs(abs(0u)));
    let var_3 = arg_1.a;
    var_2 = Struct_3(Struct_2(vec4<u32>(41355u, ~_wgslsmith_add_u32(u_input.c.x, arg_3.x), ~96043u, ~1u), vec3<u32>(~(~0u), 29888u, _wgslsmith_add_u32(arg_1.a.a.x, arg_1.c.b.x) ^ ~var_2.c.b.x), var_3.b.x != ~(~u_input.c.x)), arg_0, Struct_2(firstTrailingBit(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.c.x, 47122u, var_1.x, 70367u), vec4<u32>(1u, var_2.d, var_2.c.a.x, var_1.x), arg_0.a), vec4<u32>(var_3.b.x, 47899u, 4294967295u, 0u))), _wgslsmith_add_vec3_u32(~arg_1.c.b, vec3<u32>(arg_1.d, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, var_1.x, 1u, var_3.a.x), vec4<u32>(arg_3.x, 25558u, 0u, 11766u)), var_3.a.x)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_1.b.a.x, false, true), func_2(-14236i, var_2.b.d.x)))), var_2.c.a.x << (4294967295u % 32u));
    return Struct_1(!(!select(!arg_1.b.a, var_2.b.a, !vec4<bool>(var_3.c, true, var_2.c.c, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_f_op_f32(floor(arg_1.b.b)))))), ~arg_0.c, _wgslsmith_f_op_vec3_f32(min(arg_1.b.d, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(2495f, arg_0.b, -1653f), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<bool>(true, false, var_3.c, arg_1.b.a.x), 257f, -2147483647i, vec3<f32>(418f, arg_0.d.x, -137f), var_0.x), var_2.b.d.x, vec4<bool>(var_2.b.a.x, arg_0.a.x, var_2.a.c, false))).zwy))))), _wgslsmith_f_op_f32(arg_1.b.b - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1195f) * _wgslsmith_f_op_f32(sign(var_0.x)))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_2) -> bool {
    let var_0 = vec4<i32>(max(1i, _wgslsmith_div_i32(_wgslsmith_add_i32(1i, _wgslsmith_div_i32(1i, arg_2.x)), 2147483647i)), firstLeadingBit((_wgslsmith_sub_i32(-1i, arg_2.x) & (arg_0.b.c | arg_1.b.c)) | -(~2147483647i)), abs(-2147483647i), -2147483647i);
    global0 = 500f;
    var var_1 = 0i;
    var var_2 = firstLeadingBit(~_wgslsmith_mod_u32(arg_0.a.a.x, firstLeadingBit(0u)) ^ ~u_input.c.x);
    let var_3 = true;
    return !(firstLeadingBit(_wgslsmith_clamp_u32(31237u, arg_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.c.x), arg_1.a.a.zyw))) >= arg_3.b.x);
}

fn func_1() -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(561f - _wgslsmith_f_op_f32(f32(-1f) * -458f));
    var var_0 = func_5(Struct_3(Struct_2(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 88904u, u_input.c.x, u_input.c.x)), ~vec4<u32>(1u, u_input.c.x, 6604u, 4435u), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 75948u)), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(0u, 11346u, 7910u)), vec3<u32>(0u, u_input.c.x, u_input.c.x)), true), func_4(Struct_1(func_2(74612i, -397f), _wgslsmith_f_op_f32(trunc(-639f)), select(u_input.a, u_input.b.x, false), vec3<f32>(-282f, 1127f, -390f), _wgslsmith_f_op_f32(round(-889f))), Struct_3(Struct_2(vec4<u32>(u_input.c.x, u_input.c.x, 4447u, u_input.c.x), vec3<u32>(1199u, u_input.c.x, 53618u), false), Struct_1(vec4<bool>(false, true, true, true), -1602f, 0i, vec3<f32>(1000f, 218f, -276f), 1059f), Struct_2(vec4<u32>(79587u, u_input.c.x, u_input.c.x, 25692u), vec3<u32>(10882u, 4294967295u, u_input.c.x), true), max(u_input.c.x, u_input.c.x)), select(u_input.a | u_input.b.x, -u_input.b.x, u_input.c.x < u_input.c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, 28323u, 1u)) << (~vec3<u32>(32660u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))), Struct_2(vec4<u32>(_wgslsmith_mod_u32(32959u, 61820u), 0u, u_input.c.x, 57189u), vec3<u32>(4294967295u, 1u, select(u_input.c.x, u_input.c.x, true)), true), u_input.c.x), Struct_3(Struct_2(vec4<u32>(114791u, select(u_input.c.x, 12878u, true), u_input.c.x, ~u_input.c.x), abs(vec3<u32>(46213u, u_input.c.x, 7008u)), true), func_4(func_4(Struct_1(vec4<bool>(true, true, false, true), 1321f, u_input.b.x, vec3<f32>(-901f, -1000f, 2376f), 108f), Struct_3(Struct_2(vec4<u32>(u_input.c.x, 56645u, u_input.c.x, u_input.c.x), vec3<u32>(48643u, u_input.c.x, u_input.c.x), false), Struct_1(vec4<bool>(false, true, true, false), 561f, u_input.b.x, vec3<f32>(-1759f, -1287f, -772f), 303f), Struct_2(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 0u), false), u_input.c.x), _wgslsmith_add_i32(24463i, 20411i), ~vec3<u32>(42496u, u_input.c.x, 0u)), Struct_3(Struct_2(vec4<u32>(0u, 0u, u_input.c.x, u_input.c.x), vec3<u32>(0u, u_input.c.x, u_input.c.x), false), Struct_1(vec4<bool>(false, false, false, true), -2629f, -1i, vec3<f32>(352f, -121f, -730f), 353f), Struct_2(vec4<u32>(4294967295u, 45786u, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), true), ~78297u), _wgslsmith_div_i32(1i, countOneBits(-2147483647i)), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c.x, u_input.c.x), vec3<u32>(1u, 1u, u_input.c.x), vec3<u32>(u_input.c.x, 4294967295u, 104733u)), ~vec3<u32>(23105u, u_input.c.x, 4294967295u))), Struct_2(~(~vec4<u32>(u_input.c.x, 54819u, 70504u, 4294967295u)), abs(~vec3<u32>(1u, u_input.c.x, 1u)), all(vec2<bool>(true, true))), _wgslsmith_dot_vec2_u32(min(select(vec2<u32>(34356u, 4294967295u), u_input.c, vec2<bool>(false, true)), ~vec2<u32>(u_input.c.x, u_input.c.x)), select(~vec2<u32>(u_input.c.x, u_input.c.x), firstTrailingBit(u_input.c), vec2<bool>(false, false)))), (-select(vec2<i32>(-1i, u_input.a), vec2<i32>(21528i, -2147483647i), vec2<bool>(false, false)) | u_input.b.yz) & (_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, 13731i), vec2<i32>(u_input.a, 0i)) & vec2<i32>(-2147483647i, i32(-1i) * -36950i)), Struct_2(reverseBits(abs(vec4<u32>(u_input.c.x, 60770u, u_input.c.x, 43207u)) | ~vec4<u32>(u_input.c.x, u_input.c.x, 9136u, u_input.c.x)), ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(157u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 29129u, 7378u))), true));
    return ~vec3<u32>(~u_input.c.x, u_input.c.x, _wgslsmith_mult_u32(min(24793u, _wgslsmith_clamp_u32(65913u, u_input.c.x, 2373u)), abs(1u)));
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1777f))), -422f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1219f, -2134f, false)), -623f))))));
    var var_0 = Struct_3(Struct_2(min(~min(vec4<u32>(29639u, 6490u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 8997u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 11095u)), vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x))), vec3<u32>((0u << (0u % 32u)) >> (_wgslsmith_add_u32(u_input.c.x, 30225u) % 32u), ~(14095u >> (u_input.c.x % 32u)), ~1u), !arg_2), Struct_1(!vec4<bool>(any(vec4<bool>(arg_2, true, arg_2, arg_2)), func_4(Struct_1(vec4<bool>(arg_2, arg_2, arg_2, arg_2), -314f, u_input.a, vec3<f32>(1000f, 1524f, -2016f), -1980f), Struct_3(Struct_2(vec4<u32>(u_input.c.x, 23313u, u_input.c.x, 1u), vec3<u32>(u_input.c.x, 14610u, u_input.c.x), arg_2), Struct_1(vec4<bool>(true, arg_2, arg_2, false), 398f, arg_1, vec3<f32>(-1647f, -414f, -761f), -690f), Struct_2(vec4<u32>(u_input.c.x, u_input.c.x, 34959u, 40706u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), arg_2), 145688u), 2147483647i, vec3<u32>(u_input.c.x, 1u, u_input.c.x)).a.x, true, false), 510f, abs(1i), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1569f, -1626f, -1858f)))))), 713f), Struct_2(abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), abs(vec4<u32>(43911u, u_input.c.x, u_input.c.x, u_input.c.x)))), ~vec3<u32>(u_input.c.x, ~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 0u, u_input.c.x))), u_input.a > 0i), 1u);
    let var_1 = Struct_3(Struct_2(select(vec4<u32>(24121u, var_0.d, var_0.c.a.x, 0u) | ~vec4<u32>(61451u, 0u, var_0.a.b.x, var_0.d), var_0.a.a, !(-1000f != var_0.b.b)), abs(_wgslsmith_sub_vec3_u32(var_0.a.b, vec3<u32>(u_input.c.x, u_input.c.x, var_0.c.a.x))), func_2(~arg_3.x, 264f).x | false), var_0.b, var_0.c, ~47281u);
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(-19017i, _wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec2_i32(~u_input.b.xx, select(u_input.b.xx, u_input.b.yz, true)) >> (88474u % 32u)), !select(true, all(vec3<bool>(true, true, true)), true), ~(~vec3<i32>(u_input.b.x, u_input.a, 2147483647i) << ((func_1() | ~vec3<u32>(u_input.c.x, 1u, 1u)) % vec3<u32>(32u))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1125f) * var_0.d.x);
    let var_1 = Struct_1(vec4<bool>(true, var_0.a.x, !var_0.a.x, var_0.a.x), 426f, ~_wgslsmith_clamp_i32(-abs(-8067i), _wgslsmith_div_i32(~12873i, ~var_0.c), abs(~u_input.b.x)), vec3<f32>(var_0.b, _wgslsmith_f_op_vec4_f32(func_3(func_4(Struct_1(var_0.a, var_0.b, u_input.b.x, var_0.d, 1545f), Struct_3(Struct_2(vec4<u32>(55382u, 52789u, 1u, 47726u), vec3<u32>(0u, u_input.c.x, u_input.c.x), false), Struct_1(var_0.a, var_0.d.x, -7018i, vec3<f32>(var_0.b, -463f, var_0.b), -1020f), Struct_2(vec4<u32>(0u, 4294967295u, 0u, u_input.c.x), vec3<u32>(0u, u_input.c.x, 28160u), false), 4294967295u), ~(-30735i), abs(vec3<u32>(4294967295u, 50246u, u_input.c.x))), _wgslsmith_f_op_f32(-var_0.e), vec4<bool>(true, var_0.a.x, true, any(var_0.a.www)))).x, _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_div_f32(func_6(-1i, 0i, var_0.a.x, vec3<i32>(14113i, var_0.c, u_input.a)).d.x, _wgslsmith_f_op_f32(1146f + var_0.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-109f - _wgslsmith_f_op_f32(-func_4(var_0, Struct_3(Struct_2(vec4<u32>(u_input.c.x, 0u, 0u, u_input.c.x), vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), false), var_0, Struct_2(vec4<u32>(u_input.c.x, 41977u, u_input.c.x, 4294967295u), vec3<u32>(10275u, 1u, 37433u), var_0.a.x), u_input.c.x), u_input.b.x, vec3<u32>(u_input.c.x, u_input.c.x, 1u)).e)))));
    let var_2 = Struct_2(vec4<u32>(0u, _wgslsmith_mult_u32(u_input.c.x, 46978u), 1u, 43616u), ~min(vec3<u32>(u_input.c.x, 6718u, u_input.c.x), firstLeadingBit(vec3<u32>(0u, u_input.c.x, u_input.c.x))) << (abs(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 1u, 4294967295u), vec3<u32>(4294967295u, u_input.c.x, 19352u)))) % vec3<u32>(32u)), -_wgslsmith_div_i32(var_0.c, i32(-1i) * -25964i) < -func_6(var_0.c, -var_0.c, !var_0.a.x, ~vec3<i32>(0i, u_input.b.x, u_input.a)).c);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-224f, -697f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(969f, -403f, var_2.c))))), var_1.d.x) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.e, var_1.b, var_0.b, var_0.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(318f, var_0.d.x, var_0.b, var_0.b) + vec4<f32>(var_1.d.x, var_1.b, var_1.b, -1929f)), !var_1.a)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 1070f, var_0.e, var_1.b), vec4<f32>(var_1.e, var_1.b, -416f, var_1.d.x))))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(648f, var_0.d.x))), _wgslsmith_f_op_f32(var_1.b * var_1.b), _wgslsmith_f_op_vec4_f32(func_3(var_0, 361f, vec4<bool>(var_0.a.x, false, var_1.a.x, false))).x)));
    let var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, abs(~vec3<i32>(u_input.b.x, -33478i, 0i)), ~(~(~vec4<u32>(var_2.b.x, 95992u, 1u, u_input.c.x)) & var_2.a), _wgslsmith_mult_vec3_i32(u_input.b, ~(vec3<i32>(-1i, var_0.c, 0i) >> (var_2.a.xxw % vec3<u32>(32u))) & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, var_1.c, -28544i) << (vec3<u32>(87020u, 4294967295u, 31319u) % vec3<u32>(32u)), u_input.b)));
}

