struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 0u), vec3<i32>(1251i, -1i, -1i)), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec3<i32>(21740i, i32(-2147483648), 1i)), Struct_1(vec4<u32>(19508u, 0u, 23988u, 38687u), vec3<i32>(31861i, 1i, 0i)), Struct_1(vec4<u32>(65884u, 0u, 30979u, 17020u), vec3<i32>(-21628i, 2147483647i, 33176i)), Struct_1(vec4<u32>(4294967295u, 1u, 17554u, 0u), vec3<i32>(2147483647i, -19857i, 1117i)), Struct_1(vec4<u32>(4294967295u, 51382u, 74881u, 10063u), vec3<i32>(1i, 0i, 2147483647i)), Struct_1(vec4<u32>(14084u, 0u, 21u, 4294967295u), vec3<i32>(-33860i, -57065i, 43215i)), Struct_1(vec4<u32>(0u, 27467u, 1u, 1u), vec3<i32>(-4683i, 1i, 2147483647i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 60524u), vec3<i32>(17566i, 5220i, -17405i)), Struct_1(vec4<u32>(12263u, 28921u, 41693u, 4294967295u), vec3<i32>(59622i, 1i, -10904i)), Struct_1(vec4<u32>(0u, 21524u, 4294967295u, 4294967295u), vec3<i32>(1i, -26706i, 1i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 9039u, 4294967295u), vec3<i32>(-1i, -70281i, -29369i)));

var<private> global1: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(1146f, 1000f, -470f, 375f), vec4<f32>(204f, -257f, -1000f, 565f), vec4<f32>(-759f, -661f, -384f, -1225f), vec4<f32>(-447f, -620f, 285f, 799f), vec4<f32>(-635f, -663f, 1000f, -1224f), vec4<f32>(-1000f, 692f, -523f, 444f), vec4<f32>(194f, 627f, -1114f, -1000f), vec4<f32>(217f, -1604f, 862f, 1605f), vec4<f32>(1617f, -1271f, 711f, -1286f), vec4<f32>(1005f, 1289f, 1000f, 257f), vec4<f32>(303f, 430f, 288f, 1005f), vec4<f32>(-245f, -421f, -1598f, -1502f), vec4<f32>(659f, 393f, 1000f, -787f), vec4<f32>(-778f, -1542f, 395f, -505f), vec4<f32>(700f, 1123f, 991f, 1228f), vec4<f32>(-380f, -632f, -1000f, -1036f), vec4<f32>(481f, -373f, -1321f, -1019f), vec4<f32>(498f, 1203f, 969f, -588f), vec4<f32>(1969f, 557f, -622f, -463f));

var<private> global2: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(45650u, 0u, 56849u, 51723u), vec4<u32>(56192u, 13948u, 0u, 4294967295u), vec4<u32>(66768u, 36815u, 1u, 0u), vec4<u32>(0u, 1u, 10086u, 45814u), vec4<u32>(4294967295u, 1u, 0u, 8699u), vec4<u32>(883u, 0u, 10789u, 48574u), vec4<u32>(0u, 21858u, 0u, 0u), vec4<u32>(4294967295u, 36771u, 54271u, 0u), vec4<u32>(43959u, 0u, 1u, 64296u), vec4<u32>(1u, 74972u, 4294967295u, 4294967295u), vec4<u32>(1u, 6056u, 68108u, 4294967295u), vec4<u32>(10921u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 1u, 39701u), vec4<u32>(67046u, 1u, 20367u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 43080u), vec4<u32>(28608u, 63502u, 0u, 45408u), vec4<u32>(1780u, 0u, 0u, 17106u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>) -> u32 {
    let var_0 = any(!vec2<bool>(true, any(vec3<bool>(true, false, false)))) && true;
    global0 = array<Struct_1, 12>();
    let var_1 = global0[_wgslsmith_index_u32(~1u, 12u)];
    global1 = array<vec4<f32>, 19>();
    let var_2 = global0[_wgslsmith_index_u32(~2713u, 12u)];
    return 4294967295u;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 12>();
    global1 = array<vec4<f32>, 19>();
    global2 = array<vec4<u32>, 17>();
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~max(4294967295u, arg_0.a.x), ~_wgslsmith_mult_u32(u_input.b, 65053u), ~u_input.b), arg_0.a.yzw);
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(arg_0.a.x, 1u)), ~arg_0.a.x, 4294967295u, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 17590u), vec2<u32>(arg_0.a.x, 111281u)), abs(_wgslsmith_clamp_u32(60521u, var_0.x, 4294967295u)), 20518u)), vec3<i32>(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_clamp_i32(-2147483647i, arg_0.b.x, 1i)), 34445i, _wgslsmith_add_i32(_wgslsmith_add_i32(0i, u_input.a.x), -_wgslsmith_div_i32(-22754i, -2147483647i))));
    return arg_0;
}

