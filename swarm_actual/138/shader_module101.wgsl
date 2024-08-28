struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

var<private> global1: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: u32) -> i32 {
    return ~34071i;
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(41301u, 21u)], Struct_2(select(!select(arg_1.a, arg_1.a, vec4<bool>(arg_1.a.x, arg_1.a.x, true, true)), !vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x), arg_1.a.x), Struct_1(_wgslsmith_mod_vec4_u32(arg_1.b.a, arg_1.d.a), _wgslsmith_div_f32(arg_1.d.b, _wgslsmith_f_op_f32(arg_1.d.b - arg_1.d.b)), _wgslsmith_div_u32(abs(68360u), arg_0)), 57691u, Struct_1(vec4<u32>(arg_1.b.a.x, 1u, arg_0, arg_1.b.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1409f), _wgslsmith_f_op_f32(-arg_1.b.b))), 47909u >> (_wgslsmith_mult_u32(u_input.a.x, arg_0) % 32u))), arg_1.b, vec4<bool>(false, !(!(false | arg_1.a.x)), all(arg_1.a.yxw), all(arg_1.a.zzw)));
    let var_1 = ~(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2880i, -2147483647i, -1i) << (vec3<u32>(4294967295u, u_input.a.x, 0u) % vec3<u32>(32u)), max(vec3<i32>(2089i, 2147483647i, -17496i), vec3<i32>(-2974i, 1078i, 2147483647i))), select(2147483647i, 2147483647i, var_0.d.x) & -20345i, abs(i32(-1i) * -2704i), 1i) & -abs(-vec4<i32>(-2147483647i, -1i, 2147483647i, -1i)));
    var var_2 = -340f;
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.b.b)), arg_1.b.b), vec2<f32>(arg_1.d.b, arg_1.b.b), select(select(select(vec2<bool>(false, var_0.d.x), arg_1.a.zz, vec2<bool>(false, true)), !arg_1.a.xx, var_0.b.a.wz), select(!var_0.b.a.yy, vec2<bool>(true, false), select(var_0.d.xy, vec2<bool>(arg_1.a.x, arg_1.a.x), vec2<bool>(arg_1.a.x, arg_1.a.x))), arg_1.a.yz)))));
    let var_4 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b.b.a.x, ~24683u), 21u)], arg_1, arg_1.d, !select(select(select(var_0.d, var_0.b.a, var_0.d.x), var_0.d, select(vec4<bool>(true, var_0.d.x, arg_1.a.x, true), vec4<bool>(true, var_0.b.a.x, true, true), false)), vec4<bool>(!var_0.d.x, arg_1.a.x, true, arg_1.a.x), vec4<bool>(true, var_0.d.x, true, var_0.d.x)));
    return var_0.d;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_4) -> vec4<u32> {
    global0 = array<Struct_3, 21>();
    var var_0 = arg_3.b.c;
    global1 = arg_2;
    var var_1 = arg_1.c;
    var var_2 = global0[_wgslsmith_index_u32(select(arg_3.c.a.x, ~countOneBits(arg_3.b.c), all(!arg_3.d.wyx)), 21u)];
    return ~abs(max(arg_1.d.a, _wgslsmith_div_vec4_u32(vec4<u32>(44034u, 4294967295u, 1u, 1u) << (arg_3.b.b.a % vec4<u32>(32u)), vec4<u32>(arg_1.d.c, u_input.a.x, u_input.a.x, 4294967295u))));
}

