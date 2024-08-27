struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, false, false, true, true, true, false, true, true, false, false, false, false, true, false, false, true, false, true, true, false, false, true);

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(-867f, -127f, 1414f), vec3<f32>(-1000f, -729f, -540f), vec3<f32>(2161f, -894f, -546f), vec3<f32>(-335f, -929f, -1677f), vec3<f32>(-717f, 519f, 985f), vec3<f32>(516f, 756f, 938f), vec3<f32>(2045f, 1000f, 261f), vec3<f32>(-583f, -1000f, -372f), vec3<f32>(-165f, 478f, 1609f), vec3<f32>(1000f, -1256f, -1000f), vec3<f32>(-124f, -334f, -165f), vec3<f32>(662f, -1000f, -1000f), vec3<f32>(-1142f, -1247f, -953f), vec3<f32>(303f, -449f, -1143f), vec3<f32>(1000f, 2035f, -1257f), vec3<f32>(-589f, 342f, -1083f), vec3<f32>(572f, 1368f, 1441f), vec3<f32>(403f, 1745f, -625f), vec3<f32>(-194f, -812f, -212f), vec3<f32>(2006f, 1861f, 1148f), vec3<f32>(336f, -1970f, 714f), vec3<f32>(1448f, -1314f, 1264f), vec3<f32>(1043f, -842f, -759f), vec3<f32>(236f, -122f, 551f), vec3<f32>(-1271f, -534f, -134f), vec3<f32>(-705f, -476f, 984f), vec3<f32>(2127f, 392f, -1000f), vec3<f32>(1000f, -1480f, 420f), vec3<f32>(-1000f, -361f, -197f), vec3<f32>(2078f, 548f, 963f));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global2 = array<vec3<f32>, 30>();
    var var_0 = -select(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.a, global1.a), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(32157i, -30799i)), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.a, 8305i), vec2<i32>(43795i, 2147483647i)))), vec2<i32>(~2147483647i | ~u_input.e, i32(-1i) * -global1.a), !arg_0.yx);
    var var_1 = ~firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(-78283i, -38023i, 13400i, 4160i)) ^ vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, global1.a, global1.a, -5485i)), max(vec4<i32>(2147483647i, 2147483647i, 2147483647i, u_input.c), vec4<i32>(47027i, var_0.x, var_0.x, var_0.x))), i32(-1i) * -52335i), 1i, 2147483647i, ~var_0.x);
    var_1 = vec4<i32>(2147483647i, countOneBits(_wgslsmith_add_i32(min(1i, -2147483647i), var_1.x) >> (countOneBits(min(7660u, global1.b)) % 32u)), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-15059i, var_1.x, 20514i, 65380i) >> (~vec4<u32>(u_input.a, u_input.d, 7691u, u_input.b) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(~min(vec4<i32>(37470i, 24640i, 1i, var_0.x), vec4<i32>(-39198i, u_input.c, var_1.x, u_input.c)), vec4<i32>(var_0.x, global1.a, _wgslsmith_mod_i32(global1.a, u_input.e), var_1.x))), _wgslsmith_mult_i32(u_input.c, _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, ~17171i), _wgslsmith_add_i32(-u_input.e, u_input.c))));
    global0 = array<bool, 23>();
    return ((u_input.a >> (_wgslsmith_add_u32(countOneBits(global1.b), 1u) % 32u)) >> (min(~(~u_input.d), 1u) % 32u)) ^ global1.b;
}

