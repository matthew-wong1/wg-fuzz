struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(1u, 59661u), vec3<bool>(false, false, false), vec2<u32>(48723u, 4294967295u), true, Struct_1(vec3<f32>(703f, 1378f, 125f), 46679u));

var<private> global2: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(10372i, i32(-2147483648), 53173i), vec3<i32>(0i, 6709i, 37580i), vec3<i32>(59214i, -13374i, -1i), vec3<i32>(-22356i, 9281i, 2147483647i), vec3<i32>(-9107i, 1i, 43298i), vec3<i32>(i32(-2147483648), -17824i, -35683i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(-14818i, -1i, -10337i), vec3<i32>(2147483647i, 85051i, 1i), vec3<i32>(21164i, -23530i, 22853i), vec3<i32>(-1i, 1i, -6295i), vec3<i32>(-16659i, 2147483647i, -49071i), vec3<i32>(16865i, 0i, 13851i), vec3<i32>(20077i, -1i, -1i), vec3<i32>(0i, 59457i, 11234i), vec3<i32>(0i, -4767i, -1i), vec3<i32>(0i, -6160i, i32(-2147483648)));

var<private> global3: array<Struct_2, 4>;

var<private> global4: vec4<i32> = vec4<i32>(i32(-2147483648), i32(-2147483648), 41941i, -1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    global4 = _wgslsmith_sub_vec4_i32(vec4<i32>(~global4.x, -21562i, _wgslsmith_sub_i32(3955i ^ u_input.e, min(global4.x, global4.x)), ~_wgslsmith_sub_i32(global4.x, u_input.c)), _wgslsmith_sub_vec4_i32(min(vec4<i32>(-900i, global4.x, -2147483647i, u_input.e), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.d, u_input.c), vec4<i32>(4258i, -26771i, global4.x, global4.x))), -abs(vec4<i32>(-31655i, u_input.e, 1i, 7661i)))) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(58075u, 0u, 1u, u_input.a) | firstLeadingBit(vec4<u32>(4294967295u, 1u, global1.e.b, 51253u)), (vec4<u32>(1u, 0u, u_input.a, global1.a.x) ^ vec4<u32>(arg_0.b, 53055u, arg_0.b, global1.e.b)) & ~vec4<u32>(0u, arg_0.b, 41260u, 4294967295u)) >> ((_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1650u, 0u, global1.a.x), ~vec4<u32>(arg_0.b, 0u, 0u, global1.e.b)) & ((vec4<u32>(31012u, arg_0.b, 11223u, 0u) | vec4<u32>(global1.c.x, global1.a.x, u_input.a, 1u)) | ~vec4<u32>(18919u, 46227u, 63105u, 52941u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(global1.a.x | 32040u, 4294967295u & global1.a.x, 0u) >> (vec3<u32>(arg_0.b, _wgslsmith_sub_u32(arg_0.b, 4294967295u), ~u_input.a) % vec3<u32>(32u))), select(~_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.b, 4294967295u, arg_0.b), vec3<u32>(1u, 1u, 1u)), ~(~(~vec3<u32>(1704u, arg_0.b, 0u))), global1.b)), 4u)];
    global2 = array<vec3<i32>, 17>();
    var var_1 = global2[_wgslsmith_index_u32(max(~32431u, global1.a.x) | var_0.c.x, 17u)];
    let var_2 = _wgslsmith_mult_u32(abs(4294967295u), countOneBits(_wgslsmith_mod_u32(1u, u_input.a) | 39333u));
    return ~select(97139i, ~(-global4.x), true);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> f32 {
    global4 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>((arg_2 & 47377i) ^ u_input.e, func_3(Struct_1(arg_0.e.a, u_input.a), select(global1.b.zy, global1.b.zy, false)), -2147483647i, 26812i), vec4<i32>(-3966i, 7735i, _wgslsmith_mod_i32(~1i, firstTrailingBit(-1i)), countOneBits(-18326i))), vec4<i32>(_wgslsmith_add_i32(u_input.d, -44214i), 0i >> (min(20390u, global1.c.x) % 32u), global4.x, 0i) << (~select(_wgslsmith_sub_vec4_u32(vec4<u32>(77841u, 4294967295u, 22880u, 123677u), vec4<u32>(68628u, global1.a.x, arg_0.c.x, global1.c.x)), abs(vec4<u32>(20892u, 1u, 19534u, global1.a.x)), arg_0.b.x | true) % vec4<u32>(32u)));
    let var_0 = arg_0;
    let var_1 = global1.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.e.a.x, global1.e.a.x, 650f) - vec4<f32>(634f, var_0.e.a.x, -198f, 1231f)))) * vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.e.a.x, global1.e.a.x)), -2512f, _wgslsmith_f_op_f32(global1.e.a.x + arg_0.e.a.x), _wgslsmith_f_op_f32(min(550f, global1.e.a.x)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * arg_0.e.a.x), 231f, _wgslsmith_f_op_f32(step(-242f, _wgslsmith_f_op_f32(-global1.e.a.x))), _wgslsmith_f_op_f32(-arg_0.e.a.x))));
    let var_3 = (_wgslsmith_sub_vec2_i32(global4.zw, vec2<i32>(arg_2, 2147483647i)) & firstLeadingBit(-select(global4.yx, vec2<i32>(-59960i, -13616i), vec2<bool>(var_0.d, arg_0.d)))) ^ -vec2<i32>(1i, _wgslsmith_mult_i32(max(-2147483647i, 1i), ~4650i));
    return -1000f;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(vec2<u32>(_wgslsmith_add_u32(~u_input.a, 10265u), _wgslsmith_add_u32(~global1.a.x, ~u_input.a) | ~1u), select(select(!select(vec3<bool>(true, false, true), global1.b, vec3<bool>(true, true, arg_0.b.x)), vec3<bool>(arg_0.b.x, any(vec3<bool>(false, false, false)), !arg_0.d), vec3<bool>(!arg_0.d, arg_3.x, all(vec2<bool>(false, false)))), arg_0.b, true), vec2<u32>(firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(7358u, u_input.a), arg_0.a.x, _wgslsmith_mult_u32(80788u, arg_0.a.x))), 0u), any(vec2<bool>(arg_3.x, true)) & true, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(463f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(560f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(989f)) - _wgslsmith_f_op_f32(821f - arg_2))), ~_wgslsmith_mod_u32(u_input.a, min(4294967295u, arg_0.a.x))));
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(global4.x >> (u_input.a % 32u), -18090i, abs(~select(global4.x, u_input.b.x, var_0.d)), _wgslsmith_add_i32(230i, global4.x)), abs(vec4<i32>(global4.x, global4.x, -15060i, 20175i) & firstTrailingBit(vec4<i32>(u_input.b.x, -1i, 5646i, -1064i))) ^ ~vec4<i32>(max(global4.x, global4.x), -u_input.e, -2147483647i, -1i));
    var var_2 = ~vec2<i32>((var_1.x ^ reverseBits(-2147483647i)) >> (_wgslsmith_sub_u32(~var_0.c.x, max(var_0.a.x, 0u)) % 32u), -1i);
    var_1 = max(-vec4<i32>(~_wgslsmith_div_i32(u_input.e, -52901i), _wgslsmith_mod_i32(max(-16180i, -45948i), _wgslsmith_mod_i32(-45387i, var_2.x)), var_1.x ^ var_1.x, u_input.b.x), vec4<i32>(func_3(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(909f, arg_2, -416f), arg_0.e.a), firstLeadingBit(global1.e.b)), global1.b.xz), 1i, min(5038i, global4.x), 1i));
    var var_3 = Struct_1(global1.e.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(6163u, arg_0.e.b), _wgslsmith_div_vec2_u32(var_0.a, vec2<u32>(4294967295u, global1.a.x))) << (_wgslsmith_mult_u32(max(arg_0.c.x, arg_0.c.x), 1u) % 32u), countOneBits(abs(~11681u))));
    return Struct_1(var_0.e.a, ~(57455u | countOneBits(var_3.b << (47207u % 32u))));
}

