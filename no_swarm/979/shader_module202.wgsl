struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(12468u, 0u), vec2<u32>(0u, 35960u), vec2<u32>(4294967295u, 29895u), vec2<u32>(40356u, 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>) -> u32 {
    var var_0 = u_input.c.x;
    var var_1 = Struct_1(arg_1.x);
    var var_2 = Struct_5(Struct_2(Struct_1(~arg_1.x), (_wgslsmith_f_op_f32(ceil(318f)) >= _wgslsmith_f_op_f32(-1378f + 404f)) || true, Struct_1(abs(arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-769f, 1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1112f)), -603f)), u_input.a);
    let var_3 = !var_2.a.b;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.d), _wgslsmith_f_op_f32(var_2.a.d * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.d, var_2.a.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2259f - 1000f))))), _wgslsmith_div_f32(var_2.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_2.a.d)))))));
    return ~var_1.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_5 {
    var var_0 = countOneBits(_wgslsmith_div_u32(arg_1.b.a, _wgslsmith_add_u32(func_2(select(vec3<u32>(u_input.e, 0u, 4294967295u), vec3<u32>(u_input.d.x, arg_1.b.a, 0u), false), vec4<u32>(0u, u_input.d.x, 4294967295u, arg_1.b.a)), ~u_input.e)));
    let var_1 = i32(-1i) * -(i32(-1i) * -44806i);
    global1 = array<vec2<u32>, 4>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 - arg_0)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-637f, -539f, 479f), _wgslsmith_f_op_vec3_f32(-arg_0)))))));
    let var_3 = ~2147483647i;
    return Struct_5(Struct_2(Struct_1(arg_1.b.a), false, Struct_1(firstLeadingBit(1u)), 120f), _wgslsmith_add_i32(-10475i, u_input.c.x));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_3, arg_3: i32) -> Struct_5 {
    var var_0 = Struct_4(~(_wgslsmith_div_vec2_u32(~vec2<u32>(arg_2.b.a, arg_1.a.c.a), ~vec2<u32>(0u, 4294967295u)) ^ select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, arg_0.a), 4u)], abs(u_input.d), true)), arg_1.a.b);
    var_0 = Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(~(~var_0.a.x), ~_wgslsmith_mod_u32(10546u, arg_0.a)), ~(~vec2<u32>(arg_1.a.a.a, u_input.d.x))), true);
    var var_1 = min(-u_input.c, vec3<i32>(-_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(arg_3, arg_3, 2147483647i)), arg_3, firstLeadingBit(arg_1.b)) | u_input.b);
    var_1 = u_input.c;
    var var_2 = 1i;
    return arg_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: Struct_4) -> Struct_1 {
    global1 = array<vec2<u32>, 4>();
    let var_0 = func_3(Struct_1(u_input.e), Struct_5(func_3(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(293f, arg_1.a.d, 1131f)), Struct_3(-599f, Struct_1(9099u))).a.c, arg_1, Struct_3(arg_1.a.d, Struct_1(arg_2.a.x)), ~(-32571i)).a, reverseBits(-2147483647i)), Struct_3(arg_1.a.d, arg_1.a.a), (~4358i >> (~arg_2.a.x % 32u)) << (_wgslsmith_sub_u32((u_input.e ^ u_input.e) | (arg_1.a.c.a >> (30252u % 32u)), min(44815u, 54545u) ^ _wgslsmith_mult_u32(arg_1.a.a.a, 1u)) % 32u)).a;
    global1 = array<vec2<u32>, 4>();
    global0 = !var_0.b;
    var var_1 = _wgslsmith_f_op_f32(-1046f - _wgslsmith_f_op_f32(-var_0.d));
    return Struct_1(max(~arg_1.a.a.a, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.d, 1120f, var_0.d)), Struct_3(_wgslsmith_div_f32(-478f, -1000f), func_3(arg_1.a.a, Struct_5(var_0, 0i), Struct_3(1000f, Struct_1(4294967295u)), 41229i).a.c)).a.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 4>();
    var var_0 = u_input.d;
    let var_1 = !any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)));
    var var_2 = var_0.x;
    let var_3 = vec2<i32>(~(-u_input.c.x) ^ 1i, ~abs(u_input.a) | -20788i);
    var var_4 = vec3<u32>(20071u, ~_wgslsmith_mult_u32(u_input.e, u_input.e), var_0.x);
    global0 = var_1;
    var_0 = firstTrailingBit(max(_wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(var_0.x, _wgslsmith_add_u32(var_4.x, var_0.x))), ~vec2<u32>(u_input.e, 8875u) ^ ~(vec2<u32>(var_4.x, var_0.x) ^ vec2<u32>(var_4.x, var_4.x))));
    var var_5 = Struct_2(func_4(vec3<bool>(!var_1 & var_1, true, var_0.x == min(4294967295u, var_0.x)), func_3(Struct_1(0u), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1056f, 1000f, 787f)), Struct_3(475f, Struct_1(u_input.d.x))), Struct_3(_wgslsmith_f_op_f32(984f + -1000f), Struct_1(1u)), -1i), Struct_4(_wgslsmith_div_vec2_u32(~var_4.zx, abs(vec2<u32>(var_4.x, 0u))), !any(vec4<bool>(false, var_1, true, false)))), false, func_3(Struct_1(1u), Struct_5(func_3(func_4(vec3<bool>(var_1, var_1, false), Struct_5(Struct_2(Struct_1(var_4.x), var_1, Struct_1(var_4.x), 659f), var_3.x), Struct_4(u_input.d, var_1)), func_3(Struct_1(4294967295u), Struct_5(Struct_2(Struct_1(var_0.x), false, Struct_1(5651u), -931f), u_input.a), Struct_3(-515f, Struct_1(var_0.x)), -47955i), Struct_3(1924f, Struct_1(var_0.x)), _wgslsmith_clamp_i32(u_input.b.x, 1575i, var_3.x)).a, 0i), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(926f))), Struct_1(_wgslsmith_clamp_u32(u_input.e, var_4.x, u_input.e))), -(~7693i)).a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-517f, _wgslsmith_f_op_f32(step(-455f, -408f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, _wgslsmith_f_op_f32(-var_5.d));
}

