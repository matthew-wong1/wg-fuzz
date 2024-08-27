struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false));

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<f32>(1179f, 1258f, -355f, 755f), vec3<bool>(false, false, true), 38765i), Struct_1(vec4<f32>(1148f, -365f, 956f, -1477f), vec3<bool>(true, false, true), 0i), Struct_1(vec4<f32>(1245f, 1000f, -1357f, 1000f), vec3<bool>(false, false, false), i32(-2147483648)), Struct_1(vec4<f32>(-272f, 1315f, -332f, 1945f), vec3<bool>(false, false, true), 0i), Struct_1(vec4<f32>(1000f, -152f, 1736f, -1218f), vec3<bool>(true, false, true), 36286i), Struct_1(vec4<f32>(-210f, -1184f, -472f, -906f), vec3<bool>(true, true, false), 1i), Struct_1(vec4<f32>(-834f, -1192f, 478f, -1000f), vec3<bool>(false, true, true), i32(-2147483648)), Struct_1(vec4<f32>(101f, -1000f, 219f, 1304f), vec3<bool>(true, false, false), 0i), Struct_1(vec4<f32>(-983f, 1536f, 683f, 513f), vec3<bool>(true, true, true), 1i), Struct_1(vec4<f32>(1135f, 972f, 1287f, 1506f), vec3<bool>(true, false, false), i32(-2147483648)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: vec3<bool>) -> i32 {
    var var_0 = ~(-max(vec3<i32>(-98788i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, arg_0.c), vec2<i32>(arg_0.c, -17302i)), arg_0.c), -select(vec3<i32>(59369i, -1i, -1i), vec3<i32>(2147483647i, -2147483647i, 34488i), false)));
    var var_1 = var_0.x;
    let var_2 = Struct_3(vec2<f32>(_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1327f)) - -350f))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(arg_0.a, arg_0.a, vec4<bool>(true, false, false, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(arg_0.a - arg_0.a)))), arg_3, (var_0.x ^ (i32(-1i) * -2147483647i)) << (arg_1.x % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -262f));
    let var_3 = Struct_3(arg_0.a.xx, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, var_2.b.a.x, arg_0.a.x, 158f), _wgslsmith_f_op_vec4_f32(arg_0.a + vec4<f32>(210f, arg_0.a.x, arg_0.a.x, arg_0.a.x)))), select(vec3<bool>(!var_2.b.b.x, arg_3.x, true), vec3<bool>(true, var_2.b.b.x, 438f > arg_0.a.x), arg_0.b), _wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, ~0i), var_2.b.c, _wgslsmith_mult_i32(0i, var_0.x))), 1211f);
    global0 = array<vec4<bool>, 28>();
    return i32(-1i) * -2147483647i;
}

fn func_2(arg_0: i32) -> vec2<i32> {
    var var_0 = true;
    var var_1 = abs(4294967295u);
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(~9874i, func_3(global2[_wgslsmith_index_u32(1u, 10u)], ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ vec3<u32>(44760u, u_input.a.x, 1u), vec3<bool>(true, true, true)) | 22127i), vec2<i32>(arg_0, ~(~_wgslsmith_mod_i32(-1i, arg_0))));
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(608f + 1355f))), 1f, _wgslsmith_f_op_f32(floor(786f)), 691f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-873f, -1908f, -646f, -575f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1026f, -1647f, -378f, 943f), vec4<f32>(1197f, -601f, -1122f, -1000f), true))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-514f, -307f, -1000f, -152f) * vec4<f32>(287f, -107f, -584f, -809f)))))), vec3<bool>(any(vec4<bool>(true, true, true, true)) | true, !(!(u_input.a.x < u_input.a.x)), all(vec4<bool>(true, true, true, true))), _wgslsmith_sub_i32(-arg_0, -1i));
    var var_4 = Struct_4(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_3.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-212f, var_3.a.x, 1000f, -1251f)))), _wgslsmith_f_op_vec4_f32(-var_3.a)), var_3.b.xz), 1i, _wgslsmith_add_vec2_i32(min(vec2<i32>(var_2.x, 8071i) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(var_2.x, 2147483647i)) >> (u_input.a % vec2<u32>(32u)), ~(~vec2<i32>(-7963i, 9796i) ^ (vec2<i32>(1i, 8619i) | vec2<i32>(7749i, var_3.c)))));
    return var_4.c;
}

