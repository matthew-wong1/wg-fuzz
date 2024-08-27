struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(u_input.b), u_input.b | u_input.a.x, 31950u, _wgslsmith_div_u32(u_input.b, 91273u)) << (min(~vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, u_input.b), vec4<u32>(115287u, 49946u, u_input.b, u_input.a.x)) % vec4<u32>(32u)), countOneBits(vec4<u32>(u_input.a.x, u_input.b, u_input.b, u_input.a.x)) >> (vec4<u32>(u_input.b, 13467u, u_input.a.x, _wgslsmith_div_u32(u_input.b, u_input.b)) % vec4<u32>(32u))), ~(~(vec4<u32>(u_input.b, 48810u, u_input.b, 0u) & vec4<u32>(88936u, 1u, 1u, 0u)) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(9323u, u_input.a.x, 1u, u_input.b), vec4<u32>(26499u, 4294967295u, u_input.b, 1u)) << ((vec4<u32>(u_input.b, u_input.b, u_input.a.x, 118511u) & vec4<u32>(13317u, u_input.a.x, 24799u, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-767f, -355f))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-828f + 189f), _wgslsmith_f_op_f32(236f - 188f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(736f - -893f), _wgslsmith_div_f32(-870f, 1015f)) + vec2<f32>(-1115f, _wgslsmith_f_op_f32(max(-1811f, 130f)))))));
    let var_2 = Struct_1(vec4<bool>(!(abs(16397i) >= _wgslsmith_clamp_i32(u_input.c, -1i, 2147483647i)), false, true, false), var_0.x, all(vec3<bool>(all(vec2<bool>(true, false)), (u_input.c >= 2147483647i) | true, true)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(276f * var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-558f + 125f), _wgslsmith_f_op_f32(-var_1.x))), -1000f))));
    var var_3 = vec4<u32>(~(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, 3863u), var_2.b) ^ 4294967295u), _wgslsmith_add_u32(min(u_input.b, ~var_2.b), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_2.b, u_input.b, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(22457u, 21230u, var_0.x, 1u), vec4<u32>(var_0.x, u_input.a.x, var_2.b, 4294967295u)))) << (~u_input.a.x % 32u), 0u, select(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b, var_2.b, u_input.b), vec3<u32>(12631u, 86478u, 0u), vec3<u32>(u_input.b, var_0.x, u_input.b)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 45646u), u_input.a), vec3<u32>(var_2.b, 1u, var_2.b) | u_input.a)), u_input.a.x, true));
    let var_4 = var_2;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -916f)))), _wgslsmith_f_op_f32(min(var_2.d.x, 882f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> vec2<i32> {
    var var_0 = ~(~max(vec4<u32>(~1u, 18763u, u_input.a.x, u_input.b << (arg_0.b % 32u)), vec4<u32>(4294967295u, 0u, firstTrailingBit(arg_0.b), ~arg_0.b)));
    var_0 = ~vec4<u32>(~(arg_0.b | arg_0.b), max(~(~u_input.b), var_0.x), firstTrailingBit(max(u_input.a.x, 0u)), _wgslsmith_add_u32(select(u_input.a.x, 96739u, arg_2 >= arg_0.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, arg_0.b) ^ var_0.wxz, ~vec3<u32>(u_input.b, var_0.x, arg_0.b))));
    let var_1 = Struct_1(select(select(arg_0.a, vec4<bool>(u_input.c < -2147483647i, false, true, true), vec4<bool>(all(arg_0.a), arg_0.c, any(vec2<bool>(arg_0.c, arg_0.c)), any(vec4<bool>(false, false, arg_0.a.x, arg_0.c)))), arg_0.a, vec4<bool>(true, arg_0.c, false, _wgslsmith_f_op_f32(round(arg_0.d.x)) < arg_1.x)), 1u, select(!arg_0.a.x && arg_0.c, !all(select(arg_0.a.zw, vec2<bool>(arg_0.c, arg_0.c), true)), arg_0.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.d, vec3<f32>(-114f, _wgslsmith_f_op_f32(arg_1.x - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1514f)), !select(vec3<bool>(false, true, arg_0.a.x), vec3<bool>(true, false, false), arg_0.a.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_0.d - vec3<f32>(262f, arg_1.x, -768f)))))));
    let var_2 = Struct_1(vec4<bool>(true, !all(arg_0.a), arg_0.c, true), arg_0.b, ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) > ~52250u, var_1.d);
    var var_3 = _wgslsmith_clamp_vec3_u32(~(~abs(~vec3<u32>(0u, var_1.b, 1u))), ~(select(~u_input.a, vec3<u32>(var_1.b, 4294967295u, var_1.b), u_input.c == -2147483647i) << ((u_input.a | u_input.a) % vec3<u32>(32u))), vec3<u32>(max(4294967295u, var_2.b), ~countOneBits(1u), ~10413u ^ abs(var_2.b)));
    return ~min(_wgslsmith_mod_vec2_i32(~abs(vec2<i32>(u_input.c, u_input.c)), vec2<i32>(-1i, 15174i)), vec2<i32>(abs(-2814i), u_input.c));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(~vec2<i32>(2147483647i, 15897i) ^ firstLeadingBit(vec2<i32>(u_input.c, u_input.c))), vec2<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c, u_input.c), 8957i))), func_4(arg_0, _wgslsmith_div_vec2_f32(vec2<f32>(988f, 3331f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.zy + vec2<f32>(1000f, 837f)), _wgslsmith_f_op_vec2_f32(-arg_1.zz))), _wgslsmith_f_op_f32(-937f + _wgslsmith_f_op_f32(func_3(~u_input.c, vec2<i32>(u_input.c, u_input.c))))));
    let var_1 = all(arg_0.a.zwz);
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~u_input.a.x), vec2<u32>(_wgslsmith_sub_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(70805u, arg_0.b, 49596u, 1u), vec4<u32>(u_input.b, 0u, u_input.b, 36476u))), 67201u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 4294967295u, arg_0.b), u_input.a), u_input.a), vec3<u32>(~35479u, select(arg_0.b, arg_0.b, var_1), u_input.a.x))));
    var_2 = u_input.a.x;
    let var_3 = abs(0u) | ~_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a));
    return -568f;
}

