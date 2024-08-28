struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true));

var<private> global1: bool = false;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: Struct_4) -> u32 {
    let var_0 = !arg_0.a.a.wwy;
    global0 = array<vec4<bool>, 12>();
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(~0u >> (_wgslsmith_mod_u32(arg_3.c.x | 17005u, _wgslsmith_sub_u32(arg_2.a.x, 32252u)) % 32u), 4294967295u), (~arg_3.c.x & arg_2.a.x) & _wgslsmith_dot_vec2_u32(~arg_2.a, ~_wgslsmith_sub_vec2_u32(arg_2.a, arg_3.c.zx)), ~37778u);
    global0 = array<vec4<bool>, 12>();
    var var_2 = Struct_5(Struct_4(!select(arg_2.d.a.a.zw, !vec2<bool>(arg_0.a.a.x, var_0.x), arg_3.a.x && arg_0.a.a.x), ~select(abs(var_1), arg_3.b ^ u_input.d, true), ~arg_3.c), Struct_2(Struct_1(!(!global0[_wgslsmith_index_u32(42544u, 12u)]), vec2<f32>(_wgslsmith_f_op_f32(floor(-238f)), _wgslsmith_f_op_f32(trunc(-200f))), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(0i, 35055i, -1i, -1i)), vec4<i32>(u_input.a.x, 2147483647i, arg_0.a.c.x, 40116i)), arg_2.d.a.a.x)));
    return abs(~firstTrailingBit(~(~1u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = abs(vec4<i32>(select(min(arg_0.a.c.x | arg_0.a.c.x, _wgslsmith_div_i32(u_input.a.x, 10952i)), firstTrailingBit(_wgslsmith_mod_i32(arg_0.a.c.x, arg_0.a.c.x)), !all(arg_0.a.a)), arg_0.a.c.x, u_input.a.x, 29530i));
    let var_1 = -(~u_input.a);
    global0 = array<vec4<bool>, 12>();
    let var_2 = ~var_0.zy;
    global0 = array<vec4<bool>, 12>();
    return -(~_wgslsmith_mult_i32(arg_0.a.c.x, var_0.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<u32>) -> Struct_2 {
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    var var_0 = u_input.c;
    let var_1 = min(arg_0.x, u_input.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1297f * 1f))), 687f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(258f, 1434f)), -1139f, true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-702f, -1442f, -1996f))))))));
    return Struct_2(Struct_1(global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(arg_2.x, u_input.d, var_1)), 12u)], var_2.xz, vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, arg_1, u_input.a.x, -4604i), vec4<i32>(u_input.b, -90832i, arg_1, -10733i)), ~u_input.b, firstTrailingBit(u_input.b)) ^ -u_input.a, false));
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 4294967295u, u_input.c, u_input.c), ~vec4<u32>(arg_0.b, 91867u, arg_0.c.x, 71153u)), select(~vec4<u32>(26809u, u_input.c, 4294967295u, 1u), firstTrailingBit(vec4<u32>(u_input.d, 4294967295u, u_input.d, 4294967295u)), !vec4<bool>(true, arg_1, true, false))), vec4<u32>(arg_0.c.x, 13620u, u_input.c, 1u), vec4<u32>(~_wgslsmith_clamp_u32(arg_0.b, arg_0.b, arg_0.b), u_input.c, arg_0.b, (u_input.c ^ arg_0.b) >> (func_2(Struct_2(Struct_1(vec4<bool>(false, arg_0.a.x, true, false), vec2<f32>(-554f, 1529f), vec4<i32>(73914i, 0i, u_input.b, u_input.b), arg_0.a.x)), u_input.a.x, Struct_3(arg_0.c.zz, -2147483647i, Struct_1(vec4<bool>(arg_0.a.x, false, arg_1, arg_0.a.x), vec2<f32>(-1000f, -240f), u_input.a, arg_0.a.x), Struct_2(Struct_1(global0[_wgslsmith_index_u32(arg_0.c.x, 12u)], vec2<f32>(-1728f, -510f), u_input.a, arg_0.a.x)), -334f), arg_0) % 32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(func_3(Struct_2(Struct_1(vec4<bool>(true, arg_1, arg_0.a.x, arg_0.a.x), vec2<f32>(1539f, -388f), vec4<i32>(u_input.b, u_input.b, u_input.a.x, 1i), arg_0.a.x)), true), -(~u_input.a.x)), u_input.a.zx >> (vec2<u32>(0u, firstTrailingBit(0u)) % vec2<u32>(32u))), ~vec4<u32>(arg_0.b, 56071u, countOneBits(arg_0.c.x), select(~arg_0.b, _wgslsmith_sub_u32(11220u, arg_0.c.x), all(vec4<bool>(arg_1, true, false, arg_0.a.x)))));
    var var_1 = vec4<bool>(all(vec2<bool>(var_0.a.d, !(!arg_0.a.x))), func_4(reverseBits(min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, arg_0.c.x, u_input.d, 38273u), vec4<u32>(arg_0.b, 109473u, 17176u, 1113u)), vec4<u32>(0u, 63994u, 1u, 1u))), var_0.a.c.x, _wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, arg_0.c.x, arg_0.b, 49867u)), vec4<u32>(_wgslsmith_mult_u32(4294967295u, arg_0.c.x), arg_0.c.x | arg_0.c.x, countOneBits(1u), _wgslsmith_div_u32(arg_0.b, 4294967295u)))).a.d, any(vec4<bool>(~2147483647i != u_input.a.x, arg_0.a.x, (var_0.a.c.x >= u_input.a.x) && !arg_0.a.x, true)), false);
    var var_2 = var_0.a.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(select(var_0.a.b.x, var_2.x, true)))), 1517f, _wgslsmith_f_op_f32(486f - -171f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a.b.x, 231f))))));
    let var_4 = Struct_3(~(~vec2<u32>(~arg_0.c.x, abs(64590u))), var_0.a.c.x >> (u_input.c % 32u), Struct_1(func_4(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.c, arg_0.c.x), vec4<u32>(12973u, 15039u, u_input.d, u_input.d)), -u_input.a.x >> (abs(1u) % 32u), vec4<u32>(~arg_0.b, ~4294967295u, _wgslsmith_dot_vec2_u32(arg_0.c.yx, vec2<u32>(arg_0.b, u_input.c)), arg_0.c.x)).a.a, func_4(vec4<u32>(u_input.d, 0u, u_input.d, 8147u) & vec4<u32>(u_input.c, u_input.d, 4294967295u, u_input.c), u_input.b, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 44862u, u_input.d, u_input.c), vec4<u32>(4294967295u, arg_0.c.x, 7967u, arg_0.c.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.d, arg_0.b, 43078u), vec4<u32>(93784u, 8897u, 1u, 9719u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_0.c.x, 35447u, arg_0.b), vec4<u32>(u_input.d, u_input.d, 4294967295u, 0u)))).a.b, vec4<i32>(~_wgslsmith_dot_vec2_i32(var_0.a.c.wy, vec2<i32>(var_0.a.c.x, var_0.a.c.x)), -firstLeadingBit(1i), abs(_wgslsmith_add_i32(var_0.a.c.x, 2147483647i)), -18730i), !arg_1), func_4(vec4<u32>(u_input.d, abs(0u), min(0u, 37920u) ^ u_input.c, _wgslsmith_div_u32(select(u_input.d, arg_0.c.x, false), _wgslsmith_mult_u32(4294967295u, arg_0.c.x))), -31796i, max(abs(vec4<u32>(25792u, 4294967295u, u_input.c, 1u)), ~vec4<u32>(arg_0.c.x, 35258u, 7515u, arg_0.b)) >> (~vec4<u32>(56683u, 40066u, arg_0.c.x, u_input.c) % vec4<u32>(32u))), var_3.x);
    return var_0.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_4(select(func_4(~vec4<u32>(11562u, u_input.c, 83625u, u_input.c), -18693i, firstLeadingBit(countOneBits(vec4<u32>(arg_1.a.x, u_input.d, 4294967295u, 36782u)))).a.a.zz, !func_1(Struct_4(vec2<bool>(false, arg_0.a.a.x), 36348u, vec3<u32>(4294967295u, arg_1.a.x, 1u)), true).a.wz, vec2<bool>(false, reverseBits(u_input.a.x) >= -37655i)), arg_1.a.x, ~reverseBits(vec3<u32>(~30707u, 1u, u_input.c << (45738u % 32u))));
    global0 = array<vec4<bool>, 12>();
    let var_1 = Struct_4(func_4(vec4<u32>(u_input.d, 39527u, max(var_0.c.x, 0u), abs(1u)) ^ (~vec4<u32>(var_0.c.x, arg_1.a.x, u_input.d, 1u) ^ vec4<u32>(u_input.c, arg_1.a.x, 1u, 1u)), -(~min(u_input.b, 10244i)), vec4<u32>(4294967295u >> (u_input.d % 32u), 1u, max(4294967295u, var_0.b), 0u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c, 4294967295u, u_input.d), vec4<u32>(4294967295u, u_input.c, 1u, 49753u)) % vec4<u32>(32u))).a.a.yz, _wgslsmith_mult_u32(20813u, ~arg_1.a.x), vec3<u32>(~57995u, ~u_input.c, _wgslsmith_clamp_u32(~(~u_input.d), _wgslsmith_clamp_u32(u_input.d ^ u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_0.c.x, 26342u)), var_0.b), ~_wgslsmith_clamp_u32(arg_1.a.x, var_0.c.x, var_0.b))));
    global1 = arg_2.x;
    let var_2 = all(vec3<bool>(all(arg_0.a.a), !(true && !var_0.a.x), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.b, 4294967295u, u_input.c, var_1.c.x)), ~vec4<u32>(u_input.c, var_1.c.x, arg_1.a.x, 4294967295u)) <= arg_1.a.x));
    return Struct_1(select(vec4<bool>(false, var_0.a.x, true, _wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(arg_1.a.x, 17269u, 58183u)) < ~arg_1.a.x), vec4<bool>(arg_2.x, false, !(!arg_1.c.d), var_1.a.x), !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_1.c, vec3<u32>(u_input.c, u_input.c, 4294967295u)), max(42554u, var_1.b)), 12u)]), arg_0.a.b, ~min(_wgslsmith_mod_vec4_i32(arg_0.a.c, min(arg_0.a.c, vec4<i32>(1i, arg_1.c.c.x, u_input.a.x, u_input.b))), vec4<i32>(arg_0.a.c.x, _wgslsmith_sub_i32(arg_1.c.c.x, u_input.b), -2147483647i, ~u_input.b)), ~(arg_1.a.x ^ (arg_1.a.x << (1u % 32u))) <= reverseBits(func_2(arg_1.d, 1i, Struct_3(arg_1.a, u_input.b, arg_1.d.a, Struct_2(arg_0.a), arg_0.a.b.x), Struct_4(var_0.a, arg_1.a.x, vec3<u32>(u_input.c, 6017u, var_0.c.x)))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = func_5(func_4(firstLeadingBit(abs(vec4<u32>(43768u, u_input.d, u_input.d, 0u))), -1i, vec4<u32>(u_input.c, abs(29064u) | u_input.d, 1u, 1u)), Struct_3(vec2<u32>(~1u, u_input.d), -1i, func_5(arg_0, Struct_3(reverseBits(vec2<u32>(88897u, u_input.c)), -661i, func_5(arg_0, Struct_3(vec2<u32>(0u, u_input.d), -13011i, Struct_1(arg_0.a.a, arg_1, vec4<i32>(u_input.a.x, u_input.b, 2147483647i, -2147483647i), arg_0.a.d), arg_0, arg_1.x), arg_0.a.a.xyz), func_4(vec4<u32>(27611u, u_input.c, u_input.d, 42281u), arg_0.a.c.x, vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.d)), _wgslsmith_f_op_f32(ceil(-1000f))), arg_0.a.a.yxw), arg_0, -818f), select(vec3<bool>(true, arg_0.a.a.x || false, !func_1(Struct_4(vec2<bool>(false, arg_0.a.a.x), u_input.d, vec3<u32>(u_input.c, 10978u, u_input.c)), true).d), vec3<bool>(select(true, true, func_4(vec4<u32>(u_input.d, u_input.d, u_input.c, u_input.d), arg_0.a.c.x, vec4<u32>(9505u, 1u, 72900u, u_input.d)).a.a.x), arg_0.a.a.x, u_input.d != u_input.d), func_5(Struct_2(func_4(vec4<u32>(u_input.d, 1u, u_input.d, 0u), arg_0.a.c.x, vec4<u32>(0u, u_input.c, 1u, u_input.c)).a), Struct_3(select(vec2<u32>(70227u, 5572u), vec2<u32>(46150u, u_input.c), arg_0.a.a.zy), _wgslsmith_mod_i32(-36369i, -1i), arg_0.a, func_4(vec4<u32>(1u, u_input.c, 1u, u_input.c), arg_0.a.c.x, vec4<u32>(18940u, 42110u, u_input.c, u_input.c)), 172f), vec3<bool>(true, arg_0.a.a.x, !arg_0.a.a.x)).a.wyx));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.c, u_input.c, u_input.c)), ~vec3<u32>(u_input.d, 32836u, u_input.d)), vec3<u32>(_wgslsmith_clamp_u32(18439u, 4300u, 0u) & _wgslsmith_div_u32(24694u, 1u), u_input.c ^ u_input.d, u_input.c)), 7398u, _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(0u, u_input.c, u_input.d)));
    var var_2 = Struct_4(arg_0.a.a.xw, firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~var_1.xy, vec2<u32>(18276u, var_1.x)), vec2<u32>(10262u << (var_1.x % 32u), _wgslsmith_mult_u32(4294967295u, u_input.d)))), ~vec3<u32>(0u, _wgslsmith_div_u32(var_1.x, 22000u), 1u));
    let var_3 = func_5(arg_0, Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(24268u, ~18474u), _wgslsmith_clamp_vec2_u32(var_1.yx, var_1.yx, vec2<u32>(var_1.x, u_input.c) & vec2<u32>(1u, u_input.d))), func_1(Struct_4(vec2<bool>(var_0.a.x, var_2.a.x), _wgslsmith_clamp_u32(var_2.c.x, 2644u, var_2.c.x), vec3<u32>(1u, var_1.x, 4294967295u)), true).c.x, Struct_1(!(!vec4<bool>(var_2.a.x, var_0.a.x, true, arg_0.a.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 1429f) * _wgslsmith_div_vec2_f32(arg_0.a.b, vec2<f32>(-884f, 893f))), arg_0.a.c, true), Struct_2(func_4(~vec4<u32>(u_input.c, 6089u, 0u, var_2.c.x), _wgslsmith_dot_vec3_i32(var_0.c.yzz, vec3<i32>(u_input.a.x, arg_0.a.c.x, arg_0.a.c.x)), ~vec4<u32>(21825u, var_2.b, u_input.d, var_2.b)).a), 333f), var_0.a.wzy).a.zw;
    let var_4 = ~(~47789u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(func_5(Struct_2(func_1(Struct_4(vec2<bool>(false, false), u_input.d, vec3<u32>(1u, 19761u, u_input.c)), true)), Struct_3(min(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 1u)), 1i, func_1(Struct_4(vec2<bool>(true, true), u_input.c, vec3<u32>(177014u, 1u, u_input.c)), true), func_4(vec4<u32>(4294967295u, 50660u, 1u, u_input.d), u_input.b, vec4<u32>(0u, u_input.d, 0u, u_input.d)), _wgslsmith_f_op_f32(148f + -337f)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-405f, -1022f), _wgslsmith_f_op_f32(-539f - 304f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(933f, 1906f) * -2463f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-601f, _wgslsmith_f_op_f32(f32(-1f) * -1899f)))));
    let var_1 = !select(vec2<bool>((20861i >= u_input.b) && var_0.a.a.x, func_4(vec4<u32>(11283u, 26804u, u_input.d, 90527u), var_0.a.c.x, vec4<u32>(u_input.d, 38357u, u_input.c, u_input.d)).a.b.x > _wgslsmith_f_op_f32(trunc(-2232f))), var_0.a.a.zw, var_0.a.a.x);
    var var_2 = func_6(func_6(func_4(vec4<u32>(85574u, u_input.c << (4294967295u % 32u), u_input.d << (10539u % 32u), firstLeadingBit(u_input.c)), -430i, ~(vec4<u32>(9249u, 1u, u_input.c, 21808u) << (vec4<u32>(u_input.d, u_input.d, 0u, u_input.c) % vec4<u32>(32u)))), var_0.a.b), vec2<f32>(782f, _wgslsmith_f_op_f32(var_0.a.b.x * _wgslsmith_div_f32(var_0.a.b.x, 730f)))).a.a.zzz;
    var var_3 = Struct_3(vec2<u32>(abs(u_input.d), ~(~u_input.c) | _wgslsmith_div_u32(reverseBits(32968u), min(4294967295u, u_input.c))), ~72008i, var_0.a, var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(133f, var_0.a.b.x))))));
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x - var_3.d.a.b.x) * _wgslsmith_f_op_f32(-func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.d, var_3.a.x, 13843u), vec4<u32>(var_3.a.x, var_3.a.x, var_3.a.x, 0u)), _wgslsmith_mod_i32(-13473i, u_input.a.x), vec4<u32>(u_input.d, u_input.d, u_input.d, var_3.a.x)).a.b.x))));
    var var_5 = Struct_4(!var_3.c.a.wy, u_input.c, vec3<u32>(~(~(~var_3.a.x)), max(_wgslsmith_mult_u32(select(44086u, 37217u, var_0.a.a.x), u_input.d), ~0u ^ ~var_3.a.x), ~(~_wgslsmith_clamp_u32(1u, 56291u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(8957u >> (var_3.a.x % 32u), _wgslsmith_div_u32(u_input.c, _wgslsmith_clamp_u32(max(var_5.b, 7039u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_3.a, var_5.c.yz), var_5.c.zx | var_3.a), min(firstLeadingBit(1u), 0u))), ~select(var_5.c, vec3<u32>(max(var_3.a.x, 0u), 4294967295u, u_input.d ^ 0u), var_0.a.a.ywz));
}

