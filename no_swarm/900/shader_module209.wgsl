struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
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

var<private> global0: vec3<u32> = vec3<u32>(0u, 28386u, 1u);

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<f32>(-302f, 879f, 1150f), false, Struct_1(false), 1u, vec4<u32>(39013u, 9425u, 101289u, 0u)), Struct_2(vec3<f32>(-282f, 776f, 216f), true, Struct_1(false), 0u, vec4<u32>(4294967295u, 4294967295u, 1u, 10113u)), Struct_2(vec3<f32>(156f, 361f, 652f), false, Struct_1(false), 4294967295u, vec4<u32>(43783u, 4294967295u, 45460u, 20849u)), Struct_2(vec3<f32>(-1000f, 505f, -707f), false, Struct_1(true), 33158u, vec4<u32>(38989u, 4164u, 48788u, 91816u)), Struct_2(vec3<f32>(882f, 272f, -1085f), true, Struct_1(true), 0u, vec4<u32>(4294967295u, 29676u, 0u, 0u)), Struct_2(vec3<f32>(654f, 132f, -1604f), false, Struct_1(false), 43300u, vec4<u32>(92063u, 1u, 0u, 0u)), Struct_2(vec3<f32>(1863f, -1116f, -2250f), true, Struct_1(true), 0u, vec4<u32>(1u, 4294967295u, 1u, 0u)), Struct_2(vec3<f32>(2340f, 303f, -1334f), false, Struct_1(true), 56186u, vec4<u32>(1u, 29221u, 22316u, 1u)), Struct_2(vec3<f32>(1803f, -146f, -1445f), true, Struct_1(true), 1u, vec4<u32>(37224u, 1u, 1u, 0u)), Struct_2(vec3<f32>(-1114f, -306f, -981f), true, Struct_1(true), 0u, vec4<u32>(0u, 4294967295u, 87343u, 0u)), Struct_2(vec3<f32>(-327f, 1730f, -271f), true, Struct_1(false), 27840u, vec4<u32>(1u, 20875u, 35122u, 0u)), Struct_2(vec3<f32>(155f, -589f, -533f), false, Struct_1(false), 4294967295u, vec4<u32>(41547u, 0u, 4294967295u, 4294967295u)), Struct_2(vec3<f32>(1490f, 680f, -761f), true, Struct_1(true), 0u, vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), Struct_2(vec3<f32>(123f, 228f, -1418f), false, Struct_1(true), 0u, vec4<u32>(0u, 0u, 0u, 0u)), Struct_2(vec3<f32>(693f, -704f, 696f), true, Struct_1(false), 0u, vec4<u32>(4294967295u, 4294967295u, 2650u, 50425u)), Struct_2(vec3<f32>(2007f, -361f, 507f), false, Struct_1(true), 26809u, vec4<u32>(4294967295u, 1u, 50467u, 33613u)), Struct_2(vec3<f32>(-631f, 542f, -748f), true, Struct_1(false), 4294967295u, vec4<u32>(71827u, 8275u, 1u, 81681u)), Struct_2(vec3<f32>(1088f, 183f, -288f), true, Struct_1(true), 35653u, vec4<u32>(4294967295u, 52795u, 66501u, 28840u)), Struct_2(vec3<f32>(-1351f, -1931f, 1000f), false, Struct_1(true), 67764u, vec4<u32>(1u, 59699u, 43173u, 1u)), Struct_2(vec3<f32>(463f, -1000f, -1000f), true, Struct_1(true), 65418u, vec4<u32>(4294967295u, 22960u, 0u, 0u)), Struct_2(vec3<f32>(249f, -1187f, 1057f), true, Struct_1(false), 1u, vec4<u32>(0u, 207u, 0u, 1283u)), Struct_2(vec3<f32>(417f, -630f, 176f), true, Struct_1(false), 4294967295u, vec4<u32>(37481u, 4294967295u, 13483u, 45277u)), Struct_2(vec3<f32>(-998f, -2819f, 260f), true, Struct_1(true), 1u, vec4<u32>(64245u, 37556u, 3786u, 23962u)), Struct_2(vec3<f32>(-604f, 2084f, -472f), false, Struct_1(false), 18723u, vec4<u32>(295u, 79994u, 1u, 13211u)), Struct_2(vec3<f32>(250f, -328f, 676f), false, Struct_1(false), 4294967295u, vec4<u32>(53699u, 3928u, 4294967295u, 0u)), Struct_2(vec3<f32>(212f, -114f, 2124f), true, Struct_1(false), 4294967295u, vec4<u32>(4294967295u, 4294967295u, 1u, 42267u)), Struct_2(vec3<f32>(888f, 645f, -854f), false, Struct_1(false), 1u, vec4<u32>(80473u, 0u, 28920u, 4294967295u)), Struct_2(vec3<f32>(976f, -952f, -874f), true, Struct_1(true), 20549u, vec4<u32>(60225u, 4294967295u, 29664u, 4294967295u)), Struct_2(vec3<f32>(721f, -837f, 790f), true, Struct_1(true), 4294967295u, vec4<u32>(1u, 12442u, 4294967295u, 1u)), Struct_2(vec3<f32>(-571f, -1000f, 1494f), false, Struct_1(true), 1u, vec4<u32>(48620u, 34392u, 47431u, 0u)), Struct_2(vec3<f32>(1092f, 457f, -361f), false, Struct_1(false), 0u, vec4<u32>(25548u, 0u, 4294967295u, 1u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: i32, arg_3: vec2<i32>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(u_input.c, 31u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1511f)) + -947f);
    global1 = array<Struct_2, 31>();
    global1 = array<Struct_2, 31>();
    var var_2 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-288f + _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_0, 462f)))), arg_0), true, var_0.c, _wgslsmith_add_u32(countOneBits(4294967295u), ~(~82877u)), var_0.e), arg_0, ~(~u_input.c), u_input.b, var_0.a.zz);
    return !all(select(select(select(vec3<bool>(var_2.a.b, var_0.b, var_0.c.a), vec3<bool>(var_2.a.b, var_0.b, var_0.b), vec3<bool>(var_2.a.c.a, var_0.b, true)), select(vec3<bool>(var_2.a.b, true, true), vec3<bool>(var_2.a.c.a, var_2.a.c.a, true), false), vec3<bool>(var_2.a.b, true, var_2.a.c.a)), vec3<bool>(arg_0 > -248f, any(vec3<bool>(true, true, var_0.b)), any(vec2<bool>(var_2.a.b, false))), !select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(false, true, var_2.a.b), false)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec3<i32>(~(-2147483647i) ^ min(firstTrailingBit(2147483647i), _wgslsmith_div_i32(arg_0, firstLeadingBit(arg_0))), ~firstLeadingBit(-27059i), _wgslsmith_clamp_i32(firstTrailingBit(1i), -min(_wgslsmith_div_i32(arg_0, -8010i), arg_0), i32(-1i) * -1i));
    var var_1 = vec4<u32>(reverseBits(~(u_input.c ^ ~7365u)), ~abs(4294967295u >> (u_input.c % 32u)) >> (abs(_wgslsmith_clamp_u32(1334u, 0u, 9695u) << (_wgslsmith_mult_u32(u_input.c, u_input.c) % 32u)) % 32u), u_input.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c, global0.x, _wgslsmith_sub_u32(42639u, u_input.c)), reverseBits(~vec3<u32>(global0.x, global0.x, u_input.c))));
    let var_2 = ~select(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.b, arg_0, arg_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, arg_0, -1i, 2147483647i), vec4<i32>(u_input.d.x, 37034i, u_input.b, var_0.x), vec4<i32>(var_0.x, 0i, var_0.x, u_input.d.x))), abs(vec4<i32>(u_input.d.x, u_input.b, var_0.x, arg_0))), vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(var_0.x), -var_0.x), ~0i, 7910i, _wgslsmith_clamp_i32(-2147483647i, arg_0, reverseBits(0i))), select(select(!vec4<bool>(true, arg_1.a, false, arg_1.a), select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a), vec4<bool>(true, false, false, arg_1.a)), all(vec3<bool>(true, true, arg_1.a))), select(select(vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a), vec4<bool>(false, true, arg_1.a, true), true), select(vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a), vec4<bool>(arg_1.a, true, arg_1.a, true), vec4<bool>(false, arg_1.a, true, arg_1.a)), true), arg_1.a));
    var var_3 = !vec2<bool>(2147483647i >= max(_wgslsmith_mod_i32(var_2.x, 35924i), -4298i), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1253f + -209f), 693f), vec2<u32>(var_1.x, 4294967295u), (var_2.x ^ var_0.x) ^ var_2.x, u_input.a.zz >> (abs(vec2<u32>(u_input.c, global0.x)) % vec2<u32>(32u))));
    var var_4 = Struct_3(Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1365f, -454f, 220f) - vec3<f32>(955f, -1531f, -168f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-583f, 1072f, -136f), vec3<f32>(-795f, 185f, -804f))))), var_3.x && all(select(vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(true, true, false), vec3<bool>(var_3.x, false, false))), arg_1, u_input.c, vec4<u32>(106511u, ~1u, 46384u, 57139u >> (var_1.x % 32u))), 201f, global0.x, reverseBits(_wgslsmith_mult_i32(abs(u_input.a.x), 0i) & 1i), vec2<f32>(1f, -197f));
    return Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b, var_4.b, var_4.a.a.x))))), arg_1.a, Struct_1(var_4.a.b), select(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_4.c, ~var_1.x), 47963u), _wgslsmith_sub_u32(reverseBits(_wgslsmith_sub_u32(var_4.a.e.x, u_input.c)), 1u), any(!select(vec4<bool>(arg_1.a, true, true, true), vec4<bool>(true, true, arg_1.a, false), arg_1.a))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x >> (0u % 32u), var_4.c, ~3296u, var_1.x | 66110u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 27348u, 81431u, global0.x), var_4.a.e)), var_4.a.e));
}

