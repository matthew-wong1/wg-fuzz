struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11>;

var<private> global1: Struct_2;

var<private> global2: vec4<u32> = vec4<u32>(46877u, 0u, 0u, 27639u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(1i, min(global1.a, u_input.b.x))) >> (countOneBits(u_input.d) % 32u));
    let var_1 = Struct_3((21584u ^ ~(global2.x | 0u)) ^ _wgslsmith_div_u32(~u_input.a << (~0u % 32u), u_input.a), Struct_2(var_0.a));
    var var_2 = firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(var_1.b.a, _wgslsmith_mod_i32(0i, ~var_1.b.a)), firstTrailingBit(~u_input.b.x), _wgslsmith_clamp_i32(-1i, abs(select(u_input.c.x, -2147483647i, true)), ~(~(-2147483647i)))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1250f, 957f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2222f), _wgslsmith_f_op_f32(step(-262f, -1189f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(359f * -794f))), true)), 687f, 582f, _wgslsmith_f_op_f32(select(1341f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-657f * 1381f) - _wgslsmith_f_op_f32(f32(-1f) * -1125f)) - -1266f), all(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, false, false))))));
    let var_4 = countOneBits(vec3<u32>(1u, 4294967295u, _wgslsmith_clamp_u32(49300u << (max(var_1.a, var_1.a) % 32u), ~60747u, 4294967295u)));
    return vec2<f32>(-321f, var_3.x);
}

fn func_4(arg_0: vec2<f32>) -> u32 {
    let var_0 = ~select(vec2<i32>(363i, i32(-1i) * -1i), -vec2<i32>(abs(-2147483647i), u_input.c.x | 4531i), !(_wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(-arg_0.x)));
    var var_1 = Struct_1(select(!vec3<bool>(all(vec3<bool>(true, true, false)), true, all(vec3<bool>(true, true, true))), !vec3<bool>(false, 0u != u_input.a, all(vec4<bool>(false, false, true, false))), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)));
    let var_2 = arg_0.x;
    global0 = array<vec3<f32>, 11>();
    var var_3 = u_input.c.x;
    return u_input.a;
}