fn func_1() -> vec3<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(true, true, true, true), u_input.a.x, true, vec3<f32>(1061f, 437f, -217f)), vec3<f32>(481f, -966f, -2435f), false)) - _wgslsmith_f_op_f32(f32(-1f) * -2414f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1i, vec2<i32>(1i, u_input.c))))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-600f + 2117f))), 1294f)) + -1178f);
    var var_1 = !all(select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var var_2 = select(!select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), false), select(!vec2<bool>(u_input.c <= u_input.c, true), vec2<bool>(!all(vec3<bool>(true, false, true)), 21170u > (u_input.a.x >> (45916u % 32u))), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), false));
    var_0 = -383f;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1i) * -vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(~_wgslsmith_sub_i32(u_input.c, 1i), abs(u_input.c), u_input.c));
    var_0 = firstLeadingBit(u_input.c);
    var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(u_input.c), u_input.c), ~vec2<i32>(~1i, 0i ^ _wgslsmith_mult_i32(2147483647i, u_input.c)));
    var_0 = u_input.c;
    var var_1 = _wgslsmith_mod_vec3_u32(~u_input.a, _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(3430u, 4294967295u, ~(~84606u))));
    let var_2 = vec2<u32>(var_1.x, u_input.b);
    var_1 = _wgslsmith_sub_vec3_u32(func_1() << (_wgslsmith_mod_vec3_u32(~max(u_input.a, u_input.a), vec3<u32>(~u_input.a.x, 47104u, 73370u)) % vec3<u32>(32u)), vec3<u32>(4294967295u ^ max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.x, 1u, 1u), vec4<u32>(var_1.x, 97658u, 4294967295u, 100188u)), _wgslsmith_dot_vec4_u32(vec4<u32>(2931u, var_2.x, 30890u, 0u), vec4<u32>(var_1.x, 4294967295u, 5385u, 1u))), 1u, var_1.x));
    var var_3 = Struct_1(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), true), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, all(vec2<bool>(false, true)), false), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), select(vec4<bool>(select(false, false, true), false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), any(vec3<bool>(true, false, true)))), (1u | var_2.x) & _wgslsmith_clamp_u32(4294967295u, 38203u, 4294967295u), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(true, true, true, true), u_input.b, false, vec3<f32>(1134f, 1573f, 1291f)), vec3<f32>(2190f, 740f, 1558f), false)), -533f, -117f), vec3<f32>(_wgslsmith_f_op_f32(872f + 681f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -625f), !any(vec2<bool>(false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(-25523i);
}

