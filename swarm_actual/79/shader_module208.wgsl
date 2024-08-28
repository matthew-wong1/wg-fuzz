struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(select(vec3<i32>(u_input.a.x, u_input.c, _wgslsmith_dot_vec2_i32(select(u_input.b.yx, vec2<i32>(arg_0, 6705i), true), u_input.a.zy)), u_input.a, all(arg_1.xx)), _wgslsmith_mod_i32(arg_0, _wgslsmith_clamp_i32(reverseBits(-13807i) << ((49929u ^ u_input.d) % 32u), -1i, reverseBits(u_input.a.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-173f, 333f, 262f), vec3<f32>(1314f, -343f, 1762f)) * vec3<f32>(-1086f, _wgslsmith_f_op_f32(sign(-356f)), -1081f))))));
    var_0 = Struct_1(select(vec3<i32>(~69250i, -18819i, ~arg_0), vec3<i32>(arg_0, (arg_0 << (u_input.d % 32u)) << (29806u % 32u), -arg_0), vec3<bool>(all(!arg_1), true, true)), _wgslsmith_mod_i32(arg_0, var_0.a.x));
    var_0 = Struct_1(u_input.b, var_0.b);
    var_0 = Struct_1(_wgslsmith_div_vec3_i32(abs(min(vec3<i32>(-1i, -2147483647i, arg_0) ^ u_input.b, _wgslsmith_sub_vec3_i32(var_0.a, u_input.b))), _wgslsmith_mod_vec3_i32(var_0.a, vec3<i32>(-1i) * -vec3<i32>(2147483647i, 17440i, arg_0))), u_input.b.x);
    return Struct_1(_wgslsmith_div_vec3_i32(var_0.a, u_input.b), var_0.a.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -563f);
    let var_1 = true;
    let var_2 = ~((_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, u_input.d, u_input.d, u_input.d), vec4<u32>(34758u, 1u, 1u, u_input.d), var_1), vec4<u32>(u_input.d, u_input.d, 47828u, u_input.d)) & u_input.d) | 38528u);
    let var_3 = u_input.a.x;
    let var_4 = Struct_1(u_input.b, countOneBits(~var_3) | -32770i);
    return var_1;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_2(~(countOneBits(u_input.d) | ~reverseBits(4294967295u)), 2147483647i, select(vec3<bool>(true, (arg_3 != arg_3) & func_2(arg_1.a.a.yy, arg_1), !arg_2), vec3<bool>(false, all(!vec4<bool>(true, arg_2, arg_0, arg_2)), !(u_input.b.x != -23822i)), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, arg_2), arg_0), !vec3<bool>(false, false, arg_2), select(vec3<bool>(false, false, true), vec3<bool>(arg_0, false, false), vec3<bool>(false, false, false))))));
    let var_1 = firstLeadingBit(35376i);
    var_0 = Struct_2(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, var_0.a)), var_0.a, 4294967295u, ~var_0.a), ~firstLeadingBit(vec4<u32>(u_input.d, 4294967295u, 14031u, var_0.a)))), -20157i, select(var_0.c, select(!select(var_0.c, vec3<bool>(true, arg_2, false), var_0.c.x), var_0.c, !var_0.c), var_0.c));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, _wgslsmith_div_f32(arg_3, -605f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, arg_3)) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_3, arg_3), vec2<f32>(-337f, 1196f))))));
    let var_3 = Struct_1(_wgslsmith_div_vec3_i32(min(firstTrailingBit(vec3<i32>(0i, arg_1.a.b, var_0.b)), abs(u_input.b)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a, 1u, 0u), vec3<u32>(var_0.a, var_0.a, 0u)) % vec3<u32>(32u)), u_input.b), ~_wgslsmith_dot_vec2_i32(u_input.b.xx, _wgslsmith_mod_vec2_i32(u_input.a.yx, _wgslsmith_mod_vec2_i32(vec2<i32>(-42483i, arg_1.a.a.x), vec2<i32>(1i, -69428i)))));
    return Struct_2(_wgslsmith_mult_u32(countOneBits(_wgslsmith_mult_u32(max(6622u, u_input.d), 66824u | u_input.d)), 0u), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, ~25084i, _wgslsmith_clamp_i32(2147483647i, -1i, arg_1.a.a.x), -var_1), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, var_1, 1i, var_0.b), vec4<i32>(0i, var_0.b, 37457i, var_3.a.x), vec4<i32>(u_input.b.x, -2910i, 1i, var_3.b)))), vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -1i, ~u_input.b.x), min(_wgslsmith_div_i32(-2147483647i, u_input.a.x), _wgslsmith_sub_i32(var_0.b, u_input.c)), ~u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.b, 12461i, 2147483647i), var_3.a), -vec3<i32>(0i, 2147483647i, 5143i)))), !vec3<bool>(false, true, any(var_0.c.zz) | any(vec4<bool>(var_0.c.x, arg_2, var_0.c.x, var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.c) > -40295i;
    var var_1 = u_input.d;
    let var_2 = func_3(true, Struct_3(func_1(_wgslsmith_dot_vec3_i32(u_input.b, ~vec3<i32>(-10603i, u_input.c, u_input.c)), vec4<bool>(!var_0, true, var_0, true))), all(select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), var_0)), !select(vec3<bool>(var_0, false, true), vec3<bool>(false, var_0, true), vec3<bool>(true, var_0, false)), vec3<bool>(u_input.c <= u_input.c, func_2(u_input.a.yy, Struct_3(Struct_1(vec3<i32>(u_input.b.x, -1i, -14574i), u_input.c))), true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1689f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-685f, -445f))) * -628f));
    var var_3 = Struct_3(func_1(func_1(u_input.b.x, select(select(vec4<bool>(var_0, var_2.c.x, var_0, var_2.c.x), vec4<bool>(true, var_2.c.x, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_2.c.x)), !vec4<bool>(true, true, var_0, false), false)).a.x, !(!select(vec4<bool>(var_2.c.x, false, var_0, false), vec4<bool>(var_2.c.x, false, false, var_2.c.x), vec4<bool>(true, var_0, var_2.c.x, var_2.c.x)))));
    let var_4 = Struct_2(abs(4294967295u), -1i, vec3<bool>(var_2.c.x, var_2.c.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b);
}

