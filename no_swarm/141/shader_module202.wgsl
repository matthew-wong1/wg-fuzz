struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: Struct_3,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
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

var<private> global0: vec4<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = 1i;
    let var_1 = Struct_4(arg_0.c.a.x, firstTrailingBit(u_input.e.xx), Struct_3(arg_0.c, arg_0.a.a, 0i), vec2<i32>((_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, arg_0.b), u_input.e.xx) | (arg_0.b >> (2142u % 32u))) ^ max(2147483647i, u_input.a), _wgslsmith_dot_vec3_i32(u_input.e, reverseBits(u_input.e >> (vec3<u32>(9322u, 740u, 1u) % vec3<u32>(32u))))));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0.a.a))), vec4<f32>(-662f, var_1.a, _wgslsmith_div_f32(-1000f, global0.x), _wgslsmith_f_op_f32(abs(arg_0.a.a.x)))))))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_1.c.b)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(305f, 194f, -976f, -659f) * arg_0.c.a))))), vec4<f32>(202f, 171f, var_1.c.a.a.x, _wgslsmith_f_op_f32(545f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), arg_0.a.a.x)))));
    let var_2 = var_1.c.a;
    return _wgslsmith_div_i32(1i, reverseBits(var_0 >> (4294967295u % 32u)));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    let var_0 = select(max(-u_input.e.x, func_3(Struct_2(Struct_1(vec4<f32>(-682f, arg_0, arg_0, -166f), true), u_input.e.x, Struct_1(vec4<f32>(-108f, 244f, 620f, 1000f), false)))) | ~select(u_input.b.x, 0i, true), 31785i ^ firstTrailingBit(u_input.c & -2147483647i), true) | _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(37929i, u_input.a) ^ u_input.b.wy, u_input.e.xx ^ vec2<i32>(u_input.b.x, u_input.b.x), true), u_input.e.xy), _wgslsmith_add_vec2_i32(u_input.b.wy, firstLeadingBit(u_input.b.xw)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-839f, global0.x, global0.x, -215f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(337f, arg_0, global0.x, global0.x))), vec4<bool>(true, true, true, true))), select(firstTrailingBit(29434u), _wgslsmith_add_u32(1u, 1u), true) >= 0u), vec4<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(509f)) + _wgslsmith_f_op_f32(global0.x - global0.x))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1940f), select(false, true, false))) * 946f), 777f), -3604i);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(222f))), 542f))), max(vec2<i32>(_wgslsmith_add_i32(var_1.c >> (63623u % 32u), _wgslsmith_clamp_i32(-13656i, u_input.e.x, 10232i)), -var_1.c), min(vec2<i32>(802i, u_input.d) & u_input.e.xx, countOneBits(vec2<i32>(-2147483647i, -5527i)))), Struct_3(Struct_1(var_1.b, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.a.a.x - 1062f), _wgslsmith_div_f32(global0.x, -604f), _wgslsmith_f_op_f32(global0.x - arg_0), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_add_i32(var_0 | var_0, select(u_input.c, func_3(Struct_2(Struct_1(var_1.b, true), 1i, Struct_1(vec4<f32>(var_1.a.a.x, var_1.b.x, global0.x, global0.x), false))), !var_1.a.b))), u_input.e.zy);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_1.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.a, -1000f, 1870f, global0.x), vec4<f32>(global0.x, 917f, -1102f, arg_0)))) - vec4<f32>(var_1.a.a.x, _wgslsmith_f_op_f32(step(arg_0, var_2.a)), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(1000f - arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_2.c.b))));
    var_1 = var_2.c;
    return abs(_wgslsmith_clamp_vec2_u32(~firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(32824u, 4294967295u), vec2<u32>(20584u, 54434u))), vec2<u32>(1u, 1u), vec2<u32>(49990u, 1u)));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<f32>) -> i32 {
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(45037u, 20932u, 0u), vec3<u32>(57384u, 0u, 20225u)), ~70135u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(13443u, 0u, 52713u), vec3<u32>(5363u, 1u, 4119u)), 27856u), 33405u) & ~(~abs(~vec2<u32>(1u, 4294967295u)));
    let var_1 = _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-731f * arg_2.x)) * 141f))));
    var_0 = ~(~(~func_2(307f))) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.x, 26052u) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(74849u, var_0.x), vec2<u32>(37458u, 0u)), ~(vec2<u32>(var_0.x, var_0.x) ^ vec2<u32>(var_0.x, var_0.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 0u), vec2<u32>(40615u, var_0.x), abs(vec2<u32>(4294967295u, var_0.x)))), vec2<u32>(var_0.x, 34255u));
    global0 = arg_2;
    var var_2 = ~(~(~select(vec3<u32>(14062u, var_0.x, var_0.x), vec3<u32>(var_0.x, 1u, 19385u), arg_1.x))) ^ ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, var_0.x) >> (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u)), select(vec3<u32>(var_0.x, 1u, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, arg_1.x, arg_1.x))), firstTrailingBit(vec3<u32>(43486u, var_0.x, 7438u)));
    return ~(-_wgslsmith_mult_i32(max(-2147483647i, 22288i), _wgslsmith_dot_vec2_i32(~u_input.b.wz, vec2<i32>(arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(231f, vec2<i32>(u_input.d, i32(-1i) * -u_input.a) >> (~countOneBits(abs(vec2<u32>(0u, 30851u))) % vec2<u32>(32u)), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-131f, 460f, -712f, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1550f, global0.x) + vec4<f32>(1017f, -865f, 1403f, global0.x)), vec4<bool>(true, true, true, true))), func_1(u_input.d, vec3<bool>(false, true, false), vec4<f32>(global0.x, global0.x, -1594f, -784f)) < _wgslsmith_mod_i32(u_input.a, -31466i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(-897f, -295f)), global0.x, _wgslsmith_f_op_f32(-2138f + global0.x))), ~_wgslsmith_mod_i32(countOneBits(u_input.c), _wgslsmith_mod_i32(-13201i, u_input.e.x))), -u_input.e.xx);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1409f)), var_0.a);
    var var_2 = _wgslsmith_mult_vec4_u32(max(vec4<u32>(1u, 1u, 1u, 1u) | vec4<u32>(~23182u, 23442u, func_2(global0.x).x, 0u), vec4<u32>(1u, ~1u, min(abs(36545u), _wgslsmith_sub_u32(4294967295u, 10457u)), _wgslsmith_dot_vec4_u32(vec4<u32>(68748u, 59781u, 66417u, 26941u), ~vec4<u32>(62834u, 4294967295u, 41398u, 79844u)))), countOneBits(vec4<u32>(firstLeadingBit(5727u), _wgslsmith_mod_u32(1u, 4294967295u), ~1u, countOneBits(1u))));
    global0 = var_0.c.a.a;
    var_2 = abs((~vec4<u32>(1u, var_2.x, 27454u, var_2.x) >> (~vec4<u32>(77966u, 16994u, 4294967295u, 4294967295u) % vec4<u32>(32u))) & (vec4<u32>(0u, var_2.x, var_2.x, 4294967295u) >> (~vec4<u32>(var_2.x, 37472u, 0u, 0u) % vec4<u32>(32u)))) >> (select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, var_2.x, 44817u, var_2.x) | select(vec4<u32>(var_2.x, 14179u, var_2.x, 4294967295u), vec4<u32>(67251u, var_2.x, 94602u, var_2.x), vec4<bool>(false, var_0.c.a.b, false, false)), firstTrailingBit(select(vec4<u32>(69288u, 11907u, var_2.x, 0u), vec4<u32>(87191u, var_2.x, var_2.x, 4294967295u), vec4<bool>(false, true, false, false)))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(38598u, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, 3744u, var_2.x, 20675u), vec4<u32>(75566u, var_2.x, var_2.x, var_2.x)), firstLeadingBit(vec4<u32>(14798u, 4294967295u, 5825u, var_2.x))), true) % vec4<u32>(32u));
    var var_3 = Struct_4(var_0.a, vec2<i32>(76597i & _wgslsmith_add_i32(-11522i, select(-50182i, u_input.e.x, var_0.c.a.b)), -32587i), var_0.c, u_input.b.xy);
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(global0.x + 1866f), var_3.a, -1047f, global0.x))), var_0.c.a.b), var_3.c.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(6645i, var_3.b.x, u_input.d), _wgslsmith_add_vec3_i32(vec3<i32>(var_3.d.x, 2147483647i, 0i), vec3<i32>(2147483647i, u_input.d, var_3.b.x))), ((-32882i << (var_2.x % 32u)) | firstTrailingBit(0i)) ^ _wgslsmith_div_i32(1i, -17694i | var_0.b.x)));
    global0 = var_0.c.a.a;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1848f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-304f, -641f))) - var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

