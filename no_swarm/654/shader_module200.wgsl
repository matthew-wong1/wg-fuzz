struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false));

var<private> global1: array<vec2<u32>, 21>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: bool;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(u_input.a, true, vec2<i32>(~u_input.b ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1343i, u_input.b, 20426i), arg_2.wwx), -firstLeadingBit(0i)), arg_1.x), Struct_1(-12654i, true, arg_2.yy << (vec2<u32>(75377u, ~11763u) % vec2<u32>(32u)), arg_1.x), _wgslsmith_mult_vec4_i32(reverseBits(~arg_2 << (select(vec4<u32>(19837u, 41637u, 1u, 1u), vec4<u32>(30304u, 38363u, 4294967295u, 1999u), false) % vec4<u32>(32u))), max(countOneBits(abs(arg_2)), arg_2)), !select(!vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, all(vec4<bool>(true, true, false, true)), all(global0[_wgslsmith_index_u32(22903u, 5u)])), select(!global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(~1u, 5u)], any(vec4<bool>(true, arg_1.x, false, arg_1.x)))));
    global3 = arg_1.x;
    var var_1 = all(select(!select(vec4<bool>(var_0.b.b, false, var_0.d.x, true), !vec4<bool>(false, false, arg_1.x, false), select(vec4<bool>(var_0.d.x, false, var_0.d.x, true), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(false, false, false, var_0.a.d))), !select(vec4<bool>(true, false, arg_1.x, true), select(vec4<bool>(true, arg_1.x, var_0.a.b, false), vec4<bool>(arg_1.x, true, true, false), vec4<bool>(var_0.a.b, arg_1.x, true, arg_1.x)), !vec4<bool>(arg_1.x, arg_1.x, var_0.a.d, arg_1.x)), !any(select(vec3<bool>(arg_1.x, true, false), vec3<bool>(false, true, var_0.a.d), true))));
    let var_2 = Struct_1(1i, var_0.b.d, arg_2.xz, var_0.a.d);
    let var_3 = -_wgslsmith_mod_vec3_i32(arg_2.yww, arg_2.xyw);
    return vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(firstTrailingBit(~vec4<u32>(37122u, 48191u, 21431u, 4294967295u)))), 1u, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(37572u, 35585u, 21166u, 1u), vec4<u32>(1u, 14101u, 56875u, 1u))) & _wgslsmith_add_u32(~firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4616u, 8214u), vec3<u32>(1u, 1u, 1u))), countOneBits(~(~4294967295u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: bool, arg_3: u32) -> vec4<bool> {
    var var_0 = true;
    global0 = array<vec3<bool>, 5>();
    let var_1 = ~(~_wgslsmith_clamp_u32(arg_3, _wgslsmith_sub_u32(1u, arg_0.x) | (0u >> (arg_3 % 32u)), 19935u));
    let var_2 = ~u_input.b;
    var var_3 = ~firstTrailingBit(var_1);
    return vec4<bool>(false, arg_1 > -535f, arg_2, any(global0[_wgslsmith_index_u32(var_1, 5u)]));
}

fn func_2() -> Struct_1 {
    global2 = u_input.b;
    let var_0 = !func_4(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 102904u, 2365u, 78076u), min(vec4<u32>(4294967295u, 41765u, 0u, 22401u), vec4<u32>(49846u, 82366u, 15918u, 19457u)), vec4<u32>(1u, 1u, 1u, 1u)), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1727f, -1051f, -738f, 2257f)), vec2<bool>(false, false), vec4<i32>(1i, u_input.a, u_input.b, u_input.a))), 678f, any(vec2<bool>(true, true)), _wgslsmith_mod_u32(1u, ~1u));
    let var_1 = func_4(_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(22357u, 57866u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), min(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 11963u, 40882u, 10838u), vec4<u32>(4294967295u, 11497u, 35923u, 17467u)), vec4<u32>(0u, 0u, 64020u, 4945u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 12427u, 27027u), vec3<u32>(1u, 1u, 65084u)), ~101238u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 22420u), vec3<u32>(1u, 35312u, 9375u)), ~0u))), 584f, all(func_4(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -717f, 1000f, -101f) + vec4<f32>(-1967f, 479f, 425f, 1612f)), var_0.yz, vec4<i32>(1i, u_input.b, u_input.a, 55740i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-197f))), all(vec2<bool>(var_0.x, var_0.x)), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(23040u, 43616u), global1[_wgslsmith_index_u32(0u, 21u)])))), firstLeadingBit(~4294967295u));
    return Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b, _wgslsmith_clamp_i32(u_input.b, u_input.a, u_input.a)) ^ u_input.b, -1i), abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(-22405i, u_input.b, -5167i), countOneBits(vec3<i32>(u_input.b, u_input.b, 26394i)))) == (_wgslsmith_add_i32(-2147483647i, abs(65182i)) & abs(~u_input.b)), ~vec2<i32>(~firstLeadingBit(-15313i), _wgslsmith_div_i32(-31276i << (0u % 32u), u_input.a)), all(select(select(vec4<bool>(var_0.x, var_1.x, true, var_1.x), var_0, func_4(vec4<u32>(25550u, 15899u, 38797u, 5748u), -332f, true, 0u)), var_0, !select(var_0, var_1, vec4<bool>(true, false, false, var_0.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(~arg_3, arg_3, 13788u, arg_3)), ~abs(vec4<u32>(_wgslsmith_div_u32(arg_3, arg_3), arg_3, ~4294967295u, arg_3)));
    global3 = true;
    let var_1 = Struct_3(select(vec3<bool>(!arg_0.b | all(vec4<bool>(arg_0.b, true, arg_0.d, false)), arg_0.d, arg_0.d && func_2().b), global0[_wgslsmith_index_u32(arg_3, 5u)], false), 0u, Struct_2(func_2(), Struct_1(-reverseBits(u_input.a), all(vec3<bool>(true, arg_0.b, true)), -(~vec2<i32>(arg_2.c.x, 1i)), any(!vec4<bool>(arg_2.b, false, true, false))), -(max(vec4<i32>(arg_2.a, 2147483647i, arg_2.a, u_input.b), vec4<i32>(u_input.a, -21637i, arg_0.a, -1i)) & ~vec4<i32>(u_input.b, 4665i, 2147483647i, u_input.a)), vec3<bool>(arg_0.d, true, all(vec2<bool>(arg_0.d, true)))), Struct_2(func_2(), arg_0, max(-vec4<i32>(arg_0.a, u_input.a, arg_0.a, arg_2.a), ~(-vec4<i32>(-16193i, 28382i, -1i, 1i))), select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_0.x), 5u)], select(global0[_wgslsmith_index_u32(3949u, 5u)], !global0[_wgslsmith_index_u32(arg_3, 5u)], !global0[_wgslsmith_index_u32(var_0.x, 5u)]), func_4(vec4<u32>(arg_3, 10008u, 1u, 4294967295u) >> (vec4<u32>(674u, 5443u, arg_3, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(select(arg_1, arg_1, false)), u_input.a <= -42439i, max(arg_3, 24431u)).xyz)), !select(vec2<bool>(func_4(vec4<u32>(var_0.x, 0u, arg_3, arg_3), arg_1, arg_2.d, 0u).x, true), !(!vec2<bool>(arg_0.b, false)), !(!vec2<bool>(arg_2.d, true))));
    var var_2 = 0u;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1345f) - vec2<f32>(1090f, arg_1))))));
    return var_1.c;
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global1 = array<vec2<u32>, 21>();
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-537f, 1f, all(!arg_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 1000f))));
    global0 = array<vec3<bool>, 5>();
    var var_2 = _wgslsmith_div_vec3_i32(-arg_1.c.yxz, -arg_1.c.wzx);
    return Struct_1(_wgslsmith_mod_i32(arg_1.c.x, _wgslsmith_div_i32(firstLeadingBit(abs(-27803i)), var_2.x ^ arg_3.a)), true, vec2<i32>(2147483647i, firstLeadingBit(_wgslsmith_mod_i32(~0i, -1i & arg_1.b.c.x))), any(func_4(vec4<u32>(reverseBits(4294967295u), 4294967295u << (0u % 32u), _wgslsmith_mult_u32(22372u, 55096u), reverseBits(4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(451f, var_1.x) - var_1.x), true, _wgslsmith_div_u32(_wgslsmith_div_u32(17376u, 33611u), 1u)).wyy));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global1 = array<vec2<u32>, 21>();
    return func_6(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-firstTrailingBit(vec4<i32>(-2147483647i, u_input.a, 59852i, u_input.a)), min(_wgslsmith_mod_vec4_i32(vec4<i32>(-35132i, 2147483647i, u_input.a, -2147483647i), vec4<i32>(46633i, 9200i, -34513i, -1i)), max(vec4<i32>(u_input.b, u_input.a, -19184i, u_input.a), vec4<i32>(0i, u_input.a, -33286i, u_input.a)))), abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.b, -2147483647i) | vec4<i32>(2147483647i, u_input.b, u_input.a, u_input.a)))), func_5(func_2(), _wgslsmith_f_op_f32(sign(-677f)), Struct_1(~(-22164i), !(!arg_0.x), -max(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.a, u_input.a)), true), ~(~1u)), -1045f, Struct_1(33827i, 1f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-492f))), select(vec2<i32>(u_input.a, 35768i) | vec2<i32>(u_input.b, -25906i), vec2<i32>(0i, _wgslsmith_add_i32(u_input.a, -2147483647i)), arg_0.xz), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~26682u;
    global1 = array<vec2<u32>, 21>();
    global3 = !(var_0 > ~4294967295u);
    let var_1 = func_1(!(!vec3<bool>(select(false, false, true), true, all(vec2<bool>(false, true)))));
    let var_2 = var_1;
    var var_3 = var_1;
    var var_4 = Struct_3(global0[_wgslsmith_index_u32(~(1u << ((var_0 | var_0) % 32u)) | var_0, 5u)], ~(~(~var_0)) >> (var_0 % 32u), func_5(var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1329f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(307f)))), var_1, _wgslsmith_sub_u32(var_0, 1u)), func_5(var_1, 481f, var_1, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, -266f, 1000f, 293f)), vec2<bool>(any(vec2<bool>(var_1.b, false)), any(vec2<bool>(var_1.d, true))), vec4<i32>(~(-23158i), var_2.a, ~var_2.a, _wgslsmith_div_i32(var_2.c.x, var_1.c.x))).x), func_5(Struct_1(i32(-1i) * -1i, select(true, u_input.a != -9881i, !var_1.d), vec2<i32>(u_input.b & var_1.c.x, _wgslsmith_add_i32(var_1.a, 2147483647i)), func_2().b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -570f) + _wgslsmith_f_op_f32(max(-547f, 747f))), Struct_1(-(~var_3.c.x), var_2.b, vec2<i32>(-var_2.c.x, i32(-1i) * -2147483647i), var_2.b), _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(var_0, 21u)], vec2<u32>(var_0, 4294967295u))), ~abs(var_0), func_3(vec4<f32>(241f, 1000f, 232f, -1389f), vec2<bool>(false, var_1.d), vec4<i32>(var_2.c.x, var_3.a, var_3.c.x, var_1.c.x)).x)).d.zx);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1180f, -438f))))));
}

