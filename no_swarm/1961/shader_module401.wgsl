struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(83913u, vec4<i32>(0i, 36848i, 0i, 1i), 2147483647i, vec2<u32>(4294967295u, 28862u)), Struct_1(0u, vec4<i32>(57540i, 27563i, 0i, 36665i), 4603i, vec2<u32>(17172u, 1u)), Struct_1(0u, vec4<i32>(2147483647i, -1i, 49875i, 29036i), 0i, vec2<u32>(53436u, 1u)), Struct_1(4294967295u, vec4<i32>(-11519i, 1i, -1i, 0i), 1i, vec2<u32>(0u, 55664u)), Struct_1(83290u, vec4<i32>(71947i, i32(-2147483648), -7235i, -4423i), 0i, vec2<u32>(1u, 13807u)), Struct_1(4294967295u, vec4<i32>(0i, -33065i, 5670i, -46392i), -23548i, vec2<u32>(4294967295u, 4294967295u)), Struct_1(1u, vec4<i32>(57080i, 2147483647i, 1i, -55236i), 63594i, vec2<u32>(0u, 4294967295u)), Struct_1(0u, vec4<i32>(26665i, 1i, 0i, -11566i), 0i, vec2<u32>(58898u, 54890u)), Struct_1(89634u, vec4<i32>(-56173i, 28193i, 2147483647i, 0i), i32(-2147483648), vec2<u32>(89244u, 26190u)), Struct_1(0u, vec4<i32>(15783i, 0i, -1i, i32(-2147483648)), -48966i, vec2<u32>(1u, 20899u)), Struct_1(4294967295u, vec4<i32>(2147483647i, -1i, -10433i, 1i), 24368i, vec2<u32>(4294967295u, 24598u)), Struct_1(1u, vec4<i32>(1i, 1i, 1i, -34576i), 14278i, vec2<u32>(1u, 0u)), Struct_1(45158u, vec4<i32>(2147483647i, -34333i, i32(-2147483648), i32(-2147483648)), 16543i, vec2<u32>(27029u, 53996u)), Struct_1(21723u, vec4<i32>(-15083i, 808i, 38301i, -1i), 1i, vec2<u32>(23804u, 4294967295u)), Struct_1(4294967295u, vec4<i32>(1i, 540i, 32909i, -11087i), -39282i, vec2<u32>(8853u, 9993u)), Struct_1(56362u, vec4<i32>(-29063i, 59787i, i32(-2147483648), -1i), -15223i, vec2<u32>(0u, 4294967295u)), Struct_1(4294967295u, vec4<i32>(13065i, -1i, 2147483647i, -72105i), -71866i, vec2<u32>(4294967295u, 18314u)), Struct_1(4294967295u, vec4<i32>(1i, -32688i, 16658i, 34258i), 36676i, vec2<u32>(45429u, 36976u)), Struct_1(1u, vec4<i32>(0i, -14920i, 6919i, 43311i), -1697i, vec2<u32>(67615u, 48809u)), Struct_1(5434u, vec4<i32>(2147483647i, 26331i, i32(-2147483648), 37885i), 13220i, vec2<u32>(11182u, 0u)), Struct_1(1u, vec4<i32>(1i, i32(-2147483648), -6426i, 2613i), 81335i, vec2<u32>(0u, 42981u)), Struct_1(50095u, vec4<i32>(-52838i, -6414i, i32(-2147483648), 4024i), 670i, vec2<u32>(25783u, 43419u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = Struct_3(select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(false, true, false)), select(vec2<bool>(any(vec2<bool>(false, false)), any(global0[_wgslsmith_index_u32(40898u, 26u)])), vec2<bool>(true, true), all(vec4<bool>(true, true, false, false))), vec2<bool>(u_input.a.x == select(u_input.a.x, u_input.a.x, false), false == any(global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1953f), _wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -559f))))));
    var var_1 = arg_0.a.b;
    var var_2 = Struct_3(var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(665f * _wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x)), 438f, -110f, -1716f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 1000f, var_0.b.x, var_0.b.x)))));
    var var_3 = firstTrailingBit(arg_0.a.b);
    let var_4 = Struct_3(vec2<bool>(true, !all(vec3<bool>(var_0.a.x, true, var_2.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b + vec4<f32>(var_0.b.x, var_0.b.x, 1434f, 447f))), vec4<f32>(202f, var_2.b.x, -304f, arg_0.c.x), false))));
    return vec4<f32>(_wgslsmith_f_op_f32(step(1805f, var_0.b.x)), _wgslsmith_f_op_f32(ceil(795f)), var_2.b.x, var_0.b.x);
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_3 {
    global1 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_vec4_f32(step(arg_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1217f), _wgslsmith_f_op_f32(min(365f, -1000f)), -956f, 657f) + arg_1.b))));
    let var_1 = ~((i32(-1i) * -34655i) ^ arg_2.x);
    global1 = array<Struct_1, 22>();
    var var_2 = Struct_3(!vec2<bool>(2777i >= _wgslsmith_clamp_i32(var_1, -14505i, var_1), arg_1.a.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0, var_0))))));
    return Struct_3(!arg_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(37174u, vec4<i32>(var_1, arg_2.x, 90501i, 18605i), var_1, u_input.a), global1[_wgslsmith_index_u32(arg_0, 22u)], vec2<f32>(1838f, arg_1.b.x)))), arg_1.b))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(arg_0, vec4<i32>(var_1, var_1, arg_2.x, u_input.c), var_1, vec2<u32>(112798u, 82761u)), global1[_wgslsmith_index_u32(arg_0, 22u)], arg_1.b.yz))))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3) -> vec4<bool> {
    global0 = array<vec3<bool>, 26>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 22u)];
    global0 = array<vec3<bool>, 26>();
    let var_1 = global1[_wgslsmith_index_u32(max(abs(_wgslsmith_add_u32(~u_input.b, u_input.b << (reverseBits(u_input.b) % 32u))), var_0.a), 22u)];
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 32297u, var_0.d.x, 17137u), vec4<u32>(u_input.b, 4294967295u, 54322u, var_0.d.x))), abs(~vec4<u32>(u_input.b, 0u, var_0.a, var_1.a)) & (select(vec4<u32>(u_input.a.x, u_input.a.x, var_0.d.x, var_1.d.x), vec4<u32>(21892u, 48702u, var_0.a, 63978u), arg_0.a.x) | countOneBits(vec4<u32>(1u, u_input.b, 4294967295u, 6826u)))), 22u)], Struct_1(~4294967295u, var_1.b, var_0.b.x, vec2<u32>(~(~var_0.d.x), _wgslsmith_mod_u32(~37890u, ~u_input.a.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_2.b.x)))))));
    return vec4<bool>(true, (var_2.b.c | reverseBits(countOneBits(2147483647i))) != ~0i, false, !any(!select(arg_1, vec2<bool>(arg_1.x, arg_0.a.x), arg_2.a.x)));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = select(!global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(arg_2.a.a << (arg_1.x % 32u)), arg_2.b.d.x >> ((arg_1.x << (0u % 32u)) % 32u)), 26u)], select(select(!vec3<bool>(arg_0, true, arg_0), global0[_wgslsmith_index_u32(~u_input.a.x, 26u)], arg_0), select(vec3<bool>(!arg_0, any(vec4<bool>(false, true, arg_0, true)), false), global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(36283u, 26u)]), global0[_wgslsmith_index_u32(~u_input.b, 26u)]), true);
    let var_1 = Struct_1(~(~u_input.a.x), vec4<i32>(i32(-1i) * -1i, arg_2.b.b.x >> (~u_input.b % 32u), -1i << ((4294967295u << (arg_2.b.a % 32u)) % 32u), firstTrailingBit(u_input.c)), -abs(-u_input.c), (firstLeadingBit(arg_2.b.d | vec2<u32>(u_input.b, 0u)) >> (vec2<u32>(27737u << (0u % 32u), arg_2.a.a) % vec2<u32>(32u))) ^ ~(_wgslsmith_mult_vec2_u32(arg_1.ww, vec2<u32>(0u, arg_1.x)) & vec2<u32>(arg_1.x, 31217u)));
    global1 = array<Struct_1, 22>();
    var var_2 = Struct_3(vec2<bool>(false, any(vec2<bool>(var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(func_2(~arg_1.x, func_2(4294967295u, Struct_3(var_0.xy, vec4<f32>(-415f, arg_2.c.x, -831f, arg_2.c.x)), vec3<i32>(0i, u_input.c, 28231i), vec2<bool>(true, arg_0)), vec3<i32>(var_1.c, arg_2.a.c, var_1.b.x), !vec2<bool>(true, arg_0)).b, vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.c.x)), _wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(abs(416f)), 1008f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_2.c.x, -1462f, arg_2.c.x), vec4<f32>(-1325f, 248f, arg_2.c.x, arg_2.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, -171f, -347f, arg_2.c.x) + vec4<f32>(arg_2.c.x, 370f, arg_2.c.x, arg_2.c.x))))), !var_0.x)));
    let var_3 = func_2(arg_1.x, Struct_3(var_0.yz, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(var_2.b)), vec4<f32>(_wgslsmith_div_f32(1689f, 782f), arg_2.c.x, _wgslsmith_f_op_f32(var_2.b.x + -581f), _wgslsmith_f_op_f32(max(-1516f, 145f))), !(!vec4<bool>(var_0.x, false, var_0.x, true))))), -arg_2.b.b.zwx, vec2<bool>(var_0.x | true, arg_0));
    return var_1;
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = 73989u;
    let var_1 = -37378i;
    var var_2 = vec3<i32>(u_input.c, 1i, _wgslsmith_div_i32(2147483647i, -var_1));
    var var_3 = func_5(all(!func_4(Struct_3(vec2<bool>(false, true), vec4<f32>(-1000f, -2295f, 494f, arg_0.x)), vec2<bool>(true, true), func_2(u_input.d, Struct_3(vec2<bool>(false, true), vec4<f32>(2019f, 1753f, arg_0.x, arg_0.x)), vec3<i32>(var_1, var_1, u_input.c), vec2<bool>(true, false)))), ~vec4<u32>(firstTrailingBit(u_input.a.x), ~var_0, 4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), u_input.a)), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], Struct_1(~var_0, _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 1i, 25173i, u_input.c), vec4<i32>(0i, -16142i, 1i, -2147483647i)) << (reverseBits(vec4<u32>(18252u, u_input.d, 4294967295u, 0u)) % vec4<u32>(32u)), _wgslsmith_clamp_i32(19460i, _wgslsmith_add_i32(13818i, 6150i), _wgslsmith_div_i32(var_2.x, -1i)), max(select(u_input.a, vec2<u32>(var_0, var_0), true), vec2<u32>(10402u, 1u))), _wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)))));
    let var_4 = ~4294967295u;
    return Struct_3(vec2<bool>(438f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), !func_2(u_input.d, Struct_3(vec2<bool>(false, true), vec4<f32>(arg_0.x, -1940f, -1713f, arg_0.x)), vec3<i32>(var_1, -78223i, var_3.b.x), vec2<bool>(true, true)).a.x && all(vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, -115f, arg_0.x, -521f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, -1770f, arg_0.x, 714f))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(877f, -158f, arg_0.x, -878f) + vec4<f32>(1777f, arg_0.x, arg_0.x, arg_0.x))))));
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = abs(-u_input.c) | -6089i;
    let var_1 = ~(max(abs(abs(u_input.b)), ~1u << (_wgslsmith_mod_u32(u_input.a.x, 29096u) % 32u)) << (30262u % 32u));
    var var_2 = func_5(false, (~max(vec4<u32>(1u, u_input.b, 4294967295u, u_input.d), vec4<u32>(1u, 0u, 21443u, u_input.a.x)) >> (~vec4<u32>(u_input.a.x, var_1, u_input.d, var_1) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(select(~vec4<u32>(1u, var_1, var_1, var_1), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b, 125027u, 2950u), vec4<u32>(56565u, u_input.d, u_input.d, var_1)), !arg_0.a.x), vec4<u32>(abs(var_1), ~var_1, ~55161u, ~var_1)), Struct_2(func_5((arg_1 == -142f) | true, vec4<u32>(42361u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, 30949u, var_1), vec4<u32>(20372u, 34324u, var_1, var_1)), ~var_1, ~u_input.d), Struct_2(global1[_wgslsmith_index_u32(var_1, 22u)], Struct_1(var_1, vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), -7993i, u_input.a), arg_2.xw)), func_5(any(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 26u)]), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(62776u, u_input.d), vec2<u32>(u_input.d, u_input.a.x)), _wgslsmith_clamp_u32(18350u, u_input.d, 18604u), var_1, abs(var_1)), Struct_2(Struct_1(81211u, vec4<i32>(-1779i, u_input.c, 2147483647i, -1i), u_input.c, vec2<u32>(u_input.a.x, var_1)), Struct_1(u_input.a.x, vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), -6396i, u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -118f) + arg_2.wx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2322f, arg_2.x)))));
    var_2 = global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_mod_u32(abs(41975u ^ var_1), _wgslsmith_sub_u32(u_input.b, u_input.d))), 22u)];
    let var_3 = vec2<f32>(-940f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x))));
    return func_2(_wgslsmith_mod_u32(4294967295u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1, u_input.b), vec3<u32>(4294967295u, var_2.a, var_1)), _wgslsmith_mult_u32(var_1, 75511u)) | ~1u), Struct_3(vec2<bool>(arg_0.a.x, true), _wgslsmith_f_op_vec4_f32(select(arg_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-613f, -237f, -1000f, arg_2.x))) * vec4<f32>(-1715f, -881f, arg_1, 1000f)), vec4<bool>(true, arg_0.a.x, !arg_3.a.x, true)))), ~(~select(var_2.b.xzw, max(var_2.b.xzw, var_2.b.yyw), !arg_0.a.x)), vec2<bool>(true, true));
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = vec4<bool>(true, any(!(!global0[_wgslsmith_index_u32(u_input.b, 26u)])), any(!(!vec4<bool>(true, arg_1.a.x, false, true))), arg_1.a.x);
    var var_1 = u_input.d;
    let var_2 = ~(min(vec2<i32>(firstLeadingBit(u_input.c), _wgslsmith_add_i32(u_input.c, -10426i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 69786i), firstLeadingBit(vec2<i32>(u_input.c, u_input.c)))) << (arg_0.wx % vec2<u32>(32u)));
    global0 = array<vec3<bool>, 26>();
    var var_3 = true;
    return global1[_wgslsmith_index_u32(countOneBits(arg_0.x), 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_7(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(55508u, u_input.d, u_input.a.x, 4294967295u), vec4<u32>(u_input.d, u_input.b, u_input.d, u_input.a.x)), ~vec4<u32>(4294967295u, 0u, 1u, 19814u), vec4<u32>(u_input.a.x, u_input.d, 1u, 1u) & vec4<u32>(u_input.b, 1u, u_input.a.x, u_input.a.x)), func_6(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-318f, -1000f))), 359f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(550f, -395f, 2083f, 1221f))), Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1708f, 2072f, 492f, 728f))))), func_5(true, vec4<u32>(abs(u_input.b) ^ ~4294967295u, ~1u, select(u_input.b, _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.a.x), true), 28708u), Struct_2(func_5(all(vec2<bool>(false, true)), _wgslsmith_div_vec4_u32(vec4<u32>(6997u, u_input.d, u_input.a.x, 0u), vec4<u32>(u_input.d, 23151u, u_input.b, u_input.a.x)), Struct_2(Struct_1(0u, vec4<i32>(20499i, -14551i, u_input.c, 34740i), u_input.c, vec2<u32>(1331u, u_input.b)), global1[_wgslsmith_index_u32(79189u, 22u)], vec2<f32>(494f, -646f))), global1[_wgslsmith_index_u32(~reverseBits(u_input.a.x), 22u)], _wgslsmith_f_op_vec2_f32(-func_1(vec2<f32>(-2308f, 1000f)).b.xx))), vec2<f32>(_wgslsmith_f_op_f32(max(2305f, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 684f))).b.x)), -2358f));
    var var_1 = countOneBits(reverseBits(~_wgslsmith_sub_u32(max(4294967295u, 40477u), 29195u)));
    var_0 = Struct_2(func_7(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 1u), func_5(true, vec4<u32>(u_input.b, 1u, 21034u, u_input.d), Struct_2(var_0.a, Struct_1(67831u, var_0.a.b, -1i, vec2<u32>(var_0.b.a, 1u)), var_0.c)).a, _wgslsmith_dot_vec2_u32(var_0.a.d, var_0.a.d), ~31126u), ~vec4<u32>(6222u, 0u, var_0.a.a, 1u)), Struct_3(func_4(Struct_3(vec2<bool>(true, false), vec4<f32>(var_0.c.x, 1067f, var_0.c.x, var_0.c.x)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), func_2(41546u, Struct_3(vec2<bool>(false, false), vec4<f32>(100f, var_0.c.x, 1112f, var_0.c.x)), vec3<i32>(var_0.a.c, -45417i, 9126i), vec2<bool>(false, true))).xz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 1243f) - vec4<f32>(341f, var_0.c.x, -726f, var_0.c.x))))), func_5(func_2(_wgslsmith_clamp_u32(u_input.a.x, var_0.a.a | 0u, min(23708u, 1u)), Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -2259f, var_0.c.x, -619f))), select(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-19084i, var_0.a.c, u_input.c), true) | (var_0.a.b.yxz >> (vec3<u32>(u_input.d, 102594u, u_input.b) % vec3<u32>(32u))), vec2<bool>(true, true)).a.x, vec4<u32>(0u, 82901u, _wgslsmith_div_u32(var_0.b.d.x, 1u), u_input.a.x >> (76393u % 32u)) >> (vec4<u32>(~var_0.b.d.x, ~4294967295u, 1u, ~12837u) % vec4<u32>(32u)), Struct_2(func_5(true, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, var_0.a.a, 0u, 1u), vec4<u32>(var_0.b.d.x, u_input.a.x, u_input.d, u_input.a.x)), Struct_2(Struct_1(var_0.a.d.x, vec4<i32>(45235i, -38144i, var_0.a.b.x, 23492i), u_input.c, u_input.a), Struct_1(4294967295u, var_0.a.b, 29598i, u_input.a), vec2<f32>(var_0.c.x, var_0.c.x))), Struct_1(u_input.a.x, var_0.a.b, firstTrailingBit(-19369i), vec2<u32>(7499u, u_input.b) << (var_0.b.d % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) + _wgslsmith_div_vec2_f32(var_0.c, vec2<f32>(1156f, var_0.c.x))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(var_0.c.x - -941f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(989f)), _wgslsmith_f_op_f32(-1000f * 884f))), vec2<f32>(1314f, _wgslsmith_f_op_f32(sign(-1861f))))));
    var_0 = Struct_2(var_0.b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b.a, _wgslsmith_dot_vec4_u32(vec4<u32>(8462u, 22808u, 1u, u_input.d), vec4<u32>(1310u, u_input.a.x, 0u, u_input.d))), ~(~var_0.a.d)), 22u)], _wgslsmith_f_op_vec4_f32(func_3(Struct_2(var_0.b, func_5(false, vec4<u32>(var_0.b.a, u_input.d, 0u, 4294967295u), Struct_2(var_0.a, Struct_1(u_input.d, vec4<i32>(1i, 5986i, u_input.c, 1i), u_input.c, var_0.b.d), vec2<f32>(439f, var_0.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.c.x)) - var_0.c)))).zz);
    let var_2 = var_0.c;
    var var_3 = vec3<bool>(any(vec2<bool>(true, true)), false, !(!(any(global0[_wgslsmith_index_u32(u_input.d, 26u)]) && true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_0.a.d.x, 20388u, 4294967295u), vec4<u32>(0u, var_0.a.a, 76219u, 3839u))), 4294967295u, 1u, func_7(~vec4<u32>(0u, var_0.b.d.x, 58715u, 31212u), func_1(var_0.c)).d.x), vec4<u32>(max(var_0.a.a, var_0.b.d.x), u_input.d, ~reverseBits(var_0.b.a), _wgslsmith_mod_u32(0u, u_input.b) | ~12486u)), _wgslsmith_mult_u32(u_input.b | 11565u, _wgslsmith_mod_u32(var_0.a.a, ~1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.a.a, var_0.a.a ^ var_0.b.d.x, func_5(true, vec4<u32>(4294967295u, 65437u, u_input.d, 19381u), Struct_2(Struct_1(0u, vec4<i32>(0i, -32245i, -1i, -2147483647i), -47998i, vec2<u32>(1u, 15346u)), global1[_wgslsmith_index_u32(1u, 22u)], var_0.c)).a) & reverseBits(vec3<u32>(var_0.a.a, 4294967295u, 4294967295u)), min(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(25781u, 1u, u_input.a.x), vec3<u32>(2215u, 4294967295u, 53546u)), vec3<u32>(30405u, 0u, 0u)), vec3<u32>(_wgslsmith_sub_u32(var_0.a.d.x, 0u), var_0.a.a, u_input.b))), 1u & (~4294967295u << (~min(1u, var_0.b.a) % 32u)));
}

