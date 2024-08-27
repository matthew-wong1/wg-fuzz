struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_3,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-933f, 1621f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-227f, -497f)), _wgslsmith_f_op_vec2_f32(abs(arg_1))))), _wgslsmith_f_op_vec2_f32(-arg_1))), arg_1));
    var_0 = _wgslsmith_f_op_vec2_f32(select(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1190f, _wgslsmith_f_op_f32(trunc(arg_1.x))), vec2<f32>(358f, _wgslsmith_f_op_f32(-1000f + var_0.x)))), !(!(!vec2<bool>(arg_2.a, true)))));
    let var_1 = !select(vec2<bool>(_wgslsmith_f_op_f32(ceil(arg_3)) > 322f, arg_2.a), select(select(vec2<bool>(false, true), vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(true, true)), vec2<bool>(select(arg_2.a, false, false), !arg_2.a), select(select(vec2<bool>(arg_2.a, false), vec2<bool>(arg_2.a, true), vec2<bool>(false, arg_2.a)), !vec2<bool>(arg_2.a, arg_2.a), arg_2.a)), max(abs(u_input.b), min(global0[_wgslsmith_index_u32(arg_0, 22u)], 23494i)) >= -min(4636i, u_input.a));
    var_0 = arg_1;
    global0 = array<i32, 22>();
    return true;
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec3<u32>) -> vec4<bool> {
    global0 = array<i32, 22>();
    let var_0 = arg_1.c.c.a;
    global0 = array<i32, 22>();
    var var_1 = Struct_2(all(!arg_1.d), -949f, _wgslsmith_mult_i32(min(arg_1.b.b.x, 77660i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-9311i, -1i, u_input.a, 18309i) << (vec4<u32>(1u, 4294967295u, u_input.c, 53544u) % vec4<u32>(32u)), ~vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 22u)], u_input.a, u_input.b, u_input.a))));
    var_1 = Struct_2(1u < u_input.c, 343f, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1.b.c.c, vec4<u32>(4294967295u, u_input.c, u_input.c, 26422u), vec4<u32>(4294967295u, u_input.c, 103030u, 23903u)), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, arg_1.b.c.c.x), vec4<u32>(arg_2.x, 1u, 0u, 57360u) >> (vec4<u32>(0u, arg_2.x, arg_2.x, u_input.d.x) % vec4<u32>(32u))), arg_1.c.c.c), ~(arg_2.x >> (29601u % 32u))), 22u)]);
    return vec4<bool>(true, true, true, any(select(vec3<bool>(false, arg_1.c.a, var_1.a), vec3<bool>(all(vec2<bool>(arg_1.c.a, false)), true, !arg_1.b.a), select(select(vec3<bool>(arg_1.d.x, arg_1.b.c.b.x, true), vec3<bool>(arg_1.c.a, false, false), vec3<bool>(false, var_1.a, true)), arg_1.d.xxx, !var_1.a))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> bool {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1261f)), Struct_4(-(-vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], u_input.b, -35195i) ^ vec3<i32>(-2147483647i, 16405i, 2147483647i)), Struct_3(true | (0u > u_input.d.x), _wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 22u)], arg_1.x, u_input.b), vec3<i32>(u_input.b, 28287i, arg_1.x) << (u_input.d % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(312f + 1368f), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), abs(vec4<u32>(u_input.d.x, 27518u, 1u, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_3(-global0[_wgslsmith_index_u32(1u, 22u)] >= _wgslsmith_clamp_i32(-1720i, 0i, u_input.a), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(45732i, -28522i, global0[_wgslsmith_index_u32(1u, 22u)]), vec3<i32>(0i, arg_1.x, arg_0))), Struct_1(-843f, select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), select(vec4<u32>(u_input.c, u_input.d.x, 1u, 24404u), vec4<u32>(u_input.d.x, u_input.c, 4294967295u, 4294967295u), vec4<bool>(false, true, true, true)), 1f)), !vec4<bool>(func_3(38686u, vec2<f32>(295f, 823f), Struct_2(false, 1402f, -1i), 1240f), true, any(vec2<bool>(true, false)), true)), ~(~(~(~vec3<u32>(u_input.c, 1u, u_input.d.x)))));
    var var_1 = Struct_2(any(vec2<bool>(var_0.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -919f), 2147483647i);
    var_1 = Struct_2(var_1.a, 494f, 4236i);
    let var_2 = 0i;
    var_0 = func_4(339f, Struct_4(-(_wgslsmith_mod_vec3_i32(vec3<i32>(-32756i, 2147483647i, -2147483647i), vec3<i32>(14249i, u_input.b, 2147483647i)) >> (~vec3<u32>(u_input.d.x, u_input.c, u_input.c) % vec3<u32>(32u))), Struct_3(!func_3(1u, vec2<f32>(-1477f, 410f), Struct_2(true, var_1.b, 22339i), 1923f), min(vec3<i32>(arg_0, 0i, 74593i), ~vec3<i32>(16025i, var_2, var_2)), Struct_1(-1427f, vec4<bool>(true, true, var_1.a, var_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.d.x, u_input.c, u_input.c), vec4<u32>(u_input.c, 1u, 4294967295u, 87163u)), 1000f)), Struct_3(var_0.x, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 22u)], 9037i, 2147483647i, global0[_wgslsmith_index_u32(u_input.d.x, 22u)]), vec4<i32>(arg_0, u_input.a, 1i, -2147483647i)), _wgslsmith_add_i32(arg_0, -19781i), ~arg_1.x), Struct_1(var_1.b, select(vec4<bool>(var_0.x, var_1.a, true, false), vec4<bool>(var_0.x, true, false, true), vec4<bool>(false, var_0.x, true, true)), select(vec4<u32>(u_input.c, u_input.d.x, u_input.c, u_input.d.x), vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, 30954u), vec4<bool>(true, var_1.a, true, var_0.x)), var_1.b)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1303f), Struct_4(vec3<i32>(arg_0, arg_1.x, 84963i), Struct_3(true, vec3<i32>(arg_1.x, arg_1.x, -1i), Struct_1(var_1.b, vec4<bool>(var_1.a, var_0.x, var_0.x, var_1.a), vec4<u32>(1u, 18609u, 0u, u_input.d.x), var_1.b)), Struct_3(false, vec3<i32>(18960i, 0i, 2147483647i), Struct_1(var_1.b, vec4<bool>(var_1.a, true, var_0.x, var_0.x), vec4<u32>(76079u, 0u, u_input.c, u_input.c), var_1.b)), vec4<bool>(false, false, var_1.a, var_1.a)), vec3<u32>(max(u_input.c, u_input.d.x), 4174u, ~4294967295u))), vec3<u32>(_wgslsmith_mult_u32(u_input.c, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), u_input.c, abs(_wgslsmith_clamp_u32(0u, u_input.c, u_input.d.x))) >> (min(vec3<u32>(u_input.c >> (u_input.d.x % 32u), firstTrailingBit(u_input.c), u_input.c), ~select(u_input.d, vec3<u32>(u_input.c, u_input.d.x, u_input.c), var_0.xwx)) % vec3<u32>(32u)));
    return _wgslsmith_add_i32(~firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 22u)] ^ global0[_wgslsmith_index_u32(u_input.d.x, 22u)]), max(select(1i, var_1.c, var_1.a) & -2147483647i, var_1.c | _wgslsmith_clamp_i32(u_input.b, global0[_wgslsmith_index_u32(u_input.c, 22u)], 13254i))) <= -(~_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(0u >> (0u % 32u), 22u)], firstTrailingBit(arg_1.x)));
}

