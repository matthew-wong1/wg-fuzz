struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<vec4<u32>, 30>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global1 = array<vec4<u32>, 30>();
    var var_0 = u_input.c;
    var_0 = 1u;
    global1 = array<vec4<u32>, 30>();
    return u_input.a.x;
}

fn func_2(arg_0: vec2<bool>) -> Struct_4 {
    var var_0 = func_3() & abs(firstLeadingBit(49862u & ~u_input.a.x));
    var var_1 = 637f;
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(max(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(20517u, 15351u)), u_input.c) & firstLeadingBit(vec3<u32>(18957u, 7404u, u_input.a.x)), ~countOneBits(_wgslsmith_add_vec3_u32(u_input.a.xzw, vec3<u32>(4294967295u, 4294967295u, 1u)))) ^ ~_wgslsmith_add_u32(10706u, u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1579f, -266f, -2802f), vec3<f32>(-1000f, 2779f, -976f)))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1129f)))), -317f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -169f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1103f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1167f) + _wgslsmith_f_op_f32(step(-2393f, 703f))), _wgslsmith_f_op_f32(round(705f))))), arg_0.x));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * -278f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(floor(var_2.x))))))), Struct_4(Struct_1(select(vec2<bool>(true, true), !arg_0, vec2<bool>(arg_0.x, arg_0.x)), u_input.a.x)), Struct_1(!arg_0, 10259u), abs(u_input.b.x), ~(~countOneBits(_wgslsmith_mult_u32(u_input.a.x, 1u))));
    return Struct_4(var_3.b.a);
}

fn func_1(arg_0: Struct_5, arg_1: Struct_2) -> Struct_4 {
    global1 = array<vec4<u32>, 30>();
    var var_0 = false;
    var_0 = !all(arg_0.b.a.a);
    global1 = array<vec4<u32>, 30>();
    var var_1 = u_input.b.x;
    return func_2(vec2<bool>(true, select((arg_0.d >= -12456i) | !arg_0.b.a.a.x, arg_0.c.a.x, all(select(arg_0.c.a, vec2<bool>(arg_0.b.a.a.x, arg_0.b.a.a.x), arg_0.c.a)))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4) -> Struct_3 {
    let var_0 = u_input.b.x;
    let var_1 = !all(vec4<bool>(true, func_1(Struct_5(-776f, Struct_4(Struct_1(arg_2.a.a, 0u)), Struct_1(arg_1.a.a, arg_1.a.b), -1i, arg_1.a.b), global0[_wgslsmith_index_u32(u_input.c, 6u)]).a.a.x, arg_2.a.a.x || arg_1.a.a.x, arg_0)) & false;
    global0 = array<Struct_2, 6>();
    global1 = array<vec4<u32>, 30>();
    var var_2 = Struct_2(_wgslsmith_div_i32(1i << (~(~1u) % 32u), i32(-1i) * -2147483647i));
    return Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1107f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -362f))))), false, abs(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-2147483647i, 2147483647i)), ~vec2<i32>(-2147483647i, 11311i)), 13393i | u_input.b.x)), _wgslsmith_add_vec3_i32(reverseBits(~u_input.b.xwx), vec3<i32>(u_input.b.x, ~u_input.b.x, 27734i)), u_input.a.xx);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f) * -792f)), func_2(vec2<bool>(arg_0.b, true)), Struct_4(Struct_1(vec2<bool>(-522f < arg_0.a, false || arg_0.b), u_input.a.x)));
}

fn func_6(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -473f), arg_0.a)));
    global1 = array<vec4<u32>, 30>();
    global0 = array<Struct_2, 6>();
    var var_1 = Struct_1(vec2<bool>(arg_0.b & true, !func_1(Struct_5(var_0.x, Struct_4(Struct_1(vec2<bool>(arg_0.b, false), 13282u)), Struct_1(vec2<bool>(true, arg_1), u_input.c), -1i, arg_0.e.x), Struct_2(-23256i)).a.a.x), 50030u);
    var var_2 = func_2(var_1.a);
    return Struct_2(func_5(arg_0).d.x ^ firstTrailingBit(arg_0.d.x));
}

