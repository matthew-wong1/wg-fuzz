struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec2<f32>(2132f, -354f), Struct_1(-1i), 2640i), Struct_2(vec2<f32>(685f, -1550f), Struct_1(-28570i), -40550i), Struct_2(vec2<f32>(2624f, 1000f), Struct_1(-9811i), 2147483647i), Struct_2(vec2<f32>(175f, -523f), Struct_1(-24999i), 0i), Struct_2(vec2<f32>(-726f, 2091f), Struct_1(2147483647i), -21697i), Struct_2(vec2<f32>(-345f, 625f), Struct_1(i32(-2147483648)), 2147483647i), Struct_2(vec2<f32>(-1000f, -168f), Struct_1(i32(-2147483648)), -31295i), Struct_2(vec2<f32>(-1462f, 1120f), Struct_1(-28573i), 2147483647i), Struct_2(vec2<f32>(-1120f, -950f), Struct_1(0i), -14068i), Struct_2(vec2<f32>(317f, -1000f), Struct_1(-22485i), 31563i), Struct_2(vec2<f32>(1754f, 518f), Struct_1(1i), 2147483647i), Struct_2(vec2<f32>(-284f, 1000f), Struct_1(35555i), 2147483647i), Struct_2(vec2<f32>(-1759f, -700f), Struct_1(-4594i), 36344i), Struct_2(vec2<f32>(-885f, 1624f), Struct_1(15788i), -1i), Struct_2(vec2<f32>(-618f, -545f), Struct_1(-1i), 2147483647i), Struct_2(vec2<f32>(572f, -1214f), Struct_1(-1i), 8728i), Struct_2(vec2<f32>(204f, 327f), Struct_1(-63968i), 35966i), Struct_2(vec2<f32>(1952f, 163f), Struct_1(i32(-2147483648)), -1i), Struct_2(vec2<f32>(-536f, -761f), Struct_1(-1i), 0i), Struct_2(vec2<f32>(-415f, -1643f), Struct_1(i32(-2147483648)), 2147483647i), Struct_2(vec2<f32>(436f, -434f), Struct_1(0i), -7639i), Struct_2(vec2<f32>(-270f, -265f), Struct_1(53877i), 2147483647i), Struct_2(vec2<f32>(158f, -2368f), Struct_1(1i), 1i), Struct_2(vec2<f32>(433f, -1629f), Struct_1(2147483647i), 26226i), Struct_2(vec2<f32>(-489f, 1680f), Struct_1(160i), -1i), Struct_2(vec2<f32>(-765f, -1043f), Struct_1(49528i), 2147483647i), Struct_2(vec2<f32>(1638f, -577f), Struct_1(2147483647i), 26682i), Struct_2(vec2<f32>(-1073f, -144f), Struct_1(12435i), 2147483647i), Struct_2(vec2<f32>(-792f, 1133f), Struct_1(2147483647i), 2147483647i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = -firstTrailingBit(vec4<i32>(u_input.e.x, ~arg_0.a, ~firstLeadingBit(-2147483647i), 1i));
    let var_1 = global0[_wgslsmith_index_u32(~6228u << (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), reverseBits(u_input.c), firstTrailingBit(u_input.b), u_input.a.x), ~vec4<u32>(u_input.b, u_input.b, 1u, 1u))) % 32u), 5u)];
    global0 = array<vec4<bool>, 5>();
    var var_2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * 1016f) > 2231f);
    let var_3 = vec2<bool>(var_1.x, false);
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec4<u32> {
    global1 = select(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(30194u, u_input.c, u_input.d, u_input.a.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 80725u, u_input.d, u_input.d), vec4<u32>(4294967295u, u_input.b, u_input.b, 1u))), 5u)], vec4<bool>(global1.x, global1.x, !func_3(arg_0.b, arg_0, Struct_2(arg_1.a, Struct_1(arg_1.b.a), 2147483647i)), false), vec4<bool>(!global1.x, global1.x || (~arg_0.c != 40495i), !global1.x, true));
    let var_0 = !func_3(Struct_1(~countOneBits(-30243i)), Struct_2(arg_1.a, arg_0.b, firstTrailingBit(reverseBits(u_input.e.x))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.a))), arg_0.b, ~arg_0.c));
    global1 = select(vec4<bool>(var_0, false, global1.x, var_0), vec4<bool>(var_0, !all(!global1.zyw), select(!var_0, !global1.x, true), true), global0[_wgslsmith_index_u32(1u, 5u)]);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(max(arg_1.a.x, arg_1.a.x))), arg_0.a.x), _wgslsmith_f_op_f32(arg_0.a.x * 1000f))));
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(floor(arg_1.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -670f), global1.x || (u_input.a.x < 1u))), arg_0.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + arg_0.a.x) + arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(356f, _wgslsmith_f_op_f32(-arg_0.a.x)))))));
    return select(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.d, 34355u, u_input.a.x), vec4<u32>(u_input.d, u_input.c, 20185u, 1u)), vec4<u32>(4294967295u, u_input.d, 4294967295u, u_input.c)), _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.b, u_input.d, _wgslsmith_div_u32(59211u, 4294967295u), firstTrailingBit(42155u)), vec4<u32>(min(u_input.a.x, u_input.a.x), 1u, u_input.d, u_input.a.x)), u_input.a.x > firstLeadingBit(u_input.c)) >> (vec4<u32>(~u_input.b, _wgslsmith_div_u32(1u, max(~u_input.b, 1u)), 46187u, u_input.d) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = u_input.e.x;
    var var_1 = -u_input.e;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-586f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - -1502f), 1738f)))));
    let var_3 = u_input.b;
    let var_4 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, min(~abs(var_3), u_input.d)), 29u)], arg_0.xyz, Struct_2(vec2<f32>(-399f, -426f), Struct_1(_wgslsmith_mod_i32(-68640i << (var_3 % 32u), 2147483647i)), ~(38373i ^ var_0) | 2147483647i), all(global1.yyx));
    return global2[_wgslsmith_index_u32(u_input.b, 29u)];
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = u_input.c;
    var var_2 = firstTrailingBit(~(-(~(-arg_0))));
    var var_3 = func_4(_wgslsmith_sub_vec4_u32(select(~(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.b)), func_2(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(abs(u_input.a.x), 29u)]), true), ~(vec4<u32>(4294967295u, 35162u, u_input.b, 4294967295u) | vec4<u32>(1u, 1u, 4294967295u, u_input.c))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_1))), arg_1), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_3.a.x, -314f, -1315f) - _wgslsmith_f_op_vec4_f32(-arg_1)))))));
    return Struct_1(~_wgslsmith_mod_i32(-23995i, ~u_input.e.x << (4294967295u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global1.x, global1.x, global1.x, global1.x);
    var var_1 = func_1(~select(countOneBits(vec3<i32>(-6224i, u_input.e.x, 42456i) & vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)), countOneBits(abs(vec3<i32>(u_input.e.x, 2147483647i, -31857i))), var_0.xww), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1913f, -2604f) - 1f), _wgslsmith_f_op_f32(-435f - 420f), 1f, _wgslsmith_f_op_f32(1122f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1801f - -1474f)))));
    var var_2 = min(firstLeadingBit(abs(~vec3<u32>(13861u, u_input.c, 61858u) >> (~vec3<u32>(u_input.b, u_input.d, 82123u) % vec3<u32>(32u)))), ~(~select(firstLeadingBit(vec3<u32>(u_input.b, 13922u, 1u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 49997u), global1.x || true)));
    var_1 = func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(~68012u, u_input.b | 61007u, ~var_2.x, 4294967295u) << (firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, u_input.c, 7403u, u_input.c), vec4<u32>(33346u, u_input.a.x, var_2.x, 22366u))) % vec4<u32>(32u)), vec4<u32>(u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(18309u, u_input.a.x, u_input.c, 1u), vec4<u32>(var_2.x, 14259u, var_2.x, var_2.x)), ~23725u, 0u))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1018f, 1896f, 1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(134f, -945f, -470f) + vec3<f32>(-349f, -1982f, 1029f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1244f, -308f, 789f)))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, var_1.a, -20947i), vec3<i32>(var_1.a, u_input.e.x, u_input.e.x)), reverseBits(~(-7051i)), u_input.e.x) ^ select(vec3<i32>(-var_1.a, 2147483647i, ~(-59887i)), ~u_input.e | vec3<i32>(u_input.e.x, var_1.a, u_input.e.x), var_0.zwz));
}

