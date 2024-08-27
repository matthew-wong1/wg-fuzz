struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<bool>, 30>;

var<private> global2: vec3<f32>;

var<private> global3: array<vec4<bool>, 14>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<i32>) -> vec3<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -479f), Struct_2(vec4<u32>(~u_input.a, ~31882u, u_input.e.x, ~4294967295u) | _wgslsmith_sub_vec4_u32(~u_input.e, ~vec4<u32>(u_input.e.x, u_input.a, 0u, u_input.c.x)), Struct_1(u_input.e, -(vec4<i32>(29945i, -10311i, u_input.b.x, arg_0.x) >> (u_input.e % vec4<u32>(32u))), ~(~u_input.e), 140f), vec3<bool>(reverseBits(u_input.d) < countOneBits(29333u), true, !any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)), vec2<f32>(-1000f, global2.x))), select(~(vec4<i32>(-2147483647i, arg_0.x, -53460i, arg_0.x) | arg_0), -vec4<i32>(u_input.b.x, 0i, arg_0.x, arg_0.x), ~u_input.a >= 109652u) << (vec4<u32>(u_input.a, ~(u_input.a | u_input.a), _wgslsmith_add_u32(u_input.d & 75573u, select(11228u, u_input.e.x, true)), _wgslsmith_mod_u32(min(82084u, 1u), u_input.c.x)) % vec4<u32>(32u)), u_input.b.x);
    var var_1 = select(_wgslsmith_sub_vec4_i32(firstLeadingBit(-arg_0), vec4<i32>(abs(-32709i), arg_0.x, _wgslsmith_mod_i32(0i, arg_0.x), var_0.b.b.b.x ^ -2147483647i) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.b.a, u_input.e), ~u_input.d, _wgslsmith_sub_u32(u_input.c.x, u_input.d), ~24632u) % vec4<u32>(32u))), vec4<i32>(~(-11212i), u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_0.xy >> (vec2<u32>(67927u, 1454u) % vec2<u32>(32u)), vec2<i32>(arg_0.x, u_input.b.x)), ~arg_0.x), var_0.e), !(all(vec4<bool>(true, true, var_0.b.c.x, false)) || !all(var_0.b.c)));
    global1 = array<vec2<bool>, 30>();
    var var_2 = _wgslsmith_div_u32(reverseBits(firstLeadingBit(u_input.a) ^ var_0.b.b.c.x) & 4294967295u, var_0.b.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), select(1u, u_input.a, var_0.b.c.x)), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(73644u, var_0.b.b.a.x)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.a.x, 41277u), vec2<u32>(u_input.c.x, 49379u)))) % 32u));
    global3 = array<vec4<bool>, 14>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1388f, -1071f, 2299f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>) -> vec4<u32> {
    return vec4<u32>(u_input.d, max(0u, 9965u), 1u, _wgslsmith_add_u32(1u, ~_wgslsmith_mod_u32(arg_1.x, 16331u)));
}

fn func_2() -> Struct_1 {
    return Struct_1(~func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(380f, global2.x, global2.x) - vec3<f32>(global2.x, -1234f, global2.x)) * _wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, -22685i)))), ~vec2<u32>(21064u, u_input.c.x) << (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), abs(vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), -9922i, abs(_wgslsmith_add_i32(u_input.b.x, u_input.b.x)), 0i)), firstLeadingBit(~(~countOneBits(vec4<u32>(56844u, 0u, u_input.a, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-597f, global2.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(-597i, -3990i, -1226i, u_input.b.x))).x)) - global2.x)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    global1 = array<vec2<bool>, 30>();
    let var_0 = -(arg_2.a ^ -vec3<i32>(-arg_0, arg_0 >> (arg_2.d % 32u), reverseBits(arg_2.a.x)));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.c, arg_2.c, 1143f)))), vec3<f32>(arg_1, arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(arg_2.c - arg_2.c)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, arg_1, 2404f) + vec3<f32>(arg_2.c, arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1006f, -740f)))))));
    let var_1 = func_2();
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-812f * -1000f), Struct_2(u_input.e, func_2(), select(!vec3<bool>(true, arg_2.b.x, true), !select(arg_2.b, vec3<bool>(arg_2.b.x, arg_2.b.x, true), true), vec3<bool>(any(vec2<bool>(true, arg_2.b.x)), true, arg_2.b.x & true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-312f)))), _wgslsmith_div_f32(-322f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-203f - -158f), -320f, arg_2.b.x || arg_2.b.x)))), vec4<i32>(-(~(~(-1i))), arg_0, -(~func_2().b.x), -28773i), firstLeadingBit(~(~reverseBits(var_1.b.x))));
    return var_2.b;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> Struct_1 {
    global1 = array<vec2<bool>, 30>();
    global3 = array<vec4<bool>, 14>();
    let var_0 = select(vec2<u32>(max(~(~10210u), _wgslsmith_mod_u32(0u, arg_0.a.x) & ~u_input.e.x), arg_0.b.a.x), u_input.c, func_1(0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -724f) * _wgslsmith_f_op_f32(round(arg_1)))), Struct_3(firstLeadingBit(select(arg_0.b.b.wxz, arg_0.b.b.yww, vec3<bool>(arg_0.c.x, true, arg_0.c.x))), !arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 1533f), _wgslsmith_f_op_f32(-global2.x)), func_2().c.x, ~func_2().c)).c.x);
    var var_1 = u_input.b.x;
    global0 = (i32(-1i) * -1i) << (var_0.x % 32u);
    return func_1(-_wgslsmith_mult_i32(~arg_0.b.b.x, arg_0.b.b.x) << (func_1(_wgslsmith_mod_i32(~11934i, 2147483647i), -658f, Struct_3(arg_0.b.b.yzz | vec3<i32>(0i, 1i, 7469i), select(arg_0.c, arg_0.c, arg_0.c.x), _wgslsmith_f_op_f32(arg_1 - arg_0.b.d), ~24423u, vec4<u32>(4294967295u, arg_0.a.x, 1u, var_0.x))).a.x % 32u), _wgslsmith_f_op_f32(-arg_0.b.d), Struct_3(~vec3<i32>(_wgslsmith_sub_i32(7370i, u_input.b.x), 1i, -1i), arg_0.c, 288f, 4294967295u, ~(~vec4<u32>(u_input.d, arg_0.a.x, 4294967295u, u_input.a)))).b;
}

