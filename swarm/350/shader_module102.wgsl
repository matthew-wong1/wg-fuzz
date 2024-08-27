struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(48074u, 24534u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_4) -> bool {
    global0 = countOneBits(~vec2<u32>(global0.x, _wgslsmith_dot_vec2_u32(arg_2.c.a.c.yy, max(arg_2.c.a.c.xw, vec2<u32>(arg_2.c.a.c.x, 4294967295u)))));
    var var_0 = Struct_1(-1i);
    return any(vec3<bool>(arg_2.a.x, !arg_2.a.x, !arg_2.a.x));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32) -> vec2<i32> {
    let var_0 = vec2<bool>(false, arg_1.a.x);
    var var_1 = _wgslsmith_div_f32(arg_1.c.a.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(-173f))))));
    let var_2 = _wgslsmith_add_u32(0u, abs(global0.x));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1061f + arg_1.c.a.b), false)), 1145f)) * arg_1.d);
    var var_4 = abs(max(-39328i, abs(-(i32(-1i) * -2147483647i))));
    return -(arg_1.b | firstTrailingBit(-vec2<i32>(arg_2, -2577i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> vec2<u32> {
    global0 = vec2<u32>(u_input.e, global0.x >> (u_input.e % 32u));
    var var_0 = -3120i >> (_wgslsmith_sub_u32(~_wgslsmith_mod_u32(110653u, arg_1.c.x), select(u_input.d, _wgslsmith_sub_u32(1u, min(arg_1.c.x, global0.x)), any(vec2<bool>(true, true)))) % 32u);
    var var_1 = 589f;
    var var_2 = _wgslsmith_f_op_f32(2418f - _wgslsmith_f_op_f32(floor(arg_1.b)));
    var var_3 = Struct_1(-2147483647i);
    return abs(vec2<u32>(global0.x, 52562u));
}

fn func_2(arg_0: vec3<bool>) -> vec4<u32> {
    global0 = _wgslsmith_div_vec2_u32(min(~max(vec2<u32>(56958u, u_input.d) << (vec2<u32>(global0.x, 4294967295u) % vec2<u32>(32u)), vec2<u32>(global0.x, 1u) ^ vec2<u32>(4294967295u, 1u)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 33635u), _wgslsmith_sub_vec2_u32(vec2<u32>(45735u, 4294967295u), vec2<u32>(48782u, u_input.e)), select(arg_0.yx, arg_0.xx, true)), vec2<u32>(~1u, reverseBits(4294967295u)))), ~(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, 30793u), ~vec2<u32>(10039u, global0.x)) << (func_4(func_3(Struct_1(u_input.b), Struct_4(arg_0, vec2<i32>(39974i, u_input.a.x), Struct_3(Struct_2(u_input.b, -1499f, vec4<u32>(u_input.e, u_input.e, global0.x, 0u)), Struct_2(2147483647i, 1000f, vec4<u32>(0u, 14029u, 48721u, u_input.e)), u_input.c), 1343f), 7892i), Struct_2(u_input.c.x, 330f, vec4<u32>(4294967295u, u_input.d, 4294967295u, 52782u))) % vec2<u32>(32u))));
    global0 = _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(47110u, _wgslsmith_sub_u32(4294967295u, 0u))), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(global0.x, 0u)), min(abs(vec2<u32>(u_input.d, u_input.e)), max(vec2<u32>(4294967295u, 14632u), vec2<u32>(34407u, 36434u)))) >> (vec2<u32>(global0.x, max(1u, 1u)) % vec2<u32>(32u)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-449f - 1092f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(826f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1045f - -416f))))));
    let var_1 = false;
    global0 = reverseBits(~vec2<u32>(global0.x, u_input.d));
    return ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.d), vec2<u32>(global0.x, 19636u)), 1u, _wgslsmith_mod_u32(4294967295u, global0.x), 7545u), abs(vec4<u32>(global0.x, 42094u & global0.x, u_input.e ^ global0.x, u_input.e >> (8061u % 32u))), abs(~vec4<u32>(global0.x, 6694u, global0.x, 1u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, u_input.d, 1u, u_input.d), firstLeadingBit(vec4<u32>(45247u, global0.x, 1u, 3571u)), vec4<u32>(u_input.d, 4294967295u, 0u, u_input.e)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    global0 = firstTrailingBit(~(~_wgslsmith_clamp_vec2_u32(arg_3.c.a.c.zx, arg_0.c.zy, _wgslsmith_div_vec2_u32(vec2<u32>(arg_3.c.a.c.x, 22343u), vec2<u32>(113239u, 1u)))));
    return _wgslsmith_sub_u32(~(_wgslsmith_clamp_u32(58201u, arg_0.c.x, global0.x) & abs(arg_3.c.a.c.x)) & _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_3.c.b.c.x, u_input.e), vec2<u32>(global0.x, ~arg_3.c.b.c.x)), ~abs(arg_3.c.a.c.x));
}

