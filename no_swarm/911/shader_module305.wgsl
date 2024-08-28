struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    var var_0 = Struct_1(!select(vec4<bool>(true, all(vec4<bool>(false, false, false, true)), true, true), vec4<bool>(true, true, true, false), false));
    var var_1 = abs(~vec2<u32>(countOneBits(arg_0.x), ~arg_0.x)) | arg_0.xx;
    var var_2 = !vec4<bool>(true, select(all(var_0.a), true, var_0.a.x), any(vec2<bool>(true, true)), true);
    var_0 = Struct_1(var_0.a);
    var var_3 = !var_2.x;
    return vec3<bool>(var_0.a.x, true, true);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1882f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1420f + -707f))))));
    let var_1 = arg_0;
    var_0 = _wgslsmith_f_op_f32(abs(1000f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-796f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(634f)), _wgslsmith_f_op_f32(step(1000f, 366f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 232f))))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(264f * _wgslsmith_f_op_f32(f32(-1f) * -202f)));
    return arg_1.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: vec2<bool>) -> f32 {
    let var_0 = arg_2.x;
    var var_1 = vec2<u32>(28609u | func_4(Struct_2(Struct_1(vec4<bool>(false, arg_3.x, true, arg_3.x)), !arg_3.x, Struct_1(vec4<bool>(arg_3.x, arg_3.x, true, false)), ~1i, Struct_1(vec4<bool>(false, false, arg_3.x, arg_3.x))), vec3<u32>(1u, 18186u, _wgslsmith_clamp_u32(56573u, 0u, 0u)), func_3(~vec3<u32>(4294967295u, 4294967295u, 75050u))), 0u);
    let var_2 = ~_wgslsmith_mod_u32(var_1.x, max(var_1.x, _wgslsmith_mult_u32(var_1.x, 4294967295u)) >> ((var_1.x & 38893u) % 32u));
    var var_3 = Struct_2(Struct_1(select(!select(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false), vec4<bool>(false, arg_3.x, true, true), vec4<bool>(arg_3.x, true, arg_3.x, false)), !(!vec4<bool>(true, true, arg_3.x, arg_3.x)), !select(vec4<bool>(false, arg_3.x, arg_3.x, true), vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), arg_3.x))), true, Struct_1(select(vec4<bool>(false, arg_3.x, true, select(false, true, true)), !(!vec4<bool>(true, true, arg_3.x, arg_3.x)), !(!arg_3.x))), u_input.b, Struct_1(select(vec4<bool>(all(vec4<bool>(false, true, arg_3.x, arg_3.x)), !arg_3.x, func_3(vec3<u32>(var_2, 31126u, var_2)).x, all(vec2<bool>(arg_3.x, true))), select(select(vec4<bool>(arg_3.x, true, false, false), vec4<bool>(arg_3.x, false, false, true), arg_3.x), !vec4<bool>(arg_3.x, true, arg_3.x, true), arg_3.x), select(select(vec4<bool>(false, false, true, true), vec4<bool>(arg_3.x, true, arg_3.x, false), vec4<bool>(arg_3.x, arg_3.x, false, false)), select(vec4<bool>(false, arg_3.x, false, false), vec4<bool>(arg_3.x, false, arg_3.x, true), vec4<bool>(true, false, arg_3.x, true)), false))));
    var_1 = ~(~reverseBits(vec2<u32>(var_2, var_2)));
    return -923f;
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_4(1u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(round(-233f)), all(vec3<bool>(false, false, true))))), _wgslsmith_f_op_f32(floor(-588f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(235f - _wgslsmith_f_op_f32(round(1163f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(-274f, 629f, 693f, -1101f), _wgslsmith_mod_vec4_i32(vec4<i32>(-16235i, u_input.a, 0i, 1i), vec4<i32>(u_input.a, -6524i, -2147483647i, -24464i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(379f, 896f, 229f)), vec2<bool>(true, true))))), Struct_2(Struct_1(vec4<bool>(true, any(vec4<bool>(false, false, false, false)), true, true)), any(vec4<bool>(all(vec4<bool>(true, true, true, true)), false, true, true)), Struct_1(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false))), 33913i, Struct_1(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(529f)), _wgslsmith_f_op_f32(func_2(vec4<f32>(-1281f, -1431f, 303f, 1446f), vec4<i32>(-39351i, 1i, u_input.b, 0i), vec3<f32>(1843f, 1138f, -1362f), vec2<bool>(false, true))))) + -536f), _wgslsmith_f_op_f32(abs(223f)))));
    let var_1 = !(!var_0.c.c.a.zx);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(851f, 378f));
    var_0 = Struct_4(~73742u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.b, var_0.b, var_0.c.e.a))))), Struct_2(Struct_1(vec4<bool>(false, var_2 < var_2, var_0.c.e.a.x, true)), var_1.x && var_1.x, var_0.c.a, abs(0i), var_0.c.c), var_2);
    let var_3 = _wgslsmith_f_op_f32(830f + 607f);
    return -(vec2<i32>(u_input.a, 57675i) ^ min(reverseBits(vec2<i32>(1i, 43808i) << (vec2<u32>(var_0.a, 4294967295u) % vec2<u32>(32u))), vec2<i32>(u_input.b, var_0.c.d) & vec2<i32>(12307i, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 18>();
    var var_0 = _wgslsmith_mod_vec2_i32(min(~(-vec2<i32>(-40281i, u_input.a)), abs(abs(func_1()))), -vec2<i32>(u_input.b, u_input.b));
    var_0 = ~vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, countOneBits(u_input.b)), _wgslsmith_div_vec3_i32(-vec3<i32>(var_0.x, -28344i, var_0.x), -vec3<i32>(1i, 1i, 0i))));
    global0 = array<Struct_3, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(4294967295u, ~32323u), _wgslsmith_dot_vec2_u32(~vec2<u32>(51911u, 1u), vec2<u32>(1u, 1u))) << (vec2<u32>(~(~55146u), 0u) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_clamp_u32(0u, min(1u, ~14600u), 1u), 1u));
}

