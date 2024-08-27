struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    global1 = array<vec4<bool>, 18>();
    var var_0 = Struct_2(_wgslsmith_mult_i32(arg_0, -2147483647i));
    global1 = array<vec4<bool>, 18>();
    return vec3<i32>(var_0.a, 23706i, var_0.a);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<i32>) -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -890f);
    var var_0 = arg_1;
    global1 = array<vec4<bool>, 18>();
    let var_1 = Struct_2(func_3(-26299i).x);
    var var_2 = _wgslsmith_sub_u32(~(~reverseBits(u_input.a) & reverseBits(15121u)), u_input.b.x);
    return vec4<u32>(min(u_input.c, _wgslsmith_sub_u32(~u_input.c, 0u)), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(46176u, ~350u)), ~_wgslsmith_div_u32((u_input.d & u_input.a) | 1u, min(u_input.a, u_input.c) | 0u), u_input.c >> (0u % 32u));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(-min(19419i, _wgslsmith_mult_i32(-32590i, 1i)));
    let var_1 = ~func_4(firstTrailingBit(var_0.a), true, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, _wgslsmith_sub_i32(var_0.a, var_0.a), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, -9379i, var_0.a), vec3<i32>(8699i, 1i, -24431i))), func_3(var_0.a) | max(vec3<i32>(-50140i, var_0.a, var_0.a), vec3<i32>(-25705i, var_0.a, -1i))));
    var var_2 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(abs(u_input.b), ~vec2<u32>(u_input.d, 20411u)), max(~vec2<u32>(u_input.c, var_1.x), ~vec2<u32>(4294967295u, u_input.c))) & ~(~_wgslsmith_div_vec2_u32(var_1.xx, vec2<u32>(35504u, 68881u))), vec3<f32>(_wgslsmith_f_op_f32(-1556f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275f + 1000f))), _wgslsmith_f_op_f32(max(-1180f, _wgslsmith_f_op_f32(min(-1717f, -114f)))), 699f), vec2<bool>(any(vec3<bool>(true, false, true)), !select(false, true, true)));
    let var_3 = !(!(!vec4<bool>(520f == var_2.b.x, -1358f > var_2.b.x, any(vec3<bool>(true, var_2.c.x, var_2.c.x)), any(vec3<bool>(false, var_2.c.x, true)))));
    return Struct_3(var_0.a);
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(~vec3<i32>(arg_1.a, arg_1.a, arg_2.x), vec3<i32>(-1i, 0i, -2147483647i)) << (vec3<u32>(1u, ~u_input.d, u_input.d ^ 4294967295u) % vec3<u32>(32u))), -vec3<i32>(_wgslsmith_sub_i32(arg_1.a, arg_1.a), -arg_1.a, 2147483647i) >> (~max(select(vec3<u32>(11757u, u_input.d, u_input.a), vec3<u32>(4294967295u, u_input.d, u_input.d), vec3<bool>(false, false, false)), vec3<u32>(u_input.c, u_input.b.x, u_input.b.x) >> (vec3<u32>(3356u, 0u, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = vec3<i32>(firstLeadingBit(~_wgslsmith_mod_i32(1i, arg_2.x)), _wgslsmith_add_i32(arg_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_1.a), countOneBits(var_0.yz))), reverseBits(_wgslsmith_clamp_i32(var_0.x, _wgslsmith_mod_i32(arg_2.x, arg_2.x), arg_1.a))) >> (~_wgslsmith_add_vec3_u32(~vec3<u32>(0u, 1u, u_input.d), vec3<u32>(~11975u, u_input.c, u_input.a)) % vec3<u32>(32u));
    let var_2 = _wgslsmith_div_i32(8228i, -(~var_0.x));
    var var_3 = _wgslsmith_add_i32(_wgslsmith_sub_i32(-(var_2 << (u_input.a % 32u)), arg_2.x) ^ ~var_0.x, var_0.x >> (u_input.c % 32u));
    var var_4 = i32(-1i) * -1i;
    return arg_1;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: f32) -> Struct_4 {
    let var_0 = ~u_input.d;
    global1 = array<vec4<bool>, 18>();
    var var_1 = func_5(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_3))))), func_2(), vec2<i32>(-arg_2.x, 27428i));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(555f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-873f, -409f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-350f)))), arg_0.x < ~countOneBits(38966u))) - -1259f);
    global0 = _wgslsmith_f_op_f32(select(-1017f, -386f, any(global1[_wgslsmith_index_u32(arg_0.x, 18u)])));
    return Struct_4(!select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0.x, arg_0.x), var_0), 18u)], !(!global1[_wgslsmith_index_u32(arg_0.x, 18u)]), !global1[_wgslsmith_index_u32(arg_0.x, 18u)]), Struct_1(~u_input.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_3, arg_3) * vec3<f32>(-337f, 1089f, arg_3)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-930f, -330f, 1000f) * vec3<f32>(2474f, 737f, 523f))))), select(!(!arg_1.zz), select(select(vec2<bool>(arg_1.x, arg_1.x), arg_1.xy, false), vec2<bool>(true, true), !arg_1.x), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2047f, -728f)) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_3, 1272f), vec2<f32>(arg_3, -386f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3, 345f), vec2<f32>(1860f, arg_3)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-362f, arg_3), vec2<f32>(arg_3, arg_3)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3))), _wgslsmith_f_op_f32(-arg_3))));
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: Struct_4) -> Struct_4 {
    var var_0 = func_5(-130f, func_2(), vec2<i32>(2147483647i, countOneBits(firstLeadingBit(func_5(532f, Struct_3(-1i), vec2<i32>(1i, 0i)).a))));
    let var_1 = vec4<bool>(!arg_2.a.x, all(func_1(vec2<u32>(arg_1, arg_2.b.a.x) << (~arg_2.b.a % vec2<u32>(32u)), vec3<bool>(true, true, !arg_2.b.c.x), ~vec2<i32>(var_0.a, var_0.a), arg_0).b.c), !(!(8104i < abs(var_0.a))), false);
    global1 = array<vec4<bool>, 18>();
    return func_1(u_input.b, vec3<bool>(false, !(!(!arg_2.a.x)), arg_2.b.c.x), _wgslsmith_div_vec2_i32(abs(vec2<i32>(34964i, ~(-33233i))), -vec2<i32>(reverseBits(1i), ~var_0.a)), arg_2.c.x);
}

