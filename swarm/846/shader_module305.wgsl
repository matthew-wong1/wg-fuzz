struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<vec4<i32>, 16>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = arg_0;
    global2 = array<vec4<i32>, 16>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-430f, arg_2, arg_2, -658f), vec4<f32>(arg_2, arg_2, -949f, arg_2))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-752f, arg_2, -548f, 181f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(step(arg_2, arg_2)), _wgslsmith_f_op_f32(min(-1948f, arg_2)))));
    let var_2 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(277f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_1), var_1))));
    let var_4 = ~1u;
    return global1[_wgslsmith_index_u32(max(firstLeadingBit(1u) | ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_4) ^ vec2<u32>(var_4, var_4), vec2<u32>(var_4, 1u)), max(28929u, ~max(1u, var_4))), 23u)];
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> i32 {
    global0 = global1[_wgslsmith_index_u32(28701u, 23u)];
    let var_0 = arg_1;
    global0 = func_3(global1[_wgslsmith_index_u32(arg_2, 23u)], Struct_1(vec4<i32>(~min(arg_0.x, global0.a.x), 0i, ~global0.a.x | -2147483647i, select(global0.a.x, -1i, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(~(arg_2 ^ 45701u), 23u)]))));
    var var_1 = ~func_3(func_3(func_3(Struct_1(vec4<i32>(global0.a.x, global0.a.x, global0.a.x, -1232i)), Struct_1(global2[_wgslsmith_index_u32(arg_2, 16u)]), _wgslsmith_f_op_f32(ceil(-942f))), Struct_1(select(global2[_wgslsmith_index_u32(0u, 16u)], global0.a, var_0)), -230f), global1[_wgslsmith_index_u32(~reverseBits(_wgslsmith_div_u32(83379u, 41283u)), 23u)], _wgslsmith_div_f32(-1153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)))).a.x;
    let var_2 = false;
    return _wgslsmith_mod_i32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(48681u, 0u, arg_2, arg_2), vec4<u32>(arg_2, 35005u, arg_2, 1u)), max(1u, arg_2)), 23u)], Struct_1(vec4<i32>(0i, u_input.b.x, arg_0.x, 0i)), 474f).a.x, _wgslsmith_mod_i32(global0.a.x, firstTrailingBit(0i)) << (~(arg_2 | 0u) % 32u)) & 5849i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 16>();
    global2 = array<vec4<i32>, 16>();
    global0 = Struct_1(global0.a);
    let var_0 = vec2<i32>(_wgslsmith_clamp_i32(global0.a.x, -(u_input.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-21571i, u_input.c, global0.a.x), vec3<i32>(global0.a.x, -2147483647i, u_input.c))), u_input.a), _wgslsmith_mult_i32((firstLeadingBit(global0.a.x) | firstTrailingBit(global0.a.x)) | ~(-1i), -firstTrailingBit(u_input.d)));
    global2 = array<vec4<i32>, 16>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(~(~1u)), 23410u, min(1u, 0u) >> (abs(_wgslsmith_mod_u32(~4294967295u, ~1u)) % 32u)), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(func_1(-vec2<i32>(var_0.x, var_1.a.x), true, 65261u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-915f, -1550f, 1000f, 343f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1687f, 1119f, 902f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(943f, 2718f, 116f, -2024f))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-410f, -811f, 1381f, -352f) + vec4<f32>(-159f, 832f, 472f, 831f)) - vec4<f32>(792f, 440f, -569f, 208f))))), countOneBits(~vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(0u, 38526u), 32487u, countOneBits(37636u)), max(~vec3<u32>(24305u, 3104u, 48157u), ~vec3<u32>(4294967295u, 0u, 14842u))) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 28867u, 4294967295u)), vec3<u32>(65824u, 56020u, 0u))));
}

