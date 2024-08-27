struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global1: array<i32, 28> = array<i32, 28>(0i, -8769i, -27045i, 1i, 25897i, -24013i, 2147483647i, 1i, 2147483647i, -1137i, 9015i, 0i, -11756i, i32(-2147483648), 15500i, i32(-2147483648), -17378i, 29730i, 2147483647i, -54505i, 11980i, 1i, 0i, 19427i, -42019i, 0i, 1i, 30312i);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_1(arg_0 & (firstTrailingBit(_wgslsmith_clamp_u32(3411u, 114426u, u_input.b.x)) != u_input.a.x), vec2<bool>(true, true), !(!(!vec4<bool>(arg_0, arg_0, arg_0, true))), ~vec4<u32>(u_input.b.x, countOneBits(_wgslsmith_sub_u32(u_input.a.x, u_input.b.x)), 54727u, u_input.b.x));
    let var_1 = ~19771u;
    let var_2 = vec3<bool>(true, any(!(!vec4<bool>(false, false, var_0.a, false))), true);
    global1 = array<i32, 28>();
    global1 = array<i32, 28>();
    return var_2.x && select(true, arg_0, all(select(select(var_2.zz, var_0.b, var_0.a), select(vec2<bool>(var_0.c.x, true), var_2.xz, arg_0), var_0.b)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3, arg_3: u32) -> vec2<f32> {
    var var_0 = arg_0.c;
    let var_1 = ~_wgslsmith_mod_vec2_i32(reverseBits(abs(vec2<i32>(global1[_wgslsmith_index_u32(arg_0.d.x, 28u)], 43301i))), vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, arg_3) | 94418u, 28u)], 0i));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2080f, var_2.a))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_2.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1091f, arg_2.b) * vec2<f32>(arg_2.b, 556f)))))));
    let var_4 = arg_1.b.d.yxy;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1006f)), _wgslsmith_f_op_f32(f32(-1f) * -1997f), func_3(true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * var_2.a)));
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<bool>, 13>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(func_3(true), vec2<bool>(false, true), vec4<bool>(false, true, true, true), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 69279u)), Struct_4(_wgslsmith_f_op_f32(round(192f)), Struct_1(false, vec2<bool>(false, true), vec4<bool>(true, false, false, false), u_input.a)), Struct_3(countOneBits(26001u), _wgslsmith_f_op_f32(round(-229f))), 4294967295u & u_input.a.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1213f, 110f) * vec2<f32>(-834f, -103f))))), -248f, true, Struct_1(true, select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), any(vec2<bool>(false, false)))), select(vec4<bool>(any(global0[_wgslsmith_index_u32(63713u, 13u)]), true, all(vec2<bool>(false, false)), func_3(true)), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)] < -33130i, true, true, false), true), ~_wgslsmith_mod_vec4_u32(u_input.a, u_input.a)), Struct_1(!(_wgslsmith_f_op_f32(floor(276f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<bool>(true, true), vec4<bool>(!any(vec2<bool>(false, false)), (u_input.a.x == 52163u) & (u_input.a.x >= 1u), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), !all(vec2<bool>(true, true))), u_input.a));
    global1 = array<i32, 28>();
    global0 = array<vec3<bool>, 13>();
    let var_1 = _wgslsmith_sub_u32(select(_wgslsmith_mod_u32(var_0.d.d.x, 4294967295u), 55140u, true | var_0.c), 31091u);
    return Struct_2(vec2<f32>(var_0.b, _wgslsmith_f_op_vec2_f32(func_4(var_0.e, Struct_4(-954f, var_0.d), Struct_3(~u_input.a.x, 473f), 31560u)).x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.b, -1766f)))))), var_0.c, var_0.e, var_0.d);
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> i32 {
    global0 = array<vec3<bool>, 13>();
    global0 = array<vec3<bool>, 13>();
    global0 = array<vec3<bool>, 13>();
    var var_0 = Struct_5(abs(_wgslsmith_mult_vec2_i32(abs(_wgslsmith_add_vec2_i32(vec2<i32>(51405i, global1[_wgslsmith_index_u32(1u, 28u)]), vec2<i32>(global1[_wgslsmith_index_u32(22852u, 28u)], arg_0))), select(~vec2<i32>(-27348i, 1i), max(vec2<i32>(arg_0, arg_0), vec2<i32>(2147483647i, arg_0)), func_2().d.c.x))), Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -129f)))), _wgslsmith_f_op_f32(-arg_1.a.x), func_2().c, arg_1.e, Struct_1(arg_1.d.a, arg_1.d.b, arg_1.d.c, vec4<u32>(arg_1.d.d.x, 35160u, ~1u, arg_1.e.d.x))));
    global1 = array<i32, 28>();
    return _wgslsmith_dot_vec4_i32(vec4<i32>(1i & var_0.a.x, ~16883i, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(arg_1.e.d.x), ~4733u), 28u)], 0i), _wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, ~0i, -41617i, 1i), vec4<i32>(-12142i, -var_0.a.x, ~(-4402i), _wgslsmith_clamp_i32(33306i, _wgslsmith_dot_vec4_i32(vec4<i32>(24229i, var_0.a.x, -42992i, var_0.a.x), vec4<i32>(global1[_wgslsmith_index_u32(arg_1.d.d.x, 28u)], -34469i, 15190i, arg_0)), arg_0))));
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_add_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-10774i, ~arg_0, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 0i), vec4<i32>(abs(global1[_wgslsmith_index_u32(4294967295u, 28u)]), -10784i, i32(-1i) * -2147483647i, 21910i))), vec4<i32>(_wgslsmith_add_i32(-23434i, ~arg_0 & _wgslsmith_mod_i32(4022i, global1[_wgslsmith_index_u32(arg_1, 28u)])), -46575i, countOneBits(-2147483647i), global1[_wgslsmith_index_u32(4294967295u, 28u)]));
    global0 = array<vec3<bool>, 13>();
    let var_1 = var_0.x;
    var var_2 = min(-(vec2<i32>(1i, _wgslsmith_div_i32(arg_0, var_0.x)) & max(var_0.xx, -vec2<i32>(1i, arg_0))), vec2<i32>(-1i) * -(~firstLeadingBit(var_0.wz)));
    var_2 = var_0.wx;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_2)))), -295f, true, Struct_1(arg_2.x < 3180f, func_2().e.c.yy, vec4<bool>(true || (arg_2.x <= -1215f), func_3(true), _wgslsmith_clamp_u32(arg_1, 6070u, u_input.b.x) == 0u, true), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1, u_input.a.x, 49919u, 1u), abs(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, arg_1) & vec4<u32>(u_input.b.x, arg_1, arg_1, u_input.b.x))), Struct_1(select(true, all(vec2<bool>(false, true)), true), vec2<bool>(true, true), !(!func_2().e.c), abs(vec4<u32>(~0u, arg_1, u_input.b.x, arg_1))));
}