fn func_7(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: f32) -> StorageBuffer {
    global1 = array<vec4<bool>, 18>();
    var var_0 = Struct_3(-1i);
    global1 = array<vec4<bool>, 18>();
    let var_1 = !any(vec4<bool>(true, !arg_0.a.x, !any(vec4<bool>(true, false, true, true)), arg_0.b.c.x));
    let var_2 = func_1(u_input.b, select(arg_0.a.yyz, !vec3<bool>(!var_1, !arg_0.a.x, false), !select(arg_0.a.xww, select(arg_0.a.zwy, vec3<bool>(arg_0.a.x, var_1, var_1), arg_0.a.yxy), arg_0.a.xxy)), abs(-arg_1.xy), -427f).b;
    return StorageBuffer(_wgslsmith_sub_i32(1i, -var_0.a), select(~_wgslsmith_sub_vec3_u32(arg_2 | arg_2, ~arg_2), vec3<u32>(~var_2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(10237u, 4294967295u, 10969u, var_2.a.x), vec4<u32>(19414u, 10857u, 61767u, u_input.c) | vec4<u32>(118954u, 72590u, arg_0.b.a.x, arg_2.x)), select(func_6(arg_0.c.x, var_2.a.x, arg_0).b.a.x, 1u, all(vec3<bool>(true, false, true)))), false), countOneBits(u_input.b), vec3<u32>(_wgslsmith_mult_u32(29025u, 57068u), ~1u, select(var_2.a.x, ~76732u, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(func_6(-242f, ~(~(~u_input.b.x)), func_1(u_input.b, select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), ~(-vec2<i32>(1357i, 0i)), _wgslsmith_f_op_f32(step(-1218f, _wgslsmith_f_op_f32(2052f + 960f))))), func_3(max(select(~(-8892i), -2147483647i >> (u_input.a % 32u), func_6(-753f, u_input.a, Struct_4(global1[_wgslsmith_index_u32(4294967295u, 18u)], Struct_1(u_input.b, vec3<f32>(1608f, 1743f, 696f), vec2<bool>(true, true)), vec2<f32>(-795f, 1184f))).a.x), func_5(-683f, Struct_3(1i), vec2<i32>(-3476i, -2147483647i)).a | ~1i)), ~(~(select(vec3<u32>(0u, u_input.d, 1u), vec3<u32>(u_input.b.x, 18687u, 4294967295u), true) >> (vec3<u32>(u_input.d, u_input.b.x, u_input.c) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(f32(-1f) * -255f));
}

