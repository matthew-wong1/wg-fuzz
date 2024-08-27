struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(0u, 84088u, 52929u, 24732u));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(0u, 4294967295u, 44527u, 1u));

var<private> global2: array<f32, 20>;

var<private> global3: vec3<i32> = vec3<i32>(-31823i, i32(-2147483648), 23333i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    var var_0 = Struct_1(max(vec4<u32>(global0.a.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 41958u)), ~u_input.a), reverseBits(0u), 54383u), vec4<u32>(_wgslsmith_mod_u32(arg_1.a.x | global0.a.x, ~arg_1.a.x), ~67371u, 0u, abs(_wgslsmith_dot_vec3_u32(global0.a.ywx, arg_1.a.wzw)))));
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(global0.a << (vec4<u32>(0u, 1u, u_input.b, 0u) % vec4<u32>(32u)), vec4<u32>(global1.a.x, 81506u, 526u, arg_1.a.x) >> (vec4<u32>(7886u, 4294967295u, 0u, 1u) % vec4<u32>(32u)), global1.a) | (vec4<u32>(var_0.a.x, global0.a.x, u_input.a.x, 4294967295u) << (~vec4<u32>(6338u, 4294967295u, var_0.a.x, 1u) % vec4<u32>(32u))), global0.a, abs(~global0.a)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.a.x, 20u)]))) * _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(1u, 20u)]))), arg_2);
    var var_3 = _wgslsmith_f_op_f32(ceil(var_2.x)) != var_2.x;
    var var_4 = _wgslsmith_mod_vec2_u32(vec2<u32>(~var_0.a.x, max(~_wgslsmith_dot_vec2_u32(var_0.a.ww, arg_1.a.zx), ~u_input.a.x)), max(global0.a.yy, u_input.a));
    return arg_0.xz;
}

