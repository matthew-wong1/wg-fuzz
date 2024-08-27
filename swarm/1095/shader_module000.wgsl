struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: vec2<u32>,
    d: Struct_3,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(14890u, 3362u, 0u, 6920u, 0u, 4294967295u, 1u, 1u, 1u, 4294967295u, 93627u, 38706u, 31311u, 4294967295u, 18693u, 1u, 11597u, 1u, 1u, 6803u, 0u, 113714u, 1u, 5451u, 0u, 12869u, 1u);

var<private> global1: array<u32, 23> = array<u32, 23>(0u, 27158u, 1u, 1u, 85696u, 40787u, 0u, 48848u, 46356u, 4294967295u, 0u, 1u, 4294967295u, 159966u, 0u, 23791u, 12991u, 1u, 4294967295u, 1u, 13761u, 0u, 43948u);

var<private> global2: Struct_3;

var<private> global3: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0, 1241f), _wgslsmith_f_op_f32(select(arg_0, 848f, true)), _wgslsmith_f_op_f32(sign(708f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, 1000f, 734f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(abs(arg_0))))), vec3<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(612f)))), 1289f), global2.a.x));
    let var_1 = _wgslsmith_add_u32(reverseBits(u_input.c.x), arg_1);
    let var_2 = Struct_5(Struct_2(Struct_1(u_input.b, vec4<i32>(u_input.a, ~u_input.b, min(-11805i, -13845i), u_input.a), -82668i), global0[_wgslsmith_index_u32((_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], var_1) << (_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], u_input.c.x) % 32u)) & 1u, 27u)], Struct_1(u_input.a, reverseBits(vec4<i32>(u_input.b, 20733i, u_input.b, u_input.a)) | _wgslsmith_mult_vec4_i32(vec4<i32>(-12393i, u_input.b, u_input.a, u_input.a), vec4<i32>(u_input.a, 9853i, u_input.a, -8131i)), -(u_input.b << (62873u % 32u)))), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(145f * 2369f), arg_0), false), firstTrailingBit(select(u_input.c.zz & u_input.c.zx, _wgslsmith_mod_vec2_u32(vec2<u32>(35589u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)]), vec2<u32>(u_input.c.x, u_input.c.x)), vec2<bool>(global2.a.x, global2.a.x)) >> ((u_input.c.zy | u_input.c.yy) % vec2<u32>(32u))), Struct_3(global2.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zx + var_0.xx)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(742f, arg_0) + vec2<f32>(arg_0, var_0.x))), var_0.zx, select(vec2<bool>(select(global2.a.x, true, false), true), select(vec2<bool>(global2.a.x, false), global2.a, vec2<bool>(global2.a.x, true)), global2.a))));
    global0 = array<u32, 27>();
    var var_3 = _wgslsmith_sub_i32(-35618i >> (_wgslsmith_mult_u32(24924u, ~min(var_2.a.b, global1[_wgslsmith_index_u32(90616u, 23u)])) % 32u), -(~(-1003i)));
    return vec3<i32>(1077i, -1551i, u_input.a);
}

