struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_1(true, vec4<u32>(34161u, 36468u, 11190u, 0u)), Struct_2(vec4<f32>(-1330f, 251f, -319f, -104f), -13913i, true, Struct_1(false, vec4<u32>(4294967295u, 17958u, 0u, 1u)))), Struct_3(Struct_1(false, vec4<u32>(8942u, 4294967295u, 4294967295u, 62545u)), Struct_2(vec4<f32>(464f, 907f, 1148f, -1000f), -20384i, false, Struct_1(true, vec4<u32>(0u, 4294967295u, 36576u, 9161u)))), Struct_3(Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 0u, 29588u)), Struct_2(vec4<f32>(636f, -1324f, 425f, 158f), -23018i, true, Struct_1(false, vec4<u32>(4753u, 40258u, 0u, 1u)))), Struct_3(Struct_1(false, vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), Struct_2(vec4<f32>(-122f, -1741f, -2898f, 1052f), 39542i, false, Struct_1(false, vec4<u32>(1u, 0u, 50809u, 2639u)))), Struct_3(Struct_1(true, vec4<u32>(98699u, 15159u, 1u, 1u)), Struct_2(vec4<f32>(1000f, -155f, -1955f, -802f), 0i, false, Struct_1(true, vec4<u32>(1u, 17245u, 4294967295u, 4294967295u)))), Struct_3(Struct_1(false, vec4<u32>(60590u, 49908u, 306u, 1u)), Struct_2(vec4<f32>(-228f, 378f, 589f, -433f), 9510i, true, Struct_1(true, vec4<u32>(4294967295u, 10003u, 6310u, 39352u)))), Struct_3(Struct_1(false, vec4<u32>(4294967295u, 0u, 28043u, 0u)), Struct_2(vec4<f32>(-157f, 247f, 1770f, -1100f), 0i, true, Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 56069u, 1u)))), Struct_3(Struct_1(false, vec4<u32>(2575u, 44205u, 4202u, 18840u)), Struct_2(vec4<f32>(-349f, 1080f, 411f, 800f), -29377i, true, Struct_1(false, vec4<u32>(1u, 4294967295u, 4294967295u, 1u)))), Struct_3(Struct_1(true, vec4<u32>(76488u, 1u, 4294967295u, 4294967295u)), Struct_2(vec4<f32>(2945f, 974f, -745f, -366f), 0i, true, Struct_1(true, vec4<u32>(4294967295u, 0u, 4294967295u, 107679u)))), Struct_3(Struct_1(true, vec4<u32>(4294967295u, 72139u, 4294967295u, 99982u)), Struct_2(vec4<f32>(2177f, -1084f, -1049f, -1070f), i32(-2147483648), false, Struct_1(true, vec4<u32>(8241u, 0u, 22938u, 4294967295u)))), Struct_3(Struct_1(false, vec4<u32>(10762u, 18312u, 0u, 18153u)), Struct_2(vec4<f32>(-1092f, -830f, 661f, -1493f), 0i, false, Struct_1(true, vec4<u32>(2425u, 4294967295u, 1u, 55420u)))), Struct_3(Struct_1(false, vec4<u32>(57534u, 25832u, 65685u, 0u)), Struct_2(vec4<f32>(-581f, 1133f, 424f, -224f), 0i, false, Struct_1(true, vec4<u32>(15338u, 0u, 1u, 1u)))), Struct_3(Struct_1(true, vec4<u32>(57768u, 4928u, 34306u, 1u)), Struct_2(vec4<f32>(192f, 733f, -129f, 393f), -8456i, true, Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 4281u, 4294967295u)))), Struct_3(Struct_1(true, vec4<u32>(17031u, 1u, 73039u, 5855u)), Struct_2(vec4<f32>(-313f, 1498f, -802f, -1027f), i32(-2147483648), true, Struct_1(false, vec4<u32>(0u, 25765u, 0u, 4294967295u)))), Struct_3(Struct_1(false, vec4<u32>(75314u, 62510u, 4294967295u, 1u)), Struct_2(vec4<f32>(-1124f, -797f, 1669f, -2238f), 2147483647i, false, Struct_1(true, vec4<u32>(1u, 90709u, 58986u, 57588u)))), Struct_3(Struct_1(true, vec4<u32>(25699u, 4294967295u, 20693u, 15870u)), Struct_2(vec4<f32>(-138f, 806f, -623f, 422f), 0i, false, Struct_1(true, vec4<u32>(698u, 9046u, 1u, 1u)))), Struct_3(Struct_1(true, vec4<u32>(79284u, 1u, 24257u, 34773u)), Struct_2(vec4<f32>(312f, -232f, 730f, 1455f), -1662i, false, Struct_1(false, vec4<u32>(78250u, 4294967295u, 32230u, 1u)))), Struct_3(Struct_1(true, vec4<u32>(68856u, 4294967295u, 24829u, 33110u)), Struct_2(vec4<f32>(-2205f, -518f, 1078f, 729f), -1i, true, Struct_1(false, vec4<u32>(4294967295u, 1u, 24325u, 104435u)))), Struct_3(Struct_1(false, vec4<u32>(10347u, 1u, 0u, 62277u)), Struct_2(vec4<f32>(281f, 1000f, -105f, -598f), 670i, false, Struct_1(false, vec4<u32>(38349u, 0u, 32642u, 4294967295u)))), Struct_3(Struct_1(true, vec4<u32>(4294967295u, 0u, 34931u, 4294967295u)), Struct_2(vec4<f32>(835f, -1000f, 311f, -203f), -1884i, true, Struct_1(true, vec4<u32>(107932u, 48272u, 0u, 37651u)))), Struct_3(Struct_1(true, vec4<u32>(2966u, 1u, 29667u, 0u)), Struct_2(vec4<f32>(-173f, -1482f, 627f, -1276f), 0i, true, Struct_1(false, vec4<u32>(36454u, 1u, 1u, 0u)))), Struct_3(Struct_1(false, vec4<u32>(1u, 4294967295u, 1u, 1u)), Struct_2(vec4<f32>(-667f, 619f, -449f, -926f), 51896i, true, Struct_1(false, vec4<u32>(13532u, 19953u, 4294967295u, 3814u)))));

