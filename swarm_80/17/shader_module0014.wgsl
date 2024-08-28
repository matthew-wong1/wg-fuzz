struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-41496i, 31779i, 1i, -33688i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(525f);
    var var_1 = true;
    var var_2 = (u_input.a.x & u_input.a.x) > 1u;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1636f));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.a, 811f), _wgslsmith_f_op_f32(var_3.a * 106f), -345f)), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c), var_0.a, 984f), arg_1)));
    return Struct_1(_wgslsmith_f_op_f32(-var_3.a));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> bool {
    let var_0 = global0.x;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -374f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(986f, -535f, arg_1)))))) - -108f));
    let var_2 = var_1.a;
    let var_3 = Struct_2(var_1, global0.x, vec4<bool>((_wgslsmith_f_op_f32(951f * -711f) > _wgslsmith_f_op_f32(min(2123f, var_2))) & true, var_2 < _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2)), -394f), global0.x > global0.x, arg_1), func_1(!arg_1, !arg_2.x, Struct_3(vec3<i32>(global0.x, firstLeadingBit(2147483647i), abs(global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2305f), -873f, arg_1)), var_2)));
    global0 = ~vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(countOneBits(global0.zy), vec2<i32>(var_3.b, 2147483647i)) << (min(arg_0, select(4294967295u, arg_0, false)) % 32u), global0.x, global0.x & 8142i);
    return (true || (_wgslsmith_f_op_f32(-var_1.a) < -2598f)) && true;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: i32) -> Struct_3 {
    let var_0 = -22981i;
    let var_1 = arg_2.x;
    global0 = -_wgslsmith_add_vec4_i32(~vec4<i32>(-43758i, countOneBits(arg_3), firstLeadingBit(arg_3), reverseBits(var_0)), vec4<i32>(var_0, arg_3, _wgslsmith_mult_i32(-17691i, 1i) ^ _wgslsmith_dot_vec2_i32(global0.xw, vec2<i32>(15784i, 0i)), reverseBits(-50005i)));
    let var_2 = firstTrailingBit(~_wgslsmith_mod_u32(arg_1, arg_2.x) ^ ~(~1u));
    var var_3 = Struct_2(func_1(!func_3(4294967295u, all(vec4<bool>(false, true, true, true)), vec2<bool>(true, true)), ~(~var_1) < ~var_2, Struct_3(~firstTrailingBit(global0.zxy), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-2406f, arg_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-42816i, 4206i, -min(-2147483647i, -24165i), 37529i), (vec4<i32>(-4743i, var_0, 0i, arg_3) >> (_wgslsmith_div_vec4_u32(arg_2, arg_2) % vec4<u32>(32u))) << (reverseBits(arg_2) % vec4<u32>(32u))), vec4<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), any(vec2<bool>(true, false)))), !func_3(23145u, false, select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true, true), func_1(func_3(_wgslsmith_dot_vec2_u32(arg_2.yy, firstLeadingBit(arg_2.yx)), (arg_1 < var_1) || true, !select(vec2<bool>(false, true), vec2<bool>(true, true), false)), !(!(arg_3 > 2147483647i)), Struct_3(min(select(global0.ywz, global0.yyz, vec3<bool>(true, false, false)), global0.xyx & global0.xww), 1528f, _wgslsmith_f_op_f32(arg_0.a * 1499f))));
    return Struct_3(abs(_wgslsmith_mod_vec3_i32(global0.xyz, vec3<i32>(1i >> (arg_2.x % 32u), i32(-1i) * -1i, ~arg_3))), -624f, -822f);
}

