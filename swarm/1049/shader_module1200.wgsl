struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-444f, true, -375f);

var<private> global1: vec3<i32> = vec3<i32>(41162i, 147i, -25285i);

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(-499f), Struct_2(1314f), Struct_2(1135f), Struct_2(-1058f), Struct_2(-909f), Struct_2(-390f), Struct_2(-1198f), Struct_2(593f), Struct_2(-702f), Struct_2(-1230f), Struct_2(1506f), Struct_2(1240f), Struct_2(376f), Struct_2(267f), Struct_2(-585f), Struct_2(1000f), Struct_2(1337f), Struct_2(1469f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<bool> {
    var var_0 = -19073i;
    return !select(vec2<bool>(true, any(select(vec4<bool>(false, global0.b, global0.b, true), vec4<bool>(global0.b, true, global0.b, global0.b), global0.b))), !select(vec2<bool>(false, global0.b), vec2<bool>(true, true), global0.b), u_input.a >= u_input.a);
}

fn func_2() -> vec2<bool> {
    global2 = array<Struct_2, 18>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2650f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) - global0.c)))), true, global0.c);
    return !(!(!func_3()));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = func_2();
    let var_1 = min(u_input.a << (~5806u % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, -1i, u_input.a, -25573i), select(vec4<i32>(u_input.a, 67859i, 2147483647i, global1.x), vec4<i32>(0i, u_input.a, global1.x, 0i), vec4<bool>(var_0.x, arg_1.x, arg_1.x, false)), -vec4<i32>(37269i, u_input.a, global1.x, 0i)), ~(vec4<i32>(-1i, -13394i, global1.x, -1i) ^ vec4<i32>(global1.x, u_input.a, u_input.a, 25814i))), select(abs(vec4<i32>(2147483647i, -1i, global1.x, global1.x)) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, global1.x, global1.x), vec4<i32>(-420i, u_input.a, -34360i, -38432i)), vec4<i32>(2605i, u_input.a, -51096i, global1.x) & -vec4<i32>(-30844i, u_input.a, global1.x, -1900i), true)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1173f - 1074f))), !(all(!vec2<bool>(false, global0.b)) & true), _wgslsmith_f_op_f32(f32(-1f) * -1149f));
    global2 = array<Struct_2, 18>();
    global2 = array<Struct_2, 18>();
    return ~(~4294967295u) >> (~_wgslsmith_clamp_u32(~select(0u, 4294967295u, arg_1.x), ~abs(1u), ~(~36193u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.c, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(272f)), global0.c)))));
    global2 = array<Struct_2, 18>();
    global1 = vec3<i32>(-global1.x, firstLeadingBit(u_input.a >> (0u % 32u)), 8134i);
    global2 = array<Struct_2, 18>();
    var var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(5122u, 4294967295u), vec2<u32>(1u, 1u), vec2<bool>(false, true)), vec2<u32>(1u, 1u)), select(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u), 1u), abs(~vec2<u32>(4294967295u, 0u)), vec2<bool>(any(vec2<bool>(false, global0.b)), global0.b))), _wgslsmith_mod_u32(~abs(4294967295u), select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 24701u, 1u)), true)) ^ (~abs(4294967295u) << (func_1(Struct_2(-666f), !vec3<bool>(global0.b, global0.b, false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(5654u, 9220u), vec2<u32>(0u, 1u)), 18u)]) % 32u)));
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1451u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, 37242u), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(4294967295u, var_0.x))), var_0.x) << (31505u % 32u), 18u)];
    var var_2 = Struct_1(-601f, !global0.b & global0.b, _wgslsmith_f_op_f32(var_1.a - global0.a));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1661f))));
    var var_4 = ~(~(select(vec3<u32>(var_0.x, 4294967295u, 18443u), _wgslsmith_add_vec3_u32(vec3<u32>(20520u, var_0.x, var_0.x), vec3<u32>(var_0.x, 1u, 0u)), select(vec3<bool>(true, true, false), vec3<bool>(global0.b, global0.b, false), vec3<bool>(true, true, false))) ^ (select(vec3<u32>(1u, 4294967295u, var_0.x), vec3<u32>(34048u, var_0.x, 1u), vec3<bool>(global0.b, false, true)) | vec3<u32>(0u, var_0.x, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-438f, var_2.c)), vec2<f32>(1f, 1f), global0.b && false))))), abs(vec4<i32>(~(-1i), select(global1.x, -27009i, var_2.b) & global1.x, global1.x, -2147483647i)));
}

