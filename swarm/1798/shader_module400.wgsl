struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9>;

var<private> global1: array<u32, 19>;

var<private> global2: f32;

var<private> global3: array<bool, 7> = array<bool, 7>(false, false, true, false, false, false, true);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: bool) -> u32 {
    return 108643u;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    global3 = array<bool, 7>();
    let var_0 = arg_3;
    global2 = -850f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(276f, -1545f, true)))) - _wgslsmith_f_op_f32(-783f + -379f)));
    let var_2 = vec2<i32>(abs(_wgslsmith_sub_i32(arg_2.a, arg_2.a | arg_2.a)), select(_wgslsmith_mod_i32(var_0.c.a, 1i), -7465i, true));
    return _wgslsmith_div_vec4_u32(~abs(~select(vec4<u32>(4294967295u, 64391u, 0u, var_0.c.e.x), vec4<u32>(14459u, 59u, 1u, arg_0), arg_3.c.c)), vec4<u32>(abs(~func_3(arg_3.b.zz, vec3<u32>(arg_0, u_input.a, 2004u), arg_2.c)), ~1u, arg_3.c.d.x, 0u));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) - _wgslsmith_f_op_f32(-1757f + 273f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 427f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(125f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))))), vec2<bool>(true, !arg_3.a.x)));
    var var_1 = arg_0;
    return max(~vec3<u32>(1u, _wgslsmith_mod_u32(73967u, arg_0.d.x) & _wgslsmith_mult_u32(u_input.a, var_1.e.x), select(_wgslsmith_clamp_u32(4294967295u, 108444u, var_1.b), 4294967295u, any(vec3<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 7u)])))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(func_2(4294967295u, vec4<f32>(var_0.x, arg_2, -1978f, 484f), arg_3.c, Struct_2(vec2<bool>(true, var_1.c), arg_3.b, Struct_1(var_1.a, var_1.b, arg_3.c.c, arg_0.e, vec2<u32>(2412u, u_input.a)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_3.c.e.x, var_1.b, var_1.e.x), vec4<u32>(44519u, 1u, 0u, 1u), vec4<u32>(global1[_wgslsmith_index_u32(arg_0.d.x, 19u)], u_input.a, 77968u, arg_1))), ~select(arg_1, 36781u, false), u_input.a), vec3<u32>(countOneBits(arg_1), ~arg_1, ~var_1.d.x) << (vec3<u32>(56852u, select(69239u, 48509u, false), u_input.a ^ arg_1) % vec3<u32>(32u))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec2_u32(abs(arg_1.d.e), arg_1.d.d);
    let var_1 = !(!arg_1.e.wxx);
    let var_2 = Struct_1(countOneBits(2147483647i), ~4294967295u, global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(4294967295u, firstLeadingBit(global1[_wgslsmith_index_u32(var_0.x << (arg_1.b.x % 32u), 19u)])), 7u)], vec2<u32>(max(7866u, _wgslsmith_dot_vec3_u32(arg_1.b, arg_1.b)) | (~4294967295u >> (arg_1.b.x % 32u)), _wgslsmith_sub_u32(max(1u, 1u | arg_1.d.b), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~max(arg_1.d.d.x, var_0.x), 19u)], 19u)])), var_0);
    global1 = array<u32, 19>();
    global0 = array<vec3<i32>, 9>();
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - 1417f) * arg_1.a.x)), _wgslsmith_f_op_f32(arg_1.a.x + -1435f), -368f), vec3<u32>(u_input.a & 1u, 41937u, u_input.a), 904f < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1586f))))), var_2, vec4<bool>(arg_1.d.c, !any(vec4<bool>(arg_1.e.x, global3[_wgslsmith_index_u32(4294967295u, 7u)], true, global3[_wgslsmith_index_u32(31149u, 7u)])) || all(vec2<bool>(global3[_wgslsmith_index_u32(1332u, 7u)], arg_1.c)), any(select(arg_1.e.xy, vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)]), vec2<bool>(true, true))), u_input.a < reverseBits(_wgslsmith_mult_u32(39235u, 38645u))));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = ~(~(~arg_3.d.e.x));
    let var_1 = _wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(~firstTrailingBit(~1u), 9u)], vec3<i32>(arg_2, 1i, max(arg_3.d.a, select(0i, 29226i, true))));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3.d.e.x, reverseBits(~min(var_0, 107129u)) >> (~(~min(global1[_wgslsmith_index_u32(arg_1, 19u)], 77624u)) % 32u)), 19u)];
    let var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_3.b.xy, vec2<u32>(var_0, u_input.a)) | global1[_wgslsmith_index_u32(~78400u, 19u)], ~_wgslsmith_mod_u32(4294967295u, 1u), 3898u, 34925u >> (abs(arg_3.d.b) % 32u)), ~((vec4<u32>(var_0, var_0, arg_1, 0u) << (vec4<u32>(arg_3.d.d.x, arg_3.d.e.x, arg_1, 4294967295u) % vec4<u32>(32u))) | (vec4<u32>(48784u, var_0, 40119u, 8595u) << (vec4<u32>(4294967295u, 1u, 0u, 28983u) % vec4<u32>(32u))))) | ~abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, var_0, var_0, 44692u), select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], u_input.a, arg_1, arg_3.d.d.x), vec4<u32>(30695u, var_0, 59836u, 30104u), arg_3.e)));
    var var_4 = vec4<i32>(0i, arg_3.d.a, -arg_3.d.a, var_1.x & _wgslsmith_dot_vec2_i32(~(~vec2<i32>(-995i, var_1.x)), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(arg_3.d.a, -2147483647i), vec2<i32>(var_1.x, -30517i)))));
    return Struct_2(!vec2<bool>(select(1u <= arg_3.d.e.x, global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 19u)], 7u)], all(arg_3.e)), select(true, false, true)), global0[_wgslsmith_index_u32(min(arg_1 & ~4294967295u, _wgslsmith_add_u32(u_input.a, 4294967295u)), 9u)] & _wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.d.a, 1i, arg_3.d.a), _wgslsmith_add_vec3_i32(~vec3<i32>(4141i, arg_2, -2147483647i), var_4.yxz)), Struct_1(-34127i, min(4294967295u, global1[_wgslsmith_index_u32(31108u, 19u)]), any(vec3<bool>(true, !arg_3.c, arg_0)), ~arg_3.b.zz, var_3.zx));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-270f - _wgslsmith_f_op_f32(abs(-1231f)))));
    let var_1 = !func_4(max(_wgslsmith_mod_i32(select(-1i, arg_0.c.a, false), -1i), arg_1.a), func_4(-1i, func_4(abs(arg_0.b.x), func_4(6858i, Struct_3(vec3<f32>(311f, 305f, -299f), vec3<u32>(arg_0.c.d.x, 23890u, 13340u), false, Struct_1(arg_0.b.x, 28190u, arg_1.c, arg_0.c.e, vec2<u32>(u_input.a, arg_1.e.x)), vec4<bool>(arg_1.c, true, false, true)), global0[_wgslsmith_index_u32(4294967295u, 9u)]), vec3<i32>(-2147483647i, arg_1.a, -3962i) >> (vec3<u32>(36660u, 4294967295u, 6201u) % vec3<u32>(32u))), arg_0.b), vec3<i32>(func_4(arg_0.b.x, func_4(arg_0.c.a, Struct_3(vec3<f32>(-1032f, 1194f, -325f), vec3<u32>(608u, 6296u, 4294967295u), arg_1.c, Struct_1(44200i, u_input.a, false, arg_1.e, arg_1.d), vec4<bool>(false, true, arg_1.c, true)), vec3<i32>(50353i, arg_0.b.x, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b.x, -61627i, arg_1.a), vec3<i32>(arg_1.a, arg_0.c.a, 25499i))).d.a, _wgslsmith_sub_i32(-2147483647i, arg_0.b.x) & -1i, firstTrailingBit(arg_0.c.a))).e;
    let var_2 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1918f, 1509f, 371f), vec3<f32>(256f, 700f, 1202f), vec3<bool>(false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 19u)], 19u)], 7u)], var_1.x)))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1642f, -115f, -1340f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-471f, -494f, 648f)))))), firstLeadingBit(~vec3<u32>(~0u, global1[_wgslsmith_index_u32(~0u, 19u)], 0u)), select(true, any(var_1), true), arg_1, !var_1);
    global2 = -849f;
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_2.a.xy);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 7>();
    var var_0 = global3[_wgslsmith_index_u32(~u_input.a, 7u)];
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = func_6(func_5(var_1 > _wgslsmith_f_op_f32(max(-263f, -737f)), 1u, ~1i, func_4(10626i, Struct_3(vec3<f32>(-924f, 554f, var_1), func_1(Struct_1(14144i, 0u, global3[_wgslsmith_index_u32(u_input.a, 7u)], vec2<u32>(125614u, 0u), vec2<u32>(0u, global1[_wgslsmith_index_u32(1u, 19u)])), 4294967295u, 471f, Struct_2(vec2<bool>(false, false), vec3<i32>(-1i, -71814i, -12084i), Struct_1(-1i, u_input.a, false, vec2<u32>(u_input.a, 44158u), vec2<u32>(0u, 1u)))), false, Struct_1(-2147483647i, u_input.a, false, vec2<u32>(u_input.a, u_input.a), vec2<u32>(99828u, global1[_wgslsmith_index_u32(u_input.a, 19u)])), select(vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(116429u, 19u)], 7u)], global3[_wgslsmith_index_u32(23171u, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)], true), vec4<bool>(false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48432u, 19u)], 7u)], global3[_wgslsmith_index_u32(23524u, 7u)], false), global3[_wgslsmith_index_u32(u_input.a, 7u)])), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-65531i, -2147483647i), vec2<i32>(66032i, -1i)), 1i))), func_4(_wgslsmith_div_i32(~(-2147483647i), countOneBits(-46585i)) << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(37627u, 22351u, 107137u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56711u, 19u)], 19u)]), vec4<u32>(u_input.a, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49101u, 19u)], 19u)], 19u)], 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)])), vec4<u32>(u_input.a, 1u, 41024u, u_input.a)) % 32u), Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -472f, 171f) + vec3<f32>(var_1, var_1, var_1)))), vec3<u32>(func_3(vec2<i32>(1i, 0i), vec3<u32>(global1[_wgslsmith_index_u32(90716u, 19u)], u_input.a, 79205u), true), 1u, global1[_wgslsmith_index_u32(~u_input.a, 19u)]), !global3[_wgslsmith_index_u32(21540u, 7u)] && global3[_wgslsmith_index_u32(u_input.a, 7u)], func_4(-28301i, Struct_3(vec3<f32>(346f, var_1, -296f), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 19u)], 23749u), global3[_wgslsmith_index_u32(19242u, 7u)], Struct_1(2147483647i, 4294967295u, false, vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 19u)]), vec2<u32>(64045u, 1u)), vec4<bool>(false, true, true, false)), global0[_wgslsmith_index_u32(40599u, 9u)] ^ vec3<i32>(-2147483647i, -27342i, -23841i)).d, func_4(_wgslsmith_mult_i32(0i, -74992i), Struct_3(vec3<f32>(-611f, 1637f, var_1), vec3<u32>(global1[_wgslsmith_index_u32(5412u, 19u)], 33867u, 12494u), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 7u)], Struct_1(52169i, u_input.a, global3[_wgslsmith_index_u32(4294967295u, 7u)], vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(u_input.a, 7u)])), _wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(1u, 9u)], vec3<i32>(-917i, 0i, 12352i))).e), firstLeadingBit(abs(-vec3<i32>(-2147483647i, -34959i, 1i)))).d, 0u, !func_5(false, _wgslsmith_div_u32(u_input.a, ~u_input.a), -2147483647i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 45915i, 2147483647i, -1i), vec4<i32>(2147483647i, 0i, 1i, -10878i)), Struct_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-901f, var_1, 387f), vec3<f32>(var_1, var_1, -762f))), _wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 19u)], 1u, 0u), vec3<u32>(10895u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], u_input.a)), true, func_4(-2147483647i, Struct_3(vec3<f32>(var_1, var_1, var_1), vec3<u32>(77237u, 4294967295u, 1u), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 7u)], Struct_1(13453i, global1[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(1u, 7u)], vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u)), vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 7u)], global3[_wgslsmith_index_u32(25906u, 7u)])), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 9u)]).d, select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30493u, 19u)], 7u)], true, false), vec4<bool>(global3[_wgslsmith_index_u32(10238u, 7u)], false, true, global3[_wgslsmith_index_u32(1u, 7u)]), true))).a);
    var var_3 = ~_wgslsmith_mod_vec3_u32(var_2.b, vec3<u32>(countOneBits(14200u), 4294967295u, 32016u));
    var var_4 = var_3.zz;
    var var_5 = func_6(Struct_2(vec2<bool>(func_6(func_5(global3[_wgslsmith_index_u32(u_input.a, 7u)], 16600u, var_2.d.a, var_2), Struct_1(1i, 1u, global3[_wgslsmith_index_u32(var_4.x, 7u)], vec2<u32>(global1[_wgslsmith_index_u32(var_3.x, 19u)], 4294967295u), var_2.d.e), u_input.a, func_5(false, 4294967295u, var_2.d.a, var_2).a).c, all(func_4(1i, var_2, vec3<i32>(var_2.d.a, var_2.d.a, 28600i)).e.zy)), vec3<i32>(var_2.d.a, _wgslsmith_div_i32(var_2.d.a, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 6755i, var_2.d.a, -1i), vec4<i32>(var_2.d.a, 34868i, var_2.d.a, var_2.d.a))), Struct_1(~(-39434i), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(~var_4.x, 19u)], func_1(Struct_1(var_2.d.a, 4294967295u, var_2.d.c, var_3.xx, var_3.zz), 11555u, 567f, Struct_2(vec2<bool>(global3[_wgslsmith_index_u32(var_4.x, 7u)], false), global0[_wgslsmith_index_u32(var_2.b.x, 9u)], var_2.d)).x), !(var_4.x < var_4.x), ~vec2<u32>(var_3.x, 35163u), var_2.d.d)), Struct_1(1i, 6216u & var_2.b.x, all(select(select(vec3<bool>(true, true, false), var_2.e.yxw, var_2.e.wzw), !vec3<bool>(false, true, global3[_wgslsmith_index_u32(20711u, 7u)]), var_2.d.a != -38720i)), vec2<u32>(52877u, func_1(func_5(true, 82994u, var_2.d.a, Struct_3(var_2.a, var_2.b, var_2.c, var_2.d, vec4<bool>(var_2.d.c, true, global3[_wgslsmith_index_u32(u_input.a, 7u)], false))).c, 4294967295u, var_2.a.x, func_5(true, u_input.a, var_2.d.a, var_2)).x), vec2<u32>(var_3.x | ~var_2.b.x, 694u)), ~45429u, !var_2.e.xw).d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~vec4<u32>(~var_5.e.x, func_1(Struct_1(2147483647i, 4294967295u, false, var_3.zy, vec2<u32>(67334u, var_3.x)), 61803u, -1170f, Struct_2(vec2<bool>(global3[_wgslsmith_index_u32(37077u, 7u)], global3[_wgslsmith_index_u32(var_5.d.x, 7u)]), global0[_wgslsmith_index_u32(4294967295u, 9u)], var_2.d)).x, reverseBits(4294967295u), 76708u), ~select(vec4<u32>(u_input.a, u_input.a, var_2.d.e.x, 1u), vec4<u32>(var_4.x, var_5.b, 4294967295u, 4294967295u), true) | (max(vec4<u32>(var_2.b.x, 0u, 4294967295u, 0u), vec4<u32>(49006u, var_3.x, 1u, 0u)) << (vec4<u32>(var_5.e.x, 1964u, 74957u, 43193u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1941f - 448f))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -20552i, -10719i), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.d.a, 14572i, 2147483647i), vec3<i32>(var_2.d.a, var_5.a, var_5.a))) & firstTrailingBit(1i), ~(max(0u, 9256u) ^ (15640u & _wgslsmith_mult_u32(var_5.e.x, 1u))), var_2.a.xy);
}

