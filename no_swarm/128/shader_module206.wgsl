struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: f32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: f32, arg_3: i32) -> vec4<u32> {
    global1 = 668f;
    var var_0 = select(select(select(vec4<bool>(arg_1.x, true, false, true), vec4<bool>(true, 786f < arg_2, true, select(arg_1.x, true, arg_1.x)), !(!vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))), vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(arg_1.x && (arg_3 >= 1i), true, arg_1.x, !(arg_1.x || arg_1.x))), vec4<bool>(select(true, arg_1.x, min(-2147483647i, arg_3) == 25691i), all(vec2<bool>(true, arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(711f)) + _wgslsmith_f_op_f32(floor(arg_0.x))) <= -351f), false);
    var_0 = select(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(arg_1.x, var_0.x, var_0.x, arg_1.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(arg_1.x, var_0.x, arg_1.x, true)), vec4<bool>(var_0.x, var_0.x, true, true), !arg_1.x), !var_0.x), select(vec4<bool>(arg_1.x, u_input.b > u_input.a, false, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, arg_1.x, false), true), !vec4<bool>(true, arg_1.x, var_0.x, false), !vec4<bool>(true, arg_1.x, true, false)), !arg_1.x), vec4<bool>(!(41164u != u_input.a), all(arg_1), !all(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), arg_1.x)), select(vec4<bool>(select(arg_1.x, !var_0.x, true), true, !arg_1.x, !(arg_1.x | true)), vec4<bool>(true, true, arg_1.x, var_0.x), !any(vec2<bool>(false, true))), !vec4<bool>(all(select(vec3<bool>(true, false, false), var_0.ywz, var_0.zyx)), false, true, true));
    global1 = -1390f;
    var var_1 = vec2<i32>(~4603i ^ arg_3, arg_3);
    return ~select(countOneBits(~vec4<u32>(13190u, u_input.a, u_input.b, 0u)) & (select(vec4<u32>(70882u, u_input.a, u_input.c.x, 1u), vec4<u32>(u_input.a, u_input.c.x, 0u, u_input.a), vec4<bool>(false, arg_1.x, arg_1.x, true)) | _wgslsmith_add_vec4_u32(vec4<u32>(51438u, 1u, u_input.b, u_input.b), vec4<u32>(1155u, 27362u, 1u, u_input.c.x))), ~vec4<u32>(2238u, u_input.c.x | u_input.c.x, ~u_input.b, u_input.c.x & u_input.a), vec4<bool>(var_0.x, true, true, all(vec2<bool>(true, true))));
}

fn func_2() -> bool {
    global0 = array<Struct_2, 17>();
    var var_0 = Struct_2(select(max(vec2<i32>(1i, ~1i), ~vec2<i32>(19504i, 42090i)), vec2<i32>(-1i) * -vec2<i32>(-1i, -1i), select(!all(vec2<bool>(true, true)), (42262u << (u_input.b % 32u)) != _wgslsmith_add_u32(u_input.a, 1u), any(vec3<bool>(true, true, true)))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(func_3(vec3<f32>(-839f, -800f, -950f), vec2<bool>(true, true), -502f, -217i), vec4<u32>(1u, u_input.a, 1u, 5453u)), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(53513u, 45298u, 60332u, u_input.b), vec4<u32>(u_input.a, u_input.b, u_input.a, 28950u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1457f) - -975f))), Struct_1(44434u, 0i));
    var_0 = Struct_2(var_0.a, var_0.b, -872f, Struct_1(~_wgslsmith_mod_u32(u_input.b, 30470u), ~(abs(-1i) ^ _wgslsmith_div_i32(42499i, var_0.a.x))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -1192f)));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(var_0.b.wwz, var_0.b.xww), -(_wgslsmith_div_i32(var_0.d.b, ~var_0.a.x) | 62552i));
    return true;
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = true;
    var_0 = (any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))) || true) & any(vec4<bool>(all(vec4<bool>(true, false, false, false)), !func_2(), true, any(vec3<bool>(true, true, true))));
    var var_1 = Struct_3(26825u);
    global0 = array<Struct_2, 17>();
    var var_2 = u_input.c.xx;
    return true;
}

fn func_4(arg_0: bool) -> StorageBuffer {
    return StorageBuffer(4294967295u, abs(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(33188i, 2147483647i, -11851i), vec3<i32>(0i, 47730i, -38822i)), ~0i, i32(-1i) * -28335i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), ~u_input.c.xy, _wgslsmith_div_vec2_u32(u_input.c.zz, vec2<u32>(42195u, u_input.c.x))) ^ _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), u_input.c.yz | u_input.c.yz)));
}