fn func_1() -> u32 {
    var var_0 = vec3<bool>(!all(select(select(vec2<bool>(global1.d, true), vec2<bool>(global1.b.x, global1.b.x), global1.d), global1.b.xx, global1.e.b > global1.a.x)), all(vec3<bool>(global1.b.x, !all(global1.b.zz), global1.b.x)), all(global1.b));
    let var_1 = global3[_wgslsmith_index_u32(global1.c.x, 4u)];
    var var_2 = func_4(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.a.x, ~29385u), 4u)], _wgslsmith_f_op_f32(func_2(Struct_2(vec2<u32>(u_input.a, 49974u) << (~global1.a % vec2<u32>(32u)), select(vec3<bool>(true, var_1.d, false), !global1.b, true), ~vec2<u32>(0u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, 73758u, u_input.a), vec3<u32>(global1.e.b, 6843u, 48438u)) >= _wgslsmith_mult_u32(1555u, u_input.a), Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.e.a), 14408u ^ global1.c.x)), true, 7575i)), _wgslsmith_f_op_f32(-var_1.e.a.x), vec2<bool>(true, any(vec4<bool>(all(vec3<bool>(true, true, true)), var_0.x, !var_1.b.x, var_0.x))));
    global4 = (-abs(firstTrailingBit(vec4<i32>(u_input.b.x, -2147483647i, global4.x, global4.x))) & vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-285i, 0i, -2147483647i, 1i), vec4<i32>(25420i, global4.x, u_input.b.x, -3810i)) & _wgslsmith_mod_i32(u_input.c, u_input.b.x), u_input.e, 2147483647i, _wgslsmith_sub_i32(global4.x, global4.x) << (~1u % 32u))) ^ (abs(abs(abs(vec4<i32>(u_input.d, -13658i, 75518i, u_input.d)))) | min(~(vec4<i32>(u_input.c, global4.x, 2183i, 13460i) & vec4<i32>(global4.x, u_input.b.x, global4.x, u_input.c)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.e, 0i, global4.x, u_input.b.x), vec4<i32>(1i, global4.x, global4.x, -88042i) >> (vec4<u32>(global1.a.x, 6954u, global1.a.x, var_2.b) % vec4<u32>(32u)), select(vec4<i32>(140i, 37796i, global4.x, global4.x), vec4<i32>(0i, 12015i, global4.x, 0i), var_0.x))));
    var var_3 = global1.e.a.x;
    return reverseBits(~global1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global3 = array<Struct_2, 4>();
    var_0 = all(global1.b.xx);
    var var_1 = global3[_wgslsmith_index_u32(8149u & ~abs(_wgslsmith_mod_u32(3593u >> (u_input.a % 32u), ~global1.e.b)), 4u)];
    var_0 = global1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_div_vec3_i32(global2[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_mod_vec3_i32(global4.ywy, vec3<i32>(global4.x, 2147483647i, global4.x))) & max(_wgslsmith_add_vec3_i32(global2[_wgslsmith_index_u32(67240u, 17u)], vec3<i32>(27082i, global4.x, 2147483647i)), countOneBits(vec3<i32>(u_input.d, -2147483647i, global4.x)))), reverseBits(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(func_1(), global1.e.b), 17u)]), 26849u);
}

