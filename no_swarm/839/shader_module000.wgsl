struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_3, 6>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec3<f32> {
    let var_0 = arg_0.a;
    let var_1 = false;
    var var_2 = global0.x;
    global1 = array<Struct_3, 6>();
    var var_3 = select(!vec2<bool>(arg_1, !(arg_0.a.b <= -2147483647i)), vec2<bool>(true, arg_1), false);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + -291f))))), global0.x, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -139f) + _wgslsmith_div_f32(486f, arg_0.b.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, -155f, -482f), vec3<f32>(global0.x, global0.x, 1227f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 390f, 405f)), vec3<f32>(-1263f, global0.x, arg_0.b.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.wxw)))));
}

fn func_2() -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, 2510f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x * 563f))))), -1097f, global0.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(127f, -2555f, -1051f) * vec3<f32>(global0.x, -129f, global0.x)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(0u, 6u)], false)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(428f, 312f, 791f), vec3<f32>(-477f, global0.x, -485f)))))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec2<bool>(true, true))))))));
    global1 = array<Struct_3, 6>();
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-2084f - _wgslsmith_f_op_f32(select(global0.x, -1280f, true))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1644f))))));
    var var_0 = Struct_2(Struct_1(vec2<u32>(16108u, u_input.a.x), u_input.b.x, 4294967295u));
    return ~(~_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, u_input.e, 1u), vec3<u32>(11780u, u_input.a.x, u_input.e))), vec3<u32>(_wgslsmith_add_u32(15970u, 1u), max(var_0.a.a.x, u_input.d.x), ~0u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: u32, arg_3: f32) -> Struct_2 {
    let var_0 = select(u_input.c.ww, u_input.b.xx, !vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), false))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(~1u), abs(~(~0u)) ^ ~(~(~arg_0.x))), 6u)];
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.xyw));
    return Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(max(_wgslsmith_div_vec2_u32(arg_0.zz, vec2<u32>(44236u, arg_2)), u_input.a.xz & vec2<u32>(u_input.e, 76805u)), ~var_1.a.a), _wgslsmith_add_i32(~min(var_1.a.b, -7193i), u_input.c.x), ~_wgslsmith_div_u32(1u, arg_2)));
}

fn func_1() -> Struct_3 {
    let var_0 = 82556u;
    global1 = array<Struct_3, 6>();
    global1 = array<Struct_3, 6>();
    let var_1 = 1i;
    var var_2 = func_4(u_input.d.zyz ^ vec3<u32>(min(~251u, 108522u), ~var_0 ^ u_input.e, firstTrailingBit(func_2())), global0.x, _wgslsmith_add_u32(u_input.a.x, 73051u), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) * 3049f)))));
    return Struct_3(func_4(countOneBits(_wgslsmith_div_vec3_u32(abs(u_input.d.xxw), vec3<u32>(var_0, 20288u, 1u) >> (vec3<u32>(u_input.e, var_0, 24624u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), countOneBits(u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(597f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1694f))))).a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_div_f32(756f, global0.x), global0.x, -1107f), vec4<f32>(_wgslsmith_f_op_f32(trunc(-2951f)), _wgslsmith_f_op_f32(-1275f + global0.x), -788f, 1818f)));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: vec3<f32>) -> vec2<u32> {
    let var_0 = vec3<u32>(0u, firstTrailingBit(~(~_wgslsmith_mod_u32(1u, arg_1))), ~(~(~_wgslsmith_sub_u32(arg_2.a.a.x, 1u))));
    var var_1 = func_1();
    var var_2 = select(!select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, false, false)), u_input.b.x != u_input.c.x, any(vec3<bool>(true, true, false))), -u_input.c.x != arg_2.a.b), vec3<bool>(all(vec4<bool>(true, true, select(false, true, false), all(vec4<bool>(false, false, true, true)))), any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), true)), select(!select(true, true, true), select(true, all(vec3<bool>(false, false, true)), true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-935f * arg_0), arg_0)) + var_1.b.x) != global0.x);
    return countOneBits(select((var_1.a.a << (countOneBits(arg_2.a.a) % vec2<u32>(32u))) >> (abs(vec2<u32>(7387u, 4294967295u)) % vec2<u32>(32u)), ~u_input.a.xy, vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(func_5(global0.x, 4294967295u | u_input.a.x, func_1(), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 1332f, global0.x), vec3<f32>(763f, 626f, -1048f), vec3<bool>(false, false, true)))) & u_input.a.zx));
}

