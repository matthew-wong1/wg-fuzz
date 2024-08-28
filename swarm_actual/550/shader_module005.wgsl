struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<u32, 14>;

var<private> global2: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(1220f, -763f), vec2<f32>(512f, 1455f), vec2<f32>(945f, 480f), vec2<f32>(-1359f, -343f), vec2<f32>(-490f, 1365f), vec2<f32>(1574f, -418f), vec2<f32>(-1151f, 376f), vec2<f32>(385f, -820f), vec2<f32>(-1888f, 1411f), vec2<f32>(-815f, -880f), vec2<f32>(190f, -658f), vec2<f32>(-710f, -323f), vec2<f32>(695f, 524f), vec2<f32>(-2384f, -291f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> i32 {
    var var_0 = 1i;
    var var_1 = true && !(any(vec2<bool>(true, true)) | (1i < _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.c, arg_0.b.c, arg_0.a.a.x, u_input.a.x), vec4<i32>(arg_0.a.c, arg_0.a.c, -2147483647i, -9640i))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x + global0.x), _wgslsmith_div_f32(-1993f, 664f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1000f))))) + arg_1.x), global0.x, -229f);
    let var_2 = vec2<bool>(any(vec2<bool>(true, !(global0.x < arg_1.x))), any(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))) || true);
    var var_3 = 11852i;
    return min(-arg_0.b.c, min(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(0i, 1i, u_input.a.x)), vec3<i32>(-16780i, u_input.a.x, -9146i) << (vec3<u32>(4294967295u, 69693u, 20902u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(arg_0.a.b, 39568i), arg_0.a.c & arg_0.b.b, u_input.b)), -_wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_add_i32(-1i, -2147483647i))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> i32 {
    let var_0 = arg_0.x;
    var var_1 = Struct_1(abs(_wgslsmith_mod_vec3_i32(~(vec3<i32>(81032i, u_input.b, u_input.b) & vec3<i32>(-6487i, 1i, 1i)), vec3<i32>(-1i, 1i, u_input.b) >> (vec3<u32>(arg_1.x, 14466u, 0u) % vec3<u32>(32u)))), 20736i, u_input.a.x);
    let var_2 = !(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))));
    var var_3 = Struct_3(var_1.a, Struct_1(vec3<i32>(select(10983i, firstLeadingBit(var_1.a.x), true), -6061i, _wgslsmith_dot_vec2_i32(var_1.a.yz, u_input.a)), -var_1.a.x << (~firstLeadingBit(arg_2.x) % 32u), _wgslsmith_div_i32(func_3(Struct_2(Struct_1(var_1.a, var_1.b, var_1.c), Struct_1(vec3<i32>(var_1.a.x, 1i, 0i), var_1.a.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-244f, global0.x, 1572f, 1000f))), -var_1.c)), countOneBits(~max(arg_2, countOneBits(arg_2))), Struct_2(Struct_1(~(var_1.a ^ vec3<i32>(u_input.b, u_input.a.x, -2147483647i)), u_input.a.x, 80475i), Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.a, var_1.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, var_1.c, -2147483647i), var_1.a)), 1i ^ (-1i >> (arg_2.x % 32u)), -1677i)), Struct_1(_wgslsmith_mod_vec3_i32(-vec3<i32>(39691i, u_input.a.x, -2147483647i), vec3<i32>(min(var_1.c, 0i), min(-1i, var_1.c), firstTrailingBit(u_input.a.x))), countOneBits(i32(-1i) * -2235i), abs(func_3(Struct_2(Struct_1(var_1.a, u_input.a.x, 8852i), Struct_1(var_1.a, u_input.a.x, -6115i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1163f, -376f, -792f) - vec4<f32>(var_0, arg_0.x, 1260f, -433f))))));
    let var_4 = var_3.d.b;
    return var_4.a.x << ((~(abs(arg_2.x) >> (var_3.c.x % 32u)) >> (arg_1.x % 32u)) % 32u);
}

