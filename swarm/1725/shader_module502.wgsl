struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

var<private> global1: array<u32, 28>;

var<private> global2: vec3<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: f32, arg_3: f32) -> f32 {
    let var_0 = arg_0.b & all(!(!select(vec4<bool>(true, arg_0.b, true, false), vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b), true)));
    let var_1 = arg_0.b;
    let var_2 = Struct_3(Struct_1(max(vec4<u32>(u_input.b, arg_0.a.x, 0u, global1[_wgslsmith_index_u32(0u, 28u)]) | ~vec4<u32>(global1[_wgslsmith_index_u32(arg_0.a.x, 28u)], global1[_wgslsmith_index_u32(37365u, 28u)], u_input.b, global1[_wgslsmith_index_u32(arg_0.a.x, 28u)]), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 34262u, 1u), vec4<u32>(31736u, 1u, 51273u, global1[_wgslsmith_index_u32(40741u, 28u)]))), abs(vec2<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.a), u_input.a >> (u_input.b % 32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a ^ u_input.a, 18237i, ~2147483647i), select(-vec3<i32>(u_input.a, u_input.a, 2610i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 24561i, u_input.a), vec3<i32>(30883i, u_input.a, u_input.a)), false))));
    var var_3 = arg_1.x;
    let var_4 = var_2.a.a.xw;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * arg_2)));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = 11381u;
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-734f, global2.x), global2.x, -239f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.x, global2.x)))) - vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_5(arg_0.a.ww, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(arg_0.e, 24u)] - global0[_wgslsmith_index_u32(62780u, 24u)])), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + 385f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(min(-340f, _wgslsmith_f_op_f32(-global2.x)))), -1020f));
    global0 = array<vec4<f32>, 24>();
    let var_1 = Struct_1(arg_0.a, firstLeadingBit(firstTrailingBit(vec2<i32>(-73346i, -27374i))) >> (~countOneBits(select(vec2<u32>(0u, global1[_wgslsmith_index_u32(arg_2.e, 28u)]), vec2<u32>(50255u, 67677u), arg_0.b)) % vec2<u32>(32u)), 19941i);
    global0 = array<vec4<f32>, 24>();
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global2.zy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global2.zx, global2.zy)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(arg_0, arg_0));
    var var_1 = Struct_3(Struct_1(abs(arg_1.a.a), vec2<i32>(-arg_1.a.c, 53038i), countOneBits(u_input.a)));
    let var_2 = any(select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), select(true, true, false)), vec2<bool>(select(true, true, true), true), true), vec2<bool>(all(vec3<bool>(false, false, false)), global1[_wgslsmith_index_u32(var_1.a.a.x, 28u)] <= 66713u), true));
    var_0 = arg_0;
    let var_3 = any(select(select(!(!vec3<bool>(var_2, false, var_2)), vec3<bool>(!var_2, select(var_2, false, true), 433f > var_0.x), false), select(!select(vec3<bool>(var_2, true, false), vec3<bool>(false, var_2, true), false), select(!vec3<bool>(false, var_2, true), select(vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, false, var_2), var_2), vec3<bool>(var_2, var_2, var_2)), vec3<bool>(!var_2, !var_2, var_2)), !(!var_2)));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, var_0.x, -1510f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1573f, var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, -1000f, global2.x))))), vec3<f32>(_wgslsmith_div_f32(-346f, -2039f), _wgslsmith_f_op_f32(f32(-1f) * -819f), 1114f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_5(~(~arg_3.a.wz), true);
    var var_1 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.e, var_0.a.x, ~(arg_1.a.x & 11595u), arg_3.e), ~(~arg_3.a)), arg_1.c, !arg_3.b, arg_1.d, _wgslsmith_clamp_u32(0u, ~var_0.a.x, arg_1.e));
    var_0 = Struct_5(_wgslsmith_sub_vec2_u32(vec2<u32>(~1u, ~firstLeadingBit(57889u)), arg_3.a.wx), all(!select(!vec3<bool>(arg_3.b, arg_3.c, true), vec3<bool>(var_1.c, arg_3.c, false), true)));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-557f, _wgslsmith_f_op_f32(-global2.x), global2.x))) * _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global2.x)), 621f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1810f) * vec2<f32>(-1000f, -895f)) + _wgslsmith_f_op_vec2_f32(func_2(Struct_2(arg_3.a, var_1.c, false, arg_1.d, u_input.b), arg_0.x, Struct_2(arg_1.a, arg_1.c, arg_3.c, arg_3.d, var_1.a.x))))), Struct_3(Struct_1(_wgslsmith_div_vec4_u32(arg_3.a, arg_1.a), vec2<i32>(-1i, 2147483647i), 16789i)))));
    var_1 = arg_3;
    return 11540u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(~28838u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(236u, 28u)], u_input.b, u_input.b) << (reverseBits(vec3<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(38175u, 28u)])) % vec3<u32>(32u)), abs(max(vec3<u32>(63984u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41291u, 28u)], 28u)]), vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)])))), abs(_wgslsmith_mod_u32(~0u, u_input.b)), _wgslsmith_sub_u32(87680u, 1u | func_1(vec2<i32>(1i, u_input.a), Struct_2(vec4<u32>(26982u, 0u, 72757u, 4294967295u), false, false, vec2<i32>(u_input.a, u_input.a), 8770u), u_input.a, Struct_2(vec4<u32>(u_input.b, 1u, global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]), true, true, vec2<i32>(2147483647i, u_input.a), 1u)))), -min(vec2<i32>(26693i, -20286i) & vec2<i32>(u_input.a, u_input.a), abs(vec2<i32>(-54933i, 44841i))), u_input.a);
    global1 = array<u32, 28>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(func_3(Struct_5(abs(var_0.a.zx), true), global0[_wgslsmith_index_u32(var_0.a.x, 24u)], global2.x, -1518f))) - global2.zz);
    let var_2 = vec3<u32>(~13365u, ~(~_wgslsmith_sub_u32(4294967295u, 12660u) << (global1[_wgslsmith_index_u32(0u, 28u)] % 32u)), ~abs(~(var_0.a.x << (1u % 32u))));
    global1 = array<u32, 28>();
    let var_3 = vec4<u32>(u_input.b, _wgslsmith_div_u32(var_0.a.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(46116u, global1[_wgslsmith_index_u32(28165u, 28u)], global1[_wgslsmith_index_u32(61036u, 28u)])) << (~var_2 % vec3<u32>(32u)), ~vec3<u32>(global1[_wgslsmith_index_u32(18200u, 28u)], u_input.b, 4294967295u))), ~global1[_wgslsmith_index_u32(60913u, 28u)], 1u);
    var var_4 = 6366u;
    var var_5 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(56864u, 24u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_0.a.x, 24u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1314f, var_1.x, -234f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(931f, -296f, global2.x, 762f))))), false)), _wgslsmith_clamp_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(var_0.c, u_input.a, 6521i)), reverseBits(~_wgslsmith_clamp_vec3_i32(vec3<i32>(1963i, var_0.b.x, 0i), vec3<i32>(0i, 1i, u_input.a), vec3<i32>(43918i, var_0.c, u_input.a))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.x, -2147483647i, 2147483647i) >> (select(var_3.xzx, var_3.wwx, vec3<bool>(true, false, true)) % vec3<u32>(32u)), abs(-vec3<i32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec2_f32(-global2.yx));
}

