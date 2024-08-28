struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(16620u, 1u, vec4<i32>(-11963i, i32(-2147483648), 36306i, -46115i), 2147483647i), Struct_2(46130u, 4294967295u, vec4<i32>(20600i, 2147483647i, 48715i, -28721i), -1i));

var<private> global1: vec4<f32>;

var<private> global2: vec4<i32> = vec4<i32>(-1662i, 0i, -1i, -53646i);

var<private> global3: array<f32, 20>;

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = global4.e;
    let var_1 = -global2.yw;
    global3 = array<f32, 20>();
    var var_2 = ~(~select(arg_2, ~reverseBits(73565u), true));
    var var_3 = Struct_2(global4.b, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, arg_2, 2378u, arg_3.b.a)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.a, u_input.e, global0.a.a, 0u), vec4<u32>(41002u, 1u, 49918u, 98155u)), ~arg_2, global4.b, u_input.d)), ~reverseBits(-arg_0.a.c) & arg_0.a.c, _wgslsmith_mult_i32(~(u_input.b >> (global4.b % 32u)) & -53210i, 0i));
    return select(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(global4.d, false, false), vec3<bool>(global4.d, false, false)), !vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, arg_1, true)))), select(select(!select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, false, true), vec3<bool>(false, global4.d, arg_1)), vec3<bool>(false, true, true), select(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, global4.d, arg_1), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), all(vec2<bool>(true, arg_1)))), vec3<bool>(true, true, true), !all(!vec4<bool>(global4.d, arg_1, false, true))), !(!(!select(vec3<bool>(global4.d, arg_1, arg_1), vec3<bool>(arg_1, true, false), false))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_3(global0.a, arg_0);
    var var_1 = 46250u >> (arg_0.a % 32u);
    let var_2 = arg_0;
    var_0 = Struct_3(var_0.b, Struct_2(_wgslsmith_mult_u32(arg_1.x, _wgslsmith_sub_u32(~arg_1.x, _wgslsmith_add_u32(5995u, 4398u))), 1u, var_0.b.c, -_wgslsmith_dot_vec2_i32(vec2<i32>(27981i, -25759i), vec2<i32>(global4.e.x, var_0.b.c.x))));
    let var_3 = select(vec3<bool>(all(select(!vec4<bool>(true, false, true, global4.d), vec4<bool>(false, true, global4.d, false), select(vec4<bool>(false, false, global4.d, true), vec4<bool>(true, true, global4.d, true), vec4<bool>(true, true, true, global4.d)))), all(select(!vec3<bool>(global4.d, true, true), vec3<bool>(true, global4.d, global4.d), !vec3<bool>(global4.d, false, false))), false), select(select(vec3<bool>(false, true, any(vec3<bool>(false, global4.d, true))), select(!vec3<bool>(global4.d, global4.d, false), !vec3<bool>(false, false, global4.d), global4.d | true), vec3<bool>(select(global4.d, false, global4.d), any(vec3<bool>(false, false, global4.d)), global4.d)), select(!func_3(Struct_3(var_2, var_2), global4.d, global0.b.a, Struct_3(Struct_2(arg_0.a, 9195u, vec4<i32>(global0.b.c.x, arg_0.c.x, global4.e.x, var_2.c.x), var_0.b.c.x), Struct_2(4294967295u, 39665u, vec4<i32>(global0.b.c.x, -2147483647i, global0.a.c.x, var_0.a.c.x), 54496i))), select(!vec3<bool>(false, true, global4.d), vec3<bool>(true, true, true), !vec3<bool>(false, global4.d, false)), !(false & global4.d)), select(vec3<bool>(true, true, true), !vec3<bool>(global4.d, true, global4.d), false)), !vec3<bool>(true, global4.d, global4.d));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(450f))))), global1.x), select(abs(40254u), ~29480u, false != all(select(vec3<bool>(global4.d, global4.d, false), vec3<bool>(true, true, true), global4.d))), vec2<f32>(127f, global4.c.x), global4.d, firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.c.x, 51569i, 0i), global0.b.c.yyz), global0.a.c.yzx)) >> (countOneBits(vec3<u32>(~var_0.a.a, global0.b.a, var_0.b.a)) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    global4 = func_2(Struct_2(_wgslsmith_dot_vec4_u32(countOneBits(abs(vec4<u32>(4294967295u, 0u, u_input.a, 0u))), abs(vec4<u32>(0u, 4294967295u, 1u, global4.b) ^ vec4<u32>(0u, arg_2.b, 1u, 1u))), global0.a.a >> ((global4.b >> (firstTrailingBit(global0.a.b) % 32u)) % 32u), vec4<i32>(~min(-823i, -35754i), 1i, -abs(0i), ~_wgslsmith_clamp_i32(44705i, global2.x, -1i)), firstTrailingBit(0i) ^ min(global0.a.d << (1u % 32u), arg_0.c.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global4.b, 4294967295u), vec2<u32>(0u, 0u)) & _wgslsmith_mult_vec2_u32(~vec2<u32>(global0.a.b, global4.b), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, 70484u), vec2<u32>(global0.a.a, 3144u))), firstLeadingBit(max(vec2<u32>(arg_2.b, 21421u) & vec2<u32>(1u, 28646u), abs(vec2<u32>(arg_0.a, 34234u))))));
    var var_0 = arg_2.d;
    global2 = max(vec4<i32>(firstLeadingBit(1i & global2.x), -arg_1, -39405i, firstLeadingBit(-63956i)), reverseBits(vec4<i32>(global4.e.x, 2147483647i, _wgslsmith_add_i32(-37491i, global2.x), global0.b.c.x))) | arg_0.c;
    let var_1 = Struct_3(Struct_2(~(_wgslsmith_mod_u32(4294967295u, arg_2.b) ^ 0u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 5878u), vec2<u32>(global4.b, u_input.a), vec2<bool>(false, global4.d)), vec2<u32>(arg_2.b, 0u)) >> (global0.b.a % 32u), select(_wgslsmith_mult_vec4_i32(global0.a.c, select(global0.a.c, global0.b.c, global4.d)), ~select(vec4<i32>(-1i, 2147483647i, -1i, arg_1), vec4<i32>(arg_0.d, global4.e.x, 35693i, global2.x), true), select(vec4<bool>(true, arg_2.d, false, arg_2.d), vec4<bool>(false, arg_2.d, true, global4.d), !vec4<bool>(false, global4.d, global4.d, global4.d))), u_input.b), Struct_2(~firstTrailingBit(select(global0.a.b, arg_0.a, true)), 0u, select(_wgslsmith_add_vec4_i32(arg_0.c, abs(global0.b.c)), _wgslsmith_div_vec4_i32(vec4<i32>(global4.e.x, global4.e.x, -56257i, 42711i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global4.e.x, 2147483647i, arg_2.e.x, 1i), vec4<i32>(2147483647i, u_input.c, arg_2.e.x, 14373i), global0.a.c)), vec4<bool>(global0.a.b <= arg_2.b, !global4.d, global4.d | global4.d, all(vec2<bool>(true, global4.d)))), ~(~0i) & global4.e.x));
    return Struct_2(1u, func_2(Struct_2((global4.b ^ var_1.a.b) | 1u, firstLeadingBit(44206u), arg_0.c, _wgslsmith_dot_vec3_i32(global4.e, vec3<i32>(var_1.a.d, 0i, arg_1))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(25405u, arg_0.a), select(vec2<u32>(global0.a.b, 0u), vec2<u32>(39019u, global4.b), false))).b, _wgslsmith_clamp_vec4_i32(firstTrailingBit(-vec4<i32>(-42602i, arg_0.d, arg_2.e.x, u_input.b)), var_1.b.c ^ firstTrailingBit(arg_0.c), _wgslsmith_div_vec4_i32(vec4<i32>(17033i, -11527i, arg_1, 19023i) ^ vec4<i32>(global0.a.c.x, arg_1, global2.x, 1i), arg_0.c)) >> (countOneBits(vec4<u32>(18770u ^ global4.b, arg_2.b & arg_0.a, min(0u, 41757u), ~64438u)) % vec4<u32>(32u)), arg_1);
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: bool, arg_3: Struct_4) -> Struct_4 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(-116f)), _wgslsmith_f_op_f32(ceil(global4.a)));
    let var_1 = ~(~firstLeadingBit(vec2<u32>(global4.b, 23478u))) ^ vec2<u32>(1u, arg_0.b);
    global2 = arg_0.a.c & arg_3.a.c;
    var var_2 = !func_3(Struct_3(func_4(Struct_2(global0.b.a, var_1.x, vec4<i32>(-2147483647i, 0i, -1i, 1i), 0i), abs(-44963i), Struct_1(1000f, 0u, global4.c, false, vec3<i32>(arg_3.c.x, arg_3.c.x, 1i))), func_4(Struct_2(58697u, 34032u, vec4<i32>(arg_0.a.c.x, 17884i, -73082i, -2147483647i), -47864i), global4.e.x, Struct_1(317f, 6626u, global4.c, arg_2, global0.a.c.wzz))), arg_2, ~4294967295u, Struct_3(arg_3.a, Struct_2(func_4(Struct_2(22154u, 114474u, arg_0.c, 1i), -13257i, Struct_1(1000f, u_input.e, vec2<f32>(arg_3.d, 802f), global4.d, global2.xxx)).a, ~global0.b.a, arg_0.c, select(0i, 0i, true)))).xz;
    let var_3 = 1u & ~(firstTrailingBit(global4.b & 4294967295u) ^ 0u);
    return arg_3;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_4(Struct_2(global0.b.b, global0.a.b, firstLeadingBit(countOneBits(~vec4<i32>(-46974i, global4.e.x, 1i, u_input.b))), 0i), 4294967295u, ~global0.b.c, -1117f);
    var var_1 = func_5(Struct_4(func_4(var_0.a, 0i, func_2(var_0.a, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.b.a, global4.b), vec2<u32>(global4.b, 0u)))), (_wgslsmith_div_u32(12623u, 798u) ^ _wgslsmith_div_u32(var_0.b, 1u)) | ((114767u << (0u % 32u)) << (~var_0.b % 32u)), var_0.a.c, 1113f), ~global4.e.x, true, Struct_4(Struct_2(~func_4(Struct_2(4294967295u, u_input.d, vec4<i32>(32170i, -1i, u_input.b, global2.x), -2147483647i), u_input.c, Struct_1(global4.c.x, global4.b, vec2<f32>(global4.a, var_0.d), global4.d, global0.b.c.zyz)).b, func_4(Struct_2(u_input.e, u_input.a, var_0.a.c, global4.e.x), 0i, func_2(Struct_2(1u, global0.b.b, vec4<i32>(0i, -71039i, 349i, -1i), 49335i), vec2<u32>(0u, 12913u))).a, vec4<i32>(~global2.x, 2147483647i, -2147483647i, _wgslsmith_mult_i32(0i, -10583i)), global2.x), min(min(48097u, u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 1u, 25244u), vec3<u32>(0u, global0.a.b, var_0.a.b))) | (global0.a.b ^ u_input.a), select(-(~global0.b.c), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.b, -44691i, global0.a.c.x), vec4<i32>(global4.e.x, -42199i, -1i, 1i)), all(func_3(Struct_3(Struct_2(1u, 0u, var_0.a.c, global4.e.x), Struct_2(0u, 57439u, var_0.c, 14457i)), true, var_0.b, Struct_3(Struct_2(0u, global4.b, global0.a.c, global0.a.c.x), var_0.a)).xy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -180f)))), global4.a));
    var var_3 = func_5(Struct_4(Struct_2(_wgslsmith_mod_u32(var_1.b, min(50001u, 4294967295u)), u_input.a, max(vec4<i32>(u_input.c, 12960i, global4.e.x, var_0.c.x), vec4<i32>(global2.x, 0i, var_1.c.x, -1i)), -min(-12760i, 15263i)), _wgslsmith_div_u32(global0.a.b, 3186u) << (var_0.a.a % 32u), _wgslsmith_add_vec4_i32(~(-vec4<i32>(-2147483647i, u_input.c, 2147483647i, global4.e.x)), ~vec4<i32>(11518i, -16732i, 2147483647i, -16938i)), _wgslsmith_f_op_f32(-func_2(Struct_2(var_1.b, var_0.a.b, var_0.a.c, -7775i), vec2<u32>(98072u, 45192u) >> (vec2<u32>(0u, var_0.a.b) % vec2<u32>(32u))).c.x)), _wgslsmith_div_i32(-10415i, firstTrailingBit(countOneBits(reverseBits(70977i)))), true, var_0).a;
    var var_4 = !(!(!vec2<bool>(arg_1.x, !arg_1.x)));
    return Struct_1(_wgslsmith_f_op_f32(func_5(func_5(var_0, ~21925i, all(vec4<bool>(true, var_4.x, true, false)), func_5(Struct_4(Struct_2(var_0.a.a, 77036u, var_0.a.c, var_3.d), 48365u, var_3.c, global3[_wgslsmith_index_u32(47151u, 20u)]), var_3.c.x, true, Struct_4(var_1.a, global4.b, global0.a.c, var_1.d))), 274i, !(arg_1.x | true), Struct_4(Struct_2(0u, global0.a.a, vec4<i32>(17186i, var_3.c.x, 1i, var_3.d), 1i), ~4294967295u, -global0.b.c, _wgslsmith_f_op_f32(sign(arg_0.x)))).d - arg_0.x), ~var_1.b, vec2<f32>(483f, -1641f), !(arg_0.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(477f, -471f)) - global3[_wgslsmith_index_u32(abs(global0.b.a), 20u)])), vec3<i32>(var_0.a.c.x | -1i, 60113i, -2147483647i));
}

