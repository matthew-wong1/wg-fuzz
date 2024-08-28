struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
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

var<private> global0: array<vec2<f32>, 22>;

var<private> global1: vec3<f32>;

var<private> global2: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: vec2<i32>) -> vec3<u32> {
    var var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a));
    global1 = arg_0.a;
    var var_2 = arg_0;
    var var_3 = arg_3.x;
    return ~vec3<u32>(firstLeadingBit(u_input.b.x), _wgslsmith_mod_u32(~(~33332u), ~u_input.b.x), u_input.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(1u, 36572u, u_input.b.x)), ~func_3(Struct_1(vec3<f32>(-1015f, global1.x, 227f)), global0[_wgslsmith_index_u32(u_input.b.x, 22u)], vec4<bool>(false, false, false, true), vec2<i32>(u_input.a.x, 10985i))), ~vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, arg_1, u_input.b.x), abs(vec3<u32>(4294967295u, 45049u, 45620u))), ~_wgslsmith_add_u32(62848u, arg_1)));
    let var_1 = arg_0;
    var var_2 = vec4<bool>(u_input.a.x > u_input.a.x, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false))), true & any(vec2<bool>(true, true)), _wgslsmith_clamp_i32(reverseBits(u_input.a.x), ~u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, firstTrailingBit(-38864i))) < u_input.a.x);
    var var_3 = arg_0.a.zx;
    let var_4 = u_input.a.x;
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(232f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1571f, any(vec3<bool>(arg_2, arg_2, arg_2)))))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-211f + arg_1.x)))), arg_1.x)));
    global0 = array<vec2<f32>, 22>();
    let var_1 = ~max(abs(abs(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x))), vec3<u32>(~min(4294967295u, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)) & 30959u, 0u));
    var var_2 = arg_0;
    let var_3 = u_input.b.x;
    return func_2(arg_0, var_3);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    global2 = _wgslsmith_add_u32(firstTrailingBit(0u << (u_input.b.x % 32u)), (arg_1 ^ _wgslsmith_mod_u32(u_input.b.x, 51564u)) & _wgslsmith_mult_u32(73103u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1, u_input.b.x), vec3<u32>(9146u, 1u, u_input.b.x)))) <= ~51773u;
    var var_0 = vec3<u32>(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, u_input.b.x), firstLeadingBit(vec2<u32>(arg_1, arg_1)))), u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, ~arg_1));
    global0 = array<vec2<f32>, 22>();
    global2 = true;
    let var_1 = vec4<u32>(1u, u_input.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, u_input.b.x, u_input.b.x, var_0.x), (vec4<u32>(4294967295u, arg_1, 1u, 0u) >> (vec4<u32>(arg_1, arg_1, 1u, var_0.x) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.x, 0u, var_0.x), vec4<u32>(30120u, arg_1, arg_1, 1u)) % vec4<u32>(32u))) << (abs(1u) % 32u), _wgslsmith_div_u32(0u, 1u));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-754f, arg_0.a.x, 1596f, 165f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-638f, arg_3.a.x, 547f, 215f) * vec4<f32>(-319f, arg_0.a.x, -271f, arg_0.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.x * -140f))), -1480f, 1689f, global1.x), -firstTrailingBit(-2147483647i) >= -(u_input.a.x ^ u_input.a.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.x, arg_3.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), 440f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 875f, 368f, arg_3.a.x) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, 1000f, arg_2, 826f)))))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1437f, global1.x)) * vec3<f32>(global1.x, _wgslsmith_f_op_f32(279f + -418f), _wgslsmith_f_op_f32(select(global1.x, arg_2.a.x, arg_3.x)))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.x, -180f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-575f + arg_0.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_1 = func_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -788f, -316f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(632f, arg_2.a.x, arg_2.a.x) * vec3<f32>(var_0.x, 1162f, global1.x))), _wgslsmith_f_op_vec4_f32(func_4(arg_2, ~u_input.b.x, arg_0.x, Struct_1(vec3<f32>(arg_2.a.x, 1786f, -369f)))).xyy)), 0u);
    global2 = u_input.b.x > _wgslsmith_mult_u32(_wgslsmith_div_u32(10007u, u_input.b.x), ~arg_1 ^ abs(min(u_input.b.x, arg_1)));
    return func_1(var_1, var_1.a.zy, arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(u_input.b.x, u_input.b.x);
    var var_1 = abs(vec2<i32>(u_input.a.x, u_input.a.x));
    let var_2 = func_5(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_4(func_1(Struct_1(vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(max(global0[_wgslsmith_index_u32(13010u, 22u)], vec2<f32>(1504f, global1.x))), true), func_3(Struct_1(vec3<f32>(952f, global1.x, -1168f)), global1.zy, vec4<bool>(true, true, true, false), ~u_input.a).x, func_2(Struct_1(vec3<f32>(global1.x, -175f, global1.x)), var_0 ^ 22429u).a.x, func_1(Struct_1(vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1061f, 615f))), false))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + 1812f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)), _wgslsmith_f_op_f32(f32(-1f) * -805f), _wgslsmith_f_op_f32(-global1.x)))), u_input.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-203f, -1000f, 1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))))), select(!vec2<bool>(false, -1161f > global1.x), vec2<bool>(true, true), true));
    var var_3 = false;
    let var_4 = 0u;
    var var_5 = any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false), 1000f <= global1.x));
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_1.x, u_input.a.x, u_input.a.x, 1i)), ~vec4<i32>(var_1.x, var_1.x, u_input.a.x, 2147483647i))), max(vec2<u32>(4294967295u, 44507u), u_input.b) | vec2<u32>(min(reverseBits(4294967295u), 290u), _wgslsmith_mult_u32(1u, u_input.b.x)), 8499i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.x)) * -1254f))));
}

