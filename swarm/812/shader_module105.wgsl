struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: array<u32, 26> = array<u32, 26>(1u, 0u, 4294967295u, 13524u, 1u, 45661u, 17730u, 1u, 54664u, 4294967295u, 1u, 52846u, 0u, 85929u, 20890u, 4294967295u, 0u, 4294967295u, 97436u, 35820u, 0u, 56809u, 1015u, 22631u, 4294967295u, 39586u);

var<private> global2: vec2<u32>;

var<private> global3: vec2<i32>;

var<private> global4: bool = true;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>) -> f32 {
    global4 = arg_1.x;
    global2 = vec2<u32>(58722u | ~min(global1[_wgslsmith_index_u32(1u, 26u)], global2.x), ~0u);
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(640f, -933f, -303f))) * vec3<f32>(-1000f, -1277f, -743f))))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(var_0.a, vec3<f32>(-1167f, _wgslsmith_f_op_f32(var_0.a.x * -609f), _wgslsmith_f_op_f32(f32(-1f) * -1823f)))));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, 907f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.a.x)), var_0.a.x, arg_1.x)), var_0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-949f, var_0.a.x, var_0.a.x)))))));
    return 740f;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(507f, -1000f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(436f, -1521f) + vec2<f32>(-849f, 861f))), vec2<f32>(_wgslsmith_div_f32(-674f, -271f), _wgslsmith_f_op_f32(abs(-947f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1041f, -1793f) * vec2<f32>(-564f, -200f))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-962f + _wgslsmith_f_op_f32(func_3(vec2<u32>(global1[_wgslsmith_index_u32(94905u, 26u)], 13119u), vec3<bool>(arg_2.b, true, false)))), 1001f), vec2<f32>(_wgslsmith_f_op_f32(func_3(firstLeadingBit(arg_0.yx), vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.b))), -966f))), ~arg_3.x);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * var_0.b.x)), 500f);
    let var_2 = arg_3.yx;
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 132f, -518f) - vec3<f32>(1761f, 1537f, var_1.x)))) * vec3<f32>(var_0.a.x, var_1.x, _wgslsmith_div_f32(-1511f, -102f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -320f, var_1.x) - vec3<f32>(699f, -1307f, -819f))))), true)));
    var var_4 = select(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(89779u, 26u)], u_input.a, 55571u) | arg_0, ~vec3<u32>(u_input.a, 74663u, 4294967295u)), 4294967295u), 4294967295u, true);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a) - _wgslsmith_f_op_vec3_f32(-var_3.a)))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4) -> bool {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(u_input.b, -30673i), _wgslsmith_dot_vec2_i32(arg_2.e.zw, vec2<i32>(-arg_2.e.x, _wgslsmith_clamp_i32(2147483647i | arg_2.e.x, u_input.b & arg_2.a.c, _wgslsmith_div_i32(51611i, u_input.b)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1443f))), arg_1.a.zz, var_0.x);
    return any(select(vec3<bool>(false, countOneBits(-2147483647i) == -var_0.x, !arg_2.c.a.x), vec3<bool>(!any(vec4<bool>(false, false, arg_2.c.a.x, arg_2.c.b)), true, !arg_2.c.a.x), vec3<bool>(false, true, all(select(vec3<bool>(arg_2.c.b, arg_2.c.b, arg_2.c.b), vec3<bool>(arg_2.c.b, arg_2.c.a.x, arg_2.c.b), arg_2.c.a.x)))));
}

