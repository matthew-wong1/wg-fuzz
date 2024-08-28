struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: u32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
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

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(0i, -1049f, -60031i, vec2<i32>(2147483647i, 1i), vec3<bool>(false, true, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: u32) -> i32 {
    var var_0 = countOneBits(_wgslsmith_div_vec4_i32(-max(vec4<i32>(2147483647i, -11763i, arg_1.a.c, -32944i), vec4<i32>(45613i, -1i, 2147483647i, u_input.a)), vec4<i32>(_wgslsmith_mod_i32(2147483647i, u_input.e.x), 2147483647i, _wgslsmith_dot_vec2_i32(arg_1.a.d, _wgslsmith_clamp_vec2_i32(vec2<i32>(70997i, 2844i), u_input.e.xy, u_input.e.yz)), -arg_0.a.d.a.d.x)));
    let var_1 = _wgslsmith_dot_vec2_u32(~(~select(arg_1.b, vec2<u32>(62006u, 4294967295u), true)), vec2<u32>(arg_1.b.x, 1u >> (~_wgslsmith_sub_u32(0u, u_input.c.x) % 32u)));
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~(~u_input.c.yz) | ~select(u_input.c.xx, u_input.c.yx, true), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 49293u), reverseBits(arg_0.a.d.b)))), ~arg_1.b);
    var var_3 = var_0.x;
    let var_4 = u_input.c;
    return ~2147483647i;
}

fn func_2(arg_0: vec4<f32>) -> vec2<u32> {
    global0 = array<Struct_1, 1>();
    let var_0 = Struct_5(Struct_4(true, Struct_1(func_3(Struct_5(Struct_4(true, Struct_1(u_input.e.x, arg_0.x, -1i, u_input.e.yz, vec3<bool>(false, false, true)), vec2<bool>(true, true), Struct_2(global0[_wgslsmith_index_u32(8959u, 1u)], vec2<u32>(u_input.b.x, 1491u)))), Struct_2(Struct_1(u_input.e.x, 1099f, u_input.a, u_input.e.yx, vec3<bool>(false, false, false)), u_input.b), 27325u) & (i32(-1i) * -1i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))), u_input.e.x, abs(~vec2<i32>(-1i, u_input.e.x)), vec3<bool>(true, true, true)), !vec2<bool>(true, any(vec3<bool>(false, false, false))), Struct_2(global0[_wgslsmith_index_u32(select(30215u, u_input.c.x, all(vec4<bool>(true, false, false, true))), 1u)], vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 3219u, 11502u)), min(0u, 1u)))));
    let var_1 = Struct_1(firstTrailingBit(-2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_0.x)), 415f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-195f - -632f))), !(u_input.e.x > 9885i))) + -1090f), _wgslsmith_mod_i32(var_0.a.d.a.c, -2147483647i), ~vec2<i32>(_wgslsmith_mod_i32(var_0.a.b.c & -1i, abs(-4307i)), countOneBits(16102i)), !(!(!select(var_0.a.b.e, var_0.a.b.e, true))));
    let var_2 = Struct_4(true, Struct_1(u_input.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1075f))), _wgslsmith_mod_i32(~(-1i), _wgslsmith_mult_i32(~var_0.a.d.a.c, 16195i)), abs(~(var_0.a.b.d & vec2<i32>(var_1.d.x, -15479i))), !select(!var_1.e, var_0.a.d.a.e, vec3<bool>(var_1.e.x, true, var_1.e.x))), var_0.a.b.e.xy, Struct_2(var_0.a.b, vec2<u32>(0u, 1u) >> (vec2<u32>(u_input.d, ~var_0.a.d.b.x) % vec2<u32>(32u))));
    let var_3 = Struct_3(var_0.a.d, 0u, var_0.a.b, firstTrailingBit(_wgslsmith_sub_u32(var_2.d.b.x, u_input.b.x & var_2.d.b.x)) >> (var_2.d.b.x % 32u), u_input.e);
    return ~abs(vec2<u32>(u_input.c.x << (u_input.c.x % 32u), 1u)) >> (vec2<u32>(u_input.b.x, ~0u) % vec2<u32>(32u));
}

