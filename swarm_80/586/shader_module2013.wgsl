struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = false;
    let var_1 = arg_2;
    var var_2 = countOneBits(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(98079u, 58278u, 52625u), 1u)) | _wgslsmith_add_u32(countOneBits(7280u | _wgslsmith_dot_vec3_u32(arg_0.b, arg_0.b)), u_input.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(arg_0.d + arg_0.d))))));
    let var_4 = Struct_5(1378f, arg_3.c, Struct_4(1u, ~_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.c.d, arg_0.c.d, arg_3.d), vec3<i32>(0i, 1i, global0.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, global0.x, arg_3.d), vec3<i32>(global0.x, arg_0.a.d, -38887i), vec3<i32>(2147483647i, 15148i, global0.x))), Struct_2(arg_0.a.a, Struct_1(arg_0.c.b.a, arg_3.a.a.x, false, ~arg_3.b.a.x), Struct_1(min(arg_0.c.c.a, vec2<u32>(4294967295u, 1u)), _wgslsmith_sub_u32(arg_1.d, arg_1.b), arg_0.a.b.c == true, ~1u), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(16987i, arg_3.d, 0i, u_input.b)), ~vec4<i32>(arg_3.d, 25003i, 0i, -2147483647i)))));
    return ~countOneBits(-(var_4.c.b & var_4.c.b));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_4) -> u32 {
    let var_0 = !select(!select(!vec4<bool>(true, arg_0.x, false, true), vec4<bool>(arg_2.c.b.c, true, arg_0.x, arg_0.x), arg_2.c.a.c), !vec4<bool>(global0.x <= global0.x, any(vec4<bool>(true, arg_2.c.b.c, arg_2.c.a.c, true)), arg_0.x, true), !(!(!vec4<bool>(false, arg_0.x, arg_0.x, false))));
    let var_1 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, 1u), arg_2.c.c.a), arg_2.a), ~(~arg_2.c.a.a)), _wgslsmith_sub_u32(arg_2.c.c.a.x, arg_2.c.c.b) << (~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a, 1u)), ~vec3<u32>(arg_2.c.c.b, u_input.a, 15620u)) % 32u), all(select(select(!var_0, select(var_0, var_0, var_0), var_0), select(!var_0, select(var_0, vec4<bool>(false, var_0.x, false, false), var_0), select(vec4<bool>(var_0.x, var_0.x, arg_0.x, arg_2.c.a.c), vec4<bool>(var_0.x, false, false, true), var_0)), !any(vec3<bool>(false, var_0.x, var_0.x)))), (var_1 << (1u % 32u)) ^ var_1);
    global0 = vec3<i32>(13832i, 24452i, arg_2.b.x);
    global0 = _wgslsmith_mult_vec3_i32(-arg_2.b, vec3<i32>(-_wgslsmith_add_i32(abs(global0.x), 2147483647i), -firstLeadingBit(17485i) & u_input.b, -(u_input.b | u_input.b) << (~_wgslsmith_dot_vec2_u32(var_2.a, arg_2.c.b.a) % 32u)));
    return var_2.b;
}

