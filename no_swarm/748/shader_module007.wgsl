struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = 4294967295u;
    let var_1 = global0.x || true;
    var var_2 = Struct_1(~select(abs(vec3<u32>(arg_0, arg_0, arg_0)), ~vec3<u32>(var_0, 4294967295u, 38426u), false), global0.x);
    var var_3 = Struct_1(var_2.a, true);
    var var_4 = any(select(select(select(select(vec4<bool>(var_1, true, global0.x, false), vec4<bool>(var_2.b, false, true, false), vec4<bool>(true, var_3.b, var_2.b, false)), vec4<bool>(false, global0.x, true, true), vec4<bool>(global0.x, var_3.b, var_1, false)), vec4<bool>(all(global0.yx), !var_3.b, !var_3.b, false), select(select(vec4<bool>(true, var_3.b, var_1, true), vec4<bool>(false, var_3.b, var_2.b, true), vec4<bool>(false, false, var_3.b, global0.x)), select(vec4<bool>(var_3.b, var_2.b, false, false), vec4<bool>(true, var_3.b, global0.x, true), var_3.b), vec4<bool>(true, false, false, var_2.b))), select(vec4<bool>(true, true, u_input.a.x > 1036i, true), select(!vec4<bool>(true, false, global0.x, false), vec4<bool>(false, var_3.b, global0.x, true), !var_3.b), all(vec2<bool>(var_1, true)) | any(global0.zy)), !vec4<bool>(var_1, true, var_3.b, all(vec4<bool>(false, true, false, var_3.b)))));
    return var_2.a.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<i32> {
    var var_0 = arg_2.x;
    return -(~_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-35966i, u_input.a.x), u_input.a))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_vec2_i32(func_4(_wgslsmith_f_op_vec3_f32(-arg_0.c), Struct_1(arg_0.a, !(global0.x | false)), vec4<u32>(82410u, 4932u, _wgslsmith_clamp_u32(arg_0.a.x, arg_0.d.x, func_3(1773u)), 22633u)), ~min(max(u_input.a, -vec2<i32>(u_input.a.x, arg_2.x)), vec2<i32>(_wgslsmith_mult_i32(arg_1, arg_2.x), ~arg_2.x)), u_input.a);
    var var_1 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(min(arg_0.d.x, 0u), 33797u << (arg_0.d.x % 32u), ~arg_0.a.x), firstLeadingBit(select(vec3<u32>(arg_0.d.x, 78464u, 44688u), arg_0.a, global0.x)))), _wgslsmith_add_vec3_u32(arg_0.a, reverseBits(vec3<u32>(1u, ~arg_0.a.x, 0u))), arg_0.a);
    var_0 = u_input.a;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-102f))), -820f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, var_2.c.x))))));
    return !select(select(!vec4<bool>(global0.x, false, global0.x, global0.x), select(select(vec4<bool>(global0.x, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(global0.x, true, global0.x, global0.x)), vec4<bool>(false, global0.x, global0.x, global0.x), select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global0.x, true, true, false), true)), true), vec4<bool>(!global0.x, !global0.x, global0.x, true), vec4<bool>(!all(vec2<bool>(global0.x, global0.x)), true, global0.x, select(global0.x, true, false) | (1u != arg_0.d.x)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = (arg_2.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.x, arg_2.x), arg_2.x)))) | all(arg_0);
    var var_1 = false;
    var var_2 = Struct_1(arg_1.a, any(select(!func_2(Struct_2(vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<i32>(1i, -24768i, u_input.a.x), vec3<f32>(arg_2.x, arg_2.x, arg_2.x), vec2<u32>(arg_1.a.x, arg_1.a.x)), u_input.a.x, u_input.a), vec4<bool>(arg_0.x, var_0, global0.x, true), !any(arg_0.xzy))));
    var var_3 = arg_1.a.x | 0u;
    var var_4 = Struct_2(~(~(vec3<u32>(arg_1.a.x, 4294967295u, arg_1.a.x) | ~var_2.a)), -(~min(select(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, -2147483647i), global0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(44201i, u_input.a.x, -75292i), vec3<i32>(u_input.a.x, 38504i, -41i)))), vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_2.x)), vec2<u32>(reverseBits(_wgslsmith_mod_u32(0u, var_2.a.x >> (arg_1.a.x % 32u))), arg_1.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.c.x * _wgslsmith_f_op_f32(min(600f, var_4.c.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -583f) * _wgslsmith_f_op_f32(-var_4.c.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_4.c.x, var_4.c.x)))))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32) -> StorageBuffer {
    var var_0 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(select(global0.x, global0.x, false), any(global0.yx), true, false), all(func_2(Struct_2(vec3<u32>(5121u, 4294967295u, 18044u), vec3<i32>(u_input.a.x, 1i, -12035i), arg_0, vec2<u32>(4294967295u, 22934u)), u_input.a.x, u_input.a).wyw)), select(func_2(Struct_2(vec3<u32>(20386u, 109086u, 1u), vec3<i32>(25372i, u_input.a.x, u_input.a.x), vec3<f32>(arg_0.x, -373f, arg_1), vec2<u32>(52226u, 17454u)), u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x) << (vec2<u32>(9913u, 4294967295u) % vec2<u32>(32u))), func_2(Struct_2(vec3<u32>(4294967295u, 5645u, 0u), vec3<i32>(49459i, -14165i, -33373i), arg_0, vec2<u32>(4294967295u, 0u)), u_input.a.x, min(u_input.a, u_input.a)), global0.x), vec4<bool>(true, !(u_input.a.x == 27143i), !any(vec2<bool>(false, false)), true));
    var var_1 = reverseBits(~(~29300u));
    var_1 = firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(~0u, 4294967295u, ~_wgslsmith_clamp_u32(4294967295u, 29838u, 1345u))));
    let var_2 = _wgslsmith_mod_vec2_u32(firstLeadingBit((select(vec2<u32>(0u, 1u), vec2<u32>(25315u, 1u), true) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) ^ max(~vec2<u32>(63490u, 44347u), firstLeadingBit(vec2<u32>(60735u, 72881u)))), vec2<u32>(reverseBits(~1u), 1u));
    var var_3 = Struct_1(~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(213u, 42797u, var_2.x), vec3<u32>(var_2.x, var_2.x, var_2.x), ~vec3<u32>(var_2.x, var_2.x, 77237u))), var_0.x);
    return StorageBuffer(-1000f, vec2<u32>(_wgslsmith_dot_vec3_u32(~var_3.a, ~var_3.a), ~_wgslsmith_clamp_u32(1u, ~4077u, min(var_2.x, 21774u))), _wgslsmith_mult_u32(_wgslsmith_div_u32(34841u, firstTrailingBit(1u)), min(4294967295u >> (1u % 32u), ~48760u)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, var_0.x, false), Struct_1(var_3.a, var_3.b), arg_0)))), _wgslsmith_f_op_f32(func_1(func_2(Struct_2(var_3.a, vec3<i32>(-9050i, u_input.a.x, -2147483647i), arg_0, vec2<u32>(20829u, 44315u)), 5399i, u_input.a), Struct_1(var_3.a, true), _wgslsmith_f_op_vec3_f32(arg_0 + arg_0))), arg_0.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-317f, arg_1, arg_0.x), arg_0) + arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(540f, arg_1, 507f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(!vec4<bool>(global0.x, var_3.b, var_0.x, false), Struct_1(var_3.a, u_input.a.x <= -2147483647i), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, arg_1, arg_1))))), 960f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 12444u;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1419f, -1303f, 235f)), vec3<f32>(-541f, -749f, -228f), vec3<bool>(global0.x, global0.x, false))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(472f, 444f, 520f) + vec3<f32>(-153f, 130f, -223f)))))), _wgslsmith_f_op_f32(func_1(vec4<bool>(global0.x, any(vec2<bool>(global0.x, false)), global0.x, all(vec4<bool>(global0.x, global0.x, false, true))), Struct_1(vec3<u32>(1u, 1u, 1u), any(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, true, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_div_vec3_f32(vec3<f32>(-789f, 686f, 749f), vec3<f32>(-1175f, 318f, -120f)))))));
}