fn func_1() -> bool {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(~_wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.b, u_input.b, u_input.b, 24615u) ^ vec4<u32>(0u, u_input.b, 4294967295u, u_input.b)), _wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(u_input.b, 17u)], vec4<u32>(u_input.b, u_input.b, u_input.b, 21608u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u), global2[_wgslsmith_index_u32(u_input.b, 17u)]) % vec4<u32>(32u)), ~(vec4<u32>(u_input.b, 33876u, u_input.b, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u)))), -vec3<i32>(-u_input.a.x, -1i, u_input.a.x) | vec3<i32>(_wgslsmith_mod_i32(-1430i, var_0) << (~u_input.b % 32u), u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, var_0)), firstTrailingBit(vec2<i32>(0i, 72684i)))));
    let var_2 = func_3(global0[_wgslsmith_index_u32(max(0u, func_2(vec3<i32>(var_0, var_0, -42091i), vec2<i32>(u_input.a.x, var_0) & vec2<i32>(-7535i, u_input.a.x))) & _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(~var_1.a, vec4<u32>(var_1.a.x, 937u, 12214u, 49380u))), 12u)]);
    var_1 = func_3(func_3(var_2));
    var var_3 = ~(~min(var_2.a.x & ~1u, func_2(_wgslsmith_sub_vec3_i32(var_1.b, vec3<i32>(var_0, 54349i, var_2.b.x)), -var_2.b.xy)));
    return true | all(vec4<bool>(true, true, true, select(true, true, true)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_clamp_u32(min(_wgslsmith_dot_vec2_u32(~vec2<u32>(38102u, 15632u), arg_3.a.yy), arg_2), ~arg_2, ~0u);
    var var_1 = arg_3;
    var var_2 = vec4<i32>(-5864i, abs(~firstTrailingBit(max(arg_3.b.x, -62645i))), -var_1.b.x, 39736i);
    global2 = array<vec4<u32>, 17>();
    var var_3 = !(!arg_1.yx);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(482f)), _wgslsmith_f_op_f32(f32(-1f) * -421f)), arg_1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -420f), _wgslsmith_f_op_f32(ceil(799f))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(~u_input.b, u_input.b >> (11132u % 32u), u_input.b, u_input.b)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(39744u, u_input.b, 2054u, 57704u) ^ _wgslsmith_clamp_vec4_u32(global2[_wgslsmith_index_u32(1u, 17u)], vec4<u32>(u_input.b, 16314u, u_input.b, u_input.b), global2[_wgslsmith_index_u32(4294967295u, 17u)]), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(global2[_wgslsmith_index_u32(0u, 17u)], vec4<u32>(u_input.b, u_input.b, u_input.b, 86222u), global2[_wgslsmith_index_u32(17989u, 17u)]), global2[_wgslsmith_index_u32(~1u, 17u)]), (global2[_wgslsmith_index_u32(84822u, 17u)] & global2[_wgslsmith_index_u32(0u, 17u)]) & vec4<u32>(0u, u_input.b, 4294967295u, u_input.b))), vec4<bool>(!func_1(), !all(vec4<bool>(true, true, true, true)), true, true), 50523u, func_3(func_3(Struct_1(global2[_wgslsmith_index_u32(u_input.b, 17u)] & vec4<u32>(u_input.b, 38036u, u_input.b, u_input.b), u_input.a)))));
    let var_1 = ~(~firstLeadingBit(u_input.b));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(var_0 + var_0), -1000f, 313f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(548f, var_0, -1000f) - vec3<f32>(var_0, var_0, -1484f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(309f, 459f, -1002f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, var_0, var_0)))))) + vec3<f32>(-1075f, 304f, _wgslsmith_f_op_f32(func_4(~global2[_wgslsmith_index_u32(17820u, 17u)], select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false), ~var_1, global0[_wgslsmith_index_u32(1u, 12u)]))))));
    let var_3 = global0[_wgslsmith_index_u32(var_1, 12u)];
    global0 = array<Struct_1, 12>();
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-244f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1128f, _wgslsmith_f_op_f32(func_4(vec4<u32>(64813u, u_input.b, var_1, u_input.b), vec4<bool>(true, false, true, false), 44834u, global0[_wgslsmith_index_u32(var_3.a.x, 12u)]))))))) - _wgslsmith_f_op_f32(step(1165f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f), var_0))));
    var var_5 = _wgslsmith_mult_vec3_u32(func_3(global0[_wgslsmith_index_u32(u_input.b, 12u)]).a.xwy, var_3.a.zzy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(27551u | abs(var_5.x), 19u)] - _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(var_5.x, 19u)] - global1[_wgslsmith_index_u32(var_3.a.x >> (4294967295u % 32u), 19u)]))), select(_wgslsmith_clamp_vec3_i32(var_3.b, var_3.b, _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_3.b.x, u_input.a.x, -22354i), vec3<i32>(2147483647i, 77728i, -30292i)), abs(var_3.b), select(vec3<i32>(var_3.b.x, 2147483647i, u_input.a.x), var_3.b, vec3<bool>(true, true, true)))), vec3<i32>(abs(1i), u_input.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(8514i, 1i, var_3.b.x), var_3.b), 4134i)), vec3<bool>(true, true, true)), vec4<f32>(-506f, 1489f, _wgslsmith_f_op_f32(abs(var_0)), 473f), vec3<f32>(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(870f + _wgslsmith_f_op_f32(trunc(586f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x * 2525f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1427f)))), var_0), firstLeadingBit(-27240i));
}

