struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
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

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec3<i32>(26555i, -4941i, 0i)), Struct_1(vec3<i32>(-26639i, i32(-2147483648), -1i))), Struct_2(Struct_1(vec3<i32>(-1i, 24846i, -53000i)), Struct_1(vec3<i32>(14151i, i32(-2147483648), 0i))), Struct_2(Struct_1(vec3<i32>(-10530i, 0i, -27697i)), Struct_1(vec3<i32>(65173i, -1i, 37799i))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, 9963i)), Struct_1(vec3<i32>(0i, i32(-2147483648), -20163i))), Struct_2(Struct_1(vec3<i32>(2147483647i, 1i, 1i)), Struct_1(vec3<i32>(-19653i, 5478i, 1i))), Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, -35092i)), Struct_1(vec3<i32>(60493i, -5098i, 2147483647i))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 0i, -3299i)), Struct_1(vec3<i32>(1i, 6325i, 24326i))), Struct_2(Struct_1(vec3<i32>(-26438i, 1i, 1i)), Struct_1(vec3<i32>(1i, 0i, 2147483647i))), Struct_2(Struct_1(vec3<i32>(-1i, 1i, i32(-2147483648))), Struct_1(vec3<i32>(-43741i, 30372i, 0i))), Struct_2(Struct_1(vec3<i32>(1i, 20557i, i32(-2147483648))), Struct_1(vec3<i32>(-48337i, -13202i, -30189i))), Struct_2(Struct_1(vec3<i32>(28334i, 1i, i32(-2147483648))), Struct_1(vec3<i32>(2147483647i, 2147483647i, -5828i))), Struct_2(Struct_1(vec3<i32>(1i, 9022i, -684i)), Struct_1(vec3<i32>(1i, -46072i, -4787i))), Struct_2(Struct_1(vec3<i32>(-95177i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(5433i, 1i, -1i))), Struct_2(Struct_1(vec3<i32>(15141i, 19405i, 5588i)), Struct_1(vec3<i32>(-43614i, 0i, -2069i))), Struct_2(Struct_1(vec3<i32>(1i, -79676i, 1552i)), Struct_1(vec3<i32>(1i, 11505i, 1i))));

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(vec4<i32>(25217i, 8384i, -6810i, 0i), vec4<f32>(-1000f, -877f, -1033f, 279f), vec4<bool>(true, false, true, false), vec3<bool>(false, true, true)), Struct_3(vec4<i32>(2147483647i, 2147483647i, 6101i, 2147483647i), vec4<f32>(-107f, -726f, -1000f, -201f), vec4<bool>(true, true, true, false), vec3<bool>(true, false, true)), Struct_3(vec4<i32>(-30116i, 46928i, -61542i, 2147483647i), vec4<f32>(1368f, 2075f, 117f, 599f), vec4<bool>(false, true, true, true), vec3<bool>(false, false, false)));

var<private> global3: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(1197f, 594f), vec2<f32>(-635f, 160f), vec2<f32>(1017f, 266f), vec2<f32>(-418f, -458f), vec2<f32>(1242f, 1485f), vec2<f32>(-928f, 803f), vec2<f32>(-982f, 380f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>) -> bool {
    var var_0 = Struct_2(Struct_1(select(arg_1.xxw, arg_1.wwy << (u_input.c % vec3<u32>(32u)), true) | (vec3<i32>(-1i) * -vec3<i32>(-32960i, arg_1.x, 1i))), Struct_1(arg_1.ywx));
    let var_1 = (true == (u_input.b < (1u | (u_input.c.x & u_input.c.x)))) & true;
    var var_2 = ~u_input.c.x & u_input.a;
    let var_3 = global0[_wgslsmith_index_u32(25763u, 26u)];
    var var_4 = global0[_wgslsmith_index_u32(min(firstLeadingBit(~19563u), u_input.b), 26u)];
    return true;
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global1 = array<Struct_2, 15>();
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    var var_0 = true;
    return _wgslsmith_clamp_u32(min(21676u, 74721u), select(arg_0.x, arg_0.x, true), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~select(u_input.c, u_input.c, true), u_input.c), vec3<u32>(max(1u, u_input.c.x), ~0u, _wgslsmith_clamp_u32(~15404u, 36480u, _wgslsmith_dot_vec3_u32(vec3<u32>(40834u, u_input.a, 4294967295u), u_input.c)))));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> bool {
    return arg_1.c.x;
}