fn func_6(arg_0: vec3<bool>, arg_1: bool, arg_2: u32) -> Struct_2 {
    return Struct_2(_wgslsmith_sub_i32(u_input.b, 0i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, -155f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1247f - -1374f))))), vec4<u32>(0u, u_input.e, 1u, ~global0.x & 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec3<bool>(_wgslsmith_div_u32(1216u, u_input.d ^ 16632u) != ~u_input.d, true, false), all(vec3<bool>(true, true, func_1(Struct_3(Struct_2(u_input.b, 144f, vec4<u32>(19220u, u_input.d, 18382u, u_input.d)), Struct_2(u_input.a.x, -406f, vec4<u32>(46364u, 0u, 8362u, u_input.e)), vec4<i32>(-13280i, u_input.b, 1i, u_input.c.x)), u_input.c, Struct_4(vec3<bool>(true, true, true), u_input.c.yz, Struct_3(Struct_2(29359i, -158f, vec4<u32>(11678u, u_input.d, global0.x, global0.x)), Struct_2(u_input.a.x, 155f, vec4<u32>(u_input.d, 27107u, 51044u, 0u)), u_input.c), -1650f)))), func_5(Struct_2(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 8513i), _wgslsmith_f_op_f32(ceil(-129f)), func_2(vec3<bool>(false, false, false)) & vec4<u32>(global0.x, 4294967295u, u_input.d, 38300u)), Struct_4(vec3<bool>(true, true, true), ~(vec2<i32>(u_input.c.x, -2803i) >> (vec2<u32>(u_input.e, global0.x) % vec2<u32>(32u))), Struct_3(Struct_2(-33031i, -1393f, vec4<u32>(global0.x, 0u, u_input.e, 32614u)), Struct_2(1i, -973f, vec4<u32>(93259u, 56921u, u_input.e, 1u)), u_input.c), -1032f), Struct_1(-3046i), Struct_4(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec2<i32>(10135i, u_input.a.x) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(global0.x, 4294967295u), vec2<u32>(u_input.e, u_input.e)) % vec2<u32>(32u)), Struct_3(Struct_2(u_input.c.x, -1292f, vec4<u32>(4294967295u, u_input.d, global0.x, u_input.d)), Struct_2(0i, -545f, vec4<u32>(global0.x, 90830u, 0u, global0.x)), u_input.c ^ u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -1158f))));
    var var_1 = firstLeadingBit(countOneBits(~min(_wgslsmith_div_vec2_i32(u_input.c.wy, vec2<i32>(-2147483647i, var_0.a)), vec2<i32>(u_input.a.x, var_0.a) | vec2<i32>(var_0.a, 1i))));
    let var_2 = Struct_3(func_6(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), !any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false))), countOneBits(reverseBits(~var_0.c.x))), Struct_2(0i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1466f + -238f) - var_0.b))), ~firstTrailingBit(vec4<u32>(38709u, 48575u, global0.x, u_input.e))), -u_input.c);
    global0 = vec2<u32>(~76199u, 1u);
    global0 = var_2.b.c.zx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_mult_vec2_i32(~u_input.c.wz << (select(vec2<u32>(4294967295u, 41075u), var_2.a.c.xw, vec2<bool>(true, true)) % vec2<u32>(32u)), var_2.c.zz));
}