fn func_2() -> vec2<f32> {
    global3 = ~vec3<i32>(-global3.x, 2147483647i, i32(-1i) * -2147483647i);
    var var_0 = !any(select(vec3<bool>(true, true, select(true, false, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), ~4294967295u > (global0.a.x >> (global0.a.x % 32u))));
    let var_1 = Struct_1(vec4<u32>(4294967295u, max(~(~u_input.a.x), _wgslsmith_mult_u32(global0.a.x, ~global0.a.x)), 1u, 20096u));
    let var_2 = select(select(select(vec2<bool>(true, true), !func_3(vec4<bool>(false, false, false, true), var_1, global2[_wgslsmith_index_u32(global1.a.x, 20u)]), vec2<bool>(true, true)), !(!func_3(vec4<bool>(true, false, false, false), Struct_1(vec4<u32>(4294967295u, global0.a.x, global0.a.x, 0u)), 1557f)), true & !all(vec3<bool>(true, false, true))), func_3(vec4<bool>(!(var_1.a.x <= u_input.b), all(vec3<bool>(true, false, true)), func_3(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), var_1, _wgslsmith_f_op_f32(max(327f, 595f))).x, any(vec2<bool>(false, true)) | true), var_1, _wgslsmith_f_op_f32(-936f + -303f)), vec2<bool>(true, all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(global0.a.x, 20u)] != 1568f))));
    return _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1199f + _wgslsmith_f_op_f32(-401f + global2[_wgslsmith_index_u32(var_1.a.x, 20u)])) + global2[_wgslsmith_index_u32(37596u, 20u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 20u)] + 625f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    global3 = vec3<i32>(-_wgslsmith_clamp_i32(global3.x, ~_wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.c.yy), ~(-6631i)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.yxz, ~(vec3<i32>(u_input.c.x, -8213i, u_input.c.x) | u_input.c.xyz)), max(select(u_input.c.wxx, u_input.c.yyz, vec3<bool>(false, true, true)), u_input.c.yxz) | firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -43509i, global3.x), u_input.c.zwz))), _wgslsmith_add_i32(select(~(-global3.x), ~_wgslsmith_dot_vec3_i32(u_input.c.yxz, vec3<i32>(u_input.c.x, -15674i, -9263i)), true), -countOneBits(2147483647i)));
    var var_0 = global0.a;
    let var_1 = Struct_1(~min(abs(~global1.a), ~(~vec4<u32>(4294967295u, 1u, 0u, 101416u))));
    let var_2 = _wgslsmith_mod_i32(-2147483647i, u_input.d ^ firstTrailingBit(u_input.c.x));
    var var_3 = Struct_1(_wgslsmith_div_vec4_u32(min(~vec4<u32>(0u, 1u, global1.a.x, u_input.b), _wgslsmith_clamp_vec4_u32(~global0.a, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 1u, u_input.b, 72158u), global0.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(2988u, u_input.b, 0u, u_input.a.x), var_1.a, vec4<u32>(1u, global1.a.x, 4294967295u, var_0.x)))), global0.a));
    return Struct_1(var_3.a);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(global2[_wgslsmith_index_u32(~13092u, 20u)], _wgslsmith_f_op_vec2_f32(func_2()));
    let var_1 = 22521u;
    var_0 = Struct_1(select(~global0.a, vec4<u32>(~abs(var_0.a.x), firstTrailingBit(global0.a.x >> (global0.a.x % 32u)), 0u >> (min(var_1, 0u) % 32u), ~abs(1u)), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, false, true, false), any(vec3<bool>(true, false, false))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(488f, global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, global2[_wgslsmith_index_u32(42271u, 20u)], 479f, global2[_wgslsmith_index_u32(0u, 20u)]), vec4<f32>(global2[_wgslsmith_index_u32(1u, 20u)], -406f, global2[_wgslsmith_index_u32(1u, 20u)], -1679f), true)))))));
    let var_3 = ~u_input.d;
    return func_4(-1000f, _wgslsmith_f_op_vec2_f32(var_2.xy + _wgslsmith_f_op_vec2_f32(min(var_2.wx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.x, 417f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(66534u, 20u)], 3052f)))))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 20u)] * 343f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_3, global2[_wgslsmith_index_u32(global1.a.x, 20u)]))) - _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(51154u, 20u)], 456f), vec2<f32>(arg_3, 1069f)))))));
    let var_1 = global1.a.x;
    global3 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-4577i << (arg_1.a.x % 32u), -1i, arg_0) ^ -vec3<i32>(u_input.c.x, arg_2.x, global3.x), _wgslsmith_mod_vec3_i32(~vec3<i32>(-51713i, 0i, arg_0), vec3<i32>(31651i, 45730i, -44630i))), arg_2);
    var var_2 = arg_2.x;
    let var_3 = !(!(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, false), vec3<bool>(true, true, false))));
    return arg_1;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> Struct_1 {
    global1 = arg_1;
    global0 = arg_1;
    global1 = Struct_1(~reverseBits(select(global1.a, vec4<u32>(10718u, 4294967295u, global1.a.x, 0u), !arg_3)));
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(462f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.a.x, 20u)]) + global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.a.zxz, arg_1.a.yyw), 20u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(157f + -297f), _wgslsmith_f_op_f32(max(-1427f, 966f))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(994f)), _wgslsmith_f_op_f32(-1115f * -516f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1088f, global2[_wgslsmith_index_u32(arg_2, 20u)]))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], 1046f), vec2<f32>(1326f, -1005f), true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_1.a.x, 20u)], 1678f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a.x, 20u)]))))));
    var var_1 = global2[_wgslsmith_index_u32(15994u, 20u)];
    return func_5(u_input.c.x << (_wgslsmith_sub_u32(1u, ~global0.a.x) % 32u), Struct_1(vec4<u32>(global1.a.x, ~firstLeadingBit(4294967295u), firstLeadingBit(5169u), ~(~global0.a.x))), vec3<i32>(-1i, -(~u_input.c.x) ^ global3.x, _wgslsmith_mult_i32(u_input.d, -1i) >> (max(firstTrailingBit(58168u), arg_1.a.x) % 32u)), _wgslsmith_f_op_f32(-418f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(507f - -1684f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1000f)), var_0.x, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true))), vec4<bool>(!(global0.a.x > global0.a.x), true, abs(global1.a.x) >= global1.a.x, any(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true)), func_5(-(-1i >> (1u % 32u)) & _wgslsmith_dot_vec2_i32(u_input.c.zz, _wgslsmith_div_vec2_i32(u_input.c.xw, u_input.c.yz)), func_1(), min(vec3<i32>(-2147483647i, ~u_input.d, -u_input.c.x), vec3<i32>(2147483647i ^ u_input.c.x, abs(global3.x), -global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -359f) + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(max(u_input.a.x, u_input.b), 20u)], 264f))), _wgslsmith_sub_u32(47180u, func_1().a.x), !(!(!any(vec3<bool>(false, true, false)))));
    let var_0 = firstLeadingBit(_wgslsmith_mult_i32(~(-1i) | global3.x, ~reverseBits(global3.x)) ^ global3.x);
    global1 = Struct_1(~vec4<u32>(_wgslsmith_div_u32(u_input.b, select(global0.a.x, global1.a.x, true)), min(17181u, 0u << (1u % 32u)), 1u, 29883u));
    let var_1 = global1.a.xxw | ~(~select(global0.a.zww, vec3<u32>(23838u, global0.a.x, 4294967295u), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)));
    global2 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(abs((-u_input.c.x << (_wgslsmith_div_u32(var_1.x, 70834u) % 32u)) ^ ~_wgslsmith_clamp_i32(u_input.c.x, 205i, u_input.c.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2[_wgslsmith_index_u32(1u, 20u)], 981f, global2[_wgslsmith_index_u32(var_1.x, 20u)]))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-955f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 200f, 498f) * vec4<f32>(global2[_wgslsmith_index_u32(49613u, 20u)], 635f, global2[_wgslsmith_index_u32(global0.a.x, 20u)], global2[_wgslsmith_index_u32(global1.a.x, 20u)])), vec4<f32>(1000f, 436f, global2[_wgslsmith_index_u32(0u, 20u)], 583f))))), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, firstTrailingBit(u_input.c.x), countOneBits(2147483647i)), ~vec3<i32>(10543i, 1i, 20636i)), func_6(select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, false, true), any(vec3<bool>(true, false, false)), true, true), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(2545u, 0u, 75613u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.x, 0u, 4294967295u, global1.a.x), vec4<u32>(1u, global1.a.x, 1u, var_1.x)), global1.a)), ~(~func_4(global2[_wgslsmith_index_u32(0u, 20u)], vec2<f32>(1094f, -314f)).a.x), false).a.x, vec3<i32>(50637i, u_input.d, -2147483647i));
}

