struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(0i, -2147483647i)), vec2<i32>(1i, i32(-1i) * -15524i)) & 0i, -_wgslsmith_mod_i32(firstLeadingBit(-1i) | firstTrailingBit(2147483647i), firstTrailingBit(0i)));
    var var_1 = global0.b;
    var var_2 = Struct_3(global0.c, 31143u, firstTrailingBit(_wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(global0.d.x, 1u), global0.a.xz), _wgslsmith_sub_vec2_u32(global0.d | vec2<u32>(1u, global0.a.x), vec2<u32>(u_input.a.x, u_input.b.x)))), Struct_2(global0.a, global0.b, Struct_1(global0.b.x), vec2<u32>(u_input.b.x, 8727u)));
    var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -2147483647i) >> (~vec3<u32>(var_2.b, 42366u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(select(vec3<i32>(2147483647i, 64403i, -1i), vec3<i32>(-2147483647i, 45387i, 1i), var_2.d.b), vec3<i32>(-20169i, -12965i, -2147483647i))) ^ -17829i;
    let var_3 = Struct_3(Struct_1(all(select(select(var_2.d.b, vec3<bool>(false, var_1.x, true), vec3<bool>(global0.b.x, false, var_1.x)), select(var_2.d.b, global0.b, var_1.x), vec3<bool>(var_1.x, var_1.x, var_2.a.a)))), var_2.d.d.x, max(vec2<u32>(~min(global0.a.x, var_2.d.d.x), firstLeadingBit(u_input.c | 19837u)), _wgslsmith_mod_vec2_u32(select(countOneBits(vec2<u32>(0u, 20656u)), max(vec2<u32>(var_2.c.x, u_input.c), var_2.d.a.xx), vec2<bool>(true, false)), firstLeadingBit(vec2<u32>(u_input.d, global0.d.x)))), Struct_2(u_input.b.xyw | ~(~vec3<u32>(var_2.c.x, 0u, 0u)), vec3<bool>(all(select(vec4<bool>(var_2.a.a, var_2.d.b.x, true, var_1.x), vec4<bool>(var_1.x, false, false, var_2.a.a), true)), global0.b.x, all(vec2<bool>(true, var_1.x))), global0.c, global0.d));
    return 102078u;
}