fn func_2(arg_0: f32, arg_1: bool) -> bool {
    let var_0 = min(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.d, global1.b >> (2139u % 32u)), firstTrailingBit(vec3<u32>(abs(96403u), global1.b, u_input.a & u_input.d))), countOneBits(vec3<u32>(61459u, global1.b, abs(1u))) << (vec3<u32>(~(~global1.b), ~u_input.b >> (_wgslsmith_mod_u32(u_input.b, u_input.d) % 32u), ~func_3(vec3<bool>(arg_1, true, arg_1))) % vec3<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_div_i32(u_input.c, abs(firstTrailingBit(u_input.e) >> (2765u % 32u))), max(var_0.x, 14950u));
    let var_2 = Struct_1(-2147483647i, var_1.b << (4294967295u % 32u));
    global0 = array<bool, 23>();
    let var_3 = !(!vec3<bool>(false, global0[_wgslsmith_index_u32(var_2.b, 23u)], all(vec3<bool>(true, true, arg_1))));
    return global0[_wgslsmith_index_u32(abs(abs(1u)), 23u)] & all(vec2<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], arg_1, var_3.x, arg_1)), arg_1));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> vec3<f32> {
    global0 = array<bool, 23>();
    global2 = array<vec3<f32>, 30>();
    var var_0 = countOneBits(-_wgslsmith_add_vec4_i32(-(~vec4<i32>(57575i, 0i, 2147483647i, -1i)), select(-vec4<i32>(0i, u_input.c, 1i, -47704i), firstLeadingBit(vec4<i32>(u_input.c, arg_0.a, -14i, 10895i)), select(vec4<bool>(false, arg_2, false, false), vec4<bool>(arg_1.x, arg_2, true, arg_1.x), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b, 23u)], arg_1.x, global0[_wgslsmith_index_u32(1u, 23u)], false)))));
    var var_1 = _wgslsmith_f_op_f32(908f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1119f - 1398f), _wgslsmith_f_op_f32(floor(485f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-211f, _wgslsmith_f_op_f32(851f + 1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * 260f))), false))));
    var var_2 = vec3<u32>(~(((u_input.b << (32418u % 32u)) << (global1.b % 32u)) << (1u % 32u)), ~(~firstLeadingBit(u_input.b)), countOneBits(1u));
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-165f * 324f), _wgslsmith_f_op_f32(min(1719f, 486f)))) + -1375f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1411f - -264f) - -1350f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2259f - -1831f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -238f)))), _wgslsmith_f_op_f32(step(2189f, 496f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(823f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    global2 = array<vec3<f32>, 30>();
    var var_0 = _wgslsmith_mod_u32(firstLeadingBit(~firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 4294967295u))), 6085u);
    var var_1 = Struct_1(-1i, ~arg_1);
    global0 = array<bool, 23>();
    var var_2 = _wgslsmith_f_op_vec3_f32(func_4(arg_0, select(vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(var_1.b, 23u)], true, true)), all(vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.b, 23u)], global0[_wgslsmith_index_u32(arg_1, 23u)])), global0[_wgslsmith_index_u32(~0u, 23u)]), select(vec3<bool>(func_2(-1000f, global0[_wgslsmith_index_u32(arg_0.b, 23u)]), true, true), !select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b, 23u)], true, global0[_wgslsmith_index_u32(25808u, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(13182u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], false), global0[_wgslsmith_index_u32(var_1.b, 23u)]), false), !select(!vec3<bool>(true, global0[_wgslsmith_index_u32(13768u, 23u)], global0[_wgslsmith_index_u32(arg_0.b, 23u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 23u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(18225u, 23u)], false, global0[_wgslsmith_index_u32(u_input.d, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(5059u, 23u)], global0[_wgslsmith_index_u32(34623u, 23u)], false)), select(vec3<bool>(true, false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(28429u, 23u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(67363u, 23u)], true)))), any(!select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(1057u, 23u)], global0[_wgslsmith_index_u32(var_1.b, 23u)]), select(vec2<bool>(false, true), vec2<bool>(true, global0[_wgslsmith_index_u32(71998u, 23u)]), global0[_wgslsmith_index_u32(arg_0.b, 23u)])))));
    return Struct_1(1i, abs(41736u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global1.a, u_input.e), vec3<i32>(-10030i, -1i, 1i)) ^ ~u_input.e, ~_wgslsmith_div_u32(1u, u_input.b) | 4294967295u), u_input.a, vec4<i32>(u_input.c, -1i, ~(-20913i), abs(-max(u_input.c, -1i))));
    let var_0 = Struct_1(_wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -1i, -1i), -vec3<i32>(-1i, 6372i, 2147483647i)), u_input.c), 4294967295u);
    var var_1 = -(~select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, -2147483647i, u_input.e, 2147483647i), vec4<i32>(var_0.a, var_0.a, var_0.a, global1.a), vec4<i32>(-1i, u_input.c, global1.a, -5894i)), vec4<i32>(global1.a, 2147483647i, 2147483647i, 1i), any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)], true, true))) | (vec4<i32>(var_0.a ^ global1.a, global1.a, global1.a, global1.a) ^ vec4<i32>(~0i, var_0.a, -u_input.c, global1.a)));
    var var_2 = vec3<u32>(9308u, u_input.d, global1.b);
    global2 = array<vec3<f32>, 30>();
    var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(~abs(0u), 0u, ~72618u) & vec3<u32>(~(27068u & u_input.b), _wgslsmith_add_u32(var_0.b, u_input.a), global1.b | 1u), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, 28652u, var_2.x) >> (vec3<u32>(0u, global1.b, global1.b) % vec3<u32>(32u)), max(vec3<u32>(u_input.b, global1.b, u_input.b), vec3<u32>(1u, var_2.x, 1u))), ~(~vec3<u32>(0u, 62675u, 50094u))) >> (vec3<u32>(u_input.d, (u_input.a >> (global1.b % 32u)) >> (33968u % 32u), var_2.x) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-505f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_4(func_1(var_0, 47347u, vec4<i32>(-70759i, -2147483647i, u_input.e, 1i)), select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.b, 23u)], true, global0[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(global1.b, 23u)], global0[_wgslsmith_index_u32(global1.b, 23u)], true)), u_input.c == global1.a)).x)), global0[_wgslsmith_index_u32(~(~func_1(Struct_1(var_1.x, 4294967295u), var_0.b, vec4<i32>(global1.a, u_input.c, 8612i, -16781i)).b), 23u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-585f))))), 1076f)));
}

