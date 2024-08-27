struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1685f;

var<private> global1: array<vec4<u32>, 29>;

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: bool) -> vec3<i32> {
    global0 = arg_0.x;
    var var_0 = ~0u;
    let var_1 = ~vec3<u32>(select(~(~48301u), select(u_input.d, arg_2.b.a, arg_3) << (_wgslsmith_mod_u32(4294967295u, 70476u) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(37724i, arg_2.a.x, arg_2.a.x), vec3<i32>(arg_2.c.x, u_input.e, 1i)) <= reverseBits(arg_2.a.x)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(arg_2.b.a, 29u)], global1[_wgslsmith_index_u32(1u, 29u)]), ~global1[_wgslsmith_index_u32(66827u, 29u)]), _wgslsmith_mod_u32(min(u_input.d, arg_2.b.a), 123635u << (arg_2.b.a % 32u))), ~arg_2.b.a);
    var var_2 = Struct_4((vec3<i32>(8183i, _wgslsmith_sub_i32(u_input.a.x, -2147483647i), u_input.c) << (_wgslsmith_mult_vec3_u32(vec3<u32>(35057u, arg_2.b.a, 77471u), ~var_1) % vec3<u32>(32u))) ^ arg_2.c, global3[_wgslsmith_index_u32(4294967295u, 11u)], _wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.a.x, 17111i, u_input.a.x), vec3<i32>(u_input.e, -1i, arg_2.a.x) ^ vec3<i32>(u_input.c, -37370i, u_input.c))), arg_2.c));
    global2 = select(!vec2<bool>(arg_3, arg_3), vec2<bool>(false, _wgslsmith_dot_vec3_u32(var_1, ~var_1) <= 58706u), false);
    return -(vec3<i32>(1i ^ ~arg_2.c.x, var_2.a.x, var_2.a.x) >> (_wgslsmith_add_vec3_u32(vec3<u32>(~var_2.b.a, ~0u, 63861u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 32607u, u_input.d), var_1)) % vec3<u32>(32u)));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: u32) -> i32 {
    global0 = arg_0;
    var var_0 = Struct_2(~(abs(vec3<u32>(arg_2, 0u, 1u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(40256u, u_input.d, 12359u) ^ vec3<u32>(u_input.b, arg_2, 0u), reverseBits(vec3<u32>(6264u, u_input.d, 0u)))));
    let var_1 = Struct_4(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.c, u_input.a.x, -1i) | (vec3<i32>(-2147483647i, 17216i, u_input.e) >> (var_0.a % vec3<u32>(32u))), ~vec3<i32>(49661i, u_input.c, u_input.a.x) << (vec3<u32>(1u, 4294967295u, var_0.a.x) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.e, u_input.e) | vec3<i32>(12016i, 2147483647i, 0i), vec3<i32>(u_input.c, u_input.c, -2147483647i)), ~abs(u_input.c), -u_input.e)), global3[_wgslsmith_index_u32(21395u, 11u)], max(~(~vec3<i32>(-34942i, 18507i, u_input.e)), -func_3(vec2<f32>(arg_0, arg_0), vec3<bool>(arg_1.x, false, global2.x), Struct_4(vec3<i32>(20724i, u_input.a.x, -2147483647i), Struct_1(u_input.d), vec3<i32>(u_input.c, u_input.e, -38493i)), global2.x)) ^ max(firstTrailingBit(vec3<i32>(u_input.e, u_input.e, u_input.a.x)), firstTrailingBit(-vec3<i32>(-1i, u_input.a.x, u_input.c))));
    var var_2 = Struct_5(var_1.b);
    global1 = array<vec4<u32>, 29>();
    return u_input.e;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = Struct_4(~(-vec3<i32>(u_input.a.x, 2147483647i, 48552i) >> ((vec3<u32>(arg_1.a, arg_1.a, 4294967295u) ^ vec3<u32>(u_input.b, u_input.d, 43844u)) % vec3<u32>(32u))) | _wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-19620i, -5442i, u_input.c), vec3<i32>(2147483647i, u_input.a.x, 68763i)), vec3<i32>(u_input.c, u_input.a.x, -21855i) ^ -vec3<i32>(-2147483647i, u_input.e, -30899i)), global3[_wgslsmith_index_u32(~(_wgslsmith_div_u32(select(arg_1.a, 0u, false), ~23647u) << (0u % 32u)), 11u)], vec3<i32>(_wgslsmith_sub_i32(-1i, 1i), _wgslsmith_dot_vec2_i32(-u_input.a, abs(-u_input.a)), select(u_input.c, 9952i, true)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_div_vec3_u32(select(countOneBits(vec3<u32>(arg_1.a, var_0.b.a, 1u)), countOneBits(vec3<u32>(0u, u_input.d, var_0.b.a)), true), _wgslsmith_add_vec3_u32(~vec3<u32>(34514u, 4294967295u, 0u), min(vec3<u32>(1u, u_input.b, u_input.d), vec3<u32>(4294967295u, u_input.b, 1u))))), Struct_1(4294967295u), Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(arg_1.a, var_0.b.a), countOneBits(arg_1.a), arg_1.a), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_0.b.a, 32506u, 17245u)), ~vec3<u32>(6401u, 4294967295u, 0u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-410f * _wgslsmith_f_op_f32(sign(1093f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f - -992f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-216f, -1480f)) + 162f))));
    var_0 = Struct_4(_wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -(~var_0.a), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(var_0.c.x, u_input.a.x, u_input.a.x)) & ~var_0.c, _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_0.a.x, -2147483647i), -var_0.a))), Struct_1(0u), vec3<i32>(_wgslsmith_sub_i32(u_input.c, -2147483647i), -var_0.a.x, _wgslsmith_add_i32(-16370i, -1i)));
    global1 = array<vec4<u32>, 29>();
    return ~vec3<u32>(var_1.a.a.x, 1u, u_input.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_3 {
    var var_0 = Struct_2(func_4(vec4<bool>(false, arg_0.x <= func_2(174f, vec3<bool>(true, true, global2.x), 4294967295u), !global2.x, global2.x), Struct_1(u_input.d)));
    let var_1 = _wgslsmith_div_vec4_u32(max(~vec4<u32>(abs(0u), 1u, _wgslsmith_sub_u32(u_input.d, 0u), _wgslsmith_mod_u32(u_input.b, 1375u)), global1[_wgslsmith_index_u32(max(4294967295u, u_input.d), 29u)]), min(vec4<u32>(reverseBits(~u_input.b), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0.a.xz, vec2<u32>(22805u, var_0.a.x)), max(1u, 5907u)), var_0.a.x, 0u), abs(global1[_wgslsmith_index_u32(0u, 29u)])));
    var var_2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 11904u, var_1.x), vec4<u32>(0u, 1u, 7077u, var_0.a.x) & global1[_wgslsmith_index_u32(3314u, 29u)]) << (vec4<u32>(~1u, _wgslsmith_add_u32(0u, var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, 0u, 77681u), vec4<u32>(26340u, var_1.x, 4294967295u, var_1.x)), var_1.x) % vec4<u32>(32u)), var_1);
    var_0 = Struct_2(~var_2.xyw);
    let var_3 = max(_wgslsmith_add_vec4_i32(min(vec4<i32>(arg_0.x, arg_0.x, 1i, -30342i) | abs(vec4<i32>(0i, -30692i, -1i, 1i)), select(-vec4<i32>(1i, u_input.a.x, arg_0.x, u_input.e), vec4<i32>(arg_0.x, -2147483647i, -10671i, arg_0.x), vec4<bool>(true, global2.x, arg_1, global2.x))), vec4<i32>((2147483647i >> (var_0.a.x % 32u)) | -25994i, arg_0.x, _wgslsmith_add_i32(~arg_0.x, u_input.a.x), arg_0.x)), vec4<i32>(u_input.a.x, ~(~_wgslsmith_div_i32(37162i, -32686i)), 2147483647i, min(~0i, -43438i) | ~func_3(vec2<f32>(746f, -1000f), vec3<bool>(false, true, false), Struct_4(vec3<i32>(u_input.a.x, -26035i, 36231i), Struct_1(29560u), vec3<i32>(arg_0.x, arg_0.x, 1i)), false).x));
    return Struct_3(Struct_2(vec3<u32>(~var_0.a.x & countOneBits(var_2.x), ~40224u, (1u ^ var_0.a.x) & _wgslsmith_mult_u32(u_input.d, 36213u))), Struct_1(1u << ((0u & select(4294967295u, 10943u, false)) % 32u)), Struct_2(abs(vec3<u32>(46542u, 1u, 58748u) & _wgslsmith_sub_vec3_u32(var_1.xzw, var_2.xwy))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-672f + arg_1.x)))), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x - arg_1.x)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), 1f, _wgslsmith_f_op_f32(-1000f - arg_1.x)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) + _wgslsmith_f_op_f32(min(392f, arg_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), -1081f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, var_0.x, arg_1.x) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2479f, -780f, 223f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), vec3<f32>(-1000f, var_0.x, -115f)))));
    var var_1 = Struct_4(abs(_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(u_input.c, -2147483647i, 1i)), vec3<i32>(9093i, -17153i, -30564i) & max(vec3<i32>(0i, 2147483647i, u_input.e), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(-1i, u_input.c, _wgslsmith_add_i32(28157i, u_input.c)))), arg_3.b, vec3<i32>(38489i, u_input.a.x, 15340i));
    global1 = array<vec4<u32>, 29>();
    return Struct_3(Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2 | var_1.b.a, countOneBits(4294967295u), ~arg_2), reverseBits(select(vec3<u32>(arg_3.a.a.x, 5846u, var_1.b.a), vec3<u32>(arg_3.a.a.x, 1u, arg_2), global2.x)))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(0u >> (1u % 32u)), 1u), 11u)], Struct_2(reverseBits(firstTrailingBit(arg_3.c.a))));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    return ~arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_add_u32(~(~95754u), firstTrailingBit(117583u)) & 7659u, func_6(func_5(func_1(vec2<i32>(u_input.e, u_input.e), u_input.c >= u_input.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(820f, -1518f)), _wgslsmith_dot_vec3_u32(~vec3<u32>(5356u, 1u, 1u), ~vec3<u32>(3942u, 80691u, u_input.d)), Struct_3(func_1(u_input.a, global2.x).c, global3[_wgslsmith_index_u32(abs(4294967295u), 11u)], func_1(vec2<i32>(-58876i, u_input.a.x), global2.x).c)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, -1232f, -224f, -1465f))))), func_1(select(_wgslsmith_mod_vec2_i32(u_input.a, u_input.a), ~vec2<i32>(u_input.e, 67630i), !global2.x), true).b));
    var var_1 = Struct_5(global3[_wgslsmith_index_u32(1u, 11u)]);
    global3 = array<Struct_1, 11>();
    var var_2 = Struct_4(reverseBits(-(-vec3<i32>(53561i, -16809i, 0i) | vec3<i32>(31815i, 34892i, u_input.a.x))), func_5(Struct_3(func_1(max(u_input.a, vec2<i32>(19273i, u_input.c)), global2.x).a, var_1.a, Struct_2(~vec3<u32>(68111u, var_0.x, 23447u))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2230f, 699f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1173f, -633f), vec2<f32>(122f, 983f), select(vec2<bool>(true, false), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x)))))), 1u, Struct_3(func_5(func_5(Struct_3(Struct_2(vec3<u32>(1u, 1u, 1u)), var_1.a, Struct_2(vec3<u32>(4294967295u, 7188u, 96425u))), vec2<f32>(-894f, 147f), 8407u, Struct_3(Struct_2(vec3<u32>(79971u, 71340u, 32104u)), var_1.a, Struct_2(vec3<u32>(4294967295u, u_input.d, var_0.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-389f, -1000f) * vec2<f32>(1043f, -1000f)), 2572u, Struct_3(Struct_2(vec3<u32>(u_input.b, 40774u, var_1.a.a)), global3[_wgslsmith_index_u32(var_1.a.a, 11u)], Struct_2(vec3<u32>(var_1.a.a, var_0.x, var_0.x)))).a, global3[_wgslsmith_index_u32(72713u, 11u)], func_5(Struct_3(Struct_2(vec3<u32>(1u, 38772u, u_input.b)), global3[_wgslsmith_index_u32(18354u, 11u)], Struct_2(vec3<u32>(var_0.x, var_0.x, 18590u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-248f, -1216f)), countOneBits(9584u), Struct_3(Struct_2(vec3<u32>(33009u, 54775u, 1u)), global3[_wgslsmith_index_u32(17139u, 11u)], Struct_2(vec3<u32>(var_0.x, u_input.b, var_1.a.a)))).a)).b, _wgslsmith_sub_vec3_i32(min(select(vec3<i32>(31961i, 812i, 2147483647i), vec3<i32>(u_input.a.x, u_input.c, -11968i), vec3<bool>(global2.x, global2.x, global2.x)), _wgslsmith_div_vec3_i32(vec3<i32>(-2071i, -45341i, 52397i), vec3<i32>(-22056i, u_input.c, 11442i))), -select(vec3<i32>(0i, u_input.a.x, -18806i), vec3<i32>(u_input.c, 1230i, u_input.a.x), true)) << (func_4(select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(false, false, global2.x, true), vec4<bool>(global2.x, global2.x, true, false)), func_5(Struct_3(Struct_2(vec3<u32>(var_1.a.a, 4294967295u, 4294967295u)), Struct_1(u_input.b), Struct_2(vec3<u32>(8207u, 1u, 0u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(662f, 433f)), 4294967295u ^ var_0.x, Struct_3(Struct_2(vec3<u32>(3414u, 4294967295u, var_1.a.a)), Struct_1(u_input.d), Struct_2(vec3<u32>(var_0.x, var_1.a.a, var_1.a.a)))).b) % vec3<u32>(32u)));
    let var_3 = func_5(func_1(select(var_2.c.zx, vec2<i32>(-1i, 25127i), vec2<bool>(true, global2.x)), global2.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-877f, 1144f) - vec2<f32>(538f, 625f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(991f, -1490f))))))), func_5(Struct_3(Struct_2(vec3<u32>(69358u, var_0.x, 62009u) >> (vec3<u32>(u_input.d, 67126u, var_2.b.a) % vec3<u32>(32u))), var_1.a, Struct_2(select(vec3<u32>(var_2.b.a, var_1.a.a, var_0.x), vec3<u32>(3767u, 48965u, 55523u), global2.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(1736f, 620f), vec2<f32>(707f, 1071f)))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1844f, 1396f)))), 33902u, func_1((vec2<i32>(u_input.a.x, u_input.a.x) << (vec2<u32>(u_input.b, var_0.x) % vec2<u32>(32u))) << ((vec2<u32>(var_1.a.a, var_2.b.a) >> (vec2<u32>(29286u, 21448u) % vec2<u32>(32u))) % vec2<u32>(32u)), false)).b.a, func_5(func_1(var_2.a.yz, global2.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-142f, -135f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1048f, 1147f), vec2<f32>(-493f, -2247f), true))))), ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(79760u, var_0.x, u_input.b, 7225u)), abs(global1[_wgslsmith_index_u32(0u, 29u)])), func_5(func_5(Struct_3(Struct_2(vec3<u32>(var_0.x, 18246u, 4294967295u)), Struct_1(var_0.x), Struct_2(vec3<u32>(var_0.x, 0u, var_2.b.a))), vec2<f32>(-930f, 390f), _wgslsmith_mult_u32(24270u, var_1.a.a), func_1(vec2<i32>(u_input.e, -2172i), global2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2491f, -146f), vec2<f32>(-371f, 524f))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-364f, 1526f)))), ~var_0.x, func_1(u_input.a, true)))).c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a);
}

