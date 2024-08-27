struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_4 = Struct_4(vec4<i32>(1i, -201i, 1i, 1i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: f32, arg_1: bool) -> i32 {
    return abs(~u_input.a.x >> (firstTrailingBit(~(~4294967295u)) % 32u));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: bool) -> vec3<f32> {
    global1 = Struct_4(~arg_1);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1507f + 466f), -1000f)), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(trunc(708f)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0, arg_0))), _wgslsmith_f_op_f32(sign(arg_0))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(1271f, arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-473f, arg_0))))));
    var var_1 = Struct_1(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(~24617i, reverseBits(-2147483647i), 24577i, -74015i), global1.a));
    let var_2 = _wgslsmith_f_op_f32(-arg_0);
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(-242f, -1000f)), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-883f - -564f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -156f) - _wgslsmith_f_op_f32(abs(-725f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) * _wgslsmith_f_op_f32(max(848f, -582f))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2)) + -593f), _wgslsmith_f_op_f32(max(var_2, 1000f))), arg_3))));
    return var_3.wwz;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> bool {
    let var_0 = ~firstTrailingBit(-global1.a.zz);
    var var_1 = _wgslsmith_sub_i32(u_input.a.x, ~(-u_input.b.x));
    var var_2 = vec2<u32>(arg_1.d, _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_1.d, 0u) << (firstLeadingBit(38064u) % 32u), ~13212u));
    let var_3 = !select(select(arg_1.c.xwz, arg_1.c.yww, arg_1.b.x), vec3<bool>(true, !(arg_1.c.x & false), false), any(vec4<bool>(true, !arg_1.b.x, !arg_1.b.x, true)));
    var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, var_0.x, -1i, reverseBits(countOneBits(global1.a.x))), abs((vec4<i32>(var_0.x, -1i, var_0.x, var_0.x) | global1.a) & global1.a));
    return !any(!(!arg_1.c.zxy));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global1 = Struct_4(vec4<i32>(firstTrailingBit(~_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(15063i, 0i, 20939i))), select(-21840i, _wgslsmith_mult_i32(select(67291i, arg_0.a, true), -u_input.a.x), false), -arg_0.b, 2147483647i));
    global0 = 1u;
    var var_0 = vec3<bool>(any(select(vec2<bool>(true, any(vec4<bool>(true, true, false, false))), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), func_4(_wgslsmith_f_op_vec3_f32(func_3(-562f, vec4<i32>(0i, 4242i, 2147483647i, -1i), Struct_2(Struct_1(-2147483647i, -2147483647i), Struct_1(37779i, global1.a.x), false, arg_0), true)), Struct_3(vec2<f32>(-881f, 865f), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), 20019u)))), !((~0u <= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 41651u, 4294967295u), vec4<u32>(0u, 68433u, 1u, 4294967295u))) & false), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, false, false)), true, true), !select(false, false, true))));
    global1 = Struct_4(~vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(global1.a), -global1.a), global1.a.x & 1i, 1i, 3224i));
    global0 = ~(~(~(~countOneBits(16133u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(global1.a);
    var var_0 = true;
    var var_1 = 2147483647i;
    let var_2 = Struct_2(func_2(Struct_1(~u_input.b.x, ~48808i), ~func_1(_wgslsmith_div_f32(164f, -973f), true)), Struct_1(~min(_wgslsmith_div_i32(u_input.a.x, -7991i), ~u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_sub_i32(-37931i, global1.a.x)))), true, Struct_1(u_input.b.x, global1.a.x));
    global1 = Struct_4(global1.a);
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1220f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-676f - 1000f)), -1008f)), _wgslsmith_f_op_f32(f32(-1f) * -837f));
}

