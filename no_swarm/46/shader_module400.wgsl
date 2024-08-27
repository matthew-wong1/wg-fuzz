struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec4<f32>(152f, -656f, -1462f, 469f), 47334u, vec3<i32>(-1i, i32(-2147483648), i32(-2147483648))), 11611u, Struct_1(vec4<f32>(-1042f, 194f, -278f, -1468f), 4877u, vec3<i32>(55913i, 13488i, 4044i))), Struct_2(Struct_1(vec4<f32>(1000f, 618f, 239f, -290f), 42281u, vec3<i32>(-48461i, 5659i, 1i)), 33341u, Struct_1(vec4<f32>(472f, 777f, -1266f, -1000f), 4294967295u, vec3<i32>(0i, 0i, 1i))), Struct_2(Struct_1(vec4<f32>(158f, -1252f, 1807f, 750f), 1u, vec3<i32>(2147483647i, -54283i, 12620i)), 1u, Struct_1(vec4<f32>(-707f, -562f, -947f, 661f), 1397u, vec3<i32>(-1i, 0i, 31381i))));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    var var_0 = max(u_input.a.x, _wgslsmith_clamp_u32(1u, 4294967295u, reverseBits(1u)));
    let var_1 = vec2<u32>(firstLeadingBit(select(14622u, ~_wgslsmith_clamp_u32(4294967295u, arg_0.b, 4294967295u), select(select(true, false, false), any(vec2<bool>(false, false)), all(vec4<bool>(false, true, true, false))))), ~(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 22895u))) >> (_wgslsmith_clamp_u32(1u, min(firstLeadingBit(arg_0.c.b), ~arg_0.a.b), arg_0.c.b) % 32u));
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(abs(~vec3<u32>(12897u, u_input.a.x, 0u))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0.a.b, 0u, 24951u), ~vec3<u32>(u_input.a.x, u_input.a.x, var_1.x), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a.x, var_1.x), vec3<u32>(var_1.x, 18010u, 1u))), ~(~vec3<u32>(20153u, var_1.x, 1u)))), 3u)], _wgslsmith_f_op_f32(arg_0.c.a.x + arg_0.a.a.x));
    let var_3 = select(vec4<bool>(true, _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_0.a.b, var_1.x, var_2.a.b), ~var_2.a.b) != ~(var_2.a.a.b ^ 28173u), all(vec2<bool>(true, true)), true), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), 0i != var_2.a.a.c.x)), select(true, _wgslsmith_mult_u32(var_2.a.b, arg_0.c.b) < abs(var_2.a.c.b), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(498f - var_2.a.c.a.x)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.a.a.a.x)), -1593f), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)))), vec4<bool>(any(vec2<bool>(true, true)) || true, true, any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true)), false));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.a.c.a.x, 791f, 552f, -1000f), var_2.a.a.a))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-564f, var_2.b, -1081f, arg_0.c.a.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.a.a.x, var_2.b, var_2.a.c.a.x, arg_0.a.a.x), vec4<f32>(var_2.a.a.a.x, var_2.a.a.a.x, 731f, var_2.a.a.a.x))), select(true, var_3.x, false))))))), ~42604u, firstTrailingBit(-_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.c.c, var_2.a.a.c), countOneBits(vec3<i32>(var_2.a.a.c.x, 16494i, var_2.a.a.c.x)))));
    return -656f;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> u32 {
    global0 = array<Struct_2, 3>();
    let var_0 = ~(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a.b, u_input.a.x), vec2<u32>(95500u, u_input.a.x) ^ u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, 0u, 31174u, arg_0.a.b), vec4<u32>(arg_2.x, arg_0.b, 0u, u_input.a.x))) >> (~arg_2 % vec2<u32>(32u)));
    var var_1 = Struct_2(arg_0.a, var_0.x, arg_0.c);
    let var_2 = arg_0.a;
    global0 = array<Struct_2, 3>();
    return abs(var_2.b) ^ ~(~arg_0.a.b);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> vec4<bool> {
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    let var_0 = Struct_3(Struct_2(arg_2.a.c, _wgslsmith_mult_u32(~(arg_0.a.b | u_input.a.x), _wgslsmith_sub_u32(arg_1, 6566u) & abs(4294967295u)), Struct_1(vec4<f32>(-2228f, -162f, _wgslsmith_f_op_f32(sign(-592f)), 610f), ~44268u, min(vec3<i32>(arg_0.a.c.x, -1i, arg_2.a.a.c.x), vec3<i32>(arg_0.c.c.x, arg_0.c.c.x, arg_0.a.c.x)))), -arg_2.b >> (vec4<u32>(min(~0u, arg_1), func_4(Struct_2(Struct_1(arg_2.a.c.a, 40600u, vec3<i32>(12368i, arg_2.b.x, -1i)), arg_0.c.b, Struct_1(arg_0.c.a, 0u, vec3<i32>(44470i, arg_0.a.c.x, -1i))), _wgslsmith_f_op_f32(max(arg_2.a.c.a.x, -596f)), u_input.a ^ vec2<u32>(19349u, arg_2.a.c.b), _wgslsmith_f_op_f32(func_3(Struct_2(arg_2.a.a, u_input.a.x, arg_0.a), arg_2.b.x, vec2<i32>(2147483647i, arg_2.a.c.c.x)))), ~func_4(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 1891f, u_input.a, arg_0.c.a.x), ~(~arg_1)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a.b, arg_2.a.a.b, ~reverseBits(5734u), u_input.a.x) >> (~(~(~vec4<u32>(u_input.a.x, 7721u, 1u, arg_1))) % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(arg_1, select(arg_0.a.b, arg_0.c.b, true), ~var_0.a.b, 39982u ^ arg_0.a.b)));
    global0 = array<Struct_2, 3>();
    return vec4<bool>(false, false, !(_wgslsmith_f_op_f32(-arg_2.a.c.a.x) <= arg_0.c.a.x), true);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32, arg_3: vec4<bool>) -> u32 {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_f_op_f32(step(1549f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_div_f32(1140f, 407f))))));
    var_0 = Struct_4(Struct_2(arg_0.c, ~23148u, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-531f, arg_1.x, var_0.b, 260f)) - arg_0.a.a), func_4(var_0.a, 208f, ~vec2<u32>(var_0.a.c.b, 0u), 1386f), reverseBits(~var_0.a.a.c))), var_0.a.c.a.x);
    let var_1 = Struct_3(Struct_2(var_0.a.c, 0u, var_0.a.c), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.c.c.x, -1i, -321i, 10192i) >> (vec4<u32>(24207u, u_input.a.x, arg_0.a.b, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.c.x, -2147483647i, var_0.a.c.c.x, var_0.a.a.c.x), vec4<i32>(-1i, 2147483647i, arg_2, -39952i), vec4<i32>(1i, 2147483647i, 1i, 60042i))) << (vec4<u32>(min(~4294967295u, arg_0.a.b), firstLeadingBit(var_0.a.b >> (29099u % 32u)), arg_0.a.b, firstTrailingBit(u_input.a.x)) % vec4<u32>(32u)));
    var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -361f, -893f, -222f)), ~(~var_0.a.b), vec3<i32>(var_0.a.a.c.x, arg_2, -13566i) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a.x, arg_0.a.b), vec3<u32>(u_input.a.x, var_1.a.c.b, 4294967295u)) % vec3<u32>(32u))), u_input.a.x, var_0.a.a), 1713f);
    global0 = array<Struct_2, 3>();
    return arg_0.b;
}

