struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<bool>) -> vec3<u32> {
    var var_0 = select(arg_2, arg_2, all(!(!(!vec3<bool>(false, arg_2.x, arg_2.x)))));
    var_0 = select(vec2<bool>(any(arg_2), any(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false), arg_2), vec2<bool>(arg_2.x, false), !vec2<bool>(arg_2.x, arg_2.x)))), select(vec2<bool>(all(!vec4<bool>(arg_2.x, true, arg_2.x, var_0.x)), arg_2.x), select(select(arg_2, vec2<bool>(arg_2.x, true), select(arg_2, vec2<bool>(var_0.x, arg_2.x), var_0.x)), vec2<bool>(53707u < arg_1, true & var_0.x), true), arg_2.x), select(!arg_2, select(select(vec2<bool>(var_0.x, false), arg_2, vec2<bool>(false, true)), select(!vec2<bool>(var_0.x, var_0.x), !arg_2, any(arg_2)), !arg_2), !vec2<bool>(var_0.x, false)));
    var var_1 = arg_1;
    var_0 = select(vec2<bool>(true, all(select(!vec4<bool>(true, false, true, arg_2.x), !vec4<bool>(var_0.x, false, arg_2.x, false), false))), !arg_2, var_0.x);
    var_1 = _wgslsmith_add_u32(13134u, arg_1);
    return _wgslsmith_mod_vec3_u32(vec3<u32>(~abs(arg_1), arg_1, 4294967295u) ^ select(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(98378u, arg_1, 119163u), vec3<u32>(0u, 1u, 2467u)), min(vec3<u32>(arg_1, arg_1, 5816u), vec3<u32>(36043u, 0u, 12646u))), ~(~vec3<u32>(arg_1, arg_1, 1u)), vec3<bool>(true, true, true)), _wgslsmith_sub_vec3_u32(~reverseBits(~vec3<u32>(1u, 4294967295u, 45024u)), _wgslsmith_mult_vec3_u32(~(vec3<u32>(4294967295u, arg_1, 4294967295u) >> (vec3<u32>(arg_1, arg_1, arg_1) % vec3<u32>(32u))), ~(~vec3<u32>(arg_1, 40465u, 20941u)))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_u32(func_3(-vec3<i32>(1i, u_input.a, 0i) >> (~vec3<u32>(1u, 0u, 37671u) % vec3<u32>(32u)), ~_wgslsmith_clamp_u32(1u, 0u, 20753u), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u)), abs(4294967295u)), 52737u, 32648u)));
    return Struct_1(select(~vec3<u32>(4294967295u, 28553u, var_0.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.x, 1u, 25210u), vec3<u32>(var_0.a.x, 36693u, 0u)), vec3<bool>(true, any(vec2<bool>(true, false)), true)) ^ ~(vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x) ^ vec3<u32>(666u, 0u, var_0.a.x)));
}

fn func_1() -> i32 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_add_vec3_i32(max(vec3<i32>(-select(u_input.a, u_input.a, true), reverseBits(u_input.a), 0i), ~vec3<i32>(u_input.a, 0i, u_input.a)), (~(-vec3<i32>(2147483647i, u_input.a, -2147483647i)) & select(vec3<i32>(-2147483647i, -530i, u_input.a), vec3<i32>(45924i, 1i, -24720i), vec3<bool>(true, true, true))) << (vec3<u32>(27520u, ~(~var_0.a.x), var_0.a.x << (_wgslsmith_mod_u32(var_0.a.x, 53888u) % 32u)) % vec3<u32>(32u)));
    var_1 = -(~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -2147483647i, var_1.x) & vec3<i32>(-1i, var_1.x, var_1.x), max(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(-17154i, u_input.a, var_1.x))), vec3<i32>(_wgslsmith_sub_i32(-5951i, -71999i), ~0i, u_input.a)));
    var var_2 = vec3<bool>(true, true, true);
    var_1 = -select(_wgslsmith_add_vec3_i32(~(~vec3<i32>(2147483647i, 0i, 2147483647i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(1i, -2147483647i, 9505i)), _wgslsmith_mod_i32(2147483647i, 51216i), ~1i)), vec3<i32>(-28973i ^ var_1.x, u_input.a, min(-var_1.x, firstLeadingBit(-17936i))), false);
    return var_1.x << (_wgslsmith_sub_u32(reverseBits(func_3(-vec3<i32>(-1i, var_1.x, 62453i), _wgslsmith_dot_vec3_u32(var_0.a, var_0.a), var_2.yz).x), ~(var_0.a.x << ((var_0.a.x >> (var_0.a.x % 32u)) % 32u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1663f * -1260f)), ~4294967295u, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2279f), _wgslsmith_f_op_f32(floor(640f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, -857f)), _wgslsmith_f_op_f32(-910f + 933f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-367f, -1373f))))));
}