fn func_5(arg_0: vec4<u32>, arg_1: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 290f, -1726f, -234f))))))));
    global0 = array<i32, 22>();
    let var_1 = arg_1;
    var var_2 = var_0.zw;
    let var_3 = vec2<bool>(select(any(select(vec4<bool>(true, arg_1, true, var_1), vec4<bool>(true, var_1, arg_1, false), true)), true, false), var_1);
    return Struct_4(abs(-_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(u_input.b, -1i, global0[_wgslsmith_index_u32(arg_0.x, 22u)])), select(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], global0[_wgslsmith_index_u32(arg_0.x, 22u)]), vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], global0[_wgslsmith_index_u32(u_input.c, 22u)]), true), select(vec3<i32>(u_input.b, -2147483647i, -9837i), vec3<i32>(-3350i, global0[_wgslsmith_index_u32(1u, 22u)], -15474i), false))), Struct_3(!select(var_0.x <= 1235f, var_1, true), vec3<i32>(0i, _wgslsmith_sub_i32(u_input.b, u_input.a & global0[_wgslsmith_index_u32(33931u, 22u)]), u_input.a), Struct_1(_wgslsmith_f_op_f32(sign(1223f)), select(!vec4<bool>(var_1, false, var_3.x, true), vec4<bool>(var_3.x, false, var_1, arg_1), var_1), vec4<u32>(abs(arg_0.x), 1u ^ u_input.d.x, u_input.c, ~10626u), _wgslsmith_f_op_f32(-543f - -646f))), Struct_3(false, _wgslsmith_mult_vec3_i32(min(min(vec3<i32>(global0[_wgslsmith_index_u32(arg_0.x, 22u)], 0i, 13374i), vec3<i32>(u_input.a, 19206i, 1i)), vec3<i32>(-2147483647i, -28864i, u_input.b)), select(~vec3<i32>(-1i, -66104i, u_input.a), ~vec3<i32>(-1106i, 2147483647i, 0i), func_4(2072f, Struct_4(vec3<i32>(u_input.b, -1i, global0[_wgslsmith_index_u32(4294967295u, 22u)]), Struct_3(var_1, vec3<i32>(-7855i, global0[_wgslsmith_index_u32(u_input.c, 22u)], u_input.a), Struct_1(var_0.x, vec4<bool>(true, arg_1, arg_1, arg_1), arg_0, var_2.x)), Struct_3(arg_1, vec3<i32>(global0[_wgslsmith_index_u32(0u, 22u)], 1i, global0[_wgslsmith_index_u32(arg_0.x, 22u)]), Struct_1(var_2.x, vec4<bool>(false, false, var_3.x, var_3.x), arg_0, var_2.x)), vec4<bool>(arg_1, arg_1, var_1, false)), arg_0.zxw).x)), Struct_1(var_0.x, vec4<bool>(arg_1, all(vec3<bool>(var_1, true, true)), any(vec3<bool>(var_1, arg_1, var_1)), all(vec4<bool>(var_1, true, true, var_1))), _wgslsmith_mult_vec4_u32(arg_0, select(arg_0, vec4<u32>(79507u, 1u, arg_0.x, 64939u), true)), -2812f)), vec4<bool>(!any(vec3<bool>(arg_1, true, var_1)), true, !(min(-1451i, global0[_wgslsmith_index_u32(u_input.c, 22u)]) <= u_input.a), abs(global0[_wgslsmith_index_u32(arg_0.x, 22u)]) != _wgslsmith_div_i32(abs(u_input.a), u_input.b)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-617f, 1209f)) - arg_0.c.c.d), _wgslsmith_div_f32(arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.b)))), -1708f), vec3<f32>(-1340f, -598f, arg_0.b.c.a));
    let var_1 = 0i & u_input.b;
    global0 = array<i32, 22>();
    let var_2 = vec4<f32>(arg_3.b, _wgslsmith_f_op_f32(trunc(arg_1.b.c.d)), arg_0.b.c.d, -671f);
    var var_3 = func_3(~1u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1727f))), 581f), Struct_2(arg_0.c.c.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(func_5(arg_0.c.c.c, arg_0.d.x).c.c.a, arg_0.b.c.a, false)) - -1000f), -33619i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + arg_1.c.c.d), _wgslsmith_f_op_f32(f32(-1f) * -397f))))));
    return Struct_3(arg_3.a, vec3<i32>(-(~global0[_wgslsmith_index_u32(arg_0.c.c.c.x, 22u)] ^ u_input.b), _wgslsmith_dot_vec3_i32(select(firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(41272u, 22u)], arg_0.a.x, var_1)), _wgslsmith_mult_vec3_i32(arg_0.c.b, vec3<i32>(-36798i, -2147483647i, arg_3.c)), arg_1.c.c.c.x != arg_0.c.c.c.x), firstTrailingBit(~vec3<i32>(u_input.a, 22867i, -35942i))), _wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(global0[_wgslsmith_index_u32(0u, 22u)], var_1, arg_1.c.b.x, global0[_wgslsmith_index_u32(arg_1.b.c.c.x, 22u)])), firstLeadingBit(vec4<i32>(arg_2, arg_3.c, 1i, 2147483647i)))), arg_0.b.c);
}

