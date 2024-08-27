struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec3<i32> {
    let var_0 = u_input.c.x;
    let var_1 = vec4<bool>(all(!select(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, true, arg_0)), !vec3<bool>(arg_0, arg_0, arg_0), !arg_0)), any(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0 | arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), !vec2<bool>(arg_0, arg_0)))), arg_0, ~u_input.d.x > _wgslsmith_sub_i32(u_input.d.x, 2147483647i));
    var var_2 = select(!(!var_1), var_1, select(var_1, select(var_1, !var_1, vec4<bool>(var_1.x, arg_0, true, true)), vec4<bool>(all(var_1.zzy), all(!vec4<bool>(var_1.x, true, arg_0, var_1.x)), u_input.a.x > ~49992u, var_1.x)));
    let var_3 = Struct_4(u_input.d.x);
    var var_4 = vec4<i32>(_wgslsmith_sub_i32(~(~0i), ~countOneBits(-1i)), reverseBits(i32(-1i) * -59590i), i32(-1i) * -15891i, ~2147483647i);
    return reverseBits(min(vec3<i32>(-33576i, reverseBits(var_4.x), var_4.x) & vec3<i32>(-25477i, select(22939i, var_3.a, true), u_input.d.x | var_4.x), vec3<i32>(min(_wgslsmith_div_i32(29863i, var_4.x), _wgslsmith_dot_vec2_i32(var_4.xz, u_input.d.zz)), ~39524i, _wgslsmith_dot_vec3_i32(reverseBits(var_4.zzx), vec3<i32>(0i, var_3.a, -3369i)))));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = Struct_2(!(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false))), !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), false));
    var var_1 = Struct_3(u_input.d.x, func_3(var_0.b.x, arg_0));
    var var_2 = var_0.a.wz;
    var_2 = var_0.a.zy;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - arg_0), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) * _wgslsmith_f_op_f32(-arg_0)))), true)) + 672f);
    return 12741u;
}

