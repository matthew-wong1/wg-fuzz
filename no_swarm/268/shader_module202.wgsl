struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(1677f, 2130f, 811f, 1000f, -1000f, 1069f, -811f, -2627f, 147f, 477f, -1000f, 114f, 918f, -1000f, -1822f, -458f, -1990f, -194f);

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1624f, 240f, 448f, global1.b.x), vec4<f32>(global0[_wgslsmith_index_u32(global1.c, 18u)], global1.b.x, 2309f, global0[_wgslsmith_index_u32(19669u, 18u)]))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.c, 18u)])), global0[_wgslsmith_index_u32(~(~global1.c), 18u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1530f)), _wgslsmith_f_op_f32(select(global1.b.x, global1.b.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-482f, global0[_wgslsmith_index_u32(global1.c, 18u)], true)))))));
    let var_1 = Struct_1(-(~44800i), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.b)), _wgslsmith_div_vec3_f32(var_0.xwz, _wgslsmith_f_op_vec3_f32(vec3<f32>(756f, global0[_wgslsmith_index_u32(global1.c, 18u)], 401f) + vec3<f32>(global1.b.x, 693f, -112f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global1.b)))), global1.c, global1.d, -u_input.a.x);
    let var_2 = var_1.b.x;
    var var_3 = ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(20700u, 0u) & vec2<u32>(21213u, var_1.c), ~vec2<u32>(4294967295u, 24321u)));
    let var_4 = _wgslsmith_f_op_vec4_f32(var_0 * _wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(trunc(var_0))));
    return true;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = global1.b.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-835f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.b.x, arg_2.b.x), _wgslsmith_div_f32(796f, global0[_wgslsmith_index_u32(0u, 18u)]))))) - _wgslsmith_f_op_f32(f32(-1f) * -245f));
    var var_1 = select(vec4<i32>(select(arg_2.e, firstTrailingBit(firstLeadingBit(1i)), all(vec2<bool>(arg_1.x, arg_1.x))), select(abs(firstTrailingBit(u_input.a.x)), u_input.a.x, true & !arg_0), _wgslsmith_mult_i32(~u_input.b.x, -u_input.b.x), ~select(~2147483647i, -2147483647i, true)), -_wgslsmith_div_vec4_i32(firstTrailingBit(u_input.a >> (vec4<u32>(1u, global1.c, arg_2.c, global1.c) % vec4<u32>(32u))), select(u_input.a, u_input.a, arg_0) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c, 0u, arg_2.c, 0u), vec4<u32>(global1.c, 0u, global1.c, 15436u)) % vec4<u32>(32u))), !vec4<bool>(true & select(arg_1.x, arg_0, false), true, !func_3(), select(select(true, arg_0, false), any(vec3<bool>(arg_1.x, false, arg_0)), arg_0)));
    var var_2 = _wgslsmith_add_u32(~global1.c, global1.c);
    var var_3 = Struct_1(-1i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(global1.b)))), global1.c, _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b.x & 59849i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_2.e), arg_2.d.yz), var_1.x), ~(-vec3<i32>(-18720i, u_input.a.x, u_input.b.x))), _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.b.x, var_1.x), u_input.a) << ((vec4<u32>(38558u, arg_2.c, global1.c, arg_2.c) ^ vec4<u32>(1u, global1.c, 38569u, 44046u)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, reverseBits(vec4<i32>(60026i, -68781i, arg_2.d.x, arg_2.e))), u_input.a, select(vec4<i32>(15611i, arg_2.a, 10805i, 23112i), u_input.a, vec4<bool>(true, true, false, false)))));
    return 0i;
}

