struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = -1901i;
    var_0 = ~abs(firstTrailingBit(min(i32(-1i) * -15021i, -9529i)));
    var_0 = -13357i;
    let var_1 = vec3<bool>(2147483647i >= (1i << ((1u | u_input.b.x) % 32u)), true, any(vec2<bool>(select(true, !arg_0, arg_0), true)));
    let var_2 = vec3<bool>(any(select(!select(vec3<bool>(arg_0, arg_1, arg_0), vec3<bool>(var_1.x, true, arg_0), var_1), !vec3<bool>(arg_1, arg_0, true), arg_1)), true, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(1i, 1i)), _wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -7478i, -2147483647i), vec3<i32>(-2147483647i, -39239i, 23374i))), _wgslsmith_add_i32(1i, i32(-1i) * -1i)) < ~(~(~2147483647i)));
    return min(~1u, _wgslsmith_add_u32(56484u, 1u));
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: i32, arg_3: i32) -> f32 {
    var var_0 = arg_1.b.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.c, 2183f), vec2<f32>(arg_1.b.b, _wgslsmith_f_op_f32(f32(-1f) * -383f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-743f, -157f), vec2<f32>(1464f, arg_1.b.c))) - vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.b), arg_1.b.c))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.c + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.x, -1011f))))) * _wgslsmith_f_op_f32(trunc(var_1.x))), 4294967295u << (u_input.b.x % 32u));
    var var_3 = Struct_2(~func_3(select(arg_0 & false, true, true), arg_1.a.x), reverseBits(arg_1.c.x), Struct_1(arg_1.b.c, 64393u), 11033u);
    let var_4 = ~min(_wgslsmith_dot_vec3_u32(~u_input.c.zww, vec3<u32>(1u, _wgslsmith_mod_u32(var_3.a, var_2.b), ~39887u)), _wgslsmith_mult_u32(~(~var_2.b), 6802u));
    return var_1.x;
}

fn func_1() -> Struct_4 {
    var var_0 = -2916i;
    var var_1 = -224f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-300f * _wgslsmith_div_f32(1779f, -245f)), _wgslsmith_div_f32(-306f, _wgslsmith_f_op_f32(func_2(true, Struct_4(vec4<bool>(true, true, true, false), Struct_3(vec2<i32>(1i, 1i), 2600f, -1255f), vec4<i32>(-26401i, 0i, -45936i, -2147483647i), 5430i, vec3<i32>(25559i, -75479i, -2313i)), 0i, -2147483647i))))));
    let var_2 = Struct_3(-min(select(select(vec2<i32>(1i, -1i), vec2<i32>(-19798i, 31132i), false), vec2<i32>(0i, 2147483647i), select(false, true, false)), vec2<i32>(1i, ~(-69170i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -890f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(889f, 522f))) - -1000f), all(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_f32(func_2(!(!any(vec2<bool>(true, true))), Struct_4(vec4<bool>(true, true, true, true), Struct_3(vec2<i32>(1i, 1i), -442f, -816f), vec4<i32>(1i, 1i, 1i, 1i), ~(-2147483647i), ~vec3<i32>(-35503i, 1i, -2147483647i)), _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(1i, 2147483647i)), vec2<i32>(firstTrailingBit(5046i), -1i)), min(_wgslsmith_dot_vec2_i32(vec2<i32>(29592i, -2147483647i), vec2<i32>(1i, 1i)), 25740i))));
    var var_3 = Struct_4(vec4<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c.x), vec2<u32>(1u, 4294967295u)) <= (u_input.a.x << (u_input.c.x % 32u))) | all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), true, true), Struct_3(-var_2.a << (u_input.c.wx % vec2<u32>(32u)), 687f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1455f) * _wgslsmith_f_op_f32(abs(var_2.b)))), select(~(~(vec4<i32>(-1619i, 20580i, 15288i, -19611i) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.a.x) % vec4<u32>(32u)))), max(vec4<i32>(max(var_2.a.x, 70930i), -var_2.a.x, countOneBits(-46200i), var_2.a.x), ~(vec4<i32>(var_2.a.x, -1i, -2147483647i, var_2.a.x) >> (vec4<u32>(0u, u_input.b.x, u_input.a.x, u_input.c.x) % vec4<u32>(32u)))), !select(any(vec2<bool>(true, true)), true, true)), -1i, -((vec3<i32>(var_2.a.x, 40676i, var_2.a.x) ^ vec3<i32>(-2147483647i, 33780i, -1i)) & (vec3<i32>(40401i, 0i, 10614i) & vec3<i32>(-33340i, var_2.a.x, var_2.a.x))) >> (u_input.c.zxx % vec3<u32>(32u)));
    var_3 = Struct_4(!var_3.a, var_2, vec4<i32>(2147483647i, i32(-1i) * -(~3015i), -1i, _wgslsmith_mod_i32(1i, 1i)), min(10788i, var_2.a.x), ~_wgslsmith_sub_vec3_i32(~var_3.e, -vec3<i32>(var_3.d, var_3.d, var_2.a.x)));
    return Struct_4(!select(var_3.a, !select(var_3.a, var_3.a, false), vec4<bool>(any(vec3<bool>(var_3.a.x, false, true)), true, var_3.a.x, !var_3.a.x)), Struct_3(_wgslsmith_mod_vec2_i32(firstTrailingBit(-var_2.a), -vec2<i32>(var_2.a.x, -10095i) & _wgslsmith_div_vec2_i32(vec2<i32>(var_3.d, var_2.a.x), vec2<i32>(var_2.a.x, -38715i))), _wgslsmith_f_op_f32(sign(-943f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_2.b))))))), select(countOneBits(vec4<i32>(var_3.e.x, 71028i, var_3.c.x, var_3.e.x)) >> (u_input.c % vec4<u32>(32u)), var_3.c, vec4<bool>(var_3.a.x, all(var_3.a.wz), var_3.a.x, var_3.a.x)), -1i, -var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.c, var_0.b.c, 1000f, var_0.b.b), vec4<f32>(var_0.b.c, var_0.b.b, 208f, -969f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_0.b.c, 1000f))))), ~(vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, 0u), _wgslsmith_mod_u32(0u, 12800u)) & countOneBits(~vec2<u32>(u_input.b.x, u_input.c.x))), 0i);
}