fn func_1(arg_0: Struct_4) -> vec3<f32> {
    let var_0 = -19855i << (min(u_input.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(u_input.c.x, u_input.e.x)), select(vec2<u32>(40502u, 46276u), u_input.a.xz, vec2<bool>(false, true))), ~(~u_input.e))) % 32u);
    let var_1 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -741f));
    var var_2 = -667f;
    var var_3 = ~vec3<u32>(var_1, func_2(_wgslsmith_f_op_f32(round(-861f))), _wgslsmith_dot_vec2_u32(u_input.c, max(u_input.e, u_input.a.yz))) | u_input.a;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(-829f)))) - _wgslsmith_f_op_f32(f32(-1f) * -866f)), -1170f);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1045f, -1537f, 1536f), vec3<f32>(-1038f, 1958f, 812f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(222f, 128f, -200f), vec3<f32>(-1000f, 666f, -1916f), true))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(floor(-165f)), _wgslsmith_f_op_f32(-1046f - -251f))))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = ~(~vec4<i32>(_wgslsmith_mod_i32(func_3(false, arg_0).x, arg_2.b.x), u_input.d.x, _wgslsmith_add_i32(u_input.d.x | arg_2.a, 1i ^ arg_2.a), firstLeadingBit(0i)));
    var_1 = min(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(-vec4<i32>(var_1.x, var_1.x, var_1.x, arg_2.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.a, u_input.d.x, -23549i, -25002i), vec4<i32>(var_1.x, -42168i, 2147483647i, 1i))), vec4<i32>(-2664i, u_input.d.x, -34213i, 10403i));
    var var_2 = 61733u;
    let var_3 = Struct_1(any(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, 0u >= u_input.e.x))), select(_wgslsmith_clamp_vec3_i32(-u_input.d, vec3<i32>(firstTrailingBit(arg_2.b.x), 2147483647i, _wgslsmith_add_i32(var_1.x, -1i)), u_input.d), u_input.d, vec3<bool>(any(vec3<bool>(true, false, true)), !all(vec3<bool>(false, false, true)), false)), false, false, (var_0.x > _wgslsmith_f_op_f32(f32(-1f) * -772f)) & !(false | (arg_3.x == arg_3.x)));
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32((vec4<u32>(arg_1.x, u_input.a.x, arg_1.x, 34473u) ^ vec4<u32>(1u, 2373u, u_input.b, 4294967295u)) | (vec4<u32>(arg_1.x, 37291u, u_input.a.x, 30791u) & vec4<u32>(0u, u_input.e.x, arg_1.x, arg_1.x)), abs(vec4<u32>(1u, arg_1.x, 1866u, 93457u)) ^ ~vec4<u32>(arg_1.x, 4294967295u, 0u, 1u)), ~vec4<u32>(0u, 20610u, 1u, arg_1.x)) & _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(arg_1.x, 7022u, arg_1.x, 10393u), vec4<u32>(4294967295u, u_input.e.x, 0u, arg_1.x)) >> (abs(vec4<u32>(0u, 37885u, 4294967295u, u_input.e.x)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_1.x, 4294967295u, u_input.e.x) << (vec4<u32>(arg_1.x, 4294967295u, arg_1.x, arg_1.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.e.x))), _wgslsmith_add_vec4_u32(vec4<u32>(~16721u, ~arg_1.x, arg_1.x, ~u_input.a.x), ~vec4<u32>(u_input.a.x, 13748u, 0u, 80686u) >> (~vec4<u32>(0u, 11790u, 1u, 21028u) % vec4<u32>(32u))));
    var_0 = max(firstTrailingBit(~vec4<u32>(68941u, 9998u, u_input.a.x, var_0.x)) | _wgslsmith_add_vec4_u32(abs(~vec4<u32>(0u, u_input.b, 94904u, 0u)), reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.a.x, arg_1.x), vec4<u32>(4294967295u, 88082u, 7884u, 0u)))), ~reverseBits(vec4<u32>(29746u, arg_1.x, 1u, max(0u, var_0.x))));
    var var_1 = arg_1.x;
    var var_2 = -1i;
    var var_3 = min(-vec2<i32>(arg_0.b.x ^ ~0i, i32(-1i) * -31567i), vec2<i32>(21096i, -2147483647i));
    return Struct_2(vec4<bool>(arg_0.d, true, -45034i != _wgslsmith_mult_i32(-var_3.x, u_input.d.x), select(false, false, true)), !(!select(vec3<bool>(arg_0.d, arg_0.e, arg_0.d), select(vec3<bool>(false, true, arg_0.e), vec3<bool>(false, false, arg_0.c), vec3<bool>(arg_0.c, true, true)), arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.d.x, -9466i);
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(~u_input.a.x) ^ abs(u_input.a.x >> (u_input.a.x % 32u)), _wgslsmith_add_u32(9494u, 1u)), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, 0u) ^ u_input.e) & _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 26415u)), _wgslsmith_mult_u32(u_input.e.x, ~u_input.c.x)));
    var_1 = _wgslsmith_dot_vec4_u32(select(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.e.x, 4294967295u, firstTrailingBit(u_input.a.x))), vec4<u32>(~42171u, u_input.c.x, u_input.b, u_input.e.x), true), vec4<u32>(u_input.c.x, 1u, u_input.b, 1u));
    var_1 = 4294967295u;
    let var_2 = func_5(func_4(-331f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(931f, -637f, 1458f))), _wgslsmith_f_op_vec3_f32(func_1(Struct_4(var_0.x))))))), Struct_3(var_0.x, u_input.d), select(vec2<u32>(24764u, u_input.c.x) >> (u_input.e % vec2<u32>(32u)), u_input.e, select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), true))), vec3<u32>(min(1u, 0u), firstLeadingBit(~u_input.c.x), 4691u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-671f + -1527f) * 581f)))));
    var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(~u_input.a | u_input.a, vec3<u32>(9120u, 6496u, ~1u))), u_input.b, ~(~(~u_input.b)));
    var_1 = _wgslsmith_mod_u32(0u, ~u_input.e.x);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-343f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(select(-321f, -557f, var_2.b.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -667f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c.x, 4294967295u, _wgslsmith_add_u32(~u_input.b, 0u), 0u), firstTrailingBit(-countOneBits(max(var_0.x, var_0.x))));
}

