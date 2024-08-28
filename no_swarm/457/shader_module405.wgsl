struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>) -> vec4<i32> {
    var var_0 = u_input.a;
    var var_1 = Struct_2(Struct_1(abs(1i << (1u % 32u)), vec3<bool>(true, true, true)));
    var_1 = Struct_2(Struct_1(min(var_1.a.a, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -44374i, var_1.a.a), vec3<i32>(var_1.a.a, -32644i, -2147483647i)), ~vec3<i32>(-8591i, arg_1.x, var_1.a.a))), vec3<bool>(select(var_1.a.b.x | var_1.a.b.x, all(vec4<bool>(true, false, var_1.a.b.x, false)), false), true, all(vec4<bool>(true, false, false, false)) & any(vec4<bool>(true, var_1.a.b.x, var_1.a.b.x, var_1.a.b.x)))));
    var var_2 = !select(var_1.a.b.x, arg_0.x <= _wgslsmith_mult_u32(var_0.x, countOneBits(20421u)), true);
    let var_3 = Struct_1(2147483647i, !vec3<bool>(all(var_1.a.b.zy) & any(vec4<bool>(var_1.a.b.x, true, false, var_1.a.b.x)), false, true));
    return vec4<i32>(var_3.a, u_input.c.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(var_1.a.a, ~(-var_3.a)), -_wgslsmith_clamp_i32(-arg_1.x, _wgslsmith_mult_i32(var_3.a, u_input.c.x), 3417i)), _wgslsmith_sub_i32(select(abs(_wgslsmith_mod_i32(-2147483647i, 2147483647i)), select(21794i, var_3.a, var_3.b.x) & select(53993i, -14853i, true), false && var_1.a.b.x), -reverseBits(u_input.c.x) ^ ~var_1.a.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -918f), _wgslsmith_f_op_f32(ceil(-720f))) * _wgslsmith_f_op_f32(ceil(470f)))) - 577f);
    let var_1 = ~_wgslsmith_clamp_vec4_i32((u_input.c ^ u_input.c) & vec4<i32>(u_input.c.x, 1i, ~arg_2, arg_2), func_3(~max(vec4<u32>(0u, arg_3, arg_3, 50966u), vec4<u32>(u_input.a.x, u_input.d, arg_3, u_input.d)), _wgslsmith_clamp_vec2_i32(u_input.c.zx, _wgslsmith_sub_vec2_i32(vec2<i32>(-30394i, arg_2), u_input.c.zx), u_input.c.wz)), vec4<i32>(1i, -2147483647i, _wgslsmith_dot_vec3_i32(u_input.c.wwx, u_input.c.wxy), arg_2));
    var var_2 = reverseBits(abs(_wgslsmith_mult_u32(~(1u >> (1u % 32u)), ~max(arg_3, arg_3))));
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-arg_1, _wgslsmith_mod_i32(2147483647i, u_input.c.x), select(2147483647i, arg_1, false)), -_wgslsmith_div_i32(1i, u_input.c.x), arg_1) >> (~vec3<u32>(u_input.b, ~31259u, arg_3) % vec3<u32>(32u)), ~vec3<i32>(-(~(-1i)), _wgslsmith_dot_vec3_i32(func_3(vec4<u32>(arg_3, arg_3, 4294967295u, 14528u), var_1.zx).xyw, vec3<i32>(arg_2, -2147483647i, 14567i)), _wgslsmith_clamp_i32(1i, 1i, ~var_1.x)));
    let var_4 = Struct_2(Struct_1(-u_input.c.x | var_1.x, vec3<bool>(!(arg_0.x || arg_0.x), any(vec2<bool>(arg_0.x, true)), !(!arg_0.x))));
    return Struct_2(var_4.a);
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_mod_u32(0u, u_input.d);
    let var_1 = func_2(vec2<bool>(true, true | !any(vec3<bool>(true, false, false))), -2147483647i, ~(-2147483647i), 0u);
    let var_2 = func_2(vec2<bool>(var_1.a.b.x, all(select(select(vec4<bool>(var_1.a.b.x, true, true, var_1.a.b.x), vec4<bool>(var_1.a.b.x, false, var_1.a.b.x, true), false), !vec4<bool>(false, var_1.a.b.x, false, var_1.a.b.x), !vec4<bool>(false, true, false, var_1.a.b.x)))), func_2(var_1.a.b.xz, ~abs(18978i), func_2(vec2<bool>(arg_0.x != arg_0.x, var_0 > u_input.d), var_1.a.a, var_1.a.a | -var_1.a.a, abs(30351u)).a.a, _wgslsmith_clamp_u32(~(~var_0), ~(~u_input.d), ~u_input.b)).a.a, u_input.c.x, u_input.a.x);
    let var_3 = ~u_input.b;
    let var_4 = func_2(select(vec2<bool>(var_1.a.b.x, true), !vec2<bool>(true, var_1.a.b.x), var_1.a.b.xz), u_input.c.x, _wgslsmith_dot_vec4_i32(~u_input.c, func_3(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.b, u_input.d), vec4<u32>(0u, 65475u, var_0, var_0)), u_input.c.xz)), firstLeadingBit(33566u)).a;
    return func_2(func_2(func_2(vec2<bool>(u_input.d > var_3, false), var_4.a, _wgslsmith_add_i32(_wgslsmith_mod_i32(var_4.a, 19316i), u_input.c.x), var_0).a.b.yz, -13170i, ~var_2.a.a, (u_input.d ^ 4294967295u) ^ 1u).a.b.zx, 15994i, max(-(~24996i), _wgslsmith_add_i32(2147483647i, func_2(select(vec2<bool>(var_1.a.b.x, true), var_1.a.b.yy, false), var_1.a.a, 13697i, 76532u).a.a)), ~max(var_3, _wgslsmith_clamp_u32(40951u, _wgslsmith_mult_u32(37924u, var_3), ~var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<f32>(1635f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = func_2(vec2<bool>(true, var_0.a.b.x), -reverseBits(var_0.a.a), ~2147483647i, ~17656u).a.b.x;
    let var_2 = any(!(!vec4<bool>(u_input.a.x >= u_input.b, !var_0.a.b.x, false, true)));
    var var_3 = _wgslsmith_mod_i32(~select(var_0.a.a, 2147483647i, true), ~u_input.c.x) >> (u_input.d % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(1u, u_input.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2148f, _wgslsmith_f_op_f32(floor(-572f)), _wgslsmith_f_op_f32(775f + 1488f), _wgslsmith_div_f32(-402f, 945f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-142f, -136f, -1357f, -1435f)))));
}

