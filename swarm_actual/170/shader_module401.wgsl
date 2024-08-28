struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = vec4<u32>(~(~firstTrailingBit(14402u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u)), min(abs(1u), max(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u)))), 4294967295u) << (~(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u));
    var var_1 = -284f;
    var var_2 = Struct_4(vec4<i32>(abs(_wgslsmith_div_i32(select(u_input.a, -2147483647i, true), _wgslsmith_sub_i32(u_input.a, 27499i))), 1484i, reverseBits(-24163i), _wgslsmith_mult_i32(~(u_input.a << (6835u % 32u)), firstTrailingBit(u_input.a))), abs(var_0.x));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -485f);
    let var_3 = Struct_2(60032u, _wgslsmith_clamp_i32(abs(max(16127i, reverseBits(var_2.a.x))), var_2.a.x, 42270i), Struct_1(var_0.wyz, select(var_2.b, 1u, any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(1552f)), _wgslsmith_div_f32(-945f, -203f), -991f, _wgslsmith_f_op_f32(-1000f * -2474f))), vec4<bool>(true, select(true, false, false) && false, select(false, false, false) | true, false)), Struct_1(~(~vec3<u32>(var_2.b, 1u, var_0.x)), min(var_0.x, var_0.x), vec4<f32>(1f, 1f, 1f, 1f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.a < _wgslsmith_mod_i32(u_input.a, -1i))), var_2.a.x | var_2.a.x);
    return abs(-((var_2.a.x << (4294967295u % 32u)) & firstTrailingBit(-2147483647i))) >> (abs(~max(var_0.x, ~var_3.a)) % 32u);
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = vec2<i32>(-u_input.a, ~(countOneBits(u_input.a) & arg_0)) | -vec2<i32>(-abs(-1i), arg_0 & func_3());
    var var_1 = !all(select(vec3<bool>(any(vec2<bool>(true, true)), select(true, true, false), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), true));
    return select(select(vec4<bool>(false, !any(vec3<bool>(false, true, false)), true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), all(vec4<bool>(false, true, false, false))), true), !select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), var_0.x < -8677i), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)))), true);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = Struct_1(~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(arg_3.a.b, 0u, 4294967295u)), _wgslsmith_sub_vec3_u32(arg_3.a.a, ~arg_3.a.a)), 49521u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.a.c + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.a.c))) * arg_3.a.c), select(!arg_3.a.d, select(!vec4<bool>(arg_3.a.d.x, arg_3.a.d.x, true, false), select(select(arg_3.a.d, arg_3.a.d, arg_3.a.d.x), arg_3.a.d, func_2(arg_0.x)), select(false, all(vec4<bool>(arg_3.a.d.x, arg_3.a.d.x, arg_3.a.d.x, false)), arg_3.a.b == arg_2)), any(!(!vec3<bool>(false, true, arg_3.a.d.x)))));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(0u, max(~(~var_0.a.x), 32933u), ~(~(~0u)), arg_3.a.a.x), (~firstTrailingBit(vec4<u32>(var_0.b, arg_2, arg_3.a.b, 73792u)) & vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(arg_2, arg_3.a.a.x, var_0.b)), _wgslsmith_div_u32(arg_2, arg_2), _wgslsmith_dot_vec2_u32(var_0.a.yx, vec2<u32>(arg_2, 1960u)), abs(arg_3.a.b))) ^ firstTrailingBit(vec4<u32>(27925u, arg_2, var_0.a.x, arg_2) >> (abs(vec4<u32>(var_0.a.x, 13572u, 61760u, 63487u)) % vec4<u32>(32u))));
    var var_2 = ~_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(var_1.x, arg_2, 0u, 77739u)), ~vec4<u32>(1u, 1u, 14895u, var_1.x) | vec4<u32>(var_0.b, arg_2, arg_2, arg_3.a.a.x)) | select(vec4<u32>(~firstLeadingBit(0u), ~0u, _wgslsmith_add_u32(49605u, _wgslsmith_clamp_u32(0u, arg_3.a.a.x, 0u)), abs(firstTrailingBit(0u))), ~vec4<u32>(firstLeadingBit(var_1.x), var_1.x, _wgslsmith_mod_u32(arg_3.a.b, 1u), ~4294967295u), !(!vec4<bool>(false, true, arg_3.a.d.x, arg_3.a.d.x)));
    var var_3 = arg_3.a;
    let var_4 = !var_3.d;
    return _wgslsmith_f_op_vec4_f32(-var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(0u, -16003i, Struct_1(~abs(~vec3<u32>(1u, 10800u, 10142u)), 1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -1177f, 654f, -635f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec2<i32>(-3168i, 0i), vec3<f32>(1704f, -1213f, -1000f), 0u, Struct_3(Struct_1(vec3<u32>(18271u, 4294967295u, 25661u), 31018u, vec4<f32>(1093f, -137f, -681f, -1068f), vec4<bool>(true, false, false, false)), u_input.a))))), select(select(func_2(u_input.a), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, u_input.a >= u_input.a, true, true), vec4<bool>(true, u_input.a >= 612i, any(vec3<bool>(false, false, true)), true))), Struct_1(vec3<u32>(~0u, firstTrailingBit(~1u), _wgslsmith_clamp_u32(min(0u, 14719u), ~0u, _wgslsmith_add_u32(38068u, 1u))), _wgslsmith_add_u32(_wgslsmith_add_u32(25628u, ~4294967295u), 11298u), vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(211f + _wgslsmith_f_op_f32(max(664f, -959f))), -429f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1080f - -584f), _wgslsmith_f_op_f32(365f - -1399f), func_2(-1i).x))), vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true | all(vec2<bool>(true, false)))), _wgslsmith_sub_i32(1i, ~countOneBits(-2147483647i)));
    var var_1 = true;
    var var_2 = ~vec4<u32>(7616u, var_0.a, _wgslsmith_add_u32(0u, var_0.c.b), var_0.a);
    let var_3 = vec2<u32>(0u, ~(var_0.c.b | max(13697u, _wgslsmith_mult_u32(var_2.x, 0u))));
    var var_4 = _wgslsmith_div_f32(var_0.c.c.x, var_0.c.c.x);
    var var_5 = Struct_3(var_0.d, var_0.e);
    var_4 = var_5.a.c.x;
    var var_6 = Struct_3(Struct_1(abs(var_2.yyz), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.c.b, var_5.a.b), 65199u), var_3.x), vec4<f32>(_wgslsmith_f_op_f32(sign(-793f)), _wgslsmith_f_op_f32(var_5.a.c.x + -2014f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_5.a.c.x))), var_5.a.c.x), vec4<bool>(all(!vec4<bool>(var_5.a.d.x, true, var_0.d.d.x, var_0.d.d.x)), var_5.a.a.x <= abs(var_3.x), var_0.c.d.x, false)), _wgslsmith_clamp_i32(u_input.a, var_5.b, _wgslsmith_sub_i32(u_input.a >> (0u % 32u), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1156f - 1217f) - var_6.a.c.x), var_0.c.c.x, _wgslsmith_f_op_f32(-var_5.a.c.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(32946u, var_5.a.a.x, 5424u, 0u), ~vec4<u32>(var_2.x, 4294967295u, var_0.c.b, var_6.a.b) & ~vec4<u32>(var_2.x, var_3.x, var_2.x, 0u)) ^ vec4<u32>(var_3.x, max(1u, 1u), var_3.x, _wgslsmith_add_u32(firstTrailingBit(var_2.x), ~var_6.a.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-680f, -930f, _wgslsmith_div_f32(var_0.d.c.x, 477f), var_0.c.c.x) + vec4<f32>(503f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1162f)) * _wgslsmith_f_op_f32(round(-1000f))), var_0.c.c.x, _wgslsmith_f_op_f32(ceil(var_5.a.c.x)))));
}

