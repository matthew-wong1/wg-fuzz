struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(348f, 238f, 1041f);

var<private> global1: array<f32, 24>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    var var_0 = !vec2<bool>(arg_1.b.x, !(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 24u)] * -208f) == _wgslsmith_f_op_f32(trunc(-303f))));
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d.x - global0.x), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(arg_1.c, 24u)])))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.c, 24u)]) * global0.x));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>) -> u32 {
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i);
    global0 = vec3<f32>(_wgslsmith_div_f32(340f, 242f), global0.x, 365f);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_2.ywx)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))));
    var var_2 = _wgslsmith_sub_vec2_u32(~(~(~(~vec2<u32>(u_input.a, 1u)))), max(_wgslsmith_sub_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 25570u))), ~vec2<u32>(u_input.a, u_input.a)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(60916u, 4294967295u), vec2<u32>(u_input.a, u_input.a)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 62019u), vec2<u32>(u_input.a, 81833u)), _wgslsmith_mod_vec2_u32(vec2<u32>(137182u, 1u), vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u))));
    return ~4294967295u;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = select(select(vec2<bool>(true, true), arg_1.b.xy, any(vec3<bool>(arg_1.b.x, arg_1.b.x, true))), vec2<bool>(true, any(vec3<bool>(!arg_1.a.x, true, 1030f == global1[_wgslsmith_index_u32(1u, 24u)]))), any(!arg_1.b.xz));
    let var_1 = vec3<i32>(-2147483647i, -31657i, _wgslsmith_add_i32(_wgslsmith_add_i32(0i, -2147483647i), countOneBits(_wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, -69487i), 1i))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(global0.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.zz, vec2<f32>(global0.x, arg_1.d.x))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(802f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2620f + 374f))) + _wgslsmith_div_vec2_f32(arg_1.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.d), arg_1.d))));
    var var_4 = var_2;
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    global1 = array<f32, 24>();
    global0 = _wgslsmith_f_op_vec3_f32(min(arg_3, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(750f - 376f), arg_2.a)), arg_1.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1603f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1202f, -664f) + vec3<f32>(1490f, 1525f, 906f)))) - vec3<f32>(_wgslsmith_f_op_f32(arg_2.a + global0.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(12972u, 24u)] - global1[_wgslsmith_index_u32(u_input.a, 24u)]), _wgslsmith_f_op_f32(-global0.x)))))));
    var var_0 = abs(~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, 51377u)), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, arg_1.c), vec2<u32>(arg_1.c, arg_1.c)))));
    var var_1 = arg_2;
    let var_2 = !arg_1.b.zz;
    return u_input.a;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_mod_u32(~(~_wgslsmith_sub_u32(u_input.a, ~u_input.a)), 61963u);
    var var_1 = func_5(-576f, func_4(vec2<u32>(u_input.a, func_3(func_2(-3389i, Struct_3(vec2<bool>(false, false), vec3<bool>(true, true, true), u_input.a, global0.zx), 2147483647i), any(vec4<bool>(false, true, false, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-394f, global1[_wgslsmith_index_u32(4294967295u, 24u)], -184f, global1[_wgslsmith_index_u32(23751u, 24u)]) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 24u)], -263f, global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(u_input.a, 24u)])))), Struct_3(vec2<bool>(true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(60975u, 24u)], global0.x)), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(56515u, 24u)]))))), func_2(_wgslsmith_add_i32(~1i, _wgslsmith_div_i32(1i, 31411i)), func_4(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 11127u), vec2<u32>(22166u, u_input.a)), ~vec2<u32>(9650u, 0u)), func_4(~vec2<u32>(u_input.a, 55140u), func_4(vec2<u32>(20349u, 6586u), Struct_3(vec2<bool>(true, true), vec3<bool>(false, true, true), 23515u, vec2<f32>(-746f, global1[_wgslsmith_index_u32(83356u, 24u)]))))), countOneBits(-(i32(-1i) * -34839i))), vec3<f32>(-904f, global1[_wgslsmith_index_u32(u_input.a, 24u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-741f, global1[_wgslsmith_index_u32(1u, 24u)])) - _wgslsmith_f_op_f32(f32(-1f) * -279f)), _wgslsmith_f_op_f32(ceil(-420f)))));
    var_1 = ~(~u_input.a);
    var var_2 = func_4(abs(select(vec2<u32>(~u_input.a, u_input.a), vec2<u32>(u_input.a, min(1u, 732u)), false)), func_4(countOneBits(vec2<u32>(1u, 1u)), Struct_3(func_4(vec2<u32>(u_input.a, u_input.a), Struct_3(vec2<bool>(false, true), vec3<bool>(true, true, true), u_input.a, global0.xy)).b.zx, vec3<bool>(true, all(vec3<bool>(true, true, false)), true), u_input.a, _wgslsmith_f_op_vec2_f32(-global0.zy))));
    var_0 = 4294967295u;
    return ~(firstTrailingBit(-1i) ^ (i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(60364i, -1i), vec2<i32>(2147483647i, -35457i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(-(func_1() ^ _wgslsmith_add_i32(1i, 0i)), firstTrailingBit(-1i), _wgslsmith_dot_vec2_i32(abs(reverseBits(vec2<i32>(3899i, 48873i))), vec2<i32>(-1i) * -vec2<i32>(2147483647i, -27879i)));
    var var_1 = true;
    var var_2 = func_4(vec2<u32>(~(u_input.a >> (16981u % 32u)), _wgslsmith_clamp_u32(~u_input.a, u_input.a, ~u_input.a)) & firstLeadingBit(abs(vec2<u32>(u_input.a, 4294967295u))), func_4(~countOneBits(firstLeadingBit(vec2<u32>(64480u, 0u))), func_4(max(countOneBits(vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, u_input.a)), Struct_3(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec3<bool>(true, true, true), _wgslsmith_dot_vec2_u32(vec2<u32>(11889u, 4533u), vec2<u32>(1u, 31138u)), _wgslsmith_f_op_vec2_f32(ceil(global0.yy))))));
    let var_3 = Struct_3(vec2<bool>(true, true), vec3<bool>(var_0.x >= ~(~0i), true, false), _wgslsmith_mod_u32(u_input.a, u_input.a) >> (20429u % 32u), var_2.d);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 24u)])))))));
    var_2 = Struct_3(vec2<bool>(true, false), select(vec3<bool>(any(!vec4<bool>(true, var_2.b.x, var_2.a.x, false)), func_4(vec2<u32>(0u, u_input.a) | vec2<u32>(67614u, u_input.a), func_4(vec2<u32>(var_3.c, 27381u), var_3)).b.x, true), vec3<bool>(true, all(!vec4<bool>(true, var_3.b.x, true, var_3.a.x)), select(var_3.b.x, false, var_2.a.x) == true), var_3.b.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(4294967295u, u_input.a, u_input.a) | vec3<u32>(var_2.c, var_2.c, 1u)) | (vec3<u32>(39093u, 54253u, var_2.c) | vec3<u32>(4294967295u, var_2.c, var_3.c)), countOneBits(~vec3<u32>(1u, 0u, 1u))), u_input.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-247f, var_4.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-608f, 1018f)))))));
    var var_5 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~max(reverseBits(vec2<i32>(var_0.x, var_0.x)), -var_0.xy), var_0.yx), -var_0.xz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(1000f + var_2.d.x)), _wgslsmith_f_op_f32(-1000f - func_4(_wgslsmith_add_vec2_u32(vec2<u32>(68318u, 17580u), vec2<u32>(var_3.c, u_input.a)), func_4(_wgslsmith_div_vec2_u32(vec2<u32>(var_3.c, 13573u), vec2<u32>(0u, 1u)), var_3)).d.x), u_input.a, 892f, _wgslsmith_mult_u32(~var_3.c, 22045u));
}