fn func_2() -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_i32(1i, 25463i);
    global1 = Struct_1(func_4(func_3(), vec2<bool>(true, true), Struct_1(~(~global1.d.x), global1.b, ~(~global1.c), select(min(u_input.a.zzy, vec3<i32>(-48211i, 1i, 2665i)), vec3<i32>(u_input.a.x, 1i, global1.a) & vec3<i32>(global1.d.x, u_input.a.x, u_input.a.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), -18352i)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global1.b))), global1.c, max(vec3<i32>(min(1i, 52802i), -(i32(-1i) * -18188i), ~74094i), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(20931i, 1i, 25010i), -global1.d), -vec3<i32>(global1.e, 31556i, u_input.b.x))), global1.a);
    global1 = Struct_1(49394i, global1.b, _wgslsmith_div_u32(min(23873u, ~max(global1.c, global1.c)), _wgslsmith_sub_u32(~global1.c, ~global1.c) | (global1.c << (41969u % 32u))), global1.d, global1.e);
    let var_1 = ~abs(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.c, 42407u, 69132u, 13374u), vec4<u32>(global1.c, global1.c, global1.c, global1.c))));
    let var_2 = Struct_1(_wgslsmith_mod_i32(-global1.a << (_wgslsmith_dot_vec4_u32(var_1, var_1) % 32u), 2147483647i) << (global1.c % 32u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global1.b))), _wgslsmith_add_u32(global1.c, _wgslsmith_mult_u32(4294967295u, ~global1.c)) >> (abs(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.yw, var_1.zx), select(vec2<u32>(1u, 1u), var_1.wy, true))) % 32u), vec3<i32>(11241i, _wgslsmith_div_i32(u_input.b.x >> (1u % 32u), global1.d.x), countOneBits(-33064i)), _wgslsmith_sub_i32(-2147483647i, -5974i >> (1u % 32u)));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> Struct_1 {
    global0 = array<f32, 18>();
    var var_0 = select(!vec2<bool>(false, !any(vec4<bool>(true, false, true, true))), vec2<bool>(true, true), vec2<bool>(all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true)), false));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(select(-abs(arg_0.d), -vec3<i32>(arg_1.d.x, -44121i, 1i), !(!vec3<bool>(false, true, var_0.x))), select(-global1.d & vec3<i32>(arg_0.d.x, arg_0.d.x, -41838i), -vec3<i32>(-19756i, arg_1.e, -21357i), select(!vec3<bool>(var_0.x, false, true), select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)), ~reverseBits(_wgslsmith_sub_u32(arg_3 | 55460u, _wgslsmith_sub_u32(arg_3, arg_2))), arg_1.d, i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_sub_i32(global1.a, arg_0.d.x), arg_1.a));
    let var_2 = func_2();
    var var_3 = ~3104i;
    return var_2;
}

fn func_1() -> i32 {
    global0 = array<f32, 18>();
    var var_0 = vec2<bool>(global1.c >= min(global1.c, 4294967295u), !all(vec3<bool>(true, true, true)));
    var var_1 = func_5(func_2(), func_2(), global1.c, global1.c);
    global2 = var_0.x;
    var var_2 = func_4(false, select(!select(vec2<bool>(true, var_0.x), select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false)), !var_0.x), vec2<bool>(all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(-472f * var_1.b.x) != -578f), select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false)), !vec2<bool>(var_0.x, false), false), !select(vec2<bool>(false, false), vec2<bool>(false, var_0.x), false), true)), func_5(Struct_1(34132i, vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(var_1.b.x + -959f), 628f), global1.c, ~global1.d, u_input.b.x), func_2(), ~47531u, _wgslsmith_dot_vec2_u32(vec2<u32>(39318u, 32072u), vec2<u32>(global1.c, 88722u)) << (_wgslsmith_add_u32(~7946u, ~global1.c) % 32u)));
    return -10569i;
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = abs(_wgslsmith_mult_vec2_i32(vec2<i32>(~(~33147i), _wgslsmith_div_i32(arg_0, _wgslsmith_sub_i32(-2147483647i, u_input.b.x))), vec2<i32>(-global1.d.x, 5134i)));
    let var_1 = !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, false), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), vec2<bool>(any(vec2<bool>(false, true)), true), true), vec2<bool>(true, true));
    global0 = array<f32, 18>();
    let var_2 = Struct_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2394f, 671f, 545f), global1.b, true)) + vec3<f32>(-1351f, global1.b.x, -1177f)))), 0u, -vec3<i32>(8979i, -_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(-10407i, u_input.a.x)), _wgslsmith_mod_i32(-13378i, min(-60354i, 21028i))), u_input.a.x);
    var var_3 = ~abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c, 4294967295u), vec2<u32>(64656u, 4294967295u)), global1.c, _wgslsmith_div_u32(1u, 4791u), abs(4294967295u)) >> (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.c, 4294967295u, global1.c, arg_1.c), vec4<u32>(global1.c, 1u, 1u, 65795u))) % vec4<u32>(32u)));
    return func_2();
}

fn func_7(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = func_2();
    var var_1 = func_5(func_2(), var_0, func_2().c, var_0.c);
    var var_2 = !select(select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), !all(vec4<bool>(true, true, false, true))), vec3<bool>(any(vec3<bool>(true, true, true)), select(true, true, false), all(vec3<bool>(false, false, false)) != all(vec4<bool>(true, true, true, false))), false);
    var_1 = arg_0;
    var var_3 = vec4<u32>(26030u, arg_0.c, countOneBits(var_0.c), 26924u);
    return StorageBuffer(firstLeadingBit(~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, arg_0.c, var_0.c), vec4<u32>(0u, var_3.x, var_1.c, var_3.x)))), var_3.wzz);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(func_6(_wgslsmith_dot_vec2_i32(-select(u_input.b, vec2<i32>(1i, -37116i), vec2<bool>(true, false)), u_input.b), Struct_1(func_1(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b + global1.b) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(327f, -1000f, global1.b.x), global1.b))), 4294967295u, global1.d, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, global1.e, u_input.b.x), vec4<i32>(7646i, -22158i, global1.d.x, u_input.b.x)), vec4<i32>(global1.d.x, 0i, 0i, 1i) >> (vec4<u32>(17690u, global1.c, global1.c, 5075u) % vec4<u32>(32u))))));
}

