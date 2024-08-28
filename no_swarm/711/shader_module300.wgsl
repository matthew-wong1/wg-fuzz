struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec2<f32>(1000f, 1538f), vec4<bool>(false, true, true, false), vec3<f32>(2210f, 809f, 1000f), Struct_1(vec4<u32>(4294967295u, 35389u, 0u, 58480u))), Struct_2(vec2<f32>(-687f, -1178f), vec4<bool>(true, true, true, false), vec3<f32>(998f, 1000f, -623f), Struct_1(vec4<u32>(1u, 22474u, 27547u, 1u))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-592f * 663f))) * _wgslsmith_f_op_f32(-916f + _wgslsmith_f_op_f32(arg_0 * 505f))))) - arg_0);
    global0 = array<Struct_2, 2>();
    var var_1 = ~arg_2.x;
    global0 = array<Struct_2, 2>();
    let var_2 = u_input.c.x;
    return arg_1;
}

fn func_2(arg_0: bool) -> vec2<f32> {
    var var_0 = -1210f;
    var var_1 = Struct_1(min(select(max(~vec4<u32>(1u, u_input.b, 55003u, 1u), ~vec4<u32>(u_input.b, 16195u, u_input.b, 1u)), max(vec4<u32>(4294967295u, 4294967295u, 1u, 0u) & vec4<u32>(u_input.b, 14928u, u_input.b, 4294967295u), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), !select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(true, false, false, arg_0), arg_0)), ~(~(~vec4<u32>(1u, u_input.b, 32019u, 0u)))));
    var var_2 = vec4<u32>(4294967295u, 4294967295u, var_1.a.x, select(countOneBits(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b, var_1.a.x, u_input.b), _wgslsmith_add_u32(4294967295u, var_1.a.x))), 58442u ^ ~(9574u & var_1.a.x), true));
    var var_3 = func_3(-307f, select(!select(vec3<bool>(true, true, true), !vec3<bool>(false, true, arg_0), arg_0), vec3<bool>(firstTrailingBit(u_input.b) <= reverseBits(68839u), all(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), false)), false), true), _wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, ~0u, 4294967295u, 4294967295u >> (var_2.x % 32u)) | var_1.a, ~(~(~vec4<u32>(var_1.a.x, var_1.a.x, 0u, 63476u))), vec4<u32>(114207u, _wgslsmith_mod_u32(~var_1.a.x, var_1.a.x), _wgslsmith_sub_u32(~16555u, ~var_1.a.x), var_2.x)));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -702f))))), 329f, _wgslsmith_f_op_f32(round(1851f)), -1092f);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.yy - _wgslsmith_f_op_vec2_f32(var_4.zw * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(873f, -1986f) * vec2<f32>(1318f, var_4.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, var_4.x))))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x - 1316f) + _wgslsmith_f_op_f32(f32(-1f) * -2232f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(arg_1, vec4<bool>(!(!arg_3.x), arg_3.x, true, func_3(_wgslsmith_div_f32(arg_1.x, arg_1.x), arg_3, min(arg_2.a >> (arg_0.a % vec4<u32>(32u)), ~arg_0.a)).x), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_2(true)).x, _wgslsmith_f_op_vec2_f32(func_2(func_3(1457f, func_3(arg_1.x, vec3<bool>(arg_3.x, arg_3.x, false), arg_0.a), arg_2.a).x)).x, _wgslsmith_f_op_f32(sign(-354f))), arg_2);
    global0 = array<Struct_2, 2>();
    let var_1 = Struct_1(vec4<u32>(16556u >> (_wgslsmith_dot_vec3_u32(abs(var_0.d.a.xzw), max(vec3<u32>(arg_2.a.x, 55383u, arg_0.a.x), arg_0.a.yzw)) % 32u), 1u, u_input.b, 44612u));
    var var_2 = u_input.c.x;
    let var_3 = arg_2.a.ww;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-288f, -746f)), var_0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_1.x, 142f), -455f, 3370f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, var_0.a.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) + var_0.c))), Struct_1(max(arg_2.a, ~var_1.a ^ arg_0.a)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> u32 {
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-325f - 1432f), arg_0.c.x) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.c), vec3<f32>(-626f, 381f, arg_0.c.x), arg_0.b.yxy)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c) * _wgslsmith_f_op_vec3_f32(-arg_0.c)) + vec3<f32>(507f, _wgslsmith_f_op_f32(f32(-1f) * -1786f), func_4(arg_0.d, arg_0.c.zz, arg_1, arg_0.b.zwz).c.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-394f, 265f, arg_0.a.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c - vec3<f32>(arg_2, -354f, arg_2))) - arg_0.c));
    return ~arg_0.d.a.x;
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(521f))))), -868f);
    global0 = array<Struct_2, 2>();
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-913f + 1227f) + 1433f)) - _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-247f)))))))));
    var var_2 = ~(vec3<i32>(-1i) * -vec3<i32>(countOneBits(u_input.c.x), _wgslsmith_clamp_i32(u_input.a, -1i, u_input.c.x), u_input.a));
    var_2 = u_input.c;
    return global0[_wgslsmith_index_u32(4294967295u, 2u)];
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~(~u_input.b), 2u)];
    var_0 = global0[_wgslsmith_index_u32(~0u, 2u)];
    global0 = array<Struct_2, 2>();
    var_0 = func_6(func_5(func_4(var_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1102f, var_0.c.x)) - _wgslsmith_f_op_vec2_f32(func_2(true))), Struct_1(vec4<u32>(4294967295u, arg_2, arg_2, 4294967295u)), vec3<bool>(var_0.b.x, !var_0.b.x, !var_0.b.x)), var_0.d, _wgslsmith_div_f32(-380f, _wgslsmith_f_op_f32(floor(var_0.a.x))), vec4<i32>(u_input.c.x, -22866i, u_input.c.x, max(u_input.c.x, _wgslsmith_div_i32(arg_1.x, arg_1.x)))), Struct_1(countOneBits(vec4<u32>(28454u, arg_2 >> (4294967295u % 32u), arg_2, 56420u))));
    let var_1 = var_0.c.x;
    return var_0.d;
}

