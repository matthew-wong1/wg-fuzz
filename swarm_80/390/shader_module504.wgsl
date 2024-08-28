struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1500f, Struct_2(vec2<i32>(-9415i, 2147483647i), vec2<bool>(false, true), Struct_1(28044i, vec3<f32>(-1814f, 304f, 356f))));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    let var_0 = arg_2;
    let var_1 = arg_0.x;
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + global0.a)), Struct_2(min(select(vec2<i32>(global0.b.c.a, arg_2.a), -vec2<i32>(-1i, var_0.a), !global0.b.b.x), global0.b.a), arg_0.zz, arg_1));
    let var_2 = _wgslsmith_div_vec2_u32(max(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, u_input.a))) ^ min(select(vec2<u32>(50530u, u_input.a), vec2<u32>(25399u, u_input.a), vec2<bool>(global0.b.b.x, arg_0.x)), vec2<u32>(56459u, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), ~vec2<u32>(~43434u, _wgslsmith_mod_u32(u_input.a, u_input.a))), (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 78319u), vec2<u32>(51565u, u_input.a)) | _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(4294967295u, 8818u))) >> (vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 25162u, 21940u, 14029u), vec4<u32>(4924u, 1u, 9534u, u_input.a)), u_input.a) % vec2<u32>(32u)));
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, 456f)))) - -158f), Struct_2(~(vec2<i32>(-1i) * -vec2<i32>(var_0.a, arg_1.a)), global0.b.b, global0.b.c));
    return -var_0.a;
}

fn func_2(arg_0: vec3<f32>) -> Struct_4 {
    global0 = Struct_4(1434f, Struct_2(~abs(global0.b.a), global0.b.b, global0.b.c));
    var var_0 = global0.b.c;
    var_0 = Struct_1(-10901i, vec3<f32>(881f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1482f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1036f, var_0.b.x)), _wgslsmith_f_op_f32(min(global0.a, 185f)))))));
    var_0 = Struct_1(_wgslsmith_div_i32(-1i, ~var_0.a), _wgslsmith_f_op_vec3_f32(-arg_0));
    var_0 = global0.b.c;
    return Struct_4(var_0.b.x, Struct_2(global0.b.a, select(global0.b.b, global0.b.b, true), Struct_1(~func_3(vec3<bool>(true, false, false), Struct_1(var_0.a, vec3<f32>(arg_0.x, global0.b.c.b.x, -287f)), Struct_3(var_0.a, vec4<f32>(345f, var_0.b.x, 1474f, global0.a))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), _wgslsmith_f_op_f32(ceil(-1383f))))));
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = Struct_3(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(-3377i, 6875i, global0.b.c.a)), -max(vec3<i32>(global0.b.c.a, global0.b.a.x, global0.b.c.a), vec3<i32>(-2147483647i, global0.b.c.a, 2147483647i))), ~(~(global0.b.c.a << (35562u % 32u))), ~firstTrailingBit(global0.b.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1032f, -1000f, global0.b.c.b.x, global0.a), vec4<f32>(global0.a, global0.a, global0.b.c.b.x, global0.a)) * vec4<f32>(global0.a, global0.a, global0.a, -435f)))));
    global0 = func_2(vec3<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(357f))), _wgslsmith_f_op_f32(var_0.b.x * -402f)));
    global0 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.b.xww))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.yyy)), arg_0 & true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.zz + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.zy)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.c.b.x, -834f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, global0.a) - global0.b.c.b.yz)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2204f, global0.a) * vec2<f32>(global0.a, global0.a)) * _wgslsmith_f_op_vec2_f32(trunc(global0.b.c.b.zy))))), _wgslsmith_f_op_vec2_f32(global0.b.c.b.yz + vec2<f32>(_wgslsmith_f_op_f32(-1068f * -1000f), _wgslsmith_div_f32(var_0.b.x, -1354f)))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1175f, global0.a)))).b.c.b.x), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 296f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f)))));
    return ~_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(var_0.a, -var_0.a, countOneBits(5509i)), _wgslsmith_clamp_i32(-(~global0.b.c.a), var_0.a | -var_0.a, _wgslsmith_sub_i32(global0.b.a.x, 2147483647i | global0.b.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-384f, _wgslsmith_div_f32(-1095f, global0.b.c.b.x));
    var var_1 = (vec2<i32>(-abs(global0.b.c.a), ~min(-36305i, global0.b.a.x)) >> (firstTrailingBit(~(~vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u))) >> ((vec2<u32>(0u, reverseBits(30707u)) >> (~(reverseBits(vec2<u32>(65831u, 48235u)) & vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-var_1.x, reverseBits(max(-23003i, global0.b.c.a)) | func_1(false)), global0.b.a);
    var var_2 = Struct_3(_wgslsmith_mod_i32(0i, ~(-5752i)), vec4<f32>(_wgslsmith_f_op_f32(-434f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(585f * -1000f), -1228f, true))), global0.b.c.b.x, 123f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(108f))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2105f - 176f), _wgslsmith_f_op_f32(f32(-1f) * -967f))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a, 4294967295u, _wgslsmith_add_u32(u_input.a, u_input.a)), select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 17240u), vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a)), vec4<bool>(true, global0.b.b.x, true, false)), true) | min(~max(vec4<u32>(40540u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 23356u)), ~vec4<u32>(1u, 0u, 4294967295u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 12940u, 84888u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(sign(var_3)));
}

