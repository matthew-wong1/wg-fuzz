struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: i32,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_3, 5>;

var<private> global3: Struct_2;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_3.b.a;
    var var_1 = Struct_1(-1i, ~arg_1.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-273f - -121f) + -2310f), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1398f)))));
    global0 = array<Struct_3, 5>();
    return Struct_1(var_1.a, ~(arg_0.x ^ global3.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.c)) * _wgslsmith_f_op_vec2_f32(sign(var_1.c))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.c, vec2<f32>(412f, var_1.c.x))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = select(vec4<bool>(arg_2.b.x, !all(select(vec4<bool>(arg_2.c, true, true, false), vec4<bool>(arg_1.b.b.x, global3.c, arg_2.c, false), false)), arg_2.c, !(any(vec3<bool>(arg_2.c, global3.c, arg_1.b.b.x)) && true)), select(select(select(select(vec4<bool>(false, true, true, arg_2.b.x), vec4<bool>(false, global3.b.x, global3.c, arg_1.a.x), vec4<bool>(true, arg_1.b.b.x, true, true)), select(vec4<bool>(true, false, arg_2.b.x, false), vec4<bool>(false, true, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_2.c, arg_2.c, false, arg_2.b.x)), vec4<bool>(true, false, false, false)), !select(vec4<bool>(true, false, global3.b.x, arg_2.b.x), vec4<bool>(arg_1.b.b.x, false, false, false), true), !arg_2.b.x), vec4<bool>(arg_2.c && true, true, global3.b.x & true, 23304u >= select(4294967295u, 6106u, false)), !select(select(vec4<bool>(global3.b.x, true, arg_2.c, true), vec4<bool>(false, true, arg_1.a.x, true), vec4<bool>(arg_2.b.x, arg_2.b.x, global3.c, arg_1.a.x)), select(vec4<bool>(arg_2.b.x, false, false, true), vec4<bool>(global3.b.x, false, global3.b.x, global3.c), vec4<bool>(global3.c, arg_2.b.x, arg_1.a.x, global3.b.x)), true)), arg_2.b.x);
    global2 = array<Struct_3, 5>();
    global3 = arg_1.b;
    let var_1 = select(vec4<bool>(var_0.x && true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x) + _wgslsmith_f_op_f32(step(-642f, 134f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), true && select(!arg_1.b.c, var_0.x, false & arg_1.b.c)), vec4<bool>(true, var_0.x, true, all(vec4<bool>(arg_1.b.b.x, global3.c, all(vec4<bool>(false, true, var_0.x, false)), arg_0.c.x >= arg_0.c.x))), !select(vec4<bool>(true, arg_1.b.b.x, true, true), select(vec4<bool>(true, true, var_0.x, global3.b.x), !vec4<bool>(arg_2.b.x, global3.c, arg_2.b.x, arg_2.b.x), global3.c), !vec4<bool>(var_0.x, arg_2.b.x, arg_2.c, var_0.x)));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(~_wgslsmith_div_i32(u_input.a, arg_0.a), ~(-59015i << (arg_1.b.a % 32u)))), -1i);
    return func_2(_wgslsmith_div_vec3_u32(max(~vec3<u32>(arg_1.b.a, 12163u, arg_3), firstTrailingBit(vec3<u32>(global3.a, 81878u, global3.a))) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(24563u, 4294967295u, 1108u), vec3<u32>(arg_2.a, 4294967295u, global1.x)), vec3<u32>(_wgslsmith_mod_u32(select(36644u, global3.a, true), reverseBits(global1.x)), arg_2.a, ~arg_3)), ~vec3<u32>(arg_2.a, ~func_2(vec3<u32>(25896u, 0u, 4294967295u), vec3<u32>(42479u, 0u, arg_3), arg_1.b, global2[_wgslsmith_index_u32(arg_2.a, 5u)]).b, arg_3), Struct_2(117085u, !var_0.xzz, false, -1i, global3.e), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_2.a, arg_2.a), vec3<u32>(78667u, arg_0.b, 31227u)), vec3<u32>(4294967295u, 16279u, 7479u)), select(~vec3<u32>(0u, 4294967295u, 41548u), vec3<u32>(arg_0.b, 1u, arg_3) ^ vec3<u32>(arg_3, 44057u, global3.a), true)), 5u)]);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_5 {
    let var_0 = Struct_2(countOneBits(38240u), vec3<bool>(any(vec2<bool>(true, false)), !any(!vec2<bool>(arg_0.b, true)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_2.a, 1i, -1i, -17181i)), -vec4<i32>(1511i, -19674i, 1i, global3.d)) >= _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, -21263i, -1i, -15981i), vec4<i32>(39903i, 46107i, arg_2.a, 1i), false), vec4<i32>(1i, 1i, 1i, 1i))), true, _wgslsmith_mod_i32(_wgslsmith_div_i32(-_wgslsmith_mult_i32(arg_0.c, arg_2.a), 2147483647i), -abs(3573i)), -(~arg_0.c));
    let var_1 = -select(~(-abs(vec2<i32>(-1i, -1i))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(116i, 1i, var_0.e), func_2(vec3<u32>(global3.a, 48053u, 68238u), arg_0.d.wxz, Struct_2(76049u, vec3<bool>(true, false, global3.c), false, 2147483647i, arg_0.c), global2[_wgslsmith_index_u32(6446u, 5u)]).a), vec2<i32>(17652i, 45112i)), all(vec4<bool>(global3.c && global3.b.x, !var_0.b.x, all(vec4<bool>(global3.b.x, arg_0.b, global3.c, global3.b.x)), true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-154f, 605f, arg_2.c.x) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.c.x, arg_1.x, arg_0.e.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 417f, 2479f) - vec3<f32>(arg_1.x, 387f, arg_1.x)))) - arg_0.e)));
    return Struct_5(max(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(global3.a, 0u, 55405u), arg_0.d.wwz, var_0.b), arg_0.d.wwx), countOneBits(_wgslsmith_mod_vec3_u32(arg_0.d.zxx, arg_0.d.xwz))), _wgslsmith_sub_u32(~1u, arg_0.d.x)), _wgslsmith_div_i32(var_0.d, var_0.e) == (var_1.x | global3.d), 25898i, ~arg_0.d >> (~vec4<u32>(73164u << (arg_2.b % 32u), max(arg_0.d.x, arg_0.d.x), _wgslsmith_mod_u32(1u, 30231u), 1u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_0.e, vec3<f32>(var_2.x, arg_2.c.x, var_2.x))))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_2.x)))), 1000f, 1147f)));
}

