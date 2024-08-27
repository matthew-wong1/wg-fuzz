struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    let var_0 = _wgslsmith_mod_u32(~44652u >> ((min(~arg_1.b, ~22765u) ^ _wgslsmith_mod_u32(arg_1.b, arg_1.b)) % 32u), ~firstTrailingBit(~0u) << (1u % 32u));
    global0 = array<vec3<f32>, 8>();
    return false;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))));
    let var_1 = Struct_4(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 1u)), select(!vec2<bool>(arg_0, true), !vec2<bool>(arg_0, false), !vec2<bool>(false, arg_0))), vec2<u32>(15856u, 30971u)), select(vec4<bool>(func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.a, arg_1.b.x, 2147483647i), vec4<i32>(u_input.a, u_input.a, 1i, 16893i)), Struct_5(var_0, 1u, vec2<f32>(1425f, var_0), arg_1.a, var_0), Struct_1(arg_1.a, vec3<i32>(u_input.a, -1i, arg_1.b.x)), Struct_3(arg_1.b)), true, false, false), vec4<bool>(false, true, all(!vec4<bool>(arg_0, false, true, true)), true), true));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.a, var_0)))))), ~var_1.a, vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0)), 751f, -1505f);
    var var_3 = var_2;
    var var_4 = Struct_3(_wgslsmith_mult_vec3_i32(vec3<i32>(abs(0i | u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.x, u_input.a), min(vec2<i32>(arg_1.b.x, arg_1.b.x), vec2<i32>(arg_1.b.x, -6149i))), ~(-u_input.a)), _wgslsmith_clamp_vec3_i32(arg_1.b, vec3<i32>(u_input.a, -u_input.a, arg_1.b.x), -vec3<i32>(u_input.a, arg_1.b.x, arg_1.b.x))));
    return abs(10724u) ^ var_3.b;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: u32) -> f32 {
    let var_0 = ~_wgslsmith_mod_u32(arg_3, countOneBits(arg_2));
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(arg_2, _wgslsmith_clamp_u32(func_2(false, Struct_1(-1635f, vec3<i32>(0i, -18820i, -5128i))), var_0, max(~1u, ~var_0)), var_0), ~select(firstTrailingBit(vec3<u32>(var_0, arg_3, 0u)) << (vec3<u32>(1u, arg_3, 4294967295u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0, arg_2, 38754u), vec3<u32>(38548u, arg_2, arg_3)) ^ ~vec3<u32>(93419u, 4294967295u, var_0), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(false, true, true))));
    var var_2 = abs(7505u);
    global0 = array<vec3<f32>, 8>();
    var_2 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(534f * -304f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 8>();
    let var_0 = Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_3(vec3<i32>(-2147483647i, u_input.a, u_input.a)), abs(27993i), _wgslsmith_mult_u32(0u, 117662u), 34937u)))))), ~_wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, 67052u), func_2(any(vec4<bool>(true, false, false, true)), Struct_1(-162f, vec3<i32>(u_input.a, u_input.a, 0i)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(vec3<i32>(u_input.a, u_input.a, u_input.a)), u_input.a, 119114u, ~4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(101f, 1000f)) - _wgslsmith_f_op_f32(abs(-731f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-932f, -1885f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-318f, -1520f))))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(min(447f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1530f - -306f) - _wgslsmith_f_op_f32(309f * -826f)))))), _wgslsmith_f_op_f32(min(-1447f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-358f))))));
    var var_1 = vec3<u32>(0u, firstTrailingBit(59597u), abs(func_2(true, Struct_1(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x), vec3<i32>(u_input.a, 1i, 1i)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.d)) * 2167f);
    var var_3 = Struct_2(Struct_1(var_0.c.x, vec3<i32>(-1i) * -(vec3<i32>(30698i, u_input.a, -22111i) | vec3<i32>(37548i, -2147483647i, u_input.a))), firstLeadingBit(~var_0.b) | var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(~(vec4<u32>(4294967295u, var_0.b, 27368u, 0u) << (vec4<u32>(35759u, 4294967295u, var_3.b, var_0.b) % vec4<u32>(32u))), max(vec4<u32>(var_1.x, var_1.x, 5161u, var_3.b) | vec4<u32>(var_1.x, var_0.b, 11693u, var_3.b), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u) ^ vec4<u32>(4294967295u, var_0.b, var_0.b, 0u))));
}