fn func_4(arg_0: Struct_3) -> i32 {
    global0 = vec4<i32>(global0.x, abs(select(_wgslsmith_add_i32(_wgslsmith_mod_i32(4564i, 1i), -18849i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 30542i, -1i, -2147483647i), vec4<i32>(-87839i, -87027i, arg_0.a.x, global0.x)), -2147483647i), false)), _wgslsmith_clamp_i32(53684i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 13176i, global0.x, -82090i), vec4<i32>(arg_0.a.x, 2147483647i, 8884i, arg_0.a.x)), vec4<i32>(1i, arg_0.a.x, -2147483647i, arg_0.a.x) | vec4<i32>(2147483647i, 1i, 27746i, -1i)), -abs(global0.x)), ~(-2147483647i)), global0.x);
    global0 = vec4<i32>(_wgslsmith_mod_i32(1i, -_wgslsmith_mod_i32(global0.x, global0.x) << (82747u % 32u)), 25067i, global0.x, 0i);
    global0 = vec4<i32>(~64095i, -reverseBits(~(-11014i ^ arg_0.a.x)), -arg_0.a.x, countOneBits(90441i));
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(2327f, arg_0.b)), 2147483647i, !select(vec4<bool>(select(true, true, false), any(vec3<bool>(false, true, false)), all(vec4<bool>(true, true, false, false)), false), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), func_1(false, all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), arg_0));
    var var_1 = vec3<bool>(all(select(!select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(var_0.c.x, var_0.c.x), var_0.c.x), select(select(var_0.c.xy, vec2<bool>(var_0.c.x, false), var_0.c.zy), !vec2<bool>(true, var_0.c.x), vec2<bool>(var_0.c.x, false)), false)), true, false);
    return min(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~max(vec4<i32>(arg_0.a.x, -1i, var_0.b, 1i), vec4<i32>(2147483647i, var_0.b, 30669i, arg_0.a.x)), vec4<i32>(~14788i, -global0.x, var_0.b & -48291i, -arg_0.a.x)), ~firstTrailingBit(_wgslsmith_mult_i32(var_0.b, arg_0.a.x))), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(global0.x, -global0.x, _wgslsmith_sub_i32(global0.x, i32(-1i) * -6207i), ~global0.x) | vec4<i32>(i32(-1i) * -1174i, func_4(func_2(func_1(true, false, Struct_3(global0.wxx, -1406f, 119f)), select(15143u, u_input.a.x, true), ~vec4<u32>(61085u, u_input.a.x, u_input.a.x, u_input.a.x), -978i)), -5776i, ~(-firstTrailingBit(-42119i)));
    let var_0 = Struct_2(func_1(!(!func_3(45582u, true, vec2<bool>(true, false))), select(1u, u_input.a.x, false) >= u_input.a.x, Struct_3(-vec3<i32>(global0.x, global0.x, global0.x), 814f, -2113f)), -abs(1i), vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 0i, global0.x, global0.x), vec4<i32>(-19148i, global0.x, global0.x, global0.x)) > _wgslsmith_sub_i32(global0.x, _wgslsmith_clamp_i32(2147483647i, global0.x, -1i)), true, ((u_input.a.x <= u_input.a.x) != any(vec4<bool>(true, false, true, true))) == true, true), Struct_1(_wgslsmith_div_f32(-515f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f)))));
    global0 = -select(vec4<i32>(-1i) * -vec4<i32>(var_0.b, var_0.b, var_0.b, 20790i), min(vec4<i32>(35248i, 2147483647i, 1i, -2147483647i) >> (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 40800u) % vec4<u32>(32u)), ~(vec4<i32>(-18821i, -2147483647i, global0.x, global0.x) >> (vec4<u32>(0u, 42790u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), var_0.c);
    global0 = ~(~_wgslsmith_add_vec4_i32(-(vec4<i32>(-34000i, -2147483647i, var_0.b, 25166i) ^ vec4<i32>(2500i, 2147483647i, global0.x, var_0.b)), ~select(vec4<i32>(var_0.b, -2147483647i, global0.x, 2147483647i), vec4<i32>(var_0.b, -31i, 51493i, global0.x), var_0.c)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(var_0.d, u_input.a.x, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 35541u), var_0.b).b, _wgslsmith_f_op_f32(step(var_0.a.a, var_0.a.a)))), _wgslsmith_f_op_f32(f32(-1f) * -2005f)), _wgslsmith_f_op_f32(-var_0.a.a));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a * var_0.a.a)))))) - 137f);
    var var_3 = firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(abs(~vec4<i32>(2147483647i, -1i, var_0.b, -24591i)), vec4<i32>(max(global0.x, 41441i), ~2147483647i, firstLeadingBit(-1i), ~(-38709i))), -vec4<i32>(global0.x, -2147483647i & global0.x, 369i, 0i)));
    let var_4 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(firstLeadingBit(countOneBits(var_3.wxx) >> (u_input.a % vec3<u32>(32u))), global0.yxw), global0.wz << (u_input.a.zz % vec2<u32>(32u)), countOneBits(64750u));
}

