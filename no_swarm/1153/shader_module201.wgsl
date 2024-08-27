struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_4(Struct_3(Struct_2(-abs(0i), arg_1.a.b, arg_0.a.d, 107f, ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.e.x, arg_0.a.e.x, 4904u, arg_0.a.e.x), vec4<u32>(32196u, u_input.a, arg_0.a.e.x, 71840u))), arg_1.b, ~_wgslsmith_div_i32(-arg_0.a.b, arg_0.a.b), arg_1.d), ~arg_2.e);
    let var_1 = arg_0.d;
    var var_2 = Struct_2(arg_2.b, 4210i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1343f, arg_0.d.c.x)))))) * var_0.a.a.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c.x * -1096f))), vec4<u32>(~(1u ^ (44035u ^ u_input.a)), 4294967295u, ~(~_wgslsmith_mod_u32(var_0.b.x, 4294967295u)), abs(~_wgslsmith_add_u32(1u, 55523u))));
    global0 = -11549i;
    var var_3 = select(!select(!select(vec4<bool>(true, true, arg_0.b, arg_1.b), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, arg_0.b != var_0.a.b, !var_0.a.b), firstTrailingBit(-1i) != _wgslsmith_sub_i32(26726i, -45903i)), vec4<bool>(_wgslsmith_mod_u32(~arg_0.a.e.x, _wgslsmith_sub_u32(var_2.e.x, var_0.a.a.e.x)) >= var_0.a.a.e.x, !any(select(vec3<bool>(false, true, false), vec3<bool>(true, var_0.a.b, var_0.a.b), vec3<bool>(var_0.a.b, arg_0.b, false))), arg_0.b, false), all(vec3<bool>(any(select(vec2<bool>(false, var_0.a.b), vec2<bool>(arg_0.b, arg_0.b), false)), all(!vec2<bool>(arg_0.b, false)), true)));
    return -24267i & -arg_2.b;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_3(Struct_2(~53654i, _wgslsmith_div_i32(firstTrailingBit(arg_0.x), _wgslsmith_div_i32(max(-27173i, 0i), arg_0.x & 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-179f + arg_2.d) * _wgslsmith_f_op_f32(arg_2.d + -607f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1667f))), _wgslsmith_f_op_f32(-arg_2.c), ~vec4<u32>(firstLeadingBit(u_input.a), _wgslsmith_clamp_u32(35195u, u_input.a, arg_2.e.x), 1u & u_input.a, ~0u)), arg_1.x, -func_3(Struct_3(Struct_2(-31124i, 51631i, 1724f, arg_2.c, arg_2.e), false || arg_1.x, arg_2.b & -27779i, Struct_1(vec2<f32>(291f, -179f), vec4<i32>(2147483647i, 44318i, 0i, 1i), vec2<f32>(-1000f, -114f), 0i, arg_0)), Struct_3(Struct_2(21805i, -32895i, arg_2.c, arg_2.d, vec4<u32>(u_input.a, 11868u, 9581u, u_input.a)), any(vec2<bool>(arg_1.x, true)), arg_2.b, Struct_1(vec2<f32>(arg_2.c, arg_2.d), vec4<i32>(1i, 11240i, arg_2.a, -1i), vec2<f32>(452f, arg_2.c), arg_0.x, vec4<i32>(arg_2.b, -3209i, arg_0.x, arg_0.x))), arg_2, arg_2), Struct_1(vec2<f32>(arg_2.d, _wgslsmith_f_op_f32(-536f + -946f)), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-25918i, -1i, -2147483647i), vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), i32(-1i) * -390i, ~(~arg_0.x), min(firstLeadingBit(-1i), _wgslsmith_mult_i32(arg_2.a, arg_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(step(-1000f, 583f)))), _wgslsmith_sub_i32(~6638i, _wgslsmith_add_i32(_wgslsmith_sub_i32(-7997i, -2147483647i), countOneBits(arg_2.b))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(arg_0, ~arg_0), _wgslsmith_mod_vec4_i32(min(arg_0, vec4<i32>(-199i, arg_0.x, 0i, -1i)), firstLeadingBit(vec4<i32>(arg_0.x, 27133i, 2147483647i, arg_2.a))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, 786f, -101f, 1000f) * vec4<f32>(arg_2.c, arg_2.d, -276f, -433f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(262f, 999f, -834f, 203f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(563f, -234f, -927f, var_0.d.a.x)), !vec4<bool>(var_0.b, true, arg_1.x, var_0.b))), true))));
    let var_2 = vec2<i32>(countOneBits(abs(-1i)), 18469i);
    let var_3 = _wgslsmith_div_i32(max(var_2.x, -firstTrailingBit(min(8227i, var_2.x))), arg_0.x);
    var var_4 = -10465i;
    return 32614u;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> u32 {
    let var_0 = Struct_3(Struct_2(max(-max(-2147483647i, -40453i), -(~21394i)), _wgslsmith_mult_i32(22012i, ~(-1i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-133f)), _wgslsmith_div_f32(672f, 103f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -554f) * _wgslsmith_f_op_f32(-626f + _wgslsmith_div_f32(-633f, -283f))), max(vec4<u32>(func_2(vec4<i32>(18481i, 2147483647i, 2147483647i, -20190i), vec3<bool>(arg_0, arg_0, arg_0), Struct_2(-2147483647i, 36585i, -636f, -930f, vec4<u32>(arg_1.x, arg_1.x, 41387u, 34789u))), ~arg_1.x, ~arg_1.x, 19731u), (vec4<u32>(57526u, 4782u, arg_1.x, 0u) & vec4<u32>(1u, 4294967295u, 6395u, arg_1.x)) >> ((vec4<u32>(arg_1.x, 27569u, 1u, u_input.a) << (vec4<u32>(0u, arg_1.x, 4294967295u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)))), arg_0, ~(-28907i), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(-1831f, _wgslsmith_f_op_f32(min(-121f, -336f)))), vec4<i32>(_wgslsmith_div_i32(-33111i, 2147483647i), -2147483647i, ~27533i, ~(-7069i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2147483647i, 23898i, -12141i) >> (vec4<u32>(4294967295u, u_input.a, 16785u, arg_1.x) % vec4<u32>(32u)), reverseBits(vec4<i32>(-2147483647i, -2147483647i, -1i, 3115i))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-566f, 723f) + vec2<f32>(1955f, 1170f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(568f, 1778f))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-524i, 23195i), vec2<i32>(-1i, -8390i)), 1i) | max(_wgslsmith_dot_vec3_i32(vec3<i32>(50318i, -45567i, -1i), vec3<i32>(-5095i, -1i, -28699i)), -1i), min(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 1i, 158i, 2147483647i), vec4<i32>(_wgslsmith_mod_i32(30525i, 24261i), -9128i, i32(-1i) * -51298i, 0i))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1565f, _wgslsmith_f_op_f32(sign(-222f)), all(vec4<bool>(var_0.b, true, arg_0, false))))))));
    var var_2 = -abs(var_0.d.e.yy);
    return 28576u;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(round(372f));
    let var_1 = _wgslsmith_add_u32(1u, 25809u) | arg_1;
    var var_2 = -_wgslsmith_div_vec2_i32(firstTrailingBit(-arg_2 >> ((vec2<u32>(0u, var_1) | vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))), vec2<i32>(-(~(-12565i)), arg_2.x));
    var var_3 = Struct_2(_wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(-var_2.x, -var_2.x), -2147483647i), _wgslsmith_mult_i32(arg_2.x, countOneBits(-74871i))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.x)) + arg_3.x), arg_3.x, vec4<u32>(_wgslsmith_sub_u32(u_input.a, 1u), 1u, ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 0u), vec4<u32>(36664u, u_input.a, 1u, u_input.a)), 0u), ~((var_1 ^ u_input.a) & u_input.a)));
    let var_4 = arg_3;
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(false, func_1(false, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 0u), vec2<u32>(u_input.a, 4294967295u)), min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 88811u), vec2<u32>(0u, 4294967295u)), vec2<u32>(9830u, 1u)))), vec2<i32>(_wgslsmith_add_i32(-1i, -_wgslsmith_mod_i32(-2147483647i, -22749i)), 6718i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(381f))), -1000f));
    var var_1 = ~1u;
    let var_2 = Struct_3(Struct_2(_wgslsmith_mod_i32(-2147483647i, countOneBits(select(26913i, 1i, false))), -1162i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -1160f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -413f), -347f, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1594f)), _wgslsmith_f_op_f32(floor(-1648f)))), vec4<u32>(u_input.a, ~1411u, 44211u, ~u_input.a | _wgslsmith_add_u32(u_input.a, u_input.a))), select(true, true, true), var_0 | _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, ~var_0), 54752i), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(656f - -720f), 139f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1625f + 2568f) - _wgslsmith_f_op_f32(min(1380f, -608f)))), vec4<i32>(-(~0i), _wgslsmith_add_i32(var_0, -2147483647i), -(i32(-1i) * -2147483647i), ~1i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-895f))), _wgslsmith_f_op_f32(-909f + 405f)), -1i, vec4<i32>(-1i) * -(~vec4<i32>(var_0, var_0, var_0, var_0))));
    var var_3 = Struct_4(var_2, var_2.a.e);
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(var_2.a.e.xw, vec2<u32>(_wgslsmith_dot_vec4_u32(var_3.a.a.e & vec4<u32>(var_2.a.e.x, var_4, var_4, var_3.b.x), max(var_2.a.e, var_3.b)), var_2.a.e.x)), _wgslsmith_div_i32(var_3.a.d.d, -22885i), _wgslsmith_dot_vec3_i32(select(var_3.a.d.b.zwz, vec3<i32>(var_2.c, var_0, -var_3.a.d.d), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, var_2.b), var_2.b), !vec3<bool>(var_2.b, var_2.b, var_3.a.b), true)), -vec3<i32>(~var_2.d.d, var_2.c, ~var_3.a.a.a)), firstLeadingBit(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-13100i, var_3.a.d.b.x), var_3.a.d.e.zx, var_3.a.d.b.ww)));
}

