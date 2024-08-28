struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(-1681f, 18487i);
    var var_2 = (~u_input.a.x | _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 1i, u_input.c.x, -2147483647i), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(24499i, 32598i, -20101i, var_1.b), vec4<i32>(0i, -15506i, var_1.b, -28701i))))) & select(~(u_input.d.x | 0i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i << (0u % 32u), 1i), firstLeadingBit(-506i)), select(true, var_1.b == u_input.c.x, var_1.a == var_1.a) && true);
    var var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(sign(-757f));
    return u_input.b.x << (1u % 32u);
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<u32>(abs(u_input.e), _wgslsmith_mod_u32(5532u, ~49059u));
    var var_1 = vec4<bool>(~u_input.c.x == firstTrailingBit(~u_input.d.x), false, select(all(vec2<bool>(false, false)) && true, !all(vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true))) & !all(vec3<bool>(true, true, true)), true);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-656f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1823f + -350f), -544f))), 337f, _wgslsmith_f_op_f32(f32(-1f) * -1256f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-176f, _wgslsmith_f_op_f32(f32(-1f) * -1491f))))));
    var_0 = ~select(vec2<u32>(_wgslsmith_div_u32(12223u, 1u) >> (func_3(u_input.e, -1000f) % 32u), ~(var_0.x >> (15598u % 32u))), vec2<u32>(_wgslsmith_clamp_u32(select(33593u, u_input.b.x, true), 4294967295u, var_0.x), abs(50533u & var_0.x)), !(!var_1.zy));
    var var_3 = firstTrailingBit(u_input.d.x ^ ~firstLeadingBit(u_input.a.x >> (u_input.b.x % 32u)));
    return Struct_2(u_input.e);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1686f);
    var var_1 = 612f;
    return -(~(-abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, 0i, -1628i), vec4<i32>(0i, u_input.a.x, -1i, u_input.c.x)))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: f32) -> vec2<f32> {
    var var_0 = ~_wgslsmith_mod_u32(_wgslsmith_add_u32(4263u, _wgslsmith_sub_u32(u_input.e, u_input.b.x) ^ u_input.e), 110684u);
    let var_1 = Struct_2(u_input.b.x);
    var var_2 = select(vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(arg_0), arg_0), ~(_wgslsmith_clamp_i32(u_input.d.x, u_input.c.x, -16954i) | u_input.a.x), min(-4081i, _wgslsmith_div_i32(u_input.d.x, 0i))), vec3<i32>(func_4(func_2(), var_1), ~(reverseBits(u_input.d.x) & 2147483647i), _wgslsmith_div_i32(-(-47906i & arg_0), i32(-1i) * -57374i)), false);
    global0 = array<Struct_1, 17>();
    var_0 = firstTrailingBit(54699u & (~u_input.e << (0u % 32u)));
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - 724f), _wgslsmith_f_op_f32(f32(-1f) * -1794f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.e, 17u)];
    global0 = array<Struct_1, 17>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1(reverseBits(2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(334f, var_0.a, var_0.a) * vec3<f32>(var_0.a, var_0.a, var_0.a)), vec3<bool>(false, false, true), _wgslsmith_f_op_f32(round(var_0.a))))))) - vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(1601f, _wgslsmith_div_f32(-932f, _wgslsmith_f_op_f32(f32(-1f) * -1069f)))));
    global0 = array<Struct_1, 17>();
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-777f)), var_0.a));
    var var_2 = func_2();
    let var_3 = vec3<i32>(firstTrailingBit(~1i), _wgslsmith_mod_i32(24334i << (0u % 32u), 1i), -u_input.d.x | (48843i ^ min(-var_0.b, -40582i)));
    let var_4 = select(!select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, func_3(1u, _wgslsmith_f_op_f32(select(-224f, 727f, false))) != u_input.b.x, 3652u <= ~func_2().a), !vec3<bool>(true, !select(false, true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x);
}

