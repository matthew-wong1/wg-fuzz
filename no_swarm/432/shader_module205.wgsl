struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<i32> {
    global0 = array<u32, 23>();
    var var_0 = firstLeadingBit(i32(-1i) * -2589i);
    var var_1 = -1000f;
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    return arg_0.b.a.a.wxw;
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = select(-_wgslsmith_mod_vec3_i32(select(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), func_3(Struct_3(11577u, Struct_2(Struct_1(vec4<i32>(arg_0.x, arg_0.x, 2147483647i, 14649i)), -185f, true)), -1671f, vec3<u32>(u_input.c.x, 0u, u_input.c.x), Struct_3(0u, Struct_2(Struct_1(vec4<i32>(arg_0.x, -33962i, -2147483647i, arg_0.x)), -162f, true))), vec3<bool>(true, false, true)), vec3<i32>(arg_0.x, -1i, abs(-12341i))), -vec3<i32>(arg_0.x, arg_0.x, -15312i), countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.x, arg_0.x, 2147483647i, -1i), vec4<i32>(2147483647i, arg_0.x, 23176i, arg_0.x) ^ vec4<i32>(arg_0.x, 29591i, arg_0.x, -24946i))) < -_wgslsmith_clamp_i32(0i, func_3(Struct_3(53480u, Struct_2(Struct_1(vec4<i32>(22883i, arg_0.x, -14331i, arg_0.x)), -1970f, true)), 373f, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 23u)]), Struct_3(u_input.b, Struct_2(Struct_1(vec4<i32>(arg_0.x, 1i, arg_0.x, arg_0.x)), 161f, false))).x, ~(-1i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1031f, 1065f, -291f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-336f, -584f, -633f) - vec3<f32>(-488f, -273f, 621f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1855f, 428f, 265f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2986f, -833f, 702f)))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -1605f, 533f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, 195f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1085f, 718f, 431f), vec3<f32>(-336f, -386f, 609f), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1124f, 410f, -1682f)))), vec3<f32>(1f, 1f, 1f))))));
    var var_2 = var_0.x;
    var_2 = 597i;
    var var_3 = u_input.c;
    return Struct_3(global0[_wgslsmith_index_u32(4294967295u, 23u)], Struct_2(Struct_1(-vec4<i32>(-4845i, 0i, 0i, 7069i) >> ((vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 23u)], 10540u, 0u, var_3.x) >> (vec4<u32>(global0[_wgslsmith_index_u32(15581u, 23u)], 4294967295u, global0[_wgslsmith_index_u32(20020u, 23u)], 39132u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_div_f32(895f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(max(1073f, 1634f)))), !all(vec3<bool>(false, false, false))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_4(~abs(arg_1.a), arg_1.b.a.a.x, Struct_2(Struct_1(arg_1.b.a.a), 1000f, any(!(!vec2<bool>(true, arg_1.b.c)))), func_2(func_2(min(vec2<i32>(arg_0.d.b.a.a.x, -2147483647i), arg_1.b.a.a.wz)).b.a.a.yy));
    global0 = array<u32, 23>();
    var_0 = arg_0;
    let var_1 = _wgslsmith_mod_vec4_i32(~(vec4<i32>(-1i) * -select(var_0.d.b.a.a, vec4<i32>(1i, arg_1.b.a.a.x, arg_1.b.a.a.x, -2657i), vec4<bool>(false, false, false, arg_0.c.c))), var_0.c.a.a);
    var_0 = Struct_4(u_input.a, ~reverseBits(abs(_wgslsmith_sub_i32(95408i, var_0.d.b.a.a.x))), arg_1.b, func_2(arg_1.b.a.a.yw));
    return Struct_2(func_2(max(vec2<i32>(-22426i, var_1.x) & var_1.ww, vec2<i32>(-1i) * -vec2<i32>(arg_1.b.a.a.x, var_0.c.a.a.x))).b.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2)))), all(select(select(select(vec2<bool>(arg_1.b.c, false), vec2<bool>(arg_1.b.c, arg_0.c.c), arg_0.d.b.c), select(vec2<bool>(true, var_0.c.c), vec2<bool>(true, arg_0.d.b.c), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, var_0.c.c), vec2<bool>(arg_0.c.c, true))), vec2<bool>(false, arg_1.b.c | false), select(select(vec2<bool>(false, false), vec2<bool>(var_0.d.b.c, arg_1.b.c), vec2<bool>(arg_1.b.c, true)), vec2<bool>(false, arg_1.b.c), !vec2<bool>(arg_0.c.c, false)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(sign(697f));
    var var_1 = !vec2<bool>(true, (false & (arg_2.b.c && arg_2.b.c)) & false);
    let var_2 = arg_2.b.a.a.x;
    var var_3 = arg_2.b;
    let var_4 = Struct_1(arg_2.b.a.a);
    return func_4(Struct_4(0u, -(~max(7957i, var_3.a.a.x)), Struct_2(var_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.b) - 474f), false), func_2(~firstLeadingBit(vec2<i32>(-1i, var_2)))), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.b.b)))), min(~(select(27860u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], 23u)], true) ^ 0u), u_input.d >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(arg_0.x, 23u)], arg_2.a), _wgslsmith_mod_u32(u_input.c.x, 4294967295u)) % 32u)));
}