fn func_2(arg_0: f32) -> Struct_5 {
    global1 = array<u32, 23>();
    let var_0 = Struct_3(vec2<bool>(any(select(!vec3<bool>(true, false, global2.a.x), select(vec3<bool>(true, false, global2.a.x), vec3<bool>(global2.a.x, false, false), global2.a.x), !vec3<bool>(true, global2.a.x, false))), firstTrailingBit(u_input.b) < reverseBits(abs(u_input.b))));
    let var_1 = max(abs(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], 30110u), u_input.c.xz), _wgslsmith_mod_u32(80524u, global0[_wgslsmith_index_u32(4294967295u, 27u)]))), _wgslsmith_clamp_u32(0u, 1u, 1u));
    let var_2 = ~func_3(1000f, firstTrailingBit(var_1));
    let var_3 = var_0;
    return Struct_5(Struct_2(Struct_1(~(~(-22005i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, var_2.x), vec4<i32>(u_input.a, var_2.x, var_2.x, u_input.b), vec4<i32>(var_2.x, 0i, u_input.b, 1i)), max(-48879i, _wgslsmith_clamp_i32(var_2.x, -3663i, 2147483647i))), min(1732u, _wgslsmith_mult_u32(26383u, var_1)), Struct_1(_wgslsmith_div_i32(1i, -u_input.b), select(firstTrailingBit(vec4<i32>(u_input.a, 1i, u_input.a, -2428i)), vec4<i32>(var_2.x, 24132i, 64609i, 34480i), select(vec4<bool>(true, var_0.a.x, true, global2.a.x), vec4<bool>(false, false, var_0.a.x, var_3.a.x), var_0.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-19579i, u_input.a, u_input.a), select(vec3<i32>(2147483647i, u_input.a, 14612i), var_2, var_0.a.x)))), Struct_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1293f), _wgslsmith_f_op_f32(sign(-528f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -871f)), select(true, !(var_3.a.x || var_0.a.x), var_3.a.x)), min(~u_input.c.yx, ~(~u_input.c.yy | _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(global1[_wgslsmith_index_u32(var_1, 23u)], global0[_wgslsmith_index_u32(0u, 27u)])))), Struct_3(vec2<bool>(true, any(!vec4<bool>(var_3.a.x, var_3.a.x, var_0.a.x, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -959f) + vec2<f32>(arg_0, arg_0)))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = arg_0.d;
    var var_1 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.b.a.x, -438f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x - arg_0.e.x), _wgslsmith_f_op_f32(arg_0.e.x - arg_0.e.x)), all(!global2.a))), _wgslsmith_f_op_f32(-arg_0.b.a.x)))).a;
    let var_2 = Struct_2(Struct_1(~_wgslsmith_clamp_i32(37443i, 42397i, _wgslsmith_mult_i32(2147483647i, u_input.a)), var_1.c.b, arg_1.b.x), _wgslsmith_div_u32(0u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 27u)], u_input.c.x, arg_0.c.x, global0[_wgslsmith_index_u32(45617u, 27u)]), vec4<u32>(arg_0.c.x, global0[_wgslsmith_index_u32(20645u, 27u)], u_input.c.x, global0[_wgslsmith_index_u32(arg_0.c.x, 27u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.b, arg_0.a.b), vec3<u32>(68017u, 0u, 3285u)), 23u)]))), Struct_1(var_1.c.a, ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, 0i, 2256i), arg_1.b)), arg_3.x));
    var_1 = func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(791f))))).a;
    return Struct_1(_wgslsmith_dot_vec4_i32(var_1.c.b, _wgslsmith_sub_vec4_i32(arg_0.a.c.b, vec4<i32>(_wgslsmith_clamp_i32(arg_1.b.x, -54784i, 2147483647i), ~(-10682i), arg_2, firstLeadingBit(1i)))), vec4<i32>(_wgslsmith_div_i32(-1i, -2147483647i) << (0u % 32u), _wgslsmith_mult_i32(arg_0.a.c.b.x, -var_2.a.b.x) << (var_2.b % 32u), -1i >> (~var_2.b % 32u), func_3(_wgslsmith_div_f32(arg_0.b.a.x, -105f), arg_0.a.b).x), var_2.c.a);
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    global1 = array<u32, 23>();
    let var_0 = func_2(_wgslsmith_f_op_f32(1867f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -694f)), func_2(_wgslsmith_f_op_f32(-139f - 1286f)).e.x)))).a.c;
    return Struct_3(select(!global2.a, !global2.a, func_2(_wgslsmith_f_op_f32(-1773f - -1250f)).b.b));
}

fn func_1() -> Struct_3 {
    let var_0 = all(vec3<bool>(false, !global2.a.x, true));
    global2 = func_5(func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1820f - -1808f))), Struct_1(firstTrailingBit(u_input.b), ~(-vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 44175i)), -1i), u_input.b, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-728f)) + _wgslsmith_f_op_f32(586f + 1105f))).a.c.b.yzz));
    let var_1 = var_0;
    var var_2 = Struct_3(!select(global2.a, global2.a, var_0));
    let var_3 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f - _wgslsmith_div_f32(-323f, 322f)))).a.c, abs(78315u), Struct_1(u_input.a, vec4<i32>(_wgslsmith_mult_i32(abs(u_input.a), u_input.a), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-23324i, u_input.a, 2147483647i) & vec3<i32>(-40860i, u_input.a, -1i), vec3<i32>(u_input.b, u_input.a, u_input.a)), reverseBits(13420i)), -(_wgslsmith_dot_vec4_i32(vec4<i32>(-20208i, u_input.a, -11620i, u_input.a), vec4<i32>(-25771i, u_input.b, 1i, u_input.a)) >> (~1u % 32u))));
    return func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-300f, _wgslsmith_f_op_f32(f32(-1f) * -1395f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2084f + -1200f))))))).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -221f)).a.c;
    global1 = array<u32, 23>();
    var var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(310f, _wgslsmith_f_op_f32(193f * 188f), global2.a.x | var_0.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2388f) - _wgslsmith_f_op_f32(step(351f, 533f)))))).b;
    var var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(688f)))))).a;
    var_3 = Struct_2(Struct_1(var_1.c, min(_wgslsmith_sub_vec4_i32(var_3.a.b, _wgslsmith_clamp_vec4_i32(var_3.a.b, vec4<i32>(var_1.c, 2147483647i, 33627i, var_3.c.c), vec4<i32>(71673i, var_1.a, var_3.a.a, -51541i))), vec4<i32>(-1i & var_3.a.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_3.c.c), var_1.b.xw), u_input.b, min(11285i, -37175i))), -84745i), global1[_wgslsmith_index_u32(u_input.c.x, 23u)], Struct_1(-_wgslsmith_div_i32(12111i, 80217i), vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(-2147483647i, 1i), -22970i), ~max(33202i, 1i), u_input.b, firstLeadingBit(var_3.a.b.x | 0i)), -var_3.a.a));
    let var_4 = -553f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-488f, -1509f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) + _wgslsmith_f_op_f32(-143f + var_2.a.x)))) * -854f), func_2(-1527f).e.x, vec4<f32>(_wgslsmith_f_op_f32(ceil(var_4)), func_2(_wgslsmith_f_op_f32(max(var_4, _wgslsmith_f_op_f32(ceil(var_2.a.x))))).b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -581f), _wgslsmith_f_op_f32(1012f + _wgslsmith_f_op_f32(569f * _wgslsmith_f_op_f32(-var_4)))));
}