fn func_1() -> vec2<f32> {
    let var_0 = global3.x;
    global1 = array<u32, 26>();
    global4 = any(vec3<bool>(true, func_4(368f, func_2(vec3<u32>(global2.x, global1[_wgslsmith_index_u32(u_input.a, 26u)], 38262u), 10579u, Struct_3(vec2<bool>(false, true), true), vec3<i32>(global3.x, global3.x, global3.x)), Struct_4(Struct_1(vec2<f32>(136f, 974f), vec2<f32>(-1381f, -700f), -1i), 1179u, Struct_3(vec2<bool>(true, false), true), global1[_wgslsmith_index_u32(84567u, 26u)], vec4<i32>(global3.x, 33i, global3.x, u_input.b))) && true, true));
    global1 = array<u32, 26>();
    let var_1 = func_2(~(~(~(vec3<u32>(24232u, 3906u, 86186u) | vec3<u32>(global2.x, global1[_wgslsmith_index_u32(u_input.a, 26u)], 0u)))), ~(~max(~global1[_wgslsmith_index_u32(36499u, 26u)], global2.x)), Struct_3(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), reverseBits(max(firstTrailingBit(-vec3<i32>(global3.x, u_input.b, global3.x)), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b, u_input.b, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global3.x, u_input.b), vec3<i32>(73846i, 45141i, global3.x))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.a.yz, _wgslsmith_f_op_vec2_f32(var_1.a.zx - vec2<f32>(var_1.a.x, var_1.a.x)), true))))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 1u;
    var var_1 = vec4<i32>(-2147483647i, _wgslsmith_mod_i32(abs(0i), 11789i), abs(countOneBits(abs(arg_1.c << (0u % 32u)))), global3.x);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -607f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * arg_1.b.x) * -436f)))) != _wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x);
    var var_3 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(min(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)], 30263u)), ~(~vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(29812u, 26u)], 0u))), 4294967295u), 26u)], 30u)];
    var var_4 = -941f;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-536f, -898f, var_2))), _wgslsmith_f_op_f32(f32(-1f) * -348f)))), func_2(abs(_wgslsmith_div_vec3_u32(vec3<u32>(global2.x, 13295u, global2.x), vec3<u32>(1u, global1[_wgslsmith_index_u32(1u, 26u)], global2.x)) << (~vec3<u32>(4294967295u, u_input.a, 42112u) % vec3<u32>(32u))), ~var_0, Struct_3(select(arg_0.yw, !arg_0.yz, vec2<bool>(var_3.a.x, false)), !(!var_3.a.x)), vec3<i32>(_wgslsmith_add_i32(~u_input.b, 0i), -(i32(-1i) * -2147483647i), -abs(arg_1.c))).a.zx, abs(arg_1.c << (firstLeadingBit(1u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))), select(global2.x == global2.x, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1146f, 800f))), 2147483647i));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a * var_0.b), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.a * var_0.a))), -3096i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.x, -1941f))), _wgslsmith_f_op_vec2_f32(select(var_0.b, var_0.a, vec2<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(3599u, global2.x)) != _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global2.x, 26u)], u_input.a)))), _wgslsmith_sub_i32(-17214i, _wgslsmith_sub_i32(u_input.b, -64113i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(~select(vec2<u32>(53848u, global2.x), vec2<u32>(0u, global1[_wgslsmith_index_u32(76931u, 26u)]), false), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))), _wgslsmith_f_op_f32(func_3(~(vec2<u32>(1u, 0u) & vec2<u32>(global2.x, global1[_wgslsmith_index_u32(23369u, 26u)])), vec3<bool>(true, true, true))), _wgslsmith_div_f32(-201f, _wgslsmith_f_op_f32(f32(-1f) * -1214f))));
    global4 = true;
    var var_3 = global2.x;
    let var_4 = 1219f;
    let var_5 = var_1;
    let var_6 = max(~vec4<u32>(~firstLeadingBit(global2.x), global2.x, 4294967295u, u_input.a), vec4<u32>(global2.x, u_input.a, global1[_wgslsmith_index_u32(0u, 26u)], abs(_wgslsmith_sub_u32(~global2.x, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(7004u, 26u)], 26u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(19189u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.a.x - _wgslsmith_f_op_f32(-213f + var_0.b.x))), _wgslsmith_f_op_f32(var_5.b.x * var_5.a.x), all(vec4<bool>(true, true, true, true)))), var_6.xwx, min(~u_input.a, 63297u));
}