fn func_6(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = func_5(Struct_4(global0.b, ~u_input.a >> (firstLeadingBit(u_input.e) % 32u), abs(vec4<i32>(-1i, -2147483647i, 1i, arg_3.e.x) >> (~vec4<u32>(17573u, u_input.d, arg_2.b, 62018u) % vec4<u32>(32u))), arg_2.a), 15223i, true, Struct_4(func_4(global0.b, 1i, func_2(Struct_2(53400u, global4.b, vec4<i32>(1i, 0i, -54853i, 24012i), 1i), arg_0.zx & vec2<u32>(arg_0.x, 1u))), u_input.a, vec4<i32>(4487i, -reverseBits(2147483647i), 3163i, 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x)))));
    var var_1 = var_0.a.c;
    let var_2 = vec2<bool>(false, true);
    var var_3 = Struct_4(Struct_2(_wgslsmith_sub_u32(global4.b, arg_2.b | 6218u), arg_2.b, min(var_0.c, firstLeadingBit(global0.b.c)), -var_1.x), ~(_wgslsmith_div_u32(arg_3.b, 0u) << (_wgslsmith_mult_u32(~15090u, _wgslsmith_dot_vec2_u32(arg_0.zy, arg_0.xx)) % 32u)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(var_0.c, firstLeadingBit(vec4<i32>(var_0.c.x, -2147483647i, var_0.a.c.x, 1i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 20542u, 1u, arg_2.b), vec4<u32>(global0.a.a, 1u, 0u, var_0.a.a)) % vec4<u32>(32u)), global0.b.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1239f)), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1010f))))))));
    let var_4 = func_2(Struct_2(~15047u, arg_3.b, var_3.c, -17046i), vec2<u32>(firstLeadingBit(min(55816u, 34752u)) >> (_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.a.a, arg_2.b), var_0.a.a) % 32u), var_0.b));
    return Struct_2(func_1(global1.xyz, var_2).b, ~6690u, ~vec4<i32>(1i, 2147483647i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(28334i, 9338i, -2147483647i), vec3<i32>(global0.b.d, 0i, -1795i)), ~5434i, 0i), -31498i), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~countOneBits(~global0.a.b), 0u);
    let var_1 = Struct_3(func_6(~(~vec3<u32>(var_0.x, var_0.x, global0.b.b)), !all(!vec3<bool>(true, true, global4.d)), func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(268f, -1358f, global4.a) + global1.xyz))), vec2<bool>(global4.d, true)), func_2(func_5(func_5(Struct_4(global0.b, 0u, global0.a.c, -2438f), -6984i, global4.d, Struct_4(global0.b, var_0.x, vec4<i32>(-17192i, global2.x, 1i, u_input.b), global3[_wgslsmith_index_u32(19955u, 20u)])), _wgslsmith_dot_vec3_i32(global0.b.c.xyy, global4.e), !global4.d, func_5(Struct_4(Struct_2(8867u, 4294967295u, vec4<i32>(global2.x, 68464i, -32017i, -41330i), 9769i), 0u, global0.a.c, 274f), global0.b.d, true, Struct_4(global0.a, global4.b, vec4<i32>(u_input.b, global2.x, u_input.b, global4.e.x), -861f))).a, vec2<u32>(~1u, u_input.a))), global0.a);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2170f, 1222f)))))));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a, -1032f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x - global4.a), -451f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 20u)] + global3[_wgslsmith_index_u32(47679u, 20u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-322f, var_2, var_2, 1841f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.a, 1105f, _wgslsmith_div_f32(782f, global1.x), _wgslsmith_f_op_f32(select(992f, 295f, true)))))));
    global4 = Struct_1(1185f, ~(~u_input.a) & func_6(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(21309u, 29509u, 65619u), vec3<u32>(0u, 5487u, 1905u)), select(vec3<u32>(4294967295u, 1u, 55090u), vec3<u32>(u_input.a, 4294967295u, 0u), global4.d)), true, Struct_1(_wgslsmith_f_op_f32(global4.a - var_2), 65900u, _wgslsmith_f_op_vec2_f32(-global4.c), any(vec3<bool>(global4.d, true, global4.d)), global4.e), func_2(Struct_2(1u, var_1.b.a, var_1.a.c, -16303i), vec2<u32>(var_1.a.a, global0.a.a))).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3[_wgslsmith_index_u32(global4.b, 20u)], -158f), vec2<f32>(global4.a, global4.a))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global1.xz, vec2<f32>(-1000f, 1000f))) + global1.wz), vec2<f32>(-3069f, var_2))), _wgslsmith_f_op_f32(min(2203f, -769f)) <= global4.a, select(func_2(Struct_2(39382u, 1u, vec4<i32>(global4.e.x, -2147483647i, global0.b.c.x, u_input.b), -1i), vec2<u32>(var_0.x, u_input.d)).e | vec3<i32>(func_4(Struct_2(global4.b, 0u, vec4<i32>(var_1.b.c.x, 1i, 2147483647i, 0i), u_input.b), var_1.b.d, Struct_1(global3[_wgslsmith_index_u32(1098u, 20u)], u_input.a, global4.c, global4.d, vec3<i32>(15910i, u_input.b, global2.x))).d, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.d, global2.x), global2.xw), ~global2.x), func_2(func_5(func_5(Struct_4(global0.b, 58322u, vec4<i32>(global4.e.x, var_1.b.c.x, -13855i, 2147483647i), global3[_wgslsmith_index_u32(global4.b, 20u)]), var_1.b.d, false, Struct_4(Struct_2(0u, 4294967295u, global0.a.c, global0.b.c.x), var_0.x, vec4<i32>(var_1.a.d, 0i, u_input.c, 2147483647i), 791f)), 27100i, true, func_5(Struct_4(global0.a, 40145u, vec4<i32>(65544i, global4.e.x, var_1.b.c.x, 1437i), global1.x), var_1.a.c.x, true, Struct_4(var_1.a, u_input.e, vec4<i32>(1i, u_input.b, 17855i, -10873i), global3[_wgslsmith_index_u32(4294967295u, 20u)]))).a, ~firstTrailingBit(vec2<u32>(global0.b.a, var_0.x))).e, all(!(!vec4<bool>(true, global4.d, global4.d, global4.d)))));
    let var_3 = global0.b.c;
    let var_4 = vec4<i32>(31234i, -(~(-(i32(-1i) * -61703i))), var_1.a.d & 1i, abs(reverseBits(select(global0.b.d, _wgslsmith_mult_i32(2147483647i, global0.b.d), !global4.d))));
    global2 = -var_4;
    var var_5 = abs(abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(global0.b.b, func_2(global0.a, vec2<u32>(var_1.a.b, 24413u)).b), _wgslsmith_mult_u32(89451u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, global0.a.a, u_input.a), vec4<u32>(12166u, global4.b, 1u, global0.a.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~global0.b.a, 20u)]) - _wgslsmith_f_op_f32(-global1.x)), func_4(func_6(vec3<u32>(func_6(vec3<u32>(global4.b, 58167u, var_1.b.b), false, Struct_1(global4.a, 9942u, global1.wy, global4.d, vec3<i32>(global2.x, var_3.x, global4.e.x)), Struct_1(684f, var_0.x, vec2<f32>(911f, -194f), global4.d, vec3<i32>(global0.a.c.x, -24310i, global2.x))).b, u_input.d & global0.b.a, _wgslsmith_sub_u32(global4.b, 12874u)), !(!global4.d), func_2(global0.b, vec2<u32>(u_input.d, var_1.a.a) | vec2<u32>(global4.b, u_input.e)), Struct_1(2198f, ~u_input.d, _wgslsmith_f_op_vec2_f32(round(global4.c)), func_1(global1.wxw, vec2<bool>(false, global4.d)).d, _wgslsmith_div_vec3_i32(vec3<i32>(var_3.x, -2147483647i, global0.a.d), vec3<i32>(27173i, var_3.x, 1i)))), var_3.x ^ _wgslsmith_clamp_i32(func_1(global1.xxx, vec2<bool>(true, global4.d)).e.x, var_3.x ^ -28051i, -u_input.b), func_2(func_5(func_5(Struct_4(global0.a, 0u, global0.a.c, var_2), u_input.c, global4.d, Struct_4(Struct_2(4294967295u, u_input.d, var_4, global2.x), global4.b, var_1.b.c, -1000f)), global0.b.d, global4.d, Struct_4(Struct_2(var_0.x, global0.b.b, var_1.b.c, 0i), var_1.b.b, vec4<i32>(var_1.a.c.x, -5721i, 2147483647i, -4032i), 1000f)).a, firstTrailingBit(vec2<u32>(27756u, global4.b) ^ vec2<u32>(u_input.a, var_0.x)))).c.x, 49259u);
}

