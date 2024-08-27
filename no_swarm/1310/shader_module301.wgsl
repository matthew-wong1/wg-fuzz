struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec3<i32>(-1i, 59999i, 16682i), vec2<i32>(9835i, 1i), vec3<u32>(0u, 4294967295u, 48294u), true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(~(~global0.d.x), select(abs(u_input.a), vec3<i32>(532i, u_input.a.x, min(firstLeadingBit(-5253i), 82456i)), any(vec4<bool>(global0.e, false, true, global0.e || global0.e))), _wgslsmith_clamp_vec2_i32(~global0.b.xx, vec2<i32>(-u_input.a.x, 0i), _wgslsmith_sub_vec2_i32(abs(reverseBits(vec2<i32>(global0.b.x, u_input.a.x))), abs(vec2<i32>(-45785i, u_input.a.x)))), ~countOneBits(countOneBits(~global0.d)), !global0.e);
    global0 = Struct_1(1u, _wgslsmith_mult_vec3_i32(-(vec3<i32>(-1i) * -u_input.a), -vec3<i32>(~0i, 0i | var_0.b.x, u_input.a.x)), _wgslsmith_div_vec2_i32(global0.b.yy, firstTrailingBit(u_input.a.zx)), var_0.d, (reverseBits(abs(52811u)) | min(~17657u, 1u ^ var_0.a)) >= 0u);
    global0 = var_0;
    return vec3<u32>(~var_0.a, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(abs(global0.a), ~global0.d.x), 32663u, _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, 0u), 5547u)), firstLeadingBit(abs(~42944u))), global0.d.x);
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_u32(global0.d, global0.d);
    global0 = Struct_1(global0.d.x, global0.b, global0.c, ~select(global0.d, ~global0.d, true) ^ _wgslsmith_clamp_vec3_u32(~(~global0.d), func_3(), abs(global0.d)), select(all(!select(vec2<bool>(global0.e, global0.e), vec2<bool>(false, global0.e), global0.e)), true, func_3().x > min(func_3().x, global0.a)));
    global0 = Struct_1(global0.a, -vec3<i32>(~(arg_0 | 2147483647i), ~countOneBits(2147483647i), _wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, global0.b.x), arg_0 >> (6348u % 32u))), firstTrailingBit(global0.c), global0.d, global0.e);
    let var_1 = ~arg_0;
    var var_2 = min(-arg_0, 1i);
    return _wgslsmith_dot_vec3_u32(global0.d, global0.d);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(~1u, abs(~vec3<i32>(~u_input.a.x, global0.c.x, -global0.b.x)), global0.c, vec3<u32>(~(~global0.a), _wgslsmith_sub_u32(48970u | abs(global0.d.x), global0.a), select(~func_2(-47652i), func_2(-2147483647i), all(select(vec3<bool>(global0.e, true, false), vec3<bool>(false, false, false), true)))), all(!vec3<bool>(!global0.e, global0.e, false)));
    let var_1 = var_0;
    var var_2 = _wgslsmith_mult_vec2_i32(~vec2<i32>(0i, -1i), ~vec2<i32>(2147483647i, u_input.a.x));
    global0 = Struct_1(var_1.d.x >> (4294967295u % 32u), max(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(835i, 0i), 1i), 9267i, 0i), -vec3<i32>(u_input.a.x, var_1.c.x, reverseBits(2147483647i))), abs(min(~_wgslsmith_mult_vec2_i32(u_input.a.yz, global0.b.xx), var_0.b.yy)), _wgslsmith_mult_vec3_u32(global0.d, _wgslsmith_add_vec3_u32(var_1.d, var_1.d) << ((var_0.d | global0.d) % vec3<u32>(32u))), !var_0.e);
    var_2 = _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.yy ^ vec2<i32>(-11551i, 0i)))), global0.c);
    return Struct_1(global0.a, reverseBits(var_0.b), ((vec2<i32>(-1i) * -global0.b.zz) >> (_wgslsmith_mod_vec2_u32(var_0.d.xx, max(vec2<u32>(4294967295u, var_1.a), vec2<u32>(var_0.a, var_1.d.x))) % vec2<u32>(32u))) ^ ~var_1.b.zy, firstTrailingBit(_wgslsmith_sub_vec3_u32(abs(countOneBits(vec3<u32>(global0.a, var_1.d.x, 46546u))), vec3<u32>(29841u, ~8727u, _wgslsmith_sub_u32(4294967295u, 18445u)))), 1f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1024f, 379f) + _wgslsmith_f_op_f32(ceil(594f))))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> bool {
    global0 = arg_0;
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1282f) * _wgslsmith_f_op_f32(trunc(-904f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(497f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1487f - 271f)))) + -567f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(var_0, -320f))) * vec2<f32>(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_div_f32(var_0, -1000f)))));
    global0 = arg_0;
    let var_2 = -countOneBits(~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 1i, global0.b.x, 2147483647i), -vec4<i32>(arg_0.c.x, u_input.a.x, -2147483647i, 0i)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - var_1.x))) > var_1.x;
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = abs(~(~select(_wgslsmith_div_vec4_u32(vec4<u32>(114135u, arg_2.a, 4294967295u, 66319u), vec4<u32>(arg_2.d.x, arg_3, var_0.d.x, global0.d.x)), vec4<u32>(var_0.a, 9126u, global0.a, arg_2.a), select(vec4<bool>(false, global0.e, true, true), vec4<bool>(global0.e, false, true, var_0.e), vec4<bool>(false, global0.e, false, global0.e)))));
    var_0 = func_1();
    var_0 = Struct_1(~4294967295u, vec3<i32>(global0.b.x, -8612i, select(-global0.c.x, var_0.c.x, u_input.a.x >= global0.c.x)) >> (vec3<u32>(var_0.a, arg_3, 4294967295u) % vec3<u32>(32u)), select(var_0.c, _wgslsmith_mod_vec2_i32((vec2<i32>(global0.b.x, global0.c.x) & global0.c) ^ var_0.c, vec2<i32>(var_0.b.x, _wgslsmith_mult_i32(u_input.a.x, 7002i))), vec2<bool>(all(vec4<bool>(global0.e, false, arg_2.e, true)), select(true, func_4(arg_2, u_input.a.x), arg_1.x != arg_1.x))), arg_2.d, !(!global0.e));
    let var_2 = _wgslsmith_add_vec2_i32(func_1().c, min(var_0.b.xz, -min(vec2<i32>(var_0.c.x, 2147483647i), vec2<i32>(global0.c.x, 2147483647i)) ^ _wgslsmith_mod_vec2_i32(var_0.c, abs(var_0.b.yy))));
    return Struct_1(abs(_wgslsmith_mod_u32(~1u, 90360u)), var_0.b, _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(arg_2.c.x, var_2.x)), ~(-vec2<i32>(-101i, 47679i)) << (_wgslsmith_clamp_vec2_u32(~var_0.d.yx, abs(vec2<u32>(36568u, 4294967295u)), vec2<u32>(var_1.x, var_1.x)) % vec2<u32>(32u))), vec3<u32>(firstLeadingBit(0u), arg_2.a, 4294967295u), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(func_1(), -u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1498f - 1655f)) + 279f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(2825f)), _wgslsmith_f_op_f32(f32(-1f) * -385f), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1061f - -930f)))), Struct_1(~global0.a, u_input.a, firstTrailingBit(vec2<i32>(41778i, 53133i)), vec3<u32>(global0.d.x & 3591u, ~(4294967295u >> (global0.a % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, global0.d.x, global0.d.x, 38565u), vec4<u32>(global0.a, global0.d.x, global0.d.x, global0.a))), (global0.a == (global0.a << (7610u % 32u))) == !global0.e), 19495u);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-717f - _wgslsmith_f_op_f32(step(263f, -1000f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1529f * -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(450f * -1496f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1585f), -682f))), _wgslsmith_f_op_f32(-1956f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-610f, 535f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))))));
    let var_1 = vec2<u32>(1u, global0.a);
    global0 = func_1();
    let var_2 = ~1u;
    var var_3 = ~select(global0.b.zy, vec2<i32>(-1i, ~(-1i)), global0.e);
    global0 = func_1();
    var var_4 = var_0.wz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy ^ u_input.a.zx, 2147483647i, ~min(vec3<u32>(~86200u, select(var_1.x, var_1.x, true), 2426u), global0.d));
}

