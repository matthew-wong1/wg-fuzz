struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(floor(-255f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1111f, 1679f, 1684f, 582f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(419f, 2025f, 193f, -1000f))))), ~(~reverseBits(vec2<u32>(u_input.d.x, u_input.b.x))), ~(-vec4<i32>(max(u_input.a, 13225i), 65373i, _wgslsmith_dot_vec3_i32(vec3<i32>(17815i, u_input.a, u_input.a), vec3<i32>(u_input.a, 16930i, 1i)), countOneBits(u_input.a))));
    var var_1 = vec3<i32>(~reverseBits(1i), -var_0.e.x, -u_input.a);
    let var_2 = Struct_4(0i, Struct_2(Struct_1(!(var_0.d.x <= u_input.c), _wgslsmith_div_f32(var_0.c.x, var_0.b), _wgslsmith_f_op_vec4_f32(ceil(var_0.c)), ~u_input.d, var_0.e), -50458i, false, Struct_1(var_0.a, -1370f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(var_0.c)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-344f, -1598f, var_0.b, var_0.b), vec4<f32>(-1005f, 1752f, -617f, var_0.b), false)))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(3828u, u_input.d.x), var_0.d, vec2<u32>(15125u, 0u)), ~(var_0.e << (vec4<u32>(4294967295u, var_0.d.x, 132514u, u_input.d.x) % vec4<u32>(32u))))), Struct_1(var_0.c.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.c.x)), var_0.c.x, _wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c))), vec2<u32>(~reverseBits(u_input.c), _wgslsmith_mult_u32(35902u, var_0.d.x) | ~var_0.d.x), ~abs(-vec4<i32>(u_input.a, -32036i, 2147483647i, u_input.a))));
    let var_3 = all(select(select(select(select(vec3<bool>(var_0.a, var_2.c.a, false), vec3<bool>(var_2.c.a, var_0.a, var_2.b.a.a), var_0.a), vec3<bool>(var_2.b.d.a, var_0.a, true), vec3<bool>(var_0.a, var_0.a, false)), !(!vec3<bool>(true, false, var_0.a)), !select(vec3<bool>(true, var_0.a, var_2.b.d.a), vec3<bool>(false, true, true), var_0.a)), !select(!vec3<bool>(var_2.c.a, false, var_2.b.d.a), !vec3<bool>(var_0.a, var_2.b.a.a, false), var_2.c.d.x != 0u), !(!vec3<bool>(false, var_2.b.d.a, false))));
    var_0 = var_2.b.d;
    return _wgslsmith_f_op_vec4_f32(-var_2.b.a.c);
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<f32>, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3());
    var var_1 = true;
    var_1 = arg_3 & !select(arg_0.x, true, true);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-547f)), _wgslsmith_f_op_f32(abs(arg_2.x)), 955f, -676f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2589f, -1384f, -512f, 1587f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -616f, 473f) * vec4<f32>(-1725f, var_0.x, -1320f, 1293f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-436f, var_0.x, var_0.x, -735f) - vec4<f32>(-1043f, -2184f, arg_2.x, arg_1)), !arg_0)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1, arg_2.x)), -682f, _wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_div_f32(arg_1, arg_2.x)) * vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 229f))));
    var var_2 = Struct_1(all(!vec4<bool>(true, !arg_0.x, arg_0.x, false)), 455f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x), _wgslsmith_f_op_f32(f32(-1f) * -286f), 1337f, 1428f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 387f, -744f, -155f) * vec4<f32>(-2551f, var_0.x, -1510f, 1509f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, 1299f, arg_1, arg_1), vec4<f32>(-1292f, var_0.x, -534f, 716f))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, -563f, -1050f, arg_1), vec4<f32>(arg_2.x, arg_2.x, var_0.x, var_0.x)))), true)), vec2<u32>(min(u_input.d.x & 9835u, u_input.b.x) & (select(4294967295u, 4294967295u, arg_0.x) << (u_input.d.x % 32u)), 1u), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(46676i, 21516i) << (vec2<u32>(u_input.c, u_input.d.x) % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.a)) & u_input.a, u_input.a | _wgslsmith_div_i32(14802i, u_input.a << (u_input.b.x % 32u)), u_input.a, -10540i));
    return ~var_2.e.x;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: f32) -> f32 {
    var var_0 = vec4<bool>(!(true | all(!arg_1)), true & any(arg_1.yxy), arg_2.b.x, all(vec2<bool>(arg_2.c.a.c.x == _wgslsmith_f_op_f32(step(arg_2.c.a.b, arg_2.c.d.b)), !(arg_1.x | arg_2.b.x))));
    var_0 = vec4<bool>(arg_2.b.x, true, true, true && arg_2.b.x);
    let var_1 = Struct_3(max(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, arg_0.b.a.e.x, 0i, -11807i), arg_2.a), -_wgslsmith_mult_vec4_i32(~arg_0.b.a.e, vec4<i32>(arg_2.a.x, 0i, -65186i, 2147483647i))), var_0.wzz, Struct_2(Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1064f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.c.a.c.x, -189f, -1468f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1144f, arg_0.c.c.x, arg_0.b.a.b, arg_0.b.a.c.x)))), abs(arg_0.c.d & vec2<u32>(arg_2.c.a.d.x, 1u)), vec4<i32>(-arg_2.a.x, abs(44554i), abs(u_input.a), arg_2.a.x)), _wgslsmith_mod_i32(u_input.a, arg_2.c.d.e.x ^ u_input.a), _wgslsmith_clamp_i32(17879i, 31211i, max(-14601i, arg_2.c.d.e.x)) <= 0i, Struct_1(any(arg_1.yw), _wgslsmith_f_op_f32(f32(-1f) * -1129f), vec4<f32>(-2000f, arg_2.c.a.c.x, -1992f, _wgslsmith_f_op_f32(arg_0.b.d.c.x * -121f)), vec2<u32>(1u, ~1u), -_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.c.d.e.x, 2147483647i, 2147483647i, 23003i), arg_2.c.a.e))));
    var var_2 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b.d.b), _wgslsmith_f_op_f32(ceil(arg_3)), arg_0.b.a.b == arg_2.c.a.b)) - -746f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.b.d.c.x, arg_0.b.d.c.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(563f, arg_3, arg_1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.c.c.x, arg_0.c.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-244f)), _wgslsmith_f_op_f32(-1857f + arg_2.c.d.b)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_2.c.d.c))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.c.x, arg_0.c.c.x, -209f, arg_3)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.c.x, arg_3, arg_2.c.d.b, -364f), vec4<f32>(arg_2.c.a.c.x, arg_2.c.a.b, var_1.c.a.c.x, 375f))), any(!arg_1)))), abs(vec2<u32>(0u, arg_2.c.a.d.x)), min(abs(var_1.a), arg_2.a));
    var var_3 = var_1.c.d.e.x;
    return _wgslsmith_f_op_f32(abs(-375f));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_4(func_2(select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, true, arg_0, arg_0)), _wgslsmith_f_op_f32(select(arg_2, -1324f, arg_0)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1050f, 1499f), vec2<f32>(1337f, -334f))), true), Struct_2(Struct_1(false, 474f, vec4<f32>(arg_2, 731f, 1000f, -939f), vec2<u32>(arg_1, 70956u), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)), u_input.a, any(vec2<bool>(false, arg_0)), Struct_1(arg_0, 1044f, vec4<f32>(333f, -485f, -826f, -370f), vec2<u32>(u_input.c, 1u), vec4<i32>(-45389i, 2147483647i, u_input.a, -6885i))), Struct_1(true, _wgslsmith_f_op_f32(-arg_2), vec4<f32>(1000f, arg_2, arg_2, 365f), u_input.b, max(vec4<i32>(u_input.a, 1i, 34313i, u_input.a), vec4<i32>(2147483647i, u_input.a, 9828i, u_input.a)))), vec4<bool>(false, !any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true, true), Struct_3(vec4<i32>(1i, u_input.a, -12134i, u_input.a) >> (select(vec4<u32>(arg_1, 99124u, u_input.c, arg_1), vec4<u32>(1u, u_input.d.x, 34730u, 26580u), vec4<bool>(arg_0, arg_0, true, false)) % vec4<u32>(32u)), select(!vec3<bool>(arg_0, true, arg_0), select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, true, false), vec3<bool>(false, true, arg_0)), !vec3<bool>(false, arg_0, arg_0)), Struct_2(Struct_1(false, arg_2, vec4<f32>(arg_2, -1475f, arg_2, -986f), vec2<u32>(1u, u_input.c), vec4<i32>(u_input.a, -26921i, u_input.a, u_input.a)), ~u_input.a, true, Struct_1(true, -820f, vec4<f32>(arg_2, 1131f, 1231f, 544f), vec2<u32>(0u, 24423u), vec4<i32>(23140i, 1i, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-988f - _wgslsmith_f_op_f32(-294f + -665f)), arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 981f) - arg_2), 511f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-948f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -306f, 122f, _wgslsmith_f_op_f32(f32(-1f) * -1218f)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(510f, -1360f, -535f, arg_2), vec4<f32>(610f, var_0.x, arg_2, var_0.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1094f - arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1294f), _wgslsmith_f_op_f32(max(-1000f, var_0.x)), var_0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(583f, var_0.x, arg_2, 566f))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(208f, -603f, 1000f, arg_2))))))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), arg_2, var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, 621f, var_0.x, 717f)))))));
    var var_1 = Struct_2(Struct_1(false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-498f * arg_2)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, 1184f, -776f, 1015f), vec4<f32>(var_0.x, var_0.x, -1168f, arg_2))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(arg_2 * -142f), var_0.x), select(vec4<bool>(arg_0, false, arg_0, true), !vec4<bool>(arg_0, false, false, false), any(vec2<bool>(arg_0, true))))), u_input.b, ~(~vec4<i32>(u_input.a, -44096i, -1i, u_input.a) | _wgslsmith_mod_vec4_i32(vec4<i32>(-15670i, -38969i, u_input.a, 16833i), vec4<i32>(u_input.a, 2147483647i, -12691i, u_input.a)))), 1267i, all(!(!vec3<bool>(arg_0, arg_0, arg_0))), Struct_1(false, -122f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x - -1019f), _wgslsmith_f_op_f32(151f - var_0.x), _wgslsmith_div_f32(var_0.x, arg_2), _wgslsmith_f_op_f32(abs(611f)))), firstLeadingBit(~u_input.b), vec4<i32>(max(-1i, u_input.a) & _wgslsmith_mod_i32(u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), ~_wgslsmith_add_i32(u_input.a, 2147483647i), 25980i)));
    let var_2 = var_1.a;
    return 1011f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~7911u, u_input.d.x, _wgslsmith_sub_u32(u_input.b.x, ~u_input.b.x));
    let var_1 = _wgslsmith_clamp_vec3_u32(abs(firstLeadingBit(_wgslsmith_clamp_vec3_u32(var_0, var_0, ~var_0))), vec3<u32>(var_0.x, var_0.x, u_input.d.x) << (_wgslsmith_mult_vec3_u32(var_0, ~(~vec3<u32>(0u, var_0.x, 7842u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(u_input.c | 0u, 4294967295u), 1u, 3646u) >> (vec3<u32>(10694u, 130780u, select(75114u, u_input.c, true)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(true, ~var_1.x, 1f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1100f, _wgslsmith_f_op_vec4_f32(func_3()).x)));
    var_2 = -1467f;
    var_2 = _wgslsmith_f_op_f32(-1135f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1879f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-842f, -435f))))));
    var var_3 = 1u > var_0.x;
    var_3 = !(u_input.d.x >= 1u);
    let var_4 = !(!select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zx, -765f, -1i);
}