fn func_5(arg_0: i32, arg_1: vec4<u32>) -> vec4<i32> {
    var var_0 = 1093i;
    var_0 = 1i;
    return ~(-_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(17054i, arg_0), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 61718i), vec3<i32>(arg_0, 2147483647i, 5515i)), _wgslsmith_sub_i32(arg_0, arg_0), 0i), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, 0i), vec4<i32>(arg_0, 0i, 49714i, 9628i)))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_5) -> i32 {
    let var_0 = -func_5(~(-max(-2147483647i, 2147483647i)), func_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-737f, arg_2.a.a) + vec2<f32>(arg_1, 1857f)))), Struct_2(func_3(u_input.a.x, Struct_2(vec4<bool>(true, false, arg_2.b.x, false), Struct_1(vec4<u32>(6533u, 1u, u_input.a.x, u_input.a.x), -746f, u_input.a.x), u_input.a.x, Struct_1(vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x), 290f, 22514u))), Struct_1(vec4<u32>(41768u, u_input.a.x, 13476u, 45829u), arg_1, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(0u, u_input.a.x, u_input.a.x)), Struct_1(vec4<u32>(18160u, 0u, u_input.a.x, 1964u), arg_0, u_input.a.x)), ~(~1i), Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(34987u, 0u), 21u)], Struct_2(vec4<bool>(arg_2.b.x, arg_2.b.x, true, arg_2.b.x), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u), 1284f, u_input.a.x), u_input.a.x, Struct_1(vec4<u32>(0u, 14961u, 2766u, 0u), arg_2.a.a, 14280u)), Struct_1(vec4<u32>(30241u, u_input.a.x, 17633u, 15426u), -1014f, u_input.a.x), vec4<bool>(arg_2.b.x, arg_2.b.x, false, arg_2.b.x))));
    var var_1 = true && ((var_0.x << (u_input.a.x % 32u)) == -2147483647i);
    var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_f_op_f32(675f * arg_0))) + arg_0) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1265f), -1912f, true)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 498f, arg_1)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a, 244f, 1000f) - vec3<f32>(-1209f, 866f, arg_0)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, -301f, arg_2.a.a))))));
    var var_3 = Struct_1(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(~u_input.a.x, 4294967295u, ~1u, u_input.a.x)), ~abs(vec4<u32>(9655u, 60717u, 49971u, 1u)) << (countOneBits(vec4<u32>(0u, u_input.a.x, 1255u, u_input.a.x)) % vec4<u32>(32u))), -794f, _wgslsmith_div_u32(~0u, _wgslsmith_sub_u32(u_input.a.x & u_input.a.x, 4294967295u)));
    return abs(21654i);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_5 {
    global1 = ~((arg_0.x | -20260i) | arg_0.x);
    global1 = -1i;
    global1 = i32(-1i) * -2147483647i;
    let var_0 = vec2<i32>(arg_0.x, -42276i);
    global1 = _wgslsmith_div_i32(arg_0.x, 1i << ((2852u << (firstLeadingBit(_wgslsmith_dot_vec2_u32(arg_1.a.yz, vec2<u32>(arg_1.c, 1u))) % 32u)) % 32u));
    return Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1.a, ~arg_1.a), 21u)], vec2<bool>(false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(358f + -111f), _wgslsmith_f_op_f32(160f * -763f), -1000f, _wgslsmith_f_op_f32(select(194f, 382f, true))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1329f, -2106f, 1207f, -163f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1367f, -895f, -1179f, 1000f) + vec4<f32>(1000f, -676f, 1018f, 2485f))))) + vec4<f32>(-170f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1301f)) * _wgslsmith_f_op_f32(select(108f, -1050f, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-658f + -826f), _wgslsmith_f_op_f32(172f * 918f), true)), _wgslsmith_f_op_f32(f32(-1f) * -305f), func_1(u_input.a.x) == -4791i)), _wgslsmith_f_op_f32(select(-1199f, 1f, select(true, true, true)))));
    var var_1 = func_6(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), abs(vec3<i32>(22309i, -43762i, -1i))), ~vec3<i32>(1i, 1i, 1i)) ^ -vec3<i32>(1i, func_2(-1000f, var_0.x, Struct_5(Struct_3(871f), vec2<bool>(true, false))), -1803i), Struct_1(vec4<u32>(~1u, 4294967295u, 1u, ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -324f))), reverseBits(u_input.a.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f));
    var var_3 = 1u;
    let var_4 = -2147483647i;
    let var_5 = -104f;
    global1 = var_4;
    global0 = array<Struct_3, 21>();
    var var_6 = _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -(~reverseBits(vec3<i32>(var_4, 12418i, var_4))), ~firstTrailingBit(reverseBits(vec3<i32>(0i, -2147483647i, var_4))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_2)), ~(~4294967295u << (1u % 32u)), vec3<i32>(var_6.x, -20081i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(2147483647i, 0i, 1i)), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-19572i, var_6.x, 2147483647i), vec3<i32>(var_4, var_6.x, var_6.x), vec3<i32>(var_4, 0i, -1i)), ~vec3<i32>(-2147483647i, -2147483647i, 1i)))));
}

