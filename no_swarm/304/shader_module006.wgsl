struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32) -> i32 {
    global0 = Struct_4(arg_0.c, global0.b, arg_0, global0.d);
    var var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-146f * arg_2))))), u_input.a <= _wgslsmith_div_i32(min(-10760i, 20468i) | arg_0.c.a.x, firstTrailingBit(2147483647i)), Struct_1(global0.c.c.a, -2147483647i, 2392f));
    var var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d.x), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, u_input.b), vec2<u32>(48916u, arg_1.x)), 2764u), abs(vec3<u32>(u_input.c, 4294967295u, arg_1.x))) > _wgslsmith_sub_u32(~(u_input.d.x << (firstTrailingBit(arg_1.x) % 32u)), arg_1.x);
    let var_2 = var_0.c.b;
    var var_3 = vec3<u32>(~(~u_input.d.x), arg_1.x, _wgslsmith_sub_u32(~reverseBits(arg_1.x & 1u), ~66010u));
    return abs(_wgslsmith_div_i32(_wgslsmith_mod_i32(~max(global0.a.a.x, 2147483647i), min(_wgslsmith_dot_vec4_i32(vec4<i32>(11414i, global0.c.c.a.x, u_input.a, global0.a.a.x), vec4<i32>(arg_0.c.a.x, var_0.c.a.x, var_0.c.b, var_0.c.a.x)), -44780i & u_input.a)), global0.a.b));
}

fn func_2(arg_0: Struct_3) -> f32 {
    global0 = Struct_4(Struct_1(firstLeadingBit(vec3<i32>(-56169i, global0.c.c.b, global0.d.x)) | ~reverseBits(global0.d), -1i, -1275f), global0.b, Struct_2(_wgslsmith_f_op_f32(trunc(1362f)), all(!vec3<bool>(true, global0.c.b, true)) == false, global0.c.c), min(global0.d << (firstLeadingBit(vec3<u32>(u_input.d.x, u_input.b, 4294967295u) >> (vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), firstTrailingBit(global0.a.a)));
    global0 = Struct_4(global0.a, global0.b, global0.c, vec3<i32>(-2147483647i, max(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, u_input.a, u_input.a, u_input.a)), reverseBits(vec4<i32>(6145i, 1i, 1i, global0.a.a.x))), func_3(Struct_2(-253f, global0.c.b, global0.a), ~vec4<u32>(u_input.c, u_input.d.x, u_input.d.x, 46062u), arg_0.a)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -6843i, 2147483647i), ~vec4<i32>(global0.d.x, u_input.a, u_input.a, global0.a.a.x))));
    let var_0 = -_wgslsmith_dot_vec3_i32(abs(global0.c.c.a), ~global0.d);
    global0 = Struct_4(global0.a, Struct_3(1f), global0.c, _wgslsmith_mod_vec3_i32(max(global0.a.a, global0.c.c.a), global0.a.a));
    global0 = Struct_4(Struct_1(vec3<i32>(u_input.a, 18778i, u_input.a), abs(max(global0.c.c.a.x, countOneBits(-17689i))), arg_0.a), arg_0, Struct_2(-343f, !(true & (global0.a.a.x < -1i)), global0.a), vec3<i32>(_wgslsmith_sub_i32(1i, firstTrailingBit(_wgslsmith_mod_i32(var_0, var_0))), -12300i, func_3(Struct_2(773f, true, Struct_1(global0.c.c.a, 2147483647i, 1000f)), vec4<u32>(47205u, ~u_input.c, 4294967295u, 4831u), _wgslsmith_f_op_f32(-arg_0.a))));
    return _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b.a))), 647f)), _wgslsmith_f_op_f32(-global0.b.a), !global0.c.b)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -931f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0.b)));
    var var_2 = _wgslsmith_dot_vec3_i32(global0.a.a, reverseBits(~vec3<i32>(func_3(arg_1, vec4<u32>(4294967295u, u_input.e.x, 1u, arg_3), global0.a.c), ~arg_1.c.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -19858i, arg_1.c.a.x), vec3<i32>(-63117i, 0i, arg_1.c.a.x)))));
    var_2 = u_input.a >> (u_input.b % 32u);
    let var_3 = u_input.a;
    return 531f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1051f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.c)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(333f, global0.c.a, global0.c.a, global0.c.c.c), Struct_2(global0.c.c.c, global0.c.b, global0.c.c), u_input.d.x, u_input.b)) * _wgslsmith_f_op_f32(abs(-385f)))) * -610f);
    var_0 = 1527f;
    let var_1 = !vec2<bool>(!global0.c.b, false);
    let var_2 = var_1.x;
    let var_3 = global0.d;
    var var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.e)), 7668u, 46096u), vec3<u32>(~u_input.b, min(u_input.c, ~4294967295u), u_input.b));
    var var_5 = 22675i;
    var_4 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(var_4.x, 51891u, 0u), vec3<u32>(1701u >> (0u % 32u), 0u, _wgslsmith_sub_u32(4294967295u, 0u))), reverseBits(vec3<u32>(1u, u_input.d.x, 29086u << (1u % 32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, abs(35100u), _wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(var_4.x, u_input.c))), select(~vec3<u32>(u_input.b, var_4.x, 71345u), vec3<u32>(u_input.b, 6195u, var_4.x) ^ vec3<u32>(var_4.x, u_input.e.x, 46430u), select(vec3<bool>(true, true, false), vec3<bool>(var_1.x, true, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.c.a, global0.a.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(-714f, global0.b.a) + vec2<f32>(global0.b.a, global0.b.a)), global0.c.a <= -1191f))))), _wgslsmith_clamp_u32(1u, abs(52013u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 5810u, u_input.c) & vec3<u32>(57462u, u_input.c, var_4.x), min(vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x), vec3<u32>(4294967295u, 1u, 16122u))), vec3<u32>(38494u, countOneBits(4294967295u), ~u_input.d.x))), -global0.a.b, vec4<u32>(0u, 63961u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_4.x, u_input.d.x), ~vec2<u32>(var_4.x, 12822u)), ~u_input.e), ~(u_input.e.x >> (abs(76872u) % 32u))));
}

