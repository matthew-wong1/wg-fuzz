struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(965f, 267f, -500f, -554f), vec4<f32>(-1808f, 1000f, 850f, 212f), vec4<f32>(-2222f, -1180f, -786f, 1177f), vec4<f32>(-1000f, 249f, -502f, -157f), vec4<f32>(-200f, -2382f, 183f, 1423f), vec4<f32>(989f, 844f, 493f, 832f), vec4<f32>(-170f, 224f, 1397f, 1000f));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: u32, arg_3: f32) -> bool {
    global0 = array<vec4<f32>, 7>();
    var var_0 = -(~(-_wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, arg_0.b.x), -arg_1.x)));
    var var_1 = Struct_2(!(!(!arg_0.c.a.yxz)), Struct_1(arg_0.c.c, select(true, arg_0.a.b, !arg_0.d.x | true), vec4<bool>(!any(arg_0.c.a.zww), select(arg_0.a.a.x, arg_0.a.a.x, arg_0.c.a.x), true, true), 39626i), vec4<i32>(arg_0.b.x, arg_0.a.d, 2147483647i, firstLeadingBit(min(-8657i, 1i) & (arg_1.x & arg_0.a.d))), Struct_1(select(arg_0.c.c, select(arg_0.c.c, !arg_0.c.c, !arg_0.a.c), vec4<bool>(select(false, false, false), true, any(arg_0.a.a.xx), arg_0.a.b || arg_0.d.x)), select(!arg_0.d.x, (u_input.b & arg_2) <= 1u, false), arg_0.c.a, 10460i), arg_0.a);
    let var_2 = arg_0;
    var_0 = _wgslsmith_dot_vec2_i32(var_1.c.xx, var_2.b);
    return select(~(firstTrailingBit(-38455i) >> (~u_input.a.x % 32u)) < -arg_1.x, var_2.d.x, false);
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    global0 = array<vec4<f32>, 7>();
    var var_0 = Struct_2(vec3<bool>(false, arg_0.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -197f) - -732f), func_3(Struct_4(Struct_1(vec4<bool>(false, false, false, true), true, vec4<bool>(false, true, true, true), 4188i), ~vec2<i32>(2147483647i, 20410i), Struct_1(vec4<bool>(false, true, false, true), true, vec4<bool>(true, false, false, true), 22490i), vec2<bool>(true, true), _wgslsmith_f_op_f32(arg_0.x * 756f)), vec2<i32>(abs(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-18486i, -5742i), vec2<i32>(-1683i, 0i))), 0u, _wgslsmith_f_op_f32(f32(-1f) * -556f))), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), arg_0.x < _wgslsmith_f_op_f32(-arg_0.x)), any(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(false, false, false, true), true), _wgslsmith_clamp_i32((-10942i >> (u_input.a.x % 32u)) & _wgslsmith_add_i32(0i, 1597i), -12161i, 1i)), vec4<i32>(4017i, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -71953i, -18990i, 10515i), abs(vec4<i32>(-28173i, 578i, -1i, 0i))) >> (53934u % 32u), -1i, -1i), Struct_1(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true)), true != all(vec4<bool>(false, true, true, true)), vec4<bool>(true, false, true, _wgslsmith_f_op_f32(exp2(arg_0.x)) <= _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_sub_i32(-1i, max(_wgslsmith_mult_i32(1i, -2147483647i), i32(-1i) * -2147483647i))), Struct_1(vec4<bool>(true, _wgslsmith_div_f32(-154f, arg_0.x) > _wgslsmith_f_op_f32(sign(arg_0.x)), false & all(vec3<bool>(true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), true, vec4<bool>(all(vec3<bool>(true, true, true)), true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), _wgslsmith_div_f32(-544f, -369f) > _wgslsmith_f_op_f32(arg_0.x + 532f)), -(~58140i)));
    var var_1 = 0u;
    var_0 = Struct_2(!(!(!var_0.a)), Struct_1(vec4<bool>(any(!var_0.e.a.wy), var_0.d.a.x, var_0.b.c.x | false, !var_0.b.c.x), 0i < (_wgslsmith_dot_vec3_i32(vec3<i32>(-31310i, 1i, -397i), var_0.c.ywz) >> (select(0u, 133663u, false) % 32u)), select(!var_0.e.a, var_0.b.c, select(!var_0.b.c, select(var_0.e.a, vec4<bool>(var_0.d.b, var_0.a.x, true, var_0.b.c.x), var_0.d.a), select(var_0.d.c, var_0.e.a, vec4<bool>(true, true, false, true)))), _wgslsmith_mod_i32(~select(var_0.c.x, var_0.b.d, false), _wgslsmith_div_i32(reverseBits(var_0.b.d), _wgslsmith_div_i32(40653i, -2147483647i)))), var_0.c, Struct_1(!vec4<bool>(all(vec2<bool>(false, var_0.b.a.x)), var_0.e.a.x, var_0.d.b, var_0.a.x), var_0.d.c.x || (654f == _wgslsmith_f_op_f32(-arg_0.x)), select(vec4<bool>(var_0.a.x, true, all(var_0.e.c.wx), all(var_0.b.c.zy)), select(vec4<bool>(var_0.a.x, var_0.e.b, var_0.e.c.x, false), !vec4<bool>(false, true, false, var_0.a.x), var_0.b.c.x && false), vec4<bool>(true, func_3(Struct_4(var_0.d, var_0.c.xx, var_0.b, vec2<bool>(var_0.e.a.x, true), arg_0.x), vec2<i32>(5744i, 2147483647i), u_input.a.x, arg_0.x), var_0.b.b, !var_0.d.a.x)), 0i), Struct_1(!var_0.d.a, true, !select(var_0.d.c, var_0.b.c, arg_0.x > arg_0.x), var_0.e.d));
    let var_2 = Struct_3(var_0.d, Struct_2(!var_0.e.a.wwx, Struct_1(vec4<bool>(var_0.b.c.x, any(var_0.d.a), func_3(Struct_4(Struct_1(var_0.b.a, var_0.a.x, vec4<bool>(var_0.d.a.x, false, var_0.b.c.x, false), var_0.d.d), var_0.c.wz, Struct_1(vec4<bool>(var_0.e.b, var_0.a.x, var_0.b.c.x, false), var_0.b.c.x, vec4<bool>(false, var_0.d.b, var_0.e.a.x, var_0.d.c.x), -1i), vec2<bool>(true, true), -1375f), var_0.c.xw, 47894u, arg_0.x), var_0.a.x && false), _wgslsmith_f_op_f32(f32(-1f) * -287f) != arg_0.x, select(select(var_0.d.a, vec4<bool>(var_0.a.x, var_0.b.a.x, false, true), vec4<bool>(false, false, false, var_0.d.a.x)), var_0.b.a, var_0.d.c), _wgslsmith_div_i32(1i, var_0.e.d)), select(_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.c.x, -1i, -31244i, 52082i), -vec4<i32>(var_0.d.d, var_0.d.d, var_0.b.d, var_0.c.x)), vec4<i32>(31962i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.d, 2147483647i, var_0.b.d, var_0.e.d), var_0.c), var_0.c.x, _wgslsmith_dot_vec3_i32(var_0.c.zyz, vec3<i32>(-10189i, -1i, var_0.b.d))), select(select(vec4<bool>(var_0.e.b, true, true, false), vec4<bool>(false, var_0.b.c.x, var_0.a.x, var_0.b.a.x), var_0.d.c), var_0.d.a, select(var_0.d.c, vec4<bool>(var_0.d.a.x, true, var_0.b.b, var_0.b.c.x), vec4<bool>(true, true, var_0.e.b, var_0.e.c.x)))), var_0.b, var_0.d), _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, max(u_input.a.x, u_input.a.x), u_input.a.x | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 29896u, 101686u), vec3<u32>(u_input.b, 44946u, u_input.b)), 1u), reverseBits((vec4<u32>(4294967295u, 46356u, u_input.b, 0u) << (vec4<u32>(21408u, 21263u, 4294967295u, 10377u) % vec4<u32>(32u))) | ~vec4<u32>(44881u, u_input.a.x, 1u, u_input.b))), select(var_0.e.a.yww, select(var_0.a, !vec3<bool>(var_0.b.a.x, var_0.b.b, false), ~var_0.b.d != 9943i), true));
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = func_2(arg_2).a;
    let var_1 = var_0.a.x;
    var var_2 = _wgslsmith_clamp_u32(min(0u, 4294967295u), 0u, u_input.a.x);
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    return Struct_3(Struct_1(!select(vec4<bool>(var_1, var_1, arg_3.a.x, var_0.c.x), func_2(vec2<f32>(arg_2.x, 814f)).b.d.c, vec4<bool>(false, var_1, false, false)), func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2 - vec2<f32>(2360f, arg_2.x)), _wgslsmith_f_op_vec2_f32(arg_2 - arg_2))).a.b, vec4<bool>(all(select(var_0.c.xw, arg_0.b.a.zz, true)), var_0.a.x, true, arg_0.a.a.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_3.c.zx, min(vec2<i32>(-69622i, var_0.d), vec2<i32>(-1i, var_0.d))), arg_3.b.d)), Struct_2(vec3<bool>(arg_0.b.e.b | arg_0.b.d.b, arg_3.a.x, !(arg_0.a.b & var_1)), arg_0.a, arg_3.c ^ -vec4<i32>(9813i, 2147483647i, var_0.d, -67498i), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, arg_2.x)))).b.d, var_0), ~select(_wgslsmith_sub_u32(abs(arg_1.x), 0u), ~arg_1.x, true), arg_3.a);
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4) -> Struct_1 {
    global0 = array<vec4<f32>, 7>();
    let var_0 = Struct_4(arg_2.c, ~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(25094i, 27081i), arg_1.b.c.wx, arg_2.b), arg_2.b & arg_2.b), vec2<i32>(arg_1.a.d, firstTrailingBit(arg_0))), arg_2.c, vec2<bool>(true, all(arg_2.a.c.yzy)), _wgslsmith_f_op_f32(-1143f * 102f));
    let var_1 = !var_0.a.c.zy;
    let var_2 = !vec4<bool>(true, var_1.x | (~1u != func_2(vec2<f32>(-364f, arg_2.e)).c), false, false);
    global0 = array<vec4<f32>, 7>();
    return func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1377f, var_0.e)))))).a;
}

