struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<u32>) -> f32 {
    global0 = vec3<i32>(~_wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.c.a, global0.x, 14819i, -2147483647i), vec4<i32>(-1i, 30177i, -6126i, 1i), vec4<i32>(global0.x, 1i, global0.x, u_input.a)), ~(vec4<i32>(u_input.a, 12679i, u_input.a, 66i) >> (vec4<u32>(38476u, arg_0.e, 14808u, 98519u) % vec4<u32>(32u)))), arg_0.c.c.x, countOneBits(_wgslsmith_add_i32(u_input.a, ~global0.x)));
    var var_0 = 1818f;
    let var_1 = _wgslsmith_sub_i32(u_input.a, max(max(11019i, ~(-2147483647i)), ~(2147483647i ^ (global0.x >> (5297u % 32u)))));
    var var_2 = countOneBits(0u);
    let var_3 = _wgslsmith_f_op_f32(-arg_0.a);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-229f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_3, arg_0.a)), _wgslsmith_f_op_f32(abs(-1000f)), !arg_0.d.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1345f, 1000f))))))));
}

fn func_2() -> vec2<i32> {
    var var_0 = ~_wgslsmith_sub_u32(~4294967295u, 0u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1450f, -1216f)), _wgslsmith_f_op_f32(942f - 1932f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(641f))))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(1345f, 0u, Struct_2(global0.x, global0.x, vec2<i32>(57621i, 15639i), u_input.a), vec2<bool>(true, true), 4294967295u), ~vec2<u32>(1u, 4294967295u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-485f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(555f, -2069f, false)))))));
    global0 = _wgslsmith_add_vec3_i32(countOneBits(reverseBits(vec3<i32>(select(25728i, global0.x, true), countOneBits(-26649i), _wgslsmith_sub_i32(global0.x, u_input.a)))), -vec3<i32>(-41553i, select(global0.x, countOneBits(36898i), global0.x <= u_input.a), -4299i));
    var var_2 = 54342u;
    return _wgslsmith_sub_vec2_i32(~_wgslsmith_add_vec2_i32(~(~global0.xz), global0.xy), select(~global0.yy, global0.xz, false));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_2 {
    global0 = arg_0.xyx;
    let var_0 = func_2();
    let var_1 = !vec4<bool>(true, !(!arg_1.c), arg_1.b.x, all(vec4<bool>(arg_1.c, !arg_1.c, arg_1.c, true)));
    global0 = max(max(vec3<i32>(-(~(-2147483647i)), arg_0.x, 15057i), ~_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, var_0.x, -1i)), -vec3<i32>(u_input.a, global0.x, -2147483647i))), ~_wgslsmith_mult_vec3_i32(-arg_0.xxy, -countOneBits(vec3<i32>(global0.x, arg_0.x, 1i))));
    var var_2 = arg_0.x;
    return Struct_2(33505i, global0.x << (51185u % 32u), abs(-arg_0.xx & vec2<i32>(_wgslsmith_mult_i32(global0.x, arg_0.x), -u_input.a)), 2147483647i);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1025f, _wgslsmith_f_op_f32(189f * -554f), _wgslsmith_f_op_f32(1050f - -909f), -362f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-456f, 661f, -517f, -1000f) - vec4<f32>(420f, 1698f, 973f, 2123f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(992f, -266f, 736f, 956f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(953f, -2032f, 299f, -873f), vec4<f32>(526f, 318f, -1000f, -631f)))))));
    let var_2 = Struct_4(arg_0, reverseBits(min(vec3<i32>(2147483647i, 2147483647i, u_input.a) & vec3<i32>(arg_1.b, -1i, arg_1.d), vec3<i32>(u_input.a, 2147483647i, global0.x))) ^ (_wgslsmith_div_vec3_i32(~vec3<i32>(-20000i, -2147483647i, arg_1.d), vec3<i32>(u_input.a, 1i, global0.x) & vec3<i32>(-13987i, u_input.a, 2147483647i)) | -(vec3<i32>(global0.x, -2147483647i, arg_1.c.x) & vec3<i32>(13020i, 1i, 39464i))), vec2<i32>(~(reverseBits(global0.x) ^ 0i), u_input.a), max(vec4<i32>(-1i, 1i, _wgslsmith_mult_i32(arg_1.d, -22602i), global0.x >> (502u % 32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-12103i, 1i, u_input.a, u_input.a), vec4<i32>(arg_1.d, -44851i, arg_1.a, arg_1.b)), -vec4<i32>(2147483647i, -2147483647i, -1i, 31107i), ~vec4<i32>(u_input.a, global0.x, global0.x, u_input.a))) & -select(vec4<i32>(-2147483647i, arg_1.c.x, 2147483647i, 30167i), vec4<i32>(1057i, arg_1.b, u_input.a, arg_1.b), !vec4<bool>(true, arg_0, arg_0, false)));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, var_1.x, var_1.x)))))), vec2<bool>(false, false), arg_0));
    var var_4 = !(!(!select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, false), vec3<bool>(false, true, false))));
    return ~countOneBits(vec3<i32>(u_input.a, global0.x, _wgslsmith_mult_i32(min(global0.x, var_2.d.x), arg_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_vec3_i32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1459f))) <= _wgslsmith_f_op_f32(f32(-1f) * -650f), func_1(~(~vec4<i32>(0i, 2147483647i, u_input.a, global0.x)), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-298f, -1152f, -436f))), vec2<bool>(true, true), false))), vec3<i32>(u_input.a, select(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(19885i, 1i, 24536i), true), -u_input.a) << (abs(~vec3<u32>(4294967295u, 70538u, 0u)) % vec3<u32>(32u)));
    global0 = _wgslsmith_sub_vec3_i32(~vec3<i32>(min(global0.x | u_input.a, 2147483647i), ~global0.x, u_input.a), vec3<i32>(~u_input.a, _wgslsmith_mod_i32(-1i, global0.x) << (1u % 32u), ~u_input.a) << ((countOneBits(~vec3<u32>(28124u, 0u, 4294967295u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1617f), _wgslsmith_f_op_f32(f32(-1f) * -104f)), 679f);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-761f, var_0.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-153f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -104f), vec2<f32>(var_0.x, -583f), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1211f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -482f)), var_0.x));
    let var_1 = firstLeadingBit(abs(~vec3<u32>(1u, ~16277u, 0u)));
    let var_2 = any(vec4<bool>(false, false, !any(vec4<bool>(true, true, true, true)), false || !(u_input.a < -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 104f, var_0.x, var_0.x), vec4<f32>(var_0.x, -899f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(107f, -495f, 855f, 464f) + vec4<f32>(-1411f, 606f, 518f, 734f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-272f, var_0.x, var_0.x, var_0.x)))))), vec4<i32>(global0.x, -1i, _wgslsmith_dot_vec2_i32(~global0.zx, func_1(vec4<i32>(1i, 2147483647i, global0.x, u_input.a), Struct_1(vec3<f32>(983f, -1000f, var_0.x), vec2<bool>(var_2, var_2), var_2)).c), i32(-1i) * -global0.x) | (vec4<i32>(-1i) * -(~vec4<i32>(2147483647i, -2147483647i, -1i, u_input.a))));
}