fn func_7(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = arg_2.d;
    var var_1 = u_input.c.x;
    var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(957f, _wgslsmith_div_f32(-962f, arg_3), _wgslsmith_f_op_f32(f32(-1f) * -1396f)) - _wgslsmith_f_op_vec3_f32(-arg_2.c));
    let var_3 = arg_2;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 2>();
    let var_0 = ~min(~(~vec3<u32>(u_input.b, 40717u, 17578u)), vec3<u32>(reverseBits(0u), ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 28958u), vec3<u32>(u_input.b, 0u, 4294967295u)))) & firstLeadingBit(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 35679u, 1u), vec4<u32>(1u, u_input.b, u_input.b, u_input.b)), 0u, countOneBits(u_input.b))));
    global0 = array<Struct_2, 2>();
    let var_1 = select(~func_7(func_1(var_0.x, u_input.c.xz, abs(1u)), ~vec2<i32>(u_input.c.x, u_input.a), global0[_wgslsmith_index_u32(1u, 2u)], 1330f), func_5(global0[_wgslsmith_index_u32(1u | u_input.b, 2u)], func_1(func_4(Struct_1(vec4<u32>(7106u, 9728u, var_0.x, 91583u)), vec2<f32>(496f, 1000f), func_4(Struct_1(vec4<u32>(4444u, u_input.b, u_input.b, 42155u)), vec2<f32>(410f, 1502f), Struct_1(vec4<u32>(var_0.x, 29882u, 2516u, var_0.x)), vec3<bool>(true, false, false)).d, func_4(Struct_1(vec4<u32>(var_0.x, var_0.x, u_input.b, 8074u)), vec2<f32>(1000f, 835f), Struct_1(vec4<u32>(u_input.b, var_0.x, var_0.x, 1999u)), vec3<bool>(false, false, true)).b.zyz).d.a.x, _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(1i, u_input.c.x)), vec2<i32>(u_input.a, u_input.a) << (var_0.yz % vec2<u32>(32u)), ~vec2<i32>(u_input.a, u_input.a)), ~47054u), -724f, abs(vec4<i32>(2147483647i, -2147483647i, -2147483647i << (u_input.b % 32u), -4055i))), false);
    global0 = array<Struct_2, 2>();
    let var_2 = vec2<i32>(-26332i, -38911i);
    let var_3 = vec4<u32>(var_0.x, ~func_5(func_6(var_1 << (var_1 % 32u), func_6(var_0.x, Struct_1(vec4<u32>(var_0.x, var_1, 1u, u_input.b))).d), Struct_1(firstLeadingBit(vec4<u32>(var_1, var_0.x, 4294967295u, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1694f)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_2.x, var_2.x, var_2.x), _wgslsmith_div_vec4_i32(vec4<i32>(27978i, -2147483647i, u_input.c.x, -7145i), vec4<i32>(var_2.x, -12435i, var_2.x, -1i)))), func_4(func_6(func_6(abs(var_0.x), func_6(u_input.b, Struct_1(vec4<u32>(u_input.b, 4294967295u, u_input.b, var_1))).d).d.a.x, func_4(Struct_1(vec4<u32>(u_input.b, u_input.b, 1u, 1u)), _wgslsmith_div_vec2_f32(vec2<f32>(-1159f, -1000f), vec2<f32>(-1258f, 232f)), Struct_1(vec4<u32>(var_1, 38694u, var_1, 44093u)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)).d).d, vec2<f32>(-792f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f))), func_4(func_6(2146u << (var_1 % 32u), Struct_1(vec4<u32>(var_0.x, var_1, 12473u, 0u))).d, _wgslsmith_f_op_vec2_f32(func_2(var_0.x < 4294967295u)), func_4(Struct_1(vec4<u32>(4294967295u, u_input.b, u_input.b, 39381u)), vec2<f32>(-410f, 1456f), Struct_1(vec4<u32>(var_1, u_input.b, var_0.x, u_input.b)), vec3<bool>(true, false, false)).d, func_6(_wgslsmith_div_u32(var_0.x, 1u), Struct_1(vec4<u32>(0u, 19903u, var_1, u_input.b))).b.xzw).d, !(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))).d.a.x, var_0.x);
    var var_4 = ~vec4<u32>(func_7(func_6(var_0.x, Struct_1(var_3)).d, _wgslsmith_mult_vec2_i32(-var_2, -var_2), Struct_2(vec2<f32>(735f, 966f), func_4(Struct_1(var_3), vec2<f32>(-1021f, 1413f), Struct_1(var_3), vec3<bool>(false, false, true)).b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1582f, -1472f, 1012f) * vec3<f32>(1763f, 1639f, -1612f)), Struct_1(vec4<u32>(var_1, u_input.b, 31847u, 4294967295u))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.x, var_0.x, ~12441u);
    let x = u_input.a;
    s_output = StorageBuffer(28843u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2066f, 1585f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(266f, -980f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-251f, 401f)))), min(0i, var_2.x));
}