fn func_2(arg_0: f32) -> vec3<i32> {
    let var_0 = -2147483647i;
    var var_1 = Struct_2(Struct_1(~vec2<u32>(u_input.a, 0u) << (vec2<u32>(~36791u, u_input.a << (u_input.a % 32u)) % vec2<u32>(32u)), func_4(vec2<bool>(false, all(vec4<bool>(false, true, true, true))), max(i32(-1i) * -2147483647i, u_input.b), Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(1u, 1u, 3798u)), func_3(Struct_3(Struct_2(Struct_1(vec2<u32>(69147u, u_input.a), 105059u, false, u_input.a), Struct_1(vec2<u32>(1u, 36991u), u_input.a, false, 5468u), Struct_1(vec2<u32>(1u, u_input.a), 42721u, true, u_input.a), -29689i), vec3<u32>(83514u, u_input.a, u_input.a), Struct_2(Struct_1(vec2<u32>(29569u, u_input.a), u_input.a, true, u_input.a), Struct_1(vec2<u32>(0u, u_input.a), u_input.a, false, 17378u), Struct_1(vec2<u32>(17721u, u_input.a), 4294967295u, false, u_input.a), u_input.b), arg_0), Struct_1(vec2<u32>(u_input.a, u_input.a), u_input.a, false, 64328u), vec2<bool>(true, true), Struct_2(Struct_1(vec2<u32>(11243u, 24172u), u_input.a, true, 6319u), Struct_1(vec2<u32>(0u, u_input.a), u_input.a, false, 0u), Struct_1(vec2<u32>(u_input.a, u_input.a), u_input.a, true, 38316u), var_0)), Struct_2(Struct_1(vec2<u32>(u_input.a, 0u), u_input.a, true, 44455u), Struct_1(vec2<u32>(u_input.a, u_input.a), u_input.a, false, u_input.a), Struct_1(vec2<u32>(0u, 1u), 57922u, false, 0u), -2147483647i))), false, ~1u), Struct_1(~(vec2<u32>(4294967295u, u_input.a) & ~vec2<u32>(4294967295u, u_input.a)), 12970u, true, 1u), Struct_1(vec2<u32>(u_input.a, (u_input.a | u_input.a) << (4294967295u % 32u)), u_input.a, any(vec2<bool>(true, arg_0 != -788f)), reverseBits(0u)), var_0);
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(var_0, (~global0.x & (global0.x >> (10210u % 32u))) >> (u_input.a % 32u), ~(~_wgslsmith_div_i32(u_input.b, -12748i))), vec3<i32>(var_0, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(62247i, global0.x), vec2<i32>(28529i, var_0)), -47730i), func_3(Struct_3(Struct_2(Struct_1(var_1.c.a, 41186u, var_1.a.c, var_1.a.b), Struct_1(var_1.c.a, 16108u, var_1.a.c, 0u), Struct_1(var_1.a.a, u_input.a, true, var_1.b.a.x), u_input.b), vec3<u32>(var_1.c.d, var_1.c.a.x, 1u), Struct_2(Struct_1(vec2<u32>(24626u, var_1.c.a.x), var_1.b.b, var_1.c.c, 43908u), Struct_1(var_1.a.a, 53625u, var_1.a.c, 6683u), var_1.b, -2147483647i), 1980f), Struct_1(vec2<u32>(u_input.a, u_input.a), var_1.b.d, var_1.c.c, var_1.a.d), select(vec2<bool>(var_1.c.c, false), vec2<bool>(true, var_1.c.c), vec2<bool>(true, var_1.a.c)), Struct_2(Struct_1(var_1.c.a, var_1.b.a.x, var_1.a.c, 0u), var_1.c, Struct_1(vec2<u32>(var_1.b.a.x, 1u), u_input.a, var_1.c.c, 73818u), 2147483647i)).x) >> (~firstLeadingBit(reverseBits(vec3<u32>(1u, 0u, u_input.a))) % vec3<u32>(32u)));
    let var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 0u), abs(var_1.c.a)), abs(4294967295u), all(select(vec3<bool>(var_1.b.c, true, false), vec3<bool>(var_1.b.c, var_1.c.c, true), var_1.c.c)), 0u), var_1.a, Struct_1(var_1.a.a, _wgslsmith_mod_u32(~7657u, ~var_1.c.d), _wgslsmith_f_op_f32(-1073f + -1039f) < arg_0, abs(~59733u)), 1i), firstTrailingBit(abs(vec3<u32>(0u, 4294967295u, var_1.a.b))), Struct_2(var_1.b, var_1.a, var_1.b, _wgslsmith_div_i32(firstTrailingBit(~0i), var_2.x)), arg_0);
    var_1 = var_3.a;
    return -var_2;
}

