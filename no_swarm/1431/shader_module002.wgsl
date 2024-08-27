struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, Struct_2(vec2<f32>(358f, -560f), -1985f), vec3<f32>(-673f, -635f, 1365f));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.c.zx - global0.c.xy))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.e)) * _wgslsmith_f_op_f32(-959f * 943f)), _wgslsmith_f_op_f32(arg_0.e + -456f))))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global0 = Struct_3(false, Struct_2(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x))), 723f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2048f, _wgslsmith_f_op_f32(abs(func_1(Struct_4(u_input.a, u_input.a, vec2<i32>(-102551i, -1i), 22875u, -132f)).a.x)), 1408f)));
    let var_0 = Struct_3(true, func_1(Struct_4(u_input.a, 0u, -abs(vec2<i32>(-37215i, -1i)), u_input.a, arg_0.b)), global0.c);
    var var_1 = Struct_1(~_wgslsmith_mult_vec4_u32(min(select(vec4<u32>(u_input.a, 0u, u_input.a, 5102u), vec4<u32>(0u, 0u, 64599u, u_input.a), vec4<bool>(var_0.a, var_0.a, global0.a, var_0.a)), vec4<u32>(23205u, u_input.a, 45447u, 0u)), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 33020u, u_input.a, 4294967295u), vec4<u32>(64433u, u_input.a, u_input.a, 11308u)))), ~abs(vec4<u32>(1u, 1u, 1u, u_input.a)) & (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 63167u, u_input.a, 38625u), vec4<u32>(u_input.a, 90503u, u_input.a, u_input.a)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(58943u, u_input.a, 40654u, u_input.a)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_mod_i32(-(~(-44400i)), 2147483647i);
    global0 = var_0;
    return arg_0;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_4 {
    global0 = arg_1;
    let var_0 = Struct_4(47263u, ~(~(~(~arg_0.x))), vec2<i32>(-66237i, 1i), 1u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.b), arg_1.b.a.x)));
    let var_1 = Struct_4(57268u & var_0.d, firstTrailingBit(~(~reverseBits(arg_0.x))), ~(-abs(vec2<i32>(var_0.c.x, 0i))), 4294967295u, _wgslsmith_f_op_f32(sign(arg_1.c.x)));
    global0 = Struct_3((true | all(select(vec4<bool>(true, arg_1.a, global0.a, true), vec4<bool>(global0.a, global0.a, true, global0.a), vec4<bool>(false, false, true, true)))) && true, func_1(var_0), arg_1.c);
    global0 = Struct_3(any(select(!(!vec3<bool>(global0.a, false, global0.a)), !vec3<bool>(false, arg_1.a, false), (global0.a != false) | !arg_1.a)), global0.b, _wgslsmith_f_op_vec3_f32(-global0.c));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(false, Struct_2(_wgslsmith_f_op_vec2_f32(-global0.c.yz), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.c))))));
    global0 = Struct_3(!(!(global0.b.b > global0.b.a.x)), func_1(Struct_4(98782u, countOneBits(abs(4294967295u)), min(-vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(35332i, 2147483647i), vec2<i32>(45660i, 78950i))), ~0u, _wgslsmith_f_op_f32(-global0.c.x))), global0.c);
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.xz))), _wgslsmith_f_op_vec2_f32(-global0.c.zx))), -621f);
    global0 = Struct_3(true, func_1(func_3(vec3<u32>(_wgslsmith_sub_u32(u_input.a, 0u), max(u_input.a, 2392u), u_input.a), Struct_3(true, func_2(Struct_2(global0.c.zx, 1806f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.b, 1241f, global0.c.x) * vec3<f32>(var_0.a.x, 658f, -374f))), vec2<u32>(4294967295u, 13237u))), global0.c);
    global0 = Struct_3(false, var_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global0.b.a.x - global0.c.x), _wgslsmith_div_f32(-935f, global0.b.a.x), var_0.a.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b.a.x, var_0.b, -810f))), _wgslsmith_f_op_vec3_f32(-global0.c))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), global0.b.a.x, 1039f)))));
    global0 = Struct_3(false, global0.b, _wgslsmith_f_op_vec3_f32(min(global0.c, vec3<f32>(1000f, var_0.b, _wgslsmith_f_op_f32(global0.b.a.x - _wgslsmith_f_op_f32(-global0.b.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(54114u), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), 57974u, _wgslsmith_div_u32(15060u, 50085u)), -30687i << (_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.a) << (~16109u % 32u), u_input.a ^ u_input.a) % 32u), reverseBits(min(-_wgslsmith_clamp_i32(-2147483647i, -41277i, -17367i), ~(~2147483647i))), global0.b.b, 2147483647i);
}

