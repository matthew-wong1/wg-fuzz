struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = ~vec3<u32>(1u, u_input.c.x, u_input.c.x) << (_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(min(~vec3<u32>(9502u, u_input.c.x, 13577u), vec3<u32>(46663u, u_input.c.x, 0u) ^ vec3<u32>(u_input.c.x, 22887u, 4294967295u)), ~firstLeadingBit(vec3<u32>(0u, u_input.c.x, 4294967295u)), vec3<u32>(u_input.c.x, ~u_input.c.x, min(u_input.c.x, 4294967295u))), select(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, 1u, 1810u), vec3<u32>(14474u, 0u, u_input.c.x) & vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) & vec3<u32>(u_input.c.x, u_input.c.x, 38670u), true)) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1251f)) - _wgslsmith_f_op_f32(1150f - 1471f));
    var var_2 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, true)), any(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))), vec3<bool>(!any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), !any(vec3<bool>(true, true, true)), all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)))), !(true || select(true, true, true)));
    let var_3 = Struct_1(vec4<u32>(var_0.x, max(~u_input.c.x ^ u_input.c.x, u_input.c.x), 41054u, u_input.c.x), ~vec4<u32>(u_input.c.x ^ u_input.c.x, var_0.x, firstLeadingBit(0u), u_input.c.x) >> (vec4<u32>(u_input.c.x, ~32931u, var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), _wgslsmith_clamp_vec2_u32(var_0.zy, u_input.c, var_0.zy))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1600f, -924f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-661f, 2581f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-137f)), _wgslsmith_f_op_f32(f32(-1f) * -712f), var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2636f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(428f, 1484f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f)), _wgslsmith_f_op_f32(-1863f - _wgslsmith_f_op_f32(select(2068f, -103f, var_2.x))), 464f)), select(var_2.yz, vec2<bool>(true, true), true), -vec3<i32>(0i, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-39698i, -32064i, u_input.a, 1i), u_input.b << (vec4<u32>(22573u, 1545u, 0u, 33029u) % vec4<u32>(32u)))));
    var_1 = var_3.c.x;
    return _wgslsmith_div_u32(~(~var_0.x), _wgslsmith_add_u32(1u | var_3.a.x, abs(49380u)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = vec2<u32>(u_input.c.x, ~func_3());
    let var_1 = any(vec3<bool>(all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false), u_input.c.x <= 1u)), select(!all(vec2<bool>(false, false)), true, true), !all(vec3<bool>(true, false, false))));
    let var_2 = !select(select(!vec4<bool>(var_1, var_1, var_1, var_1), !(!vec4<bool>(var_1, false, var_1, var_1)), true), select(!select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(false, var_1, var_1, false), false), vec4<bool>(true, false, !var_1, !var_1), (var_1 & false) != any(vec4<bool>(var_1, var_1, var_1, var_1))), true);
    let var_3 = var_2;
    let var_4 = Struct_2(Struct_1(~firstTrailingBit(vec4<u32>(u_input.c.x, 71874u, var_0.x, 1u)) << (abs(vec4<u32>(var_0.x, 1u, u_input.c.x, 4294967295u) | vec4<u32>(0u, var_0.x, 56700u, 4294967295u)) % vec4<u32>(32u)), ~vec4<u32>(44744u, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x), _wgslsmith_add_u32(0u, u_input.c.x), _wgslsmith_div_u32(var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(121f, 1836f, 847f, 1066f) * vec4<f32>(984f, -281f, 117f, -1800f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-262f, -129f, 887f, -530f))))), var_2.wz, _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, -1638i, -1i), arg_0.xyy), select(vec3<i32>(-33039i, arg_0.x, 16068i), arg_0.zxw, true)) | ~firstLeadingBit(vec3<i32>(0i, arg_0.x, 84017i))), Struct_1(~vec4<u32>(firstLeadingBit(u_input.c.x), ~12328u, ~var_0.x, 461u), select(vec4<u32>(4294967295u, var_0.x, countOneBits(4294967295u), max(var_0.x, var_0.x)), vec4<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), var_0), ~0u, _wgslsmith_div_u32(1u, var_0.x)), var_1), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(201f, _wgslsmith_f_op_f32(ceil(-999f)), _wgslsmith_f_op_f32(f32(-1f) * -897f), _wgslsmith_f_op_f32(abs(1653f))))), !var_2.yz, countOneBits(~(-vec3<i32>(arg_0.x, u_input.a, arg_0.x)))), Struct_1(~(~vec4<u32>(0u, var_0.x, 0u, 43349u) | ~vec4<u32>(1u, 0u, 22305u, var_0.x)), vec4<u32>(~2164u, 28419u, 60369u, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-730f, -616f, -2812f, 165f)))), vec2<bool>(false, var_3.x != var_1), max(~_wgslsmith_div_vec3_i32(arg_0.wwz, u_input.b.wxx), _wgslsmith_mod_vec3_i32(arg_0.yxx, vec3<i32>(8307i, arg_0.x, u_input.b.x)))), -681f);
    return var_4;
}

