struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> bool {
    let var_0 = vec4<bool>(!(381f == global1.b.x), true, arg_1.a.b, global1.a.b);
    global0 = 0u;
    global1 = Struct_2(Struct_1(2147483647i, !all(!var_0.xz)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-349f, global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2226f)), global1.b.x) + _wgslsmith_f_op_vec4_f32(-global1.b)), abs(~_wgslsmith_dot_vec4_i32(u_input.e, u_input.e) << (~_wgslsmith_div_u32(0u, 4294967295u) % 32u)), -2600i);
    global1 = Struct_2(global1.a, _wgslsmith_f_op_vec4_f32(global1.b - global1.b), -2147483647i, arg_1.a.a);
    var var_1 = Struct_1(-1i, false);
    return all(vec2<bool>(select(all(var_0.xy), all(var_0.wz), true), true && (var_1.a < u_input.c))) | global1.a.b;
}

fn func_2(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = arg_0;
    global0 = u_input.a;
    global0 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(63852u, abs(u_input.a) & abs(u_input.a)), ~_wgslsmith_dot_vec2_u32(u_input.d, u_input.d));
    let var_1 = ~1u;
    var var_2 = global1.b.x;
    return vec3<bool>(!all(select(select(vec3<bool>(var_0.a.b, global1.a.b, global1.a.b), vec3<bool>(true, true, true), true), vec3<bool>(true, arg_0.a.b, global1.a.b), func_3(2147483647i, Struct_3(global1.a)))), true, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: f32) -> Struct_3 {
    var var_0 = -((global1.a.a | _wgslsmith_mult_i32(~0i, -44733i)) & 7761i);
    return Struct_3(Struct_1(select(i32(-1i) * -global1.d, global1.d, func_3(global1.d, Struct_3(Struct_1(u_input.b.x, false))) | true), all(vec4<bool>(!arg_0.x, arg_0.x, all(arg_0), func_3(1i, Struct_3(Struct_1(global1.c, true)))))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(236f, _wgslsmith_f_op_f32(global1.b.x + 1457f), global1.b.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.b.yyx, global1.b.xxz, true))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, -658f, global1.b.x)));
    let var_1 = u_input.a;
    var var_2 = arg_0.a.a;
    let var_3 = Struct_1(-_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, u_input.e.x, u_input.b.x, u_input.b.x), vec4<i32>(22501i, u_input.e.x, arg_0.a.a, 1i)) | arg_0.a.a, any(select(select(vec4<bool>(arg_0.a.b, arg_2, arg_2, arg_0.a.b), select(vec4<bool>(global1.a.b, true, true, arg_0.a.b), vec4<bool>(global1.a.b, arg_0.a.b, arg_2, true), vec4<bool>(false, false, arg_0.a.b, global1.a.b)), true), !select(vec4<bool>(arg_0.a.b, arg_2, false, true), vec4<bool>(global1.a.b, true, false, false), true), any(select(vec4<bool>(arg_0.a.b, false, arg_2, global1.a.b), vec4<bool>(arg_2, true, false, arg_0.a.b), true)))));
    global1 = Struct_2(global1.a, global1.b, 25553i, arg_0.a.a);
    return func_4(vec3<bool>(global1.a.b | arg_0.a.b, false && func_3(arg_0.a.a << (u_input.a % 32u), Struct_3(var_3)), false), ~min(arg_1.zzy, select(select(vec3<u32>(0u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.a, 4294967295u, var_1), var_3.b), vec3<u32>(4294967295u, 21203u, var_1), global1.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(-10082i >> (1u % 32u), true);
    let var_1 = global1.a.b;
    global0 = max(0u, u_input.a);
    let var_2 = func_5(func_4(select(select(func_2(Struct_3(global1.a)), !vec3<bool>(global1.a.b, true, var_0.b), true), vec3<bool>(true, true, var_0.b | var_0.b), func_2(Struct_3(global1.a))), ~max(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.d.x)), firstTrailingBit(vec3<u32>(4294967295u, 20676u, u_input.d.x))), global1.b.x), ~_wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(24068u, 1u, u_input.d.x, u_input.d.x)), vec4<u32>(~u_input.a, _wgslsmith_mod_u32(u_input.d.x, u_input.a), 1u, ~1u)), true);
    global0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.a, 0u, u_input.a)), vec3<u32>(u_input.a | 4294967295u, 1u, _wgslsmith_mod_u32(u_input.d.x, 4505u))), ~vec3<u32>(u_input.a, _wgslsmith_mult_u32(45280u, u_input.d.x), u_input.d.x));
    return func_4(!func_2(var_2), vec3<u32>(110557u, 50041u & u_input.d.x, 4294967295u) << (~max(reverseBits(vec3<u32>(u_input.a, 31845u, u_input.a)), vec3<u32>(u_input.a, 90213u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.b.x, global1.b.x), global1.b.x)))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(u_input.d.x);
    let var_1 = Struct_3(func_1(u_input.e.x));
    let var_2 = false;
    var_0 = _wgslsmith_dot_vec2_u32(~(~u_input.d), _wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(1u), u_input.d.x), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(u_input.d.x, 9849u)) & countOneBits(u_input.d), vec2<u32>(u_input.d.x & u_input.a, 4294967295u))));
    let var_3 = global1.b.x;
    global1 = Struct_2(func_4(vec3<bool>(global1.a.b, -20083i > u_input.b.x, global1.a.b), ~(~(vec3<u32>(u_input.d.x, u_input.a, u_input.d.x) ^ vec3<u32>(19459u, u_input.d.x, u_input.d.x))), 594f).a, global1.b, -28457i ^ global1.d, -(~(~firstTrailingBit(u_input.b.x))));
    var_0 = countOneBits(~(~(~_wgslsmith_mod_u32(4294967295u, u_input.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, -147f))) * global1.b.x), -597f);
}

