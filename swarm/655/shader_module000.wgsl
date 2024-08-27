struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_1(vec2<u32>(4294967295u, 25803u), vec2<bool>(false, true), -1834f), i32(-2147483648), -1i, vec3<u32>(1u, 0u, 23767u), Struct_1(vec2<u32>(47894u, 14951u), vec2<bool>(true, false), 2111f)), Struct_3(Struct_1(vec2<u32>(62197u, 4294967295u), vec2<bool>(false, false), -933f), -1i, -44503i, vec3<u32>(108982u, 1u, 46180u), Struct_1(vec2<u32>(1u, 8096u), vec2<bool>(true, true), 350f)), Struct_3(Struct_1(vec2<u32>(4294967295u, 22907u), vec2<bool>(false, true), 695f), 1i, -77575i, vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(vec2<u32>(36698u, 1u), vec2<bool>(true, false), 1105f)), Struct_3(Struct_1(vec2<u32>(1u, 1u), vec2<bool>(true, false), -2189f), -17645i, 2147483647i, vec3<u32>(4756u, 0u, 30770u), Struct_1(vec2<u32>(22437u, 4294967295u), vec2<bool>(true, true), -874f)), Struct_3(Struct_1(vec2<u32>(4294967295u, 9570u), vec2<bool>(true, true), -1785f), 1i, 67394i, vec3<u32>(70872u, 9984u, 0u), Struct_1(vec2<u32>(14667u, 23853u), vec2<bool>(false, true), -709f)), Struct_3(Struct_1(vec2<u32>(36894u, 4294967295u), vec2<bool>(true, false), 1627f), 16324i, 1i, vec3<u32>(81627u, 76779u, 0u), Struct_1(vec2<u32>(4294967295u, 18441u), vec2<bool>(false, true), 555f)), Struct_3(Struct_1(vec2<u32>(4294967295u, 27797u), vec2<bool>(false, false), 1013f), -34648i, i32(-2147483648), vec3<u32>(19652u, 37223u, 16839u), Struct_1(vec2<u32>(48728u, 38775u), vec2<bool>(true, true), -666f)), Struct_3(Struct_1(vec2<u32>(30449u, 7212u), vec2<bool>(true, false), -1000f), i32(-2147483648), 0i, vec3<u32>(0u, 10074u, 4294967295u), Struct_1(vec2<u32>(71603u, 4294967295u), vec2<bool>(false, false), 391f)), Struct_3(Struct_1(vec2<u32>(2065u, 34363u), vec2<bool>(true, true), -1641f), 2147483647i, -1i, vec3<u32>(4070u, 16103u, 14624u), Struct_1(vec2<u32>(4294967295u, 12287u), vec2<bool>(true, false), -505f)), Struct_3(Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(true, true), -1367f), 6658i, -704i, vec3<u32>(4294967295u, 3190u, 16094u), Struct_1(vec2<u32>(41159u, 0u), vec2<bool>(true, true), -154f)));

var<private> global1: array<i32, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global0 = array<Struct_3, 10>();
    var var_0 = u_input.a.wx;
    let var_1 = Struct_2(vec3<i32>(reverseBits(-1i), u_input.a.x, _wgslsmith_mult_i32(~65238i, u_input.a.x)), Struct_1(reverseBits(vec2<u32>(1u, 1u)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(true, true), vec2<bool>(true, true)), 1141f));
    var var_2 = var_1.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-330f, -501f, 1772f), vec3<f32>(var_1.b.c, var_1.b.c, -877f)))))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(173f, _wgslsmith_f_op_f32(var_2.c - -1028f), _wgslsmith_f_op_f32(var_1.b.c + 194f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.c, 216f, var_2.c))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.c, var_2.c, 145f)))))) * vec3<f32>(-286f, var_1.b.c, _wgslsmith_f_op_f32(f32(-1f) * -117f)));
    return _wgslsmith_f_op_f32(-814f * var_2.c);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -170f) * _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(func_3(u_input.a)));
    var var_1 = Struct_2(u_input.a.zxx, Struct_1(vec2<u32>(min(_wgslsmith_add_u32(4294967295u, arg_0.a.x), ~arg_0.a.x), 0u), arg_0.b, arg_0.c));
    return Struct_2(~vec3<i32>(_wgslsmith_clamp_i32(var_1.a.x ^ 28127i, _wgslsmith_mod_i32(-2147483647i, 2147483647i), global1[_wgslsmith_index_u32(33807u, 21u)] >> (var_1.b.a.x % 32u)), var_1.a.x, global1[_wgslsmith_index_u32(abs(1u), 21u)]), arg_0);
}

