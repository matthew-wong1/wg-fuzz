struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 25>;

var<private> global1: array<i32, 17>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    var var_0 = vec3<u32>(select(1u, ~0u, false) & 22932u, arg_1.b, ~firstLeadingBit(countOneBits(9303u)));
    var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(abs(select(vec3<u32>(86872u, 4294967295u, var_0.x), u_input.a.yyy, vec3<bool>(false, true, false))), ~vec3<u32>(43718u, 96313u, ~arg_1.b)), vec3<u32>(var_0.x, arg_2, arg_2));
    var_0 = u_input.a.wwx;
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(arg_1.c));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_1.c.yxz * vec3<f32>(var_2.x, arg_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x))), var_2.yzw)));
}

fn func_2(arg_0: f32, arg_1: i32) -> u32 {
    var var_0 = -907f;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(func_3(select(min(-vec2<i32>(arg_1, arg_1), vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(6032i, 1i), vec2<bool>(all(vec3<bool>(false, false, true)), false)), Struct_1(-27653i, ~1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-855f, arg_0, 209f, 1390f) - vec4<f32>(arg_0, 1000f, 245f, -343f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, -1596f, arg_0))), (i32(-1i) * -2297i) & arg_1, -(vec2<i32>(arg_1, global1[_wgslsmith_index_u32(1u, 17u)]) | vec2<i32>(21187i, -1i))), _wgslsmith_clamp_u32(countOneBits(59306u), 1u, u_input.a.x) >> (0u % 32u))), vec3<f32>(1f, 1f, 1f), Struct_1(_wgslsmith_clamp_i32(-(~31332i), _wgslsmith_mult_i32(_wgslsmith_div_i32(-37526i, global1[_wgslsmith_index_u32(0u, 17u)]), -7253i), u_input.b), reverseBits(0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2227f, _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(arg_0 + -128f), _wgslsmith_f_op_f32(-arg_0))), u_input.b << (~1u % 32u), vec2<i32>(1i >> (u_input.a.x % 32u), global1[_wgslsmith_index_u32(~u_input.a.x, 17u)])), -14285i, global0[_wgslsmith_index_u32(4294967295u ^ select(~66961u, ~(u_input.a.x | u_input.a.x), !all(vec3<bool>(false, true, true))), 25u)]);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2174f, _wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_div_f32(var_1.c.c.x, _wgslsmith_f_op_f32(ceil(649f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1637f, 1838f, 1052f) * vec3<f32>(-447f, 1061f, var_1.c.c.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(205f, -359f, 399f) * var_1.c.c.yzw)))), Struct_1(2147483647i | arg_1, ~abs(52802u << (0u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_1.c.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-842f, arg_0, arg_0, arg_0)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_1.c.c), vec4<f32>(arg_0, 1125f, -389f, -908f)))), -2147483647i, _wgslsmith_sub_vec2_i32(var_1.c.e, firstLeadingBit(vec2<i32>(var_1.e.x, arg_1)) | abs(var_1.c.e))), ~(-var_1.c.a), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -18077i, 1i, -global1[_wgslsmith_index_u32((var_1.c.b >> (46764u % 32u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.b, var_1.c.b), vec2<u32>(89922u, var_1.c.b)), 17u)]));
    var var_3 = var_2.e.x;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(select(var_1.c.e, max(abs(var_2.c.e), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec2<i32>(var_1.c.a, var_2.c.d))), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true)), var_1.c, u_input.a.x)).x, 882f);
    return var_2.c.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global1 = array<i32, 17>();
    let var_0 = 1i;
    var var_1 = Struct_3(vec3<bool>(true, true, true), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(firstLeadingBit(vec2<i32>(-19306i, u_input.b)), arg_1, 4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.c.wzx) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, -219f, -689f) * arg_1.c.xyz))), vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1389f)), -363f), arg_0, firstTrailingBit(~(-u_input.b)), vec4<i32>(-9463i, global1[_wgslsmith_index_u32(countOneBits(4294967295u), 17u)], u_input.b, _wgslsmith_mod_i32(11165i, ~arg_0.a))), false);
    let var_2 = true;
    var var_3 = _wgslsmith_sub_vec2_i32(var_1.b.e.wz, vec2<i32>(_wgslsmith_clamp_i32(min(_wgslsmith_div_i32(arg_1.e.x, var_0), -52704i), firstTrailingBit(776i), -1i), -(arg_1.a | var_0) ^ 2147483647i));
    return _wgslsmith_sub_i32(u_input.b | 0i, arg_0.e.x) & var_1.b.c.d;
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = arg_0.e.xzw;
    global1 = array<i32, 17>();
    var var_1 = arg_0.c;
    let var_2 = func_4(arg_0.c, Struct_1(25553i, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1751f + 1016f)), -(u_input.b & 2147483647i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, var_1.c.x, 1230f, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(arg_0.c.c, vec4<f32>(arg_0.b.x, -767f, 841f, -358f)), vec4<f32>(-2038f, arg_0.c.c.x, var_1.c.x, -516f))))), var_1.e.x, ~_wgslsmith_sub_vec2_i32(arg_0.e.ww << (vec2<u32>(var_1.b, 12517u) % vec2<u32>(32u)), max(vec2<i32>(arg_0.c.d, 4990i), var_1.e))));
    global0 = array<vec4<i32>, 25>();
    return Struct_2(var_1.c.xzz, arg_0.c.c.xyz, Struct_1(~(~(-32331i >> (1u % 32u))), _wgslsmith_sub_u32(~_wgslsmith_div_u32(u_input.a.x, 3096u), u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_0.b.x)))), -1428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.c.x, var_1.c.x))), -467f), 0i, ~max(var_1.e, arg_0.e.yz)), reverseBits(0i), vec4<i32>(global1[_wgslsmith_index_u32(994u, 17u)], -1i, -global1[_wgslsmith_index_u32(~4294967295u, 17u)], var_0.x));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<u32>) -> f32 {
    var var_0 = false;
    var var_1 = !select(vec2<bool>(true, true), vec2<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), true), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
    var var_2 = arg_0.x;
    var_2 = arg_0.x;
    var_2 = 60534u;
    return _wgslsmith_f_op_f32(min(-136f, _wgslsmith_f_op_f32(-464f - _wgslsmith_f_op_f32(-824f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1374f + 1042f) * _wgslsmith_f_op_f32(f32(-1f) * -630f))))));
}