fn func_1(arg_0: f32) -> vec2<u32> {
    global1 = array<Struct_2, 31>();
    global0 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.c, u_input.c, 1u), ~vec3<u32>(~u_input.c, _wgslsmith_div_u32(global0.x, 11288u), firstTrailingBit(1u))), _wgslsmith_clamp_vec3_u32((vec3<u32>(u_input.c, u_input.c, 4294967295u) ^ vec3<u32>(0u, global0.x, 0u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 44946u, 4294967295u), vec3<u32>(0u, 0u, 30114u)), vec3<u32>(firstTrailingBit(u_input.c), u_input.c, ~u_input.c), ~(~vec3<u32>(u_input.c, u_input.c, 15464u))) ^ ~firstTrailingBit(vec3<u32>(13512u, 4294967295u, global0.x)));
    var var_0 = 40962u;
    let var_1 = func_3(1i, Struct_1(select(true, func_2(-1035f, global0.zz, -2147483647i, u_input.a.xx), true) & true));
    var var_2 = func_3(-1i, var_1.c).c;
    return vec2<u32>(29281u, 38756u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -17173i;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~max(_wgslsmith_dot_vec2_u32(func_1(123f), vec2<u32>(13659u, global0.x)), _wgslsmith_clamp_u32(global0.x, _wgslsmith_sub_u32(global0.x, 1u), 87794u)), global0.x), 31u)];
    var var_2 = var_1.e.zwx;
    var_2 = _wgslsmith_div_vec3_u32(var_1.e.yyx ^ ~vec3<u32>(~1u, u_input.c, ~1u), ~(reverseBits(max(vec3<u32>(0u, u_input.c, 6175u), var_1.e.wwz)) | vec3<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(var_1.e.xy, vec2<u32>(4294967295u, 0u)), func_3(1i, Struct_1(var_1.b)).e.x)));
    var_0 = u_input.a.x;
    global1 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-4239i, 1i, u_input.d.x, u_input.b >> (26168u % 32u)));
}

