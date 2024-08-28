struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false, -309f), Struct_1(false, 709f), Struct_1(true, -427f), Struct_1(false, -761f), Struct_1(true, 1094f), Struct_1(true, -2065f), Struct_1(false, -1000f), Struct_1(false, 1150f), Struct_1(true, 758f), Struct_1(false, 1807f), Struct_1(false, -118f), Struct_1(true, -1046f), Struct_1(false, -586f), Struct_1(true, 418f), Struct_1(true, -224f), Struct_1(false, -1139f), Struct_1(false, -637f), Struct_1(false, -349f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = !(!vec4<bool>(true, true, all(vec2<bool>(true, true)), true));
    var var_1 = Struct_2(~abs(42322u), Struct_1(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f)))), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~u_input.b, abs(u_input.b)), ~u_input.b.x), 18u)]);
    var_0 = !(!select(select(select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_1.b.a, var_1.b.a, false, true)), !vec4<bool>(var_0.x, var_0.x, false, false), var_0.x), vec4<bool>(!var_0.x, true, true, true), !vec4<bool>(var_0.x, var_0.x, false, var_1.c.a)));
    var var_2 = Struct_4(~((vec4<u32>(var_1.a, u_input.b.x, var_1.a, var_1.a) >> (firstLeadingBit(u_input.b) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(u_input.b, ~vec4<u32>(var_1.a, 0u, 51877u, var_1.a))), Struct_3(Struct_1(var_1.b.a | all(vec2<bool>(false, true)), 1f), !all(vec2<bool>(var_0.x, true)), -1000f), !(!var_1.c.a));
    let var_3 = vec4<i32>(_wgslsmith_add_i32(u_input.a, firstLeadingBit(-1i)), i32(-1i) * -27312i, _wgslsmith_add_i32(~_wgslsmith_sub_i32(-44805i << (0u % 32u), abs(31505i)), 0i), -2147483647i);
    return _wgslsmith_div_u32(43564u, 13734u);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_5 {
    let var_0 = abs(~(~u_input.b));
    global0 = array<Struct_1, 18>();
    let var_1 = Struct_4(vec4<u32>(max(_wgslsmith_sub_u32(~arg_3.a, _wgslsmith_sub_u32(u_input.b.x, arg_3.a)), ~var_0.x), ~func_3(), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~u_input.b.ww, firstTrailingBit(vec2<u32>(15153u, var_0.x))), _wgslsmith_mult_u32(4294967295u, firstTrailingBit(0u))), _wgslsmith_mod_u32(var_0.x, select(countOneBits(var_0.x), ~u_input.b.x, true))), Struct_3(Struct_1(true, arg_3.c.b), any(vec4<bool>(u_input.b.x != 46193u, 2147483647i <= arg_1.x, all(vec4<bool>(arg_2.x, arg_2.x, false, false)), all(vec4<bool>(false, arg_3.b.a, arg_2.x, arg_3.c.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) + _wgslsmith_f_op_f32(round(-1165f))))), select(!all(select(vec4<bool>(arg_3.b.a, arg_2.x, arg_2.x, false), vec4<bool>(false, arg_3.c.a, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x))), all(select(vec4<bool>(false, false, arg_2.x, false), select(vec4<bool>(arg_3.b.a, false, true, arg_3.c.a), vec4<bool>(arg_2.x, arg_3.c.a, arg_2.x, arg_3.b.a), arg_2.x), arg_2.x)), true));
    let var_2 = vec3<u32>(1u, _wgslsmith_add_u32(~_wgslsmith_sub_u32(var_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 34410u, u_input.b.x, 25282u), vec4<u32>(92129u, 13422u, 3924u, arg_3.a))), var_0.x), ~_wgslsmith_mult_u32(~0u << (_wgslsmith_add_u32(4294967295u, var_0.x) % 32u), abs(u_input.b.x)));
    global0 = array<Struct_1, 18>();
    return Struct_5(arg_3.b, Struct_3(global0[_wgslsmith_index_u32(1u, 18u)], arg_3.b.a, 1282f), !select(select(vec3<bool>(true, true, var_1.b.a.a), vec3<bool>(true, arg_2.x, false), !vec3<bool>(true, true, var_1.c)), vec3<bool>(all(vec2<bool>(true, var_1.b.a.a)), false, all(vec2<bool>(var_1.b.b, false))), !vec3<bool>(arg_2.x, arg_2.x, arg_3.c.a)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: f32) -> vec3<f32> {
    var var_0 = vec4<i32>(u_input.a >> (reverseBits(u_input.b.x ^ firstTrailingBit(u_input.b.x)) % 32u), 16903i, u_input.a, 1i);
    let var_1 = _wgslsmith_mult_vec3_i32(var_0.xwx, ~select(var_0.zxw, select(var_0.yxy, vec3<i32>(u_input.a, var_0.x, u_input.a), arg_0.b && arg_0.a.a), arg_1.b.a.a));
    let var_2 = Struct_4(~vec4<u32>(14300u, 4294967295u, min(u_input.b.x, reverseBits(u_input.b.x)), 1u), arg_1.b, arg_0.a.a);
    let var_3 = Struct_2((u_input.b.x & ~var_2.a.x) | _wgslsmith_sub_u32(_wgslsmith_mult_u32(~var_2.a.x, 64072u), max(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.zxx))), func_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1992f)), 1000f), arg_0.c, _wgslsmith_f_op_f32(trunc(1383f))), var_1, vec2<bool>(false, arg_0.b), Struct_2(abs(var_2.a.x ^ 4294967295u), var_2.b.a, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(var_2.a.x, 0u)), 18u)])).a, var_2.b.a);
    global0 = array<Struct_1, 18>();
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-160f, -1000f, arg_0.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(-853f, arg_1.a.b, arg_2) * vec3<f32>(1936f, var_3.c.b, var_2.b.a.b)))))))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: u32, arg_3: i32) -> Struct_2 {
    global0 = array<Struct_1, 18>();
    var var_0 = u_input.b;
    var_0 = firstLeadingBit(vec4<u32>(var_0.x, 1u, _wgslsmith_mod_u32(~1u, _wgslsmith_clamp_u32(38806u, 1u, 48438u ^ arg_2)), 8046u));
    let var_1 = Struct_4(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 9013u, 4294967295u, 1u) | u_input.b, u_input.b | vec4<u32>(0u, 4294967295u, 13878u, 64645u)) ^ vec4<u32>(abs(~4294967295u), var_0.x, _wgslsmith_dot_vec2_u32(var_0.zx, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(16155u, 9813u))), _wgslsmith_add_u32(_wgslsmith_add_u32(arg_2, 224u), ~arg_2)), Struct_3(Struct_1(u_input.a <= abs(u_input.a), _wgslsmith_f_op_f32(abs(-691f))), arg_0.x & all(vec3<bool>(true, false, true)), -123f), select(arg_0.x, arg_0.x, arg_2 <= 19923u));
    let var_2 = Struct_4(_wgslsmith_mod_vec4_u32(u_input.b, ~vec4<u32>(0u, ~0u, 4294967295u, ~1u)), Struct_3(func_2(vec3<f32>(-216f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x * 765f)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-28958i, 70903i, arg_3), vec3<i32>(57422i, 3363i, arg_3)), min(vec3<i32>(u_input.a, -35763i, 43529i), vec3<i32>(arg_3, arg_3, u_input.a))), vec2<bool>(select(var_1.c, arg_0.x, true), -28706i <= arg_3), Struct_2(_wgslsmith_mult_u32(u_input.b.x, var_0.x), func_2(vec3<f32>(var_1.b.a.b, arg_1.x, 277f), vec3<i32>(-2147483647i, arg_3, u_input.a), arg_0, Struct_2(arg_2, global0[_wgslsmith_index_u32(8773u, 18u)], var_1.b.a)).b.a, func_2(arg_1, vec3<i32>(arg_3, u_input.a, -16204i), vec2<bool>(var_1.b.b, arg_0.x), Struct_2(var_1.a.x, global0[_wgslsmith_index_u32(arg_2, 18u)], global0[_wgslsmith_index_u32(0u, 18u)])).a)).b.a, any(vec4<bool>(all(vec3<bool>(true, arg_0.x, var_1.c)), arg_0.x, true, !var_1.b.a.a)), -676f), _wgslsmith_f_op_f32(arg_1.x + 270f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.a.b, arg_1.x)))));
    return Struct_2(_wgslsmith_dot_vec3_u32(u_input.b.xzw, abs(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, 91602u, 1u), vec3<u32>(var_1.a.x, var_0.x, 4294967295u))))), Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f))), var_1.b.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: u32) -> Struct_1 {
    var var_0 = func_5(arg_0.yy, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_4(arg_1.b, func_2(vec3<f32>(arg_1.a.b, -1398f, arg_1.a.b), abs(vec3<i32>(27707i, -1i, u_input.a)), vec2<bool>(true, false), Struct_2(0u, Struct_1(arg_1.a.a, arg_1.b.a.b), global0[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_f_op_f32(arg_1.a.b - -316f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.a.b)), _wgslsmith_f_op_f32(arg_1.a.b + arg_1.b.a.b), -1100f))), 53679u, countOneBits(26056i));
    let var_1 = arg_1.b;
    var_0 = Struct_2(firstTrailingBit(var_0.a), func_5(vec2<bool>(var_1.b, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(arg_1.b, Struct_5(var_1.a, Struct_3(Struct_1(false, 1947f), var_1.b, var_0.c.b), vec3<bool>(var_0.b.a, true, true)), arg_1.b.a.b))) + vec3<f32>(var_0.c.b, -278f, _wgslsmith_f_op_f32(-arg_1.a.b))), arg_2, ~_wgslsmith_sub_i32(u_input.a >> (4294967295u % 32u), 1i)).c, Struct_1(var_1.a.a, _wgslsmith_f_op_f32(-var_0.b.b)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-251f, 459f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.b.a.b + var_1.a.b), 406f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-arg_1.a.b))))));
    var_0 = func_5(vec2<bool>(10140i > countOneBits(_wgslsmith_sub_i32(1i, u_input.a)), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(996f, 748f, -1481f), vec3<f32>(-515f, arg_1.b.c, 1111f)) + vec3<f32>(-1412f, var_2, 1190f)), _wgslsmith_mod_vec3_i32(select(vec3<i32>(-888i, u_input.a, 0i), vec3<i32>(u_input.a, 0i, u_input.a), false), ~vec3<i32>(1i, 2147483647i, 3082i)), vec2<bool>(var_1.a.a, arg_1.b.a.a), func_5(select(arg_0.yx, arg_1.c.zy, var_1.b), vec3<f32>(arg_1.b.c, -1838f, 1105f), u_input.b.x ^ 10951u, 0i)).b.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, -1702f, var_1.c)))), 0u, 6606i);
    return func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.a.b, 1319f, 267f)), ~vec3<i32>(2147483647i, u_input.a, 10771i), select(arg_0.xy, arg_0.yx, arg_0.zx), Struct_2(arg_2, Struct_1(arg_1.c.x, var_2), Struct_1(var_0.b.a, var_1.c))).a.b, _wgslsmith_f_op_f32(-var_0.c.b), 1742f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a.b, -1682f, var_2))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_1.a.b, arg_1.b.c) - vec3<f32>(-421f, var_2, var_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-173f, -1000f, var_2)), all(arg_1.c.yy)))), vec3<bool>(var_1.a.b <= var_2, func_5(arg_1.c.yy, vec3<f32>(var_0.c.b, -727f, 704f), _wgslsmith_div_u32(arg_2, arg_2), 63323i >> (1u % 32u)).c.a, false))), ((~vec3<i32>(u_input.a, 2147483647i, u_input.a) | ~vec3<i32>(u_input.a, u_input.a, -2147483647i)) | vec3<i32>(1i, u_input.a & 0i, 1372i)) & vec3<i32>(-u_input.a, min(countOneBits(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(18979i, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, -6876i))), u_input.a), arg_0.yx, Struct_2(_wgslsmith_sub_u32(select(min(41868u, var_0.a), var_0.a, true), _wgslsmith_add_u32(u_input.b.x, 4294967295u)), func_5(vec2<bool>(false, arg_0.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a.b, 793f, 642f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-146f, 445f, arg_1.a.b))), var_0.a << (~u_input.b.x % 32u), u_input.a).b, Struct_1(!any(arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(675f + arg_1.b.c) * _wgslsmith_f_op_f32(515f * var_0.c.b))))).a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_4 {
    return Struct_4(select(vec4<u32>(1u, ~func_3(), min(arg_1.a, u_input.b.x) & max(u_input.b.x, 4294967295u), abs(countOneBits(u_input.b.x))), u_input.b, select(select(vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), select(vec4<bool>(true, false, false, true), vec4<bool>(arg_0.a, arg_0.a, false, false), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a)), 4294967295u >= arg_1.a), !(!vec4<bool>(arg_0.a, false, arg_0.a, true)), arg_1.b.a)), Struct_3(Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b, 1463f)) - _wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_dot_vec2_u32(u_input.b.wy & vec2<u32>(5214u, 1164u), ~u_input.b.zw) <= arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(trunc(arg_1.c.b))))), any(vec3<bool>(true, -u_input.a >= _wgslsmith_mult_i32(u_input.a, -43440i), arg_0.a)));
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: bool) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(156f - _wgslsmith_f_op_f32(f32(-1f) * -631f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))), arg_0.x);
    let var_1 = ~min(u_input.b.x, 53317u);
    var var_2 = func_5(select(select(vec2<bool>(arg_2 || arg_1.b.a.a, any(vec3<bool>(arg_2, true, true))), select(func_2(vec3<f32>(var_0.x, -1000f, arg_0.x), vec3<i32>(-39686i, 0i, -2147483647i), vec2<bool>(arg_1.c, false), Struct_2(9539u, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], Struct_1(arg_1.b.a.a, -1711f))).c.zx, !vec2<bool>(arg_1.c, arg_1.c), true), func_2(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 8167i, u_input.a), vec3<i32>(2147483647i, 2147483647i, u_input.a)), vec2<bool>(arg_1.b.a.a, false), func_5(vec2<bool>(true, arg_2), arg_0, 30825u, -12430i)).c.zy), !func_2(vec3<f32>(-1895f, arg_0.x, -1136f), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(27625i, -14340i, -1i)), vec2<bool>(false, true), func_5(vec2<bool>(true, arg_1.b.a.a), arg_0, arg_1.a.x, 0i)).c.zy, arg_2), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(988f - _wgslsmith_f_op_f32(776f - -1000f)), func_2(vec3<f32>(1836f, arg_1.b.a.b, var_0.x), vec3<i32>(u_input.a, 0i, u_input.a) | vec3<i32>(12730i, 1i, u_input.a), vec2<bool>(true, true), Struct_2(40866u, Struct_1(true, arg_1.b.c), global0[_wgslsmith_index_u32(arg_1.a.x, 18u)])).b.c, func_1(select(vec3<bool>(false, arg_2, arg_1.b.b), vec3<bool>(false, arg_2, arg_1.c), arg_2), Struct_5(arg_1.b.a, arg_1.b, vec3<bool>(arg_1.c, false, false)), _wgslsmith_mod_u32(1u, 1u)).b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-849f, arg_0.x, -1074f) * _wgslsmith_div_vec3_f32(vec3<f32>(-945f, -1467f, arg_1.b.a.b), arg_0)) * arg_0)), ~firstTrailingBit(u_input.b.x), _wgslsmith_add_i32(abs(i32(-1i) * -u_input.a), -2147483647i));
    var_2 = Struct_2(max(max(23345u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_2.a, 4294967295u), vec3<u32>(var_1, 8959u, u_input.b.x))), 81511u), Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-361f, _wgslsmith_f_op_f32(round(var_2.b.b))))), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))));
    var var_3 = 0i;
    return all(vec2<bool>(!(!arg_1.c), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, 414f, 572f)), vec3<i32>(21432i, u_input.a, 0i) | vec3<i32>(-1i, 2147483647i, u_input.a), vec2<bool>(arg_1.c, arg_2), Struct_2(arg_1.a.x, arg_1.b.a, Struct_1(arg_2, var_0.x))).b.b)) && true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    let var_0 = all(vec3<bool>(6488u == u_input.b.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, -30276i, u_input.a), u_input.a) >= u_input.a, func_7(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1586f, 874f, 311f) + vec3<f32>(-297f, -1024f, -1659f)))), func_6(func_1(vec3<bool>(false, false, false), Struct_5(Struct_1(true, 696f), Struct_3(global0[_wgslsmith_index_u32(42518u, 18u)], false, -1626f), vec3<bool>(true, false, true)), u_input.b.x), func_5(vec2<bool>(false, false), vec3<f32>(-353f, -1406f, -988f), u_input.b.x, u_input.a), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(157f, 201f)))), false)));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_4(Struct_3(func_6(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(55438u, 4294967295u, u_input.b.x, 20554u), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 48831u)), 18u)], Struct_2(~4180u, Struct_1(var_0, -1164f), Struct_1(var_0, 1409f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-544f, -1000f))).b.a, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1935f * 1041f))))), Struct_5(func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(142f, -1777f, 711f))), firstTrailingBit(-vec3<i32>(u_input.a, u_input.a, 1342i)), vec2<bool>(47858i == u_input.a, var_0), Struct_2(u_input.b.x, Struct_1(var_0, 614f), Struct_1(false, 205f))).a, func_6(func_6(Struct_1(var_0, 384f), func_5(vec2<bool>(var_0, var_0), vec3<f32>(1224f, -1000f, 535f), 1u, u_input.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(547f, -491f)))).b.a, func_5(select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1564f, -1036f, -1075f)), func_3(), u_input.a << (5694u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1275f) - vec2<f32>(327f, 1448f)))).b, select(vec3<bool>(all(vec2<bool>(false, var_0)), !var_0, var_0), select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, true, var_0), vec3<bool>(true, var_0, var_0)), !func_2(vec3<f32>(115f, 1000f, -120f), vec3<i32>(-32569i, -2147483647i, u_input.a), vec2<bool>(var_0, var_0), Struct_2(14044u, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 18u)])).c)), _wgslsmith_f_op_f32(-1172f + -1070f))).x;
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_2 = func_5(select(!func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(805f, -1124f, var_1) + vec3<f32>(468f, 477f, 2142f)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a, 0i), vec3<i32>(u_input.a, u_input.a, -2147483647i)), !vec2<bool>(var_0, false), Struct_2(38820u, global0[_wgslsmith_index_u32(56255u, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 18u)])).c.zz, !select(select(vec2<bool>(true, true), vec2<bool>(true, var_0), var_0), vec2<bool>(var_0, true), !vec2<bool>(var_0, var_0)), select(vec2<bool>(true, true), select(!vec2<bool>(var_0, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), var_0), any(select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, var_0), vec3<bool>(true, var_0, var_0))))), vec3<f32>(var_1, _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(step(var_1, var_1)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_1))))))), ~1u, u_input.a);
    var var_3 = func_6(func_5(vec2<bool>(false, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -2028f, -1023f) + vec3<f32>(429f, var_2.c.b, 251f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1000f, -1000f))), ~(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) >> (func_5(vec2<bool>(var_0, false), vec3<f32>(var_2.c.b, -897f, -186f), u_input.b.x, -66828i).a % 32u)), 1i).b, func_5(vec2<bool>(var_0, !var_2.b.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2650f, 1000f, var_1))))), abs(~(~u_input.b.x)), -u_input.a), vec2<f32>(-854f, -723f));
    var_2 = func_5(!(!vec2<bool>(var_2.b.a, var_3.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-541f, -465f, func_5(!vec2<bool>(var_2.c.a, false), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(254f, var_1, -740f))), 82291u, _wgslsmith_div_i32(u_input.a, u_input.a)).b.b)), _wgslsmith_div_u32(_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(u_input.b.x, 4294967295u) & func_6(Struct_1(false, var_3.b.a.b), Struct_2(4294967295u, var_3.b.a, Struct_1(var_2.b.a, var_2.c.b)), vec2<f32>(var_3.b.c, var_3.b.c)).a.x), 36551u), -3172i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a, 1u, 1u, var_3.a.x) << (vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u) % vec4<u32>(32u)), u_input.b & var_3.a) << (vec4<u32>(1u, 0u, 710u, var_3.a.x) % vec4<u32>(32u)), vec3<i32>(-u_input.a, u_input.a, _wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(-15158i, 2147483647i, 2147483647i)), vec3<i32>(u_input.a, u_input.a, firstTrailingBit(2147483647i)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1)), var_1, _wgslsmith_f_op_f32(f32(-1f) * -1269f)), var_1, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-295f, var_1, var_3.b.c, var_2.c.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2084f, -197f, var_1, var_3.b.c))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, var_2.b.b, 744f, -2369f))))))));
}

