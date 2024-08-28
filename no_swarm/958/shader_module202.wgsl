struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = select(vec3<bool>(((2147483647i >> (u_input.a.x % 32u)) != countOneBits(0i)) | (arg_0 && arg_0), true, false), !vec3<bool>(arg_0, true, arg_0), arg_0);
    var var_1 = Struct_2(arg_2.a.x, _wgslsmith_sub_i32(30014i & (~(-14068i) & _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, 2147483647i))), ~(-select(0i, 57256i, arg_0))), vec4<u32>(~_wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a.x), 32565u, _wgslsmith_add_u32(50768u, u_input.a.x) ^ u_input.a.x, 1u));
    var_0 = !vec3<bool>(true, true, select(true, false, arg_0) == arg_0);
    let var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(~firstTrailingBit(~vec3<i32>(-8470i, var_1.b, -1i)), countOneBits(_wgslsmith_sub_vec3_i32(-vec3<i32>(var_1.b, var_1.b, -53737i), reverseBits(vec3<i32>(var_1.b, var_1.b, var_1.b))))), _wgslsmith_mod_i32(-19619i, 1i));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-689f)), _wgslsmith_f_op_f32(f32(-1f) * -1147f)), var_1.a))), ~select(countOneBits(select(2147483647i, var_2.x, var_0.x)), ~var_1.b, all(vec3<bool>(true, true, true))), var_1.c);
    return min(~(~(~u_input.a.yzz) & ~firstLeadingBit(u_input.a.zxw)), ~vec3<u32>(4294967295u, 14899u, ~var_3.c.x) >> ((abs(abs(vec3<u32>(var_3.c.x, 4294967295u, 4294967295u))) & var_1.c.ywy) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(func_3(arg_1.x, vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), 1040f), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -359f, arg_0.x, arg_0.x) - vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1000f)), _wgslsmith_f_op_f32(2096f - arg_0.x))), func_3(false & arg_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.xx))), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, 2481f, 367f, 600f), vec4<f32>(990f, 968f, arg_0.x, arg_0.x))), -676f))), ~abs(u_input.a.wxw));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-296f, arg_0.x))))), -779f, -993f, arg_0.x), -150f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(var_1.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1384f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))))));
    let var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-335f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + var_1.a.x), _wgslsmith_f_op_f32(floor(635f)))), _wgslsmith_f_op_f32(sign(306f))), arg_2, u_input.a);
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(select(-356f, arg_0.x, true))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x + -172f), _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-646f)), _wgslsmith_f_op_f32(round(var_3.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) * _wgslsmith_f_op_f32(max(var_3.a, _wgslsmith_f_op_f32(f32(-1f) * -1248f)))) * arg_0.x));
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> u32 {
    let var_0 = min(min(vec4<i32>(_wgslsmith_sub_i32(arg_0.b, -1i), -30377i, firstLeadingBit(-3333i), abs(-2147483647i)) ^ select(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, arg_0.b, arg_0.b, -11934i), vec4<i32>(1i, 2147483647i, arg_0.b, arg_0.b)), ~vec4<i32>(0i, -1i, arg_0.b, arg_0.b), true), ~vec4<i32>(0i, ~(-32716i), -2147483647i ^ arg_0.b, i32(-1i) * -2147483647i)), vec4<i32>(arg_0.b >> ((~u_input.a.x << (_wgslsmith_mod_u32(arg_0.c.x, u_input.a.x) % 32u)) % 32u), _wgslsmith_sub_i32(reverseBits(28475i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(62463i, -2147483647i, arg_0.b, -1i), vec4<i32>(arg_0.b, -101794i, -23040i, arg_0.b)))), arg_0.b | 37030i, arg_0.b));
    let var_1 = arg_0;
    var var_2 = !select(vec2<bool>(false, -2390f >= _wgslsmith_f_op_f32(abs(arg_2))), vec2<bool>(true, any(vec4<bool>(false, false, true, false))), true);
    let var_3 = vec3<bool>(true, all(select(vec2<bool>(func_2(vec3<f32>(-796f, arg_1, 159f), vec4<bool>(var_2.x, true, true, var_2.x), -57556i, var_1.c.x), false), vec2<bool>(false & var_2.x, select(true, true, true)), all(vec4<bool>(var_2.x, var_2.x, var_2.x, false)))), false);
    var_2 = !vec2<bool>(all(select(!vec4<bool>(var_2.x, false, false, true), vec4<bool>(false, var_3.x, var_3.x, var_3.x), true)), ~(~arg_0.c.x) >= _wgslsmith_div_u32(var_1.c.x, 47612u));
    return arg_0.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = !vec2<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))));
    var var_1 = arg_0;
    var_0 = !select(vec2<bool>(true, !var_0.x), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x))), any(!(!vec2<bool>(true, var_0.x))));
    var var_2 = Struct_1(vec4<f32>(1911f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b))), 102f)), _wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-arg_0.b))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -130f))), var_1.b) + 743f));
    let var_3 = _wgslsmith_mult_vec3_u32(~vec3<u32>(~reverseBits(37473u), 4588u, 4925u), u_input.a.yyw);
    return true & any(vec2<bool>(any(!vec4<bool>(false, var_0.x, false, var_0.x)), false));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 16629i), min(vec2<i32>(-1i, -2147483647i), firstTrailingBit(vec2<i32>(-1i, -50674i)) >> (u_input.a.yz % vec2<u32>(32u))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(min(867f, -189f)), -firstTrailingBit(~var_0), vec4<u32>(1u, u_input.a.x, _wgslsmith_dot_vec3_u32(min(u_input.a.wxz, vec3<u32>(0u, u_input.a.x, u_input.a.x)), arg_1.zxw) >> ((~u_input.a.x >> (16088u % 32u)) % 32u), reverseBits(abs(54035u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(1u, arg_1.x)))));
    let var_2 = Struct_2(926f, -2147483647i ^ var_0, countOneBits(var_1.c));
    let var_3 = true;
    var var_4 = firstTrailingBit(min(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(52933i, -2785i), vec2<i32>(-23051i, 3349i)), firstTrailingBit(vec2<i32>(var_1.b, 2147483647i)) << (var_2.c.xx % vec2<u32>(32u))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!func_4(Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(365f, 1391f, -107f, -149f))), _wgslsmith_f_op_f32(f32(-1f) * -122f)), func_1(Struct_2(1095f, -1i, vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 4294967295u)), _wgslsmith_div_f32(538f, -334f), _wgslsmith_f_op_f32(step(-258f, -967f)))), countOneBits(~abs(countOneBits(u_input.a))));
    let var_1 = -vec2<i32>(-39243i, firstLeadingBit(var_0.b) >> (_wgslsmith_add_u32(0u, reverseBits(4824u)) % 32u));
    let var_2 = func_5(true, u_input.a);
    let var_3 = _wgslsmith_mod_vec3_u32(var_2.c.zzw, _wgslsmith_add_vec3_u32(~func_3(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-146f, var_0.a)), Struct_1(vec4<f32>(-403f, 864f, 126f, var_0.a), -827f)), countOneBits(min(u_input.a.wyy, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_2.c.x, var_2.c.x), vec3<u32>(0u, var_2.c.x, 4294967295u))))));
    let var_4 = 857f;
    var var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a, var_4, var_2.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-779f, 918f, 558f, 697f) - vec4<f32>(-317f, var_2.a, var_4, var_2.a)))) - vec4<f32>(var_0.a, _wgslsmith_f_op_f32(abs(-2240f)), _wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(step(var_4, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 198f);
    let var_6 = var_2;
    var var_7 = func_5(false, vec4<u32>(_wgslsmith_dot_vec4_u32(~var_6.c, var_2.c), u_input.a.x, var_0.c.x >> (_wgslsmith_div_u32(min(var_6.c.x, var_6.c.x), var_6.c.x) % 32u), ~var_6.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-577f, _wgslsmith_f_op_f32(-var_2.a), var_2.a, 848f), -40725i, -(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b, 1i, var_6.b), _wgslsmith_mult_vec3_i32(vec3<i32>(var_6.b, 1i, var_7.b), vec3<i32>(var_0.b, var_1.x, 1i))) & ~_wgslsmith_add_vec3_i32(vec3<i32>(var_2.b, var_7.b, var_2.b), vec3<i32>(-2147483647i, -23306i, var_0.b))), _wgslsmith_sub_u32(var_3.x, func_3(all(vec3<bool>(true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(ceil(-957f)), _wgslsmith_f_op_f32(var_5.b + var_0.a)), Struct_1(_wgslsmith_f_op_vec4_f32(-var_5.a), -856f)).x), var_6.a);
}

