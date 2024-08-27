struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-49363i, 23715i, -89010i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-599f, -398f, arg_0.x, 344f) + vec4<f32>(-501f, 390f, -396f, arg_0.x))))))) - arg_0);
    var var_1 = !arg_1.ww;
    var_1 = !vec2<bool>(var_1.x, arg_1.x);
    let var_2 = Struct_3(~firstTrailingBit(~u_input.a), true, select(arg_1.zxx, vec3<bool>(false, !(true && arg_1.x), all(select(vec2<bool>(true, true), vec2<bool>(false, arg_1.x), vec2<bool>(var_1.x, var_1.x)))), all(vec2<bool>(arg_2.x <= var_0.x, any(arg_1)))), ~(vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.e.x, 0u), _wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.b)) ^ u_input.e));
    let var_3 = Struct_1(var_2.c);
    return false;
}

fn func_3(arg_0: u32, arg_1: bool) -> vec3<i32> {
    let var_0 = Struct_4(vec4<i32>(u_input.c.x, 1i, ((2147483647i ^ global0.x) | reverseBits(global0.x)) & -2147483647i, -countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(10463i, -2147483647i, 1i), vec3<i32>(-12473i, 36913i, u_input.d.x)))), false);
    global0 = ~_wgslsmith_clamp_vec3_i32(select(vec3<i32>(abs(global0.x), var_0.a.x, -1i), -abs(vec3<i32>(-6680i, var_0.a.x, -46232i)), select(vec3<bool>(false, var_0.b, false), !vec3<bool>(true, var_0.b, var_0.b), !vec3<bool>(var_0.b, arg_1, true))), var_0.a.xwy, ~vec3<i32>(var_0.a.x, u_input.c.x, u_input.d.x) & -vec3<i32>(u_input.c.x, global0.x, var_0.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2482f, 1134f, -408f, -2751f) * vec4<f32>(363f, 1000f, 846f, -600f))))))));
    var var_2 = !select(vec2<bool>(select(var_0.b || var_0.b, any(vec4<bool>(arg_1, var_0.b, true, var_0.b)), var_0.b && var_0.b), arg_1), vec2<bool>(any(vec3<bool>(arg_1, arg_1, var_0.b)) && (true | var_0.b), false), arg_1);
    var var_3 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(153f + _wgslsmith_f_op_f32(var_1.x * -771f)) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(975f + var_1.x))), !(true && var_2.x), arg_1));
    return _wgslsmith_div_vec3_i32(vec3<i32>(abs(_wgslsmith_mod_i32(29045i, global0.x) ^ ~global0.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, global0.x), countOneBits(u_input.d)), abs(1i) & global0.x), -1i), _wgslsmith_sub_vec3_i32(var_0.a.wxy, -firstLeadingBit(firstTrailingBit(var_0.a.wyw))));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = true;
    let var_1 = -925f;
    global0 = countOneBits(vec3<i32>(_wgslsmith_mod_i32(~min(global0.x, 11574i), select(-5350i, u_input.d.x, true)), -1i, ~(-34422i)));
    global0 = func_3(_wgslsmith_div_u32(u_input.b, 4294967295u), func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_1, 598f, 481f) + vec4<f32>(var_1, 433f, 242f, 2423f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(941f, var_1, var_1, arg_0) * vec4<f32>(var_1, arg_0, var_1, 691f)))), vec4<bool>(true, !var_0, true, var_0), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, var_1), vec2<f32>(arg_0, arg_0))), -u_input.d.x >> (~4294967295u % 32u))) & ~(-vec3<i32>(u_input.c.x, 0i, u_input.c.x) | vec3<i32>(-2147483647i, firstLeadingBit(31867i), ~0i));
    var var_2 = vec4<i32>(global0.x, i32(-1i) * -_wgslsmith_div_i32(global0.x, global0.x), countOneBits(~17144i), -(~u_input.c.x)) & max(-vec4<i32>(firstTrailingBit(global0.x), 363i, 2147483647i, -global0.x), vec4<i32>(global0.x, 9254i, 30822i, ~(~(-19659i))));
    return ~(~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_2.x, global0.x, 1i)), var_2.ywx)) <= _wgslsmith_add_i32(-18272i, select(var_2.x, min(u_input.c.x, _wgslsmith_mult_i32(-30275i, var_2.x)), var_0 && true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -vec3<i32>(_wgslsmith_mod_i32(u_input.d.x, -(i32(-1i) * -27755i)), global0.x, min(u_input.c.x, ~(~global0.x)));
    var var_0 = vec3<bool>(all(!vec4<bool>(true, true, any(vec3<bool>(true, true, true)), true)), true, all(vec2<bool>(any(vec3<bool>(true, true, true)), true)));
    var_0 = vec3<bool>(var_0.x, true == select(true, !any(vec3<bool>(var_0.x, var_0.x, var_0.x)), 61700i == (-33762i ^ global0.x)), func_1(-305f));
    var_0 = vec3<bool>(_wgslsmith_f_op_f32(trunc(1900f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -353f)), !all(select(vec4<bool>(true, var_0.x, var_0.x, false), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, true, var_0.x, false), true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, true, false), vec4<bool>(true, var_0.x, true, true)))), true);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -655f)) + -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -917f));
    let var_2 = Struct_4(countOneBits(_wgslsmith_mod_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -12253i, 2147483647i, global0.x), vec4<i32>(-495i, global0.x, -1i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.d.x, global0.x, u_input.d.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, u_input.d.x, global0.x, 49533i), vec4<i32>(global0.x, -71348i, -11465i, 39106i), vec4<i32>(u_input.d.x, -63638i, 1i, 1i))))), false);
    let x = u_input.a;
    s_output = StorageBuffer(-1140f, vec3<u32>(~(~(~u_input.e.x)), 1u, (firstTrailingBit(u_input.a) | u_input.b) >> (u_input.e.x % 32u)), _wgslsmith_f_op_f32(1518f + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), _wgslsmith_f_op_f32(round(var_1.x)), -446f))));
}

