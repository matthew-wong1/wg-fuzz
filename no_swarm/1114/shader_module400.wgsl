struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(14195i, 38258i, 1i, 2147483647i, 2147483647i, -1i, -2142i);

var<private> global1: vec2<i32> = vec2<i32>(-19111i, 0i);

var<private> global2: bool;

var<private> global3: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(999f, -1135f, -1000f, -360f), vec4<f32>(973f, -716f, 1000f, 285f), vec4<f32>(-1000f, 477f, 657f, 1000f), vec4<f32>(-1000f, -210f, -531f, 833f), vec4<f32>(686f, 636f, -1235f, 798f), vec4<f32>(-789f, 1637f, -494f, 1176f), vec4<f32>(-1595f, 1088f, 1553f, 831f), vec4<f32>(-192f, 129f, -1075f, -190f), vec4<f32>(-560f, -118f, 2004f, 860f), vec4<f32>(-1000f, 1735f, -142f, -1641f), vec4<f32>(-694f, -756f, 684f, 1723f), vec4<f32>(-1308f, 514f, -955f, -342f), vec4<f32>(1266f, 1000f, -328f, 630f), vec4<f32>(1000f, 1123f, -711f, -2023f), vec4<f32>(605f, 121f, -144f, -1047f), vec4<f32>(-1326f, 199f, -1498f, -831f), vec4<f32>(-1018f, -209f, -1289f, -765f), vec4<f32>(1476f, -1000f, -1063f, 128f), vec4<f32>(-638f, 1404f, -138f, 575f));

var<private> global4: Struct_1 = Struct_1(-5962i, false);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: vec2<i32>) -> vec2<f32> {
    var var_0 = select(!vec2<bool>(true, any(vec4<bool>(true, true, true, true))), !vec2<bool>(true, global4.b), global4.b);
    global3 = array<vec4<f32>, 19>();
    var var_1 = arg_0;
    let var_2 = Struct_3(arg_0, ~min(firstLeadingBit(~vec3<i32>(2147483647i, global4.a, -8838i)), -vec3<i32>(global4.a, 0i, 31972i)), arg_3);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1762f - -190f)))), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1, 188f)), arg_1)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(trunc(-512f))), 1000f)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1424f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))))));
}

