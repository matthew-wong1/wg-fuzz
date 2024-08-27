struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11>;

var<private> global1: Struct_4;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> i32 {
    var var_0 = 34702u;
    global0 = array<vec3<u32>, 11>();
    var var_1 = Struct_2(!(!select(2001f <= global1.b, true, all(vec3<bool>(true, false, true)))), Struct_1(global1.b), Struct_1(global1.b), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1178f - _wgslsmith_f_op_f32(global1.b + 490f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - 1238f) - _wgslsmith_f_op_f32(global1.b - global1.b)))));
    return 2147483647i << (global1.a % 32u);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec2<i32>) -> vec4<i32> {
    var var_0 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(0u, global1.a), _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 4294967295u), 17460u), reverseBits(1u)));
    return vec4<i32>(abs(1i), arg_2.x, -(0i & -max(arg_2.x, -2147483647i)), -2147483647i);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> vec4<i32> {
    var var_0 = Struct_3(vec3<u32>(3669u ^ arg_1.x, _wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_add_vec4_u32(~vec4<u32>(9825u, arg_1.x, 4294967295u, 4294967295u), ~u_input.a)), ~arg_1.x));
    let var_1 = func_3(var_0.a.x, Struct_3(firstTrailingBit(~(global0[_wgslsmith_index_u32(53195u, 11u)] & vec3<u32>(global1.a, var_0.a.x, 1u)))), select(vec2<i32>(0i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(u_input.c, -58677i)), func_2(vec3<u32>(28465u, 20367u, var_0.a.x), Struct_3(u_input.a.xxz)))), ~(~select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.b, -1i), false)), select(select(!vec2<bool>(arg_0.a, true), !vec2<bool>(arg_0.a, arg_0.a), true), select(!vec2<bool>(true, arg_0.a), vec2<bool>(false, arg_0.a), arg_0.a || arg_0.a), true)));
    let var_2 = arg_0;
    let var_3 = abs(_wgslsmith_div_u32(~1u, _wgslsmith_add_u32(0u, firstLeadingBit(0u)))) >> (_wgslsmith_mod_u32(~var_0.a.x, _wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, u_input.d), _wgslsmith_clamp_vec2_u32(var_0.a.zz, var_0.a.xy, vec2<u32>(var_0.a.x, var_0.a.x))), ~vec2<u32>(arg_1.x, 4294967295u))) % 32u);
    global0 = array<vec3<u32>, 11>();
    return _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(var_1, vec4<i32>(-u_input.c >> ((0u << (u_input.a.x % 32u)) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_1.x, -1i), vec3<i32>(u_input.b, -2147483647i, var_1.x)), 1i, var_1.x)), vec4<i32>(u_input.c, u_input.c, var_1.x, -2147483647i ^ (0i << (_wgslsmith_clamp_u32(51106u, 72667u, 4294967295u) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(90099u << (_wgslsmith_div_u32(~global1.a, reverseBits(95783u)) % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-129f, -658f)))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -315f) + _wgslsmith_f_op_f32(-global1.b)))))));
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(func_1(Struct_2(false, Struct_1(237f), Struct_1(-669f), Struct_1(-1061f)), ~vec3<u32>(0u, u_input.a.x, 1857u)), -select(vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.c), vec4<i32>(u_input.b, u_input.b, -1i, -23502i), vec4<bool>(false, false, false, false))), abs(u_input.b ^ u_input.c), -1i, ~(-u_input.c)) >> (u_input.a % vec4<u32>(32u));
    global0 = array<vec3<u32>, 11>();
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(~(2147483647i & u_input.c), _wgslsmith_clamp_i32(~u_input.c, _wgslsmith_div_i32(2147483647i, var_0.x), 1i) & (_wgslsmith_div_i32(-2147483647i, u_input.c) >> (u_input.a.x % 32u))), min(-93684i, ~reverseBits(~1i)), u_input.c);
    global1 = Struct_4(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-864f, -558f)))));
    global0 = array<vec3<u32>, 11>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)));
    let var_3 = 1u | ~select(~(~global1.a), 33733u, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.b, -689f), _wgslsmith_f_op_f32(sign(528f)))))), firstLeadingBit(~(~firstTrailingBit(vec2<u32>(var_3, 1u)))), select(-(~_wgslsmith_mod_i32(u_input.b, 0i)), _wgslsmith_dot_vec4_i32(-(vec4<i32>(-5064i, 0i, 1i, var_0.x) | vec4<i32>(var_1, -4132i, 1i, -1i)), vec4<i32>(min(43218i, 2147483647i), -1i, -2147483647i, select(u_input.b, var_1, false))), all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))), ~u_input.a, abs(~select(vec3<i32>(var_0.x, var_0.x, var_1), var_0.zxy, vec3<bool>(true, true, true)) & _wgslsmith_sub_vec3_i32(var_0.zwz, vec3<i32>(6550i, -12029i, var_0.x))));
}