fn func_1() -> Struct_5 {
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(544f, -256f, -307f, -726f))))), reverseBits(u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-30159i, 8514i, 7713i), _wgslsmith_clamp_vec3_i32(vec3<i32>(8554i, 34229i, -18155i), vec3<i32>(1370i, -12614i, -29318i), vec3<i32>(-10602i, 1i, 1i)))), firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) << (func_5(Struct_2(Struct_1(vec4<f32>(1616f, 731f, -1357f, 695f), u_input.a.x, vec3<i32>(1i, 4944i, -1i)), 4294967295u, Struct_1(vec4<f32>(717f, 115f, 193f, 1282f), 3040u, vec3<i32>(1i, -26196i, -2147483647i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(399f, 713f, 833f)), 22364i, func_2(Struct_2(Struct_1(vec4<f32>(1000f, 1368f, 662f, -1398f), u_input.a.x, vec3<i32>(-21087i, 2147483647i, 1i)), 11758u, Struct_1(vec4<f32>(-930f, 925f, 151f, 173f), 18612u, vec3<i32>(1i, -11728i, -2147483647i))), 10153u, Struct_3(Struct_2(Struct_1(vec4<f32>(-508f, 2233f, 835f, -850f), 76791u, vec3<i32>(2147483647i, 19170i, -21403i)), u_input.a.x, Struct_1(vec4<f32>(1719f, 253f, -804f, 338f), u_input.a.x, vec3<i32>(-1i, 1i, 38624i))), vec4<i32>(1i, -2147483647i, 2147483647i, 35090i)))) % 32u), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1518f, -434f, 1025f, 815f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(851f, -954f, -535f, 1911f)))), firstTrailingBit(4294967295u), abs(vec3<i32>(1i, 1i, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(257f, 1568f, -408f, 805f), u_input.a.x, vec3<i32>(-2147483647i, 1771i, -2147483647i)), 20116u, Struct_1(vec4<f32>(-1000f, -856f, -786f, -627f), 1u, vec3<i32>(-7575i, 7012i, -1i))), _wgslsmith_add_i32(~0i, -46211i), select(vec2<i32>(-1i, 21346i), select(vec2<i32>(-1i, -1i), vec2<i32>(25577i, 45729i), vec2<bool>(false, true)), vec2<bool>(false, false))))));
    var var_1 = _wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(var_0.a.c.c, vec3<i32>(-1i) * -var_0.a.c.c), abs(vec3<i32>(~0i, 1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(25290i, 23985i), -33798i))));
    var var_2 = Struct_4(var_0.a, -346f);
    return Struct_5(Struct_4(Struct_2(Struct_1(var_0.a.a.a, max(1u, var_2.a.c.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(-18590i, 2147483647i, -2147483647i), var_0.a.c.c, vec3<i32>(2147483647i, 1i, 15587i))), ~max(var_0.a.a.b, u_input.a.x), var_0.a.c), _wgslsmith_f_op_f32(f32(-1f) * -118f)), func_2(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], _wgslsmith_dot_vec3_u32(firstLeadingBit(firstTrailingBit(vec3<u32>(36129u, 1u, var_2.a.c.b))), vec3<u32>(4294967295u, reverseBits(1u), 30879u)), Struct_3(var_0.a, -max(vec4<i32>(1i, -97i, -1i, 55559i), vec4<i32>(-30203i, var_2.a.a.c.x, -2147483647i, 0i)))).x, Struct_1(var_2.a.c.a, func_5(Struct_2(var_0.a.a, _wgslsmith_add_u32(31094u, var_2.a.c.b), Struct_1(var_0.a.c.a, 51526u, var_2.a.c.c)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1197f, -225f, var_2.b) * vec3<f32>(1000f, -555f, -1513f)), var_2.a.c.a.wyy)), select(0i, -43847i, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false)), -vec3<i32>(var_0.a.c.c.x, 11855i, var_0.a.a.c.x) & _wgslsmith_mod_vec3_i32(var_2.a.a.c >> (vec3<u32>(109843u, 0u, u_input.a.x) % vec3<u32>(32u)), ~var_2.a.a.c)), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_mult_i32(20410i, _wgslsmith_sub_i32(57211i, 1i)));
    var var_1 = func_1();
    var var_2 = Struct_2(func_1().a.a.a, var_1.a.a.b, func_1().c);
    global0 = array<Struct_2, 3>();
    let var_3 = 1081f;
    var var_4 = var_2.c.c;
    var_4 = vec3<i32>(min(24770i >> (abs(func_1().c.b) % 32u), _wgslsmith_mult_i32(-1i, -var_4.x)), 17589i, _wgslsmith_dot_vec3_i32(-(~(var_1.c.c ^ vec3<i32>(var_0, var_0, var_4.x))), countOneBits(~var_2.c.c)));
    let var_5 = Struct_3(global0[_wgslsmith_index_u32(var_2.c.b, 3u)], abs(vec4<i32>(_wgslsmith_sub_i32(var_4.x, ~var_2.c.c.x), 0i, min(-60728i, 2147483647i & var_0), 0i)));
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(6659i, -19443i);
}