fn func_7(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = all(func_6(arg_1.x, ~(~(~arg_0.e.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1366f, arg_0.b) * vec2<f32>(arg_0.b, arg_0.a.x))))).e.c);
    let var_1 = 481f;
    var var_2 = Struct_5(firstTrailingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, -1i), vec2<i32>(arg_2.x, 2147483647i), arg_2.yz & arg_1.zx), _wgslsmith_div_vec2_i32(arg_2.xz, arg_2.xz))), Struct_2(arg_0.a, var_1, arg_0.c, func_2().d, arg_0.d));
    var var_3 = !global0[_wgslsmith_index_u32(var_2.b.d.d.x >> ((firstLeadingBit(firstTrailingBit(var_2.b.e.d.x)) | firstTrailingBit(4294967295u)) % 32u), 13u)];
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(max(-279f, arg_0.a.x)), -375f)))));
    return var_2.b;
}

fn func_1() -> u32 {
    let var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-519f, 673f, -1084f, 1307f) * vec4<f32>(371f, -286f, 1286f, -1000f))), vec4<f32>(1f, 1f, 1f, 1f)))));
    global1 = array<i32, 28>();
    let var_2 = func_7(func_6(-global1[_wgslsmith_index_u32(reverseBits(34222u), 28u)] | func_5(~global1[_wgslsmith_index_u32(18709u, 28u)], func_2()), ~1u, var_1.xz), -_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -9310i, 4798i), vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_0, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)])), _wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(50360u, 28u)], 0i, global1[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(21611u, 28u)], global1[_wgslsmith_index_u32(var_0, 28u)]))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 28u)], 70993i, -1i), vec3<i32>(9657i, global1[_wgslsmith_index_u32(var_0, 28u)], -30959i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], 1000i))), select(_wgslsmith_div_vec3_i32(~vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(39989u, 28u)], 1i), vec3<i32>(37388i, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -31183i)) >> (vec3<u32>(u_input.b.x, 1u, u_input.a.x) % vec3<u32>(32u)), abs(vec3<i32>(global1[_wgslsmith_index_u32(15509u, 28u)], 0i, global1[_wgslsmith_index_u32(u_input.b.x, 28u)]) ^ -vec3<i32>(-17526i, -17954i, -56519i)), false));
    let var_3 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u) >> (var_2.e.d.wz % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(u_input.b, var_2.d.d.xx)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, var_0), ~var_2.e.d.zzx), _wgslsmith_add_vec3_u32(var_2.e.d.yww ^ vec3<u32>(0u, 10617u, var_0), firstTrailingBit(vec3<u32>(var_0, u_input.b.x, var_0)))));
    return firstTrailingBit(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true | (global1[_wgslsmith_index_u32(func_1(), 28u)] < global1[_wgslsmith_index_u32(0u, 28u)]), true);
    let var_1 = -max(vec2<i32>(-4464i, ~_wgslsmith_add_i32(-24858i, global1[_wgslsmith_index_u32(u_input.a.x, 28u)])), ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -32651i), vec2<i32>(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)])), 1i));
    global0 = array<vec3<bool>, 13>();
    global0 = array<vec3<bool>, 13>();
    let var_2 = var_1.x;
    global0 = array<vec3<bool>, 13>();
    var var_3 = u_input.b.x >> (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(select(4294967295u, 0u, var_0.x), ~u_input.b.x, u_input.a.x, min(u_input.b.x, u_input.b.x)), vec4<u32>(1u, ~4294967295u, u_input.b.x, _wgslsmith_div_u32(29071u, u_input.b.x))), firstLeadingBit(54755u)) % 32u);
    let var_4 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.b.x, 1u, 24449u), u_input.a), vec4<u32>(u_input.b.x, 1u, 0u, u_input.a.x)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, 48074u), ~55223u, u_input.a.x), _wgslsmith_sub_u32(58708u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), u_input.a.wxy), u_input.a.ywy);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(abs(global1[_wgslsmith_index_u32(u_input.b.x, 28u)]), -global1[_wgslsmith_index_u32(4753u, 28u)]), global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), var_1.x, 25517i), -864f, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -873f)), 2403f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-433f, 789f, 816f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(388f, 1543f, 489f), vec3<f32>(530f, 189f, 596f), var_0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1236f, 705f, -1000f)))))));
}