fn func_5(arg_0: Struct_5) -> f32 {
    global0 = array<Struct_3, 5>();
    let var_0 = func_2(arg_0.d.zyz, arg_0.d.ywy, Struct_2(~_wgslsmith_div_u32(~global3.a, 0u), vec3<bool>(!(!global3.b.x), true, true), true, abs(func_4(Struct_5(0u, false, 0i, arg_0.d, arg_0.e), vec3<f32>(1000f, -1412f, 697f), func_3(Struct_1(2147483647i, global1.x, vec2<f32>(arg_0.e.x, arg_0.e.x)), Struct_3(vec2<bool>(true, false), Struct_2(global3.a, global3.b, arg_0.b, arg_0.c, arg_0.c)), Struct_2(arg_0.d.x, vec3<bool>(arg_0.b, false, true), global3.c, -1i, 10256i), 24185u)).c), global3.e), global2[_wgslsmith_index_u32(42619u, 5u)]);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1277f - -300f) + _wgslsmith_f_op_f32(-arg_0.e.x)), _wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x, _wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(func_4(Struct_5(66606u, false, -27283i, vec4<u32>(var_0.b, 9830u, 0u, global3.a), arg_0.e), vec3<f32>(-1973f, arg_0.e.x, -2789f), Struct_1(u_input.a, 1u, arg_0.e.zx)).e.x, 203f), true)), true)));
    let var_2 = vec4<bool>(true, global3.c, false || (any(!vec4<bool>(global3.b.x, false, false, false)) & func_4(arg_0, vec3<f32>(742f, var_1.x, -834f), Struct_1(arg_0.c, var_0.b, var_0.c)).b), global3.c);
    let var_3 = Struct_2(func_4(Struct_5(arg_0.d.x, true & (arg_0.b & var_2.x), ~global3.e, min(arg_0.d, _wgslsmith_sub_vec4_u32(vec4<u32>(global3.a, 71288u, global1.x, 4294967295u), arg_0.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.ywy * vec3<f32>(var_1.x, 1428f, var_1.x)) * vec3<f32>(-145f, -1352f, var_0.c.x))), vec3<f32>(669f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1327f - var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-var_1.x))), func_2(~arg_0.d.xww, ~_wgslsmith_add_vec3_u32(arg_0.d.zxx, arg_0.d.zxz), Struct_2(global1.x, vec3<bool>(var_2.x, false, false), any(vec4<bool>(var_2.x, global3.b.x, arg_0.b, false)), ~27480i, ~var_0.a), Struct_3(!vec2<bool>(global3.b.x, arg_0.b), Struct_2(5203u, vec3<bool>(var_2.x, true, true), false, 2147483647i, arg_0.c)))).a, vec3<bool>(true, true, var_2.x == false), !all(!vec3<bool>(arg_0.b, false, false)), u_input.a, global3.e >> (~(~4294967295u & (0u | arg_0.d.x)) % 32u));
    return func_2(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.x, 0u), arg_0.d.yz), var_3.a, ~45153u), select(arg_0.d.yyy, vec3<u32>(4294967295u, arg_0.a, 1u), var_3.b))), arg_0.d.zwy, Struct_2(~_wgslsmith_div_u32(~1u, var_3.a), vec3<bool>(false, var_3.b.x, arg_0.b), false, _wgslsmith_mult_i32(u_input.a, abs(arg_0.c) ^ -global3.e), -abs(_wgslsmith_div_i32(-16064i, arg_0.c))), Struct_3(vec2<bool>(var_3.c, false), Struct_2(30210u, var_3.b, false, 2147483647i, arg_0.c))).c.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: bool) -> StorageBuffer {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_5(func_4(Struct_5(_wgslsmith_add_u32(1u, 46396u), all(vec4<bool>(false, global3.c, true, arg_2)), u_input.a, vec4<u32>(global3.a, arg_1, global3.a, 0u), vec3<f32>(arg_0.x, 430f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), func_3(func_2(vec3<u32>(24051u, arg_1, global1.x), vec3<u32>(arg_1, global1.x, 0u), Struct_2(10685u, global3.b, true, global3.e, u_input.a), Struct_3(global3.b.zz, Struct_2(global1.x, global3.b, true, global3.e, u_input.a))), Struct_3(vec2<bool>(false, true), Struct_2(global3.a, vec3<bool>(false, global3.b.x, true), arg_2, u_input.a, 0i)), Struct_2(global3.a, vec3<bool>(arg_2, global3.c, true), global3.c, -1i, -1i), reverseBits(46450u))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 2615f)))))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -1055f) * 657f)));
    let var_1 = Struct_4(select(!vec4<bool>(global3.e < -2147483647i, true, false, !arg_2), !vec4<bool>(true, global3.b.x, true, arg_2), global3.c && !arg_2), Struct_3(global3.b.zz, Struct_2(~(arg_1 ^ 4294967295u), global3.b, false, func_4(func_4(Struct_5(arg_1, false, 11466i, vec4<u32>(16380u, global3.a, 4294967295u, 1u), var_0.wyx), vec3<f32>(var_0.x, arg_0.x, var_0.x), Struct_1(0i, 68204u, arg_0.yx)), vec3<f32>(var_0.x, var_0.x, -168f), func_3(Struct_1(21428i, 19385u, var_0.ww), global2[_wgslsmith_index_u32(0u, 5u)], Struct_2(global3.a, global3.b, global3.c, -1i, u_input.a), 24579u)).c, _wgslsmith_div_i32(u_input.a, global3.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-610f + var_0.x) * _wgslsmith_f_op_f32(trunc(arg_0.x))));
    global3 = var_1.b.b;
    var var_2 = Struct_3(!vec2<bool>(true, 50578i < select(-64069i, var_1.b.b.e, false)), Struct_2(global3.a, select(!global3.b, !select(global3.b, vec3<bool>(false, true, true), false), !arg_2), (func_3(Struct_1(u_input.a, 0u, var_0.xy), Struct_3(global3.b.yy, var_1.b.b), var_1.b.b, 0u).b | 4294967295u) == abs(global3.a), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-27081i, 21400i, -16184i, u_input.a)), ~vec4<i32>(1i, var_1.b.b.e, 38331i, 0i)), countOneBits(u_input.a)), ~firstTrailingBit(_wgslsmith_sub_i32(var_1.b.b.d, -1i))));
    global3 = Struct_2(0u, vec3<bool>(!(_wgslsmith_sub_u32(global3.a, arg_1) > _wgslsmith_div_u32(var_2.b.a, arg_1)), true, !var_2.b.c), arg_2, _wgslsmith_mod_i32(3486i, _wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(47775i, 28601i, 0i)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(global3.d, -17331i, global3.e), vec3<i32>(var_1.b.b.d, global3.d, 2147483647i))))), u_input.a);
    return StorageBuffer(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(-min(vec2<i32>(-13105i, global3.e), vec2<i32>(-3829i, global3.d)), (vec2<i32>(3875i, 0i) << (vec2<u32>(40781u, global3.a) % vec2<u32>(32u))) << (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-9652i, -83254i)), vec2<i32>(_wgslsmith_sub_i32(-2800i, var_2.b.e), -32884i)), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.b.d, 13563i), vec2<i32>(-1i, 2147483647i)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(29288u, 1u, global1.x), vec3<u32>(var_1.b.b.a, global1.x, 0u)), 3019u) % vec2<u32>(32u))), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(26403u, ~66189u, 1u), ~(vec3<u32>(global3.a, 1u, global3.a) | vec3<u32>(arg_1, 1u, global1.x))), global3.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_5(global1.x, arg_2, global3.e, vec4<u32>(var_1.b.b.a, global3.a, 1u, global3.a), var_0.ywy))) - _wgslsmith_f_op_f32(f32(-1f) * -2090f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x)))))), min(~(~min(vec4<i32>(-9988i, 35866i, -1i, u_input.a), vec4<i32>(0i, 3578i, global3.d, u_input.a))), max(-(vec4<i32>(u_input.a, var_1.b.b.e, 2147483647i, var_1.b.b.d) << (vec4<u32>(global1.x, 0u, 51060u, 82281u) % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -42658i, -59603i, abs(11465i), min(-11121i, -1i)))), func_2(func_4(Struct_5(var_1.b.b.a, var_2.b.b.x, -12360i, vec4<u32>(global3.a, var_1.b.b.a, 1u, 76566u), vec3<f32>(var_0.x, var_1.c, var_1.c)), vec3<f32>(-1000f, arg_0.x, var_0.x), Struct_1(global3.d, 4294967295u, var_0.xz)).d.xzw << (~_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_1.b.b.a, var_1.b.b.a), vec3<u32>(4410u, global3.a, var_2.b.a)) % vec3<u32>(32u)), ~(vec3<u32>(global1.x, var_2.b.a, arg_1) & vec3<u32>(global1.x, 24074u, 4294967295u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), var_2.b, Struct_3(var_1.b.a, var_2.b)).b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-408f + _wgslsmith_f_op_f32(ceil(203f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-308f + 440f) * -716f), -502f, 1004f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(122f, 137f, -1083f, -103f)))), 50290u, !(true & !(!global3.b.x)));
}

