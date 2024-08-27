struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: i32;

var<private> global2: u32;

var<private> global3: array<vec2<bool>, 6>;

var<private> global4: f32 = -550f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global1 = -u_input.c.x;
    var var_0 = 311f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(161f * _wgslsmith_f_op_f32(step(-832f, -1292f))))) - 413f);
    let var_1 = false;
    global2 = select(u_input.b, abs(_wgslsmith_mod_u32(49198u, ~71507u)), false);
    global2 = 36587u;
    return 4294967295u;
}

fn func_2() -> f32 {
    global2 = 7381u;
    global1 = u_input.a;
    let var_0 = Struct_1(countOneBits(func_3()), 837f, select(vec3<bool>(!(u_input.b == u_input.b), select(all(vec4<bool>(false, false, false, true)), true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), true), vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), false, true)), u_input.d);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(431f, var_0.b), -919f);
    global2 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(38377u, 51659u, var_0.a), vec3<u32>(u_input.b, var_0.a, u_input.b)), ~vec3<u32>(var_0.a, 0u, u_input.b)), 22437u, var_0.a), var_0.a);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -595f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<bool>) -> vec3<bool> {
    global4 = _wgslsmith_f_op_f32(-arg_0.b);
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-298f)), _wgslsmith_f_op_f32(743f + arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, arg_0.b), _wgslsmith_f_op_f32(-arg_0.b))), vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f)), 1541f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-208f)) + arg_0.b)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))), -1963f)), 1972f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1229f))))));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_0.zy);
    return !select(arg_0.c, vec3<bool>(true, true, true), !(!var_1.c));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    global2 = ~53643u;
    let var_0 = Struct_1(u_input.b, 211f, func_4(Struct_1(u_input.b ^ 1u, _wgslsmith_f_op_f32(-1559f - _wgslsmith_f_op_f32(round(1520f))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), -1i), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-194f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -378f)))), vec2<bool>(true, false)), ~(-max(_wgslsmith_div_i32(2147483647i, arg_0.x), -1i)));
    var var_1 = var_0.b;
    var var_2 = var_0;
    global0 = array<Struct_1, 31>();
    return _wgslsmith_f_op_f32(select(var_0.b, -214f, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let var_1 = u_input.c >> (vec3<u32>(~firstTrailingBit(max(u_input.b, u_input.b)), 47008u, ~max(62505u, u_input.b >> (u_input.b % 32u))) % vec3<u32>(32u));
    global4 = _wgslsmith_f_op_f32(func_1(firstLeadingBit(firstLeadingBit(vec4<i32>(1i, _wgslsmith_add_i32(u_input.d, 59680i), 2147483647i, -var_1.x)))));
    global3 = array<vec2<bool>, 6>();
    global4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-818f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-915f + _wgslsmith_f_op_f32(func_1(vec4<i32>(-5071i, u_input.d, u_input.c.x, 21676i))))))), _wgslsmith_f_op_f32(293f + _wgslsmith_f_op_f32(f32(-1f) * -1001f))));
    var var_2 = firstLeadingBit(_wgslsmith_div_i32(-15486i, var_0));
    var var_3 = global0[_wgslsmith_index_u32(41646u, 31u)];
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_3.b)))), _wgslsmith_f_op_f32(-var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-15253i, u_input.d, var_1.x, -16893i), firstTrailingBit(vec4<i32>(1i, u_input.c.x, 2147483647i, -22328i))), -13030i, var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4.x)) + var_3.b));
}