fn func_5(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = arg_0.b.a;
    var var_1 = u_input.d;
    var var_2 = var_0.a.x;
    var var_3 = Struct_4(_wgslsmith_dot_vec3_u32(min(firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a, 23u)], 23u)])) ^ vec3<u32>(1u, arg_0.a, 32306u), abs(vec3<u32>(arg_0.a, 1u, arg_0.a))), select(~vec3<u32>(12353u, 52846u, 9353u), _wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(47048u, 23u)], u_input.c.x, 12490u), vec3<u32>(arg_0.a, 15998u, u_input.b)), arg_0.b.c)), arg_0.b.a.a.x, func_4(Struct_4(1u & abs(arg_0.a), -23150i, arg_0.b, arg_0), Struct_3(~(u_input.c.x << (arg_0.a % 32u)), arg_0.b), 1f, u_input.a), func_2(func_4(Struct_4(~u_input.d, func_2(var_0.a.zz).b.a.a.x, arg_0.b, func_2(vec2<i32>(arg_0.b.a.a.x, 38199i))), func_2(arg_0.b.a.a.yz), arg_0.b.b, select(_wgslsmith_dot_vec2_u32(vec2<u32>(26074u, 1u), u_input.c), ~114906u, false)).a.a.ww));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2568f) * -2960f));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-arg_0.b.b))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(109f, var_4)))), func_1(vec3<u32>(~4294967295u, 1u, ~4294967295u), vec3<i32>(-57526i, (i32(-1i) * -1756i) >> (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43895u, 23u)], 23u)] % 32u), -(~(-19836i))), func_2(min(-vec2<i32>(-38882i, 1i), vec2<i32>(-47809i, var_3.b)))).a.a.x, ~reverseBits(firstTrailingBit(12394u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 23>();
    let var_0 = vec2<i32>(i32(-1i) * -1i, -28576i);
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 902f, -1461f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1031f, -458f, 1011f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 441f, 684f)))))));
    let x = u_input.a;
    s_output = func_5(Struct_3(~reverseBits(global0[_wgslsmith_index_u32(u_input.b, 23u)] & 53663u), func_1(reverseBits(~vec3<u32>(0u, 4294967295u, u_input.d)), vec3<i32>(var_0.x, -25569i, 13513i) ^ -vec3<i32>(var_0.x, -2147483647i, 58563i), Struct_3(select(39238u, 4294967295u, false), Struct_2(Struct_1(vec4<i32>(-32526i, var_0.x, 28717i, var_0.x)), -1000f, true)))));
}

