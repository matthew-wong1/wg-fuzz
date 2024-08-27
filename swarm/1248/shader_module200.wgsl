struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(8705i, vec4<u32>(0u, 11116u, 1u, 43592u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = 928f;
    let var_1 = all(vec3<bool>(true, u_input.d.x > 4294967295u, (_wgslsmith_div_f32(var_0, var_0) < var_0) & (-125f < _wgslsmith_div_f32(var_0, var_0))));
    var var_2 = _wgslsmith_clamp_i32(1i, arg_0, firstTrailingBit(global0.a));
    return select(u_input.c.x, ~_wgslsmith_mod_u32(~4294967295u, max(u_input.d.x ^ 22358u, _wgslsmith_div_u32(u_input.b.x, u_input.d.x))), all(vec2<bool>(all(!vec4<bool>(var_1, var_1, false, var_1)), false)));
}

fn func_3(arg_0: u32) -> Struct_2 {
    global0 = Struct_2(global0.a, vec4<u32>(_wgslsmith_div_u32(countOneBits(19188u), 30823u), _wgslsmith_clamp_u32(firstLeadingBit(25528u) >> (global0.b.x % 32u), _wgslsmith_div_u32(30642u, 59842u), ~firstTrailingBit(global0.b.x)), firstTrailingBit(arg_0), ~(~38734u) | _wgslsmith_div_u32(0u, max(global0.b.x, u_input.b.x))));
    let var_0 = _wgslsmith_div_u32(11295u, _wgslsmith_div_u32(global0.b.x, ~34434u));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1306f - -933f) - 790f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1703f - _wgslsmith_f_op_f32(-306f - 1284f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2146f, -1184f))))), 717f, any(select(vec3<bool>(all(vec4<bool>(true, false, false, true)), true, true), vec3<bool>(true, true, any(vec3<bool>(true, false, false))), false))));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(0u, reverseBits(_wgslsmith_dot_vec4_u32(~global0.b, _wgslsmith_sub_vec4_u32(global0.b, global0.b))), 36120u, abs(arg_0)), u_input.b);
    var var_3 = _wgslsmith_f_op_f32(trunc(var_1));
    return Struct_2(-49017i, select(u_input.b | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.b.x, 4294967295u, u_input.c.x), max(vec4<u32>(u_input.b.x, global0.b.x, 1u, arg_0), vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 0u))), global0.b >> (~(u_input.b << (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec2_u32(~vec2<u32>(firstLeadingBit(1u), func_3(4294967295u).b.x) ^ ~arg_0.b.wy, select(_wgslsmith_clamp_vec2_u32(global0.b.xw << (arg_0.b.yx % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(global0.b.x, arg_0.b.x), global0.b.yw), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.b.x), vec2<u32>(0u, 4294967295u))), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.b.x, u_input.c.x), firstLeadingBit(global0.b.ww)), vec2<bool>(true, true)) >> (abs(select(select(vec2<u32>(68839u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<bool>(true, false)), ~vec2<u32>(u_input.d.x, u_input.c.x), true)) % vec2<u32>(32u)));
    global0 = arg_0;
    var_0 = ~vec2<u32>(_wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec2_u32(global0.b.yw | vec2<u32>(arg_0.b.x, 1u), countOneBits(global0.b.ww))), global0.b.x);
    let var_1 = Struct_1(vec2<u32>(u_input.b.x, 73967u));
    var_0 = var_1.a;
    return Struct_2(global0.a, arg_0.b);
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1752f, -1753f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-621f, 702f) * 3103f))), 491f);
    global0 = func_4(func_3(func_2(max(_wgslsmith_mod_i32(global0.a, -39725i), 0i | u_input.a.x))), arg_0);
    let var_1 = func_3(u_input.b.x);
    var var_2 = vec4<i32>(-(~1i), _wgslsmith_clamp_i32(~abs(-2147483647i) << (0u % 32u), -2147483647i, abs(~(~arg_0.a.x))), -22803i, -(~(~(-23606i)) ^ var_1.a));
    var var_3 = vec2<bool>(!(~firstLeadingBit(global0.b.x) < ~_wgslsmith_sub_u32(u_input.c.x, var_1.b.x)), false);
    return Struct_2(~_wgslsmith_div_i32(-2147483647i, ~global0.a), select(global0.b, vec4<u32>(func_2(var_2.x), ~22215u, 499u, ~(~var_1.b.x)), select(!select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(true, false, var_3.x, false), true), !select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, false, var_3.x, var_3.x)), vec4<bool>(false, all(vec3<bool>(true, var_3.x, true)), var_3.x, var_3.x || var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(global0.b.x ^ ~33835u, 24494u)), 59796u, u_input.d.x, u_input.b.x);
    global0 = func_1(Struct_3(~(select(vec3<i32>(4189i, global0.a, -1i), vec3<i32>(14657i, -1i, -2147483647i), vec3<bool>(true, true, true)) << (vec3<u32>(4294967295u, 4294967295u, global0.b.x) % vec3<u32>(32u)))));
    global0 = func_3(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~var_0.zw, vec2<u32>(0u, ~0u)), ~vec2<u32>(~global0.b.x, 1u)));
    var var_1 = global0.a;
    var var_2 = Struct_2(~(~(-28458i)), _wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, u_input.d.x, 4294967295u), vec4<u32>(1u, 0u, global0.b.x, u_input.d.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, 4294967295u, 30387u, 4294967295u), u_input.b)));
    var_1 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-872f);
}

