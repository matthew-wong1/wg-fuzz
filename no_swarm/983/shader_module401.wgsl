struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> u32 {
    var var_0 = select(!(!vec4<bool>(true, arg_1.a.d.x, true & arg_1.a.d.x, true)), select(select(select(!vec4<bool>(false, arg_1.a.d.x, true, true), !vec4<bool>(false, false, arg_1.a.d.x, true), all(vec2<bool>(arg_1.a.d.x, true))), vec4<bool>(true, false | arg_1.a.d.x, true, all(vec4<bool>(arg_1.a.d.x, false, arg_1.a.d.x, true))), any(vec3<bool>(true, true, false)) != true), !select(select(vec4<bool>(false, arg_1.a.d.x, false, arg_1.a.d.x), vec4<bool>(arg_1.a.d.x, false, true, arg_1.a.d.x), vec4<bool>(arg_1.a.d.x, arg_1.a.d.x, false, arg_1.a.d.x)), !vec4<bool>(arg_1.a.d.x, false, arg_1.a.d.x, arg_1.a.d.x), !arg_1.a.d.x), all(select(vec2<bool>(arg_1.a.d.x, false), arg_1.a.d.xy, !arg_1.a.d.x))), select(vec4<bool>(any(vec4<bool>(true, arg_1.a.d.x, false, arg_1.a.d.x)), false & !arg_1.a.d.x, false, !all(vec2<bool>(arg_1.a.d.x, false))), select(select(!vec4<bool>(arg_1.a.d.x, arg_1.a.d.x, false, arg_1.a.d.x), select(vec4<bool>(arg_1.a.d.x, false, false, false), vec4<bool>(false, true, false, true), true), !vec4<bool>(arg_1.a.d.x, arg_1.a.d.x, true, false)), select(!vec4<bool>(true, false, false, arg_1.a.d.x), !vec4<bool>(arg_1.a.d.x, arg_1.a.d.x, arg_1.a.d.x, true), vec4<bool>(false, arg_1.a.d.x, arg_1.a.d.x, arg_1.a.d.x)), !vec4<bool>(arg_1.a.d.x, true, true, arg_1.a.d.x)), any(select(arg_1.a.d, vec3<bool>(arg_1.a.d.x, arg_1.a.d.x, true), select(vec3<bool>(arg_1.a.d.x, arg_1.a.d.x, arg_1.a.d.x), vec3<bool>(arg_1.a.d.x, false, true), arg_1.a.d)))));
    let var_1 = 19162u;
    let var_2 = Struct_2(arg_1.a);
    var var_3 = vec2<f32>(var_2.a.a.x, arg_1.a.c);
    var var_4 = Struct_2(var_2.a);
    return ~u_input.a;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = -68987i;
    let var_1 = -506f;
    let var_2 = ~_wgslsmith_clamp_u32(abs(~u_input.a | ~u_input.a), select(~0u, countOneBits(func_3(arg_0, Struct_2(Struct_1(vec4<f32>(var_1, var_1, 380f, -571f), vec4<f32>(var_1, var_1, var_1, var_1), 1283f, vec3<bool>(false, true, true), var_1)))), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), ~(98173u << (~u_input.a % 32u)));
    let var_3 = Struct_3(-firstTrailingBit(firstTrailingBit(vec2<i32>(-34681i, arg_0)) >> (vec2<u32>(u_input.a, var_2) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1186f, var_1, 856f, -1082f) * vec4<f32>(var_1, var_1, 250f, var_1))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1983f), -535f, -115f, 820f)), var_1, vec3<bool>(all(vec3<bool>(true, false, true)), false, select(true, true, var_1 < 605f)), -845f), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), !all(vec2<bool>(true, false)))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_0, arg_0), -4730i), firstTrailingBit(~vec2<i32>(1i, -1i))));
    var var_4 = _wgslsmith_dot_vec3_i32(vec3<i32>(~(-16235i << (_wgslsmith_add_u32(u_input.a, var_2) % 32u)), _wgslsmith_div_i32(-var_3.a.x, ~var_0 << (~11979u % 32u)), _wgslsmith_div_i32(-2147483647i, min(var_3.a.x, var_0))), ~(-(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, arg_0, 0i), vec3<i32>(-19836i, var_3.a.x, -2147483647i)) | ~vec3<i32>(-1i, var_3.d.x, -1i))));
    return var_1;
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: u32) -> vec2<i32> {
    let var_0 = ~_wgslsmith_dot_vec4_u32(arg_2 & ~arg_2, select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_3, arg_3, 0u), vec4<u32>(arg_3, 4644u, arg_3, u_input.a)), u_input.a << (arg_3 % 32u), _wgslsmith_clamp_u32(4294967295u, arg_1.x, arg_1.x), u_input.a), countOneBits(arg_1) & (vec4<u32>(arg_1.x, 1676u, u_input.a, arg_3) >> (arg_1 % vec4<u32>(32u))), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, false))));
    let var_1 = Struct_3(vec2<i32>(-1373i, min(_wgslsmith_div_i32(_wgslsmith_sub_i32(-41431i, -34964i), _wgslsmith_clamp_i32(-1i, -9338i, -2147483647i)), _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(60821i, 21517i), vec2<i32>(1i, 2147483647i))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -440f, arg_0, arg_0) * vec4<f32>(arg_0, 594f, -680f, arg_0)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, -506f, 1236f, -222f))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(669f, -575f, true)), _wgslsmith_f_op_f32(select(-1553f, -973f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1464f - 139f)), arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -469f), -148f, true))), arg_0, !(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(f32(-1f) * -518f)), all(vec2<bool>(true, true)), max(vec2<i32>(_wgslsmith_mult_i32(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -35237i, 1i), vec3<i32>(-1943i, -2147483647i, -18189i))), _wgslsmith_add_i32(~14740i, max(1i, 37013i))), vec2<i32>(-2147483647i, -(~13236i))));
    var var_2 = true;
    let var_3 = ~vec2<u32>(53489u, firstLeadingBit(_wgslsmith_add_u32(abs(u_input.a), ~0u)));
    var_2 = false;
    return vec2<i32>(-(~var_1.a.x), 19312i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1.a.a.xy;
    var var_1 = Struct_3(func_4(_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 78800i), vec3<i32>(0i, -1i, 1i)) ^ ~1i)), ~reverseBits(vec4<u32>(79261u, u_input.a, u_input.a, 1u) | vec4<u32>(u_input.a, 8572u, 0u, u_input.a)), vec4<u32>(0u, ~(~1u), u_input.a, u_input.a), u_input.a), arg_1.a, arg_1.a.d.x, firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1i, -2224i), vec3<i32>(2147483647i, 9202i, 2147483647i)), vec3<i32>(-23864i, 2147483647i, 1i)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(2147483647i, 50702i, 0i), vec3<i32>(-11841i, 2147483647i, -1i)), vec3<i32>(1i, 1i, 1i)))));
    let var_2 = Struct_3(vec2<i32>(reverseBits((var_1.a.x & 0i) << (u_input.a % 32u)), _wgslsmith_div_i32(-var_1.d.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_1.a, var_1.d), _wgslsmith_div_i32(var_1.d.x, var_1.a.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.b.x, 2294f, var_0.x, -895f) * var_1.b.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1225f, var_1.b.b.x, 829f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1967f))), _wgslsmith_f_op_f32(var_1.b.a.x + _wgslsmith_f_op_f32(floor(-126f))), -1104f, _wgslsmith_f_op_f32(arg_1.a.a.x + -559f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-452f, arg_0.a.x)) * _wgslsmith_f_op_f32(arg_0.b.x - var_1.b.e))), select(vec3<bool>(false, arg_1.a.d.x, var_1.b.d.x), !vec3<bool>(var_1.c, false, true), select(!arg_0.d, select(arg_0.d, var_1.b.d, true), vec3<bool>(true, true, true))), var_0.x), false & any(select(select(vec4<bool>(arg_0.d.x, false, arg_0.d.x, true), vec4<bool>(arg_0.d.x, arg_0.d.x, arg_1.a.d.x, false), vec4<bool>(arg_1.a.d.x, true, false, arg_1.a.d.x)), !vec4<bool>(true, true, arg_1.a.d.x, false), all(arg_0.d.zy))), vec2<i32>(~0i, -reverseBits(41974i)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(arg_1.a.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))), !(!(!var_1.b.d)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1863f, var_2.b.d.x))))));
    var var_4 = true;
    return firstTrailingBit(var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<i32>(func_1(Struct_1(vec4<f32>(803f, 1133f, 1046f, -607f), vec4<f32>(291f, -118f, 1000f, 575f), 1455f, vec3<bool>(false, false, false), -623f), Struct_2(Struct_1(vec4<f32>(412f, -339f, 1652f, -200f), vec4<f32>(169f, 247f, 171f, 1512f), -872f, vec3<bool>(true, true, false), 184f))), _wgslsmith_sub_i32(-16508i, 56368i), abs(1i), i32(-1i) * -3585i) ^ _wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, -2147483647i, 0i, -15371i), min(firstLeadingBit(vec4<i32>(24483i, -28815i, 58346i, 30349i)), reverseBits(vec4<i32>(-9358i, -1i, -25144i, 1778i))), _wgslsmith_sub_vec4_i32(-vec4<i32>(8714i, 18043i, 1695i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(49653i, 1i, -2147483647i, 49325i), vec4<i32>(-1i, -64503i, 1734i, -2147483647i)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1906f, 816f, 1770f, -660f), vec4<f32>(864f, 294f, 1000f, -2141f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1026f, -1332f, 273f, -812f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(119f, 531f, 1531f, -1043f)))))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1076f, 848f, 199f, 819f) - vec4<f32>(858f, -1311f, 464f, 2525f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(173f, 2237f, -330f, -371f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1771f, 1000f, -197f, 1819f), vec4<f32>(333f, 1426f, -185f, -398f), true)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-841f)))), vec3<bool>(any(vec2<bool>(true, true)), !all(vec2<bool>(true, true)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-260f + 123f) + 1000f) - _wgslsmith_f_op_f32(ceil(-243f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f + -443f)))));
    var var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(0i))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1414f * 278f))), -321f), var_1.a, var_1.c, vec3<bool>(var_1.d.x, all(vec2<bool>(true, var_1.d.x)), (var_0.x | 2147483647i) <= 23029i), -120f));
    let var_3 = Struct_3(vec2<i32>(1881i, -2147483647i), Struct_1(vec4<f32>(-542f, _wgslsmith_f_op_f32(680f - _wgslsmith_f_op_f32(1066f * var_1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f)), _wgslsmith_f_op_f32(var_1.e * _wgslsmith_f_op_f32(min(-865f, 907f)))), vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), 1f, _wgslsmith_f_op_f32(488f + 1f)), 390f, vec3<bool>(!(!var_2.a.d.x), !var_2.a.d.x, all(var_1.d)), 1227f), var_2.a.d.x && var_2.a.d.x, vec2<i32>(~(-1i), _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(var_0, vec4<i32>(28826i, var_0.x, var_0.x, var_0.x)), -var_0)));
    var var_4 = var_3.b;
    var_4 = var_2.a;
    let var_5 = Struct_2(var_2.a);
    let var_6 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-495f, 950f, -628f, var_1.e)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.a.x, vec2<u32>(~(~u_input.a), u_input.a), var_4.b.xy, var_6.x);
}