fn func_2() -> f32 {
    var var_0 = Struct_3(Struct_1(true), global0.d.x, global0.d, Struct_2(~global0.a, global0.b, Struct_1(true), ~(~u_input.b.yw)));
    var_0 = Struct_3(Struct_1((true | !global0.c.a) && (global0.d.x > 4294967295u)), global0.a.x, select(var_0.d.d, vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global0.d.x, 43243u, var_0.d.a.x, global0.d.x)), u_input.a.x, 1u), 1u), var_0.d.b.x), Struct_2(firstTrailingBit(~u_input.b.wwz), var_0.d.b, var_0.d.c, vec2<u32>(var_0.b, global0.d.x)));
    global0 = var_0.d;
    let var_1 = 1i;
    var_0 = Struct_3(Struct_1(global0.b.x), ~(~select(1u, 1u, true)) | ~1u, _wgslsmith_div_vec2_u32(vec2<u32>(~func_3(), 1u), _wgslsmith_clamp_vec2_u32(global0.a.xx, vec2<u32>(1u, _wgslsmith_clamp_u32(global0.d.x, u_input.d, var_0.b)), select(~u_input.a, vec2<u32>(36178u, u_input.b.x), !vec2<bool>(false, global0.c.a)))), Struct_2(global0.a, vec3<bool>(all(!vec4<bool>(false, false, true, global0.c.a)), true && global0.b.x, var_0.d.c.a), Struct_1(any(vec4<bool>(var_0.a.a, global0.b.x, true, global0.c.a)) || true), u_input.a));
    return _wgslsmith_f_op_f32(-451f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -273f)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: u32) -> Struct_2 {
    global0 = arg_1.d;
    var var_0 = Struct_3(arg_1.d.c, _wgslsmith_dot_vec3_u32(global0.a, _wgslsmith_mult_vec3_u32(countOneBits(arg_1.d.a | vec3<u32>(u_input.d, arg_1.b, arg_2.x)), abs(~arg_2))), u_input.a, arg_1.d);
    var var_1 = !select(!(!arg_1.d.b), vec3<bool>(all(vec2<bool>(false, global0.c.a)), !any(vec4<bool>(true, var_0.a.a, arg_1.a.a, var_0.d.c.a)), all(vec4<bool>(var_0.a.a, global0.b.x, true, var_0.d.b.x))), !select(vec3<bool>(global0.c.a, global0.b.x, var_0.d.b.x), vec3<bool>(true, false, arg_1.d.c.a), vec3<bool>(global0.c.a, var_0.d.c.a, false)));
    global0 = var_0.d;
    let var_2 = Struct_3(var_0.d.c, select(arg_3 << (_wgslsmith_mod_u32(1u, 25254u) % 32u), ~(~1u) << (firstLeadingBit(~32433u) % 32u), arg_1.a.a), ~(~vec2<u32>(~46111u, 1u)), Struct_2(vec3<u32>(~(~global0.a.x), 53634u, reverseBits(4294967295u)), global0.b, var_0.a, (arg_2.xz ^ arg_2.yz) << (~var_0.d.a.xz % vec2<u32>(32u))));
    return Struct_2(firstLeadingBit(arg_1.d.a), !vec3<bool>(any(vec3<bool>(true, var_0.a.a, true)), !(!var_2.a.a), var_0.a.a), Struct_1(var_2.d.b.x), ~(~var_2.c));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(all(!select(global0.b.yz, global0.b.zx, global0.b.zz))), ~arg_0, u_input.a, func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))), Struct_3(global0.c, ~4294967295u, _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.yz, vec2<u32>(u_input.d, 0u), vec2<u32>(arg_0, 0u)), vec2<u32>(global0.a.x, 76523u)), Struct_2(u_input.b.yzy, !global0.b, global0.c, abs(vec2<u32>(u_input.a.x, 60320u)))), _wgslsmith_div_vec3_u32(vec3<u32>(~26301u, 22408u, _wgslsmith_mod_u32(u_input.c, 8410u)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.x, 1u, 0u), vec3<u32>(42889u, 83592u, arg_0)))), ~(~_wgslsmith_sub_u32(u_input.c, u_input.d))));
    global0 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))))), Struct_3(Struct_1(var_0.d.c.a), ~_wgslsmith_add_u32(global0.a.x, global0.d.x), vec2<u32>(u_input.d, 38302u), Struct_2(select(~var_0.d.a, var_0.d.a | vec3<u32>(u_input.d, 35178u, u_input.a.x), false), vec3<bool>(true, true, true), func_4(916f, Struct_3(Struct_1(true), arg_0, var_0.c, var_0.d), var_0.d.a, arg_0).c, abs(global0.a.zz))), _wgslsmith_add_vec3_u32(~global0.a, reverseBits(countOneBits(vec3<u32>(u_input.d, var_0.c.x, global0.a.x)))) << (~vec3<u32>(64419u, global0.a.x, reverseBits(58385u)) % vec3<u32>(32u)), 0u);
    let var_1 = _wgslsmith_sub_i32(min(1986i, 1i) >> (~arg_0 % 32u), _wgslsmith_clamp_i32(~countOneBits(i32(-1i) * -20815i), 38650i, _wgslsmith_add_i32(_wgslsmith_add_i32(i32(-1i) * -2147483647i, -1i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(32215i, -10317i)), -2147483647i))));
    var var_2 = global0.a.xy;
    let var_3 = Struct_1(!all(vec2<bool>(true, var_0.d.c.a)));
    return func_4(1514f, Struct_3(var_3, arg_0, ~(~global0.a.yy), Struct_2(global0.a, !var_0.d.b, Struct_1(var_1 < 6111i), firstLeadingBit(vec2<u32>(arg_0, 3646u)) << (reverseBits(u_input.b.xz) % vec2<u32>(32u)))), var_0.d.a, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(u_input.d);
    let var_0 = 12122i;
    global0 = func_4(-538f, Struct_3(Struct_1(true), firstLeadingBit(~countOneBits(44833u)), select(global0.d, ~u_input.b.xz & vec2<u32>(31683u, u_input.c), !(!vec2<bool>(global0.c.a, true))), func_4(-1680f, Struct_3(global0.c, 0u >> (u_input.a.x % 32u), _wgslsmith_add_vec2_u32(global0.d, vec2<u32>(u_input.a.x, 31737u)), func_4(-234f, Struct_3(Struct_1(false), 27818u, vec2<u32>(59550u, 50031u), Struct_2(global0.a, vec3<bool>(true, global0.c.a, false), global0.c, u_input.a)), global0.a, 56975u)), vec3<u32>(52059u, 1u, ~0u), abs(~1u))), ~(~(min(vec3<u32>(global0.a.x, 1u, 55667u), u_input.b.yzy) << (global0.a % vec3<u32>(32u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~1u, global0.a.x), 1u), firstTrailingBit(~u_input.b.wx)));
    var var_1 = ~4294967295u;
    let var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, 542f)))) + 661f), Struct_3(func_1(u_input.c).c, ~14141u, abs(u_input.b.xy), func_4(1466f, Struct_3(func_4(1000f, Struct_3(global0.c, u_input.b.x, global0.a.xz, Struct_2(vec3<u32>(u_input.d, 0u, global0.d.x), global0.b, global0.c, global0.a.yy)), vec3<u32>(63196u, 49343u, global0.a.x), global0.a.x).c, ~u_input.d, countOneBits(vec2<u32>(69190u, u_input.c)), func_1(38509u)), ~(u_input.b.xwx >> (vec3<u32>(1u, u_input.c, u_input.b.x) % vec3<u32>(32u))), _wgslsmith_mult_u32(100097u, ~u_input.d))), ~u_input.b.wwy, 0u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-530f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(679f)))))));
    var_1 = _wgslsmith_clamp_u32(u_input.d, min(42595u, 1u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, ~_wgslsmith_sub_u32(0u, var_2.d.x)), 0u, ~(~var_2.d.x | var_2.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-542f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3), 1437f))), _wgslsmith_f_op_f32(-1207f + -264f))), ~var_2.a.x);
}