var<private> global2: array<f32, 9> = array<f32, 9>(1227f, 1377f, 2430f, -1688f, -320f, 314f, 1000f, -1000f, 1313f);

var<private> global3: array<f32, 5> = array<f32, 5>(193f, 848f, 1000f, -1369f, 361f);

var<private> global4: vec3<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec4<i32>) -> bool {
    global2 = array<f32, 9>();
    global1 = array<Struct_3, 22>();
    var var_0 = arg_0.x;
    var var_1 = arg_1.zz;
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global4.x)), 1637f))));
    return !all(vec4<bool>(all(vec4<bool>(var_1.x, true, arg_1.x, arg_1.x)), any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), !arg_1.x, true)) | any(!(!select(vec4<bool>(arg_1.x, var_1.x, false, var_1.x), vec4<bool>(true, arg_1.x, true, var_1.x), vec4<bool>(arg_1.x, false, true, arg_1.x))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(select(global4.x, global3[_wgslsmith_index_u32(global0.c, 5u)], func_3(arg_0.b.xyx, select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0.a, arg_0.a || true), !select(vec3<bool>(false, false, true), vec3<bool>(arg_0.a, false, false), true)), vec4<i32>(global0.a, 3757i, abs(_wgslsmith_mult_i32(0i, 0i)), ~(-50456i)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(false, vec4<u32>(1u, 0u, 1u, arg_2.b.x))))), -1790f));
    var var_1 = ~arg_0.x;
    global0 = Struct_4(-(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-39814i, global0.a), vec2<i32>(-2147483647i, -34605i))) & -global0.a), arg_2.b.ww, _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, reverseBits(countOneBits(u_input.c))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a << (4294967295u % 32u), arg_0.x, 0u, ~global0.c), vec4<u32>(arg_0.x, _wgslsmith_dot_vec3_u32(arg_1.b.d.b.yxw, arg_1.a.b.wxw), _wgslsmith_dot_vec3_u32(arg_1.a.b.wyw, arg_1.a.b.ywx), ~arg_2.b.x))));
    global0 = Struct_4(-17911i, firstTrailingBit(min(global0.b, vec2<u32>(4294967295u, global0.c))), min(~(~u_input.c) ^ 1u, 28017u));
    var var_2 = countOneBits(max(~abs(~vec3<i32>(2147483647i, arg_1.b.b, 2147483647i)), ~(-vec3<i32>(-72666i, -2147483647i, 0i)) | vec3<i32>(max(1i, -2147483647i), arg_1.b.b, -16266i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -182f));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: bool, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = select(vec3<bool>(true, false, _wgslsmith_clamp_u32(~34554u, ~4294967295u, arg_3.x | 1u) <= ~abs(39681u)), vec3<bool>(false, arg_0, false), vec3<bool>(true, any(!vec2<bool>(arg_2, false)), !all(select(vec3<bool>(arg_0, false, arg_2), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, arg_2)))));
    global2 = array<f32, 9>();
    global0 = Struct_4(~2147483647i | firstLeadingBit(global0.a), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b.x, _wgslsmith_mod_u32(global0.c, 4294967295u)), firstLeadingBit(vec2<u32>(12262u, global0.c)) ^ global0.b, _wgslsmith_add_vec2_u32(max(arg_3, global0.b), ~global0.b)), max(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), arg_3), global0.b >> (abs(arg_3) % vec2<u32>(32u)))), _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(71706u, _wgslsmith_add_u32(global0.b.x, 31976u)), 16360u), arg_3.x));
    global3 = array<f32, 5>();
    var var_1 = Struct_3(Struct_1(true, vec4<u32>(1u, arg_3.x, global0.c, 0u ^ arg_3.x) << (min(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.c, arg_3.x, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, arg_3.x, u_input.a)), abs(vec4<u32>(u_input.c, global0.b.x, global0.c, 4294967295u))) % vec4<u32>(32u))), Struct_2(vec4<f32>(global3[_wgslsmith_index_u32(arg_3.x, 5u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(36697u, 9u)])) * _wgslsmith_f_op_f32(arg_1.x - global2[_wgslsmith_index_u32(arg_3.x, 9u)])), arg_1.x, _wgslsmith_f_op_f32(func_2(Struct_1(arg_2, vec4<u32>(4294967295u, u_input.a, global0.b.x, 42785u))))), -select(max(7205i, -1366i), _wgslsmith_mult_i32(global0.a, -4654i), !var_0.x), arg_2, Struct_1(false, abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.x, u_input.c, u_input.b, global0.c), vec4<u32>(u_input.a, 65084u, arg_3.x, 0u))))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 16861u;
    let var_1 = func_4(false, vec3<f32>(-1032f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global0.b.x), global0.b), Struct_3(Struct_1(false, vec4<u32>(u_input.c, 1u, 0u, u_input.a)), Struct_2(vec4<f32>(-407f, global2[_wgslsmith_index_u32(u_input.c, 9u)], 208f, -698f), 2147483647i, true, Struct_1(true, vec4<u32>(29766u, var_0, global0.c, 22742u)))), Struct_1(false, vec4<u32>(0u, var_0, 62425u, u_input.c))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(691f * -190f), global4.x))), !(!((0u & var_0) >= (1u << (u_input.a % 32u)))), abs(vec2<u32>(global0.b.x, 0u)) >> (~vec2<u32>(~0u, u_input.b) % vec2<u32>(32u)));
    let var_2 = reverseBits(vec2<i32>(global0.a, global0.a) << (~global0.b % vec2<u32>(32u))) >> (abs(~(abs(var_1.d.b.xz) | global0.b)) % vec2<u32>(32u));
    global3 = array<f32, 5>();
    global3 = array<f32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~abs(vec2<u32>(0u, var_1.d.b.x)), Struct_3(var_1.d, var_1), Struct_1(1u >= var_0, var_1.d.b ^ vec4<u32>(var_0, var_1.d.b.x, var_1.d.b.x, global0.b.x)))) + -210f), min(vec3<i32>(_wgslsmith_mod_i32(-49275i, var_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, global0.a, -2147483647i), vec3<i32>(var_1.b, 1i, var_1.b)), var_1.b << (var_0 % 32u)) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_1.b, 7498i) & vec3<i32>(-1i, global0.a, var_1.b), ~vec3<i32>(2143i, var_2.x, global0.a), ~vec3<i32>(0i, 62484i, 23672i)), ~(-vec3<i32>(1i, var_1.b, 0i) ^ -vec3<i32>(var_2.x, var_1.b, -1i))));
}

