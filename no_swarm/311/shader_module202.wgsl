struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: array<u32, 10>;

var<private> global2: vec3<i32> = vec3<i32>(1i, -1i, 1947i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> u32 {
    global2 = vec3<i32>(u_input.a, 0i, 11304i);
    var var_0 = Struct_1(~(-_wgslsmith_add_i32(global2.x, 1i)));
    var var_1 = Struct_1(var_0.a);
    var_0 = Struct_1(global2.x << (~0u % 32u));
    var_1 = Struct_1(_wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(u_input.a, -1i) & var_1.a) & 2147483647i);
    return abs(4294967295u);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global2 = vec3<i32>(u_input.c, u_input.a, _wgslsmith_sub_i32(35676i, -16185i));
    var var_0 = Struct_2(Struct_1(firstLeadingBit(_wgslsmith_mod_i32(global2.x, -28592i)) & _wgslsmith_add_i32(countOneBits(0i), 1i)), Struct_1(_wgslsmith_dot_vec3_i32((vec3<i32>(global2.x, -1i, global2.x) | vec3<i32>(2147483647i, 50534i, u_input.c)) << (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44929u, 10u)], 10u)], 74001u, 1u) % vec3<u32>(32u)), vec3<i32>(u_input.a, 1i, min(-859i, -86132i)))), max(abs(abs(vec3<i32>(u_input.c, 21051i, -1i))), -(vec3<i32>(2147483647i, -50400i, 41269i) ^ vec3<i32>(-29521i, 0i, global2.x)) >> (vec3<u32>(~global0[_wgslsmith_index_u32(10451u, 32u)], ~1u, ~51090u) % vec3<u32>(32u))), Struct_1(u_input.e | u_input.a), Struct_1(-(~(-11897i))));
    global1 = array<u32, 10>();
    var var_1 = var_0.e;
    var var_2 = !vec4<bool>(!arg_0.x, !arg_0.x, false, func_3() < min(u_input.b.x, 74524u));
    return Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(global2.x, var_1.a, var_0.d.a, u_input.e), vec4<i32>(global2.x, 10643i, 1i, var_0.a.a)), max(vec4<i32>(var_1.a, u_input.e, 0i, var_0.a.a) ^ vec4<i32>(0i, -2147483647i, var_1.a, global2.x), vec4<i32>(24416i, -22328i, -52205i, var_0.b.a))), _wgslsmith_mod_i32(countOneBits(0i), ~(-4976i))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_2(func_2(select(vec2<bool>(true, false), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), true)), Struct_1(u_input.a), vec3<i32>(1i, global2.x, 2147483647i), func_2(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), true)), func_2(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(~var_0.b.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.a, -58214i, u_input.c), var_0.c)), ~func_2(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))).a), _wgslsmith_mod_i32(var_0.c.x, ~241i) >> (firstTrailingBit(~4294967295u) % 32u), -u_input.c, u_input.c);
    let var_2 = 1f;
    var var_3 = all(vec2<bool>(any(vec4<bool>(true, true, true, true)), true));
    let var_4 = var_0.a;
    return var_4;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    global2 = _wgslsmith_sub_vec3_i32(arg_0.c, arg_0.c);
    let var_0 = ~_wgslsmith_mod_vec3_i32(abs(_wgslsmith_add_vec3_i32(arg_0.c, _wgslsmith_add_vec3_i32(vec3<i32>(0i, arg_1.a, -1i), vec3<i32>(-9732i, 30616i, -40739i)))), abs(arg_0.c));
    global0 = array<u32, 32>();
    var var_1 = min(select(_wgslsmith_mod_vec2_i32(global2.zz, vec2<i32>(-13366i, 0i)), vec2<i32>(-1i) * -(vec2<i32>(u_input.c, -2147483647i) << (vec2<u32>(global1[_wgslsmith_index_u32(0u, 10u)], u_input.d) % vec2<u32>(32u))), vec2<bool>(!(!arg_2), true)), ~(vec2<i32>(-1i) * -var_0.xz));
    var var_2 = var_1.x;
    return vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, 666f, arg_2)), 292f)) + -298f), _wgslsmith_div_f32(-1003f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(787f, -706f)) + -971f)))), _wgslsmith_f_op_f32(max(-1523f, _wgslsmith_f_op_f32(min(910f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(924f + -816f)))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> Struct_2 {
    var var_0 = !select(vec4<bool>(1i <= (arg_3 << (arg_0.x % 32u)), false, select(false, true, false), _wgslsmith_f_op_f32(-arg_2.x) < _wgslsmith_f_op_f32(-arg_2.x)), select(vec4<bool>(true, true, false, all(vec4<bool>(false, false, true, true))), vec4<bool>(global1[_wgslsmith_index_u32(0u, 10u)] <= 1u, true, true, true), all(vec3<bool>(true, true, false))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), -359f < arg_2.x));
    global2 = _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a, global2.x, -(~global2.x & -2147483647i)), ~vec3<i32>(-3231i, (2147483647i << (0u % 32u)) >> ((global1[_wgslsmith_index_u32(1470u, 10u)] >> (u_input.b.x % 32u)) % 32u), -1i));
    global1 = array<u32, 10>();
    var var_1 = _wgslsmith_div_i32(arg_3, 86i);
    global1 = array<u32, 10>();
    return Struct_2(arg_1, Struct_1(_wgslsmith_sub_i32(-global2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2.x, arg_3, global2.x), vec4<i32>(2147483647i, 55489i, arg_3, -25947i)) | -global2.x)), -reverseBits(vec3<i32>(-u_input.e, u_input.e, -arg_3)), func_2(select(select(vec2<bool>(true, false), var_0.ww, var_0.xz), vec2<bool>(any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), var_0.x), vec2<bool>(false, arg_3 > -1i))), func_2(var_0.xy));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = all(vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)))), !(_wgslsmith_mult_u32(u_input.b.x, u_input.d) < 27206u), !(all(vec3<bool>(true, false, true)) | any(vec4<bool>(false, true, true, true)))));
    global0 = array<u32, 32>();
    var var_1 = 229f;
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    return func_2(!select(vec2<bool>(false, all(vec4<bool>(var_0, var_0, var_0, var_0))), !select(vec2<bool>(true, var_0), vec2<bool>(true, true), true), _wgslsmith_add_i32(-4319i, u_input.c) > arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(vec2<u32>(~(1u >> (0u % 32u)), u_input.b.x), Struct_1(abs(u_input.a)), _wgslsmith_f_op_vec2_f32(func_4(Struct_2(func_1(4294967295u), Struct_1(-2147483647i), reverseBits(vec3<i32>(global2.x, u_input.a, 2836i)), Struct_1(global2.x), func_1(u_input.d)), func_1(u_input.d), true)), -(~u_input.a) ^ -global2.x), func_2(vec2<bool>(true, true)));
    global0 = array<u32, 32>();
    global2 = firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(u_input.c, -2147483647i), u_input.c | -u_input.e, -2147483647i) & ~(~_wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, u_input.c, u_input.a), vec3<i32>(0i, var_0.a, var_0.a))));
    global0 = array<u32, 32>();
    var var_1 = Struct_2(func_6(func_5(_wgslsmith_div_vec2_u32(vec2<u32>(26884u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)]), vec2<u32>(1u, 27185u)), func_2(vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1419f, 303f)))), func_6(func_5(vec2<u32>(u_input.d, 6196u), var_0, vec2<f32>(-491f, -2707f), u_input.c), var_0).a), func_2(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_1(~(-86i)), vec3<i32>(~global2.x, ~var_0.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-66432i, 1i), _wgslsmith_clamp_i32(0i, func_5(vec2<u32>(0u, global1[_wgslsmith_index_u32(u_input.b.x, 10u)]), var_0, vec2<f32>(-613f, 986f), u_input.e).b.a, global2.x))), var_0, func_1(0u));
    let var_2 = func_5(u_input.b.yz, func_2(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(554f, -526f)), 1f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(var_0, Struct_1(-6778i), vec3<i32>(-49766i, u_input.c, 26704i), Struct_1(var_1.c.x), Struct_1(0i)), Struct_1(u_input.e), false)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1005f, 276f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-502f, 153f), vec2<f32>(909f, 104f), false))))), func_5(reverseBits(~(vec2<u32>(94442u, 24647u) | vec2<u32>(1u, u_input.d))), func_2(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), false)), vec2<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(-1239f, -1060f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(var_1.b, var_0, vec3<i32>(global2.x, -1i, u_input.e), Struct_1(var_0.a), var_0), var_0, false)).x, -1108f, any(vec2<bool>(true, true))))), reverseBits(var_1.e.a)).b.a).b;
    var var_3 = ~(~abs(-vec4<i32>(var_1.b.a, var_0.a, 37499i, -33095i) & -vec4<i32>(-1i, var_2.a, var_1.c.x, global2.x)));
    let var_4 = true;
    global1 = array<u32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_sub_vec3_i32(select(vec3<i32>(-2504i, var_2.a, global2.x), var_3.wzx, false), ~var_3.zzx)), ~(~min(vec4<i32>(-1693i, var_0.a, -1i, -2147483647i), ~vec4<i32>(var_1.a.a, 68422i, var_0.a, global2.x))), select(vec2<i32>(-37614i, -2147483647i), -(~vec2<i32>(-1i, u_input.a)), !var_4), vec4<f32>(-386f, -448f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-271f, -1236f))))), 1u >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, 1u, 1u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4532u, 10u)], 10u)], 10u)]), 34417u) % 32u));
}

