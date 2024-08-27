struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, -47764i, 4446i, -31671i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(217f)) - -487f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1605f, 794f), 941f)), _wgslsmith_f_op_f32(354f + 146f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(435f, 1269f)), 1101f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -195f) * -1232f))));
    var var_1 = vec4<bool>(all(!vec3<bool>(any(vec2<bool>(false, false)), false, true)), false, true, !(var_0.b >= _wgslsmith_f_op_f32(select(526f, _wgslsmith_f_op_f32(step(688f, var_0.a.x)), true))));
    var var_2 = 59755u;
    let var_3 = select(!vec4<bool>(var_1.x, var_1.x, false | all(vec3<bool>(false, var_1.x, var_1.x)), any(var_1.xyz)), vec4<bool>(var_1.x, all(select(var_1.zxy, var_1.zxw, all(var_1.wyz))), u_input.b.x >= min(~0u, _wgslsmith_mod_u32(u_input.a, 55211u)), var_1.x), vec4<bool>(true, global0.x >= ~(~(-1i)), true == var_1.x, _wgslsmith_div_i32(global0.x, _wgslsmith_sub_i32(1i, global0.x)) >= _wgslsmith_dot_vec4_i32(~vec4<i32>(-6901i, 1i, -14343i, global0.x), firstLeadingBit(vec4<i32>(1i, global0.x, 0i, global0.x)))));
    var_1 = vec4<bool>(any(var_1.yxw), false, false, var_1.x);
    return -1i;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: u32) -> Struct_5 {
    global0 = -(~(vec4<i32>(-6610i, global0.x, global0.x, 7270i) | vec4<i32>(global0.x, global0.x, 0i, global0.x)) | ~(-vec4<i32>(-3248i, global0.x, global0.x, -9431i))) << (_wgslsmith_div_vec4_u32(~(~vec4<u32>(arg_3, 4294967295u, 74491u, u_input.b.x)) | ~firstTrailingBit(vec4<u32>(106561u, 4294967295u, u_input.a, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(66316u, 14949u, 48563u, u_input.a), vec4<u32>(firstLeadingBit(arg_0), ~u_input.a, _wgslsmith_sub_u32(21569u, arg_3), 0u))) % vec4<u32>(32u));
    let var_0 = Struct_5(-select(-16707i, ~global0.x << ((u_input.b.x >> (4294967295u % 32u)) % 32u), !select(true, false, false)), any(vec2<bool>(true, true)) | true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2))) * _wgslsmith_f_op_f32(floor(911f)))));
    global0 = vec4<i32>(func_3(), ~56172i, global0.x, max(var_0.a, ~firstTrailingBit(62506i)));
    global0 = ~vec4<i32>(min(_wgslsmith_mod_i32(11621i, -11806i), -var_0.a), -(~(-9737i)), var_0.a, _wgslsmith_mult_i32(var_0.a, abs(var_0.a))) << (vec4<u32>(u_input.a, ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_3, arg_3, 103434u, arg_3)), vec4<u32>(u_input.a, arg_0, 229u, arg_3)), ~arg_3, abs(countOneBits(arg_3))) % vec4<u32>(32u));
    var var_1 = arg_0;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5) -> bool {
    global0 = vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(~(~vec4<i32>(2147483647i, global0.x, 0i, 2147483647i))), vec4<i32>(~7319i, global0.x, -2147483647i >> (u_input.b.x % 32u), global0.x) << (select(countOneBits(vec4<u32>(u_input.a, 24953u, u_input.a, u_input.b.x)), ~vec4<u32>(u_input.b.x, 4294967295u, 20222u, u_input.b.x), vec4<bool>(arg_1.b, true, arg_0.a, arg_0.a)) % vec4<u32>(32u))), global0.x, 46840i, arg_1.a);
    let var_0 = 0u;
    let var_1 = vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_add_u32(var_0, 0u))), countOneBits(max(abs(u_input.b.x), 4800u) << (_wgslsmith_add_u32(u_input.b.x, var_0 | 1u) % 32u)));
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a, max(_wgslsmith_dot_vec3_i32(vec3<i32>(-21635i, arg_1.a, 56016i), global0.yxw), ~arg_1.a) ^ (arg_1.a | global0.x), ~2147483647i, -(~arg_1.a)), vec4<i32>(~arg_1.a, -func_3(), (1i | arg_1.a) >> (49561u % 32u), -50442i));
    let var_2 = Struct_2(func_2(var_1.x << (6859u % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1666f)), 598f) * _wgslsmith_f_op_f32(round(arg_0.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-789f)), _wgslsmith_f_op_f32(-1486f - arg_0.b))), u_input.b.x).b, _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_1.c, arg_0.b, false)), 565f))))), -9976i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(select(global0.yy ^ global0.wz, global0.xz, !vec2<bool>(arg_0.a, arg_1.b)), reverseBits(reverseBits(global0.xx))), global0.wx));
    return var_2.a;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = global0.x;
    let var_1 = -((global0.x ^ firstTrailingBit(~global0.x)) | ~_wgslsmith_clamp_i32(~global0.x, -3460i, global0.x));
    let var_2 = _wgslsmith_dot_vec3_i32(global0.zzx, ~(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), global0.yw), var_1, firstTrailingBit(var_1))));
    global0 = vec4<i32>(global0.x, -max(_wgslsmith_mod_i32(~25150i, abs(var_1)), -var_2), -var_1, -var_1);
    let var_3 = firstLeadingBit(countOneBits(~(~vec3<u32>(0u, arg_1, u_input.a)) & ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, arg_2, u_input.b.x), vec3<u32>(arg_2, 0u, 69891u))));
    return Struct_1(any(select(!vec4<bool>(arg_0, true, true, arg_0), !select(vec4<bool>(true, arg_0, true, false), vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(true, arg_0, false, true)), select(false, !arg_0, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-488f))), -507f)), -783f)));
}

