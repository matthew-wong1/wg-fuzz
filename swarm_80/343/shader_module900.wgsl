struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(26490i, i32(-2147483648), -1i), vec3<i32>(10723i, -14409i, 11948i), vec3<i32>(1i, -52900i, -33661i), vec3<i32>(-12292i, 1i, 34626i), vec3<i32>(2147483647i, -54837i, -37918i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(-10005i, -62565i, 36349i), vec3<i32>(-5984i, 2147483647i, -373i), vec3<i32>(-1i, -6244i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(-6122i, 0i, 2147483647i), vec3<i32>(1i, 17395i, 20643i), vec3<i32>(-30466i, i32(-2147483648), -9440i), vec3<i32>(2147483647i, -15298i, 0i), vec3<i32>(46384i, -1i, -49892i), vec3<i32>(-1i, -14891i, -32251i), vec3<i32>(-2813i, 0i, 48474i), vec3<i32>(-8976i, -26984i, i32(-2147483648)));

var<private> global2: Struct_1 = Struct_1(vec3<u32>(7420u, 0u, 59214u), vec3<bool>(true, true, true), false, vec3<bool>(false, true, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    global1 = array<vec3<i32>, 19>();
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(5197i << (global2.a.x % 32u), ~(~(-100917i))), _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(2147483647i, 1i)))), countOneBits(~(~6764i))));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(-17662i, -u_input.a.x), 55642i), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-26825i), u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.yyx, u_input.a.wxx, global1[_wgslsmith_index_u32(global2.a.x, 19u)]), reverseBits(u_input.a.zwy))), _wgslsmith_div_vec4_i32(~u_input.a, ~u_input.a)), var_0.x);
    var_1 = vec3<i32>(21127i, abs(i32(-1i) * -_wgslsmith_mod_i32(var_0.x, var_1.x)), countOneBits(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_0.x, -1i, var_0.x, var_0.x)), vec4<i32>(var_1.x, var_0.x, -2147483647i, var_0.x) | u_input.a)) << (~global2.a.x % 32u));
    var var_2 = _wgslsmith_f_op_f32(max(-874f, _wgslsmith_f_op_f32(sign(-851f))));
    return _wgslsmith_mult_i32(32437i, _wgslsmith_dot_vec2_i32(~select(vec2<i32>(var_1.x, u_input.a.x), vec2<i32>(2147483647i, -6877i) >> (global2.a.zy % vec2<u32>(32u)), any(vec2<bool>(true, false))), vec2<i32>(var_0.x, var_1.x)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -1i) << (~(~arg_0.c.a.xy) % vec2<u32>(32u)), vec2<i32>(-5841i, select(func_3(), 25676i, global0.x | global2.b.x))) | vec2<i32>(abs(arg_0.d) ^ _wgslsmith_add_i32(reverseBits(arg_0.d), u_input.a.x), _wgslsmith_div_i32(arg_0.d, max(u_input.a.x | 5086i, ~(-3376i))));
    global0 = global2.b;
    global0 = vec3<bool>(global2.d.x, true, global2.d.x);
    var var_1 = 763f;
    let var_2 = Struct_1(global2.a << (arg_0.c.a % vec3<u32>(32u)), !arg_0.c.b, true, select(select(vec3<bool>(false | global2.b.x, true, all(vec4<bool>(true, arg_0.c.b.x, true, true))), !vec3<bool>(global2.c, global0.x, global0.x), arg_0.c.b.x), !arg_0.c.d, !global2.d));
    return var_2.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1444f, _wgslsmith_f_op_f32(f32(-1f) * -148f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, _wgslsmith_f_op_f32(828f * -942f))))));
    var var_1 = vec4<bool>(arg_0.c.d.x, arg_2.d.x, false, all(vec2<bool>(true, all(vec3<bool>(true, true, true)))));
    global1 = array<vec3<i32>, 19>();
    global2 = Struct_1(~_wgslsmith_add_vec3_u32(abs(vec3<u32>(0u, arg_0.b, arg_2.a.x)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(18266u, arg_1.a.x, arg_0.e), vec3<u32>(0u, global2.a.x, arg_1.a.x)))), !vec3<bool>(true, all(select(vec4<bool>(arg_2.d.x, false, arg_1.c, arg_3.x), vec4<bool>(false, true, true, false), global2.c)), arg_2.d.x), true, !(!func_2(arg_0, vec2<f32>(1000f, arg_0.a))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(arg_0.a + -954f)));
    return Struct_1(vec3<u32>(arg_0.c.a.x, ~((59788u | arg_0.c.a.x) >> (~1u % 32u)), arg_1.a.x), arg_2.d, (~0u >> (_wgslsmith_sub_u32(~arg_0.b, 11813u) % 32u)) < _wgslsmith_dot_vec3_u32(~(~vec3<u32>(93350u, arg_2.a.x, global2.a.x)), firstLeadingBit(vec3<u32>(93910u, arg_0.e, 30304u))), arg_1.d);
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(Struct_2(728f, global2.a.x, Struct_1(global2.a, select(func_2(Struct_2(478f, global2.a.x, Struct_1(global2.a, global2.b, true, global2.b), -41254i, 128234u), vec2<f32>(337f, 349f)), vec3<bool>(global2.b.x, true, global0.x), false), !(true || global2.d.x), vec3<bool>(select(false, global2.d.x, global0.x), true, true)), 25595i, firstLeadingBit(~_wgslsmith_clamp_u32(global2.a.x, 0u, global2.a.x))), Struct_1(global2.a, !vec3<bool>(func_2(Struct_2(683f, global2.a.x, Struct_1(vec3<u32>(global2.a.x, 4294967295u, 0u), global2.b, global0.x, vec3<bool>(global0.x, global2.b.x, global2.c)), u_input.a.x, 72877u), vec2<f32>(451f, 2711f)).x, 1u != global2.a.x, all(global2.b.zx)), true, vec3<bool>(true, global2.b.x, true)), Struct_1(~global2.a, vec3<bool>(all(!global2.b.yx), all(vec3<bool>(global2.b.x, global2.b.x, false)), global0.x), global2.b.x, func_2(Struct_2(_wgslsmith_f_op_f32(-1289f * 749f), ~1u, Struct_1(vec3<u32>(global2.a.x, global2.a.x, global2.a.x), global2.d, false, vec3<bool>(global0.x, false, global2.d.x)), u_input.a.x, _wgslsmith_clamp_u32(global2.a.x, global2.a.x, global2.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(475f, -529f)))), func_2(Struct_2(_wgslsmith_f_op_f32(-276f + 674f), ~(~21469u), Struct_1(_wgslsmith_mod_vec3_u32(global2.a, global2.a), vec3<bool>(true, true, true), true, global2.b), _wgslsmith_clamp_i32(i32(-1i) * -10592i, -u_input.a.x, 0i), 1u), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1204f), _wgslsmith_div_f32(447f, -915f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(330f, -934f))))).zx);
    let var_1 = vec4<bool>(!any(var_0.b.yx), !(true || global2.b.x), all(!global0.zy), !var_0.d.x);
    global1 = array<vec3<i32>, 19>();
    let var_2 = Struct_2(-1113f, ~(101575u >> ((4294967295u >> (_wgslsmith_div_u32(global2.a.x, 0u) % 32u)) % 32u)), func_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1120f), ~abs(var_0.a.x), Struct_1(global2.a, func_2(Struct_2(-1059f, var_0.a.x, Struct_1(vec3<u32>(38710u, var_0.a.x, 68503u), vec3<bool>(global2.c, var_1.x, var_1.x), false, global2.d), u_input.a.x, 4294967295u), vec2<f32>(-982f, 1386f)), var_1.x, func_2(Struct_2(-919f, 0u, var_0, 1i, 1u), vec2<f32>(1000f, 627f))), -15408i, global2.a.x), Struct_1(vec3<u32>(firstLeadingBit(100941u), 74593u, 35901u), func_2(Struct_2(-1000f, var_0.a.x, var_0, u_input.a.x, global2.a.x), vec2<f32>(1112f, 1626f)), true | var_1.x, !(!var_1.zyw)), func_4(Struct_2(_wgslsmith_div_f32(-385f, 415f), ~var_0.a.x, var_0, ~(-31551i), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, 0u, var_0.a.x), var_0.a)), Struct_1(abs(vec3<u32>(39900u, 82578u, global2.a.x)), global2.b, !global0.x, !var_0.b), var_0, vec2<bool>(func_4(Struct_2(-561f, 48520u, Struct_1(var_0.a, var_0.b, false, var_0.b), -21164i, global2.a.x), Struct_1(vec3<u32>(0u, 60103u, var_0.a.x), vec3<bool>(false, false, true), var_0.d.x, var_0.d), Struct_1(vec3<u32>(4294967295u, 0u, global2.a.x), vec3<bool>(global2.d.x, global0.x, false), var_0.b.x, vec3<bool>(true, true, global2.d.x)), vec2<bool>(var_0.b.x, var_0.b.x)).c, false)), !func_4(Struct_2(353f, 24722u, Struct_1(global2.a, var_0.d, global2.d.x, var_1.www), u_input.a.x, 73283u), var_0, var_0, global0.zx).b.xz), u_input.a.x, 1u);
    global1 = array<vec3<i32>, 19>();
    return Struct_2(var_2.a, ~24450u, Struct_1(~vec3<u32>(var_2.b, ~var_2.e, 41727u << (var_0.a.x % 32u)), var_2.c.b, true, !vec3<bool>(true, var_1.x, func_2(Struct_2(882f, 57667u, Struct_1(var_2.c.a, var_0.d, true, vec3<bool>(true, true, false)), var_2.d, 30502u), vec2<f32>(var_2.a, -464f)).x)), _wgslsmith_clamp_i32(firstTrailingBit(~15246i), var_2.d, u_input.a.x), ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<vec3<i32>, 19>();
    let var_1 = reverseBits(global2.a) ^ abs(vec3<u32>(global2.a.x, 22910u, ~global2.a.x));
    var var_2 = min(1i, var_0.d);
    let var_3 = vec2<bool>(true, global0.x);
    var var_4 = vec4<bool>(!global0.x, all(select(vec4<bool>(var_0.a >= 877f, 0i == u_input.a.x, -1212f < var_0.a, true), !select(vec4<bool>(true, global0.x, true, true), vec4<bool>(global0.x, true, var_0.c.c, var_3.x), false), !(var_0.a != var_0.a))), true, true);
    global0 = vec3<bool>(_wgslsmith_f_op_f32(ceil(-2399f)) > var_0.a, true, func_2(func_1(), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-446f, 1754f), vec2<f32>(580f, -364f)) + vec2<f32>(var_0.a, var_0.a))))).x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.ww, max(var_0.c.a, vec3<u32>(~global2.a.x, var_0.b, 29842u)) & vec3<u32>(global2.a.x, _wgslsmith_dot_vec3_u32(~global2.a, ~vec3<u32>(var_0.c.a.x, var_0.b, var_0.b)), 0u), ~(~vec4<i32>(~var_0.d, u_input.a.x, u_input.a.x, 14355i)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1144f, 1000f)))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1061f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1465f, var_0.a))))))));
}

