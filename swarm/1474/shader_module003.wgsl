struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<f32>(-433f, 1849f, -678f, 611f), true, 0u, vec4<u32>(81953u, 4294967295u, 1u, 19765u), -1730f), Struct_1(vec4<f32>(983f, -1028f, -1406f, 821f), true, 90801u, vec4<u32>(4294967295u, 0u, 117486u, 72003u), -522f), Struct_1(vec4<f32>(-291f, -101f, 416f, 1809f), false, 89081u, vec4<u32>(55046u, 12747u, 35618u, 4294967295u), 205f), Struct_1(vec4<f32>(361f, 1000f, 977f, -1075f), true, 0u, vec4<u32>(1u, 62387u, 1u, 0u), 2036f), Struct_1(vec4<f32>(121f, 1893f, -1636f, -277f), true, 47385u, vec4<u32>(19744u, 4294967295u, 46619u, 9397u), 584f), Struct_1(vec4<f32>(-1139f, 767f, 1000f, 616f), false, 0u, vec4<u32>(0u, 17029u, 54514u, 19859u), 662f), Struct_1(vec4<f32>(-981f, 1302f, -326f, -1000f), false, 89651u, vec4<u32>(22871u, 0u, 1u, 1u), -1217f), Struct_1(vec4<f32>(-1126f, -674f, -600f, -688f), true, 15804u, vec4<u32>(17400u, 0u, 65313u, 25458u), -2188f), Struct_1(vec4<f32>(1132f, 1000f, 1900f, 1000f), false, 71697u, vec4<u32>(0u, 7999u, 0u, 4294967295u), 623f));

var<private> global2: array<vec3<f32>, 2>;

var<private> global3: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(1i, -37084i), vec2<i32>(0i, 2147483647i), vec2<i32>(37967i, 42347i), vec2<i32>(13649i, i32(-2147483648)), vec2<i32>(-13626i, 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global2 = array<vec3<f32>, 2>();
    global2 = array<vec3<f32>, 2>();
    global1 = array<Struct_1, 9>();
    let var_0 = true;
    global0 = global1[_wgslsmith_index_u32(11412u, 9u)];
    return Struct_2(_wgslsmith_f_op_f32(-933f + _wgslsmith_f_op_f32(811f + _wgslsmith_f_op_f32(-global0.a.x))) != global0.e, ~(global0.d.yyz | ~vec3<u32>(1u, 0u, global0.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x))), global0.a.x, _wgslsmith_div_f32(-157f, 216f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global0.a.xww))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global2[_wgslsmith_index_u32(1u, 2u)])) * vec3<f32>(-323f, global0.a.x, 1679f)))), ~(vec4<u32>(global0.c, 27227u ^ u_input.c.x, ~4893u, _wgslsmith_add_u32(u_input.c.x, u_input.d)) ^ _wgslsmith_mod_vec4_u32(global0.d, vec4<u32>(41558u, 42592u, 0u, u_input.b) ^ vec4<u32>(13425u, u_input.b, 24840u, 51232u))), arg_0);
}

fn func_3(arg_0: Struct_2) -> i32 {
    global3 = array<vec2<i32>, 5>();
    global1 = array<Struct_1, 9>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(global0.a)), true, 26336u, abs(vec4<u32>(_wgslsmith_mult_u32(arg_0.d.x >> (4294967295u % 32u), global0.d.x), ~u_input.d, 4294967295u, firstTrailingBit(global0.d.x))), _wgslsmith_f_op_f32(select(-445f, global0.a.x, true)));
    var var_1 = select(vec3<bool>(!any(vec4<bool>(global0.b, var_0.b, false, false)), all(!vec4<bool>(var_0.b, false, true, false)), any(select(vec2<bool>(true, true), vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, true)))), select(!vec3<bool>(!global0.b, false, global0.b), vec3<bool>(true, true, true), !any(select(vec4<bool>(var_0.b, arg_0.a, false, global0.b), vec4<bool>(true, false, arg_0.a, true), true))), func_1(abs(~reverseBits(arg_0.e))).a);
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-7050i, u_input.a.x), vec2<i32>(1i, max(-(~(-25108i)), min(0i, arg_0.e))));
    return _wgslsmith_mod_i32(-2147483647i, var_2);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec4<u32> {
    global3 = array<vec2<i32>, 5>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, func_1(func_3(func_1(0i))).c.x, arg_1.c.x));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-289f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.c.x), 736f)), !(u_input.b == 64916u)))), var_0.x);
    var var_2 = true;
    var_1 = 1f;
    return reverseBits(arg_1.d) >> (_wgslsmith_div_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.c, global0.d.x, u_input.d, 81071u), vec4<u32>(arg_1.b.x, 0u, 50826u, global0.c)) >> (firstTrailingBit(vec4<u32>(95628u, u_input.c.x, 0u, u_input.b)) % vec4<u32>(32u))), vec4<u32>(func_1(~arg_0).b.x, 30461u, reverseBits(4294967295u), arg_1.d.x)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mult_i32(u_input.a.x, u_input.e.x));
    global2 = array<vec3<f32>, 2>();
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b >> (u_input.d % 32u)), 9u)];
    global3 = array<vec2<i32>, 5>();
    let var_2 = firstTrailingBit(var_1.d.x);
    var var_3 = Struct_2(!((_wgslsmith_dot_vec4_u32(vec4<u32>(3834u, 0u, u_input.d, 4294967295u), vec4<u32>(4294967295u, 1u, global0.c, 22551u)) >> (0u % 32u)) < var_0.d.x), vec3<u32>(36652u, 6518u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(7679u, 2323u, 4294967295u, global0.c), vec4<u32>(32908u, 26414u, u_input.d, 83139u)), vec4<u32>(~var_1.d.x, _wgslsmith_dot_vec4_u32(var_1.d, var_0.d), 4671u, _wgslsmith_dot_vec4_u32(var_1.d, vec4<u32>(global0.d.x, 22349u, var_1.d.x, 4294967295u))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(891f, -1359f, -1000f)))))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(global0.d), vec4<u32>(~var_2, 4294967295u, ~global0.c, u_input.c.x)), ~func_2(var_0.e, Struct_2(global0.b, var_0.b, global0.a.wxz, vec4<u32>(1u, 33643u, 1u, var_1.d.x), -29779i)) ^ ~var_1.d), -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-23482i, 2147483647i, 102425i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e.x, var_0.e, 0i), vec3<i32>(u_input.a.x, u_input.a.x, var_0.e), vec3<i32>(-2331i, -26389i, u_input.a.x))), _wgslsmith_div_i32(~var_0.e, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~9103i, _wgslsmith_mod_i32(u_input.a.x, 60476i), 1i), firstTrailingBit(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a.x, 60373i, 2004i, -33417i) << (vec4<u32>(var_0.d.x, u_input.c.x, var_1.d.x, 58927u) % vec4<u32>(32u))), vec4<i32>(-var_0.e, firstTrailingBit(-8006i), var_3.e, ~u_input.a.x))), _wgslsmith_f_op_vec3_f32(ceil(func_1(var_0.e << (~var_0.b.x % 32u)).c)), -var_0.e);
}

