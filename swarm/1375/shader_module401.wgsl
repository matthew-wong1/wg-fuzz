struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    let var_0 = -firstTrailingBit(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c, 43271i, -2147483647i, u_input.c) ^ select(vec4<i32>(-16675i, 0i, u_input.c, u_input.a), vec4<i32>(u_input.e.x, u_input.c, 38901i, 2147483647i), false), ~(-vec4<i32>(u_input.c, -2147483647i, -2147483647i, u_input.e.x)), max(countOneBits(vec4<i32>(2147483647i, -23330i, global0.e.x, global0.e.x)), vec4<i32>(21679i, -17137i, -6515i, -2147483647i))));
    var var_1 = (~global0.b.a & countOneBits(global0.b.a)) & global0.b.a;
    let var_2 = Struct_2(all(!select(vec3<bool>(true, true, global0.d), vec3<bool>(true, true, false), vec3<bool>(true, false, false))) || any(select(!vec2<bool>(global0.a, global0.d), !vec2<bool>(global0.a, global0.a), !vec2<bool>(global0.a, true))), global0.b, ~select(~var_1.yz, vec2<u32>(abs(36462u), abs(var_1.x)), vec2<bool>(global0.a, false)), global0.a, firstTrailingBit(select(vec3<i32>(-52875i, 1i, abs(9621i)), var_0.zzw, vec3<bool>(global0.a, !global0.a, global0.a))));
    var var_3 = var_2;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.c))) * _wgslsmith_f_op_f32(f32(-1f) * -568f)) >= _wgslsmith_f_op_f32(round(var_3.b.c));
    return select(!(!vec3<bool>(!var_4, true, var_3.b.b <= -1006f)), vec3<bool>(var_4, !any(select(vec4<bool>(global0.d, true, true, false), vec4<bool>(var_3.d, true, true, var_2.d), vec4<bool>(true, true, true, global0.d))), firstTrailingBit(reverseBits(var_3.b.d)) < countOneBits(abs(-1i))), vec3<bool>(any(!(!vec3<bool>(global0.a, var_3.d, global0.d))), all(!(!vec3<bool>(true, true, var_2.a))), (true || any(vec4<bool>(false, global0.d, var_4, var_3.a))) | var_3.a));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: f32) -> vec4<u32> {
    var var_0 = min(1u, 0u);
    var var_1 = Struct_2(any(func_3()), Struct_1(_wgslsmith_div_vec4_u32(global0.b.a & _wgslsmith_mod_vec4_u32(arg_1, vec4<u32>(arg_1.x, 11030u, u_input.d.x, 0u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1, arg_1), global0.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(260f)) * _wgslsmith_div_f32(-341f, global0.b.c)) * arg_2), -1288f, arg_0.x, select(u_input.d, _wgslsmith_add_vec2_u32(~vec2<u32>(0u, arg_1.x), vec2<u32>(u_input.b, arg_1.x) ^ vec2<u32>(36361u, 36095u)), any(!vec4<bool>(global0.a, global0.a, global0.d, global0.d)))), ~min(abs(abs(u_input.d)), max(u_input.d, vec2<u32>(44753u, 5093u))), !select(global0.c.x < global0.b.a.x, arg_0.x < -6403i, true), arg_0.xzy);
    var_0 = 34932u;
    var_0 = 0u;
    let var_2 = var_1.b.a;
    return ~_wgslsmith_sub_vec4_u32(~global0.b.a, ~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.c.x, arg_1.x, global0.c.x, 74952u) | arg_1, var_1.b.a));
}

