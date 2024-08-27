struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(4720u, 43547u, 1u, 30664u), vec4<u32>(0u, 0u, 18123u, 1u), vec4<u32>(53723u, 18826u, 17014u, 25635u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(0u, 65951u, 1u, 1u), vec4<u32>(1u, 0u, 0u, 21169u), vec4<u32>(0u, 30974u, 0u, 1u), vec4<u32>(4294967295u, 67054u, 1u, 63736u), vec4<u32>(0u, 0u, 59432u, 1u), vec4<u32>(44448u, 1u, 0u, 44403u), vec4<u32>(4294967295u, 1u, 75424u, 8313u), vec4<u32>(31877u, 19381u, 38948u, 4294967295u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(12217u, 4294967295u, 1610u, 4294967295u), vec4<u32>(4294967295u, 30982u, 0u, 103738u), vec4<u32>(20995u, 0u, 25102u, 49884u), vec4<u32>(16733u, 18373u, 79941u, 1u), vec4<u32>(0u, 1u, 19597u, 4294967295u), vec4<u32>(79755u, 5228u, 4294967295u, 65707u), vec4<u32>(0u, 15977u, 66751u, 13845u), vec4<u32>(1u, 1u, 42024u, 15240u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(51609u, 17547u, 4294967295u, 0u), vec4<u32>(8003u, 0u, 69882u, 0u));

var<private> global1: array<u32, 19> = array<u32, 19>(4294967295u, 1u, 1u, 0u, 1u, 22202u, 30651u, 38522u, 1222u, 4294967295u, 28561u, 4294967295u, 0u, 4294967295u, 56266u, 13748u, 9039u, 75536u, 0u);

var<private> global2: bool;

var<private> global3: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(566f, 805f, -373f), vec3<f32>(-601f, 1887f, 181f), vec3<f32>(447f, 189f, -236f), vec3<f32>(-1628f, 1053f, -479f), vec3<f32>(-1335f, -1263f, -627f), vec3<f32>(2251f, 1035f, 672f), vec3<f32>(134f, 1000f, 1785f), vec3<f32>(495f, 1308f, 408f), vec3<f32>(-835f, 132f, -180f), vec3<f32>(164f, 1425f, -896f), vec3<f32>(1983f, 271f, -1000f), vec3<f32>(-1548f, -645f, 571f), vec3<f32>(769f, -1718f, -585f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = ~vec3<u32>(1u, 86664u, ~max(1u, 18651u)) ^ arg_2.b.b.xxw;
    global0 = array<vec4<u32>, 24>();
    let var_1 = true;
    global2 = all(!vec2<bool>(all(vec4<bool>(arg_2.c.c.x, false, true, true)) && true, arg_2.b.c.x));
    let var_2 = vec4<i32>(4186i, u_input.b, -(~_wgslsmith_clamp_i32(firstTrailingBit(arg_0.x), -1i << (1u % 32u), u_input.a.x)), 1i);
    return ~arg_2.c.b.yy;
}

fn func_3() -> vec4<u32> {
    global1 = array<u32, 19>();
    var var_0 = vec4<i32>(~(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.b), vec3<i32>(u_input.a.x, u_input.b, 2068i)), u_input.b)), -_wgslsmith_div_i32(13303i, u_input.b), -1i, 2379i);
    global1 = array<u32, 19>();
    global0 = array<vec4<u32>, 24>();
    return ~global0[_wgslsmith_index_u32(1u, 24u)];
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = min(~vec4<u32>(~_wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(u_input.c, 19u)]), ~1u, ~26367u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 58329u, arg_1.x), vec3<u32>(arg_0.x, u_input.c, arg_1.x)), 27832u), func_3());
    var_0 = min(select(~_wgslsmith_add_vec4_u32(min(vec4<u32>(1u, u_input.c, global1[_wgslsmith_index_u32(arg_1.x, 19u)], 21995u), global0[_wgslsmith_index_u32(12020u, 24u)]), vec4<u32>(global1[_wgslsmith_index_u32(1u, 19u)], u_input.c, u_input.c, 16201u)), ~global0[_wgslsmith_index_u32(arg_0.x, 24u)], select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, false, true), true))), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 19u)], 19u)], 19u)], 37259u, func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-27970i, 26819i, u_input.a.x), vec3<i32>(2147483647i, 2147483647i, 1i), firstLeadingBit(vec3<i32>(u_input.b, 64774i, 1i))), _wgslsmith_f_op_f32(exp2(arg_2)), Struct_3(true, Struct_1(true, vec4<u32>(u_input.c, var_0.x, var_0.x, arg_0.x), vec2<bool>(true, false)), Struct_1(true, global0[_wgslsmith_index_u32(arg_0.x, 24u)], vec2<bool>(true, true)), global0[_wgslsmith_index_u32(54993u, 24u)] & vec4<u32>(1u, u_input.c, arg_0.x, 4294967295u))).x, _wgslsmith_mult_u32(u_input.c, max(51435u & arg_0.x, ~0u))));
    let var_1 = u_input.a;
    let var_2 = Struct_3(true, Struct_1(false, global0[_wgslsmith_index_u32(~50862u, 24u)], vec2<bool>(true, true)), Struct_1(true, ~func_3(), vec2<bool>(_wgslsmith_f_op_f32(floor(1614f)) <= arg_2, (u_input.a.x > -9403i) || true)), global0[_wgslsmith_index_u32(4294967295u, 24u)]);
    global0 = array<vec4<u32>, 24>();
    return select(_wgslsmith_mod_u32(arg_0.x, ~(u_input.c ^ 4294967295u) << (0u % 32u)), select(arg_1.x, arg_0.x, select(true, any(var_2.c.c) || var_2.b.a, !(!var_2.c.c.x))), !all(!(!vec4<bool>(true, var_2.a, false, var_2.c.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 24>();
    let var_0 = vec4<u32>(~u_input.c >> (0u % 32u), global1[_wgslsmith_index_u32(u_input.c, 19u)], global1[_wgslsmith_index_u32(9266u, 19u)], func_2(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(43554u, 25409u) >> (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u)), ~vec2<u32>(30114u, 58300u)), _wgslsmith_mod_vec2_u32(func_1(vec3<i32>(-1i, u_input.b, u_input.b), -1386f, Struct_3(true, Struct_1(true, vec4<u32>(u_input.c, 1u, 109806u, global1[_wgslsmith_index_u32(0u, 19u)]), vec2<bool>(false, true)), Struct_1(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(83762u, 19u)], 24u)], vec2<bool>(true, false)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45858u, 19u)], 24u)])), firstLeadingBit(vec2<u32>(4294967295u, 42920u)))), (~vec3<u32>(u_input.c, 1u, global1[_wgslsmith_index_u32(u_input.c, 19u)]) | (vec3<u32>(u_input.c, u_input.c, 83484u) ^ vec3<u32>(72088u, 16116u, u_input.c))) | _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 2571u, 13269u), vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(43757u, global1[_wgslsmith_index_u32(73255u, 19u)], 65750u) | vec3<u32>(9112u, 11350u, u_input.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -755f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(189f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * 1134f), _wgslsmith_f_op_f32(select(-1000f, 617f, true)))))));
    let var_1 = vec4<bool>(all(vec4<bool>(true, true, true, true)) == any(vec4<bool>(all(vec3<bool>(true, false, true)), true, any(vec4<bool>(false, false, false, false)), any(vec4<bool>(false, true, true, false)))), !select(-2147483647i < select(2147483647i, u_input.a.x, false), true, true), any(vec2<bool>(true, true)) | true, !all(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_dot_vec4_i32(~firstTrailingBit(abs(vec4<i32>(u_input.b, u_input.b, 1i, u_input.a.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(firstLeadingBit(vec4<i32>(-7689i, u_input.a.x, u_input.b, u_input.b))), vec4<i32>(firstTrailingBit(u_input.b), 2147483647i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(1i, u_input.b)), 0i)), -min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 58368i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b, u_input.b, u_input.a.x, -32023i)), firstTrailingBit(vec4<i32>(u_input.a.x, -38976i, u_input.a.x, -2147483647i))), _wgslsmith_div_vec4_i32(countOneBits(select(vec4<i32>(u_input.a.x, 251i, u_input.a.x, u_input.b), vec4<i32>(u_input.a.x, -1i, u_input.b, 0i), var_1)), vec4<i32>(2147483647i, u_input.b, i32(-1i) * -26892i, 2147483647i))));
    var var_3 = var_1.zyw;
    var_3 = var_1.wwx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1001f, 666f) + 897f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-441f, -681f) + _wgslsmith_div_f32(1000f, -2038f)))), _wgslsmith_div_vec4_i32(abs(vec4<i32>(~u_input.b, 2147483647i, _wgslsmith_clamp_i32(1i, var_2, u_input.b), -1320i)), vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(~(-38227i), -var_2), 50843i, -1i)));
}

