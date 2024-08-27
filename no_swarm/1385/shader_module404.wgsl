struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(41814u, 0u, 2322u), vec3<u32>(1u, 20790u, 4294967295u), vec3<u32>(41462u, 40089u, 9471u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 46705u, 4294967295u), vec3<u32>(51444u, 4294967295u, 26757u), vec3<u32>(1u, 79024u, 46636u), vec3<u32>(4294967295u, 0u, 32437u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(72555u, 1u, 415u), vec3<u32>(24730u, 30934u, 0u), vec3<u32>(1u, 25093u, 0u), vec3<u32>(4294967295u, 0u, 11595u), vec3<u32>(0u, 60425u, 0u), vec3<u32>(4294967295u, 1u, 6961u), vec3<u32>(25987u, 0u, 4294967295u), vec3<u32>(17477u, 5936u, 55343u), vec3<u32>(35868u, 0u, 43727u), vec3<u32>(4294967295u, 34768u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: i32) -> f32 {
    var var_0 = Struct_2(Struct_1(~(~(~vec3<u32>(5277u, global1.a.x, global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-315f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f), 854f)))), _wgslsmith_f_op_f32(1f - -347f), 17722u);
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1542f - var_0.c) * _wgslsmith_f_op_f32(-var_0.c)))), var_0.c, ~38620u >> (u_input.a % 32u));
    global3 = array<vec3<u32>, 20>();
    let var_1 = 0u;
    global1 = var_0.a;
    return -413f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    global3 = array<vec3<u32>, 20>();
    var var_0 = _wgslsmith_div_vec4_f32(arg_2, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, arg_2.x) + -1878f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.c)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-591f, _wgslsmith_f_op_f32(select(671f, arg_2.x, true))), var_0.xw) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.c, -1161f), vec2<f32>(1154f, arg_2.x))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1131f), -199f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2343f, 350f)))), vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), vec4<i32>(u_input.b, u_input.b, -35787i, u_input.b), u_input.b)), _wgslsmith_f_op_f32(ceil(516f)))));
    var var_2 = arg_0;
    return Struct_1(max(_wgslsmith_div_vec3_u32(global1.a, ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.x, global1.a.x, u_input.a), arg_0.a)), vec3<u32>(max(15104u, u_input.a), firstLeadingBit(~global1.a.x), ~arg_0.a.x >> (global0.a.x % 32u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = arg_0.a;
    global0 = func_2(Struct_1(abs(~(~global1.a))), arg_0, _wgslsmith_div_vec4_f32(vec4<f32>(-636f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0.c, 1139f)), _wgslsmith_f_op_f32(arg_0.c - arg_0.c))), -733f, 2890f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.c, 242f, 734f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(-1428f, -1000f)), _wgslsmith_f_op_f32(abs(arg_0.c)), arg_0.c, arg_0.b)))));
    var var_2 = Struct_1(abs(~abs(arg_0.a.a) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, arg_2), u_input.c), ~1u, _wgslsmith_dot_vec2_u32(u_input.c, global1.a.xz)) % vec3<u32>(32u))));
    let var_3 = 1i;
    return var_0;
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = vec3<i32>(-1849i, u_input.b, ~0i);
    global0 = func_4(Struct_2(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), vec4<i32>(24985i, u_input.b, -1i, -2147483647i), 2147483647i)), -645f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f * 1549f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f))), _wgslsmith_add_u32(firstLeadingBit(~global0.a.x), ~1u << (~4294967295u % 32u))), !vec2<bool>(true, ~u_input.a < global1.a.x), _wgslsmith_clamp_u32(~(u_input.c.x ^ u_input.c.x), countOneBits(abs(u_input.a)), u_input.a) & select(0u, 0u, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), min(~_wgslsmith_mod_i32(-1i, u_input.b), -max(u_input.b, -2147483647i)) < _wgslsmith_dot_vec4_i32(vec4<i32>(-25421i, u_input.b, u_input.b, 0i) >> (firstLeadingBit(vec4<u32>(0u, u_input.c.x, 32476u, 1u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 13245i), vec4<i32>(16303i, var_0.x, u_input.b, -1i)) >> (select(vec4<u32>(0u, 0u, 4294967295u, u_input.a), vec4<u32>(global0.a.x, 0u, global0.a.x, 0u), vec4<bool>(false, true, true, false)) % vec4<u32>(32u))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(~global3[_wgslsmith_index_u32(abs(global1.a.x), 20u)]), arg_0.a), arg_0.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = true;
    global1 = arg_0;
    global2 = _wgslsmith_mod_u32(func_5(func_4(Struct_2(func_2(arg_0, Struct_2(Struct_1(vec3<u32>(0u, arg_0.a.x, u_input.c.x)), 311f, -1000f, u_input.c.x), vec4<f32>(-142f, 933f, 344f, 897f)), _wgslsmith_f_op_f32(-2060f - -1326f), 1f, 42087u ^ arg_1.x), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), true), 4294967295u, true)), 1u);
    var_0 = select(false, true, true);
    return Struct_2(Struct_1(vec3<u32>(27959u, countOneBits(_wgslsmith_mult_u32(3617u, u_input.a)), countOneBits(2134u))), -856f, _wgslsmith_f_op_f32(-332f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-206f, _wgslsmith_f_op_f32(step(207f, -788f)))) - _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -40243i, -5133i, u_input.b), vec4<i32>(1809i, -2147483647i, -2147483647i, u_input.b)), i32(-1i) * -42135i)))), firstTrailingBit(~reverseBits(arg_0.a.x)) & 0u);
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    let var_0 = func_1(Struct_1(reverseBits(func_4(func_1(arg_0.a, vec3<u32>(arg_0.a.a.x, global0.a.x, 63672u)), vec2<bool>(true, true), ~61659u, true).a)), global3[_wgslsmith_index_u32(arg_0.d, 20u)]).a;
    global0 = Struct_1(var_0.a);
    let var_1 = false;
    var var_2 = vec3<bool>(false, var_1, any(!vec3<bool>(true, var_1, var_1)) | false);
    global1 = func_4(arg_0, !(!var_2.yx), 59236u, var_1);
    return func_1(Struct_1(global0.a), func_4(func_1(Struct_1(global0.a), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global0.a.xy, ~arg_0.a.a.yx), 20u)]), select(select(vec2<bool>(var_1, false), var_2.xy, var_2.zz), select(vec2<bool>(true, true), var_2.xy, vec2<bool>(var_1, var_2.x)), false), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1168f))) < _wgslsmith_f_op_f32(func_3(var_2.yy, vec4<i32>(u_input.b, -90124i, 7458i, u_input.b), _wgslsmith_add_i32(u_input.b, 13785i)))).a).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_1(Struct_1(vec3<u32>(global0.a.x, global0.a.x, _wgslsmith_add_u32(global0.a.x, u_input.c.x))), global1.a));
    global3 = array<vec3<u32>, 20>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(-540f, _wgslsmith_f_op_f32(floor(1868f)))), 780f, 319f, _wgslsmith_f_op_f32(f32(-1f) * -306f));
    var var_1 = var_0.x;
    let var_2 = min(1i, 4714i);
    global1 = Struct_1(vec3<u32>(~global1.a.x, ~(~_wgslsmith_mult_u32(global0.a.x, 4294967295u)), 4294967295u));
    var var_3 = -vec4<i32>(-u_input.b, firstTrailingBit(46053i), var_2, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, 4033i), var_2));
    var_3 = vec4<i32>(var_2, -abs(var_2 | 39117i), -29912i, var_2) ^ -vec4<i32>(u_input.b, var_3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(26804i, 19781i, 1i, var_2), vec4<i32>(var_3.x, var_2, var_3.x, 2147483647i)) >> (~67556u % 32u), -12150i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(446f * var_0.x))))), -31235i);
}