fn func_1(arg_0: Struct_3) -> u32 {
    global0 = arg_0.a;
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(max(66295u, 4294967295u), u_input.d.x), max(min(65439u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), arg_0.e.zx)), _wgslsmith_dot_vec4_u32(func_2(vec4<i32>(u_input.c, global0.e.x, 2147483647i, -1i), vec4<u32>(70167u, 41387u, 4294967295u, arg_0.a.b.e.x), 924f), arg_0.a.b.a))), _wgslsmith_sub_u32(u_input.d.x, 1u), 18580u, 0u);
    global0 = arg_0.a;
    var var_1 = arg_0.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b.c * arg_0.a.b.c))), 352f, true)), _wgslsmith_f_op_f32(max(-1377f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-293f + -380f)))))));
    return reverseBits(u_input.b ^ _wgslsmith_mod_u32(select(global0.c.x >> (0u % 32u), ~4294967295u, arg_0.c.x), arg_0.d));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: bool) -> Struct_2 {
    global0 = Struct_2(arg_2, Struct_1(firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(global0.c.x, 1u, global0.c.x, 4294967295u), _wgslsmith_mod_vec4_u32(global0.b.a, global0.b.a))), _wgslsmith_f_op_f32(-global0.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1062f)) - global0.b.b), min(min(abs(-1i), global0.b.d >> (52924u % 32u)), u_input.e.x), _wgslsmith_sub_vec2_u32(~(vec2<u32>(arg_1.x, 0u) | u_input.d), global0.c)), vec2<u32>(_wgslsmith_mult_u32(arg_0.x, arg_1.x), 48439u), global0.d && !global0.a, vec3<i32>(global0.e.x << (~arg_1.x % 32u), abs(~firstLeadingBit(-11966i)), _wgslsmith_clamp_i32(-firstLeadingBit(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.e.x, global0.e.x, u_input.e.x) >> (vec4<u32>(48019u, 4419u, arg_1.x, global0.b.e.x) % vec4<u32>(32u)), vec4<i32>(global0.e.x, global0.e.x, 1i, u_input.c) ^ vec4<i32>(global0.e.x, -5823i, -2147483647i, global0.b.d)), 0i)));
    var var_0 = Struct_2(any(vec3<bool>(true, !(!global0.d), true)), global0.b, _wgslsmith_sub_vec2_u32(arg_0.zy, ~(vec2<u32>(global0.c.x, 61636u) & _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(arg_0.x, 21421u)))), all(select(vec2<bool>(all(vec4<bool>(global0.a, global0.a, arg_2, false)), global0.b.b <= global0.b.b), select(vec2<bool>(true, global0.d), func_3().zy, func_3().xy), global0.a)), global0.e);
    var var_1 = 5352u;
    let var_2 = global0.b;
    global0 = Struct_2(any(vec4<bool>(true == any(vec4<bool>(true, var_0.d, true, global0.d)), var_0.a || false, all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-global0.b.c) >= -226f)), Struct_1(func_2(-(vec4<i32>(var_2.d, 33429i, var_0.b.d, 13159i) << (var_0.b.a % vec4<u32>(32u))), abs(abs(global0.b.a)), -988f), 1353f, -252f, _wgslsmith_mult_i32(var_2.d, ~(~var_0.e.x)), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, global0.b.a.x), var_0.b.e), _wgslsmith_div_u32(1u, arg_0.x))), vec2<u32>(1u, ~0u | (arg_1.x << (var_0.c.x % 32u))) << ((vec2<u32>(firstLeadingBit(17777u), ~var_0.b.a.x) >> (select(arg_0.yx, vec2<u32>(54016u, var_0.c.x), !vec2<bool>(arg_2, var_0.a)) % vec2<u32>(32u))) % vec2<u32>(32u)), !arg_2, ~(-u_input.e));
    return Struct_2(!(!any(vec4<bool>(global0.d, var_0.a, true, true)) || true), Struct_1(vec4<u32>(_wgslsmith_mod_u32(min(global0.b.a.x, 1u), 74886u), global0.c.x, abs(~global0.b.e.x), countOneBits(u_input.d.x)), -494f, 142f, _wgslsmith_div_i32(-2147483647i, -18427i), vec2<u32>(reverseBits(arg_1.x), ~(~arg_1.x))), vec2<u32>(~(~var_2.e.x), 98485u), all(!(!select(vec4<bool>(true, false, var_0.d, var_0.d), vec4<bool>(var_0.a, global0.d, global0.d, false), vec4<bool>(global0.d, arg_2, global0.a, global0.d)))), global0.e);
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    global0 = arg_0;
    global0 = arg_0;
    return Struct_3(arg_0, Struct_1(max(_wgslsmith_add_vec4_u32(arg_0.b.a, arg_0.b.a | global0.b.a), ~(arg_0.b.a ^ arg_0.b.a)), global0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b) - arg_0.b.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1289f)) + _wgslsmith_f_op_f32(arg_0.b.c + -781f))), countOneBits(1i) ^ max(-2147483647i, -u_input.a), func_2(select(vec4<i32>(-25718i, 0i, arg_0.b.d, 1i), vec4<i32>(-28661i, 2147483647i, u_input.c, -1i), arg_0.d), vec4<u32>(u_input.b, global0.b.e.x, arg_0.c.x, global0.b.a.x), func_4(arg_0.b.a.zyx, global0.b.a.xwz, arg_0.d).b.c).wx | ~(~vec2<u32>(4294967295u, 0u))), func_3().yy, 4294967295u, global0.b.a.zwx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(abs(~global0.b.a.wwx), vec3<u32>(u_input.d.x, firstTrailingBit(~6274u), ~func_1(Struct_3(Struct_2(global0.d, global0.b, vec2<u32>(1u, u_input.b), global0.d, u_input.e), global0.b, vec2<bool>(false, true), 56515u, vec3<u32>(1u, u_input.d.x, 4294967295u)))), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.b.d, ~23943i, _wgslsmith_div_i32(abs(var_0.b.d), max(countOneBits(-33829i), _wgslsmith_add_i32(global0.b.d, 0i)))), global0.b.a, _wgslsmith_div_vec2_f32(vec2<f32>(-876f, _wgslsmith_f_op_f32(-global0.b.b)), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.c), var_0.b.b)));
}

