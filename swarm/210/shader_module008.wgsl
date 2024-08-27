struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: array<i32, 3>;

var<private> global2: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-1i, 5763i, -36950i, -1i), vec4<i32>(2147483647i, -9618i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), -17739i, -52133i, 22459i), vec4<i32>(-53531i, -1i, 3082i, 1i), vec4<i32>(2147483647i, 44034i, -1i, 36888i), vec4<i32>(21158i, -1i, i32(-2147483648), 94134i), vec4<i32>(-1i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(-12293i, 1i, -54187i, 1539i), vec4<i32>(2147483647i, -7323i, -90276i, 1i), vec4<i32>(i32(-2147483648), 898i, -1363i, -1i), vec4<i32>(-28381i, 0i, -6574i, 0i), vec4<i32>(i32(-2147483648), -1059i, 2147483647i, i32(-2147483648)), vec4<i32>(-970i, -1i, 30863i, 1i), vec4<i32>(40751i, i32(-2147483648), 1i, 28775i), vec4<i32>(-57284i, 0i, 1i, -42853i), vec4<i32>(-1i, 41487i, 1i, -10752i), vec4<i32>(i32(-2147483648), -4731i, -33843i, i32(-2147483648)), vec4<i32>(11934i, -57355i, 41307i, 0i), vec4<i32>(3620i, -1i, 26585i, 0i), vec4<i32>(-1i, i32(-2147483648), -20730i, 1i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, 2147483647i, -19035i, -27929i), vec4<i32>(-131103i, i32(-2147483648), -1i, 38603i), vec4<i32>(16937i, i32(-2147483648), 1i, -4318i), vec4<i32>(-17071i, 2147483647i, 5252i, 0i), vec4<i32>(2147483647i, 2971i, -46684i, -8816i), vec4<i32>(2147483647i, 0i, -12274i, 55514i), vec4<i32>(15782i, 2182i, i32(-2147483648), 26801i), vec4<i32>(0i, i32(-2147483648), -1i, 46220i), vec4<i32>(49146i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(2147483647i, 1i, -29218i, -37797i));

var<private> global3: vec2<i32>;

var<private> global4: vec3<i32> = vec3<i32>(4130i, -13623i, -23541i);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32) -> i32 {
    return _wgslsmith_mult_i32(global3.x, max(abs(max(~1i, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.d.x, 3u)], 5487i))), 47837i));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_4) -> Struct_3 {
    var var_0 = -33612i;
    var var_1 = func_2(u_input.a);
    var var_2 = true;
    var var_3 = Struct_5(arg_2.c, arg_2.d, vec3<i32>(select(~select(global1[_wgslsmith_index_u32(4294967295u, 3u)], 59939i, false), abs(1i), true), u_input.e >> (firstLeadingBit(4294967295u) % 32u), _wgslsmith_dot_vec4_i32(countOneBits(~global2[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_2.a, -2147483647i, global0[_wgslsmith_index_u32(arg_1, 16u)]), global2[_wgslsmith_index_u32(1u, 31u)]))));
    var_3 = Struct_5(Struct_1(select(var_3.a.a, !vec2<bool>(arg_2.c.a.x, arg_2.b.x), vec2<bool>(select(arg_3.a, arg_3.a, arg_3.a), global3.x != 2147483647i)), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0.c.e, 113405u), ~arg_0.d.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.d), -2172f), max(arg_1, firstLeadingBit(_wgslsmith_mod_u32(arg_1, u_input.c)))), var_3.a, ~(-var_3.c));
    return Struct_3(-1000f, arg_0.c.d);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = arg_1;
    global1 = array<i32, 3>();
    var_0 = arg_1;
    let var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c.d), _wgslsmith_f_op_f32(-1000f - 472f))) * arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c.d, 1295f) + _wgslsmith_div_f32(var_0.b, var_1.d.d)), -2227f))));
    return vec4<bool>(true, var_1.d.a.x, all(vec4<bool>(var_1.c.a.x, true != !arg_0, arg_0, true)), false);
}

