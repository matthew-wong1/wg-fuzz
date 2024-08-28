struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(824f, -926f, 377f);

var<private> global1: Struct_3;

var<private> global2: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(0u, 978u, 46553u, 0u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(46535u, 4294967295u, 4865u, 4294967295u), vec4<u32>(1923u, 27834u, 27174u, 34579u), vec4<u32>(65973u, 46504u, 34772u, 4294967295u), vec4<u32>(1892u, 27710u, 75576u, 56405u), vec4<u32>(0u, 37058u, 1u, 0u), vec4<u32>(4294967295u, 1u, 75062u, 0u), vec4<u32>(4294967295u, 36885u, 53678u, 38688u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(30077u, 30853u, 32538u, 0u), vec4<u32>(91215u, 1u, 6568u, 1u), vec4<u32>(90898u, 4294967295u, 61758u, 1u), vec4<u32>(1922u, 4294967295u, 20337u, 1u), vec4<u32>(73678u, 54581u, 61924u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(1071u, 4294967295u, 0u, 40286u), vec4<u32>(0u, 0u, 36540u, 41861u), vec4<u32>(1u, 4294967295u, 43654u, 4294967295u), vec4<u32>(4294967295u, 0u, 64223u, 62349u), vec4<u32>(46162u, 3008u, 1u, 0u));

var<private> global3: u32 = 3828u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global2 = array<vec4<u32>, 21>();
    var var_0 = 182f;
    let var_1 = arg_0.e;
    let var_2 = firstTrailingBit(abs(~vec4<u32>(~63992u, 1u, arg_0.a.x >> (arg_0.a.x % 32u), 1u << (global1.c.x % 32u))));
    let var_3 = _wgslsmith_f_op_f32(round(arg_0.c));
    return 6758u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(586f, -260f, 906f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.a.x, 661f, -342f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, arg_0.b, -1224f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.c, arg_1.c) - vec3<f32>(arg_3, global1.a.x, -1214f)))))));
    let var_0 = Struct_4(~4294967295u);
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global0.x) * _wgslsmith_f_op_f32(1391f + global0.x)), 1203f, _wgslsmith_f_op_f32(f32(-1f) * -1281f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(986f, arg_3, arg_1.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1457f, 629f, arg_1.c))) * vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(floor(-1000f)), -1117f)))));
    global3 = _wgslsmith_sub_u32(reverseBits(1u), ~arg_0.c.x) >> (16446u % 32u);
    var var_1 = -657f;
    return vec4<u32>(~firstTrailingBit(abs(52672u ^ arg_0.c.x)), ~arg_1.a.x, 1u, abs(func_3(Struct_1(vec4<u32>(global1.c.x, 34042u, arg_0.c.x, global1.c.x), !arg_1.b, -2015f, -22009i, -1i))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    global1 = arg_1;
    var var_0 = -u_input.a.x;
    var var_1 = Struct_2(_wgslsmith_sub_vec4_u32(select(~vec4<u32>(arg_1.c.x, 2448u, 29028u, arg_0.b.x), arg_0.a, true && any(vec3<bool>(global1.d.x, arg_0.c.b.x, true))), func_2(arg_1, Struct_1(arg_1.c, !vec4<bool>(false, arg_1.d.x, false, arg_1.d.x), 1609f, arg_0.c.d, u_input.a.x << (1u % 32u)), ~(-2559i), _wgslsmith_f_op_f32(-arg_1.b))), ~vec3<u32>(min(arg_1.c.x, 1u), 4294967295u, ~arg_1.c.x) ^ _wgslsmith_clamp_vec3_u32(~global1.c.zxx, ~vec3<u32>(1u, arg_0.a.x, 54706u), select(select(vec3<u32>(arg_0.a.x, 1261u, arg_1.c.x), arg_1.c.wwy, vec3<bool>(global1.d.x, false, false)), ~arg_0.b, any(arg_1.d))), arg_0.c, ~vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(18606i, -1565i, u_input.a.x, u_input.a.x), u_input.a), arg_0.d.x, -(i32(-1i) * -1i)));
    let var_2 = arg_0;
    var var_3 = Struct_2(min(~(~reverseBits(vec4<u32>(4294967295u, arg_1.c.x, 0u, 4294967295u))), var_2.c.a), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(~global1.c.x, countOneBits(arg_0.c.a.x), 48557u), arg_0.c.a.yzz)), Struct_1(global2[_wgslsmith_index_u32(var_2.c.a.x, 21u)], vec4<bool>(true, var_2.c.b.x, true, _wgslsmith_div_u32(var_1.a.x, var_2.b.x) >= ~global1.c.x), global1.b, _wgslsmith_add_i32(-(-42060i ^ arg_0.c.e), _wgslsmith_mod_i32(arg_0.c.d, 2147483647i)), 44891i), vec3<i32>(reverseBits(1i), firstLeadingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, var_2.c.e, -1i), vec3<i32>(-1i, var_1.c.e, var_1.d.x))), ~3625i));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!global1.d.x, true);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(global0.xz * global0.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global1.a.x)))), countOneBits(~global2[_wgslsmith_index_u32(func_1(Struct_2(vec4<u32>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), vec3<u32>(global1.c.x, global1.c.x, 26602u), Struct_1(global2[_wgslsmith_index_u32(1u, 21u)], vec4<bool>(global1.d.x, var_0.x, var_0.x, true), global0.x, u_input.a.x, -41076i), vec3<i32>(2767i, u_input.a.x, u_input.a.x)), Struct_3(global1.a, 1000f, vec4<u32>(48863u, 1u, 0u, 0u), var_0)), 21u)] & global2[_wgslsmith_index_u32(global1.c.x, 21u)]), select(!select(!var_0, vec2<bool>(true, var_0.x), global1.d), !global1.d, global1.d));
    let var_2 = Struct_4(1u | global1.c.x);
    var var_3 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a.x), u_input.a.yz) ^ ~u_input.a.yy, ~vec2<i32>(62794i, u_input.a.x) << ((global1.c.yw | var_1.c.wy) % vec2<u32>(32u))), vec2<i32>(1i, _wgslsmith_sub_i32(abs(u_input.a.x), 25032i)), ~u_input.a.yz), vec2<i32>(~u_input.a.x, 2147483647i));
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a), _wgslsmith_f_op_vec2_f32(-var_1.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.yx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1048f, global0.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1515f, 201f) * vec2<f32>(var_1.b, 911f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2017f - _wgslsmith_f_op_f32(select(667f, _wgslsmith_f_op_f32(ceil(-522f)), global1.d.x)))), vec4<u32>(firstTrailingBit(global1.c.x), countOneBits(_wgslsmith_mult_u32(~4294967295u, 1u)), countOneBits(global1.c.x), 1u), vec2<bool>(any(var_0), !any(select(vec3<bool>(var_1.d.x, false, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_1.d.x, false)))));
    let var_4 = select(-(~(vec4<i32>(1i, 4891i, u_input.a.x, u_input.a.x) >> (global2[_wgslsmith_index_u32(countOneBits(global1.c.x), 21u)] % vec4<u32>(32u)))), ~(-(max(vec4<i32>(11579i, var_3.x, var_3.x, var_3.x), u_input.a) >> (max(var_1.c, vec4<u32>(0u, var_1.c.x, 93024u, 31407u)) % vec4<u32>(32u)))), vec4<bool>(true, true, false, (firstTrailingBit(-18855i) != -2147483647i) && false));
    let var_5 = Struct_3(var_1.a, 301f, var_1.c, vec2<bool>(global1.d.x, global1.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~23191u, _wgslsmith_sub_u32(8497u, var_5.c.x) | ~11542u) | global1.c.x, select(max(vec3<u32>(var_2.a, abs(global1.c.x), var_2.a), ~var_5.c.yzw), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(68772u, 4294967295u, 44190u), ~global1.c.wxw), ~vec3<u32>(global1.c.x, 0u, 4294967295u)), all(!select(vec3<bool>(false, false, var_1.d.x), vec3<bool>(var_1.d.x, var_1.d.x, false), vec3<bool>(var_1.d.x, true, true)))), func_1(Struct_2(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(global2[_wgslsmith_index_u32(34111u, 21u)], global2[_wgslsmith_index_u32(7438u, 21u)]), ~vec4<u32>(39395u, 21106u, 1u, 12591u)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(38881u, 26043u, 1u), vec3<u32>(var_1.c.x, 1u, 41252u)), vec3<u32>(var_2.a, var_1.c.x, 13822u)), Struct_1(countOneBits(global1.c), vec4<bool>(false, global1.d.x, false, false), -1339f, ~0i, 2147483647i << (var_2.a % 32u)), _wgslsmith_mod_vec3_i32(u_input.a.zzw, u_input.a.xzy)), var_5), ~_wgslsmith_add_i32(-_wgslsmith_div_i32(-59852i, var_3.x), var_4.x));
}

