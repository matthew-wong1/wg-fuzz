struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(1000f, 1000f, 782f)), vec4<bool>(true, false, true, true), vec2<u32>(31115u, 1u), vec2<bool>(true, false), 983u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(495f, -911f, -1702f)), vec4<bool>(true, true, false, true), vec2<u32>(0u, 43626u), vec2<bool>(true, false), 4294967295u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(-1000f, 818f, -1001f)), vec4<bool>(true, false, false, true), vec2<u32>(1u, 68023u), vec2<bool>(true, false), 0u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-252f, -1000f, -261f)), vec4<bool>(false, true, false, true), vec2<u32>(20963u, 22429u), vec2<bool>(true, false), 4294967295u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-365f, -1157f, 410f)), vec4<bool>(true, true, false, false), vec2<u32>(46469u, 35502u), vec2<bool>(true, false), 4294967295u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(290f, 373f, 1254f)), vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false), 56085u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-395f, -874f, -324f)), vec4<bool>(false, false, true, true), vec2<u32>(56713u, 3829u), vec2<bool>(false, true), 58691u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-398f, -507f, -1000f)), vec4<bool>(true, true, false, true), vec2<u32>(1u, 4294967295u), vec2<bool>(false, true), 4294967295u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-117f, 1000f, 1367f)), vec4<bool>(true, false, false, true), vec2<u32>(6592u, 84650u), vec2<bool>(true, true), 41676u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(521f, -118f, -1000f)), vec4<bool>(true, false, false, true), vec2<u32>(34642u, 0u), vec2<bool>(false, false), 4294967295u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(630f, 791f, 1471f)), vec4<bool>(false, true, true, false), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false), 1u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(-2037f, -2157f, 1000f)), vec4<bool>(false, false, true, false), vec2<u32>(0u, 52737u), vec2<bool>(false, true), 4294967295u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-119f, 1509f, -681f)), vec4<bool>(false, true, false, false), vec2<u32>(45788u, 126823u), vec2<bool>(true, true), 9648u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(-511f, -611f, 942f)), vec4<bool>(true, true, false, false), vec2<u32>(47579u, 1u), vec2<bool>(false, false), 0u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(777f, 1199f, 788f)), vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, 77570u), vec2<bool>(true, false), 4294967295u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(255f, -658f, -1000f)), vec4<bool>(true, true, true, false), vec2<u32>(1u, 23748u), vec2<bool>(false, true), 10258u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(777f, -556f, -639f)), vec4<bool>(true, true, false, true), vec2<u32>(11411u, 0u), vec2<bool>(false, false), 4294967295u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(-1000f, -583f, 127f)), vec4<bool>(true, false, false, true), vec2<u32>(1u, 3904u), vec2<bool>(true, true), 1u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(856f, 514f, -613f)), vec4<bool>(false, false, true, true), vec2<u32>(1u, 1u), vec2<bool>(true, true), 83389u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(210f, 726f, 825f)), vec4<bool>(false, true, true, false), vec2<u32>(4755u, 13251u), vec2<bool>(false, true), 0u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(313f, 1000f, 1168f)), vec4<bool>(false, true, false, false), vec2<u32>(9534u, 43266u), vec2<bool>(false, true), 1u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(1418f, 355f, -119f)), vec4<bool>(false, false, true, false), vec2<u32>(97609u, 4294967295u), vec2<bool>(false, true), 0u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(-217f, 1000f, 549f)), vec4<bool>(false, false, true, false), vec2<u32>(4294967295u, 18759u), vec2<bool>(false, true), 1u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(371f, 377f, 862f)), vec4<bool>(false, true, true, true), vec2<u32>(0u, 48071u), vec2<bool>(true, true), 4294967295u));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: f32) -> vec4<f32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-768f, 480f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-668f * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, -331f)))));
    let var_2 = Struct_4(~vec3<u32>(1u, 1u, 1u), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), 1027f <= var_1.x), vec4<bool>(all(vec4<bool>(true, false, false, false)), any(vec4<bool>(true, false, false, false)), true, all(vec4<bool>(false, false, true, true)))), vec4<bool>(true, true, true, true), true));
    let var_3 = ~_wgslsmith_mult_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(var_2.a, var_2.a)), ~countOneBits(vec3<u32>(67709u, var_2.a.x, var_2.a.x))) << ((~_wgslsmith_sub_vec3_u32(abs(var_2.a), var_2.a) ^ ~var_2.a) % vec3<u32>(32u));
    global0 = var_2.a.x;
    return _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), arg_2)), 164f, _wgslsmith_f_op_f32(-var_0.x), -1025f), arg_0));
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(1249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_0.a) - _wgslsmith_f_op_f32(1242f - _wgslsmith_f_op_f32(sign(1877f)))), -168f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-236f * -631f), _wgslsmith_div_f32(arg_0.d.x, arg_0.a)))), arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-606f, _wgslsmith_f_op_f32(-arg_0.a)) - _wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x))))));
    var var_1 = ~vec2<u32>(abs(1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(102207u, 0u), vec2<u32>(1u, 1u)) & 383u);
    let var_2 = Struct_1(!select(vec2<bool>(any(vec3<bool>(true, false, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-870f, arg_0.a, arg_0.d.x, 1867f)) * vec4<f32>(1333f, arg_0.d.x, 2681f, -570f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(308f, 849f, 1372f, var_0.x)))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -126f), select(u_input.b.x ^ arg_0.b, u_input.a, true), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.a, -34282i), arg_0.c), -vec3<i32>(arg_0.c.x, 47253i, 2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1057f)))), 526f)).yxx);
    var_0 = vec4<f32>(-214f, _wgslsmith_f_op_f32(abs(1f)), arg_0.a, -293f);
    global0 = var_1.x;
    return _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + _wgslsmith_f_op_f32(-1282f * 1881f)))) * 2126f));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = vec4<bool>(arg_1, true, arg_1, select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_2.x)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(arg_2.x, arg_0.x, vec3<i32>(0i, u_input.a, -5958i), vec3<f32>(306f, arg_2.x, 161f)))) + _wgslsmith_f_op_f32(f32(-1f) * -2513f)), !arg_1, arg_1));
    global0 = (_wgslsmith_sub_u32(12641u, ~(~1u)) >> (_wgslsmith_clamp_u32(22231u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 13161u, 5364u), vec3<u32>(4294967295u, 4294967295u, 0u)) << (firstLeadingBit(0u) % 32u), ~17514u) % 32u)) << (1u % 32u);
    var_0 = select(!(!select(select(vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(true, true, false, var_0.x), var_0.x), vec4<bool>(true, true, arg_1, var_0.x), select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(arg_1, false, var_0.x, true), var_0.x))), select(!(!vec4<bool>(false, false, true, var_0.x)), vec4<bool>(false, false, true, !arg_1), !(!select(true, true, arg_1))), !any(!select(vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, false, true, arg_1))));
    global0 = ~(~0u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f - 2065f), -554f, 329f)), arg_2)));
    return Struct_3(-3263f, u_input.b.x, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), 1i, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, u_input.a), vec4<i32>(arg_0.x, 0i, 18973i, arg_0.x))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, -1i, 1i, 2147483647i), select(vec4<i32>(arg_0.x, -34731i, u_input.a, 1i), vec4<i32>(u_input.a, u_input.b.x, arg_0.x, -54190i), false), ~vec4<i32>(-1i, -47072i, 41271i, u_input.a))), ~select(-u_input.a, 1i, true), u_input.b.x), vec3<f32>(2642f, var_1.x, 622f));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = arg_2;
    var_0 = Struct_3(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_div_i32(-2147483647i, abs(u_input.b.x)), vec3<i32>(u_input.a, arg_2.c.x, _wgslsmith_mult_i32(reverseBits(u_input.a) ^ _wgslsmith_sub_i32(arg_2.b, 1i), -33224i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1251f, 394f) + vec3<f32>(arg_2.a, var_0.d.x, var_0.d.x))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -941f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a - arg_2.a))), -289f)));
    global0 = ~firstLeadingBit(arg_0);
    let var_1 = func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.b | arg_2.b, arg_2.b), min(u_input.b, var_0.c.xy)) | min(countOneBits(_wgslsmith_clamp_vec2_i32(arg_2.c.zy, vec2<i32>(-37487i, 0i), arg_2.c.yy)), func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 56065i), arg_2.c.xz), 3010i > arg_2.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, var_0.a, -517f))).c.yx), !(((arg_1 >> (arg_0 % 32u)) <= 0u) && !(-1450f > arg_2.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, -1468f, var_0.a, -2061f)), func_1(arg_2.c.yx, false, vec3<f32>(var_0.d.x, arg_2.d.x, arg_2.d.x)), var_0.d.x)).ywx + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, 435f, -1000f)))))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(trunc(var_1.d.x)), ~(var_0.c.x | arg_2.c.x) << (47304u % 32u), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -abs(2147483647i), var_1.b), var_1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1180f, -933f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_2.d)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -329f, arg_2.a) - var_1.d)))));
    return countOneBits(_wgslsmith_div_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(0i, 2147483647i, -17245i, 56707i)) & -(vec4<i32>(var_0.b, var_2.b, -4434i, 2374i) ^ vec4<i32>(64116i, var_2.c.x, 1i, var_0.c.x)), -(~(-vec4<i32>(-1i, 61918i, var_2.c.x, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    global0 = ~(~(~(~69716u))) << ((_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 9640u, 0u), vec3<u32>(63963u, 58943u, 32756u)), 1u) & (~30952u & _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 3337u), vec3<u32>(1u, 1u, 1u)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(27049u, 1u), vec2<u32>(6461u, 25617u)), vec2<u32>(4294967295u, 4294967295u)), 4294967295u, func_1(u_input.b, false || var_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1983f, -1983f, -705f)))) >> (vec4<u32>(0u, _wgslsmith_sub_u32(abs(4294967295u), 14227u), _wgslsmith_mult_u32(_wgslsmith_div_u32(72314u, 13819u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 8855u, 0u), vec3<u32>(4294967295u, 54147u, 0u))), ~54479u) % vec4<u32>(32u)));
}