fn func_4(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = 1i ^ _wgslsmith_sub_i32(arg_0.x, -57292i);
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.a.x, 4294967295u), ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x)) & 31852u, 0u, ~(~countOneBits(u_input.a.x)));
    var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(~30411u, u_input.a.x, u_input.a.x)), ~select(~vec3<u32>(u_input.a.x, 4294967295u, 28968u), ~vec3<u32>(u_input.a.x, 0u, u_input.a.x), false)), vec3<u32>(34795u ^ var_1.x, abs(16636u), ~countOneBits(u_input.a.x)));
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 19861u)), (var_1.x & var_1.x) | _wgslsmith_div_u32(u_input.a.x, 1u), abs(_wgslsmith_sub_u32(32597u, var_1.x))), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 0u, 16110u), ~vec3<u32>(var_1.x, 4294967295u, u_input.a.x)), vec3<u32>(var_1.x << (abs(1u) % 32u), ~(~4294967295u), ~abs(var_1.x))) & _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 6157u << (u_input.a.x % 32u), ~min(var_1.x, var_1.x)), reverseBits(~firstTrailingBit(vec3<u32>(1u, 0u, u_input.a.x))));
    var var_2 = 1i << (_wgslsmith_mod_u32(~var_1.x ^ (var_1.x & (var_1.x | var_1.x)), ~u_input.a.x) % 32u);
    return Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1019f - 307f)), _wgslsmith_f_op_f32(386f - 2052f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1387f, -1051f)))), global1[_wgslsmith_index_u32(17699u, 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1166f))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32) -> Struct_2 {
    let var_0 = func_4(abs(func_2(~firstTrailingBit(-715i))));
    global1 = array<Struct_1, 23>();
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(step(var_0.b.a, _wgslsmith_f_op_vec4_f32(min(var_0.b.a, _wgslsmith_f_op_vec4_f32(var_0.b.a * vec4<f32>(-435f, var_0.a.x, -797f, 747f)))))), var_0.b.b.zx), firstLeadingBit(-14408i), _wgslsmith_mod_vec2_i32(min(~vec2<i32>(arg_2, -2147483647i), -vec2<i32>(-1i, 21282i)), -_wgslsmith_div_vec2_i32(vec2<i32>(16130i, arg_2), vec2<i32>(arg_2, var_0.b.c) & vec2<i32>(arg_2, arg_1))));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_div_u32(~_wgslsmith_sub_u32(firstLeadingBit(4294967295u), 52845u ^ arg_0), u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 81247u));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f)), _wgslsmith_f_op_f32(floor(-2348f))) + var_1.a.a.zz), func_4(var_1.c).b, var_1.a.a.x);
    return var_1.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32) -> Struct_4 {
    let var_0 = func_4(-countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2, -2147483647i) ^ vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(arg_2, arg_2), _wgslsmith_mod_vec2_i32(vec2<i32>(10568i, -40664i), vec2<i32>(-2147483647i, arg_2))))).b;
    global1 = array<Struct_1, 23>();
    let var_1 = var_0.c;
    return Struct_4(func_1(38564u, -1i ^ (var_1 << (select(u_input.a.x, arg_1.x, false) % 32u)), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.c, -12550i, -38057i), ~1i), arg_2)), -1i << (~u_input.a.x % 32u), ~vec2<i32>(2147483647i, 4707i));
}

