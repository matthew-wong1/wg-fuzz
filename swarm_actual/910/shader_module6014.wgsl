struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = Struct_1(~_wgslsmith_mod_vec4_i32(-vec4<i32>(-10533i, 27763i, u_input.a, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.a), vec4<i32>(-2147483647i, -2147483647i, 0i, -2737i))) >> (~_wgslsmith_clamp_vec4_u32(arg_2.a, vec4<u32>(arg_2.a.x, arg_0, 23181u, arg_2.a.x) >> (arg_2.a % vec4<u32>(32u)), vec4<u32>(arg_0, 69189u, u_input.b, 0u)) % vec4<u32>(32u)), _wgslsmith_mod_vec3_i32(~vec3<i32>(14959i ^ u_input.a, u_input.c ^ -14584i, ~u_input.c), ~(-vec3<i32>(-12090i, 1i, 9905i)) & abs(vec3<i32>(u_input.c, -23406i, 1i) >> (vec3<u32>(u_input.d, arg_0, u_input.d) % vec3<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(450f, 210f)))), -1000f, _wgslsmith_f_op_f32(max(768f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1987f, 1036f, false)))))), ~(~vec3<u32>(~u_input.d, ~1u, arg_0)));
    let var_1 = Struct_3(~(~vec4<u32>(~28030u, 1u, arg_0 & 1u, arg_0)));
    var var_2 = u_input.c;
    let var_3 = Struct_4(arg_2, Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.c, 37416i, -2147483647i, u_input.c), vec4<i32>(u_input.a, var_0.a.x, 8077i, -51603i)), vec4<i32>(-20632i, var_0.b.x, var_0.b.x, -39046i)), vec4<i32>(~2147483647i, u_input.c, ~var_0.b.x, _wgslsmith_mult_i32(var_0.a.x, -3168i))), select(var_0.b, -vec3<i32>(-38994i, 1i, var_0.b.x), true), var_0.c, arg_2.a.wzz));
    var var_4 = !any(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), arg_1), vec2<bool>(arg_1, true), vec2<bool>(true, true)), vec2<bool>(false, true), all(vec3<bool>(true, arg_1, true))));
    return reverseBits(~firstLeadingBit(reverseBits(vec3<u32>(1u, arg_0, var_0.d.x))) ^ vec3<u32>(select(u_input.b, var_3.a.a.x, false) & firstTrailingBit(11765u), 8200u, 1u));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    global0 = 31566u;
    global0 = u_input.b;
    var var_0 = func_3(u_input.b, !arg_0.x, Struct_3(~min(vec4<u32>(4849u, 30331u, 4294967295u, u_input.b), reverseBits(vec4<u32>(38699u, 1u, 4294967295u, u_input.d)))));
    let var_1 = Struct_1(vec4<i32>(-1i) * -select(firstLeadingBit(vec4<i32>(u_input.c, 0i, -2147483647i, u_input.a)), firstTrailingBit(vec4<i32>(u_input.a, arg_1, u_input.a, 16360i)), all(arg_0)), min(vec3<i32>(u_input.a, u_input.c, u_input.c << (0u % 32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(12768i, -24004i, arg_1), vec3<i32>(u_input.a, u_input.a, u_input.c), vec3<i32>(u_input.c, arg_1, arg_1)) | abs(vec3<i32>(0i, arg_1, u_input.a))) >> (max(vec3<u32>(firstLeadingBit(0u), u_input.b, 0u), ~(~vec3<u32>(0u, 75476u, u_input.d))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f)), -1077f, _wgslsmith_f_op_f32(min(-435f, -756f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, 1643f, 219f)))))), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b) & var_0.xz, ~var_0.zz), vec2<u32>(2582u, 41268u)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.d, 4294967295u, 121873u), ~vec3<u32>(var_0.x, u_input.d, 9796u), false), vec3<u32>(_wgslsmith_div_u32(var_0.x, 100254u), u_input.b, 46780u)), func_3(_wgslsmith_sub_u32(firstLeadingBit(var_0.x), ~8161u), arg_0.x, Struct_3(vec4<u32>(139524u, u_input.b, var_0.x, 37288u))).x));
    global0 = 1u;
    return Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-28130i, u_input.c, -1i, u_input.a) << (select(vec4<u32>(0u, 4294967295u, 26581u, u_input.b), vec4<u32>(34222u, 1u, u_input.d, var_1.d.x), vec4<bool>(false, true, arg_0.x, arg_0.x)) % vec4<u32>(32u)), select(var_1.a, vec4<i32>(arg_1, u_input.c, 2147483647i, -15993i), !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))) & (~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.x, -32457i, 0i, u_input.c), var_1.a) >> (vec4<u32>(~var_1.d.x, var_1.d.x, ~var_0.x, 1u) % vec4<u32>(32u))), ~(~var_1.a.yww), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.c.x)), var_1.c.x, var_1.c.x))), var_1.c)), var_1.d);
}

