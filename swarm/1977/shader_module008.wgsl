struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<vec4<f32>, 20>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> bool {
    let var_0 = Struct_3(~arg_0.e);
    global2 = array<vec4<f32>, 20>();
    let var_1 = arg_0.e;
    let var_2 = arg_0.c;
    global0 = 0i;
    return arg_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    var var_0 = arg_0;
    global3 = arg_0;
    var_0 = arg_0;
    let var_1 = vec3<bool>(!(!(-1938f != arg_1)), true, !func_3(Struct_2(false, _wgslsmith_dot_vec3_i32(u_input.c.zzw, u_input.c.xyy), Struct_1(arg_0.a, -6959i), countOneBits(vec2<u32>(97637u, 0u)), _wgslsmith_add_u32(118645u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -414f)), -_wgslsmith_sub_i32(1359i, arg_0.b)));
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(arg_1 + -361f))) * arg_1);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~89583u, ~u_input.a.x), 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-243f + -1394f) * _wgslsmith_f_op_f32(1368f - -876f)), vec2<i32>(global3.b, 1i))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1208f) - _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(13768u, 27u)], 241f, u_input.c.yz)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1317f * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f), -412f)))));
    global2 = array<vec4<f32>, 20>();
    let var_2 = -vec2<i32>(2147483647i, _wgslsmith_mult_i32(firstTrailingBit(global3.b), global3.b)) & vec2<i32>(16757i, 18505i);
    let var_3 = u_input.b;
    return Struct_2(func_3(Struct_2(true, firstLeadingBit(1i ^ u_input.b), global1[_wgslsmith_index_u32(0u, 27u)], abs(global3.a.zw) << (vec2<u32>(13068u, 15447u) % vec2<u32>(32u)), u_input.a.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -806f))))), -1i), global3.b, Struct_1(min(_wgslsmith_add_vec4_u32(vec4<u32>(global3.a.x, 1u, 0u, 27702u), global3.a) | _wgslsmith_sub_vec4_u32(global3.a, vec4<u32>(0u, 0u, arg_0.a, global3.a.x)), global3.a), ~var_2.x), firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(5236u, _wgslsmith_mult_u32(u_input.a.x, 0u)), u_input.a.x)), abs(~reverseBits(arg_1.a)) >> ((_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a, arg_0.a), u_input.a.xy), min(vec2<u32>(global3.a.x, arg_1.a), u_input.a.xx)) >> (_wgslsmith_add_u32(~global3.a.x, ~u_input.a.x) % 32u)) % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_dot_vec2_i32(~min(select(vec2<i32>(2147483647i, arg_1.b), ~u_input.c.xw, true), abs(u_input.c.xw) & select(vec2<i32>(arg_1.b, -36449i), vec2<i32>(12227i, arg_0.b), arg_0.a)), _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(-48373i, _wgslsmith_sub_i32(arg_1.c.b, 37485i))), ~select(vec2<i32>(35917i, -2147483647i), ~u_input.c.yw, vec2<bool>(arg_1.a, arg_0.a))));
    let var_0 = ~reverseBits(u_input.c);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1060f, 542f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-961f, -715f)) + _wgslsmith_f_op_f32(1000f + -1246f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(ceil(1465f))) * -694f))), 593f);
    let var_2 = ~vec2<u32>(func_1(Struct_3(arg_0.e), Struct_3(4780u)).e, ~1u) ^ global3.a.zw;
    let var_3 = vec4<bool>(arg_0.a, arg_1.a, true, all(vec3<bool>(true, arg_0.a, true)));
    return func_1(Struct_3(firstTrailingBit(arg_1.c.a.x)), Struct_3(0u)).c;
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(~_wgslsmith_mult_u32(min(arg_0.a.x ^ u_input.a.x, 27022u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0.a.xy, vec2<u32>(45286u, 22236u)), ~1u)));
    global1 = array<Struct_1, 27>();
    var_0 = Struct_3(~global3.a.x);
    return Struct_3(0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(global3.a.x, 20u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-952f, -545f, 420f, 1665f), vec4<f32>(-209f, -576f, -1227f, -1000f), false)))))));
    let var_1 = func_5(func_4(func_1(Struct_3(44746u), Struct_3(6867u)), func_1(Struct_3(u_input.a.x), Struct_3(~32132u))));
    var var_2 = _wgslsmith_mult_i32(reverseBits(_wgslsmith_div_i32(u_input.b, u_input.b)), _wgslsmith_dot_vec3_i32(-reverseBits(u_input.c.xxy), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.b, -32629i, global3.b), u_input.c.zyx, u_input.c.zyx), vec3<i32>(-75130i, 28374i, 2147483647i), any(vec3<bool>(true, false, false)))) & global3.b);
    var_2 = ~(-_wgslsmith_sub_i32(global3.b, global3.b << (select(12873u, 47034u, false) % 32u)));
    global0 = 27733i;
    global2 = array<vec4<f32>, 20>();
    let var_3 = func_1(Struct_3(1u ^ _wgslsmith_add_u32(~global3.a.x, global3.a.x)), Struct_3(_wgslsmith_dot_vec3_u32(~u_input.a >> (~vec3<u32>(1u, var_1.a, 76257u) % vec3<u32>(32u)), ~global3.a.xzz)));
    let var_4 = 34157i;
    let x = u_input.a;
    s_output = StorageBuffer(-689f, -u_input.c.xx, ~1u, max(-abs(u_input.c), vec4<i32>(_wgslsmith_sub_i32(2147483647i, 1i & global3.b), func_4(func_1(Struct_3(var_3.e), Struct_3(17513u)), Struct_2(false, var_3.b, global1[_wgslsmith_index_u32(14494u, 27u)], vec2<u32>(var_1.a, 4294967295u), 1u)).b, _wgslsmith_dot_vec4_i32(-u_input.c, reverseBits(vec4<i32>(0i, var_4, var_3.c.b, u_input.c.x))), abs(_wgslsmith_div_i32(-38873i, -1i)))));
}