fn func_1() -> Struct_1 {
    var var_0 = !(!vec2<bool>(!any(vec2<bool>(true, true)), true));
    let var_1 = Struct_3(func_5(0i, func_4(func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1326f, -837f), vec2<f32>(774f, 1059f), var_0.x))), vec4<u32>(u_input.b, 1u, 4294967295u, 14588u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1584f, -608f), vec2<f32>(990f, -1000f)), vec2<f32>(279f, 857f), !var_0.x)), Struct_2(vec3<bool>(true, true, var_0.x), func_2(vec2<f32>(-429f, -2241f)).b.d, min(vec4<i32>(-1i, 13285i, 1641i, 2147483647i), vec4<i32>(-2147483647i, -47664i, 2147483647i, -4404i)), func_2(vec2<f32>(-910f, -221f)).a, Struct_1(vec4<bool>(false, var_0.x, var_0.x, var_0.x), var_0.x, vec4<bool>(var_0.x, false, true, true), -45898i))), Struct_4(Struct_1(vec4<bool>(var_0.x, false, var_0.x, false), var_0.x, !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), -49632i), -abs(vec2<i32>(16373i, -2147483647i)), Struct_1(!vec4<bool>(var_0.x, false, var_0.x, var_0.x), false, !vec4<bool>(true, true, var_0.x, false), firstLeadingBit(16969i)), select(vec2<bool>(false, true), func_4(Struct_3(Struct_1(vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x, vec4<bool>(true, false, true, var_0.x), 1i), Struct_2(vec3<bool>(false, var_0.x, true), Struct_1(vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x, vec4<bool>(var_0.x, true, var_0.x, var_0.x), 1i), vec4<i32>(54629i, -78445i, -23947i, 30186i), Struct_1(vec4<bool>(true, var_0.x, false, var_0.x), true, vec4<bool>(var_0.x, var_0.x, true, var_0.x), 0i), Struct_1(vec4<bool>(var_0.x, var_0.x, true, var_0.x), true, vec4<bool>(true, var_0.x, false, var_0.x), -36589i)), 4294967295u, vec3<bool>(true, false, false)), vec4<u32>(1u, 0u, 1u, u_input.b), vec2<f32>(-634f, 486f), Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<bool>(var_0.x, true, true, false), true, vec4<bool>(true, false, var_0.x, false), 1i), vec4<i32>(-2147483647i, -2147483647i, 41821i, 1i), Struct_1(vec4<bool>(false, false, var_0.x, var_0.x), var_0.x, vec4<bool>(var_0.x, false, var_0.x, var_0.x), -72013i), Struct_1(vec4<bool>(true, true, false, var_0.x), true, vec4<bool>(false, var_0.x, var_0.x, var_0.x), 0i))).b.a.yx, false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(907f)), _wgslsmith_f_op_f32(step(-265f, -377f))))), Struct_2(vec3<bool>(!(!var_0.x), !all(vec2<bool>(false, var_0.x)), _wgslsmith_div_f32(1002f, 266f) < _wgslsmith_f_op_f32(floor(1397f))), Struct_1(!(!vec4<bool>(var_0.x, false, false, true)), true, vec4<bool>(true, any(vec3<bool>(true, var_0.x, var_0.x)), !var_0.x, true), 1i), vec4<i32>(0i, firstTrailingBit(_wgslsmith_sub_i32(6170i, 1i)), ~countOneBits(64057i), ~(-21087i)), Struct_1(vec4<bool>(func_2(vec2<f32>(1641f, -597f)).a.b, var_0.x, !var_0.x, var_0.x), false, vec4<bool>(all(vec3<bool>(true, true, true)), var_0.x, all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), true), 2147483647i), Struct_1(vec4<bool>(!var_0.x, all(vec2<bool>(false, var_0.x)), !var_0.x, func_2(vec2<f32>(120f, 847f)).a.b), func_3(Struct_4(Struct_1(vec4<bool>(var_0.x, true, var_0.x, var_0.x), true, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), 1i), vec2<i32>(-33746i, -2147483647i), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x, vec4<bool>(false, var_0.x, var_0.x, var_0.x), 41086i), vec2<bool>(var_0.x, false), -613f), vec2<i32>(1i, 2147483647i), u_input.a.x, -1778f) || true, vec4<bool>(true, true, var_0.x, func_5(-1i, Struct_3(Struct_1(vec4<bool>(true, var_0.x, true, var_0.x), false, vec4<bool>(var_0.x, true, var_0.x, var_0.x), -20118i), Struct_2(vec3<bool>(true, false, true), Struct_1(vec4<bool>(true, var_0.x, var_0.x, false), var_0.x, vec4<bool>(false, var_0.x, false, true), 2147483647i), vec4<i32>(0i, 0i, 22804i, -24919i), Struct_1(vec4<bool>(false, var_0.x, var_0.x, true), false, vec4<bool>(var_0.x, var_0.x, false, var_0.x), 0i), Struct_1(vec4<bool>(var_0.x, var_0.x, true, false), var_0.x, vec4<bool>(true, var_0.x, var_0.x, var_0.x), 2147483647i)), u_input.b, vec3<bool>(false, true, var_0.x)), Struct_4(Struct_1(vec4<bool>(false, var_0.x, var_0.x, false), true, vec4<bool>(true, var_0.x, var_0.x, var_0.x), 0i), vec2<i32>(-7020i, 6950i), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x, vec4<bool>(var_0.x, var_0.x, var_0.x, false), 1i), vec2<bool>(var_0.x, true), 1430f)).a.x), func_5(1i, func_4(Struct_3(Struct_1(vec4<bool>(var_0.x, false, false, var_0.x), var_0.x, vec4<bool>(true, true, var_0.x, var_0.x), 4960i), Struct_2(vec3<bool>(true, false, true), Struct_1(vec4<bool>(false, var_0.x, false, var_0.x), var_0.x, vec4<bool>(true, true, var_0.x, var_0.x), -35808i), vec4<i32>(14732i, -1i, 5871i, -2915i), Struct_1(vec4<bool>(false, true, var_0.x, var_0.x), false, vec4<bool>(false, true, var_0.x, var_0.x), 8206i), Struct_1(vec4<bool>(false, var_0.x, true, var_0.x), var_0.x, vec4<bool>(var_0.x, var_0.x, false, true), 0i)), 1u, vec3<bool>(false, var_0.x, var_0.x)), vec4<u32>(49965u, 0u, u_input.b, 4294967295u), vec2<f32>(-154f, -611f), Struct_2(vec3<bool>(false, true, true), Struct_1(vec4<bool>(true, true, var_0.x, false), var_0.x, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), -1i), vec4<i32>(20615i, -1i, 22041i, -1i), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x, vec4<bool>(var_0.x, var_0.x, false, var_0.x), -25642i), Struct_1(vec4<bool>(false, var_0.x, var_0.x, var_0.x), true, vec4<bool>(var_0.x, true, var_0.x, false), -22996i))), Struct_4(Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, false), false, vec4<bool>(var_0.x, true, var_0.x, var_0.x), -1i), vec2<i32>(2147483647i, 0i), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false, vec4<bool>(true, var_0.x, true, true), 1i), vec2<bool>(false, var_0.x), -193f)).d)), u_input.a.x, select(vec3<bool>(true, true, true), vec3<bool>(!any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), var_0.x, func_4(Struct_3(Struct_1(vec4<bool>(var_0.x, false, true, var_0.x), var_0.x, vec4<bool>(true, false, var_0.x, var_0.x), 1i), Struct_2(vec3<bool>(var_0.x, var_0.x, true), Struct_1(vec4<bool>(var_0.x, var_0.x, false, var_0.x), false, vec4<bool>(var_0.x, true, true, var_0.x), 28064i), vec4<i32>(-2147483647i, 42499i, 16649i, -3621i), Struct_1(vec4<bool>(var_0.x, var_0.x, false, false), var_0.x, vec4<bool>(false, var_0.x, var_0.x, true), 49529i), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0.x, vec4<bool>(false, var_0.x, var_0.x, var_0.x), -1i)), u_input.a.x, vec3<bool>(true, false, false)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, u_input.a.x), vec4<u32>(1u, u_input.b, u_input.a.x, 4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2101f, -836f)), Struct_2(vec3<bool>(false, var_0.x, var_0.x), Struct_1(vec4<bool>(true, var_0.x, true, true), var_0.x, vec4<bool>(false, false, var_0.x, var_0.x), -18928i), vec4<i32>(29325i, -1i, -19742i, -50325i), Struct_1(vec4<bool>(true, false, false, false), var_0.x, vec4<bool>(var_0.x, var_0.x, true, var_0.x), 13871i), Struct_1(vec4<bool>(var_0.x, var_0.x, false, false), var_0.x, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), -2147483647i))).a.c.x), reverseBits(max(7066u, u_input.b)) <= _wgslsmith_mod_u32(~4294967295u, 26296u)));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(517f - -1000f))))));
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    return Struct_1(select(select(func_4(var_1, ~vec4<u32>(0u, 70670u, 4294967295u, 0u), _wgslsmith_div_vec2_f32(vec2<f32>(449f, 934f), vec2<f32>(-500f, var_2)), var_1.b).a.c, select(vec4<bool>(var_0.x, var_0.x, var_1.b.a.x, var_0.x), var_1.a.a, all(vec3<bool>(var_1.a.c.x, var_1.d.x, true))), true), var_1.b.b.c, true), !var_1.a.a.x, var_1.b.e.c, _wgslsmith_dot_vec3_i32(var_1.b.c.zwz ^ vec3<i32>(54371i, var_1.a.d, 22143i), -(~vec3<i32>(var_1.b.b.d, var_1.b.b.d, var_1.b.b.d))) | _wgslsmith_div_i32(var_1.a.d, 29493i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.a.x, 8977u, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(30043u, u_input.b, u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 0u), vec3<u32>(u_input.b, u_input.a.x, 38070u))), select(~vec3<u32>(1u, 0u, u_input.b), vec3<u32>(53878u, 1u, u_input.a.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, 45693u), vec3<u32>(u_input.b, 4730u, 1u)) % vec3<u32>(32u)), true)));
    let var_1 = Struct_2(vec3<bool>(true, true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true))), func_1(), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(1i, -30767i, -12114i, 6157i) << (~vec4<u32>(1u, 0u, var_0.x, var_0.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, 1i, 31484i), vec4<i32>(0i, 24995i, 19667i, 29655i)) << (~vec4<u32>(4294967295u, 11385u, u_input.b, var_0.x) % vec4<u32>(32u))), vec4<i32>(abs(34923i), -max(-56163i, -6506i), 11504i, -abs(-8369i))), func_5(~_wgslsmith_mod_i32(64638i, ~9290i), func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1417f, 1106f)), vec2<f32>(1f, 1f)))), Struct_4(Struct_1(vec4<bool>(false, false, true, false), select(true, true, true), vec4<bool>(true, true, true, true), 1i), ~vec2<i32>(1i, 1i), func_1(), select(vec2<bool>(true, true), vec2<bool>(true, false), func_5(-18611i, Struct_3(Struct_1(vec4<bool>(false, false, true, false), true, vec4<bool>(true, true, true, true), -65323i), Struct_2(vec3<bool>(false, false, false), Struct_1(vec4<bool>(true, true, false, true), false, vec4<bool>(true, true, false, true), -2147483647i), vec4<i32>(6346i, -2147483647i, -26415i, -1i), Struct_1(vec4<bool>(true, false, false, false), true, vec4<bool>(true, true, true, true), -10948i), Struct_1(vec4<bool>(true, true, false, true), true, vec4<bool>(false, false, true, false), -2147483647i)), 4294967295u, vec3<bool>(false, true, true)), Struct_4(Struct_1(vec4<bool>(true, false, true, false), true, vec4<bool>(false, false, true, false), 0i), vec2<i32>(1858i, -1i), Struct_1(vec4<bool>(true, false, false, true), true, vec4<bool>(true, true, false, true), 8838i), vec2<bool>(true, true), -2831f)).c.x), _wgslsmith_f_op_f32(max(939f, _wgslsmith_f_op_f32(f32(-1f) * -404f))))), Struct_1(select(func_4(func_2(vec2<f32>(216f, -455f)), ~vec4<u32>(29707u, 50011u, 17320u, var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2014f, 774f) - vec2<f32>(-1229f, 597f)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec4<bool>(true, false, false, true), true, vec4<bool>(true, false, true, false), 2147483647i), vec4<i32>(12415i, -37011i, -2147483647i, -74750i), Struct_1(vec4<bool>(true, false, true, false), true, vec4<bool>(true, true, true, false), 85595i), Struct_1(vec4<bool>(false, true, true, true), true, vec4<bool>(false, false, true, true), -17420i))).b.b.c, vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), any(func_1().a), vec4<bool>(any(vec3<bool>(true, true, true)), true, select(true, true, func_1().c.x), true), func_5(i32(-1i) * -45367i, Struct_3(func_1(), Struct_2(vec3<bool>(false, true, true), Struct_1(vec4<bool>(true, false, false, false), false, vec4<bool>(true, true, true, true), 4495i), vec4<i32>(-1i, 1i, 9569i, -2147483647i), Struct_1(vec4<bool>(true, false, true, true), false, vec4<bool>(true, true, true, false), 2147483647i), Struct_1(vec4<bool>(false, true, false, false), true, vec4<bool>(false, true, true, false), 2147483647i)), 1u, func_1().a.xyx), Struct_4(Struct_1(vec4<bool>(true, false, false, false), true, vec4<bool>(true, false, true, true), 513i), ~vec2<i32>(2147483647i, -2147483647i), Struct_1(vec4<bool>(true, false, false, true), true, vec4<bool>(true, true, true, false), 13213i), vec2<bool>(false, true), 2340f)).d));
    global0 = array<vec4<f32>, 7>();
    var var_2 = Struct_4(var_1.d, vec2<i32>(-10280i, var_1.b.d), Struct_1(!select(!var_1.b.a, !vec4<bool>(var_1.d.c.x, var_1.e.c.x, var_1.a.x, var_1.d.c.x), true), var_1.a.x, func_1().a, 23179i), func_5(firstTrailingBit(select(var_1.b.d >> (u_input.a.x % 32u), 1i, any(var_1.a.xz))), func_4(func_4(Struct_3(var_1.b, var_1, 28810u, vec3<bool>(true, true, true)), firstLeadingBit(vec4<u32>(32666u, var_0.x, var_0.x, 6254u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(923f, 652f)), func_2(vec2<f32>(1334f, -727f)).b), select(_wgslsmith_mod_vec4_u32(vec4<u32>(30984u, u_input.b, 1u, u_input.b), vec4<u32>(1u, var_0.x, 3276u, var_0.x)), vec4<u32>(u_input.b, u_input.a.x, 26417u, 4294967295u), vec4<bool>(false, var_1.d.a.x, true, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1268f, 1000f)))), var_1), Struct_4(var_1.b, vec2<i32>(-1i, var_1.d.d) | func_2(vec2<f32>(697f, -263f)).b.c.yx, var_1.d, !var_1.a.xz, _wgslsmith_f_op_f32(sign(-579f)))).a.yy, _wgslsmith_f_op_f32(select(1f, -276f, any(vec2<bool>(func_5(27096i, Struct_3(Struct_1(var_1.e.c, var_1.d.c.x, vec4<bool>(false, var_1.e.a.x, var_1.b.c.x, false), -1i), var_1, 61298u, var_1.b.a.wyx), Struct_4(Struct_1(vec4<bool>(false, true, true, var_1.e.a.x), var_1.b.c.x, vec4<bool>(false, false, var_1.e.a.x, false), -2147483647i), vec2<i32>(var_1.e.d, -14481i), Struct_1(vec4<bool>(var_1.b.a.x, false, var_1.d.b, false), true, vec4<bool>(true, var_1.b.a.x, true, true), var_1.e.d), var_1.b.a.yy, -163f)).c.x, !var_1.e.b)))));
    var var_3 = ~0u >> (~var_0.x % 32u);
    var_3 = ~(~min(u_input.b, _wgslsmith_add_u32(min(var_0.x, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(24335u, 4294967295u), vec2<u32>(var_0.x, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.c.d, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.e, 876f), vec2<f32>(-452f, -320f), vec2<bool>(true, var_2.a.a.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e, 1218f))))).a.d, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_2.e)))), var_2.e), 11113i);
}

