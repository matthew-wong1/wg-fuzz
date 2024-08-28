struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(63679i, i32(-2147483648), 6062i, 2147483647i, 4840i, -17485i, 0i, 1i, -40540i, -44159i, 4100i, -18142i, 18910i, -18657i, 0i, i32(-2147483648), 20714i, 14094i, 75226i);

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 25947u, 1u, 4294967295u)), Struct_1(vec2<bool>(false, false), vec4<u32>(1u, 20668u, 41276u, 59721u)), Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 1u, 6718u, 20825u)), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 1u, 0u, 21238u)), Struct_1(vec2<bool>(false, false), vec4<u32>(4088u, 6136u, 5649u, 4294967295u)), Struct_1(vec2<bool>(false, false), vec4<u32>(42035u, 87088u, 10768u, 79381u)), Struct_1(vec2<bool>(true, false), vec4<u32>(54841u, 0u, 1u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 6475u, 4294967295u, 22208u)), Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), Struct_1(vec2<bool>(true, true), vec4<u32>(70484u, 7218u, 39725u, 29482u)), Struct_1(vec2<bool>(false, true), vec4<u32>(1u, 17646u, 1u, 0u)), Struct_1(vec2<bool>(false, false), vec4<u32>(45490u, 1u, 71304u, 7155u)), Struct_1(vec2<bool>(true, false), vec4<u32>(12605u, 4294967295u, 60252u, 11155u)), Struct_1(vec2<bool>(true, true), vec4<u32>(22686u, 1u, 67227u, 59199u)), Struct_1(vec2<bool>(true, true), vec4<u32>(19736u, 1u, 5235u, 41254u)), Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 0u, 4294967295u, 22802u)), Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 55201u, 46613u, 4294967295u)), Struct_1(vec2<bool>(true, true), vec4<u32>(16909u, 29749u, 29862u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec4<u32>(6856u, 0u, 4294967295u, 1523u)), Struct_1(vec2<bool>(false, false), vec4<u32>(1u, 52500u, 53728u, 0u)), Struct_1(vec2<bool>(false, true), vec4<u32>(41600u, 4294967295u, 44700u, 0u)), Struct_1(vec2<bool>(true, true), vec4<u32>(0u, 48858u, 0u, 0u)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_2);
    global1 = array<Struct_1, 22>();
    global0 = array<i32, 19>();
    let var_1 = select(select(arg_1, arg_1, select(!(!arg_1), select(select(vec4<bool>(false, arg_1.x, false, false), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), true), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), arg_1, vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)))), !arg_1, arg_1);
    global1 = array<Struct_1, 22>();
    return _wgslsmith_div_u32(~(~u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c, 94419u, ~0u, arg_3.x), ~vec4<u32>(abs(21279u), _wgslsmith_add_u32(arg_3.x, 0u), arg_3.x, 1u)));
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = Struct_3(false, select(vec4<bool>(!any(vec4<bool>(false, false, true, false)), any(vec3<bool>(arg_0.a.x, false, arg_0.a.x)), !any(vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x)), false), select(select(!vec4<bool>(false, arg_0.a.x, false, true), !vec4<bool>(arg_0.a.x, arg_0.a.x, false, true), u_input.b.x > 4294967295u), vec4<bool>(true, select(arg_0.a.x, arg_0.a.x, arg_0.a.x), any(arg_0.a), any(vec3<bool>(false, true, arg_0.a.x))), vec4<bool>(!arg_0.a.x, any(vec2<bool>(arg_0.a.x, arg_0.a.x)), all(vec2<bool>(arg_0.a.x, arg_0.a.x)), true)), !(!arg_0.a.x) && arg_0.a.x), ~arg_0.b.x, arg_0);
    var var_1 = global1[_wgslsmith_index_u32(arg_0.b.x, 22u)];
    let var_2 = _wgslsmith_dot_vec3_u32(select(vec3<u32>(~firstLeadingBit(4294967295u), abs(0u), 1u), ~vec3<u32>(_wgslsmith_sub_u32(1u, arg_0.b.x), 0u, ~var_1.b.x), vec3<bool>(var_0.d.b.x == ~arg_0.b.x, true, select(false, false, false))), ~(~min(vec3<u32>(u_input.c, 0u, var_0.d.b.x) >> (vec3<u32>(var_0.d.b.x, 33101u, 1u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(var_0.d.b.xyz, vec3<u32>(var_1.b.x, 64935u, 47562u)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var_1 = var_0.d;
    return true;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_1.x, 4294967295u), 22u)];
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 22u)];
    global0 = array<i32, 19>();
    let var_2 = _wgslsmith_f_op_f32(trunc(175f));
    let var_3 = !var_1.a.x & !(false != func_4(global1[_wgslsmith_index_u32(func_3(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], -91147i, 0i, 1i), vec4<bool>(false, true, false, var_0.a.x), vec2<f32>(var_2, var_2), arg_1), 22u)]));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(var_1.b.ww, arg_1.yx), vec2<u32>(var_0.b.x, arg_1.x), vec2<u32>(0u, 25854u)), u_input.b.zy) ^ var_1.b.x, 19u)];
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(682f));
    global0 = array<i32, 19>();
    let var_1 = true;
    var var_2 = func_2(141f, ~u_input.d);
    var_2 = abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(30022i, -7998i, global0[_wgslsmith_index_u32(u_input.c, 19u)], u_input.a.x), vec4<i32>(16411i, 0i, 1i, -1i), vec4<i32>(34416i, u_input.a.x, -23105i, u_input.a.x)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.e, 19u)], 57868i, -17319i, 15387i), vec4<i32>(global0[_wgslsmith_index_u32(37012u, 19u)], -46868i, global0[_wgslsmith_index_u32(u_input.c, 19u)], 2147483647i))), _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(-1i, global0[_wgslsmith_index_u32(u_input.e, 19u)], 679i)), vec3<i32>(2147483647i, -16194i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-2147483647i, 0i))))));
    return Struct_1(!select(vec2<bool>(var_1, true), vec2<bool>(var_1, false), true), ~firstTrailingBit(vec4<u32>(0u, max(59553u, 30830u), u_input.e, _wgslsmith_div_u32(u_input.e, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = -vec4<i32>(u_input.a.x, i32(-1i) * -1i, u_input.a.x, max(_wgslsmith_mult_i32(u_input.a.x, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(40533i, -1i, -13274i), vec3<i32>(0i, u_input.a.x, global0[_wgslsmith_index_u32(var_0.b.x, 19u)]))) | _wgslsmith_mult_i32(1i, -u_input.a.x));
    var var_2 = var_0.a.x;
    var var_3 = select(!select(vec4<bool>(var_0.a.x, all(vec4<bool>(false, false, false, true)), true, -1i <= var_1.x), vec4<bool>(false, true, true, all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))), vec4<bool>(true, true == var_0.a.x, false, var_0.a.x & false)), !(!(!(!vec4<bool>(false, false, var_0.a.x, true)))), !any(!select(vec4<bool>(true, true, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), true)));
    var var_4 = vec2<u32>(25529u, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(0u, var_0.b.x), 1u), firstLeadingBit(firstTrailingBit(~u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-812f * _wgslsmith_f_op_f32(sign(594f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2430f) * _wgslsmith_f_op_f32(round(-953f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f - -713f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1326f + -1020f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-672f - _wgslsmith_f_op_f32(-478f * -271f))))), -1000f);
}

