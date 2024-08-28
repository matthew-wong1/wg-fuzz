struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: vec3<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    return -2001f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> bool {
    let var_0 = min(reverseBits(~(~firstTrailingBit(vec3<u32>(27720u, 4294967295u, 0u)))), _wgslsmith_clamp_vec3_u32(abs(abs(vec3<u32>(1u, 4294967295u, u_input.a))) ^ abs(vec3<u32>(u_input.a, 37715u, arg_1.c.x)), arg_1.c, arg_1.c));
    let var_1 = Struct_1(abs(vec3<i32>(2147483647i, _wgslsmith_mult_i32(-19117i, -54082i >> (arg_0.b % 32u)), ~(i32(-1i) * -2147483647i))), _wgslsmith_add_u32(arg_1.c.x, _wgslsmith_mod_u32(u_input.a, max(88025u, u_input.b)) >> ((~arg_0.b ^ _wgslsmith_add_u32(var_0.x, 0u)) % 32u)));
    let var_2 = Struct_4(vec4<bool>(!(!arg_1.b.x) | false, arg_2, ~(~arg_0.b) == (~arg_0.b & 4294967295u), _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1.a, arg_0.a.x), _wgslsmith_div_i32(arg_1.a, -16241i)) == firstLeadingBit(~2147483647i)), 42037u, vec3<u32>(var_0.x, countOneBits(0u), u_input.b), Struct_3(var_1));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -468f))), _wgslsmith_f_op_f32(func_2(var_2.d, Struct_2(var_2.d.a.a.x, vec3<bool>(arg_1.b.x, var_2.a.x, true), var_2.c), arg_1)))) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(var_2.d.a.a, u_input.a)), arg_1, arg_1))));
    let var_4 = 1u;
    return false;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1984f, -1118f)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -306f), -1000f, var_0);
    var var_2 = true;
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-258f * 139f), _wgslsmith_f_op_f32(1179f * _wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(vec3<i32>(0i, 16358i, -2147483647i), arg_1.x)), Struct_2(-17798i, vec3<bool>(true, arg_2.b.x, arg_2.b.x), vec3<u32>(2849u, 7464u, arg_1.x)), Struct_2(arg_2.a, arg_2.b, vec3<u32>(18942u, 4294967295u, 69189u))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.x, var_0))))), _wgslsmith_f_op_f32(-var_0)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -1933f) * vec3<f32>(var_1.x, -451f, var_0)))))))));
    return Struct_4(vec4<bool>(arg_2.b.x, false, arg_2.b.x, func_3(Struct_1(vec3<i32>(40855i, arg_2.a, arg_2.a) << (vec3<u32>(arg_0.x, arg_0.x, 39261u) % vec3<u32>(32u)), max(arg_0.x, arg_2.c.x)), Struct_2(arg_2.a, arg_2.b, arg_2.c >> (vec3<u32>(1u, 48166u, arg_2.c.x) % vec3<u32>(32u))), arg_2.b.x)), ~(arg_0.x ^ ~u_input.b), arg_0.xyy, Struct_3(Struct_1(vec3<i32>(arg_2.a, arg_2.a, _wgslsmith_mult_i32(arg_2.a, -33466i)), 47672u ^ firstTrailingBit(24789u))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = true;
    var var_1 = arg_2;
    var var_2 = func_1(vec4<u32>(26165u, min(_wgslsmith_sub_u32(1u, countOneBits(arg_0.c.x)), var_1.c.x), ~var_1.c.x, reverseBits(var_1.c.x) & ~50497u), vec4<u32>(u_input.a, _wgslsmith_div_u32(1u, min(var_1.c.x, arg_0.d.a.b)) >> (~var_1.c.x % 32u), countOneBits(_wgslsmith_div_u32(max(1u, 4294967295u), 1u)), 69472u), Struct_2(-(~select(arg_2.a, -1i, true)), vec3<bool>(false, ~arg_0.d.a.a.x == select(var_1.a, 2147483647i, arg_0.a.x), false), var_1.c));
    var_1 = arg_2;
    var_1 = Struct_2(~_wgslsmith_clamp_i32(var_2.d.a.a.x, -2147483647i, 2147483647i), !select(arg_0.a.zyw, !vec3<bool>(arg_0.a.x, var_2.a.x, var_2.a.x), true), arg_0.c);
    return select(arg_0.a.wxw, vec3<bool>(all(select(func_1(vec4<u32>(4294967295u, u_input.b, var_1.c.x, 28849u), vec4<u32>(4294967295u, 0u, arg_2.c.x, arg_2.c.x), Struct_2(arg_0.d.a.a.x, var_2.a.wyw, vec3<u32>(arg_2.c.x, arg_0.d.a.b, 3556u))).a, select(vec4<bool>(arg_2.b.x, arg_0.a.x, var_1.b.x, true), vec4<bool>(true, var_0, true, var_0), true), !var_1.b.x)), var_1.b.x, arg_0.a.x), select(true, any(vec2<bool>(true, true)), !((0i > arg_2.a) & true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(true && any(vec2<bool>(false, false)))));
    var var_1 = select(!vec4<bool>(var_0, all(!vec4<bool>(false, true, var_0, false)), all(vec4<bool>(true, var_0, true, false)), var_0), !vec4<bool>(false, !var_0, var_0, !(!var_0)), !vec4<bool>(any(!vec4<bool>(true, var_0, true, var_0)), all(select(vec3<bool>(false, var_0, true), vec3<bool>(false, true, var_0), true)), true, true));
    var_1 = vec4<bool>(true, var_0, true, false);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-334f + 108f) - _wgslsmith_div_f32(1211f, 1219f)), -272f, false)), _wgslsmith_f_op_f32(trunc(-556f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1671f, -1641f, var_0)) - 1f), 362f) * -1173f));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(-831f)), var_2.x);
    var var_3 = func_4(func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(2372u, u_input.b, u_input.a, u_input.a), ~vec4<u32>(u_input.b, 36083u, 1u, u_input.b)) << (~vec4<u32>(71266u, u_input.a, u_input.b, u_input.b) % vec4<u32>(32u)), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, u_input.a, u_input.b), vec4<u32>(4294967295u, 0u, 117758u, 0u), vec4<u32>(69258u, 0u, u_input.a, 1u)) >> (min(vec4<u32>(u_input.a, u_input.b, u_input.b, 67117u), vec4<u32>(61793u, 42237u, u_input.b, 11191u)) % vec4<u32>(32u))), Struct_2(2147483647i, vec3<bool>(true, !var_0, var_0), ~(~vec3<u32>(u_input.a, 3767u, u_input.b)))), var_1.xxw, Struct_2(-9624i, select(var_1.zzz, !vec3<bool>(true, var_0, var_0), !(!vec3<bool>(false, false, var_0))), vec3<u32>(~(u_input.a << (u_input.a % 32u)), ~42998u, countOneBits(1u))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-((vec2<i32>(0i, 1i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) >> (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u)))), -2909i);
}

