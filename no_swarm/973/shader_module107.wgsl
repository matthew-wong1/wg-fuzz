struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(68743u, 55486u, 4294967295u, 38050u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    global0 = vec4<u32>(max(u_input.c, firstLeadingBit(_wgslsmith_add_u32(u_input.a | global0.x, 1u))), 233u, ~(~global0.x), ~1u);
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_mult_i32(arg_0.b, arg_0.b & abs(arg_0.b)), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(firstLeadingBit(1072i), arg_1.b), ~(-1i)), arg_1.b));
    global0 = _wgslsmith_div_vec4_u32(~vec4<u32>(countOneBits(_wgslsmith_dot_vec2_u32(global0.zx, global0.wx)), 1u, ~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(62764u, 4294967295u, 0u)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, global0.x), 1u)), ~vec4<u32>(~3779u, ~0u, _wgslsmith_mult_u32(global0.x, 1u), 54013u));
    global0 = vec4<u32>(1u, 85458u, _wgslsmith_dot_vec4_u32(min(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 11836u, u_input.b.x, u_input.b.x), ~vec4<u32>(global0.x, u_input.b.x, 0u, u_input.c)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.c, global0.x), vec4<u32>(4294967295u, 1u, global0.x, u_input.c)), ~74150u, u_input.b.x, global0.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 14477u, global0.x, u_input.a), countOneBits(vec4<u32>(u_input.a, global0.x, 32384u, global0.x)))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, u_input.c >> (4294967295u % 32u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), global0.wz)));
    return _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(~20657u, ~u_input.c, _wgslsmith_mod_u32(global0.x, u_input.a), ~u_input.c), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 83077u, 0u, 1u), vec4<u32>(4294967295u, global0.x, 84456u, 4294967295u))), true), _wgslsmith_mult_vec4_u32(select(max(vec4<u32>(1u, u_input.a, 36106u, 4294967295u), vec4<u32>(64187u, 4294967295u, global0.x, u_input.b.x)), ~vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.a), true || var_0), ~(~vec4<u32>(u_input.b.x, 4294967295u, 20645u, u_input.b.x)))), ~min(vec4<u32>(global0.x >> (u_input.c % 32u), global0.x, firstTrailingBit(u_input.c), ~1u), min(firstTrailingBit(vec4<u32>(global0.x, u_input.a, u_input.b.x, u_input.b.x)), vec4<u32>(36887u, 4497u, u_input.a, global0.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = vec4<u32>(_wgslsmith_dot_vec4_u32(func_3(Struct_1(-52955i, arg_2.a), arg_2), vec4<u32>(4294967295u, u_input.a, 12006u, _wgslsmith_sub_u32(~18006u, 20421u))), ~(~min(u_input.c, 32648u) << ((u_input.b.x & ~63457u) % 32u)), ~5637u, firstLeadingBit(firstLeadingBit(select(~u_input.b.x, 1u >> (global0.x % 32u), true))));
    var var_0 = arg_1;
    global0 = func_3(arg_2, Struct_1(504i, 34474i & _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1.b, -13541i, -33642i, arg_1.b)), ~vec4<i32>(0i, 1i, arg_0.a, arg_2.b))));
    var var_1 = 336f;
    var_1 = -811f;
    return Struct_1(~firstLeadingBit(arg_0.a), ~(-5071i) & arg_2.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_1.a | 57939i, 27834i);
    var var_1 = _wgslsmith_clamp_vec3_i32(-(~(-abs(vec3<i32>(-16103i, -2147483647i, 1i)))), vec3<i32>(arg_1.b, 46266i, _wgslsmith_div_i32(-arg_1.a, var_0.b)), select(-_wgslsmith_sub_vec3_i32(vec3<i32>(-17895i, arg_1.a, var_0.b), vec3<i32>(-2147483647i, arg_1.b, 18912i)), -(~vec3<i32>(var_0.b, var_0.a, -2147483647i)), all(vec3<bool>(false, false, true)) | true) & reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(17667i, var_0.a, var_0.b) | vec3<i32>(arg_1.a, arg_1.b, arg_1.b), _wgslsmith_add_vec3_i32(vec3<i32>(50275i, -1i, 33620i), vec3<i32>(6652i, arg_0.a, -2147483647i)))));
    var_1 = _wgslsmith_clamp_vec3_i32(select(vec3<i32>(var_0.b, i32(-1i) * -59650i, arg_0.a), -select(vec3<i32>(-18551i, arg_0.a, 1i), vec3<i32>(var_0.b, var_0.a, -1i), false) & ~vec3<i32>(25771i, 41384i, var_0.b), select(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), true, true)), vec3<i32>(-45183i, -_wgslsmith_dot_vec2_i32(var_1.yx, ~vec2<i32>(var_0.a, -22725i)), -(~3847i)), firstTrailingBit(vec3<i32>(-2147483647i, ~8972i, arg_1.b) ^ (vec3<i32>(-1i) * -vec3<i32>(arg_0.b, var_0.a, arg_1.a))));
    var var_2 = ~1u;
    let var_3 = var_0;
    return 4294967295u;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = arg_0.xw;
    global0 = vec4<u32>(4294967295u, 0u, 4294967295u, ~4294967295u);
    global0 = vec4<u32>(1u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(59320u, 1u, 0u) >> (global0.xyy % vec3<u32>(32u))), countOneBits(~u_input.b)), u_input.c, u_input.b.x) | vec4<u32>(_wgslsmith_sub_u32(u_input.c, _wgslsmith_add_u32(u_input.a, u_input.a)), 10382u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global0.x, global0.x)) ^ countOneBits(u_input.b.xz), u_input.b.zx), func_4(arg_1, func_2(arg_1, Struct_1(-1i, var_0.x), arg_1)) ^ _wgslsmith_sub_u32(firstTrailingBit(0u), ~4294967295u));
    var var_1 = max(~(~vec4<i32>(-arg_0.x, 2147483647i, var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_1.a), vec2<i32>(0i, 19282i)))), vec4<i32>(func_2(Struct_1(0i, -66521i | var_0.x), arg_1, arg_1).a, arg_0.x, firstTrailingBit(arg_0.x), ~(-16072i)));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1012f, -1594f, true)), _wgslsmith_f_op_f32(trunc(-267f))))), -1889f, false)) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(831f))));
    return _wgslsmith_f_op_f32(round(-886f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1642f - -538f)) - _wgslsmith_f_op_f32(-493f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -392f) + _wgslsmith_f_op_f32(1724f + -1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-928f, -272f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2006f + _wgslsmith_f_op_f32(func_1(vec4<i32>(13514i, 19614i, -48307i, 31492i), Struct_1(5957i, -2147483647i)))) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1578f, -1613f), _wgslsmith_f_op_f32(min(215f, 728f)), true)))));
    let var_1 = abs(~_wgslsmith_dot_vec3_u32(u_input.b, global0.ywy) & 37669u);
    var var_2 = !select(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), any(vec3<bool>(true, false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true));
    var var_3 = vec2<f32>(var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0, var_0))))))));
    let var_4 = func_2(func_2(Struct_1(-30720i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-2147483647i, 27427i, -61382i, 0i))), func_2(Struct_1(_wgslsmith_add_i32(0i, 0i), ~(-37029i)), func_2(Struct_1(-2147483647i, 32861i), func_2(Struct_1(2147483647i, 2147483647i), Struct_1(22161i, 17142i), Struct_1(-19191i, -81473i)), func_2(Struct_1(42191i, 0i), Struct_1(1i, -28365i), Struct_1(31923i, -68788i))), func_2(Struct_1(0i, 17646i), Struct_1(2261i, -1i), Struct_1(7664i, 1i))), Struct_1(abs(select(-8698i, 21696i, true)), _wgslsmith_add_i32(0i >> (u_input.c % 32u), countOneBits(28016i)))), func_2(Struct_1(1i, ~_wgslsmith_mult_i32(-13027i, -16162i)), Struct_1(firstTrailingBit(~42354i), _wgslsmith_mult_i32(89915i, reverseBits(-1i))), Struct_1(-1i, 1i)), Struct_1(max(_wgslsmith_div_i32(10386i, i32(-1i) * -47099i), abs(-1i) << ((55058u << (u_input.c % 32u)) % 32u)), _wgslsmith_mod_i32(-11191i, -17225i)));
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-799f, 234f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-763f, -170f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 405f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_f_op_f32(f32(-1f) * -680f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))) * vec2<f32>(var_0, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1616f, 1003f)) - var_0))));
}

