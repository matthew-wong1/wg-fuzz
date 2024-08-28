struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1301f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global0 = 1344f;
    let var_0 = _wgslsmith_clamp_vec4_u32(select(firstLeadingBit(abs(~vec4<u32>(30290u, 0u, 4294967295u, 19187u))), vec4<u32>(~u_input.a, 55114u, ~arg_0.b, 36582u) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, arg_0.c, 4294967295u, 57709u), vec4<u32>(u_input.b, u_input.b, arg_0.b, u_input.b)), vec4<u32>(u_input.a, 0u, arg_0.b, 11695u), select(vec4<u32>(arg_0.b, 133104u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, u_input.a, 0u), vec4<bool>(true, arg_0.a, false, arg_0.a))) % vec4<u32>(32u)), select(vec4<bool>(any(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), false, false && arg_0.a, all(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))), select(select(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, true, false, arg_0.a), vec4<bool>(false, false, arg_0.a, false)), select(vec4<bool>(true, arg_0.a, false, arg_0.a), vec4<bool>(false, true, false, true), vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)), vec4<bool>(false, arg_0.a, false, true)), arg_0.a)), ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(arg_0.c, 31708u), arg_0.c, _wgslsmith_sub_u32(arg_0.b, arg_0.c), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.c, 13575u, 4294967295u), vec4<u32>(11756u, arg_0.b, 35563u, u_input.a))), ~abs(vec4<u32>(31884u, 31478u, 12174u, 1u))), vec4<u32>(u_input.a ^ 4294967295u, u_input.b, min(_wgslsmith_mod_u32(firstLeadingBit(arg_0.b), firstLeadingBit(u_input.b)), 4294967295u), 34461u));
    var var_1 = !(!(!(!(!vec4<bool>(arg_0.a, true, false, false)))));
    let var_2 = vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(~u_input.c), u_input.c ^ ~u_input.c) << (min(u_input.b, ~select(50286u, arg_0.b, false)) % 32u), firstLeadingBit(-(2147483647i << ((8276u & var_0.x) % 32u))));
    let var_3 = vec2<bool>(!arg_0.a, !(min(~var_0.x, arg_0.c >> (arg_0.c % 32u)) < ~u_input.b));
    return firstLeadingBit(var_2.x);
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: vec4<i32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_1.d.a.b.x, ~10090i), abs(-1i), reverseBits(-1i));
    var_0 = func_3(arg_1.c);
    let var_1 = arg_1.d.b;
    let var_2 = var_1.a.x;
    let var_3 = _wgslsmith_mod_i32(select(u_input.c, var_1.b.x, arg_1.c.a), -2147483647i);
    return var_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_5) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_1.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1266f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) * _wgslsmith_f_op_f32(-arg_1.x)))));
    var var_1 = func_2(arg_0.x, arg_2, firstLeadingBit(select(~(vec4<i32>(u_input.c, u_input.c, arg_2.b.b.b.x, -1i) >> (vec4<u32>(u_input.b, 84147u, 106122u, 52732u) % vec4<u32>(32u))), -vec4<i32>(1i, u_input.c, -52225i, 10000i) | arg_2.b.b.b, false)), select(select(select(select(vec3<bool>(arg_2.c.a, false, false), vec3<bool>(true, false, true), arg_2.c.a), vec3<bool>(false, arg_2.c.a, true), arg_2.c.a), select(vec3<bool>(false, false, false), vec3<bool>(true, arg_2.c.a, arg_2.c.a), true), !(!arg_2.c.a)), !(!vec3<bool>(arg_2.c.a, false, false)), false));
    var var_2 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-1075f + _wgslsmith_f_op_f32(max(-1667f, arg_0.x)))) + _wgslsmith_f_op_f32(abs(arg_0.x))), -726f);
    var var_3 = arg_2.c.a;
    var var_4 = reverseBits(_wgslsmith_add_vec4_u32(abs(vec4<u32>(min(4294967295u, 41191u), ~arg_2.b.a.a.x, ~71411u, _wgslsmith_mult_u32(108635u, arg_2.d.b.a.x))), vec4<u32>(4826u, 38620u, (1u << (arg_2.b.b.a.x % 32u)) | firstLeadingBit(0u), func_2(var_0, arg_2, vec4<i32>(arg_2.d.b.b.x, var_1.b.x, arg_2.d.b.b.x, var_1.b.x), vec3<bool>(arg_2.c.a, arg_2.c.a, arg_2.c.a)).a.x)));
    return var_1.b.wx >> (~min(vec2<u32>(_wgslsmith_clamp_u32(33372u, 11973u, 4294967295u), ~14645u), ~var_1.a.zy) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: i32, arg_3: i32) -> f32 {
    var var_0 = vec3<bool>(any(vec4<bool>(select(true, true, false) || true, all(vec3<bool>(true, false, false)), !any(vec3<bool>(true, true, false)), (i32(-1i) * -21147i) <= u_input.c)), (-reverseBits(-2147483647i) >> (1u % 32u)) < _wgslsmith_clamp_i32(~abs(arg_2), -1i, arg_0.x), any(vec3<bool>(false, false, any(vec3<bool>(true, true, true)))));
    var_0 = !select(!vec3<bool>(any(var_0.xx), !var_0.x, var_0.x), !vec3<bool>(any(var_0.yy), all(vec4<bool>(var_0.x, var_0.x, true, false)), var_0.x), arg_3 != reverseBits(~2147483647i));
    let var_1 = Struct_4(Struct_1(~(~vec3<u32>(arg_1.x, 58695u, u_input.a)), vec4<i32>(-1i) * -reverseBits(vec4<i32>(u_input.c, u_input.c, 2147483647i, arg_2))), Struct_1(vec3<u32>(firstTrailingBit(countOneBits(13230u)), 49829u, 1u), vec4<i32>(arg_2, -1i, arg_2, _wgslsmith_div_i32(arg_2, 2147483647i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(9335i, u_input.c, arg_3, 5141i), -vec4<i32>(u_input.c, -34060i, -2147483647i, u_input.c))));
    var var_2 = _wgslsmith_div_vec2_i32(firstLeadingBit(func_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-244f, -257f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), Struct_5(func_1(vec2<f32>(855f, -825f), vec4<f32>(-736f, 576f, 148f, 866f), Struct_5(arg_2, Struct_4(Struct_1(var_1.b.a, vec4<i32>(26998i, -30222i, 2147483647i, -916i)), var_1.b), Struct_3(var_0.x, var_1.b.a.x, 1u), Struct_4(Struct_1(vec3<u32>(var_1.b.a.x, 31441u, 1u), vec4<i32>(-38577i, 0i, -1252i, 23638i)), Struct_1(vec3<u32>(var_1.a.a.x, 1u, arg_1.x), var_1.b.b)))).x, var_1, Struct_3(false, 1u, u_input.a), var_1))), var_1.b.b.yy);
    let var_3 = select(select(select(!(!vec4<bool>(var_0.x, var_0.x, true, false)), !vec4<bool>(true, true, var_0.x, true), !select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), var_0.x)), vec4<bool>(select(var_0.x, var_0.x, true) == select(true, false, var_0.x), true, var_1.a.b.x == 11343i, 46797i >= (36615i << (var_1.b.a.x % 32u))), select(select(select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true)), !vec4<bool>(false, true, var_0.x, var_0.x), var_0.x), vec4<bool>(all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), var_0.x, !var_0.x, !var_0.x), !var_0.x)), vec4<bool>(var_0.x, select(any(!vec3<bool>(var_0.x, true, false)), true, !(!var_0.x)), false, ((var_0.x & false) != true) & var_0.x), all(select(!select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true)), !vec4<bool>(false, true, var_0.x, var_0.x), !(!vec4<bool>(var_0.x, var_0.x, false, true)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(604f + 780f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1813f, 2798f, false)))) - 2469f), _wgslsmith_f_op_f32(1f + 770f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_i32(select(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1030f, -1209f)), _wgslsmith_div_vec4_f32(vec4<f32>(370f, -662f, -1887f, 1953f), vec4<f32>(1117f, 509f, 122f, -1039f)), Struct_5(u_input.c, Struct_4(Struct_1(vec3<u32>(u_input.a, 35934u, u_input.b), vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c)), Struct_1(vec3<u32>(4294967295u, u_input.a, u_input.a), vec4<i32>(1i, u_input.c, u_input.c, u_input.c))), Struct_3(true, u_input.a, u_input.a), Struct_4(Struct_1(vec3<u32>(1u, 37733u, 6727u), vec4<i32>(-1i, u_input.c, -1i, u_input.c)), Struct_1(vec3<u32>(u_input.b, 407u, 50163u), vec4<i32>(-2147483647i, u_input.c, 0i, 21679i))))), (vec2<i32>(u_input.c, 25813i) | vec2<i32>(-2147483647i, u_input.c)) & vec2<i32>(u_input.c, u_input.c), false), _wgslsmith_div_vec2_i32(func_1(vec2<f32>(524f, 1000f), vec4<f32>(1539f, 619f, -1574f, 1252f), Struct_5(92504i, Struct_4(Struct_1(vec3<u32>(36821u, 31290u, u_input.a), vec4<i32>(-1i, u_input.c, u_input.c, -1i)), Struct_1(vec3<u32>(u_input.a, u_input.a, 26702u), vec4<i32>(-1i, u_input.c, -2147483647i, u_input.c))), Struct_3(true, 75904u, u_input.a), Struct_4(Struct_1(vec3<u32>(4294967295u, 25345u, u_input.a), vec4<i32>(u_input.c, u_input.c, 5761i, -22121i)), Struct_1(vec3<u32>(71873u, 1u, u_input.b), vec4<i32>(u_input.c, 39686i, 0i, -2494i))))) ^ ~vec2<i32>(-32090i, 2147483647i), ~vec2<i32>(1i, 1i))), vec4<u32>(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 2196u)), vec2<u32>(u_input.a, u_input.b) & vec2<u32>(u_input.b, u_input.b)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1242f), Struct_5(3287i, Struct_4(Struct_1(vec3<u32>(u_input.a, 37654u, 17371u), vec4<i32>(u_input.c, 64983i, -14874i, -24221i)), Struct_1(vec3<u32>(u_input.a, 0u, 76655u), vec4<i32>(u_input.c, -13971i, -2147483647i, u_input.c))), Struct_3(true, u_input.a, 0u), Struct_4(Struct_1(vec3<u32>(4294967295u, 60266u, u_input.a), vec4<i32>(u_input.c, u_input.c, u_input.c, 2533i)), Struct_1(vec3<u32>(4294967295u, u_input.b, 1u), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)))), vec4<i32>(~u_input.c, 13966i, -42268i, u_input.c), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), true)).a.x, max(0u, u_input.a), ~u_input.b << (~func_2(1182f, Struct_5(u_input.c, Struct_4(Struct_1(vec3<u32>(1u, 14014u, u_input.b), vec4<i32>(44498i, u_input.c, 14514i, -1i)), Struct_1(vec3<u32>(u_input.b, u_input.b, 1u), vec4<i32>(-2147483647i, -1i, u_input.c, u_input.c))), Struct_3(false, u_input.a, 0u), Struct_4(Struct_1(vec3<u32>(u_input.a, 9033u, u_input.b), vec4<i32>(u_input.c, u_input.c, 38617i, u_input.c)), Struct_1(vec3<u32>(1u, 0u, u_input.a), vec4<i32>(u_input.c, u_input.c, 1i, -2147483647i)))), vec4<i32>(u_input.c, 1i, 0i, u_input.c), vec3<bool>(true, false, false)).a.x % 32u)), u_input.c, -_wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 26823i, 15525i, 15635i), vec4<i32>(u_input.c, 39711i, u_input.c, -1i)), _wgslsmith_div_i32(8275i, u_input.c) << ((53815u | u_input.b) % 32u))));
    global0 = var_0;
    global0 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<i32>(2147483647i, 62980i), vec4<u32>(u_input.b, 0u, 18578u, u_input.a), -26365i, u_input.c)) * _wgslsmith_f_op_f32(ceil(var_0)))))));
    global0 = _wgslsmith_f_op_f32(1219f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-657f)) - var_0));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1978f, 375f, 2543f, var_0) + vec4<f32>(var_0, 331f, var_0, var_0)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1216f, 1510f, var_0, var_0)))))));
    let var_2 = vec3<bool>(!(!(var_0 != -906f) & ((i32(-1i) * -31208i) == _wgslsmith_mod_i32(u_input.c, u_input.c))), all(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), select(any(vec4<bool>(true, true, false, true)), !(all(vec3<bool>(false, false, false)) && true), !any(vec3<bool>(true, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

