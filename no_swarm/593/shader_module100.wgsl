struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(2324f, vec2<bool>(false, false), vec4<f32>(1420f, 1000f, 585f, -1000f), vec2<u32>(4294967295u, 20691u)), Struct_3(1503f, vec2<bool>(true, false), vec4<f32>(-263f, 1611f, -834f, 498f), vec2<u32>(0u, 23063u)), Struct_3(-799f, vec2<bool>(false, false), vec4<f32>(1957f, -746f, -1072f, -127f), vec2<u32>(31242u, 0u)), Struct_3(1438f, vec2<bool>(true, true), vec4<f32>(696f, -577f, -1000f, 1205f), vec2<u32>(1u, 4294967295u)), Struct_3(-628f, vec2<bool>(false, true), vec4<f32>(-386f, 164f, 1290f, -165f), vec2<u32>(1u, 1u)), Struct_3(-123f, vec2<bool>(true, true), vec4<f32>(-592f, -206f, 453f, -1062f), vec2<u32>(62746u, 45991u)), Struct_3(1962f, vec2<bool>(true, false), vec4<f32>(682f, 245f, -386f, -1904f), vec2<u32>(0u, 4294967295u)), Struct_3(-418f, vec2<bool>(false, false), vec4<f32>(-122f, -664f, 1256f, 384f), vec2<u32>(54987u, 4294967295u)), Struct_3(2209f, vec2<bool>(false, true), vec4<f32>(-251f, 1036f, -652f, -737f), vec2<u32>(42283u, 1u)), Struct_3(-1729f, vec2<bool>(true, true), vec4<f32>(1567f, -2735f, 849f, -141f), vec2<u32>(1u, 0u)), Struct_3(-745f, vec2<bool>(false, false), vec4<f32>(-1212f, -275f, -323f, -155f), vec2<u32>(48420u, 0u)), Struct_3(-1566f, vec2<bool>(false, true), vec4<f32>(-1000f, -660f, -1088f, 402f), vec2<u32>(1u, 36465u)), Struct_3(497f, vec2<bool>(true, true), vec4<f32>(-1458f, 666f, 362f, 1571f), vec2<u32>(5715u, 1u)), Struct_3(-240f, vec2<bool>(false, true), vec4<f32>(-203f, -383f, 1037f, 524f), vec2<u32>(0u, 501u)), Struct_3(1363f, vec2<bool>(true, false), vec4<f32>(375f, 1562f, 1173f, -1262f), vec2<u32>(4294967295u, 102745u)), Struct_3(1000f, vec2<bool>(true, true), vec4<f32>(-2368f, 851f, 207f, -1578f), vec2<u32>(57050u, 0u)), Struct_3(-634f, vec2<bool>(true, true), vec4<f32>(-823f, -969f, -1382f, 1000f), vec2<u32>(59171u, 92891u)), Struct_3(-550f, vec2<bool>(false, false), vec4<f32>(190f, 982f, 1176f, -1953f), vec2<u32>(14391u, 3533u)), Struct_3(-530f, vec2<bool>(true, false), vec4<f32>(-723f, 227f, 113f, 2235f), vec2<u32>(15000u, 0u)), Struct_3(-214f, vec2<bool>(false, true), vec4<f32>(-844f, -351f, -585f, 803f), vec2<u32>(0u, 9507u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = vec3<i32>(abs(~1i) & u_input.b, _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, u_input.b, -1717i, -21662i), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b) ^ vec4<i32>(1i, u_input.b, u_input.b, u_input.b)), firstLeadingBit(-u_input.b)), abs(_wgslsmith_div_i32(0i, u_input.b & u_input.b))), u_input.b);
    var var_1 = Struct_2(arg_1.a, arg_1.b, arg_1.c, select(select(arg_1.b.b, !select(vec2<bool>(arg_1.b.d.x, false), arg_1.d, vec2<bool>(arg_1.b.b.x, false)), false), !(!vec2<bool>(true, arg_1.b.d.x)), false));
    let var_2 = vec2<u32>(select(var_1.b.c.x, _wgslsmith_dot_vec4_u32(max(var_1.b.c, var_1.b.c), var_1.b.c) | ~u_input.a, any(vec3<bool>(false, arg_1.d.x, true)) & true), _wgslsmith_dot_vec2_u32(vec2<u32>(62388u, _wgslsmith_mult_u32(29220u, 43591u)), firstTrailingBit(vec2<u32>(24120u, u_input.a)) << (min(vec2<u32>(var_1.c.x, 4294967295u), vec2<u32>(19782u, 1u)) % vec2<u32>(32u))) ^ ~(~(~0u)));
    let var_3 = _wgslsmith_f_op_f32(-558f + 249f);
    let var_4 = Struct_2(_wgslsmith_f_op_f32(round(var_3)), Struct_1(53258u, !select(select(vec2<bool>(true, var_1.d.x), vec2<bool>(arg_1.b.d.x, var_1.d.x), vec2<bool>(true, var_1.b.b.x)), vec2<bool>(false, false), vec2<bool>(true, arg_1.d.x)), arg_1.b.c, !var_1.b.d), ~_wgslsmith_add_vec2_u32(var_1.c, select(arg_1.c, _wgslsmith_sub_vec2_u32(var_1.c, vec2<u32>(1u, var_2.x)), arg_1.d.x)), vec2<bool>(!(_wgslsmith_f_op_f32(871f - var_3) > 320f), all(arg_1.b.d)));
    return var_4.a;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec4<f32>) -> u32 {
    var var_0 = vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(exp2(arg_2.x)), arg_1.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(arg_2.x, -2039f, -1000f), Struct_2(arg_1.a, Struct_1(u_input.a, vec2<bool>(true, arg_1.b.x), vec4<u32>(37944u, 4294967295u, arg_0, 1u), vec4<bool>(false, false, true, true)), vec2<u32>(53498u, 42552u), vec2<bool>(false, false)))) - arg_1.c.x), arg_2.x)));
    let var_1 = select(!select(!vec2<bool>(arg_1.b.x, false), !arg_1.b, (arg_1.b.x | arg_1.b.x) && true), !arg_1.b, select(vec2<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(arg_1.b.x, arg_1.b.x, false, true))), select(select(!vec2<bool>(false, arg_1.b.x), arg_1.b, select(arg_1.b, vec2<bool>(arg_1.b.x, arg_1.b.x), arg_1.b)), !arg_1.b, !all(vec3<bool>(arg_1.b.x, false, arg_1.b.x))), select(arg_1.b, arg_1.b, arg_1.b.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1072f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -1227f))))), arg_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-811f + -1607f)))), _wgslsmith_f_op_f32(round(1614f)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(670f, var_0.x))) * 1f)), _wgslsmith_f_op_f32(-arg_2.x));
    var var_4 = firstTrailingBit(vec3<u32>(~50796u, _wgslsmith_sub_u32(~(~arg_1.d.x), _wgslsmith_mod_u32(u_input.a, ~0u)), u_input.a));
    return ~countOneBits(36039u);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = !any(vec2<bool>(true, true & arg_2.b.x));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.c.x, arg_2.a))) * arg_2.c.x), arg_1.zz, arg_2.c, vec2<u32>(func_2(18506u, Struct_3(arg_2.a, select(vec2<bool>(arg_1.x, false), vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, true)), _wgslsmith_f_op_vec4_f32(-arg_2.c), arg_2.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, arg_2.c.x, 236f, arg_2.a) - arg_2.c))), 1u));
    var var_2 = vec2<u32>(_wgslsmith_add_u32(1u, 1u), var_1.d.x);
    var var_3 = vec2<u32>(4294967295u, max(_wgslsmith_mult_u32(_wgslsmith_mod_u32(14899u, arg_2.d.x) & var_2.x, ~(~arg_2.d.x)), arg_2.d.x));
    var var_4 = arg_1.x || all(select(!(!vec3<bool>(false, arg_1.x, var_1.b.x)), select(!arg_1, !arg_1, vec3<bool>(true, true, true)), true));
    return Struct_1(var_2.x, select(vec2<bool>(true, !all(vec4<bool>(arg_1.x, var_1.b.x, false, var_1.b.x))), select(vec2<bool>(var_1.b.x, any(arg_2.b)), arg_2.b, var_1.b), arg_2.b.x), abs(~(~vec4<u32>(u_input.a, 16148u, arg_2.d.x, 0u))) & _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_3.x, 4294967295u, arg_2.d.x, u_input.a), min(vec4<u32>(4294967295u, u_input.a, arg_2.d.x, arg_2.d.x), vec4<u32>(var_2.x, 4294967295u, arg_2.d.x, 23519u))), ~vec4<u32>(u_input.a, var_3.x, 0u, 1u)), select(select(select(vec4<bool>(true, false, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, var_1.b.x, true, true), vec4<bool>(true, false, arg_1.x, true), arg_2.b.x), !vec4<bool>(true, true, arg_2.b.x, var_1.b.x)), !vec4<bool>(arg_2.b.x, arg_2.b.x, arg_1.x, false), vec4<bool>(true, arg_2.b.x | var_1.b.x, select(true, false, arg_2.b.x), true)), !(!(!vec4<bool>(var_1.b.x, false, true, arg_1.x))), all(vec2<bool>(arg_1.x, arg_1.x)) | all(select(vec4<bool>(var_1.b.x, true, var_1.b.x, arg_2.b.x), vec4<bool>(arg_1.x, arg_1.x, false, false), arg_1.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: f32) -> vec4<u32> {
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    let var_0 = _wgslsmith_add_vec2_i32(min(abs(vec2<i32>(-54474i, -u_input.b)), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-80285i, 0i), vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 28699i)) << (~vec2<u32>(56287u, arg_2.d.x) % vec2<u32>(32u)))), -vec2<i32>(u_input.b, _wgslsmith_mult_i32(-1i, u_input.b << (59144u % 32u))));
    var var_1 = -(-_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-2147483647i, u_input.b, 2497i, 1i)), vec4<i32>(u_input.b, var_0.x, -3479i, u_input.b)) | max(vec4<i32>(reverseBits(-29878i), u_input.b, 1i, 0i), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 15736i, u_input.b, -36671i), vec4<i32>(u_input.b, -41832i, 2147483647i, var_0.x)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1395f, arg_2.a, -1502f) * _wgslsmith_f_op_vec3_f32(arg_2.c.zyw * arg_2.c.xwx)) - arg_2.c.zxy))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -458f, arg_3)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.c.yzz) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, 870f, -362f))))));
    return ~arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(select(any(vec2<bool>(false, true)), select(false, true, false), select(false, false, false)), false), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1597f, 202f)) * _wgslsmith_f_op_f32(f32(-1f) * -1151f)), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-1f), 598f) - vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -857f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(703f, 1003f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -503f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1409f)), 666f, _wgslsmith_f_op_f32(round(-444f)), -896f)))));
    let var_2 = var_1.x;
    let var_3 = -178f;
    global0 = array<Struct_3, 20>();
    var var_4 = Struct_1(firstTrailingBit(u_input.a), select(select(vec2<bool>(false, var_0.x), select(!vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, true), !var_0.x), true), select(vec2<bool>(true, true), !(!vec2<bool>(true, var_0.x)), vec2<bool>(any(vec3<bool>(var_0.x, true, var_0.x)), !var_0.x)), vec2<bool>(var_0.x, var_0.x)), func_4(func_1(min(vec2<i32>(16270i, u_input.b), abs(vec2<i32>(u_input.b, 0i))), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, true, true), var_0.x), global0[_wgslsmith_index_u32(u_input.a, 20u)]), func_1(abs(vec2<i32>(u_input.b, 2147483647i)), vec3<bool>(select(var_0.x, true, true), all(vec2<bool>(true, var_0.x)), !var_0.x), global0[_wgslsmith_index_u32(u_input.a, 20u)]).d, Struct_3(var_1.x, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_3, var_1.x, 515f) + vec4<f32>(413f, -377f, -672f, 1120f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-548f, var_1.x, var_3, var_3)))), ~(~vec2<u32>(u_input.a, u_input.a))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(669f, -262f, -839f)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1170f), func_1(vec2<i32>(u_input.b, 6209i), vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_3(-119f, vec2<bool>(var_0.x, var_0.x), vec4<f32>(var_1.x, var_3, 1763f, -721f), vec2<u32>(u_input.a, u_input.a))), abs(vec2<u32>(0u, u_input.a)), func_1(vec2<i32>(u_input.b, u_input.b), vec3<bool>(false, true, true), Struct_3(445f, vec2<bool>(var_0.x, false), vec4<f32>(var_1.x, var_3, var_1.x, var_3), vec2<u32>(u_input.a, 53907u))).d.xx)))), select(func_1(firstLeadingBit(abs(vec2<i32>(-1i, u_input.b))), vec3<bool>(var_0.x, false, all(vec3<bool>(var_0.x, var_0.x, false))), global0[_wgslsmith_index_u32(8133u & ~u_input.a, 20u)]).d, vec4<bool>(true, all(vec4<bool>(var_0.x, true, var_0.x, true)), select(true || var_0.x, var_0.x && var_0.x, true), true), !vec4<bool>(false || var_0.x, false, var_0.x, !var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(vec4<i32>(-50831i, u_input.b, u_input.b, u_input.b))), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_clamp_u32(u_input.a, func_2(14230u, Struct_3(var_1.x, var_4.b, vec4<f32>(632f, var_1.x, -497f, 626f), vec2<u32>(1u, 22823u)), vec4<f32>(949f, var_3, -1969f, 697f)), func_2(u_input.a, Struct_3(-2640f, vec2<bool>(true, true), vec4<f32>(var_3, 2196f, -1000f, 1091f), var_4.c.wy), vec4<f32>(var_1.x, var_1.x, var_1.x, var_3)))), u_input.a), var_1.x, _wgslsmith_add_u32(~(~_wgslsmith_div_u32(var_4.c.x, 35253u)), ~firstLeadingBit(u_input.a | 0u)), 2147483647i);
}