fn func_4(arg_0: bool) -> vec3<f32> {
    global0 = array<Struct_1, 1>();
    var var_0 = select(select(vec2<bool>(true, true), vec2<bool>(arg_0, false), !vec2<bool>(all(vec4<bool>(true, arg_0, arg_0, true)), arg_0 && arg_0)), vec2<bool>(-2358i >= u_input.e.x, reverseBits(_wgslsmith_clamp_u32(23157u, 15708u, u_input.c.x)) > _wgslsmith_div_u32(4294967295u, u_input.b.x & u_input.d)), select(select(select(!vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), arg_0), false), vec2<bool>(arg_0, true), !select(vec2<bool>(arg_0, true), vec2<bool>(true, true), arg_0)), select(!(!vec2<bool>(arg_0, true)), !(!vec2<bool>(arg_0, true)), vec2<bool>(true, true)), false));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1067f, -1051f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -770f), _wgslsmith_f_op_f32(f32(-1f) * -2725f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-832f, -389f), vec2<f32>(1f, 1f)))));
    let var_2 = _wgslsmith_sub_u32(1u, 0u);
    var_0 = vec2<bool>(true, true & (select(true, arg_0, all(vec3<bool>(true, arg_0, arg_0))) && any(!vec4<bool>(arg_0, false, false, arg_0))));
    return vec3<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x)))), var_1.x);
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    global0 = array<Struct_1, 1>();
    let var_0 = arg_0;
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(218f, -1000f, var_0.a.d.a.b) * vec3<f32>(-113f, -1062f, -457f))))) + _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_1.a.d.b, vec2<u32>(var_1.a.d.b.x, u_input.d)), 2638u) <= _wgslsmith_dot_vec2_u32(vec2<u32>(65114u, 1u), func_2(vec4<f32>(687f, var_1.a.b.b, var_1.a.d.a.b, var_1.a.b.b))))));
    global0 = array<Struct_1, 1>();
    return Struct_1(-firstLeadingBit(var_0.a.d.a.a), -1407f, reverseBits(~_wgslsmith_div_i32(u_input.e.x, reverseBits(1i))), select(reverseBits(max(vec2<i32>(0i, var_0.a.b.d.x), abs(vec2<i32>(var_1.a.d.a.a, arg_0.a.b.a)))), vec2<i32>(arg_0.a.b.d.x, -1i), !var_1.a.b.e.yx), select(var_0.a.d.a.e, vec3<bool>(any(var_1.a.d.a.e.zz) | false, false, var_1.a.b.e.x), !(!vec3<bool>(arg_0.a.c.x, arg_0.a.d.a.e.x, true))));
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = countOneBits(25881u);
    var_0 = ~24207u | (u_input.b.x << (~(~61668u) % 32u));
    global0 = array<Struct_1, 1>();
    var_0 = 1u ^ func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(500f, -823f, -321f, -370f) * vec4<f32>(arg_0.b, arg_0.b, 1000f, arg_0.b)) * vec4<f32>(arg_0.b, -1272f, -395f, arg_0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, -458f, arg_0.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, arg_0.b, -1492f) * vec4<f32>(-748f, arg_0.b, 267f, -134f))))).x;
    global0 = array<Struct_1, 1>();
    return vec2<bool>(func_1(Struct_5(Struct_4(4294967295u >= u_input.d, func_1(Struct_5(Struct_4(arg_0.e.x, Struct_1(arg_0.d.x, arg_0.b, -20324i, vec2<i32>(u_input.a, arg_0.d.x), vec3<bool>(false, arg_0.e.x, arg_0.e.x)), arg_0.e.zy, Struct_2(Struct_1(-2147483647i, 938f, 2147483647i, vec2<i32>(-47220i, arg_0.c), arg_0.e), vec2<u32>(0u, u_input.d))))), !vec2<bool>(false, arg_0.e.x), Struct_2(arg_0, vec2<u32>(0u, u_input.b.x))))).e.x, false);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32) -> Struct_5 {
    let var_0 = vec2<bool>(any(!(!vec4<bool>(true, true, arg_1.e.x, arg_1.e.x))), !arg_0.c.x);
    return Struct_5(Struct_4(any(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, arg_0.b.e.x, true), vec4<bool>(false, arg_1.e.x, true, arg_1.e.x), false), vec4<bool>(arg_0.a, false, arg_0.a, var_0.x))), Struct_1(arg_0.d.a.a, _wgslsmith_f_op_vec3_f32(func_4(true)).x, 1i, abs(min(vec2<i32>(-1i, -29553i), vec2<i32>(arg_1.d.x, arg_1.d.x))), vec3<bool>(func_5(arg_1).x, var_0.x, all(vec4<bool>(true, false, true, true)))), !var_0, arg_0.d));
}

fn func_7(arg_0: f32, arg_1: bool, arg_2: Struct_5) -> Struct_2 {
    var var_0 = !(!arg_2.a.c.x);
    global0 = array<Struct_1, 1>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -723f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(682f + arg_2.a.b.b) + func_6(arg_2.a, Struct_1(1i, arg_2.a.b.b, -2147483647i, vec2<i32>(arg_2.a.b.d.x, arg_2.a.d.a.d.x), arg_2.a.d.a.e), u_input.c.x).a.b.b), -1143f), arg_2.a.c)) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.d.a.b - -317f) - 176f))), _wgslsmith_f_op_f32(func_6(arg_2.a, global0[_wgslsmith_index_u32(arg_2.a.d.b.x, 1u)], ~arg_2.a.d.b.x).a.b.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-591f, -215f)), -221f))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -802f), _wgslsmith_f_op_f32(1175f - var_1.x))))));
    var var_2 = Struct_1(reverseBits(-2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - 499f), ~(-countOneBits(~0i)), arg_2.a.b.d, vec3<bool>(true, !arg_1, true));
    return Struct_2(arg_2.a.b, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(2321u, 83408u), _wgslsmith_mult_u32(u_input.c.x, 0u)), arg_2.a.d.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(u_input.e.xx);
    var var_1 = ~_wgslsmith_add_vec2_u32(u_input.c.xz, vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(51652u, 83047u)) | u_input.c.x, abs(u_input.d)));
    var var_2 = func_7(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(131f + -1000f))))), 1f)), any(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)))), func_6(Struct_4(!(var_0.x == u_input.e.x), global0[_wgslsmith_index_u32(~var_1.x ^ _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 1u)], func_5(func_1(Struct_5(Struct_4(true, global0[_wgslsmith_index_u32(4294967295u, 1u)], vec2<bool>(true, true), Struct_2(Struct_1(-1i, 1564f, 0i, vec2<i32>(u_input.e.x, -1i), vec3<bool>(true, false, true)), u_input.c.zz))))), Struct_2(Struct_1(u_input.a, -1505f, u_input.e.x, u_input.e.zy, vec3<bool>(true, true, true)), u_input.c.zx)), func_1(Struct_5(Struct_4(false, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], vec2<bool>(false, true), Struct_2(Struct_1(u_input.a, 168f, 1i, vec2<i32>(-1i, -13283i), vec3<bool>(true, false, false)), vec2<u32>(24359u, var_1.x))))), u_input.c.x));
    var_1 = abs(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.d, u_input.b.x)), var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b, -2147483647i, 86672u);
}