fn func_1() -> vec3<bool> {
    global0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -2361f));
    global0 = vec3<i32>(i32(-1i) * -select(func_3(Struct_3(Struct_2(Struct_1(vec2<u32>(61808u, u_input.a), 27682u, false, 51413u), Struct_1(vec2<u32>(1122u, u_input.a), u_input.a, true, 4294967295u), Struct_1(vec2<u32>(4294967295u, 42356u), 56427u, true, u_input.a), global0.x), vec3<u32>(u_input.a, u_input.a, 0u), Struct_2(Struct_1(vec2<u32>(4818u, 2165u), 50578u, false, u_input.a), Struct_1(vec2<u32>(u_input.a, 17156u), 4294967295u, true, u_input.a), Struct_1(vec2<u32>(42669u, 9940u), 46034u, true, 4294967295u), u_input.b), 770f), Struct_1(vec2<u32>(u_input.a, 40616u), u_input.a, false, 0u), vec2<bool>(true, true), Struct_2(Struct_1(vec2<u32>(u_input.a, 7510u), 70142u, false, u_input.a), Struct_1(vec2<u32>(u_input.a, u_input.a), 37374u, false, 20378u), Struct_1(vec2<u32>(34415u, 0u), u_input.a, false, u_input.a), global0.x)).x, global0.x, false), u_input.b << (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(496u, 4294967295u) & vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 20024u) & vec2<u32>(65543u, 1u)), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(8472u, 1u), vec2<u32>(u_input.a, u_input.a)))) % 32u), global0.x);
    var var_0 = global0.x;
    var var_1 = true;
    var var_2 = abs(firstTrailingBit(select(vec4<u32>(abs(29707u), 70610u, 25595u & u_input.a, 74124u | u_input.a), vec4<u32>(u_input.a, u_input.a, _wgslsmith_sub_u32(u_input.a, 1u), _wgslsmith_div_u32(u_input.a, u_input.a)), vec4<bool>(false, true, false, any(vec4<bool>(false, true, true, true))))));
    return vec3<bool>(true, true, true);
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: i32) -> bool {
    let var_0 = !(!vec2<bool>(false, ~u_input.a < ~4294967295u));
    let var_1 = Struct_2(Struct_1(vec2<u32>(u_input.a, 0u) << (select(vec2<u32>(u_input.a, 0u) & vec2<u32>(0u, u_input.a), vec2<u32>(61579u, 27827u), select(vec2<bool>(false, true), vec2<bool>(false, true), var_0)) % vec2<u32>(32u)), ~(u_input.a << (abs(u_input.a) % 32u)), all(!select(vec4<bool>(true, arg_1.x, var_0.x, var_0.x), vec4<bool>(false, arg_1.x, var_0.x, true), arg_1.x)), ~(~u_input.a)), Struct_1(select(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(26007u, u_input.a, u_input.a), vec3<u32>(1u, 30206u, 4294967295u))), !all(vec3<bool>(arg_1.x, true, var_0.x))), 1u, !(any(vec4<bool>(false, arg_1.x, true, arg_1.x)) && true), select(_wgslsmith_div_u32(37142u, 8576u), 4294967295u, func_1().x) ^ ~956u), Struct_1(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(72839u, 39347u), ~vec2<u32>(u_input.a, u_input.a))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a) | vec2<u32>(0u, 4294967295u)), vec2<u32>(~0u, 0u)), any(vec3<bool>(var_0.x, false, true)), _wgslsmith_div_u32(max(9169u, 26593u) & u_input.a, ~0u)), -arg_2);
    var var_2 = _wgslsmith_f_op_f32(floor(arg_0));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0, arg_0) * vec3<f32>(-112f, arg_0, 195f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(941f, _wgslsmith_f_op_f32(-1136f + arg_0), 1000f)))))));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-223f * var_3.x), var_3.x, _wgslsmith_f_op_f32(max(-1000f, 585f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 596f, var_3.x)) * vec3<f32>(arg_0, arg_0, var_3.x)), var_1.c.c)), select(var_1.b.d <= 20026u, (var_1.d >= u_input.b) && true, ~47241i == _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(33020i, -1i, -1i))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-1026f, select(!func_1(), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(true, true, true)), 7078i);
    global0 = vec3<i32>(1i, 5753i, func_3(Struct_3(Struct_2(Struct_1(vec2<u32>(1u, u_input.a), 4294967295u, false, 44635u), Struct_1(vec2<u32>(0u, 35803u), u_input.a, true, 4294967295u), Struct_1(vec2<u32>(0u, 13404u), u_input.a, true, 0u), _wgslsmith_clamp_i32(2147483647i, u_input.b, u_input.b)), ~vec3<u32>(u_input.a, 9678u, u_input.a), Struct_2(Struct_1(vec2<u32>(u_input.a, u_input.a), 57080u, false, u_input.a), Struct_1(vec2<u32>(28022u, u_input.a), u_input.a, false, 4294967295u), Struct_1(vec2<u32>(u_input.a, u_input.a), u_input.a, true, 4294967295u), ~(-27772i)), _wgslsmith_f_op_f32(1880f + _wgslsmith_f_op_f32(1000f * 511f))), Struct_1(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 62399u), vec2<u32>(0u, 22713u), vec2<u32>(47674u, u_input.a))), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), false, u_input.a), func_1().zy, Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 62972u), vec2<u32>(u_input.a, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 10234u, 28284u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 5861u)), true, 1u), Struct_1(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), firstLeadingBit(0u), true, u_input.a), Struct_1(vec2<u32>(67821u, u_input.a), u_input.a, u_input.b > global0.x, ~u_input.a), _wgslsmith_div_i32(firstLeadingBit(global0.x), -52280i))).x);
    let var_1 = ~(~(~((vec3<u32>(0u, 0u, 63366u) & vec3<u32>(28317u, 55677u, u_input.a)) >> (~vec3<u32>(u_input.a, 0u, 43530u) % vec3<u32>(32u)))));
    var_0 = !(!(!(true & (1u == u_input.a))));
    var_0 = true;
    var var_2 = -(~(~(-vec3<i32>(global0.x, -1i, 0i))) | vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.b, -1i, global0.x), vec4<i32>(u_input.b, 1i, global0.x, global0.x)), _wgslsmith_sub_i32(global0.x, u_input.b), _wgslsmith_div_i32(global0.x, 1i)));
    var var_3 = !vec2<bool>(all(vec2<bool>(false, true)), !all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_4 = ~(~u_input.a) | _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, ~0u, ~var_1.x, var_1.x ^ 6791u)), vec4<u32>(min(u_input.a, 27536u), 1u, u_input.a | 4294967295u, firstTrailingBit(4294967295u)) & vec4<u32>(62814u, 120451u, func_4(vec2<bool>(true, var_3.x), var_2.x, Struct_4(u_input.a, vec3<i32>(var_2.x, -5159i, -41710i), Struct_2(Struct_1(var_1.zx, u_input.a, true, 4294967295u), Struct_1(vec2<u32>(var_1.x, 22067u), 4192u, var_3.x, 1u), Struct_1(var_1.xz, 57534u, false, var_1.x), 13180i))), var_1.x));
    var_3 = select(!(!vec2<bool>(func_1().x, true)), !(!(!vec2<bool>(var_3.x, var_3.x))), vec2<bool>(-268f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(626f * 848f))), !all(func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(~u_input.a, var_1.x, 86657u), var_1, abs(abs(vec3<u32>(var_1.x, ~u_input.a, u_input.a))), var_1);
}

