struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_3 {
    let var_0 = -967f;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_0, arg_3.a.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(554f * arg_3.a.e.x)));
    return arg_3.a;
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = arg_0.b.b.x & _wgslsmith_mod_u32(_wgslsmith_sub_u32(~0u, arg_0.b.b.x), abs(u_input.d));
    var var_1 = u_input.d == (u_input.e.x | arg_0.c.b.x);
    var var_2 = Struct_4(func_1(~(~min(u_input.d, u_input.e.x)), select(select(!vec4<bool>(arg_0.d, arg_0.d, arg_0.d, false), select(vec4<bool>(false, arg_0.d, arg_0.d, true), vec4<bool>(false, true, true, false), vec4<bool>(arg_0.d, arg_0.d, false, arg_0.d)), arg_0.d), !select(vec4<bool>(true, false, false, false), vec4<bool>(arg_0.d, arg_0.d, false, false), true), arg_0.d), -abs(vec4<i32>(-2147483647i, -67135i, -1i, u_input.a.x)) & _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.c.a.x, u_input.a.x, arg_0.a, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, 7889i, u_input.a.x)), Struct_4(func_1(arg_0.b.b.x, !vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d), -vec4<i32>(arg_0.a, -32361i, u_input.a.x, -18456i), Struct_4(Struct_3(arg_0.c.c.x, arg_0, 56558i, 0u, vec4<f32>(arg_0.c.c.x, 1000f, arg_0.c.c.x, arg_0.c.c.x)), arg_0.c.b, 4294967295u)), ~(~vec3<u32>(u_input.d, u_input.b.x, 4294967295u)), func_1(arg_0.c.b.x, !vec4<bool>(false, false, arg_0.d, arg_0.d), vec4<i32>(1i, -43632i, 0i, -27042i), Struct_4(Struct_3(arg_0.c.c.x, arg_0, arg_0.c.a.x, u_input.e.x, arg_0.c.c), vec3<u32>(arg_0.b.b.x, 1u, u_input.b.x), arg_0.b.b.x)).b.b.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_0.b.b.x, u_input.d), countOneBits(28394u), 4294967295u), vec3<u32>(_wgslsmith_div_u32(92945u, 52819u), _wgslsmith_mod_u32(u_input.e.x, arg_0.b.b.x), _wgslsmith_clamp_u32(arg_0.b.b.x, arg_0.c.b.x, arg_0.b.b.x))) << (_wgslsmith_div_vec3_u32(arg_0.c.b, _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.b.x, u_input.d, 29034u) >> (u_input.e % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(49940u, u_input.d, u_input.e.x), arg_0.b.b))) % vec3<u32>(32u)), ~69572u);
    let var_3 = select(!vec4<bool>(func_1(var_2.b.x, !vec4<bool>(arg_0.d, false, arg_0.d, false), ~vec4<i32>(-2916i, 9814i, -57882i, u_input.c.x), Struct_4(var_2.a, arg_0.c.b, arg_0.b.b.x)).b.d, true, any(vec3<bool>(false, false, var_2.a.b.d)), !select(true, var_2.a.b.d, true)), select(select(vec4<bool>(func_1(24573u, vec4<bool>(false, arg_0.d, true, true), vec4<i32>(arg_0.c.a.x, 1i, var_2.a.b.c.a.x, -2147483647i), Struct_4(Struct_3(-563f, arg_0, arg_0.a, var_2.b.x, arg_0.c.c), arg_0.c.b, u_input.d)).b.d, arg_0.c.a.x > arg_0.c.a.x, true, func_1(var_2.b.x, vec4<bool>(arg_0.d, false, var_2.a.b.d, arg_0.d), vec4<i32>(u_input.c.x, arg_0.c.a.x, var_2.a.b.b.a.x, arg_0.b.a.x), Struct_4(var_2.a, vec3<u32>(arg_0.c.b.x, arg_0.c.b.x, u_input.e.x), 0u)).b.d), !vec4<bool>(var_2.a.b.d, arg_0.d, var_2.a.b.d, false), vec4<bool>(true, true, true, true)), vec4<bool>(var_2.a.b.d, arg_0.d, true, true), var_2.a.b.d), any(vec3<bool>(!arg_0.d, false, !arg_0.d)));
    var var_4 = select(vec2<i32>(_wgslsmith_div_i32(u_input.c.x, 0i >> (var_2.b.x % 32u)), 2147483647i), arg_0.b.a.zz, all(vec4<bool>(true, !arg_0.d, true, true))) & u_input.a.xz;
    return ~(-countOneBits(reverseBits(var_2.a.b.c.a)));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: f32, arg_3: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(select(-608f, -2032f, arg_0.a.b.d))), arg_2)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1708f * _wgslsmith_f_op_f32(abs(arg_0.a.a))))), _wgslsmith_f_op_f32(f32(-1f) * -229f))));
    var var_1 = vec4<i32>(-1i, u_input.c.x, ~firstTrailingBit(-arg_1), arg_0.a.c);
    let var_2 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-12314i, _wgslsmith_mod_i32(0i, i32(-1i) * -41632i), 2147483647i), abs(-func_3(Struct_2(u_input.a.x, Struct_1(var_1.zyy, u_input.e, var_0), Struct_1(vec3<i32>(arg_1, u_input.a.x, -2147483647i), vec3<u32>(u_input.e.x, 4294967295u, 32908u), var_0), arg_0.a.b.d)))), select(arg_0.a.b.b.b, ~((vec3<u32>(10841u, 15750u, arg_0.c) >> (u_input.e % vec3<u32>(32u))) | abs(u_input.e)), vec3<bool>(true, !(37446i < arg_1), all(vec2<bool>(false, false)))), arg_0.a.e);
    var var_3 = 874f;
    var_3 = 657f;
    return Struct_4(arg_0.a, countOneBits(vec3<u32>(1229u, ~4294967295u, arg_0.a.b.c.b.x)), u_input.e.x << (~countOneBits(4294967295u) % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: i32) -> Struct_4 {
    var var_0 = func_1(arg_2.x, select(select(!(!vec4<bool>(arg_1.a.b.d, arg_1.a.b.d, arg_1.a.b.d, arg_1.a.b.d)), !vec4<bool>(true, arg_1.a.b.d, true, false), select(vec4<bool>(arg_1.a.b.d, false, arg_1.a.b.d, false), !vec4<bool>(arg_1.a.b.d, arg_1.a.b.d, arg_1.a.b.d, arg_1.a.b.d), select(vec4<bool>(false, arg_1.a.b.d, false, false), vec4<bool>(arg_1.a.b.d, true, false, arg_1.a.b.d), arg_1.a.b.d))), !(!vec4<bool>(false, arg_1.a.b.d, arg_1.a.b.d, true)), arg_3 <= (1i | func_1(23345u, vec4<bool>(arg_1.a.b.d, true, arg_1.a.b.d, arg_1.a.b.d), vec4<i32>(arg_1.a.c, -17485i, 28005i, arg_1.a.b.a), arg_1).c)), -_wgslsmith_mult_vec4_i32(-(~vec4<i32>(arg_3, 4531i, -2147483647i, 0i)), ~select(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a.x, 1i), vec4<i32>(arg_1.a.b.b.a.x, arg_3, arg_1.a.b.a, arg_3), arg_1.a.b.d)), arg_1).b;
    let var_1 = i32(-1i) * -2147483647i;
    let var_2 = Struct_1((func_2(func_2(Struct_4(arg_1.a, arg_2.yyx, arg_2.x), arg_1.a.b.a, 1049f, vec2<i32>(arg_1.a.b.c.a.x, var_0.b.a.x)), -u_input.a.x, _wgslsmith_f_op_f32(step(arg_1.a.b.c.c.x, 357f)), _wgslsmith_mod_vec2_i32(u_input.a.yy, vec2<i32>(2147483647i, 11496i))).a.b.b.a & _wgslsmith_sub_vec3_i32(vec3<i32>(54980i, -1i, arg_3), min(arg_1.a.b.b.a, var_0.c.a))) ^ var_0.c.a, arg_2.wzy, func_1(~arg_0, vec4<bool>(true, all(!vec3<bool>(var_0.d, var_0.d, false)), (var_0.b.a.x == 90415i) && true, any(select(vec3<bool>(true, arg_1.a.b.d, var_0.d), vec3<bool>(false, arg_1.a.b.d, arg_1.a.b.d), arg_1.a.b.d))), vec4<i32>(max(_wgslsmith_mult_i32(var_1, 67868i), func_1(124379u, vec4<bool>(arg_1.a.b.d, var_0.d, arg_1.a.b.d, var_0.d), vec4<i32>(-2147483647i, 1393i, u_input.c.x, -7318i), arg_1).c), func_1(13863u, vec4<bool>(var_0.d, false, arg_1.a.b.d, false), ~vec4<i32>(-1i, u_input.a.x, var_1, var_1), arg_1).c, 1i, 2147483647i), Struct_4(Struct_3(995f, arg_1.a.b, u_input.c.x, 21467u, _wgslsmith_f_op_vec4_f32(vec4<f32>(582f, 1000f, 323f, arg_1.a.b.c.c.x) - arg_1.a.b.c.c)), ~vec3<u32>(u_input.b.x, 27104u, arg_1.a.d), func_1(u_input.d, select(vec4<bool>(var_0.d, true, var_0.d, var_0.d), vec4<bool>(true, arg_1.a.b.d, true, var_0.d), true), vec4<i32>(34523i, var_1, -30394i, u_input.c.x), Struct_4(arg_1.a, arg_1.b, 0u)).b.c.b.x)).b.c.c);
    var_0 = func_1(_wgslsmith_clamp_u32(15663u, 134488u, arg_1.a.d), vec4<bool>(abs(4294967295u) == _wgslsmith_mod_u32(1u, arg_2.x), ~func_2(Struct_4(Struct_3(474f, arg_1.a.b, arg_3, 4294967295u, vec4<f32>(var_0.c.c.x, -804f, -604f, 2863f)), arg_2.zyw, 0u), 3800i, var_2.c.x, vec2<i32>(6603i, -2147483647i)).b.x <= _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_2.xxy), ~vec3<u32>(923u, arg_0, arg_0)), any(!vec3<bool>(true, true, var_0.d)) != !arg_1.a.b.d, select(_wgslsmith_mod_u32(4624u, 28845u) != func_2(arg_1, var_1, arg_1.a.a, vec2<i32>(arg_1.a.b.a, var_0.c.a.x)).b.x, func_1(4294967295u, vec4<bool>(var_0.d, true, arg_1.a.b.d, true), -vec4<i32>(23247i, -25030i, var_1, u_input.a.x), Struct_4(Struct_3(var_2.c.x, Struct_2(-83588i, Struct_1(vec3<i32>(var_0.c.a.x, 1i, var_2.a.x), vec3<u32>(var_2.b.x, 0u, arg_1.a.b.b.b.x), var_0.b.c), arg_1.a.b.c, true), 0i, arg_1.c, vec4<f32>(-1000f, -767f, 1478f, arg_1.a.e.x)), arg_1.a.b.c.b, 1u)).b.d, !any(vec3<bool>(true, arg_1.a.b.d, arg_1.a.b.d)))), ~vec4<i32>(i32(-1i) * -2147483647i, 1i, var_2.a.x, var_1) >> ((select(_wgslsmith_div_vec4_u32(arg_2, arg_2), countOneBits(vec4<u32>(u_input.b.x, u_input.d, var_0.b.b.x, arg_2.x)), !vec4<bool>(false, var_0.d, arg_1.a.b.d, true)) >> (~(~arg_2) % vec4<u32>(32u))) % vec4<u32>(32u)), func_2(func_2(Struct_4(arg_1.a, vec3<u32>(var_2.b.x, u_input.b.x, arg_0), ~0u), _wgslsmith_div_i32(u_input.c.x, -2147483647i), _wgslsmith_f_op_f32(func_1(1u, vec4<bool>(arg_1.a.b.d, var_0.d, arg_1.a.b.d, var_0.d), vec4<i32>(0i, -2147483647i, arg_3, var_0.c.a.x), Struct_4(Struct_3(1240f, Struct_2(-2147483647i, arg_1.a.b.c, Struct_1(vec3<i32>(var_0.b.a.x, 29103i, var_2.a.x), vec3<u32>(0u, 24409u, 1u), vec4<f32>(var_2.c.x, var_0.c.c.x, 1133f, var_2.c.x)), arg_1.a.b.d), -60282i, arg_0, arg_1.a.e), vec3<u32>(arg_1.a.b.b.b.x, 22622u, arg_1.b.x), var_2.b.x)).b.c.c.x * _wgslsmith_f_op_f32(-var_2.c.x)), var_0.c.a.yx << (vec2<u32>(0u, 31685u) % vec2<u32>(32u))), 1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.a + 1141f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -2125f))), var_2.a.yy)).b;
    var_0 = arg_1.a.b;
    return Struct_4(arg_1.a, _wgslsmith_div_vec3_u32(arg_2.ywy ^ var_0.c.b, vec3<u32>(select(~41730u, _wgslsmith_clamp_u32(4294967295u, 21853u, var_2.b.x), true), ~(1u & arg_2.x), var_0.b.b.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(var_2.b.x, var_2.b.x, 4294967295u)), vec3<u32>(select(var_2.b.x, 0u, var_0.d), var_0.c.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, var_0.c.b.x, arg_2.x, 1u), vec4<u32>(77444u, arg_0, arg_2.x, 93782u)))), _wgslsmith_add_u32(func_2(func_2(arg_1, var_0.a, -2668f, vec2<i32>(u_input.c.x, arg_3)), ~2147483647i, 1738f, vec2<i32>(arg_3, arg_3) ^ vec2<i32>(var_1, arg_1.a.c)).c, 0u)));
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    var var_0 = ~select((vec4<u32>(42992u, arg_0.c, u_input.d, 1u) >> ((vec4<u32>(u_input.e.x, u_input.d, 0u, u_input.b.x) >> (vec4<u32>(arg_0.c, 11856u, 4294967295u, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u))) | firstTrailingBit(~vec4<u32>(arg_0.b.x, 5970u, u_input.b.x, u_input.b.x)), firstLeadingBit(vec4<u32>(1u, ~u_input.b.x, ~arg_0.c, ~16495u)), vec4<bool>(arg_0.a.b.d, true, _wgslsmith_f_op_f32(select(arg_0.a.b.b.c.x, -958f, true)) != -126f, !(56301u != u_input.b.x)));
    let var_1 = _wgslsmith_f_op_f32(-func_4(54740u, func_2(arg_0, func_4(select(22365u, arg_0.a.d, arg_0.a.b.d), Struct_4(arg_0.a, vec3<u32>(31101u, u_input.e.x, u_input.b.x), arg_0.b.x), select(vec4<u32>(1u, arg_0.c, 1u, 12501u), vec4<u32>(48436u, 0u, 1u, u_input.b.x), false), ~arg_0.a.b.c.a.x).a.c, _wgslsmith_div_f32(arg_0.a.a, _wgslsmith_f_op_f32(arg_0.a.a + 1578f)), countOneBits(vec2<i32>(arg_0.a.b.c.a.x, arg_0.a.c))), vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.e.yx), arg_0.b.xx ^ vec2<u32>(1u, arg_0.b.x)), 4294967295u, func_4(47321u, func_4(1u, arg_0, vec4<u32>(var_0.x, arg_0.a.d, var_0.x, 1u), 2147483647i), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.x, var_0.x, 19390u, 0u), vec4<u32>(92819u, 4294967295u, 1u, 1u)), u_input.c.x).a.d, ~(var_0.x >> (u_input.d % 32u))), -_wgslsmith_sub_i32(-1i, arg_0.a.c)).a.e.x);
    var_0 = countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(19318u | _wgslsmith_div_u32(u_input.d, 31407u), var_0.x, ~(~4294967295u), ~56729u ^ var_0.x), ~firstTrailingBit(~vec4<u32>(u_input.d, arg_0.c, 0u, u_input.d))));
    var_0 = vec4<u32>(1u, 1u, 5234u, 0u);
    var var_2 = arg_0;
    return func_2(arg_0, ~2147483647i, _wgslsmith_f_op_f32(-924f * arg_0.a.a), vec2<i32>((1i << (_wgslsmith_mod_u32(18279u, arg_0.a.b.c.b.x) % 32u)) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(32572u, var_0.x, 0u), vec3<u32>(u_input.b.x, u_input.e.x, u_input.d)) % 32u), abs(-1i))).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(~(~min(1u, 19602u)), func_2(Struct_4(func_1(u_input.d, vec4<bool>(true, true, false, true), vec4<i32>(-8397i, 10894i, -2147483647i, 0i), Struct_4(Struct_3(-1841f, Struct_2(9266i, Struct_1(u_input.a, vec3<u32>(62935u, u_input.d, u_input.b.x), vec4<f32>(-842f, 1044f, 937f, 811f)), Struct_1(u_input.a, u_input.e, vec4<f32>(-1000f, -1000f, -259f, -1010f)), true), 2147483647i, u_input.b.x, vec4<f32>(969f, -268f, -1042f, -533f)), vec3<u32>(17500u, u_input.e.x, 4294967295u), u_input.e.x)), ~u_input.e, u_input.b.x), ~(1i | u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1164f, 595f) * 499f), max(u_input.a.zy >> (u_input.b % vec2<u32>(32u)), u_input.c << (u_input.e.zy % vec2<u32>(32u)))), vec4<u32>(func_1(_wgslsmith_div_u32(1u, 1u), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true), vec4<i32>(u_input.a.x, 2147483647i, -40828i, u_input.c.x), func_2(Struct_4(Struct_3(1081f, Struct_2(2147483647i, Struct_1(u_input.a, u_input.e, vec4<f32>(727f, -652f, -596f, 298f)), Struct_1(vec3<i32>(u_input.a.x, u_input.c.x, u_input.a.x), u_input.e, vec4<f32>(793f, 1279f, -434f, -2573f)), true), u_input.c.x, u_input.d, vec4<f32>(-1047f, -1578f, -448f, 960f)), vec3<u32>(u_input.e.x, 46828u, u_input.d), u_input.e.x), u_input.a.x, -661f, u_input.a.xz)).d, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.d, 1u), vec3<u32>(5962u, 14348u, u_input.e.x)), u_input.d, 4294967295u), -select(u_input.a.x, u_input.c.x, false)));
    var_0 = func_5(Struct_4(func_4(firstTrailingBit(max(u_input.b.x, 1u)), func_4(u_input.e.x, Struct_4(Struct_3(var_0.b.c.x, Struct_2(var_0.b.a.x, var_0.b, var_0.c, true), 17211i, u_input.e.x, vec4<f32>(1000f, 1812f, -426f, var_0.c.c.x)), u_input.e, 1u), vec4<u32>(var_0.c.b.x, 46878u, u_input.e.x, 48621u) & vec4<u32>(3545u, 43652u, var_0.c.b.x, u_input.b.x), _wgslsmith_sub_i32(73187i, -1i)), reverseBits(~vec4<u32>(var_0.b.b.x, u_input.e.x, 0u, var_0.c.b.x)), max(i32(-1i) * -18003i, u_input.c.x >> (0u % 32u))).a, vec3<u32>(firstTrailingBit(abs(var_0.c.b.x)), func_5(func_4(3476u, Struct_4(Struct_3(var_0.b.c.x, Struct_2(1i, Struct_1(vec3<i32>(u_input.a.x, -36745i, var_0.a), vec3<u32>(0u, 73114u, 49394u), vec4<f32>(610f, var_0.b.c.x, 1000f, var_0.c.c.x)), var_0.c, var_0.d), 1i, u_input.b.x, vec4<f32>(var_0.c.c.x, 238f, var_0.c.c.x, 311f)), vec3<u32>(var_0.c.b.x, u_input.e.x, 1u), 4294967295u), vec4<u32>(u_input.e.x, 1u, 0u, 25217u), var_0.c.a.x)).c.b.x, 0u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.b.b.zy << (vec2<u32>(var_0.b.b.x, var_0.c.b.x) % vec2<u32>(32u)), firstTrailingBit(u_input.e.xy)), var_0.b.b.zy)));
    var var_1 = Struct_3(func_1(u_input.d, vec4<bool>(false, var_0.d, var_0.d, var_0.d), vec4<i32>(u_input.c.x, _wgslsmith_div_i32(func_3(Struct_2(-1i, var_0.c, var_0.b, var_0.d)).x, countOneBits(1853i)), u_input.c.x, 7623i), Struct_4(func_2(func_4(var_0.b.b.x, Struct_4(Struct_3(var_0.c.c.x, Struct_2(239i, Struct_1(u_input.a, vec3<u32>(var_0.b.b.x, var_0.b.b.x, 4294967295u), vec4<f32>(var_0.c.c.x, -868f, -1873f, var_0.b.c.x)), Struct_1(var_0.b.a, vec3<u32>(var_0.c.b.x, 117394u, 45843u), vec4<f32>(-1205f, -1000f, 1321f, var_0.b.c.x)), true), -2147483647i, 0u, var_0.b.c), u_input.e, u_input.e.x), vec4<u32>(1u, u_input.d, 1u, u_input.b.x), u_input.c.x), firstTrailingBit(u_input.a.x), -651f, ~vec2<i32>(28465i, u_input.a.x)).a, ~reverseBits(var_0.c.b), ~86875u)).b.c.c.x, func_4((func_5(Struct_4(Struct_3(696f, Struct_2(2147483647i, var_0.c, Struct_1(vec3<i32>(var_0.a, 14932i, 31408i), u_input.e, vec4<f32>(691f, 364f, 744f, var_0.c.c.x)), false), var_0.b.a.x, var_0.b.b.x, vec4<f32>(-486f, var_0.b.c.x, 455f, var_0.b.c.x)), u_input.e, u_input.b.x)).c.b.x & (var_0.b.b.x & u_input.e.x)) >> (_wgslsmith_mult_u32(~var_0.c.b.x, ~18292u) % 32u), func_2(func_2(Struct_4(Struct_3(var_0.c.c.x, Struct_2(-29113i, Struct_1(var_0.c.a, var_0.c.b, vec4<f32>(-258f, -364f, var_0.b.c.x, var_0.c.c.x)), var_0.b, var_0.d), 33071i, 0u, var_0.c.c), var_0.b.b, 82589u), -var_0.b.a.x, var_0.b.c.x, firstTrailingBit(vec2<i32>(47816i, u_input.a.x))), var_0.a, -665f, ~(~u_input.c)), (vec4<u32>(13810u, var_0.b.b.x, 12821u, u_input.b.x) | vec4<u32>(u_input.b.x, 0u, 0u, 0u)) ^ reverseBits(~vec4<u32>(18778u, u_input.e.x, 4294967295u, 0u)), _wgslsmith_mod_i32(-(~2147483647i), u_input.c.x)).a.b, 41821i, var_0.b.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.b.c, var_0.b.c), _wgslsmith_f_op_vec4_f32(round(var_0.b.c))))));
    var_0 = func_4(reverseBits(abs(16090u)), Struct_4(func_4(var_1.b.b.b.x, func_4(select(u_input.b.x, u_input.e.x, var_1.b.d), func_2(Struct_4(Struct_3(-1099f, var_1.b, var_0.b.a.x, u_input.b.x, var_1.e), var_0.c.b, u_input.d), 1i, 1101f, vec2<i32>(var_0.b.a.x, var_0.c.a.x)), min(vec4<u32>(var_1.b.b.b.x, 1u, var_0.b.b.x, u_input.d), vec4<u32>(var_1.b.c.b.x, 1u, 4294967295u, var_1.b.c.b.x)), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), abs(vec4<u32>(var_0.c.b.x, u_input.e.x, var_0.b.b.x, 38053u)), ~(-33039i)).a, vec3<u32>(_wgslsmith_mult_u32(func_2(Struct_4(Struct_3(-420f, Struct_2(u_input.c.x, var_0.c, Struct_1(var_0.c.a, var_1.b.c.b, var_1.b.b.c), var_1.b.d), 0i, 117916u, var_0.b.c), vec3<u32>(7308u, 0u, 0u), var_1.b.c.b.x), 548i, 758f, var_0.b.a.yx).a.d, _wgslsmith_add_u32(0u, var_0.b.b.x)), u_input.d, 1u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~var_0.b.b.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, var_0.b.b.x, 31104u), u_input.e))), vec4<u32>(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.b.c.b.x, 82130u, 89715u), u_input.e, vec3<bool>(var_1.b.d, var_0.d, var_0.d)), firstTrailingBit(vec3<u32>(var_0.c.b.x, 0u, u_input.e.x))), u_input.e.x, ~(~40892u), firstTrailingBit(~_wgslsmith_div_u32(u_input.d, var_1.b.c.b.x))), abs(var_0.a)).a.b;
    var_0 = var_1.b;
    let var_2 = -1145f;
    var var_3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(-1724f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.c.x - -949f) - var_0.b.c.x)), _wgslsmith_f_op_f32(floor(-699f))), _wgslsmith_f_op_vec2_f32(var_1.e.yx + _wgslsmith_f_op_vec2_f32(var_0.b.c.zw * _wgslsmith_f_op_vec2_f32(-var_3.c.c.wy))));
}