fn func_2() -> u32 {
    global1 = Struct_2(-u_input.c.x);
    global0 = array<vec3<f32>, 11>();
    global2 = vec4<u32>(func_4(_wgslsmith_f_op_vec2_f32(func_3())) ^ global2.x, abs(~min(95328u, 1u) << (u_input.d % 32u)), reverseBits(u_input.d) ^ countOneBits(countOneBits(abs(1u))), reverseBits(abs(~_wgslsmith_mult_u32(0u, 4294967295u))));
    global2 = vec4<u32>(global2.x, _wgslsmith_add_u32(func_4(vec2<f32>(_wgslsmith_f_op_f32(-281f + -1304f), -1000f)), countOneBits(global2.x)), ~1u | u_input.a, global2.x);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1146f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(290f)) * -260f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1235f))) - _wgslsmith_f_op_f32(-319f + _wgslsmith_f_op_f32(max(-713f, _wgslsmith_f_op_vec2_f32(func_3()).x)))));
    return abs(78551u);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    var var_0 = Struct_1(!vec3<bool>(true, func_2() > _wgslsmith_mod_u32(16712u, global2.x), true));
    var var_1 = Struct_3(134703u, Struct_2(~u_input.c.x ^ -15152i));
    var_0 = Struct_1(vec3<bool>(all(var_0.a.zz), false, false));
    var var_2 = Struct_1(!select(vec3<bool>(arg_0.a.x, all(arg_0.a), true), arg_0.a, arg_0.a.x));
    global2 = vec4<u32>(max(_wgslsmith_clamp_u32(72404u, u_input.d, global2.x), ~(_wgslsmith_mult_u32(1u, 43887u) >> (u_input.a % 32u))), ~(~min(var_1.a, ~67183u)), u_input.a, 18295u >> (1u % 32u));
    return -1i;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = 1u;
    var var_1 = _wgslsmith_clamp_vec2_i32(abs((arg_0 ^ _wgslsmith_sub_vec2_i32(arg_1.wz, vec2<i32>(global1.a, -58777i))) << (vec2<u32>(func_2(), 1u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(~(~vec2<i32>(-5442i, arg_1.x)), select(vec2<i32>(11915i, 1i), u_input.c.yy, true)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(-arg_1.yx >> (min(global2.yz, global2.xy) % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, -17847i)), vec2<i32>(1i >> (firstLeadingBit(40737u) % 32u), min(abs(global1.a), arg_0.x))));
    let var_2 = vec4<u32>(min(_wgslsmith_clamp_u32(global2.x, ~global2.x, ~global2.x), u_input.d), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2.x, 1u, var_0, 14584u)), min(~vec4<u32>(0u, 80493u, u_input.a, 0u), ~vec4<u32>(1u, 50209u, global2.x, global2.x))), select(~func_4(vec2<f32>(852f, -1355f)), ~func_4(vec2<f32>(1000f, -224f)), any(select(vec4<bool>(arg_2.a.x, false, true, arg_2.a.x), vec4<bool>(arg_2.a.x, false, arg_2.a.x, true), arg_2.a.x))), u_input.a) | vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(20029u, 4294967295u)), firstLeadingBit(~global2.xw)), (_wgslsmith_dot_vec2_u32(global2.wz, global2.xx) & countOneBits(var_0)) | global2.x, 1u, _wgslsmith_sub_u32(firstLeadingBit(var_0) << (1u % 32u), countOneBits(1u)));
    let var_3 = _wgslsmith_div_u32(_wgslsmith_div_u32(1415u, firstLeadingBit(~var_2.x)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(103u, func_4(vec2<f32>(2032f, 898f))), ~33704u));
    let var_4 = ~(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b.x, -2147483647i)), _wgslsmith_mult_vec2_i32(u_input.b.zy, arg_1.yx)), (arg_0 ^ u_input.b.yz) << (vec2<u32>(var_2.x, 40353u) % vec2<u32>(32u))) << ((_wgslsmith_mult_vec2_u32(var_2.xw, global2.yx) << (vec2<u32>(0u, 33728u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return Struct_2(1i);
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    let var_0 = arg_2.b;
    var var_1 = u_input.b;
    global0 = array<vec3<f32>, 11>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f)) * _wgslsmith_f_op_f32(f32(-1f) * -1601f)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_2 + var_2), var_2);
    return Struct_1(vec3<bool>(true, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(u_input.b.x, func_5(vec2<i32>(min(func_1(Struct_1(vec3<bool>(true, true, true)), u_input.b), -global1.a), reverseBits(2147483647i) ^ global1.a), vec4<i32>(-1i) * -u_input.b, Struct_1(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))), Struct_3(_wgslsmith_mod_u32(func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global2.x, 4294967295u), vec3<u32>(global2.x, global2.x, global2.x))), Struct_2(abs(-38335i | global1.a))));
    var var_1 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(17892u, u_input.d), vec2<u32>(~32057u, ~(1u >> (0u % 32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(175f, -1335f))))), 478f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1658f, 159f, var_0.a.x)), 351f, all(var_0.a.zx))), -1358f)));
    let var_3 = Struct_2(max(select(_wgslsmith_mod_i32(~0i, 58293i), -func_5(u_input.c.xx, u_input.b, Struct_1(var_0.a)).a, (u_input.b.x >> (global2.x % 32u)) >= 0i), _wgslsmith_mod_i32(~26126i, firstTrailingBit(-9849i))));
    var var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_add_i32(26575i, global1.a)), -countOneBits(1i))), u_input.c.xy);
    var var_5 = select(func_6(~2147483647i, func_5(_wgslsmith_add_vec2_i32(-vec2<i32>(global1.a, global1.a), _wgslsmith_mult_vec2_i32(vec2<i32>(27388i, var_3.a), u_input.c.zx)), _wgslsmith_mod_vec4_i32(-vec4<i32>(5681i, var_3.a, 41849i, global1.a), u_input.b), func_6(_wgslsmith_mod_i32(-37026i, var_3.a), Struct_2(u_input.b.x), Struct_3(var_1.x, var_3))), Struct_3(firstLeadingBit(10064u), func_5(vec2<i32>(var_3.a, var_3.a) << (vec2<u32>(1379u, 48350u) % vec2<u32>(32u)), vec4<i32>(-2147483647i, 24000i, 1i, var_3.a) | vec4<i32>(global1.a, var_3.a, -54450i, global1.a), func_6(global1.a, var_3, Struct_3(0u, Struct_2(1i)))))).a, !(!vec3<bool>(all(vec3<bool>(var_0.a.x, var_0.a.x, false)), false, true | var_0.a.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~global2.x, u_input.b.www, var_2.x, var_3.a);
}

