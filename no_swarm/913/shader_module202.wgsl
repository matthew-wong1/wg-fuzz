struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<u32>, arg_3: i32) -> bool {
    global0 = false;
    global0 = true;
    let var_0 = Struct_3(false && !(!any(vec3<bool>(true, false, false))), Struct_1(select(abs(arg_0), 6034i, false) <= min(-arg_0, _wgslsmith_mod_i32(u_input.b.x, arg_3))), vec4<i32>(~u_input.b.x, -41646i, arg_0, -7907i));
    let var_1 = ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.a);
    var var_2 = Struct_3(false, var_0.b, ~var_0.c);
    return var_2.a;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> bool {
    return arg_1.x & (((all(vec2<bool>(arg_1.x, true)) | func_3(-27364i, 48033u, vec3<u32>(u_input.a.x, 0u, 1074u), -37435i)) || true) && (true & any(select(vec2<bool>(arg_1.x, false), arg_1, arg_1.x))));
}

fn func_1() -> bool {
    global0 = true;
    var var_0 = 1675f;
    let var_1 = u_input.a.x;
    global0 = !(!select(all(vec4<bool>(true, true, true, false)), true, true)) != true;
    var var_2 = 489f;
    return !(!func_2(514f, vec2<bool>(false, var_1 == var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    let var_1 = -2147483647i;
    let var_2 = vec3<bool>(var_1 >= (1i & ~(u_input.b.x | u_input.b.x)), func_1(), true);
    var var_3 = func_3(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x), firstTrailingBit(vec4<i32>(12917i, 16214i, -3326i, u_input.b.x))), abs(vec4<i32>(var_1, -1i, -16719i, var_1) >> (u_input.c % vec4<u32>(32u))))), 12378u, _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 4294967295u), countOneBits(u_input.a.x), 0u), u_input.c.xww), u_input.c.zww), 18510i);
    let var_4 = ~countOneBits(~u_input.c.zw);
    global0 = false;
    global0 = select(var_2.x, all(vec3<bool>(var_2.x, var_2.x, !func_1())), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zw, abs(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -58620i, u_input.b.x), -vec3<i32>(32627i, u_input.b.x, u_input.b.x)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_1, var_1), vec3<i32>(-1i, u_input.b.x, var_1)), reverseBits(u_input.b.x), ~14797i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-664f, -259f, -137f, -609f), vec4<f32>(803f, 627f, 1000f, 415f))))));
}