fn func_4(arg_0: vec4<bool>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1327f, -2439f, -2565f), vec3<f32>(-585f, 1024f, 1293f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1467f, -150f, 492f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1446f, -488f, -1000f) + vec3<f32>(-976f, -676f, -1060f))), func_3(true, Struct_3(1103f, 706f), u_input.e, Struct_2(-1i, arg_0, Struct_1(arg_0.yz, 1u, 1u, 2226f, 80037u), Struct_1(vec2<bool>(false, false), u_input.d.x, u_input.b, 936f, u_input.b))).x && (arg_0.x == true)))))));
    let var_1 = Struct_1(vec2<bool>(true == !select(true, arg_0.x, true), true), u_input.c, 34646u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), reverseBits(reverseBits(select(u_input.d.x | u_input.d.x, select(u_input.b, u_input.c, false), true))));
    let var_2 = vec4<i32>(-1i, -_wgslsmith_mult_i32(reverseBits(0i), global0[_wgslsmith_index_u32(4294967295u, 16u)]) | _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(firstTrailingBit(~25882u), 31u)], vec4<i32>(0i, -1i, global4.x, global3.x)), -(~func_2(1493i)) & ~global0[_wgslsmith_index_u32(1u, 16u)], u_input.a);
    let var_3 = Struct_4(true);
    return Struct_5(var_1, Struct_1(var_1.a, ~(~var_1.b), 4813u, _wgslsmith_f_op_f32(trunc(-355f)), u_input.d.x), vec3<i32>(var_2.x & _wgslsmith_div_i32(firstTrailingBit(2147483647i), _wgslsmith_sub_i32(var_2.x, 2147483647i)), 1i, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 3u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(!func_3(true, func_1(Struct_2(global0[_wgslsmith_index_u32(u_input.b, 16u)], vec4<bool>(true, false, false, true), Struct_1(vec2<bool>(true, false), 1u, u_input.b, 2165f, u_input.d.x), Struct_1(vec2<bool>(true, true), u_input.b, u_input.c, -823f, u_input.d.x)), u_input.c, Struct_2(17649i, vec4<bool>(false, false, true, false), Struct_1(vec2<bool>(false, true), u_input.d.x, u_input.b, -298f, u_input.c), Struct_1(vec2<bool>(false, false), u_input.b, 4294967295u, -543f, 43803u)), Struct_4(false)), -global1[_wgslsmith_index_u32(u_input.d.x, 3u)], Struct_2(global1[_wgslsmith_index_u32(u_input.c, 3u)], vec4<bool>(true, true, false, false), Struct_1(vec2<bool>(true, false), u_input.d.x, u_input.b, 1147f, u_input.d.x), Struct_1(vec2<bool>(false, false), u_input.b, 62198u, -961f, u_input.b))), func_3(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true))), Struct_3(557f, _wgslsmith_f_op_f32(-869f + 561f)), min(-2147483647i, ~2147483647i), Struct_2(u_input.e, vec4<bool>(false, true, true, true), Struct_1(vec2<bool>(true, false), 547u, u_input.b, -612f, 1u), Struct_1(vec2<bool>(false, false), 1u, u_input.c, 711f, u_input.c))), true));
    let var_1 = func_1(Struct_2(1i, !select(!vec4<bool>(false, var_0.b.a.x, true, var_0.b.a.x), vec4<bool>(var_0.a.a.x, var_0.b.a.x, false, false), true), var_0.a, Struct_1(func_3(true, func_1(Struct_2(-43112i, vec4<bool>(var_0.b.a.x, var_0.a.a.x, var_0.a.a.x, var_0.b.a.x), Struct_1(var_0.a.a, var_0.a.e, 42739u, 1142f, 0u), var_0.b), 0u, Struct_2(var_0.c.x, vec4<bool>(true, true, true, var_0.a.a.x), var_0.b, var_0.a), Struct_4(false)), -2147483647i, Struct_2(u_input.a, vec4<bool>(false, var_0.b.a.x, false, false), Struct_1(var_0.a.a, var_0.b.c, 1u, 481f, var_0.a.b), Struct_1(var_0.b.a, u_input.d.x, 23988u, -553f, 1u))).yz, ~var_0.a.e, ~u_input.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.d))), u_input.b >> (_wgslsmith_mult_u32(u_input.d.x, 60138u) % 32u))), var_0.b.e, Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(min(var_0.c, vec3<i32>(-2147483647i, global3.x, global1[_wgslsmith_index_u32(u_input.b, 3u)])), abs(vec3<i32>(-1i, -23967i, 2147483647i))), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(max(var_0.a.b, 4294967295u), 16u)], global4.x)), !select(select(vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, var_0.b.a.x), vec4<bool>(var_0.b.a.x, var_0.b.a.x, false, true), true), select(vec4<bool>(true, var_0.a.a.x, var_0.b.a.x, var_0.b.a.x), vec4<bool>(var_0.b.a.x, true, false, true), vec4<bool>(true, var_0.a.a.x, var_0.b.a.x, false)), vec4<bool>(var_0.a.a.x, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x)), func_4(vec4<bool>(!var_0.b.a.x, var_0.b.a.x, true || var_0.a.a.x, all(vec3<bool>(true, var_0.b.a.x, var_0.a.a.x)))).a, var_0.b), Struct_4(var_0.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(max(u_input.a ^ -1i, u_input.a), -65379i), firstLeadingBit(~func_4(select(vec4<bool>(true, var_0.b.a.x, var_0.b.a.x, false), vec4<bool>(var_0.b.a.x, true, true, true), false)).c.yx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.a, _wgslsmith_div_f32(-1587f, var_1.a))))), 1u);
}

