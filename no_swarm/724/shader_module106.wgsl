struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(!arg_0.a, -549f, true, arg_0.d);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(trunc(arg_0.b)))) * 1f)));
    let var_2 = Struct_1(all(vec2<bool>(var_0.d, var_0.d & arg_0.d)), -973f, true, var_0.d);
    let var_3 = vec4<bool>(false && var_2.d, false, true, arg_0.a);
    let var_4 = Struct_1(any(vec3<bool>(var_2.c, var_0.a, all(vec4<bool>(false, var_3.x, false, arg_0.d)) && var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1309f)), var_0.d, true);
    return select(select(select(!var_3, !var_3, select(select(var_3, vec4<bool>(true, arg_0.d, var_2.a, false), var_3), !vec4<bool>(var_3.x, var_0.a, false, var_0.d), select(vec4<bool>(var_3.x, var_3.x, true, true), vec4<bool>(true, true, var_0.a, var_2.a), var_3))), var_3, (_wgslsmith_clamp_u32(u_input.b, 19809u, u_input.b) <= (4294967295u & u_input.c.x)) & true), var_3, !vec4<bool>(var_4.d, true, false, select(false, var_3.x || var_0.c, false)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(select(countOneBits(vec4<u32>(26462u, u_input.b, 39054u, 16355u)), ~vec4<u32>(arg_0.x, u_input.c.x, 2582u, u_input.a), func_3(Struct_1(arg_1, 334f, arg_1, arg_1))), ~vec4<u32>(u_input.c.x, 0u, arg_0.x, 1u)), _wgslsmith_div_vec4_u32(select(~vec4<u32>(arg_0.x, 1u, 1u, 71604u), vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 26776u, u_input.a, u_input.c.x), vec4<u32>(u_input.c.x, u_input.b, 22905u, arg_0.x)), u_input.c.x >> (4294967295u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 78917u), vec2<u32>(53627u, 4294967295u))), select(false, false, !arg_1)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c.x, 0u, 0u), vec4<u32>(0u, 36895u, 4294967295u, u_input.a)))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-583f, _wgslsmith_f_op_f32(-168f + _wgslsmith_f_op_f32(f32(-1f) * -336f)))) - -2286f), -274f));
    let var_2 = Struct_1(true && (arg_1 & all(!vec2<bool>(false, arg_1))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(max(-140f, var_1)))), var_1, false)), true, arg_1);
    let var_3 = _wgslsmith_mult_i32(~min(2147483647i, 1i), 1i | -_wgslsmith_dot_vec3_i32(vec3<i32>(48670i, -3163i, -37367i) >> (u_input.c % vec3<u32>(32u)), ~vec3<i32>(1i, 1i, 14086i)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1))))));
    return Struct_1(!all(vec4<bool>(arg_1, arg_1, false, true)), var_2.b, true, !(!var_2.d));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    return ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(7681u, 0u)) & (u_input.a >> (28050u % 32u)), u_input.b, 0u, 34218u));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = ~(~max(u_input.c, ~u_input.c) & u_input.c);
    var var_1 = _wgslsmith_mult_vec4_u32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(408f, 1308f, -2166f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(405f, -1638f, -703f))), Struct_1(true, -123f, select(arg_0, false, true), true), func_2(var_0.zx, true)), ~reverseBits(~vec4<u32>(var_0.x, var_0.x, u_input.a, 21754u))) & vec4<u32>(u_input.c.x, ~reverseBits(~8262u), _wgslsmith_div_u32(~(~4294967295u), ~firstTrailingBit(var_0.x)), _wgslsmith_mult_u32(~reverseBits(var_0.x), 299u));
    var_1 = vec4<u32>(var_0.x, max(_wgslsmith_sub_u32(~var_0.x, abs(var_0.x)), var_0.x), var_0.x, ~(~0u));
    let var_2 = !(!select(vec3<bool>(!arg_0, false, true), vec3<bool>(true, any(vec4<bool>(true, arg_0, false, false)), true), vec3<bool>(any(vec3<bool>(true, false, arg_0)), true, true)));
    var var_3 = Struct_1((15606u >> (_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_div_u32(91019u, 4294967295u)) % 32u)) <= _wgslsmith_mod_u32(4294967295u, ~93656u ^ (u_input.c.x & var_0.x)), _wgslsmith_f_op_f32(abs(1f)), all(!func_3(func_2(vec2<u32>(u_input.b, 0u), arg_0))), any(var_2));
    return Struct_1(any(vec3<bool>(false, !arg_0, var_2.x)) | (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.b))) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-429f * 853f)))), _wgslsmith_f_op_f32(max(-287f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(207f - var_3.b)))))), arg_0, !arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_1(all(vec4<bool>(true, all(!vec3<bool>(var_0, false, false)), any(vec2<bool>(var_0, false)), var_0)));
    let var_2 = select(firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)), select(vec4<i32>(14110i, -34913i >> (~u_input.c.x % 32u), 1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -14267i, -38216i), vec3<i32>(-15987i, -2147483647i, -37888i))), vec4<i32>(-2147483647i, -4102i >> (u_input.a % 32u), i32(-1i) * -33669i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -18326i, 2147483647i, 1i), vec4<i32>(-44830i, -1i, 61837i, -41056i))) << (min(~vec4<u32>(70396u, 0u, 88u, u_input.c.x), vec4<u32>(77073u, 4294967295u, u_input.a, u_input.b)) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), vec4<bool>(_wgslsmith_add_u32(u_input.c.x, u_input.b) <= 40637u, false, func_3(func_2(~u_input.c.yz, var_1.c)).x, var_0));
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, min(~(-12255i), var_2.x), _wgslsmith_mult_i32(var_2.x, -var_2.x)), abs(vec3<i32>(var_2.x ^ var_2.x, min(-10991i, 2147483647i), -var_2.x))), 42323i);
    var_3 = 1i;
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-568f, var_1.b, var_1.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1747f, var_1.b, var_1.b)), !var_0))), vec3<f32>(var_1.b, 1000f, -1118f))));
    let var_5 = _wgslsmith_mod_i32(var_2.x, 13620i);
    var_4 = vec3<f32>(905f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b)))), 517f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wxy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, func_2(u_input.c.yy, var_0).b, _wgslsmith_f_op_f32(abs(var_4.x)), 1000f)))));
}

