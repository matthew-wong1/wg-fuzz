struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(1045f, 867f, -1944f, 1084f, -1242f, 600f, -141f, -1513f, -255f, 852f, 1289f, -1255f, 322f, 294f);

var<private> global1: array<f32, 11> = array<f32, 11>(-275f, 1831f, 698f, 981f, -1000f, 1148f, -419f, 341f, -215f, -539f, -279f);

var<private> global2: vec3<bool>;

var<private> global3: array<i32, 9>;

var<private> global4: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-875f, global1[_wgslsmith_index_u32(~u_input.b, 11u)]) * arg_1.a.a) * _wgslsmith_f_op_f32(min(arg_1.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-340f))))))));
    let var_1 = u_input.e;
    global1 = array<f32, 11>();
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    return vec3<bool>(!(!arg_0.x), global2.x, any(vec4<bool>(true, all(!vec4<bool>(arg_1.a.d.x, global2.x, arg_1.a.c, false)), true, global2.x)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_5) -> Struct_1 {
    global4 = global2.x;
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(firstTrailingBit(~u_input.a)), _wgslsmith_mod_u32(~11975u, u_input.a), arg_1.a.e), _wgslsmith_mod_vec3_u32(arg_3.a.zxy, arg_3.a.yyz & abs(abs(arg_3.a.zxz))), _wgslsmith_mult_vec3_u32(arg_3.a.wzz, vec3<u32>(arg_3.a.x, 0u, 42710u)));
    var var_1 = u_input.b;
    global0 = array<f32, 14>();
    let var_2 = !vec4<bool>(any(select(func_2(arg_2.c, arg_1), arg_2.b.d, arg_2.b.d)), countOneBits(-1i) == _wgslsmith_add_i32(~1702i, reverseBits(arg_0.x)), select((1i << (u_input.b % 32u)) > -arg_0.x, false, true), arg_2.b.d.x);
    return arg_2.b;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.a))), global1[_wgslsmith_index_u32(arg_0.a.e, 11u)])))) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~abs(u_input.a)), 14u)]));
    let var_1 = max(~vec4<u32>(_wgslsmith_clamp_u32(~arg_0.a.e, 6673u, 4294967295u), _wgslsmith_mod_u32(arg_0.a.e, _wgslsmith_dot_vec2_u32(u_input.e, u_input.e)), select(u_input.a, 0u, arg_0.a.c) | ~4294967295u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.a.e, arg_0.a.e, arg_0.a.e)), reverseBits(vec3<u32>(u_input.a, 1u, arg_0.a.e)))), vec4<u32>(u_input.e.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(reverseBits(4915u), arg_0.a.e), 48143u), reverseBits(firstLeadingBit(~12694u)), _wgslsmith_dot_vec2_u32(u_input.e, _wgslsmith_clamp_vec2_u32(u_input.e, vec2<u32>(4294967295u, arg_0.a.e), ~u_input.e))));
    let var_2 = Struct_2(!all(func_2(vec3<bool>(global2.x, arg_0.a.d.x, false), arg_0).yz), arg_0.a, !(!arg_0.a.d), -2147483647i);
    var var_3 = Struct_3(arg_0.a);
    let var_4 = !(!vec4<bool>(!(!global2.x), true, func_1(-vec2<i32>(u_input.c.x, 0i), Struct_3(arg_0.a), Struct_2(false, var_2.b, vec3<bool>(var_3.a.d.x, var_2.a, false), -2308i), Struct_5(var_1)).b, false));
    return Struct_3(Struct_1(var_3.a.a, arg_0.a.d.x, var_3.a.d.x, func_1(-_wgslsmith_div_vec2_i32(arg_1.yx, vec2<i32>(u_input.c.x, u_input.c.x)), arg_0, var_2, Struct_5(vec4<u32>(4294967295u, 49177u, 4294967295u, 0u))).d, reverseBits(~(~86523u))));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> Struct_5 {
    var var_0 = u_input.c;
    var var_1 = reverseBits(arg_0.d.x);
    let var_2 = 1u;
    let var_3 = func_3(func_3(func_3(arg_0.a, vec3<i32>(global3[_wgslsmith_index_u32(func_3(arg_0.a, vec3<i32>(-2147483647i, 29810i, 17441i), -2064f).a.e, 9u)], select(var_0.x, 3414i, true), -u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 14u)]) + global1[_wgslsmith_index_u32(var_2, 11u)])), reverseBits(vec3<i32>(23407i, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(16944i, var_0.x, var_0.x)), u_input.c.x)), -1473f), -reverseBits(~_wgslsmith_div_vec3_i32(arg_0.d, vec3<i32>(global3[_wgslsmith_index_u32(21200u, 9u)], 2147483647i, -1i))), 1254f);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))), 773f)), true, false, !func_3(func_3(func_3(var_3, u_input.c, var_3.a.a), _wgslsmith_mod_vec3_i32(arg_0.d, vec3<i32>(u_input.c.x, 5197i, -49028i)), 133f), u_input.c, _wgslsmith_f_op_f32(min(-914f, -855f))).a.d, var_3.a.e);
    return Struct_5(max(vec4<u32>(22884u, 1u | _wgslsmith_add_u32(86106u, arg_0.e), abs(_wgslsmith_mod_u32(var_3.a.e, arg_0.e)), u_input.e.x ^ 1u), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.b.b.e, u_input.b, 10551u, var_4.e), vec4<u32>(arg_0.e << (var_2 % 32u), max(4294967295u, 4294967295u), 44827u, ~u_input.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-100f, global1[_wgslsmith_index_u32(1u, 11u)]), vec2<f32>(-404f, global0[_wgslsmith_index_u32(u_input.b, 14u)]), global2.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1319f, -1318f) + vec2<f32>(global1[_wgslsmith_index_u32(77964u, 11u)], 1442f)))))));
    var var_1 = vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a) | vec4<u32>(~u_input.b, 32667u, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(46493u, 37164u)), u_input.a, 1u), 1u);
    var var_2 = func_4(Struct_4(func_3(Struct_3(func_1(u_input.c.xz, Struct_3(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 11u)], global2.x, global2.x, vec3<bool>(global2.x, global2.x, global2.x), 4294967295u)), Struct_2(true, Struct_1(global0[_wgslsmith_index_u32(0u, 14u)], true, false, vec3<bool>(global2.x, true, global2.x), 29271u), vec3<bool>(false, global2.x, false), 16561i), Struct_5(vec4<u32>(0u, u_input.a, u_input.e.x, 1u)))), u_input.c, -345f), Struct_2(!global2.x, func_3(Struct_3(Struct_1(global1[_wgslsmith_index_u32(0u, 11u)], false, global2.x, vec3<bool>(true, global2.x, true), var_1.x)), vec3<i32>(global3[_wgslsmith_index_u32(0u, 9u)], 0i, u_input.c.x) >> (vec3<u32>(26273u, u_input.b, 0u) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(u_input.d | u_input.a, 14u)]).a, func_3(Struct_3(Struct_1(var_0.x, global2.x, global2.x, vec3<bool>(global2.x, global2.x, global2.x), u_input.d)), -vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(var_1.x, 9u)], 17747i), _wgslsmith_f_op_f32(-244f + 1144f)).a.d, firstTrailingBit(2147483647i) ^ global3[_wgslsmith_index_u32(~4294967295u, 9u)]), -379f, u_input.c, u_input.b), 702f);
    let var_3 = 1u;
    var var_4 = func_4(Struct_4(Struct_3(func_3(func_3(Struct_3(Struct_1(-942f, global2.x, global2.x, vec3<bool>(false, true, global2.x), 0u)), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(3795u, 9u)], global3[_wgslsmith_index_u32(49449u, 9u)]), var_0.x), countOneBits(u_input.c), _wgslsmith_div_f32(-398f, -954f)).a), Struct_2((global2.x || global2.x) && !global2.x, Struct_1(global1[_wgslsmith_index_u32(var_3 << (12223u % 32u), 11u)], global2.x, func_3(Struct_3(Struct_1(898f, global2.x, false, vec3<bool>(true, true, true), var_3)), vec3<i32>(-1i, u_input.c.x, -22431i), -1116f).a.c, func_2(vec3<bool>(global2.x, true, global2.x), Struct_3(Struct_1(-1261f, global2.x, true, vec3<bool>(false, global2.x, true), var_1.x))), var_3), func_3(func_3(Struct_3(Struct_1(-624f, global2.x, true, vec3<bool>(false, false, false), u_input.d)), vec3<i32>(global3[_wgslsmith_index_u32(35125u, 9u)], 20466i, global3[_wgslsmith_index_u32(var_3, 9u)]), global0[_wgslsmith_index_u32(58206u, 14u)]), -vec3<i32>(u_input.c.x, 1i, u_input.c.x), -1134f).a.d, u_input.c.x), -301f, ~u_input.c, var_1.x), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 11u)])));
    var var_5 = func_4(Struct_4(Struct_3(Struct_1(-1066f, global2.x, global2.x, !vec3<bool>(false, global2.x, false), ~1u)), Struct_2(any(vec2<bool>(global2.x, global2.x)), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1u), 14u)], !global2.x, true, vec3<bool>(false, global2.x, false), ~78951u), !func_2(vec3<bool>(false, global2.x, true), Struct_3(Struct_1(global1[_wgslsmith_index_u32(var_3, 11u)], false, false, vec3<bool>(global2.x, true, global2.x), u_input.e.x))), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(0u, 9u)], firstTrailingBit(1i))), -145f, ~u_input.c ^ (u_input.c | max(u_input.c, vec3<i32>(u_input.c.x, 11601i, 385i))), _wgslsmith_sub_u32(~(~16330u), var_4.a.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(var_2.a.wz), ~var_4.a.yy), 11u)]);
    var_4 = func_4(Struct_4(func_3(Struct_3(Struct_1(-138f, global2.x, global2.x, vec3<bool>(false, global2.x, true), var_2.a.x)), reverseBits(~vec3<i32>(33374i, 2147483647i, -10954i)), func_3(Struct_3(Struct_1(-4973f, global2.x, true, vec3<bool>(false, global2.x, true), 4294967295u)), select(u_input.c, u_input.c, true), -1000f).a.a), Struct_2(global2.x | global2.x, func_1(vec2<i32>(14619i, global3[_wgslsmith_index_u32(var_1.x, 9u)]), func_3(Struct_3(Struct_1(642f, global2.x, true, vec3<bool>(false, global2.x, global2.x), 16291u)), vec3<i32>(64820i, -1i, global3[_wgslsmith_index_u32(var_3, 9u)]), global0[_wgslsmith_index_u32(0u, 14u)]), Struct_2(true, Struct_1(647f, true, true, vec3<bool>(true, global2.x, true), u_input.a), vec3<bool>(global2.x, global2.x, global2.x), -55746i), Struct_5(vec4<u32>(u_input.b, var_5.a.x, var_2.a.x, 8514u))), !func_2(vec3<bool>(global2.x, false, global2.x), Struct_3(Struct_1(global0[_wgslsmith_index_u32(22173u, 14u)], global2.x, true, vec3<bool>(true, true, global2.x), 0u))), i32(-1i) * -16418i), _wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_mult_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(~0u, 9u)], 37579i, 2147483647i), vec3<i32>(~u_input.c.x, u_input.c.x, -u_input.c.x)), var_4.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(906f, global2.x, global2.x, vec3<bool>(global2.x, false, global2.x), 53644u)), -vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 9u)], -8600i, -2439i), _wgslsmith_f_op_f32(-1077f - global0[_wgslsmith_index_u32(4294967295u, 14u)])).a.a * global1[_wgslsmith_index_u32(7476u, 11u)]) + func_3(func_3(func_3(Struct_3(Struct_1(var_0.x, false, global2.x, vec3<bool>(global2.x, global2.x, false), 4294967295u)), vec3<i32>(-2147483647i, 13451i, 19452i), -1345f), vec3<i32>(u_input.c.x, -2728i, u_input.c.x), 1000f), ~u_input.c, global0[_wgslsmith_index_u32(var_1.x, 14u)]).a.a));
    global1 = array<f32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mod_u32(4294967295u, ~74228u), var_5.a.x, var_5.a.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.e, _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_2.a.x), vec2<u32>(52336u, var_5.a.x))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global3[_wgslsmith_index_u32(var_3, 9u)], global3[_wgslsmith_index_u32(var_3, 9u)], global3[_wgslsmith_index_u32(var_3, 9u)], 1i), -firstLeadingBit(vec4<i32>(1i, global3[_wgslsmith_index_u32(var_5.a.x, 9u)], 0i, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(12463u, 9u)], global3[_wgslsmith_index_u32(var_2.a.x, 9u)], 27275i, global3[_wgslsmith_index_u32(var_2.a.x, 9u)]), firstLeadingBit(vec4<i32>(32483i, u_input.c.x, 18070i, global3[_wgslsmith_index_u32(4294967295u, 9u)])))) | _wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -2147483647i, global3[_wgslsmith_index_u32(var_3, 9u)], global3[_wgslsmith_index_u32(40443u, 9u)]), vec4<i32>(global3[_wgslsmith_index_u32(14689u, 9u)], -2147483647i, -2147483647i, 1i)), -(~vec4<i32>(u_input.c.x, 38938i, -2147483647i, 13327i))), var_0, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~25633u, 11u)]))))));
}