fn func_1() -> f32 {
    global0 = array<Struct_3, 10>();
    global1 = array<i32, 21>();
    var var_0 = Struct_2(vec3<i32>(~(~(-2147483647i)), 1i, -_wgslsmith_mult_i32(1i, u_input.a.x)), Struct_1(~(vec2<u32>(1u, 1u) >> (abs(vec2<u32>(0u, 0u)) % vec2<u32>(32u))), vec2<bool>(all(vec3<bool>(true, true, true)), true), -1000f));
    var_0 = func_2(Struct_1(_wgslsmith_sub_vec2_u32(~(vec2<u32>(var_0.b.a.x, 4294967295u) & vec2<u32>(var_0.b.a.x, 4065u)), var_0.b.a), select(select(vec2<bool>(true, true), vec2<bool>(var_0.b.b.x, var_0.b.b.x), var_0.b.c != 251f), vec2<bool>(any(vec4<bool>(var_0.b.b.x, false, false, var_0.b.b.x)), true), select(vec2<bool>(var_0.b.b.x, var_0.b.b.x), vec2<bool>(var_0.b.b.x, false), true)), var_0.b.c));
    let var_1 = u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~reverseBits(var_1))) * -1332f);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    let var_0 = select(!vec4<bool>(true, true, arg_3.a.b.x | false, arg_2.c.b.b.x), select(!vec4<bool>(false, true, false, all(arg_3.a.b)), vec4<bool>(false, (true || arg_3.a.b.x) || !arg_2.c.b.b.x, arg_3.a.b.x, all(select(vec3<bool>(arg_2.c.b.b.x, arg_2.c.b.b.x, arg_3.e.b.x), vec3<bool>(arg_3.a.b.x, false, arg_2.c.b.b.x), arg_2.c.b.b.x))), arg_2.c.b.b.x), select(!select(select(vec4<bool>(false, arg_2.c.b.b.x, false, arg_2.c.b.b.x), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, arg_3.e.b.x, arg_2.c.b.b.x, arg_3.a.b.x), vec4<bool>(true, arg_3.e.b.x, true, arg_2.c.b.b.x), vec4<bool>(arg_3.e.b.x, true, arg_2.c.b.b.x, true)), select(vec4<bool>(false, false, arg_2.c.b.b.x, false), vec4<bool>(true, false, false, true), vec4<bool>(arg_2.c.b.b.x, true, false, arg_2.c.b.b.x))), !(!vec4<bool>(true, arg_2.c.b.b.x, arg_3.e.b.x, arg_3.e.b.x)), true | all(vec3<bool>(arg_3.a.b.x, true, arg_2.c.b.b.x))));
    let var_1 = any(vec2<bool>(!select(true, true, arg_3.a.b.x), !arg_2.c.b.b.x));
    var var_2 = 1u;
    let var_3 = abs(arg_2.c.b.a.x);
    var var_4 = arg_2.c;
    return _wgslsmith_f_op_f32(arg_3.e.c + _wgslsmith_f_op_f32(func_1()));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_3(func_2(Struct_1(vec2<u32>(_wgslsmith_mod_u32(arg_3.x, arg_3.x), reverseBits(0u)), arg_0, _wgslsmith_f_op_f32(-549f * arg_1.x))).b, i32(-1i) * -57614i, _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(abs(u_input.a), u_input.a)), -(min(u_input.a, u_input.a) | u_input.a)), vec3<u32>(~1u, abs(arg_3.x) ^ (arg_3.x ^ arg_3.x), 65394u), func_2(func_2(Struct_1(vec2<u32>(arg_3.x, 4294967295u), func_2(Struct_1(arg_3.xz, arg_0, arg_1.x)).b.b, _wgslsmith_f_op_f32(-230f * arg_1.x))).b).b);
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(67041u, reverseBits(arg_3.x)), 10u)];
    var var_1 = ~var_0.c;
    var var_2 = var_0.e.a.x <= (select(0u, max(var_0.d.x, _wgslsmith_mult_u32(4294967295u, 1u)), !(!arg_0.x)) & _wgslsmith_add_u32(func_2(Struct_1(vec2<u32>(arg_3.x, arg_3.x), var_0.a.b, var_0.a.c)).b.a.x, ~(~var_0.a.a.x)));
    var_2 = arg_2;
    return func_2(func_2(Struct_1(firstLeadingBit(vec2<u32>(arg_3.x, arg_3.x)) ^ vec2<u32>(2020u, arg_3.x), select(select(arg_0, vec2<bool>(arg_0.x, var_0.a.b.x), true), var_0.a.b, vec2<bool>(false, false)), arg_1.x)).b).b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 21>();
    let var_0 = vec3<i32>(global1[_wgslsmith_index_u32(1u << (1u % 32u), 21u)], _wgslsmith_mod_i32(u_input.a.x ^ abs(u_input.a.x), -10388i) | ~(-2896i), -global1[_wgslsmith_index_u32(1u, 21u)]);
    global1 = array<i32, 21>();
    var var_1 = func_5(vec2<bool>(true, select(true, false, all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(74265i, _wgslsmith_f_op_f32(func_1()), Struct_4(vec4<f32>(403f, -1098f, 1000f, -1000f), 936f, Struct_2(vec3<i32>(-2147483647i, 1i, -16225i), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(true, true), 673f))), Struct_3(Struct_1(vec2<u32>(32510u, 4294967295u), vec2<bool>(true, true), -750f), var_0.x, -18612i, vec3<u32>(1u, 19736u, 4294967295u), Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(false, false), 1171f)))))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1000f, 990f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -236f)))), ~(~vec3<u32>(24152u, select(31344u, 0u, false), ~1u)));
    let var_2 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(31210u, var_1.a.x), var_1.a.x, ~abs(var_1.a.x)), vec3<u32>(_wgslsmith_mult_u32(~0u, firstTrailingBit(31770u)), 38072u, var_1.a.x), abs(~abs(vec3<u32>(30747u, var_1.a.x, 52786u)))));
    var_1 = func_2(func_2(Struct_1(vec2<u32>(var_1.a.x, 4294967295u), vec2<bool>(true, true), var_1.c)).b).b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_f_op_f32(-var_1.c), ~(~(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_1.a.x, var_2.x), vec4<u32>(1u, var_2.x, var_1.a.x, 0u)) | ~vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, 81104u))), firstLeadingBit(-(~var_0.xx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1177f, -856f), vec2<f32>(var_1.c, 709f), false))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(412f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, var_1.c)))) - vec2<f32>(-1238f, var_1.c)));
}