fn func_1(arg_0: i32) -> Struct_3 {
    global0 = 140963u;
    global0 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(~85960u, ~abs(_wgslsmith_div_u32(4294967295u, 4294967295u))), 35533u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(~35155u, ~u_input.d, 26380u), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1u, 0u), vec3<u32>(30104u, 1u, 1u), vec3<u32>(1u, 86063u, 1u)), vec3<u32>(u_input.b, u_input.b, 1u) & vec3<u32>(50144u, 0u, u_input.d))), _wgslsmith_mult_u32(u_input.b, u_input.d));
    global0 = ~u_input.b >> (countOneBits(_wgslsmith_mod_u32(reverseBits(183u), u_input.b)) % 32u);
    var var_0 = func_2(vec2<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -841f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1130f, 1373f, false)))), arg_0);
    let var_1 = true & (true || (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(732f, var_0.c.x)))) > 1543f));
    return Struct_3(~select(abs(~vec4<u32>(3304u, var_0.d.x, u_input.b, u_input.b)), vec4<u32>(1u, u_input.b, var_0.d.x, u_input.d) >> (vec4<u32>(35324u, 7383u, 1u, var_0.d.x) % vec4<u32>(32u)), var_1));
}

fn func_4(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, u_input.c, -2147483647i, u_input.a), vec4<i32>(-16017i, -64622i, u_input.c, -2147483647i), vec4<bool>(false, true, false, false)), vec4<i32>(1i, u_input.a, -2147483647i, 0i)), _wgslsmith_mult_i32(u_input.a, 8803i) << (u_input.d % 32u), select(u_input.a, 1i << (u_input.b % 32u), true), u_input.a) ^ (_wgslsmith_mult_vec4_i32(-func_2(vec2<bool>(false, false), 2147483647i).a, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, -2147483647i) >> (vec4<u32>(37030u, u_input.d, arg_0.a.x, 0u) % vec4<u32>(32u)), vec4<i32>(u_input.c, -44484i, u_input.a, 41693i), vec4<i32>(u_input.a, 2147483647i, 2147483647i, u_input.a))) << (arg_0.a % vec4<u32>(32u)));
    global0 = func_1(_wgslsmith_mod_i32(var_0.x, u_input.c)).a.x;
    global0 = 49207u;
    var var_1 = _wgslsmith_mod_u32(func_2(vec2<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))), any(vec4<bool>(false, false, false, true))), firstTrailingBit((30796i << (u_input.d % 32u)) ^ (-21314i | u_input.c))).d.x, u_input.b);
    global0 = arg_0.a.x;
    return vec2<bool>(true, arg_0.a.x <= (arg_0.a.x ^ min(_wgslsmith_clamp_u32(arg_0.a.x, arg_0.a.x, 129484u), abs(arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 2383u >> (_wgslsmith_dot_vec2_u32(~reverseBits(max(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.b, u_input.b))), ~vec2<u32>(u_input.d, u_input.b)) % 32u);
    var var_0 = any(!(!func_4(func_1(u_input.c))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(955f, -1537f, 1545f, 1657f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-610f, 1185f, -1191f, 536f), vec4<f32>(1000f, -153f, -651f, -331f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1351f, 1000f, -1911f, -1292f)), vec4<f32>(-272f, 1000f, 396f, -213f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(f32(-1f) * -2184f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-525f, -1323f)) + -311f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-280f, -202f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1150f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-718f)) + _wgslsmith_f_op_f32(1535f - -775f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(702f)), _wgslsmith_f_op_f32(504f * -1264f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(375f, -646f, 1205f, -1122f), vec4<f32>(-221f, 1000f, 1593f, -564f))))), ~vec3<u32>(1u, firstTrailingBit(1u), 26622u), u_input.a);
    let var_2 = ~_wgslsmith_mod_u32(~u_input.b, _wgslsmith_div_u32(~0u >> (~var_1.c.x % 32u), firstLeadingBit(0u)));
    global0 = _wgslsmith_mult_u32(u_input.b, var_1.c.x);
    let var_3 = func_1(var_1.d);
    var var_4 = select(!any(vec3<bool>(true, true, true)), true, true);
    global0 = firstLeadingBit(u_input.b | 0u);
    var var_5 = Struct_1(reverseBits(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.d, -2147483647i, -17041i, 2147483647i) ^ vec4<i32>(var_1.d, -33372i, u_input.c, 3017i), vec4<i32>(72769i, var_1.d, u_input.c, var_1.d) | vec4<i32>(var_1.d, var_1.d, var_1.d, var_1.d)))), ~select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -1i, -1i) ^ vec3<i32>(var_1.d, -1i, u_input.c), -vec3<i32>(2147483647i, -1i, 0i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a, u_input.c, var_1.d), vec3<i32>(-1i, var_1.d, u_input.a)), _wgslsmith_div_f32(var_1.b.x, var_1.a.x) > _wgslsmith_div_f32(-1359f, 688f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, var_1.a.x, 1255f), vec3<f32>(1041f, var_1.a.x, var_1.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-448f, 1207f, -257f) - var_1.b.xzz), true)), ~var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b, reverseBits(~_wgslsmith_sub_vec3_i32(~vec3<i32>(var_1.d, u_input.a, -2147483647i), ~vec3<i32>(34067i, var_1.d, var_1.d))));
}