fn func_7(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = func_1(Struct_5(_wgslsmith_f_op_f32(trunc(arg_3.x)), Struct_4(func_2(vec2<bool>(arg_2, arg_2)).a), func_2(vec2<bool>(true, false)).a, max(~25047i ^ _wgslsmith_sub_i32(arg_1, -1i), (u_input.b.x >> (4294967295u % 32u)) | 5426i), u_input.a.x), Struct_2(-2147483647i));
    global0 = array<Struct_2, 6>();
    let var_1 = func_6(Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -809f)), arg_3.x)), all(select(select(vec3<bool>(false, var_0.a.a.x, arg_2), vec3<bool>(arg_2, false, arg_2), var_0.a.a.x), select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(var_0.a.a.x, arg_2, var_0.a.a.x), vec3<bool>(var_0.a.a.x, true, arg_2)), true)), func_6(func_4(any(vec2<bool>(arg_2, var_0.a.a.x)), Struct_4(var_0.a), func_2(vec2<bool>(false, var_0.a.a.x))), false).a, reverseBits(vec3<i32>(1i, -1i, u_input.b.x) & abs(vec3<i32>(arg_1, u_input.b.x, u_input.b.x))), vec2<u32>(abs(u_input.c), _wgslsmith_add_u32(0u, _wgslsmith_mult_u32(var_0.a.b, 0u)))), !arg_2);
    global1 = array<vec4<u32>, 30>();
    var var_2 = -1657f;
    return func_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + arg_3.x) + -1147f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(144f, 541f)) - arg_3.x) <= arg_3.x, func_5(func_4(true, Struct_4(var_0.a), Struct_4(Struct_1(var_0.a.a, var_0.a.b)))).c, _wgslsmith_mod_vec3_i32(select(vec3<i32>(var_1.a, var_1.a, 1i), -vec3<i32>(arg_0.a, u_input.b.x, arg_1), var_0.a.b < var_0.a.b), vec3<i32>(2147483647i >> (u_input.a.x % 32u), ~2147483647i, _wgslsmith_sub_i32(arg_1, 0i))), ~(vec2<u32>(130472u, 5395u) << (select(u_input.a.xw, vec2<u32>(24637u, u_input.a.x), var_0.a.a) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 30>();
    let var_0 = Struct_1(select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(vec2<bool>(30433i <= u_input.b.x, true), vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(true, any(vec4<bool>(false, false, true, false)))), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), true)), ~_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(7786u, u_input.a.x), 4294967295u & u_input.a.x)));
    global1 = array<vec4<u32>, 30>();
    global0 = array<Struct_2, 6>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-565f))), -1844f));
    let var_2 = select(select(!(!select(vec3<bool>(false, true, var_0.a.x), vec3<bool>(var_0.a.x, true, true), false)), vec3<bool>(true, false, all(vec2<bool>(var_0.a.x, false))), var_0.a.x), select(select(!select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(false, var_0.a.x, var_0.a.x), true), vec3<bool>(false, any(vec4<bool>(var_0.a.x, true, false, false)), any(var_0.a)), vec3<bool>(true, true, true)), !vec3<bool>(all(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), var_0.a.x || var_0.a.x, var_0.a.x & false), !(all(var_0.a) || true)), vec3<bool>(true, var_0.a.x, !(!select(var_0.a.x, var_0.a.x, false))));
    let var_3 = func_7(func_6(func_5(func_4(any(vec4<bool>(false, var_0.a.x, false, var_0.a.x)), func_1(Struct_5(-1026f, Struct_4(Struct_1(var_0.a, 4294967295u)), Struct_1(var_0.a, var_0.b), -29751i, 72252u), global0[_wgslsmith_index_u32(4294967295u, 6u)]), func_2(vec2<bool>(false, var_2.x)))), true), ~(-1i), var_2.x, _wgslsmith_div_vec4_f32(vec4<f32>(1022f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -711f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-252f, 571f)), _wgslsmith_f_op_f32(ceil(-2375f)))), -1316f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1054f))), _wgslsmith_f_op_f32(-func_5(Struct_3(-1281f, false, -9042i, u_input.b.zwy, vec2<u32>(u_input.c, u_input.c))).a), -1000f, _wgslsmith_f_op_f32(sign(580f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, var_3.d.yz, var_3.e.x, vec3<u32>(var_0.b, u_input.c, var_0.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_3.a, _wgslsmith_f_op_f32(-var_3.a), -925f < var_3.a)), func_4(var_2.x, func_1(Struct_5(var_3.a, Struct_4(Struct_1(vec2<bool>(true, false), 4294967295u)), var_0, u_input.b.x, u_input.a.x), Struct_2(u_input.b.x)), Struct_4(func_2(var_2.xz).a)).a)));
}

