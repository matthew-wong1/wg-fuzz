struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>) -> bool {
    var var_0 = ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(15312i, arg_0.d.a.x), firstLeadingBit(arg_0.d.a.x), 0i, 68653i), vec4<i32>(arg_0.d.a.x, -30548i, select(arg_1.c.a.x, -4157i, false), 42608i >> (u_input.a.x % 32u))));
    let var_1 = Struct_1(arg_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0.b, 516f), _wgslsmith_f_op_f32(abs(-1183f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.b, arg_0.b), vec2<f32>(1612f, 267f), arg_0.a)))) - vec2<f32>(732f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b + arg_1.b))))), ~(~vec2<i32>(~2147483647i, reverseBits(0i))), abs(vec4<u32>(8886u, arg_2.x, 0u, 83681u >> (0u % 32u)) ^ vec4<u32>(arg_2.x, u_input.a.x, abs(arg_2.x), 63008u)));
    var_0 = -_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(arg_0.c.a.x, _wgslsmith_div_i32(23892i, var_0.x), -2147483647i, firstLeadingBit(26385i))), vec4<i32>(var_1.c.x, _wgslsmith_sub_i32(countOneBits(-18380i), var_0.x), 1i, _wgslsmith_div_i32(~var_0.x, var_1.c.x)), vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, arg_0.d.a.x, -1i, arg_1.c.a.x), vec4<i32>(arg_1.d.a.x, 49297i, -2147483647i, var_0.x))), reverseBits(1i), var_0.x, ~1i));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -874f) + _wgslsmith_f_op_f32(-arg_0.b)), 1799f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1000f)))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(exp2(arg_0.b))))));
    var_0 = select(~vec4<i32>(1i ^ firstTrailingBit(11675i), 0i, ~select(var_0.x, var_1.c.x, arg_1.a), var_0.x), ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), arg_0.d.a.xz), ~34043i, _wgslsmith_dot_vec2_i32(arg_0.c.a.xz, var_1.c), -2147483647i), -(vec4<i32>(var_0.x, 11409i, 31212i, arg_0.d.a.x) ^ vec4<i32>(2507i, -1i, 2147483647i, 2147483647i))), vec4<bool>(6224i != ~(1i & arg_0.c.a.x), !(any(vec4<bool>(arg_1.a, false, false, arg_1.a)) && true), select(!all(vec3<bool>(false, false, arg_0.a)), true, arg_1.a), arg_0.a));
    return arg_1.a;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<i32>, arg_3: f32) -> vec2<bool> {
    let var_0 = !any(select(vec2<bool>(func_3(Struct_3(arg_1, arg_3, Struct_2(vec3<i32>(-58336i, arg_2.x, arg_2.x)), Struct_2(vec3<i32>(arg_2.x, arg_2.x, -2147483647i))), Struct_3(true, -628f, Struct_2(vec3<i32>(arg_2.x, 7786i, 1i)), Struct_2(vec3<i32>(arg_2.x, 1i, arg_2.x))), vec2<u32>(70314u, u_input.a.x)), false), select(vec2<bool>(true, true), !vec2<bool>(arg_0, true), !vec2<bool>(arg_0, true)), !select(vec2<bool>(true, false), vec2<bool>(arg_0, false), vec2<bool>(false, arg_1))));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_2.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_2.x, -2147483647i, arg_2.x), vec4<i32>(0i, -8498i, -20841i, -2147483647i)), min(arg_2.x, -25472i))), _wgslsmith_mod_i32(0i, 2147483647i >> (u_input.a.x % 32u))), firstLeadingBit(~arg_2.x));
    var var_2 = true;
    var var_3 = u_input.a.zyy;
    var var_4 = false;
    return vec2<bool>(!(any(select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(arg_0, true, true, true), true)) || true), var_0);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<u32>) -> bool {
    var var_0 = !func_2(all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, false, false), true)), true, vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0.x))))));
    let var_1 = !vec3<bool>(var_0.x, !(any(vec2<bool>(var_0.x, var_0.x)) || !var_0.x), false);
    var var_2 = -51388i;
    var_2 = _wgslsmith_mult_i32(abs(select(-(~(-4206i)), ~(-2147483647i) << (_wgslsmith_add_u32(1u, arg_2.x) % 32u), any(var_1) & true)), _wgslsmith_div_i32(firstLeadingBit(abs(5904i)) ^ _wgslsmith_sub_i32(select(2147483647i, 28223i, var_1.x), select(0i, 1i, var_1.x)), 1i));
    var_0 = var_1.yz;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec3<bool>(any(vec3<bool>(true, true, true)), true, any(vec3<bool>(false, true, false)))), vec3<bool>(!any(vec4<bool>(true, true, true, true)), true, !func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1233f, -966f, -723f, -2791f) - vec4<f32>(-1335f, -727f, -1734f, -1416f)), _wgslsmith_mult_u32(u_input.a.x, 0u), ~vec2<u32>(u_input.a.x, 1u))), false);
    var var_1 = vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) >> (u_input.a.x % 32u), _wgslsmith_clamp_u32(~1u, 16700u, ~30966u));
    var var_2 = ~(-32879i);
    var_1 = ~u_input.a.xy;
    var var_3 = Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(1i, -35812i, abs(22477i)), vec3<i32>(abs(0i), 1i, 607i), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, 747f, -739f, 1433f)), u_input.a.x & var_1.x, ~u_input.a.wy)), vec3<i32>(1i, 1i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(max(~vec4<i32>(-2147483647i, var_3.a.x, var_3.a.x, 21657i), -select(vec4<i32>(6266i, 1i, 2147483647i, var_3.a.x), vec4<i32>(var_3.a.x, var_3.a.x, -25240i, var_3.a.x), vec4<bool>(var_0.x, true, true, false))), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.a.x, firstLeadingBit(2912i), var_3.a.x, ~105500i), ~min(vec4<i32>(-2147483647i, var_3.a.x, 1i, var_3.a.x), vec4<i32>(2147483647i, -18237i, -13583i, -2583i)))));
}