fn func_1(arg_0: Struct_2) -> vec4<u32> {
    global1 = array<u32, 14>();
    global2 = array<vec2<f32>, 14>();
    let var_0 = Struct_3(vec3<i32>(-firstLeadingBit(abs(u_input.a.x)), _wgslsmith_add_i32(func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(713f, 1519f, global0.x), vec3<f32>(global0.x, -1414f, 790f))), vec2<u32>(global1[_wgslsmith_index_u32(0u, 14u)], 41840u), min(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47237u, 14u)], 14u)], 14u)], 14u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59692u, 14u)], 14u)]), vec4<u32>(56396u, 4294967295u, 0u, 29210u))), 30880i), u_input.b), Struct_1(arg_0.a.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.b.a, arg_0.a.a), -arg_0.b.a), _wgslsmith_sub_i32(~u_input.b, select(1i, 1i, true))), 3710i), firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 20187u, 45849u, global1[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_div_vec4_u32(vec4<u32>(26223u, global1[_wgslsmith_index_u32(0u, 14u)], 1u, 28313u), vec4<u32>(global1[_wgslsmith_index_u32(76058u, 14u)], 75897u, 5268u, global1[_wgslsmith_index_u32(4294967295u, 14u)])), vec4<u32>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(71691u, 14u)], 27933u, 0u))), Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(~arg_0.b.a, arg_0.b.a), _wgslsmith_sub_i32(min(0i, 22466i), _wgslsmith_div_i32(u_input.b, 0i)), countOneBits(-1i)), arg_0.b), Struct_1(_wgslsmith_mod_vec3_i32(arg_0.a.a, -vec3<i32>(u_input.b, u_input.a.x, 2147483647i)), -func_3(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 395f) * vec4<f32>(1767f, global0.x, 825f, global0.x))), -29681i));
    let var_1 = !vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, true, false))), false);
    global2 = array<vec2<f32>, 14>();
    return var_0.c;
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_3(~(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, 23900i, arg_2), vec3<i32>(u_input.b, -1i, 0i)), -16026i, 0i)), Struct_1(abs(select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, arg_2, 8847i), vec3<i32>(arg_2, u_input.a.x, 25971i)), ~vec3<i32>(0i, -1i, arg_2), true)), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(-12938i, 30170i), _wgslsmith_div_i32(arg_2, u_input.a.x)), abs(-max(2147483647i, 5241i))), arg_1, Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, -1i), vec3<i32>(u_input.a.x, 1i, arg_2)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(31576i, 1i, u_input.b), vec3<i32>(-38936i, u_input.b, -43395i), vec3<i32>(-1i, u_input.a.x, arg_2)), arg_2, _wgslsmith_sub_i32(2147483647i, arg_2) & -2147483647i), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, u_input.b, -12393i), -vec3<i32>(-10340i, arg_2, 1i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), 1i), _wgslsmith_clamp_i32(u_input.b, u_input.a.x, 5076i) & _wgslsmith_mult_i32(arg_2, -28985i))), Struct_1(firstLeadingBit(-(~vec3<i32>(arg_2, u_input.a.x, -1i))), ~_wgslsmith_sub_i32(arg_2, -15753i), _wgslsmith_add_i32(~(~u_input.b), -1i)));
    var var_1 = (_wgslsmith_dot_vec3_i32(var_0.d.a.a, vec3<i32>(var_0.b.b, -1i, var_0.d.a.b) ^ vec3<i32>(var_0.e.b, u_input.a.x, u_input.b)) < ~var_0.d.b.a.x) && select(~(54540u >> (1u % 32u)) == var_0.c.x, true, ((global0.x > arg_0) & any(vec4<bool>(true, true, false, true))) | true);
    var var_2 = ~arg_1.ww;
    let var_3 = Struct_2(var_0.b, var_0.b);
    var var_4 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(min(arg_0, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(351f, arg_0))) - arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return Struct_1(vec3<i32>(var_0.a.x, -firstLeadingBit(0i), i32(-1i) * -1260i), var_3.a.b, i32(-1i) * -(var_3.b.a.x ^ (var_3.b.c >> (4294967295u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(43182u, 14u)] + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -551f))))));
    global1 = array<u32, 14>();
    let var_1 = vec3<i32>(u_input.b | u_input.b, u_input.b ^ 36457i, u_input.b);
    let var_2 = vec2<u32>(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(1u, 14u)]) << (~reverseBits(global1[_wgslsmith_index_u32(37383u, 14u)]) % 32u), 14u)] ^ global1[_wgslsmith_index_u32(33417u, 14u)], countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~1u, 14u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 14u)], 14u)], 14u)]), 14u)]));
    let var_3 = func_4(2341f, _wgslsmith_sub_vec4_u32(vec4<u32>(abs(~var_2.x), 1u, ~0u, ~select(4294967295u, 6100u, false)), ~func_1(Struct_2(Struct_1(var_1, var_1.x, -72913i), Struct_1(var_1, 2147483647i, var_1.x)))), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b, u_input.b), 0i));
    let var_4 = countOneBits(select(firstLeadingBit(vec3<u32>(1u, 1u, var_2.x)) << (vec3<u32>(1522u, 29453u, 1u) % vec3<u32>(32u)), vec3<u32>(~52426u, 1670u, global1[_wgslsmith_index_u32(firstLeadingBit(33952u), 14u)] ^ global1[_wgslsmith_index_u32(16951u, 14u)]), vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)))));
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(-711f, 781f)), _wgslsmith_f_op_f32(exp2(var_0.x)), 185f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 406f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, global0.x)), select(true, true, false))))))));
    global1 = array<u32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, u_input.a, ~countOneBits(var_1.zy));
}

