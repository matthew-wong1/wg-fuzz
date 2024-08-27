struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: vec3<i32> = vec3<i32>(51913i, 1i, -1i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = arg_0.a;
    let var_1 = Struct_3(abs(1i));
    let var_2 = arg_3;
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.b.xz));
}

fn func_3(arg_0: vec3<f32>) -> vec3<f32> {
    global0 = array<bool, 30>();
    var var_0 = Struct_4(Struct_3(~_wgslsmith_mult_i32(u_input.c, 6349i) ^ (i32(-1i) * -global1.x)));
    global0 = array<bool, 30>();
    let var_1 = Struct_2(vec2<u32>(1u, 98711u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - -287f), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), arg_0.x)))), u_input.a, vec4<i32>(~(~(global1.x ^ -2147483647i)), var_0.a.a, _wgslsmith_mod_i32(global1.x, 0i), -global1.x), Struct_1(global0[_wgslsmith_index_u32(6579u, 30u)] & global0[_wgslsmith_index_u32(60518u, 30u)], _wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 0u), abs(vec2<u32>(4294967295u, u_input.a)), vec2<u32>(32700u, u_input.a) | vec2<u32>(63993u, u_input.a))), _wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, 35493u, 0u)), vec4<u32>(~77924u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, 1131u, 0u)), 80668u, u_input.a & u_input.a))));
    var var_2 = (vec3<u32>(_wgslsmith_div_u32(u_input.a, 1u), var_1.e.d, 0u | var_1.a.x) << (~_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(11574u, u_input.a, u_input.a)), reverseBits(vec3<u32>(24939u, 4294967295u, 3999u)), vec3<u32>(u_input.a, 54421u, 4294967295u) | vec3<u32>(4294967295u, 39195u, var_1.e.d)) % vec3<u32>(32u))) ^ vec3<u32>(select(1u, 32595u, all(select(vec4<bool>(var_1.e.a, false, global0[_wgslsmith_index_u32(var_1.a.x, 30u)], false), vec4<bool>(false, var_1.e.a, var_1.e.a, true), vec4<bool>(var_1.e.a, true, global0[_wgslsmith_index_u32(var_1.c, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)])))), _wgslsmith_mult_u32(var_1.a.x, abs(u_input.a & var_1.c)), abs(var_1.e.d));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) * vec3<f32>(-321f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(-320f * var_1.e.c.x)) - _wgslsmith_f_op_f32(sign(var_1.b.x)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_4) -> Struct_3 {
    var var_0 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-477f - _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -1627f)), global0[_wgslsmith_index_u32(abs(abs(1u)), 30u)]))));
    global0 = array<bool, 30>();
    let var_1 = Struct_2(vec2<u32>(~(~(~0u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(51630u, u_input.a), vec2<u32>(66424u, u_input.a)) ^ 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -246f, 694f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1329f, 605f, 927f) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, -212f, arg_1.x), vec3<f32>(-362f, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, var_0.x, 1401f) + vec3<f32>(-453f, 1556f, 897f))) - _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 818f, 1118f)))))), u_input.a & abs(98631u), select(vec4<i32>(u_input.b, u_input.b, _wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_add_i32(17567i, -50435i)), _wgslsmith_mod_i32(global1.x, -2147483647i) & 23101i), select(vec4<i32>(select(u_input.c, 1i, true), select(-2380i, global1.x, global0[_wgslsmith_index_u32(u_input.a, 30u)]), arg_2.a.a, u_input.b << (12827u % 32u)), vec4<i32>(arg_2.a.a, -1i, 1629i, -1i) | countOneBits(vec4<i32>(-1i, arg_2.a.a, global1.x, 58814i)), !(!global0[_wgslsmith_index_u32(u_input.a, 30u)])), arg_0.x > 884f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-877f, -1592f) * -816f) >= _wgslsmith_f_op_vec2_f32(func_1(arg_2.a, reverseBits(1i), Struct_2(vec2<u32>(u_input.a, u_input.a), vec3<f32>(1228f, 1380f, arg_0.x), u_input.a, vec4<i32>(global1.x, -16639i, u_input.c, 2147483647i), Struct_1(false, 9059u, vec3<f32>(-839f, 283f, var_0.x), u_input.a)), Struct_2(vec2<u32>(4294967295u, 1u), vec3<f32>(var_0.x, arg_0.x, var_0.x), 3818u, vec4<i32>(0i, global1.x, arg_2.a.a, -12026i), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 30u)], u_input.a, vec3<f32>(530f, 1071f, var_0.x), 14717u)))).x, u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-913f, arg_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, -324f, -1000f), vec3<f32>(-152f, 1462f, arg_0.x))))), 24401u));
    var var_2 = vec3<bool>(var_1.e.a, true, true);
    var_0 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.e.c.x * var_0.x), _wgslsmith_f_op_f32(-868f + -723f)), _wgslsmith_f_op_f32(min(-1000f, 791f)), !global0[_wgslsmith_index_u32(u_input.a, 30u)] && false)) + arg_0.x));
    return arg_2.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: i32) -> f32 {
    let var_0 = Struct_2(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, max(u_input.a, 16729u)), vec2<u32>(u_input.a & u_input.a, u_input.a)), 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-365f, 1000f, _wgslsmith_f_op_f32(184f * -294f)))), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a) ^ vec2<u32>(65410u, 47783u), abs(vec2<u32>(u_input.a, u_input.a)))), vec4<i32>(-u_input.c, -2147483647i, countOneBits(_wgslsmith_add_i32(~global1.x, -arg_2)), u_input.b), Struct_1((-266f > _wgslsmith_f_op_f32(step(-1006f, 467f))) & !all(vec2<bool>(true, true)), ~countOneBits(~u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(135f, -215f, 1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-523f, 828f, 692f)) + _wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(-394f, 1642f, -144f))))), select(~u_input.a, ~15354u, !(global0[_wgslsmith_index_u32(u_input.a, 30u)] & global0[_wgslsmith_index_u32(4294967295u, 30u)]))));
    global0 = array<bool, 30>();
    var var_1 = Struct_4(Struct_3(-39963i));
    global1 = select(min(~(-vec3<i32>(-811i, var_1.a.a, 0i)), _wgslsmith_clamp_vec3_i32(var_0.d.xyx, max(_wgslsmith_sub_vec3_i32(var_0.d.wzw, vec3<i32>(-35181i, -29067i, 2147483647i)), vec3<i32>(var_1.a.a, 0i, var_0.d.x) >> (vec3<u32>(91800u, var_0.c, u_input.a) % vec3<u32>(32u))), var_0.d.wxx)), var_0.d.wwy, !arg_0.zzz);
    let var_2 = ~(-var_0.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    let var_0 = -abs(0i);
    global0 = array<bool, 30>();
    var var_1 = !(!global0[_wgslsmith_index_u32(u_input.a, 30u)]);
    global0 = array<bool, 30>();
    var var_2 = 82679u;
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_4(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(35942u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], false, global0[_wgslsmith_index_u32(u_input.a, 30u)]), global0[_wgslsmith_index_u32(14710u, 30u)]), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 30u)], false, false, global0[_wgslsmith_index_u32(u_input.a, 30u)]), all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]))), func_2(_wgslsmith_f_op_vec2_f32(func_1(Struct_3(u_input.c), global1.x, Struct_2(vec2<u32>(1u, 1u), vec3<f32>(128f, 699f, 593f), u_input.a, vec4<i32>(u_input.c, global1.x, var_0, global1.x), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 30u)], 0u, vec3<f32>(732f, 179f, 853f), 4294967295u)), Struct_2(vec2<u32>(4622u, 50678u), vec3<f32>(221f, 713f, -650f), u_input.a, vec4<i32>(var_0, var_0, -1i, 0i), Struct_1(false, u_input.a, vec3<f32>(-803f, -982f, 1152f), 4294967295u)))), vec2<f32>(-1525f, 1139f), Struct_4(Struct_3(27130i))), var_0)), -567f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~select(~vec3<u32>(u_input.a, 0u, u_input.a), countOneBits(vec3<u32>(u_input.a, u_input.a, 1u)), select(vec3<bool>(false, true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], false, true), false)), ~(vec3<u32>(4294967295u, 10582u, u_input.a) << (vec3<u32>(16710u, u_input.a, 0u) % vec3<u32>(32u))) & ~vec3<u32>(8636u, u_input.a, 1u)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-239f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(var_3.x + var_3.x))))), -(vec3<i32>(-23337i, -var_0, u_input.b) << (_wgslsmith_div_vec3_u32(vec3<u32>(46934u, 29458u, 4294967295u) >> (vec3<u32>(0u, 75294u, u_input.a) % vec3<u32>(32u)), reverseBits(vec3<u32>(4294967295u, u_input.a, 34907u))) % vec3<u32>(32u))));
}

