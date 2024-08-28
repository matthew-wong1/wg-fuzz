struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>) -> vec3<u32> {
    let var_0 = min(vec4<u32>(1u, 1u, 1u, 1u), select(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 8935u, 33480u)), _wgslsmith_add_u32(0u, 11931u), firstLeadingBit(37822u), _wgslsmith_dot_vec2_u32(vec2<u32>(46251u, 17946u), vec2<u32>(40750u, 1u))), vec4<u32>(_wgslsmith_div_u32(~4220u, 1u), 4294967295u, 6353u, abs(1u)), !(!arg_1)));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))))))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1033f);
    var var_2 = vec3<u32>(firstTrailingBit(46704u), _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_div_u32(var_0.x, 47183u)) << (6909u % 32u), var_0.x), _wgslsmith_mult_u32(~0u, 1u));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1552f);
    return _wgslsmith_div_vec3_u32(firstTrailingBit(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.x, 111848u), var_0.zwz))), vec3<u32>(4294967295u, var_2.x, 59913u));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4, arg_3: f32) -> i32 {
    var var_0 = Struct_1(-2147483647i >> ((~arg_0.a.x & abs(_wgslsmith_div_u32(arg_2.d, 56528u))) % 32u), arg_3, 0u, 62217u, arg_1);
    var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(arg_3)), arg_2.c)), var_0.d, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -480f)));
    var var_1 = Struct_1(select(firstTrailingBit(-2147483647i), 1i, true), _wgslsmith_f_op_f32(max(142f, 3085f)), select(arg_2.d, ~_wgslsmith_sub_u32(0u, _wgslsmith_add_u32(arg_0.a.x, 11035u)), any(select(vec2<bool>(false, arg_2.c), vec2<bool>(false, arg_2.c), vec2<bool>(true, true))) || (any(vec2<bool>(arg_2.a, arg_2.a)) | true)), 1u, _wgslsmith_f_op_f32(step(-771f, _wgslsmith_f_op_f32(floor(arg_1)))));
    var var_2 = Struct_1((-2147483647i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.d, arg_2.d, 39543u, arg_0.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.d, var_0.d, 0u), vec4<u32>(arg_2.d, 0u, 4294967295u, 0u))) % 32u)) & ~_wgslsmith_add_i32(arg_0.b.x, ~(-2147483647i)), var_0.e, 15370u, 12769u, 2312f);
    return _wgslsmith_div_i32(u_input.a.x, -29239i);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(func_4(Struct_3(func_3(vec3<f32>(410f, 583f, -1636f), vec4<bool>(true, true, true, false)), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), -1000f, Struct_4(u_input.a.x >= u_input.a.x, 0i, true, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -357f))) >> (4294967295u % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1000f, -518f)))))), ~1u, _wgslsmith_mult_u32(1u, 19688u), -370f);
    var_0 = Struct_1(_wgslsmith_sub_i32(-(~(u_input.a.x ^ 1i)), _wgslsmith_mult_i32(var_0.a, -abs(u_input.a.x))), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -745f)), var_0.d, var_0.c, 1000f);
    var_0 = Struct_1(-_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-6088i, var_0.a, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-25648i, u_input.a.x, 8434i), vec3<i32>(var_0.a, 0i, var_0.a), vec3<i32>(-2147483647i, u_input.a.x, -1899i))), vec3<i32>(2147483647i, 1i, _wgslsmith_clamp_i32(2147483647i, u_input.a.x, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-678f + var_0.e), var_0.e, true)))), (_wgslsmith_dot_vec3_u32(~vec3<u32>(8229u, 49628u, var_0.c), select(vec3<u32>(var_0.d, 1u, 1u), vec3<u32>(8416u, 55141u, var_0.d), vec3<bool>(false, true, false))) | _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, 1u, 68946u), ~vec3<u32>(var_0.d, 14873u, var_0.c))) & 1u, 2363u, var_0.b);
    let var_1 = vec2<u32>(4294967295u, 1u);
    var_0 = Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-527f)) * -211f)), firstLeadingBit(~var_1.x), abs(4294967295u), _wgslsmith_f_op_f32(-var_0.b));
    return Struct_1(i32(-1i) * -2147483647i, 1000f, 3432u, ~(~(~12437u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(847f)), 805f)))));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, 50823i), vec3<i32>(-20795i, -1i, 13521i))), _wgslsmith_add_i32(2824i, arg_0.b.a) ^ _wgslsmith_add_i32(-11580i, u_input.a.x)) < _wgslsmith_div_i32(-16426i, -12320i);
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.c, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.c, 35441u, arg_1, 0u), vec4<u32>(4294967295u, arg_1, arg_1, 4294967295u))), _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(arg_1, 6075u)), abs(91977u)) >> (~vec4<u32>(arg_1, _wgslsmith_clamp_u32(arg_0.d, 1454u, arg_1), arg_1, 1u) % vec4<u32>(32u)), vec4<u32>(arg_1, 41974u, abs(max(firstLeadingBit(1u), ~arg_1)), ~101197u));
    var_1 = abs(_wgslsmith_div_vec4_u32(vec4<u32>(func_3(vec3<f32>(arg_0.e.b, 1233f, -1052f), vec4<bool>(true, false, false, var_0)).x, arg_1 ^ 26010u, 95191u << (arg_1 % 32u), var_1.x) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.d, arg_1, var_1.x, 10651u) << (vec4<u32>(49171u, var_1.x, 0u, var_1.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(61400u, 4294967295u, arg_0.d, arg_0.b.c), vec4<u32>(arg_0.d, arg_1, 19121u, 77180u)), vec4<u32>(1u, 30239u, arg_0.e.d, 0u)), ~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 27257u, 4294967295u), vec4<u32>(4294967295u, 67019u, var_1.x, 6126u)))));
    let var_2 = Struct_4(var_0, 72102i, false, ~var_1.x);
    var_1 = vec4<u32>(63080u, arg_1, ~(~var_2.d & arg_0.b.c) << (~(var_2.d << (arg_1 % 32u)) % 32u), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.b, arg_0.c.e, 744f) + vec3<f32>(565f, 1000f, arg_0.b.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.e.e, -844f, arg_0.a.e), vec3<f32>(776f, 1000f, 1098f))))), select(!(!vec4<bool>(false, true, var_2.a, false)), !select(vec4<bool>(var_2.a, true, false, var_0), vec4<bool>(true, var_2.a, var_2.c, true), var_2.c), true)).x);
    return func_2();
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>) -> bool {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), arg_0.x), arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(104f))))))));
    var_0 = all(vec2<bool>(true, true));
    var var_2 = Struct_2(func_5(Struct_2(func_2(), func_2(), func_2(), arg_1.x, Struct_1(0i, _wgslsmith_f_op_f32(min(arg_0.x, -979f)), ~arg_1.x, arg_1.x, var_1.x)), arg_1.x), Struct_1(~max(u_input.a.x, 2147483647i), _wgslsmith_f_op_f32(arg_0.x + 692f), _wgslsmith_mod_u32(~75016u, arg_1.x), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(726f - _wgslsmith_f_op_f32(-arg_0.x)))), Struct_1(firstLeadingBit(abs(_wgslsmith_clamp_i32(2147483647i, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(-arg_0.x), ~func_3(var_1.ywy, select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false)).x, 57276u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -109f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1701f * 342f), _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)))))), 1u, func_2());
    var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(620f, 1797f, 725f, var_2.c.e)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * var_2.a.b), _wgslsmith_f_op_f32(max(arg_0.x, var_2.e.b)), var_1.x, _wgslsmith_div_f32(1515f, var_2.b.e))))));
    return select(false, any(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)))) || any(vec4<bool>(true, false, all(vec3<bool>(true, false, true)), true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2318f, _wgslsmith_f_op_f32(trunc(1647f)), -1227f)), vec3<u32>(_wgslsmith_mod_u32(0u, 1u), ~_wgslsmith_mod_u32(33590u, 13119u), ~(~0u))), !(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 30145u, 0u), vec3<u32>(1u, 32392u, 4294967295u)) != 28815u));
    let var_1 = u_input.a.x << (abs(_wgslsmith_mod_u32(~1u, 4294967295u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(30944i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-221f + 984f), func_2().e), func_2().b))), countOneBits(reverseBits(-vec4<i32>(u_input.a.x, u_input.a.x, -2180i, 17240i))));
}

