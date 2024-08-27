struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 29279u;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec4<i32>(-34632i, -32953i, 18694i, 46003i)), Struct_2(vec4<i32>(2147483647i, 1i, i32(-2147483648), 12584i)), Struct_2(vec4<i32>(-10322i, 0i, 54976i, 0i)), Struct_2(vec4<i32>(27905i, 23724i, -20240i, -15572i)), Struct_2(vec4<i32>(11143i, -8409i, 1i, -29396i)), Struct_2(vec4<i32>(-14529i, i32(-2147483648), 1i, 0i)), Struct_2(vec4<i32>(0i, 2147483647i, 34717i, -39937i)), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 1826i, i32(-2147483648))), Struct_2(vec4<i32>(-5238i, 0i, 0i, 432i)), Struct_2(vec4<i32>(0i, 16421i, i32(-2147483648), 1i)), Struct_2(vec4<i32>(i32(-2147483648), -2044i, 8307i, -7513i)), Struct_2(vec4<i32>(i32(-2147483648), 1i, 53219i, 30599i)), Struct_2(vec4<i32>(-11603i, -20753i, 22646i, 1541i)), Struct_2(vec4<i32>(0i, i32(-2147483648), -42085i, 24306i)), Struct_2(vec4<i32>(0i, -1i, 3992i, 14726i)), Struct_2(vec4<i32>(1i, 2330i, 35111i, 1443i)));