fn func_6(arg_0: Struct_4, arg_1: u32) -> Struct_2 {
    let var_0 = !vec4<bool>(!arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x, func_5(func_5(func_5(arg_0.a, vec4<u32>(arg_1, 1u, 0u, 4294967295u), 1i).a, ~vec4<u32>(0u, u_input.a.x, u_input.a.x, arg_1), firstTrailingBit(arg_0.b)).a, abs(~vec4<u32>(1u, u_input.a.x, 26400u, arg_1)), ~arg_0.c.x).a.b.x);
    global0 = array<vec4<bool>, 28>();
    global2 = array<Struct_1, 10>();
    let var_1 = func_4(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.c.x, 45450i | _wgslsmith_dot_vec3_i32(vec3<i32>(51059i, arg_0.b, arg_0.b), vec3<i32>(1i, arg_0.b, arg_0.b))), ~min(min(vec2<i32>(-2147483647i, -12118i), arg_0.c), -arg_0.c)));
    let var_2 = _wgslsmith_sub_i32(-15447i, arg_0.c.x);
    return Struct_2(var_1.b.a, select(var_0.xz, select(vec2<bool>(arg_0.a.b.x, true), vec2<bool>(var_0.x, arg_1 != 101117u), vec2<bool>(var_1.b.b.x, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), var_1.b.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1975i;
    var var_1 = Struct_4(func_6(func_5(func_1(u_input.a.x, 14287i, 0i), _wgslsmith_sub_vec4_u32(vec4<u32>(23423u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(50749u, u_input.a.x, u_input.a.x, u_input.a.x)) & vec4<u32>(34492u, 1u, 12078u, u_input.a.x), 2147483647i), 23661u), ~min(_wgslsmith_mod_i32(0i, -10887i), -2147483647i) & func_4(-(~vec2<i32>(-2147483647i, -1i))).b.c, func_5(func_1(64424u << (u_input.a.x % 32u), ~30660i, func_4(max(vec2<i32>(-25174i, 5755i), vec2<i32>(-49851i, 0i))).b.c), (vec4<u32>(28850u, u_input.a.x, u_input.a.x, 4294967295u) & (vec4<u32>(36761u, u_input.a.x, 1u, 0u) >> (vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 6664u, 13200u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(476u, u_input.a.x, u_input.a.x, 25054u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(1u, 1u, u_input.a.x, 0u))), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -63i), vec2<i32>(0i, min(-35142i, 6698i)))).c);
    let var_2 = 1298f;
    var var_3 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a.a - var_1.a.a)))), vec2<bool>(max(6109i, -2147483647i) > firstTrailingBit(var_1.c.x), var_1.a.b.x)), ~(var_1.b & var_1.b), select(var_1.c >> (u_input.a % vec2<u32>(32u)), vec2<i32>(select(1i, firstLeadingBit(0i), any(global0[_wgslsmith_index_u32(2455u, 28u)])), max(9942i, var_1.c.x & 12196i)), func_1(u_input.a.x, ~_wgslsmith_sub_i32(var_1.c.x, var_1.b), 72434i).b));
    let var_4 = var_1.a.b;
    var_1 = Struct_4(Struct_2(var_1.a.a, vec2<bool>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) < ~u_input.a.x, true)), -11536i, vec2<i32>(~select(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, var_3.c.x, 0i, var_3.c.x), vec4<i32>(34858i, var_1.c.x, 2212i, var_3.b)), !var_4.x), var_1.b));
    var var_5 = func_4(func_5(func_1(max(u_input.a.x, min(4294967295u, u_input.a.x)), -1i, max(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, var_1.b), vec3<i32>(0i, var_1.c.x, var_1.c.x)), var_1.b & var_3.c.x)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 5637u, u_input.a.x, 1u), vec4<u32>(30800u, 23218u, u_input.a.x, u_input.a.x))) ^ vec4<u32>(~u_input.a.x, ~u_input.a.x, 1u, ~u_input.a.x), func_3(func_4(-var_1.c).b, ~abs(vec3<u32>(u_input.a.x, 1u, 52326u)), vec3<u32>(4294967295u ^ u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x), !(!vec3<bool>(var_3.a.b.x, false, var_4.x)))).c);
    let x = u_input.a;
    s_output = StorageBuffer(select(select(vec4<i32>(var_3.b, 1i, 37118i, -2147483647i), vec4<i32>(-9748i, var_1.c.x, 29950i, var_5.b.c), global0[_wgslsmith_index_u32(u_input.a.x, 28u)]) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-17654i, var_5.b.c, 0i, 0i), vec4<i32>(2147483647i, 4992i, 38703i, var_5.b.c), vec4<i32>(var_1.c.x, var_1.b, var_3.b, -58618i)), -abs(vec4<i32>(-1i, 2147483647i, 0i, 10819i)), var_1.a.b.x & true) << (vec4<u32>(5306u >> (u_input.a.x % 32u), select(1u, _wgslsmith_mult_u32(45398u, 3879u), u_input.a.x != 45553u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 6812u, u_input.a.x, u_input.a.x), vec4<u32>(7779u, 216u, 69560u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 67820u)), u_input.a.x) % vec4<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.a, abs(countOneBits(u_input.a))), _wgslsmith_f_op_vec2_f32(func_6(func_5(var_3.a, ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u), var_5.b.c), _wgslsmith_clamp_u32(~12545u, u_input.a.x, 1u)).a.wx + var_1.a.a.zw));
}

