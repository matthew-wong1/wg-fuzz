struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec4<i32>) -> vec3<i32> {
    var var_0 = Struct_1(arg_2.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1706f, -354f) * -1332f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f - 493f))), 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(780f))))))), max(vec3<i32>(1i, -4149i, arg_2.x), arg_1.yxw));
    var_0 = Struct_1(arg_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.b, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b.x, 1180f, 1363f), var_0.b)))) - var_0.b) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.b), var_0.b, vec3<bool>(true, true, true)))), vec3<i32>(abs(_wgslsmith_add_i32(-37742i, _wgslsmith_mult_i32(arg_2.x, 20155i))), u_input.b.x << (_wgslsmith_dot_vec4_u32(max(vec4<u32>(8183u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 36045u, 4672u)), ~vec4<u32>(0u, 1u, 67968u, 32182u)) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(arg_2, arg_1), arg_2), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-18524i, arg_2.x, 0i, arg_2.x), arg_2), var_0.a, _wgslsmith_add_i32(1i, 32159i), 1i))));
    let var_1 = Struct_2(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>((arg_0.x | arg_2.x) <= _wgslsmith_clamp_i32(-39066i, arg_2.x, 59886i), true, _wgslsmith_dot_vec3_u32(vec3<u32>(63377u, 4294967295u, 0u), vec3<u32>(5277u, 73704u, 96477u)) >= ~64730u, true | (-1634f != var_0.b.x)), vec4<bool>(true, true, true, true)), vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(~10549u), _wgslsmith_add_u32(~1u, countOneBits(1u))), _wgslsmith_sub_u32(countOneBits(42645u) >> (_wgslsmith_clamp_u32(80605u, 0u, 43231u) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 38471u, 1u), vec3<u32>(0u, 1u, 35737u)) >> (_wgslsmith_clamp_u32(18370u, 85851u, 6350u) % 32u)), _wgslsmith_sub_u32(min(~14786u, 1u), _wgslsmith_clamp_u32(~1u, 1u, 1u)), _wgslsmith_mult_u32(1u, 0u)), Struct_1(arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(741f, 612f, var_0.b.x)), vec3<f32>(1f, 1f, 1f), select(false, false, true)))), abs(firstTrailingBit(_wgslsmith_sub_vec3_i32(u_input.a.yyw, arg_1.www)))), Struct_1(abs(_wgslsmith_add_i32(max(arg_2.x, arg_1.x), ~(-2147483647i))), var_0.b, ~(-vec3<i32>(arg_2.x, arg_1.x, 14925i))));
    var var_2 = Struct_2(select(select(var_1.a, select(var_1.a, var_1.a, any(var_1.a.wxw)), var_1.a.x), !vec4<bool>(arg_2.x <= u_input.a.x, var_1.a.x, var_1.a.x && var_1.a.x, var_1.a.x), select(vec4<bool>(!var_1.a.x, var_1.a.x, var_0.b.x < 360f, false), select(!var_1.a, select(var_1.a, vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), var_1.a.x), 1u != var_1.b.x), _wgslsmith_f_op_f32(-var_1.d.b.x) > _wgslsmith_f_op_f32(-var_1.c.b.x))), ~select(vec4<u32>(~30734u, _wgslsmith_clamp_u32(var_1.b.x, var_1.b.x, var_1.b.x), ~21318u, var_1.b.x), vec4<u32>(var_1.b.x, ~var_1.b.x, _wgslsmith_mod_u32(var_1.b.x, 3522u), var_1.b.x), true), var_1.c, Struct_1(~(-2147483647i) >> (min(13017u & var_1.b.x, 1078u) % 32u), var_1.d.b, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(~var_1.c.c, vec3<i32>(arg_1.x, var_0.c.x, 15460i) & vec3<i32>(arg_0.x, 3530i, -6210i)), _wgslsmith_div_vec3_i32(var_0.c << (vec3<u32>(var_1.b.x, var_1.b.x, 1u) % vec3<u32>(32u)), u_input.a.xyw))));
    var_2 = var_1;
    return u_input.b;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = vec3<i32>(-_wgslsmith_dot_vec3_i32(func_3(~vec2<i32>(u_input.b.x, -2147483647i), u_input.a | u_input.a, u_input.a), vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.b.x), i32(-1i) * -9786i, ~(-2147483647i))), -67914i, _wgslsmith_sub_i32(-63271i, select(-1i, u_input.b.x, !all(vec3<bool>(true, arg_0, arg_0)))));
    var var_2 = u_input.b.x;
    var_0 = arg_0;
    let var_3 = i32(-1i) * -29925i;
    return Struct_2(select(!select(!vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, false, arg_0, false), true), !select(vec4<bool>(arg_0, true, false, arg_0), select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(arg_0, true, arg_0, true), arg_0), vec4<bool>(false, arg_0, arg_0, arg_0)), vec4<bool>(arg_0, true, arg_0, !arg_0)), vec4<u32>(19014u, 4294967295u, 36830u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 85353u), vec4<u32>(9177u, 105804u, 45748u, 4294967295u), vec4<u32>(42556u, 65239u, 8173u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_1.x, var_1.x), vec4<i32>(-95233i, 24827i, -42253i, u_input.b.x))), _wgslsmith_sub_vec3_i32(var_1, u_input.a.wzy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2579f, -706f, -610f) * vec3<f32>(arg_1, arg_1, -1404f)))), vec3<i32>(~var_3, -(var_3 | u_input.b.x), _wgslsmith_mod_i32(var_1.x, u_input.a.x) ^ -55483i)), Struct_1(_wgslsmith_mod_i32(~u_input.a.x & var_1.x, ~9018i), vec3<f32>(842f, arg_1, -729f), var_1));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = abs(-2147483647i);
    let var_1 = !vec3<bool>(any(select(arg_2.zyx, arg_2.yyz, !arg_2.x)), any(vec2<bool>(true, !arg_2.x)), all(!arg_2.yy));
    let var_2 = !select(!(!(!arg_2.xwy)), vec3<bool>((-2147483647i >= u_input.a.x) & any(vec2<bool>(var_1.x, arg_2.x)), true, !(!arg_2.x)), select(!var_1, var_1, !(!var_1)));
    var var_3 = func_2(!(all(arg_2) | all(arg_2.zxx)), 1456f);
    var var_4 = var_3.a.x;
    return vec4<bool>(var_1.x, true | select(false, false, true), true, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, all(!func_1(~u_input.b.yz, 1u, vec4<bool>(false, true, false, false), abs(vec4<u32>(16069u, 15876u, 21370u, 0u)))), any(vec2<bool>(true, true)) || any(vec4<bool>(true, u_input.a.x < u_input.a.x, true, true)));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_div_vec2_i32(~(~_wgslsmith_add_vec2_i32(vec2<i32>(16941i, 2147483647i), vec2<i32>(u_input.a.x, 12696i)) << (vec2<u32>(0u, ~6978u) % vec2<u32>(32u))), vec2<i32>(-2147483647i, -1i));
    let var_3 = 8071i | _wgslsmith_mod_i32(var_2.x, -45901i);
    var var_4 = u_input.a;
    var_4 = abs((_wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, var_3, 7760i, var_4.x), u_input.a) << (reverseBits(~vec4<u32>(1u, 4294967295u, 4294967295u, 140887u)) % vec4<u32>(32u))) ^ ~((u_input.a & u_input.a) & u_input.a));
    var var_5 = 45528u;
    var var_6 = func_2(all(vec3<bool>(var_0.x, any(func_2(var_0.x, -533f).a.yz), var_0.x)), _wgslsmith_f_op_f32(step(750f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(func_2(false, -149f).d.b.x, _wgslsmith_f_op_f32(-1111f - 172f))))))).d;
    var var_7 = vec2<i32>(var_4.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(68050i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_6.b.x + 1275f), var_6.b.x, _wgslsmith_f_op_f32(floor(var_6.b.x)), _wgslsmith_f_op_f32(var_6.b.x - 553f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(784f, var_6.b.x, -952f, var_6.b.x)))))));
}

