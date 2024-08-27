struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_add_vec3_u32(~((vec3<u32>(u_input.c, 4294967295u, 1u) | vec3<u32>(53234u, 1u, u_input.c)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 53798u, 0u), vec3<u32>(u_input.c, u_input.c, 46868u))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 39406u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, u_input.c, u_input.c))), abs(abs(vec3<u32>(1u, u_input.c, 4294967295u))))));
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(10851u, ~var_0.a.x), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 12818u), var_0.a.zx), firstLeadingBit(~var_0.a.zy)) & select(var_0.a.xy, select(var_0.a.zz, vec2<u32>(u_input.c, 4294967295u), true) << (_wgslsmith_clamp_vec2_u32(var_0.a.xz, var_0.a.xy, vec2<u32>(var_0.a.x, u_input.c)) % vec2<u32>(32u)), vec2<bool>(true, true)), _wgslsmith_mod_i32(-select(~(-63894i), -8804i, false), -31139i));
    var var_2 = Struct_1(var_1.a, ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, ~8862i), 2147483647i));
    var var_3 = Struct_1(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 68610u, var_0.a.x, 1u), vec4<u32>(u_input.c, 25664u, var_0.a.x, 117676u)), ~vec4<u32>(var_1.a.x, var_0.a.x, 17523u, 52842u)), _wgslsmith_mod_u32(~1789u, 106890u)), _wgslsmith_mod_u32(~u_input.c, u_input.c >> (u_input.c % 32u)) | ~1u), var_2.b);
    let var_4 = var_0;
    return -224f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1256f, -331f, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-717f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-175f, 1310f)), _wgslsmith_f_op_f32(f32(-1f) * -1625f))))));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1566f, var_0)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0, 484f), vec2<f32>(var_0, 105f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(770f, var_0), vec2<f32>(var_0, var_0), vec2<bool>(false, true)))))))));
    var var_3 = Struct_1(~firstLeadingBit(~(~vec2<u32>(var_1.a.x, var_1.a.x))), var_1.b);
    var var_4 = true;
    return u_input.c;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = 49844u;
    let var_1 = arg_0;
    var_0 = ~1u;
    var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(u_input.c, 0u), func_2(Struct_1(vec2<u32>(u_input.c, 741u), u_input.d), Struct_1(vec2<u32>(u_input.c, u_input.c), 2147483647i)), ~0u), select(max(~vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(0u, 17530u, 9907u) | vec3<u32>(u_input.c, 25526u, u_input.c)), firstLeadingBit(firstLeadingBit(vec3<u32>(41419u, 0u, u_input.c))), vec3<bool>(true, true, true))) >> (~u_input.c % 32u);
    var_0 = ~u_input.c ^ u_input.c;
    return Struct_2(select(~max(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(u_input.c, u_input.c, 1u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4095u, 0u, 0u), vec3<u32>(u_input.c, 88897u, 4294967295u)), select(!vec3<bool>(var_1, var_1, arg_0), vec3<bool>(true, true, true), all(vec2<bool>(false, arg_0)))) << (vec3<u32>(_wgslsmith_mult_u32(26042u, ~4294967295u), 0u, 0u) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1402f))), _wgslsmith_f_op_f32(round(-1308f))));
    var var_1 = func_1(true);
    let var_2 = -317f;
    let var_3 = -(vec2<i32>(arg_1 >> (~arg_0.a.x % 32u), _wgslsmith_add_i32(1i | u_input.d, u_input.b)) >> (min(~arg_2.a.xz, ~vec2<u32>(19619u, arg_2.a.x) << ((vec2<u32>(arg_0.a.x, u_input.c) & vec2<u32>(4294967295u, arg_2.a.x)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return arg_2;
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(68110u, 15497u), ~var_0.a.x), 1u) ^ var_0.a.x;
    var_0 = func_4(Struct_2(~func_1(true).a), ~_wgslsmith_mod_i32(reverseBits(abs(u_input.d)), 1i), func_4(Struct_2(firstLeadingBit(var_0.a)), 2147483647i, arg_0));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1490f - 1003f))), -489f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1030f, -1424f), vec2<f32>(-410f, 210f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2479f, 460f)))))));
    var var_3 = !select(vec4<bool>(_wgslsmith_div_i32(8363i, u_input.d) >= 0i, all(vec2<bool>(false, true)), false, true), vec4<bool>(true, ~51980u >= arg_0.a.x, false, select(false, 264f < var_2.x, any(vec4<bool>(false, true, false, false)))), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)));
    return select(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-50849i, u_input.a) & -2147483647i, _wgslsmith_div_i32(-2147483647i, min(-2147483647i, u_input.b)), u_input.b), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -17322i, 17166i), vec4<i32>(-896i, u_input.d, -1i, -24226i)) | u_input.d), (u_input.a >= _wgslsmith_add_i32(u_input.a, u_input.b)) == !all(vec2<bool>(false, false))) ^ _wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(~u_input.d, firstLeadingBit(u_input.b), _wgslsmith_mod_i32(u_input.a, 20542i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<u32>(1u << (~(~u_input.c) % 32u), ~(~u_input.c)), func_5(func_4(Struct_2(max(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(u_input.c, 1u, 4294967295u))), _wgslsmith_sub_i32(u_input.a, max(u_input.b, u_input.a)), func_1(select(false, true, true)))));
    var var_1 = Struct_1(var_0.a, 1441i);
    let var_2 = 2147483647i;
    var var_3 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(u_input.c, _wgslsmith_sub_u32(var_0.a.x, var_1.a.x), ~1422u) | var_1.a.x, min(var_0.a.x, abs(var_0.a.x))), ~(~var_0.b ^ abs(2147483647i)));
    var_3 = Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(682u, 54140u) >> (var_0.a % vec2<u32>(32u)), ~(~var_1.a)) << (var_0.a % vec2<u32>(32u)), i32(-1i) * -29180i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, ~var_3.a.x), vec2<i32>(abs(-75028i), ~14401i));
}