fn func_1() -> Struct_1 {
    var var_0 = -543f;
    var_0 = 2214f;
    let var_1 = func_2(abs(u_input.b));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), Struct_1(_wgslsmith_div_vec4_u32(countOneBits(~vec4<u32>(6041u, u_input.c.x, 18886u, 1u)), vec4<u32>(0u, 28746u, u_input.c.x, u_input.c.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u)) % vec4<u32>(32u))), ~(_wgslsmith_add_vec4_u32(vec4<u32>(83187u, u_input.c.x, 7096u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 91180u, 0u)) << (~vec4<u32>(8870u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, -237f, 1713f, 2128f)) + _wgslsmith_f_op_vec4_f32(max(func_2(u_input.b).b.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-350f, 510f, 279f, 995f))))), vec2<bool>(true, true), u_input.b.wwx >> (vec3<u32>(26111u, ~38574u, 1u) % vec3<u32>(32u))), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), _wgslsmith_sub_u32(0u, u_input.c.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, 32952u, 4294967295u) ^ vec4<u32>(u_input.c.x, 12818u, 4294967295u, u_input.c.x), func_2(vec4<i32>(0i, 47420i, -1i, 66578i)).b.a), ~vec4<u32>(8949u, u_input.c.x, 4294967295u, u_input.c.x) | firstTrailingBit(vec4<u32>(u_input.c.x, 45198u, u_input.c.x, 96422u))), vec4<u32>(~u_input.c.x, u_input.c.x, max(func_1().a.x, 3967u), 151u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))) + vec4<f32>(_wgslsmith_f_op_f32(749f + -618f), _wgslsmith_f_op_f32(ceil(578f)), _wgslsmith_f_op_f32(1000f + 539f), -1677f)), vec2<bool>(true, !select(true, false, true)), ~(~select(u_input.b.zwz, u_input.b.xwx, vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1140f + _wgslsmith_f_op_f32(118f + _wgslsmith_f_op_f32(f32(-1f) * -568f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f) * -1691f), _wgslsmith_f_op_f32(-768f * -1932f), false))));
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(var_0.c.b.x, 4294967295u, var_0.c.a.x, 65688u), var_0.a.b), vec4<u32>(var_0.c.b.x, 106194u, 32157u, u_input.c.x) | var_0.c.b), vec4<u32>(func_3(), abs(u_input.c.x), 4294967295u, u_input.c.x)), ~vec4<u32>(26232u, u_input.c.x, u_input.c.x & u_input.c.x, u_input.c.x >> (0u % 32u)), _wgslsmith_f_op_vec4_f32(-var_0.b.c), func_2(-min(u_input.b, u_input.b)).a.d, -reverseBits(-vec3<i32>(-1i, u_input.a, 0i))), func_1(), -700f);
    var_0 = Struct_2(func_1(), var_0.b, func_1(), var_0.d);
    var var_1 = func_2(vec4<i32>(_wgslsmith_mod_i32(u_input.a, -2147483647i), ~78313i, 17477i & u_input.b.x, abs(~(-5199i)) | -select(-2618i, 0i, var_0.c.d.x))).a;
    var_1 = Struct_1(vec4<u32>(0u, _wgslsmith_clamp_u32(var_1.b.x, ~1u, ~var_0.c.a.x), 38214u, 12240u) | ~(~vec4<u32>(1u, 4294967295u, var_1.a.x, 1u)), ~(~func_2(-u_input.b).c.b), _wgslsmith_f_op_vec4_f32(ceil(var_1.c)), select(var_1.d, !vec2<bool>(var_1.d.x, true), true), u_input.b.yzx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(45117u, 14976u), var_1.a.xx), func_1().b.yw), _wgslsmith_add_vec2_u32(var_0.b.b.ww, u_input.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(func_2(vec4<i32>(7983i, -176i, -11959i, var_1.e.x) | u_input.b).a.b.x, 22028u, func_1().b.x, 46818u), vec4<u32>(54843u, min(abs(4294967295u), _wgslsmith_sub_u32(var_1.b.x, var_1.b.x)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.a.x, var_0.c.b.x), ~12567u), u_input.c.x)));
}