fn func_1(arg_0: u32, arg_1: u32) -> i32 {
    var var_0 = vec4<bool>(true, all(vec2<bool>(true, any(vec4<bool>(true, false, true, false)))) || !func_2(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(1u, 7u)] * global3[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<i32>(-22677i, 24741i, -11809i, 2164i)), (u_input.a < 8678u) | false, true && func_4(-2147483647i, global2[_wgslsmith_index_u32(min(arg_1, func_3(vec2<u32>(40249u, 1u))), 3u)]));
    let var_1 = select(select(vec2<bool>(false | any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), !(var_0.x & var_0.x)), select(var_0.wy, select(vec2<bool>(true, var_0.x), select(var_0.xz, vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x)), var_0.ww), vec2<bool>(false, func_4(-25152i, global2[_wgslsmith_index_u32(arg_0, 3u)]))), true), select(select(var_0.zx, vec2<bool>(true, true), vec2<bool>(any(var_0.yz), !var_0.x)), vec2<bool>(!(!var_0.x), true), any(select(!var_0.zz, !vec2<bool>(var_0.x, true), any(var_0.wyy)))), !select(vec2<bool>(var_0.x, true), !vec2<bool>(var_0.x, var_0.x), true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1301f, 1065f, 226f, 419f)))))));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, 0u), 3u)];
    var_3 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, abs(4294967295u), arg_1, _wgslsmith_clamp_u32(arg_1, u_input.b, arg_0)), vec4<u32>(arg_0, ~18078u, ~4294967295u, countOneBits(arg_0))), select(vec4<u32>(_wgslsmith_div_u32(4294967295u, arg_1), 21372u, _wgslsmith_mult_u32(11139u, arg_0), arg_0), abs(vec4<u32>(u_input.c.x, u_input.b, arg_0, 4294967295u) ^ vec4<u32>(4294967295u, arg_1, u_input.b, 0u)), false)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(min(vec2<u32>(arg_0, u_input.a), u_input.c.yx), u_input.c.yz), ~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, u_input.b), vec2<u32>(u_input.c.x, arg_1)), u_input.c.xy))), 3u)];
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(all(vec2<bool>(true, true)) | any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))), true, 0i != (func_1(abs(1u), max(30881u, u_input.a)) >> (func_3(u_input.c.yz) % 32u)));
    var var_1 = true;
    global3 = array<vec2<f32>, 7>();
    var var_2 = Struct_3(select(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, select(52725i, -1i, var_0.x), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 53702i), vec3<i32>(1i, 2147483647i, 43945i))), vec4<i32>(1133i, ~2147483647i, -46939i, abs(-2147483647i))), -_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), reverseBits(vec4<i32>(2147483647i, -26183i, -39638i, -61005i))), select(select(!vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), var_0.x)), vec4<bool>(var_0.x || var_0.x, var_0.x, var_0.x, any(var_0.zy)), vec4<bool>(true, var_0.x || false, var_0.x, false))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-627f, 2704f, -700f, -1327f) * vec4<f32>(-1687f, -922f, -1306f, 287f)))))), vec4<bool>(1u >= (u_input.b & 43701u), !(var_0.x | all(vec4<bool>(false, true, false, true))), var_0.x, var_0.x), !(!vec3<bool>(all(vec4<bool>(var_0.x, true, false, var_0.x)), true, select(var_0.x, false, true))));
    let var_3 = var_2.a.zyz & (firstTrailingBit(var_2.a.yxy) ^ firstLeadingBit(~vec3<i32>(4829i, -54140i, var_2.a.x)));
    var_2 = global2[_wgslsmith_index_u32(u_input.a, 3u)];
    let var_4 = Struct_3(vec4<i32>(i32(-1i) * -11914i, firstLeadingBit(_wgslsmith_div_i32(firstTrailingBit(-2147483647i), _wgslsmith_mult_i32(var_3.x, -2147483647i))), firstTrailingBit(var_2.a.x ^ -var_2.a.x), var_2.a.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), var_2.b.x, var_2.b.x, _wgslsmith_f_op_f32(2207f + -1241f))), var_2.b)), !var_2.c, var_0);
    let var_5 = Struct_1(~abs(~_wgslsmith_clamp_vec3_i32(var_4.a.xww, var_4.a.yxz, vec3<i32>(var_3.x, var_2.a.x, 9036i))));
    let var_6 = ~u_input.c >> (~vec3<u32>(u_input.c.x, ~11642u, ~min(75029u, u_input.a)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(4848i, 38689i), abs(var_4.a.zx)), var_3.x, _wgslsmith_sub_i32(~_wgslsmith_div_i32(var_4.a.x, 2147483647i), -reverseBits(22112i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(var_4.a, var_4.a, var_2.c), ~var_2.a), var_3.x)));
}