fn func_1() -> i32 {
    var var_0 = Struct_3(func_5(func_4(Struct_1(66136u != u_input.b.x, -1133f), func_2(u_input.b.x, 1674f, _wgslsmith_f_op_f32(max(-1729f, 2153f)), ~31610u)), _wgslsmith_clamp_u32(~u_input.a, ~u_input.a >> (_wgslsmith_sub_u32(u_input.a, 1969u) % 32u), 13059u), 4294967295u), Struct_2(abs(1u) < u_input.b.x, 967f, ~(-6188i), ~(-firstTrailingBit(0i))), Struct_2(all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1331f)))), _wgslsmith_dot_vec3_i32(~vec3<i32>(global0.x, global0.x, global0.x) << (~vec3<u32>(u_input.a, 4294967295u, u_input.b.x) % vec3<u32>(32u)), (global0.zxx & global0.ywz) >> (~vec3<u32>(u_input.a, u_input.b.x, 11381u) % vec3<u32>(32u))), firstLeadingBit(global0.x)), func_5(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), _wgslsmith_add_u32(1u, ~firstLeadingBit(u_input.b.x)), u_input.b.x), false);
    global0 = -(~min(~countOneBits(vec4<i32>(48558i, 20821i, global0.x, var_0.b.c)), countOneBits(-vec4<i32>(-19036i, 41454i, -16972i, 1i))));
    global0 = _wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(11024i, 9761i, 1i, 37082i), abs(vec4<i32>(var_0.c.d, var_0.b.c, var_0.c.c, global0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, var_0.c.d, global0.x, var_0.c.c), vec4<i32>(global0.x, var_0.c.d, 113889i, global0.x))), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.d, 61554i, 90241i, var_0.b.c), vec4<i32>(1i, 2147483647i, var_0.c.c, -2147483647i))), ~(~(-vec4<i32>(0i, -18336i, global0.x, var_0.b.c))) >> (vec4<u32>(reverseBits(_wgslsmith_add_u32(u_input.a, 4294967295u)), u_input.a, firstTrailingBit(_wgslsmith_mult_u32(4294967295u, 0u)), u_input.a) % vec4<u32>(32u)));
    let var_1 = Struct_3(var_0.d, Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.d.b))))), func_3(), -(0i << (_wgslsmith_add_u32(u_input.a, u_input.b.x) % 32u))), var_0.c, func_5(any(select(vec3<bool>(var_0.b.a, true, var_0.d.a), select(vec3<bool>(var_0.e, var_0.b.a, var_0.a.a), vec3<bool>(var_0.d.a, var_0.a.a, var_0.c.a), true), select(vec3<bool>(var_0.b.a, false, false), vec3<bool>(false, true, var_0.a.a), vec3<bool>(true, var_0.a.a, var_0.a.a)))), u_input.a, u_input.a), any(vec3<bool>(select(var_0.a.a, false, var_0.b.a) != func_2(u_input.b.x, 832f, -880f, 4294967295u).b, var_0.c.a && var_0.a.a, var_0.c.a)));
    global0 = vec4<i32>(2147483647i, 2147483647i, 1i, ~var_1.b.d);
    return abs(var_0.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec4<i32>(global0.x, -_wgslsmith_mult_i32(3755i, -14996i), func_1(), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, min(global0.x, global0.x)), global0.ww));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-1613f - -288f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-303f + 337f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-297f + 756f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -497f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1801f, _wgslsmith_f_op_f32(f32(-1f) * -334f))))), func_2(countOneBits(abs(u_input.a)), 374f, func_2(0u, _wgslsmith_f_op_f32(step(-554f, _wgslsmith_f_op_f32(f32(-1f) * -220f))), _wgslsmith_div_f32(-2101f, -1105f), 1u).c, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.a), ~1u)).a);
}