var<private> global2: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global1 = array<Struct_2, 16>();
    global0 = firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 78729u, u_input.b, 0u) << (_wgslsmith_div_vec4_u32(vec4<u32>(11101u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u)), vec4<u32>(~1u, 9656u, u_input.b, 51897u ^ u_input.b)));
    var var_0 = vec4<bool>(true, true, !(true || (u_input.a < -38394i)) == all(vec2<bool>(any(vec4<bool>(true, true, false, false)), true)), true);
    var_0 = select(select(vec4<bool>(var_0.x, any(!vec4<bool>(true, false, var_0.x, true)), false, any(!var_0.xxz)), select(vec4<bool>(any(vec2<bool>(var_0.x, true)), true, all(vec4<bool>(true, true, var_0.x, var_0.x)), var_0.x | false), !select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x), var_0.x), !(!select(var_0.x, false, false))), !select(vec4<bool>(var_0.x, var_0.x & var_0.x, false, var_0.x), select(select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), true), vec4<bool>(false, var_0.x, true, var_0.x), var_0.x), any(vec3<bool>(var_0.x, false, false))), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), true), select(vec4<bool>(u_input.a != -30874i, var_0.x, false, var_0.x), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false), !vec4<bool>(var_0.x, true, true, true)), true));
    global2 = !(false | var_0.x) && true;
    return u_input.b;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: u32) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_u32(select(vec3<u32>(arg_3, u_input.b, 77816u) & vec3<u32>(62491u, 8553u, u_input.b), ~vec3<u32>(arg_3, u_input.b, u_input.b) << ((vec3<u32>(u_input.b, 4294967295u, arg_3) & vec3<u32>(0u, u_input.b, u_input.b)) % vec3<u32>(32u)), arg_2.x), vec3<u32>(~min(4294967295u, u_input.b), func_3(), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), ~vec3<u32>(u_input.b, 47179u, u_input.b)))), (~vec3<u32>(87501u, arg_3, 0u) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 58305u, u_input.b) & vec3<u32>(u_input.b, 50248u, arg_3), vec3<u32>(29335u, 0u, u_input.b) | vec3<u32>(arg_3, arg_3, arg_3))) >> (_wgslsmith_clamp_vec3_u32(~(vec3<u32>(77157u, arg_3, 36480u) ^ vec3<u32>(u_input.b, 4294967295u, 1u)), vec3<u32>(1u, 82293u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_3, u_input.b), vec3<u32>(1u, u_input.b, 3109u))), ~vec3<u32>(arg_3, u_input.b, 30229u) << (~vec3<u32>(u_input.b, u_input.b, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), !((i32(-1i) * -arg_1.a.x) <= arg_1.a.x), u_input.a);
    let var_1 = _wgslsmith_mod_vec3_u32(countOneBits(abs(~select(vec3<u32>(1u, 1u, 0u), vec3<u32>(u_input.b, arg_3, 4294967295u), arg_2.x))), abs(select(vec3<u32>(68872u, countOneBits(arg_3), u_input.b), _wgslsmith_div_vec3_u32(~vec3<u32>(1u, u_input.b, arg_3), var_0.b), vec3<bool>(!var_0.c, true, false))));
    let var_2 = select(var_1, vec3<u32>(~_wgslsmith_sub_u32(86837u, 34514u), arg_3, u_input.b), !arg_2.ywx);
    global2 = true;
    var var_3 = ~(~(-47393i));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-341f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(201f)), -419f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(509f, -1000f), vec2<f32>(-1000f, -1862f), arg_2.x)), vec2<f32>(-281f, 1006f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1209f, -1082f) * vec2<f32>(-744f, 1000f))))))));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: bool) -> Struct_2 {
    let var_0 = vec3<i32>(u_input.a, 1i, u_input.a);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -470f);
    var var_2 = arg_2.yx;
    global2 = false;
    var var_3 = Struct_2(vec4<i32>(-23330i, select(-1i, -10911i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-9964i, var_0.x), var_0.yx), any(select(vec3<bool>(false, arg_3, arg_3), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -13400i, u_input.a), var_0), -1i), vec2<i32>(-1i) * -var_0.zx)));
    return Struct_2(_wgslsmith_mod_vec4_i32(select(min(var_3.a, var_3.a) ^ reverseBits(var_3.a), var_3.a, any(vec2<bool>(false, arg_3))), max(-var_3.a, _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, -5750i, 2147483647i), countOneBits(var_3.a)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(~_wgslsmith_div_vec3_u32(arg_1.xxw, ~vec3<u32>(arg_1.x, 13750u, arg_1.x) & ~vec3<u32>(arg_1.x, u_input.b, arg_1.x)), vec3<u32>(u_input.b, _wgslsmith_div_u32(u_input.b << ((u_input.b | arg_1.x) % 32u), ~u_input.b << (func_3() % 32u)), 1u), false, -1i);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(426f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-348f, _wgslsmith_f_op_f32(f32(-1f) * -433f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1788f, _wgslsmith_f_op_f32(f32(-1f) * -204f))) - _wgslsmith_f_op_f32(f32(-1f) * -305f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2539f) * 1757f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-714f + -444f)))))));
    let var_2 = Struct_1(vec3<u32>(~_wgslsmith_add_u32(u_input.b, 42999u) >> (abs(var_0.a.x) % 32u), firstTrailingBit(u_input.b), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 79706u, u_input.b, arg_1.x), _wgslsmith_mod_vec4_u32(arg_1, arg_1)))), _wgslsmith_clamp_vec3_u32(abs(select(var_0.b, vec3<u32>(4294967295u, arg_1.x, 0u), vec3<bool>(var_0.c, var_0.c, false))), select(vec3<u32>(4294967295u, 0u, var_0.b.x), var_0.b >> (arg_1.wwx % vec3<u32>(32u)), select(vec3<bool>(true, false, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(arg_2.x, var_0.c, true))), var_0.a) ^ _wgslsmith_mod_vec3_u32(arg_1.yww, vec3<u32>(~var_0.b.x, var_0.a.x >> (arg_1.x % 32u), countOneBits(var_0.b.x))), !all(vec4<bool>(all(vec3<bool>(false, var_0.c, true)), arg_2.x, var_0.d >= 2147483647i, false)), abs(-9678i));
    let var_3 = ~vec4<i32>(abs(34147i), i32(-1i) * -47637i, _wgslsmith_mult_i32(25351i, _wgslsmith_mult_i32(i32(-1i) * -1i, var_2.d)), u_input.a);
    let var_4 = Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(var_2.a.x, u_input.b, arg_1.x), vec3<u32>(u_input.b, u_input.b, var_0.a.x)) ^ var_0.a, abs(var_2.a), false, 1i);
    return Struct_1(vec3<u32>(var_4.b.x ^ ~firstTrailingBit(15288u), _wgslsmith_mult_u32(1u >> (arg_1.x % 32u), ~27438u), 9891u), vec3<u32>(_wgslsmith_dot_vec3_u32(arg_1.wxx, ~var_4.b), _wgslsmith_mod_u32(33869u, abs(abs(1u))), ~abs(1u)), var_4.c, 1i);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = func_5(func_4(1u, _wgslsmith_f_op_vec2_f32(func_2(arg_1.x, Struct_2(~arg_2.a), arg_1, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-618f, arg_0, -2029f, -1898f))) + vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), -2631f, -1597f, _wgslsmith_f_op_f32(485f - -1408f))), (u_input.a & 2147483647i) >= u_input.a), ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b, 1u), firstTrailingBit(16995u), 1u, _wgslsmith_add_u32(19354u, u_input.b)), vec4<u32>(u_input.b, ~114533u, _wgslsmith_clamp_u32(0u, 83723u, u_input.b), 48581u)), arg_1.yy);
    let var_1 = abs(_wgslsmith_div_u32(0u, ~40673u));
    var var_2 = _wgslsmith_mult_vec4_i32(arg_2.a, _wgslsmith_mod_vec4_i32(arg_2.a, _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(1i, -24398i, 2147483647i, u_input.a)), _wgslsmith_sub_vec4_i32(arg_2.a, vec4<i32>(20312i, 19559i, arg_2.a.x, var_0.d)), arg_2.a), ~arg_2.a, _wgslsmith_sub_vec4_i32(~arg_2.a, firstTrailingBit(vec4<i32>(965i, -19783i, arg_2.a.x, -2147483647i))))));
    let var_3 = vec2<f32>(685f, _wgslsmith_div_f32(-688f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1629f - -890f) - -1275f))));
    var var_4 = ~vec2<u32>(reverseBits(86031u), var_1 >> (func_3() % 32u));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-301f, arg_0, arg_0) + vec3<f32>(609f, -759f, 556f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1984f, var_3.x)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.x, -391f, arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-253f, arg_0, 690f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, -711f) - vec3<f32>(var_3.x, -744f, 1816f))))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>) -> bool {
    var var_0 = false;
    let var_1 = Struct_2(vec4<i32>(_wgslsmith_sub_i32(21471i, 0i), i32(-1i) * -2147483647i, u_input.a, 42144i));
    var_0 = true;
    var_0 = false;
    var var_2 = arg_2;
    return all(vec2<bool>(true, any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)))));
}

