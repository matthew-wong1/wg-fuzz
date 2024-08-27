struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31>;

var<private> global1: i32 = 2147483647i;

var<private> global2: u32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>) -> bool {
    global2 = ~(~min(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b.x, u_input.c.x, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, 72901u))), 1u));
    global0 = array<vec3<u32>, 31>();
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(select(u_input.b.x, ~1u, true), ~u_input.b.x), ~_wgslsmith_mult_vec2_u32(vec2<u32>(9459u, u_input.c.x), vec2<u32>(u_input.b.x, u_input.b.x))), ~(~vec2<u32>(~u_input.b.x, 1u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.b, -102f, false))) + _wgslsmith_f_op_f32(max(arg_0.b.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global2 = var_0;
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_3(1446f, arg_0.x, select(vec2<bool>(arg_2, true), select(select(select(vec2<bool>(arg_2, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(arg_2, arg_2)), !select(vec2<bool>(arg_2, true), vec2<bool>(false, true), arg_2), !select(vec2<bool>(arg_2, false), vec2<bool>(true, arg_2), vec2<bool>(true, false))), func_3(Struct_4(!arg_2, Struct_3(1692f, arg_0.x, vec2<bool>(true, true))), select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), !arg_2))));
    var var_1 = abs(u_input.b);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, arg_0.x, false)) - _wgslsmith_div_f32(-1330f, var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    let var_3 = _wgslsmith_div_f32(-269f, _wgslsmith_f_op_f32(-var_0.a));
    global2 = 1u;
    return Struct_1(1174f, vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-1112f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x)))), 1000f, _wgslsmith_f_op_f32(-var_3)), ~abs(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(9174i, 1i, u_input.d), vec3<i32>(u_input.a.x, arg_1, 2147483647i), false), reverseBits(vec3<i32>(arg_1, -31999i, arg_1)), vec3<i32>(arg_1, u_input.d, u_input.d))), firstLeadingBit(~(4294967295u | (var_1.x >> (u_input.c.x % 32u)))), !vec3<bool>(all(!vec3<bool>(var_0.c.x, var_0.c.x, true)), !arg_2 != false, !var_0.c.x & (arg_1 > -36209i)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: u32) -> Struct_4 {
    let var_0 = vec3<u32>(arg_2, firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(~u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 26191u), vec2<u32>(112150u, arg_1.x))), select(arg_2, 0u, 51336u != arg_2))), 1u);
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-263f, _wgslsmith_f_op_f32(select(-1000f, -1134f, arg_0.x)), _wgslsmith_f_op_f32(abs(286f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(695f, 1192f, -314f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-863f, -2419f, -754f) - vec3<f32>(574f, -154f, 990f))))), max(reverseBits(u_input.d), -2147483647i) >> ((688u >> (abs(0u) % 32u)) % 32u), arg_0.x);
    var var_2 = max(u_input.a, -(~abs(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(1i, -30084i), u_input.a))));
    global1 = func_2(_wgslsmith_f_op_vec3_f32(var_1.b.yxy + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1635f), _wgslsmith_f_op_f32(exp2(var_1.b.x)), var_1.b.x)), ~(-32055i), false).c.x;
    var var_3 = Struct_5(vec3<u32>(countOneBits(reverseBits(arg_2)), var_1.d, _wgslsmith_sub_u32(arg_2, abs(20260u))), Struct_2(u_input.d, func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b.zzx * vec3<f32>(var_1.b.x, var_1.a, var_1.b.x)), _wgslsmith_f_op_vec3_f32(-var_1.b.yzy)), var_2.x, arg_0.x), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1792f, -608f, -387f)), ~var_2.x, var_1.e.x).b - vec4<f32>(_wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x)), _wgslsmith_div_f32(var_1.a, 388f), _wgslsmith_f_op_f32(step(var_1.a, var_1.a)), _wgslsmith_f_op_f32(trunc(238f))))), _wgslsmith_add_u32(~1u & var_1.d, _wgslsmith_clamp_u32(arg_1.x, _wgslsmith_div_u32(47654u, 39185u), ~4294967295u) ^ (~1u >> (arg_2 % 32u))), Struct_3(-647f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x)))), arg_0.zz));
    return Struct_4(any(vec3<bool>(true, var_1.e.x, !all(vec2<bool>(true, var_1.e.x)))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2316f, 299f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - 905f), 439f), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), !vec3<bool>(all(vec4<bool>(true, false, false, false)), u_input.c.x == 30205u, true), true), reverseBits(abs(u_input.c.yz)), 4294967295u);
    global2 = reverseBits(4294967295u);
    global2 = u_input.c.x;
    let var_1 = _wgslsmith_div_f32(var_0.b.a, _wgslsmith_div_f32(var_0.b.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_f32(f32(-1f) * -1413f))))));
    var_0 = Struct_4(true, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec2<u32>(~13989u, ~u_input.b.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_0.b.b, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_0.b.a, var_0.b.a, var_0.b.a))))))), ~30725u, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 1i, 12180i) << (global0[_wgslsmith_index_u32(u_input.b.x, 31u)] % vec3<u32>(32u)), countOneBits(vec3<i32>(0i, u_input.d, 1i))), -firstTrailingBit(1i)), ~(1i & u_input.a.x), u_input.a.x, i32(-1i) * -3826i));
}

