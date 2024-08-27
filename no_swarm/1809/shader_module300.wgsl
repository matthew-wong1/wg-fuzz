struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    var var_0 = vec2<i32>(u_input.c, _wgslsmith_div_i32(arg_0.d.x, ~23984i));
    var_0 = countOneBits(vec2<i32>(_wgslsmith_add_i32(1i, -(~1i)), _wgslsmith_dot_vec3_i32(select(select(vec3<i32>(-42878i, arg_0.d.x, -1i), vec3<i32>(-1i, arg_0.d.x, 1i), false), vec3<i32>(var_0.x, -20639i, -5590i), true), vec3<i32>(-1i) * -vec3<i32>(-3082i, u_input.c, 2147483647i))));
    let var_1 = 4294967295u;
    var_0 = vec2<i32>(reverseBits(firstLeadingBit(-1i)), arg_0.d.x);
    var_0 = select(vec2<i32>(~(arg_0.d.x << (683u % 32u)), u_input.c), reverseBits(arg_0.d), arg_1.b.ww);
    return !arg_2.b.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: i32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1577f, 122f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-314f, 1000f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1440f * -1001f), 1259f))));
    var var_1 = Struct_2(all(vec3<bool>(true, !select(false, true, false), func_3(Struct_1(vec3<bool>(false, false, false), vec4<f32>(-905f, var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, true), arg_1.xy), Struct_2(true, vec4<bool>(true, true, true, true), -389f), Struct_2(false, vec4<bool>(false, true, false, true), -137f), Struct_2(true, vec4<bool>(true, true, false, false), var_0.x)))), !vec4<bool>(!(1u > u_input.a.x), func_3(Struct_1(vec3<bool>(true, true, false), vec4<f32>(var_0.x, -772f, var_0.x, var_0.x), vec3<bool>(false, false, true), vec2<i32>(2147483647i, arg_2)), Struct_2(true, vec4<bool>(true, true, true, false), 2203f), Struct_2(true, vec4<bool>(false, false, true, true), var_0.x), Struct_2(true, vec4<bool>(true, false, true, false), -166f)), true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + _wgslsmith_f_op_f32(ceil(546f))) - var_0.x));
    var var_2 = (arg_3.x | firstLeadingBit(82242u)) & firstTrailingBit(~42040u);
    var var_3 = -16782i;
    let var_4 = -31540i;
    return Struct_1(select(!(!select(var_1.b.zyw, var_1.b.wwy, vec3<bool>(var_1.a, true, var_1.b.x))), !vec3<bool>(!var_1.a, all(var_1.b.zx), u_input.a.x < 4294967295u), !(!(!vec3<bool>(var_1.b.x, true, var_1.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_1.c - var_1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_1.c, -1000f) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1587f, var_1.c, var_1.c), vec4<f32>(var_0.x, 318f, var_0.x, -1266f)))))), select(!var_1.b.zyy, vec3<bool>(!(var_1.a & var_1.b.x), var_1.a, true), any(vec3<bool>(!var_1.b.x, select(true, var_1.a, false), any(var_1.b.wz)))), arg_1.yy << (vec2<u32>(0u, _wgslsmith_sub_u32(35427u, u_input.a.x) ^ u_input.a.x) % vec2<u32>(32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -532f);
    let var_1 = u_input.a;
    let var_2 = abs(~(vec4<u32>(~u_input.b, ~4294967295u, countOneBits(19368u), 4294967295u) | (reverseBits(vec4<u32>(var_1.x, u_input.a.x, 40396u, var_1.x)) << (vec4<u32>(4294967295u, 14104u, 4294967295u, 20043u) % vec4<u32>(32u)))));
    var var_3 = func_2(-(~vec4<i32>(_wgslsmith_mod_i32(u_input.c, 1253i), -u_input.c, 1i, u_input.c << (31338u % 32u))), countOneBits(vec3<i32>(min(i32(-1i) * -13619i, -2147483647i), -u_input.c, _wgslsmith_mult_i32(u_input.c << (1952u % 32u), u_input.c))), u_input.c, u_input.a);
    let var_4 = abs(vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(~var_3.d.x, _wgslsmith_div_i32(var_3.d.x, 22001i))), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-38545i, u_input.c, 42385i, 0i)), vec4<i32>(u_input.c, 2147483647i, 2147483647i, 933i)) << (_wgslsmith_mod_u32(countOneBits(u_input.b), 1u >> (1u % 32u)) % 32u), 1i, ~firstLeadingBit(i32(-1i) * -2147483647i)));
    return func_2(vec4<i32>(-24015i, u_input.c, -1i, var_4.x ^ 0i), var_4.zzw, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-_wgslsmith_div_i32(var_4.x, var_3.d.x), var_4.x, ~abs(7265i)), -13218i), var_1 << (~vec2<u32>(3082u | var_2.x, 6631u & var_1.x) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_2(vec4<i32>(_wgslsmith_mod_i32(countOneBits(0i), ~u_input.c) ^ _wgslsmith_mod_i32(~u_input.c, _wgslsmith_sub_i32(-45205i, var_0.d.x)), -64587i, u_input.c, -1i), _wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(-vec3<i32>(1i, 39850i, -33680i), select(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(0i, 18339i, -7828i), var_0.a.x)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(1i, u_input.c, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(48410i, u_input.c, u_input.c), vec3<i32>(var_0.d.x, -2147483647i, u_input.c))), -select(vec3<i32>(var_0.d.x, var_0.d.x, 0i), vec3<i32>(-1i, var_0.d.x, var_0.d.x), var_0.a.x)), ~select(~vec3<i32>(2409i, 2147483647i, u_input.c), countOneBits(vec3<i32>(0i, var_0.d.x, -12076i)), var_0.a)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.d.x, var_0.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.d.x, 1i, 18073i) << (vec4<u32>(41741u, u_input.b, 32865u, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(-32058i, -10823i, 2147483647i, -18825i) >> (vec4<u32>(0u, u_input.a.x, u_input.b, u_input.b) % vec4<u32>(32u)))), -_wgslsmith_sub_i32(~var_0.d.x, min(-2147483647i, 1i))), u_input.a);
    var var_2 = var_0.b.x;
    let var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b ^ u_input.b, _wgslsmith_mod_u32(~93410u, min(u_input.a.x, 0u)) << (4294967295u % 32u), max(_wgslsmith_clamp_u32(reverseBits(41762u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 17799u, u_input.a.x, u_input.b), vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.a.x)), ~u_input.b), _wgslsmith_add_u32(u_input.b, _wgslsmith_div_u32(4294967295u, 8978u)))), ~vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b), vec4<u32>(u_input.a.x, 1u, u_input.b, u_input.b), false), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, u_input.a.x), vec4<u32>(0u, 0u, u_input.a.x, 1u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 4294967295u), vec3<u32>(0u, u_input.a.x, 20171u)), ~u_input.a.x));
    var_1 = var_0;
    var_2 = _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -2578f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1195f)) * 1236f))));
    var var_4 = Struct_2(any(vec3<bool>(false, var_0.a.x, false)), !vec4<bool>(true, !func_2(vec4<i32>(1i, 34712i, var_0.d.x, -5918i), vec3<i32>(1i, u_input.c, 44007i), var_1.d.x, vec2<u32>(0u, 65978u)).c.x, false, !(32762i == u_input.c)), var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(ceil(531f))), -129f);
}