fn func_7(arg_0: bool, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    global1 = array<Struct_2, 16>();
    let var_0 = false;
    global1 = array<Struct_2, 16>();
    let var_1 = -374f;
    let var_2 = Struct_1(vec3<u32>(u_input.b, arg_1.x, _wgslsmith_mod_u32(u_input.b | ~11360u, min(arg_3.a.b.x, 1201u) >> (u_input.b % 32u))), vec3<u32>(reverseBits(0u), 9884u, 0u), var_0, -67231i);
    return Struct_2(_wgslsmith_div_vec4_i32(-vec4<i32>(select(56586i, 75657i, false), ~arg_3.a.d, 0i | u_input.a, -203i), -firstTrailingBit(vec4<i32>(0i, var_2.d, -1i, 0i))));
}

fn func_8(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = select(vec2<bool>(all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, arg_2.a.c), arg_2.a.c)), all(select(vec2<bool>(false, false), !vec2<bool>(arg_2.a.c, arg_2.a.c), all(vec2<bool>(false, true))))), !select(!vec2<bool>(arg_2.a.c, false), vec2<bool>(true, true), true), false);
    let var_1 = -596f;
    var var_2 = _wgslsmith_mod_vec3_u32(arg_2.a.a, arg_2.a.b);
    let var_3 = !select(vec4<bool>(!(var_1 > var_1), select(true, true, var_1 < var_1), true, all(select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, arg_2.a.c, arg_2.a.c), vec3<bool>(false, true, var_0.x)))), vec4<bool>(true, !var_0.x, arg_2.a.c, abs(arg_1.a.x) > -u_input.a), !func_6(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1, 1685f, var_1))), global1[_wgslsmith_index_u32(abs(var_2.x), 16u)], ~arg_1.a));
    global0 = arg_2.a.b.x;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 16>();
    global2 = true || ((u_input.b << (_wgslsmith_div_u32(~u_input.b, u_input.b) % 32u)) > _wgslsmith_sub_u32(0u, _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, 90607u), u_input.b)));
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_sub_u32(1u, 0u), 1u);
    var var_1 = func_8(-2249i, func_7(func_6(_wgslsmith_f_op_vec3_f32(func_1(-636f, vec4<bool>(true, true, false, false), global1[_wgslsmith_index_u32(u_input.b, 16u)])), Struct_2(vec4<i32>(u_input.a, 28996i, 86106i, 11431i)), _wgslsmith_div_vec4_i32(vec4<i32>(18458i, 2147483647i, 36658i, u_input.a), vec4<i32>(17852i, u_input.a, 1i, u_input.a))) && true, vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, u_input.b, 58409u)), 4294967295u, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-446f + 663f))), Struct_3(func_5(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u), vec4<u32>(u_input.b, 98967u, u_input.b, u_input.b)), 16u)], min(vec4<u32>(1u, 0u, 51213u, 27216u), vec4<u32>(u_input.b, 9943u, 2091u, u_input.b)), vec2<bool>(false, true)))), Struct_3(func_5(Struct_2(~vec4<i32>(2147483647i, -3207i, 0i, u_input.a)), ~_wgslsmith_add_vec4_u32(vec4<u32>(56885u, 0u, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), vec2<bool>(false, true))));
    var_0 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(func_5(func_4(0u, vec2<f32>(443f, 1000f), vec4<f32>(1227f, 386f, 139f, 211f), false), _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1.a.b.x, u_input.b, 21051u), vec4<u32>(u_input.b, 40146u, u_input.b, 0u)), !vec2<bool>(false, var_1.a.c)).b.x, var_1.a.b.x), min(vec2<u32>(~4294967295u, 1045u), firstTrailingBit(vec2<u32>(var_1.a.b.x, var_1.a.b.x))), select(func_5(func_7(var_1.a.c, vec3<u32>(u_input.b, 23644u, 1u), -1387f, Struct_3(Struct_1(var_1.a.a, var_1.a.b, true, 2147483647i))), ~vec4<u32>(u_input.b, u_input.b, var_1.a.b.x, 10196u), !vec2<bool>(var_1.a.c, var_1.a.c)).c, true, !(u_input.b == 47061u))), vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.a.b.xz, vec2<u32>(u_input.b, u_input.b) & vec2<u32>(var_1.a.a.x, 61518u)), ~u_input.b | (var_1.a.b.x ^ 46230u)) & firstTrailingBit(vec2<u32>(select(0u, 24379u, true), var_1.a.a.x)));
    var var_2 = Struct_1(var_1.a.a, firstLeadingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, var_1.a.a.x, 4294967295u), var_1.a.a >> (vec3<u32>(var_1.a.b.x, var_1.a.a.x, u_input.b) % vec3<u32>(32u))) >> (vec3<u32>(~2775u, func_8(7689i, Struct_2(vec4<i32>(-29386i, u_input.a, -2147483647i, u_input.a)), Struct_3(var_1.a)).a.b.x, _wgslsmith_sub_u32(u_input.b, 7738u)) % vec3<u32>(32u))), true, ~(var_1.a.d | _wgslsmith_sub_i32(u_input.a, 33413i)) << (~u_input.b % 32u));
    var_0 = _wgslsmith_div_u32(var_2.b.x, var_1.a.b.x);
    global0 = countOneBits(var_1.a.b.x);
    var var_3 = ~vec4<u32>(var_1.a.b.x, var_1.a.a.x, ~var_2.a.x, ~45164u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(var_3.zzw, var_2.b));
}