fn func_1() -> f32 {
    global0 = array<i32, 22>();
    let var_0 = Struct_4(_wgslsmith_div_vec3_i32(-(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.b), vec3<i32>(global0[_wgslsmith_index_u32(1u, 22u)], u_input.b, 26065i)) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 26965i, global0[_wgslsmith_index_u32(u_input.c, 22u)]), vec3<i32>(global0[_wgslsmith_index_u32(0u, 22u)], 0i, 2060i))), abs(abs(vec3<i32>(-2147483647i, -62246i, 44482i) >> (u_input.d % vec3<u32>(32u))))), func_6(func_5(select(vec4<u32>(u_input.d.x, u_input.c, u_input.c, 1u), ~vec4<u32>(67599u, 19382u, 4294967295u, 4294967295u), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))), func_2(reverseBits(u_input.b), vec2<i32>(1i, -6411i))), func_5(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(17818u, 171297u, u_input.d.x, u_input.c)), ~vec4<u32>(1u, u_input.c, 75465u, 38314u)), !all(vec4<bool>(true, true, true, false))), global0[_wgslsmith_index_u32(~(reverseBits(u_input.d.x) | _wgslsmith_mult_u32(u_input.d.x, 124267u)), 22u)], Struct_2(!any(vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + 2119f), _wgslsmith_f_op_f32(-1266f - -1747f))), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], -10616i), -vec2<i32>(u_input.b, 12025i)))), func_5(~(~_wgslsmith_add_vec4_u32(vec4<u32>(58778u, 1u, 1u, 1545u), vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x))), func_5(~vec4<u32>(u_input.d.x, 4294967295u, u_input.c, 11637u), func_2(global0[_wgslsmith_index_u32(u_input.c, 22u)], vec2<i32>(2147483647i, 2147483647i))).d.x & !func_3(1u, vec2<f32>(-915f, 125f), Struct_2(true, 491f, u_input.a), 581f)).c, !(!vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, false)))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c.a + var_0.b.c.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, reverseBits(u_input.d.x)), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(33769u, u_input.d.x, 4294967295u)), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(14797u, u_input.c, u_input.d.x), vec3<u32>(u_input.d.x, 1u, 23032u))), ~(~vec3<u32>(0u, u_input.d.x, u_input.d.x)))));
    var var_1 = any(vec4<bool>(!all(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-37063i, u_input.b, 53860i, u_input.b)), -vec4<i32>(u_input.a, u_input.b, 600i, -2147483647i)) <= _wgslsmith_dot_vec4_i32(-vec4<i32>(-16124i, 2147483647i, u_input.b, 1i), max(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 22u)], 36764i, 18390i, 30111i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], 5622i, -2147483647i, 0i))), _wgslsmith_f_op_f32(func_1()) != -1000f, !select(false, false, true) && true));
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    let var_2 = func_4(_wgslsmith_f_op_f32(-717f * _wgslsmith_f_op_f32(func_1())), Struct_4(min(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(global0[_wgslsmith_index_u32(1u, 22u)], -2147483647i, global0[_wgslsmith_index_u32(1u, 22u)]), vec3<i32>(1i, -2147483647i, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-52815i, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], u_input.a), vec3<i32>(-11262i, 4040i, 6477i))), func_5(~(~vec4<u32>(u_input.d.x, u_input.c, var_0.x, u_input.d.x)), true).b, Struct_3(func_6(func_5(vec4<u32>(var_0.x, var_0.x, 44786u, 35429u), true), func_5(vec4<u32>(u_input.d.x, 35336u, 0u, var_0.x), true), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(16776u, 22u)], -2147483647i), Struct_2(true, 131f, global0[_wgslsmith_index_u32(u_input.c, 22u)])).c.b.x, ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 31918i, u_input.a), vec3<i32>(u_input.b, u_input.a, 2147483647i)), func_5(vec4<u32>(var_0.x, 1119u, u_input.d.x, var_0.x), any(vec4<bool>(true, true, false, false))).b.c), vec4<bool>(_wgslsmith_add_i32(-37128i, global0[_wgslsmith_index_u32(u_input.d.x, 22u)]) == _wgslsmith_add_i32(global0[_wgslsmith_index_u32(var_0.x, 22u)], -2147483647i), true, true, true)), _wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(66110u, var_0.x, var_0.x))), vec3<u32>(0u, 11495u, 28436u))).zw;
    let x = u_input.a;
    s_output = StorageBuffer(-(~select(u_input.a, ~2147483647i, any(vec4<bool>(true, var_2.x, var_2.x, var_2.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(992f, -1015f, 499f), vec3<f32>(132f, 1000f, -434f), vec3<bool>(false, var_2.x, var_2.x))))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -662f, 1182f)))), vec3<f32>(1f, 1f, 1f))), ~_wgslsmith_mod_u32(~_wgslsmith_div_u32(var_0.x, 4294967295u), 65913u), 14333u);
}

