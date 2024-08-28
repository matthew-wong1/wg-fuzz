struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: f32) -> vec3<u32> {
    return vec3<u32>(firstTrailingBit(~41111u), ~(~4294967295u), arg_1) << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, ~4294967295u, u_input.b.x), ~(~vec3<u32>(u_input.c.x, 47496u, 62446u))) % vec3<u32>(32u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: bool) -> vec2<bool> {
    let var_0 = Struct_1(~(-vec3<i32>(_wgslsmith_add_i32(43259i, 0i), ~u_input.d, -2147483647i)), -min(vec2<i32>(firstTrailingBit(u_input.a), ~u_input.d), -min(vec2<i32>(u_input.a, 18851i), vec2<i32>(u_input.a, u_input.a))), !arg_1.zx, select(~arg_0.x, 11271u, select(false, true, true)), ~(~_wgslsmith_clamp_u32(~u_input.c.x, ~1u, 87516u)));
    let var_1 = reverseBits(vec4<i32>(-1i) * -select(vec4<i32>(-2147483647i, -1830i, u_input.d, var_0.b.x), select(vec4<i32>(-2147483647i, var_0.a.x, 1i, -2147483647i), vec4<i32>(u_input.a, u_input.d, var_0.b.x, var_0.b.x), arg_1), any(vec3<bool>(true, false, arg_2))));
    let var_2 = Struct_1(_wgslsmith_mod_vec3_i32(reverseBits(var_0.a), -vec3<i32>(~var_0.a.x, 65968i, -2147483647i)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.wy, var_0.a.zx), ~(-var_1.yx << (~vec2<u32>(u_input.c.x, arg_0.x) % vec2<u32>(32u)))), vec2<bool>(arg_1.x, abs(_wgslsmith_dot_vec2_u32(arg_0, arg_0)) < var_0.d), 42673u, _wgslsmith_sub_u32(firstTrailingBit(~(~u_input.b.x)), u_input.b.x));
    let var_3 = var_2;
    var var_4 = arg_1;
    return var_3.c;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_2.a, arg_2.a.yz, select(arg_2.c, arg_2.c, !(!(!vec2<bool>(arg_2.c.x, arg_2.c.x)))), _wgslsmith_dot_vec2_u32(firstTrailingBit(min(arg_1.yz | u_input.c, u_input.c)), vec2<u32>(_wgslsmith_sub_u32(arg_1.x, ~4294967295u), 71390u)), 15334u);
    var_0 = arg_2;
    var var_1 = true;
    var_0 = arg_2;
    var var_2 = -var_0.b.x;
    return Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(~var_0.a, _wgslsmith_add_vec3_i32(-vec3<i32>(arg_0, arg_0, var_0.b.x), var_0.a)), arg_2.a), arg_2.b, !(!select(func_3(u_input.c, vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false), true), var_0.c, select(vec2<bool>(arg_2.c.x, false), vec2<bool>(var_0.c.x, arg_2.c.x), arg_2.c.x))), 0u, _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(abs(0u), 1u), 1u) & ~(arg_2.d << (153486u % 32u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_1 {
    return arg_1;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = all(!(!vec3<bool>(false, arg_2, true)));
    var_0 = (!(!arg_3.c.x | (arg_3.c.x & arg_2)) & (arg_3.c.x || (!arg_3.c.x | all(vec4<bool>(arg_2, false, arg_2, true))))) | !(176f > _wgslsmith_f_op_f32(sign(-132f)));
    var_0 = true;
    let var_1 = arg_3;
    var_0 = !(!(true && !arg_3.c.x));
    return var_1;
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, arg_1.b.x, arg_1.a.x, u_input.a), vec4<i32>(u_input.a, -36906i, 18502i, arg_1.a.x), vec4<i32>(0i, -1i, u_input.d, arg_1.b.x)), firstTrailingBit(vec4<i32>(u_input.d, 1i, 1i, 0i) | abs(vec4<i32>(1i, arg_1.b.x, arg_1.b.x, u_input.d))));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -1120f, -469f, 204f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(117f, -1568f, -2942f, 883f), vec4<f32>(-1002f, 154f, -1192f, -802f), arg_1.c.x)), select(vec4<bool>(arg_1.c.x, arg_1.c.x, true, arg_1.c.x), vec4<bool>(arg_1.c.x, true, arg_1.c.x, arg_1.c.x), false)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1890f, _wgslsmith_f_op_f32(2462f * -1397f), -990f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-146f, -1070f, 665f, -1007f), vec4<f32>(-676f, 467f, -252f, 1178f)))))), func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(413f, -1234f, -444f, 488f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(266f, 349f, 984f, -1119f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(255f, -1256f, -2189f, 496f) + vec4<f32>(866f, 267f, 496f, -1091f)))), arg_1, 568u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-538f, -1348f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1105f)))), firstLeadingBit(arg_1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(183f)))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)));
    let var_3 = arg_1.c.x;
    var var_4 = Struct_1(select(func_2(var_1.b.x, firstTrailingBit(vec4<u32>(arg_1.d, 1u, 17546u, 1u)) >> ((vec4<u32>(1u, 21354u, arg_1.d, 4294967295u) ^ vec4<u32>(u_input.c.x, u_input.b.x, var_1.d, 78589u)) % vec4<u32>(32u)), func_2(var_1.a.x, ~vec4<u32>(arg_0.x, 76102u, 34592u, var_1.e), Struct_1(var_1.a, vec2<i32>(38218i, arg_1.a.x), var_1.c, u_input.c.x, u_input.c.x))).a, var_1.a | arg_1.a, vec3<bool>(0i != ~u_input.a, false, _wgslsmith_div_i32(u_input.a, -2147483647i) != _wgslsmith_add_i32(arg_1.b.x, 0i))), _wgslsmith_mult_vec2_i32(var_1.a.zx, firstLeadingBit(firstTrailingBit(vec2<i32>(-41240i, -1i)))), select(func_5(vec3<u32>(~arg_0.x, arg_1.e, _wgslsmith_clamp_u32(4294967295u, arg_0.x, 4237u)), vec4<i32>(i32(-1i) * -21129i, _wgslsmith_add_i32(-11011i, 2147483647i), arg_1.b.x, firstTrailingBit(var_1.b.x)), var_1.c.x, Struct_1(func_4(vec4<f32>(-993f, 225f, 820f, -863f), arg_1, arg_0.x, -174f).a, -vec2<i32>(u_input.d, 26453i), func_2(0i, vec4<u32>(u_input.b.x, arg_1.d, arg_0.x, 1u), Struct_1(vec3<i32>(-20122i, -2147483647i, arg_1.a.x), arg_1.b, var_1.c, 1u, arg_0.x)).c, firstTrailingBit(u_input.c.x), select(u_input.c.x, var_1.d, arg_1.c.x))).c, !vec2<bool>(true, var_3), func_2(_wgslsmith_sub_i32(var_1.a.x << (u_input.c.x % 32u), var_1.a.x), vec4<u32>(var_1.d, 0u, 4294967295u, 1u) ^ ~vec4<u32>(24978u, 88663u, 1u, u_input.b.x), Struct_1(arg_1.a << (vec3<u32>(var_1.e, arg_1.e, 63993u) % vec3<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, u_input.a), arg_1.a.zx), vec2<bool>(false, true), _wgslsmith_add_u32(0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d, 25541u, arg_0.x, 1u), vec4<u32>(0u, 30878u, 4294967295u, 3645u)))).c), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_1.d, max(~0u, ~0u)), func_1(vec3<bool>(true, all(vec4<bool>(true, true, var_3, var_1.c.x)), var_3), ~var_1.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1132f)))).x, _wgslsmith_add_u32(arg_0.x, (0u & u_input.b.x) ^ var_1.e)), ~var_1.e);
    return arg_1;
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(364f))))) + -841f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-265f, _wgslsmith_f_op_f32(floor(-730f)), true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(464f + 1f)))));
    let var_1 = arg_3;
    var_0 = 811f;
    var var_2 = Struct_1(~(-_wgslsmith_add_vec3_i32(arg_2, vec3<i32>(u_input.a, arg_0.b.x, 2147483647i))), vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(arg_0.b.x), -7052i), select(arg_3.a.x << (1u % 32u), arg_3.b.x, all(vec3<bool>(var_1.c.x, var_1.c.x, false)))) & abs(arg_3.a.yx), func_6(u_input.c, arg_0).c, ~50028u, ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, 4294967295u, arg_0.e, 4294967295u), vec4<u32>(0u, arg_0.e, arg_3.e, var_1.e)) | (4294967295u & arg_3.d)));
    var_2 = var_1;
    return func_5(vec3<u32>(var_2.e, 4294967295u, var_1.e), vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(46570i), ~1i), arg_3.b.x, (arg_0.a.x ^ 20631i) & ~(-25037i), var_2.b.x), var_2.a.x == min(-_wgslsmith_add_i32(arg_3.a.x, 2147483647i), u_input.d), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.d, select(_wgslsmith_mult_i32(-7351i, -35225i), select(u_input.a, u_input.d, true), true)), (vec3<i32>(-1i) * -vec3<i32>(1i, u_input.a, u_input.a)) | ~(vec3<i32>(u_input.d, 13421i, 6504i) >> (vec3<u32>(24540u, u_input.c.x, 1u) % vec3<u32>(32u)))));
    var var_1 = ~((u_input.c & vec2<u32>(u_input.b.x, u_input.b.x)) >> (vec2<u32>(~(u_input.c.x << (1504u % 32u)), u_input.c.x) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_sub_i32(0i, 0i), var_0.x >> (u_input.b.x % 32u), 17501i, var_0.x), ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, 55242i, u_input.d), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.d, u_input.a), vec4<i32>(u_input.a, u_input.d, 2147483647i, var_0.x)), vec4<i32>(1i, var_0.x, var_0.x, 0i) ^ vec4<i32>(-33869i, -790i, u_input.a, 26410i))));
    var var_3 = func_7(func_6(u_input.b, func_5(func_1(vec3<bool>(false, true, false), _wgslsmith_mod_u32(var_1.x, 0u), _wgslsmith_f_op_f32(-627f - -921f)), ~max(var_2, vec4<i32>(var_2.x, -1i, -7979i, 6033i)), true, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(133f, -686f, -1000f, -793f) - vec4<f32>(465f, -142f, -2093f, 1417f)), func_2(var_0.x, vec4<u32>(28168u, var_1.x, var_1.x, var_1.x), Struct_1(var_2.xyw, var_2.yz, vec2<bool>(false, false), var_1.x, u_input.c.x)), firstTrailingBit(var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -408f)))), false, func_5(~vec3<u32>(func_1(vec3<bool>(false, false, true), u_input.b.x, 107f).x, var_1.x << (1u % 32u), var_1.x), -(~_wgslsmith_mult_vec4_i32(var_2, vec4<i32>(-1i, var_2.x, -2147483647i, 12078i))), true, Struct_1(~(-vec3<i32>(var_0.x, var_2.x, 16528i)), ~(vec2<i32>(-7836i, var_0.x) & var_2.xw), func_5(~vec3<u32>(var_1.x, u_input.b.x, u_input.c.x), firstLeadingBit(vec4<i32>(var_2.x, u_input.a, var_0.x, 1i)), any(vec2<bool>(true, false)), Struct_1(var_2.yyw, vec2<i32>(-45254i, 1i), vec2<bool>(false, false), 31646u, var_1.x)).c, 29032u, var_1.x)).a, func_5(vec3<u32>(reverseBits(select(9763u, var_1.x, true)), u_input.b.x, 0u), ~var_2, all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), Struct_1(vec3<i32>(u_input.a, ~(-68163i), reverseBits(var_0.x)), countOneBits(vec2<i32>(var_2.x, var_2.x)), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 40393u)));
    let var_4 = -27363i;
    var var_5 = func_3(~(~vec2<u32>(4294967295u, 66038u) ^ vec2<u32>(var_1.x, func_5(vec3<u32>(4294967295u, var_3.e, 4294967295u), vec4<i32>(var_2.x, 17276i, u_input.a, var_2.x), true, Struct_1(var_3.a, var_0.zy, var_3.c, 0u, var_1.x)).d)), !vec4<bool>(var_3.c.x, var_3.c.x, any(vec4<bool>(false, false, var_3.c.x, false)), any(vec2<bool>(false, var_3.c.x)) && all(vec4<bool>(false, var_3.c.x, var_3.c.x, var_3.c.x))), var_3.c.x).x;
    var var_6 = Struct_1(vec3<i32>(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(664f, 2071f, -373f, 876f), vec4<f32>(1609f, -614f, 1000f, 1027f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1084f, 859f, 1832f) + vec4<f32>(1000f, -1405f, 1413f, -1696f))), Struct_1(var_3.a, -var_2.xy, !vec2<bool>(var_3.c.x, true), firstLeadingBit(u_input.c.x), func_4(vec4<f32>(1000f, -667f, -1165f, 320f), Struct_1(var_2.xzx, vec2<i32>(2147483647i, var_2.x), vec2<bool>(var_3.c.x, var_3.c.x), u_input.c.x, u_input.b.x), u_input.b.x, -1644f).e), 15406u << ((80570u & u_input.b.x) % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2271f, -188f)))).b.x, ~var_4, -3512i), ~(~func_2(firstTrailingBit(var_3.b.x), vec4<u32>(4294967295u, var_1.x, var_3.d, var_1.x), func_4(vec4<f32>(-750f, -384f, -1177f, -2143f), Struct_1(var_3.a, vec2<i32>(0i, var_4), var_3.c, u_input.b.x, var_1.x), var_1.x, 252f)).a.xz), !var_3.c, u_input.c.x, 1u);
    let var_7 = _wgslsmith_f_op_f32(141f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1646f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(-2056f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-239f, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-974f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(479f - _wgslsmith_f_op_f32(var_7 - var_7))))), 21956u);
}