fn func_6(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_3(!select(vec3<bool>(select(false, true, true), true, true), vec3<bool>(1i >= global1[_wgslsmith_index_u32(u_input.a.x, 17u)], false, true), vec3<bool>(true, true, true)), func_1(func_1(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-753f, arg_0, arg_0) - vec3<f32>(arg_0, 2570f, 2474f)), _wgslsmith_div_vec3_f32(vec3<f32>(300f, 691f, arg_0), vec3<f32>(-1910f, arg_0, -1365f)), Struct_1(global1[_wgslsmith_index_u32(67917u, 17u)], 22681u, vec4<f32>(-706f, arg_0, 1000f, arg_0), 17704i, vec2<i32>(u_input.b, 0i)), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]), vec4<i32>(0i, 14926i, u_input.b, 14821i)), 76044u), ~(~4294967295u)), true);
    var var_1 = var_0.a.x;
    var var_2 = var_0.b.c;
    var_2 = var_0.b.c;
    var_2 = var_0.b.c;
    return func_1(func_1(Struct_2(vec3<f32>(var_2.c.x, -1800f, 798f), var_0.b.b, func_1(Struct_2(vec3<f32>(arg_0, 880f, 606f), vec3<f32>(931f, 1746f, -1282f), var_0.b.c, 2901i, vec4<i32>(-2147483647i, var_0.b.d, var_0.b.c.a, 2147483647i)), 33780u << (0u % 32u)).c, global1[_wgslsmith_index_u32(firstTrailingBit(reverseBits(var_0.b.c.b)), 17u)], -func_1(var_0.b, 1u).e), ~select(~var_0.b.c.b, ~0u, !var_0.a.x)), var_2.b);
}

fn func_7(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    let var_0 = vec2<u32>(arg_0.c.b, arg_0.c.b);
    var var_1 = arg_0.c;
    let var_2 = func_1(arg_0, 1u).c;
    var var_3 = Struct_3(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, arg_1 <= 1000f), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, 10088u > u_input.a.x, all(vec3<bool>(true, false, false)))), vec3<bool>(true, true, true)), func_1(Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.c.x, arg_0.c.c.x, arg_1), var_1.c.zzz)), func_6(-156f).c.c.yzw, func_1(arg_0, ~var_0.x).c, u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), _wgslsmith_mult_u32(var_1.b, ~(~2123u))), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true)));
    let var_4 = Struct_3(var_3.a, Struct_2(_wgslsmith_f_op_vec3_f32(round(func_1(func_6(-139f), var_2.b).b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(var_2.c.zzy)), _wgslsmith_f_op_vec3_f32(ceil(var_2.c.xyz))))), arg_0.c, u_input.b, abs(global0[_wgslsmith_index_u32(func_1(arg_0, 62372u).c.b, 25u)] & (vec4<i32>(var_2.e.x, 52139i, arg_0.c.e.x, var_2.e.x) ^ arg_0.e))), any(vec4<bool>(var_3.c, true, false, true)));
    return var_3.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(_wgslsmith_f_op_f32(func_5(~(~vec3<u32>(42203u, 64u, u_input.a.x)), func_1(Struct_2(vec3<f32>(1761f, -2024f, -151f), vec3<f32>(583f, -1000f, -671f), Struct_1(u_input.b, u_input.a.x, vec4<f32>(-185f, 723f, -402f, 1000f), u_input.b, vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], u_input.b)), -2410i, vec4<i32>(-33790i, 2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 0i)), 73148u), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u))))), -1160f);
    global1 = array<i32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(24477i, u_input.a.xx & vec2<u32>(_wgslsmith_mod_u32(0u, ~44992u), func_2(var_0.c.x, u_input.b) & min(0u, u_input.a.x)), func_4(func_6(_wgslsmith_f_op_f32(var_0.c.x + 142f)).c, Struct_1(var_0.e.x, _wgslsmith_mod_u32(47682u, u_input.a.x), var_0.c, -global1[_wgslsmith_index_u32(0u, 17u)], func_7(Struct_2(vec3<f32>(-160f, var_0.c.x, -851f), vec3<f32>(var_0.c.x, -318f, 401f), var_0, 2147483647i, global0[_wgslsmith_index_u32(18585u, 25u)]), var_0.c.x).e)) << (1u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