fn func_3(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_add_i32(-_wgslsmith_add_i32(_wgslsmith_mult_i32(global1.x, 2147483647i), ~u_input.b), ~_wgslsmith_sub_i32(-21963i, -12090i)), true);
    let var_1 = _wgslsmith_f_op_f32(floor(arg_0.a.x));
    var var_2 = vec2<i32>(_wgslsmith_div_i32(global1.x, u_input.b) | firstLeadingBit(global0[_wgslsmith_index_u32(reverseBits(u_input.c), 7u)]), ~(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.c, 7u)], -12494i) & (global4.a << (69150u % 32u)))) | vec2<i32>(-72216i, 1i);
    global1 = -vec2<i32>(-u_input.b, ~arg_0.c.x);
    let var_3 = ~vec4<u32>(u_input.c, 1u, 1u, 1u) >> (countOneBits(((vec4<u32>(u_input.a.x, 51609u, 1u, 0u) & vec4<u32>(4294967295u, u_input.c, u_input.a.x, 69997u)) >> (~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))) ^ firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 1u, 26906u, 32230u)))) % vec4<u32>(32u));
    return Struct_3(arg_0.b, -vec3<i32>(abs(global1.x), -23961i | _wgslsmith_div_i32(var_2.x, -2147483647i), -1i), arg_0.c.wx);
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    global1 = vec2<i32>(reverseBits(301i), 5695i);
    global0 = array<i32, 7>();
    var var_0 = Struct_3(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-157f, 487f))), Struct_1(1i, global4.b), reverseBits(vec4<i32>(global1.x, 39713i, 0i, 2147483647i)) >> ((vec4<u32>(1u, u_input.a.x, 0u, 4294967295u) & vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.c)) % vec4<u32>(32u)), arg_1)).a, vec3<i32>(_wgslsmith_add_i32(select(_wgslsmith_div_i32(34045i, u_input.b), global1.x, global1.x == -51366i), min(reverseBits(-2147483647i), arg_1)), 0i, abs(-global1.x)), -vec2<i32>(-3551i, _wgslsmith_mod_i32(countOneBits(-16488i), -1i)));
    global0 = array<i32, 7>();
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(select(u_input.a, vec3<u32>(49287u, 47294u, 1u), vec3<bool>(arg_0.a.b, var_0.a.b, global4.b)), vec3<u32>(26179u, u_input.a.x, u_input.c))), abs(~u_input.a)) << (reverseBits(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, u_input.c), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), u_input.a))) % 32u);
    return func_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(751f, -1094f), vec2<f32>(-997f, -306f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-276f, 1128f) + vec2<f32>(567f, -1074f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-649f, 144f))))), var_0.a, firstLeadingBit(vec4<i32>(-global4.a, func_3(Struct_2(vec2<f32>(1226f, -1000f), arg_0.a, vec4<i32>(global4.a, var_0.a.a, arg_1, -1i), 1i)).c.x, ~global0[_wgslsmith_index_u32(42534u, 7u)], 2147483647i)), -1205i)).a;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = func_4(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(0i, true), 1f, u_input.a.xz, ~vec2<i32>(-38762i, -36560i))), Struct_1(global0[_wgslsmith_index_u32(abs(0u), 7u)], global4.b), ~firstLeadingBit(vec4<i32>(arg_0.x, -32579i, u_input.b, global4.a)), _wgslsmith_dot_vec2_i32(select(arg_0.xz, vec2<i32>(-1i, -2147483647i), global4.b), abs(arg_0.xx)))), ~_wgslsmith_mod_i32(min(-25080i, 2147483647i) << (_wgslsmith_mult_u32(u_input.a.x, u_input.c) % 32u), select(2466i, ~2147483647i, !global4.b)));
    var_0 = func_4(Struct_3(Struct_1(-_wgslsmith_clamp_i32(var_0.a, arg_0.x, global0[_wgslsmith_index_u32(u_input.c, 7u)]), true), ~(~vec3<i32>(var_0.a, -35133i, -20582i)) | max(~arg_0, vec3<i32>(global4.a, var_0.a, global4.a)), -(~vec2<i32>(0i, 0i))), global1.x);
    let var_1 = func_4(Struct_3(func_3(Struct_2(vec2<f32>(706f, 972f), func_4(Struct_3(Struct_1(global1.x, false), arg_0, vec2<i32>(-6038i, 22759i)), var_0.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-36414i, global1.x, global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<i32>(5833i, global4.a, var_0.a, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), 26732i)).a, vec3<i32>(_wgslsmith_mod_i32(~u_input.b, ~(-1i)), u_input.b, i32(-1i) * -2147483647i), -max(arg_0.zx, -vec2<i32>(arg_0.x, global4.a))), _wgslsmith_dot_vec2_i32(arg_0.zy, _wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.b, u_input.b), _wgslsmith_mult_vec2_i32(arg_0.xy << (u_input.a.zz % vec2<u32>(32u)), ~arg_0.zz), _wgslsmith_div_vec2_i32(arg_0.xz, vec2<i32>(2147483647i, 15508i) << (u_input.a.xx % vec2<u32>(32u))))));
    let var_2 = Struct_2(vec2<f32>(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1011f, 302f))))))), var_1, vec4<i32>(arg_0.x, -23355i, -14906i, global1.x), ~_wgslsmith_clamp_i32(arg_0.x & _wgslsmith_sub_i32(var_0.a, global4.a), global1.x, _wgslsmith_mod_i32(-2147483647i, 1i) >> ((u_input.a.x >> (u_input.a.x % 32u)) % 32u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, 1199f, var_2.a.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, 2099f, -343f)))))));
    return func_4(Struct_3(var_1, vec3<i32>(39597i, countOneBits(1i), min(abs(arg_0.x), ~(-1i))), var_2.c.xx), (~38324i << (u_input.a.x % 32u)) & arg_0.x);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>) -> Struct_1 {
    global4 = arg_0.b;
    var var_0 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(68772u, u_input.a.x, 0u, ~u_input.c)), ~vec4<u32>(abs(_wgslsmith_add_u32(u_input.c, 110271u)), abs(_wgslsmith_mod_u32(0u, u_input.a.x)), abs(u_input.c), u_input.c), ~vec4<u32>(~u_input.a.x, 4294967295u, 12329u, ~(~u_input.a.x)));
    let var_1 = vec3<bool>(global4.b, false, true);
    global2 = true;
    var var_2 = arg_0;
    return Struct_1(u_input.b, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 19>();
    let var_0 = vec4<i32>(global0[_wgslsmith_index_u32(~u_input.c, 7u)] ^ -36405i, 0i, abs(max(-12746i, -2147483647i)) ^ -_wgslsmith_add_i32(-2147483647i, global4.a), 38757i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -30366i, -3614i) >> (u_input.a % vec3<u32>(32u)), countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 1i, 0i)))) & _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(10780i, -68797i, 2147483647i, global4.a)), ~(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global4.a, global1.x, 82130i) & vec4<i32>(44199i, -2147483647i, 1i, 29801i))), ~firstTrailingBit(-vec4<i32>(global0[_wgslsmith_index_u32(8745u, 7u)], u_input.b, -2147483647i, 1i)));
    let var_1 = Struct_2(vec2<f32>(1f, 1f), func_5(Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), func_1(var_0.yyw), ~var_0, abs(func_4(Struct_3(Struct_1(global4.a, false), var_0.zzz, var_0.zy), global4.a).a)), global1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(399f, 1375f, -1027f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(781f, -859f, -1000f), vec3<f32>(-1250f, 1848f, 2274f)) + _wgslsmith_div_vec3_f32(vec3<f32>(720f, 135f, -1293f), vec3<f32>(-499f, -559f, 469f))))), abs(var_0), 2147483647i);
    var var_2 = select(!select(vec4<bool>(select(true, true, true), true, !global4.b, func_4(Struct_3(Struct_1(var_1.d, false), var_0.ywy, var_0.zy), u_input.b).b), vec4<bool>(!global4.b, true, var_1.b.b, var_1.b.b & var_1.b.b), true), !select(select(vec4<bool>(false, false, true, true), !vec4<bool>(var_1.b.b, global4.b, global4.b, var_1.b.b), 12972u <= u_input.c), vec4<bool>(false, true, -51107i <= global1.x, var_1.b.b), vec4<bool>(true, true, any(vec2<bool>(global4.b, var_1.b.b)), global4.b)), vec4<bool>(true, false, true, global4.b));
    var var_3 = Struct_3(var_1.b, _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(12125u, 7u)] << (0u % 32u), 1i, -u_input.b)), var_1.c.ywx), var_1.c.xx);
    var var_4 = Struct_3(func_1(~(var_1.c.zzy << (vec3<u32>(u_input.a.x, u_input.c, u_input.a.x) % vec3<u32>(32u)))), var_1.c.xzx, ~abs(countOneBits(var_3.c)));
    var var_5 = func_4(Struct_3(var_4.a, var_0.yzz, var_0.zx), var_3.b.x).a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_u32(u_input.a.yz, u_input.a.xz) >> (select(vec2<u32>(0u, ~4294967295u), u_input.a.xz, -var_0.x == -1i) % vec2<u32>(32u)), u_input.a.xy, countOneBits(vec4<i32>(var_4.c.x, _wgslsmith_add_i32(-var_3.a.a, global0[_wgslsmith_index_u32(u_input.a.x, 7u)] | u_input.b), 2147483647i ^ ~global4.a, _wgslsmith_div_i32(abs(global1.x), ~global0[_wgslsmith_index_u32(u_input.c, 7u)]))));
}

