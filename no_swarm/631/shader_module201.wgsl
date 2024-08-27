struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27>;

var<private> global1: array<u32, 17> = array<u32, 17>(4294967295u, 28628u, 4294967295u, 29577u, 21602u, 0u, 0u, 1u, 29913u, 16081u, 3552u, 4294967295u, 4294967295u, 125826u, 18111u, 18018u, 0u);

var<private> global2: vec3<u32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_1(true, ~arg_1);
    let var_1 = _wgslsmith_div_u32(34626u, 4294967295u | global1[_wgslsmith_index_u32(u_input.a << (_wgslsmith_mult_u32(u_input.a, 0u) % 32u), 17u)]) | ~global1[_wgslsmith_index_u32(~(68177u & (40607u & u_input.a)), 17u)];
    var var_2 = firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(abs(vec3<u32>(4294967295u, u_input.a, u_input.a))), ~firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1, 17u)], 17u)], var_1, u_input.a))), ~(~u_input.a)));
    var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(~global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 17u)], u_input.a, var_1), vec4<u32>(global1[_wgslsmith_index_u32(1u, 17u)], 1u, 27756u, 25876u)), 17u)], var_2.x), vec2<u32>(_wgslsmith_add_u32(16180u, 52255u), global1[_wgslsmith_index_u32(var_1, 17u)]));
    var var_3 = _wgslsmith_f_op_f32(-1f);
    return Struct_3(var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(421f, 1886f, 452f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(940f, 781f)), _wgslsmith_div_f32(-484f, -1163f), -182f))), global0[_wgslsmith_index_u32(select(~reverseBits(_wgslsmith_mod_u32(global2.x, 44833u)), 75025u, all(arg_0)), 27u)], any(vec3<bool>(select(arg_0.x, arg_0.x && true, all(global0[_wgslsmith_index_u32(global2.x, 27u)])), select(68226u == u_input.a, !arg_0.x, false), true)), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(3442u, 17u)], 48686u), 1u), 27u)]);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    let var_0 = vec2<bool>(!arg_3.d, !all(vec3<bool>(all(vec3<bool>(true, arg_2.b.a, arg_2.b.a)), arg_3.c.x, true)));
    global0 = array<vec2<bool>, 27>();
    global1 = array<u32, 17>();
    let var_1 = Struct_2(arg_2.b, arg_2.a, vec2<f32>(_wgslsmith_f_op_f32(arg_2.c.x - 525f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -997f))), vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(u_input.a ^ 0u, _wgslsmith_mod_u32(arg_0.x, 4294967295u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)] | 1u))));
    global1 = array<u32, 17>();
    return true;
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    let var_0 = !((any(vec3<bool>(false, false, true)) | func_3(vec3<u32>(499u, 0u, u_input.a) >> (vec3<u32>(u_input.a, 0u, 0u) % vec3<u32>(32u)), vec4<i32>(-12517i, 11436i, 2147483647i, -11575i), Struct_2(Struct_1(true, 39544i), Struct_1(false, -2147483647i), arg_0.wx, vec2<u32>(global2.x, global1[_wgslsmith_index_u32(17616u, 17u)])), func_2(vec4<bool>(true, true, false, false), 2147483647i, vec3<i32>(0i, 0i, 2147483647i)))) || true);
    let var_1 = _wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, ~15628i), vec2<i32>(_wgslsmith_clamp_i32(1i, 20163i, -2147483647i), -7007i)), vec2<i32>(~1i, 0i));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.wxx) + vec3<f32>(1695f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(1395f)))))));
    global2 = vec3<u32>(global2.x | 1u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(~(~u_input.a), 17u)], u_input.a), 1605u);
    var var_3 = -firstLeadingBit(-2147483647i);
    return StorageBuffer(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) - _wgslsmith_f_op_f32(max(-1433f, _wgslsmith_f_op_f32(floor(1000f)))))), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, -1i), var_1 & firstLeadingBit(vec2<i32>(0i, var_1.x))), vec2<i32>(var_1.x, min(var_1.x, _wgslsmith_mod_i32(-31757i, var_1.x)))), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)]), min(global1[_wgslsmith_index_u32(1u, 17u)], 49302u)), vec4<u32>(countOneBits(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7613u, 17u)], 17u)])), countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)]) & _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global2.x, 17u)], 26201u, 4294967295u), vec3<u32>(4294967295u, 5276u, u_input.a)), _wgslsmith_dot_vec2_u32(abs(global2.zy), ~vec2<u32>(72057u, 1u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(90678u, u_input.a), ~global1[_wgslsmith_index_u32(52149u, 17u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1161f;
    var var_1 = -46936i;
    let var_2 = Struct_3(true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -710f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0, var_0)))), 1f), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4923u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(26753u, global1[_wgslsmith_index_u32(1u, 17u)]), 17u)], 17u)]) << (countOneBits(5008u) % 32u), 17u)] | ~select(global1[_wgslsmith_index_u32(~u_input.a, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)] & u_input.a, true), 27u)], true, vec2<bool>(any(vec4<bool>(false, false, any(vec2<bool>(false, true)), any(vec3<bool>(true, false, false)))), 4294967295u == _wgslsmith_mod_u32(1u, ~global2.x)));
    var var_3 = var_2;
    global0 = array<vec2<bool>, 27>();
    global0 = array<vec2<bool>, 27>();
    let x = u_input.a;
    s_output = func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + _wgslsmith_f_op_f32(ceil(var_2.b.x))), _wgslsmith_f_op_f32(round(var_3.b.x)), var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + var_2.b.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.b.x + var_3.b.x), _wgslsmith_f_op_f32(var_2.b.x + 410f))))));
}