fn func_6(arg_0: Struct_2) -> bool {
    var var_0 = Struct_2(arg_0.a ^ ~vec4<u32>(~arg_0.a.x, reverseBits(70939u), 1u, 4294967295u), Struct_1(vec4<u32>(arg_0.b.c.x, min(arg_0.b.a.x, _wgslsmith_add_u32(0u, 50872u)), _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(arg_0.b.a.x, 4294967295u, arg_0.b.c.x)), 0u), func_2().b, vec4<u32>(~arg_0.b.a.x, _wgslsmith_mult_u32(u_input.a, u_input.e.x), 4120u, 1u) << (u_input.e % vec4<u32>(32u)), 193f), vec3<bool>(func_1(_wgslsmith_sub_i32(1i, 5297i) ^ u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -840f), Struct_3(arg_0.b.b.xww, vec3<bool>(true, true, arg_0.c.x), arg_0.b.d, _wgslsmith_sub_u32(4294967295u, u_input.c.x), vec4<u32>(u_input.e.x, u_input.d, arg_0.b.a.x, u_input.d))).c.x, arg_0.c.x, func_1(~arg_0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), Struct_3(-vec3<i32>(arg_0.b.b.x, u_input.b.x, -17743i), vec3<bool>(true, true, true), 1f, _wgslsmith_mult_u32(4294967295u, 1u), ~u_input.e)).c.x));
    global0 = max(~_wgslsmith_clamp_i32(2147483647i, ~arg_0.b.b.x, 2147483647i), _wgslsmith_mod_i32(-var_0.b.b.x, arg_0.b.b.x));
    var var_1 = select(firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, var_0.b.a.x, u_input.c.x, arg_0.a.x), select(vec4<u32>(39571u, 38614u, 90764u, 0u), vec4<u32>(arg_0.a.x, 128861u, 1u, var_0.a.x) ^ var_0.a, arg_0.c.x || false))), ~(vec4<u32>(6486u, var_0.a.x, var_0.a.x, _wgslsmith_mod_u32(var_0.a.x, u_input.a)) & min(~var_0.a, abs(u_input.e))), vec4<bool>(all(!vec4<bool>(true, arg_0.c.x, false, false)), true, var_0.c.x, !(true == var_0.c.x)));
    var var_2 = false;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(func_5(Struct_2(~vec4<u32>(arg_0.b.a.x, u_input.e.x, arg_0.b.c.x, 4294967295u), Struct_1(vec4<u32>(88132u, 1u, 22774u, 47009u), vec4<i32>(-5815i, 41107i, var_0.b.b.x, u_input.b.x), vec4<u32>(0u, var_1.x, 4294967295u, 4294967295u), global2.x), !vec3<bool>(false, false, arg_0.c.x)), var_0.b.d, var_0.b.d).d)), -1222f, -1106f, _wgslsmith_f_op_f32(arg_0.b.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-736f - 902f))));
    return all(select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -768f) > _wgslsmith_f_op_f32(848f + var_3.x), any(select(vec4<bool>(arg_0.c.x, var_0.c.x, true, false), vec4<bool>(true, false, arg_0.c.x, true), global3[_wgslsmith_index_u32(4294967295u, 14u)])), any(!global3[_wgslsmith_index_u32(arg_0.b.c.x, 14u)]), false), global3[_wgslsmith_index_u32(u_input.c.x, 14u)], !global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a.x, var_0.a.x) & func_4(vec3<f32>(arg_0.b.d, -1096f, var_3.x), var_1.ww).x, 14u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(-21407i);
    global0 = 0i;
    var var_0 = vec4<bool>((select(1u, ~75150u, u_input.a >= 1u) | ~69306u) != ~(~min(u_input.a, u_input.d)), false, u_input.e.x <= _wgslsmith_clamp_u32(u_input.c.x >> (~4294967295u % 32u), u_input.d, u_input.c.x), func_6(Struct_2(~(~vec4<u32>(u_input.d, 4294967295u, u_input.a, u_input.e.x)), func_5(func_1(u_input.b.x, global2.x, Struct_3(vec3<i32>(0i, u_input.b.x, u_input.b.x), vec3<bool>(false, true, true), global2.x, 24954u, vec4<u32>(82793u, 93696u, 754u, 92132u))), global2.x, func_1(u_input.b.x, global2.x, Struct_3(vec3<i32>(5446i, 1i, u_input.b.x), vec3<bool>(false, false, false), -1629f, u_input.e.x, u_input.e)).b.d), vec3<bool>(u_input.c.x > u_input.a, true, true))));
    let var_1 = Struct_3(vec3<i32>(-(i32(-1i) * -11809i), ~u_input.b.x, 1i) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, func_1(0i, -843f, Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, 1i), var_0.ywy, global2.x, 17459u, vec4<u32>(4294967295u, 26284u, u_input.e.x, 61616u))).b.b.x, 2147483647i), vec3<i32>(-u_input.b.x, countOneBits(u_input.b.x), -18360i)), vec3<bool>(true, var_0.x, (all(var_0.wx) && var_0.x) & all(func_1(u_input.b.x, global2.x, Struct_3(vec3<i32>(-2147483647i, 0i, u_input.b.x), vec3<bool>(var_0.x, var_0.x, false), 2062f, u_input.c.x, vec4<u32>(u_input.e.x, 20788u, 37958u, u_input.c.x))).c.zz)), _wgslsmith_f_op_vec3_f32(func_3(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -21506i, u_input.b.x, u_input.b.x), vec4<i32>(0i, 0i, -83328i, -115580i)) & vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x))).x, u_input.c.x, _wgslsmith_mod_vec4_u32(abs(u_input.e), func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1097f, -732f)))), firstLeadingBit(u_input.c))));
    global0 = i32(-1i) * -u_input.b.x;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c - global2.x))))), func_1(41908i, var_1.c, Struct_3(vec3<i32>(countOneBits(var_1.a.x), var_1.a.x, var_1.a.x), !var_0.ywy, 312f, u_input.a, u_input.e)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.yy)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, var_1.c) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 485f))))))), vec4<i32>(2147483647i, max(abs(-23728i), var_1.a.x), var_1.a.x, _wgslsmith_mod_i32(2147483647i, _wgslsmith_sub_i32(var_1.a.x, var_1.a.x))) << ((u_input.e | u_input.e) % vec4<u32>(32u)), 6233i);
    let var_3 = Struct_3(~(~_wgslsmith_add_vec3_i32(~vec3<i32>(var_1.a.x, u_input.b.x, -2147483647i), vec3<i32>(1i, var_2.e, -1i))), vec3<bool>(var_0.x, var_2.b.c.x, all(!global3[_wgslsmith_index_u32(33202u, 14u)]) | var_0.x), _wgslsmith_f_op_f32(-global2.x), ~var_1.d, ~vec4<u32>(u_input.e.x, ~abs(var_1.d), var_2.b.a.x, u_input.e.x));
    global1 = array<vec2<bool>, 30>();
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.c, var_1.c, 2614f), vec3<f32>(469f, -1000f, 1607f), var_1.b.x)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1543f, _wgslsmith_f_op_f32(min(-413f, _wgslsmith_f_op_f32(sign(286f)))), func_1(var_1.a.x, global2.x, var_3).b.d) + _wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(var_2.d.x, var_1.a.x, u_input.b.x, 1i)))), select(func_1(abs(0i), global2.x, Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, var_1.a.x, var_1.a.x), vec3<i32>(0i, var_3.a.x, -2147483647i)), select(var_0.www, vec3<bool>(var_1.b.x, var_2.b.c.x, var_2.b.c.x), var_1.b), _wgslsmith_f_op_f32(-var_1.c), var_1.d, var_3.e)).c, vec3<bool>(var_1.b.x, true, func_6(func_1(var_3.a.x, -551f, var_3))), !func_1(var_2.e, _wgslsmith_f_op_f32(step(var_1.c, global2.x)), var_1).c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(-((var_2.d >> (var_3.e % vec4<u32>(32u))) ^ func_5(var_2.b, 545f, var_1.c).b), var_2.b.b.b), func_5(Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.e, var_1.e), ~vec4<u32>(31916u, 73798u, 1u, 62378u)), func_2(), select(!vec3<bool>(true, false, var_3.b.x), !var_0.xyy, !vec3<bool>(var_2.b.c.x, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1420f)) + _wgslsmith_f_op_f32(floor(1000f)))), var_2.b.b.d).d, 6384u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(521f * 779f), global2.x, -171f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.c, global2.x, -441f, -725f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c, var_3.c, var_1.c, 312f) * vec4<f32>(var_4.x, -1763f, var_4.x, var_1.c)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -104f, var_4.x, -1000f) - vec4<f32>(var_4.x, var_4.x, global2.x, var_4.x))))));
}

