struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: vec2<bool>;

var<private> global2: bool;

var<private> global3: array<bool, 2> = array<bool, 2>(true, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    return max(vec4<i32>(1i, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(arg_0.a.x, arg_0.a.x), select(arg_0.a.x, -41909i, global1.x)), vec2<i32>(_wgslsmith_mult_i32(-37875i, u_input.a), select(u_input.c, arg_0.a.x, global3[_wgslsmith_index_u32(arg_0.b, 2u)]))), abs((u_input.b.x >> (arg_0.b % 32u)) ^ u_input.b.x)), _wgslsmith_sub_vec4_i32(reverseBits(select(~vec4<i32>(arg_0.a.x, u_input.a, 2147483647i, 0i), vec4<i32>(u_input.b.x, 38966i, 5851i, -25974i), select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(false, global3[_wgslsmith_index_u32(arg_0.b, 2u)], true, false), vec4<bool>(false, false, global1.x, false)))), (max(vec4<i32>(u_input.c, u_input.c, arg_0.a.x, -32649i), vec4<i32>(u_input.c, -2147483647i, u_input.a, 37304i)) ^ ~vec4<i32>(arg_0.a.x, -28801i, 1863i, u_input.c)) ^ vec4<i32>(1i, min(u_input.a, -1i), ~arg_0.a.x, select(1i, u_input.c, global3[_wgslsmith_index_u32(1u, 2u)]))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_vec4_i32(firstLeadingBit(func_3(Struct_2(vec3<i32>(2147483647i, arg_0.x, 29370i), min(arg_2.b, arg_1.x)))), func_3(Struct_2(arg_2.a, 1u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1363f - -1857f)) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1632f, -1481f)) - -399f))));
    var var_2 = 1000f;
    return select(vec3<bool>(all(select(vec2<bool>(global1.x, false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(arg_1.x, 0u, 9207u)), 26u)], !arg_3)), true, false), !select(vec3<bool>(true, false, 402f < var_1.x), vec3<bool>(all(vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(arg_1.x, 2u)])), false, true), select(1706f == var_1.x, false, false)), _wgslsmith_clamp_i32(select(-1392i, _wgslsmith_mult_i32(arg_2.a.x, arg_0.x), !arg_3), 2147483647i, -arg_2.a.x) > ~u_input.c);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: f32) -> f32 {
    global0 = array<vec2<bool>, 26>();
    var var_0 = _wgslsmith_div_i32(_wgslsmith_div_i32(1i, u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, func_3(Struct_2(vec3<i32>(-1i, 11616i, u_input.c), arg_2.x)).x), select(vec2<i32>(u_input.a, -u_input.a), u_input.b.zx, !(arg_1.x & false))));
    let var_1 = Struct_1(select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(global1.x, false, global1.x, true), false)), select(vec4<bool>(true, select(global1.x, global3[_wgslsmith_index_u32(14455u, 2u)], true), true, true), select(select(vec4<bool>(global3[_wgslsmith_index_u32(arg_2.x, 2u)], global1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(false, arg_1.x, global3[_wgslsmith_index_u32(0u, 2u)], global1.x)), select(vec4<bool>(global1.x, arg_1.x, global1.x, true), vec4<bool>(global1.x, arg_1.x, true, true), vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(2086u, 2u)])), vec4<bool>(true, global1.x, true, false)), !select(vec4<bool>(global3[_wgslsmith_index_u32(12522u, 2u)], arg_1.x, false, global1.x), vec4<bool>(global3[_wgslsmith_index_u32(arg_2.x, 2u)], global3[_wgslsmith_index_u32(arg_2.x, 2u)], global1.x, global3[_wgslsmith_index_u32(1u, 2u)]), true))), arg_1.x, u_input.c);
    global3 = array<bool, 2>();
    var var_2 = Struct_2((u_input.b >> (((vec3<u32>(arg_2.x, arg_2.x, arg_2.x) & vec3<u32>(arg_2.x, 0u, 21855u)) | vec3<u32>(20695u, 1u, 0u)) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_2.x | 0u, max(arg_2.x, arg_2.x)), ~(~vec3<u32>(arg_2.x, 54385u, arg_2.x))) % vec3<u32>(32u)), arg_2.x);
    return arg_0.x;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = u_input.b.yz;
    var var_1 = Struct_2(vec3<i32>(1i, 0i, var_0.x), 7328u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -667f), _wgslsmith_f_op_f32(127f + _wgslsmith_f_op_f32(step(-274f, 232f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1500f)))), select(select(func_2(u_input.b.zy, vec3<u32>(1u, 77538u, 1u), Struct_2(u_input.b, var_1.b), global1.x), select(vec3<bool>(true, global1.x, false), vec3<bool>(false, false, false), vec3<bool>(global3[_wgslsmith_index_u32(var_1.b, 2u)], true, global3[_wgslsmith_index_u32(var_1.b, 2u)])), !vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 2u)], global1.x)), func_2(abs(vec2<i32>(-40959i, -66036i)), vec3<u32>(1u, 1u, 1u), Struct_2(u_input.b, 18111u), true), true & (var_1.b == 4294967295u)), firstTrailingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.b, 49051u), vec2<u32>(1u, 30685u))), arg_0.x)));
    var var_3 = select(reverseBits(abs(~(~vec4<u32>(7388u, 0u, 1u, var_1.b)))), max(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.b, var_1.b, var_1.b), ~vec4<u32>(var_1.b, 1u, var_1.b, 1u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(64898u, var_1.b, 0u, 1u) | vec4<u32>(var_1.b, var_1.b, var_1.b, 6973u), reverseBits(vec4<u32>(0u, 77637u, 53484u, var_1.b)) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, var_1.b, var_1.b), vec4<u32>(4457u, 75689u, var_1.b, var_1.b)), ~countOneBits(vec4<u32>(17484u, 4294967295u, var_1.b, var_1.b)))), select(!(!vec4<bool>(true, false, global3[_wgslsmith_index_u32(var_1.b, 2u)], global3[_wgslsmith_index_u32(75077u, 2u)])), select(!(!vec4<bool>(global1.x, global1.x, global1.x, true)), vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 2u)], true, !global3[_wgslsmith_index_u32(1u, 2u)]), global1.x), global1.x));
    let var_4 = Struct_2(-u_input.b, min(1u, 52604u));
    return Struct_1(vec4<bool>(all(select(select(vec4<bool>(true, global1.x, global3[_wgslsmith_index_u32(var_4.b, 2u)], true), vec4<bool>(false, false, global1.x, global1.x), global1.x), vec4<bool>(false, true, global1.x, global3[_wgslsmith_index_u32(7859u, 2u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(20988u, 2u)], true, global1.x, false), vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 2u)], global1.x, global1.x), global3[_wgslsmith_index_u32(4294967295u, 2u)]))), false, !(global1.x | true) | true, !global3[_wgslsmith_index_u32(24276u, 2u)]), func_2(var_1.a.zx, vec3<u32>(~var_1.b, 1u, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_3.x, var_3.x), ~var_1.b)), var_4, all(!(!vec4<bool>(global3[_wgslsmith_index_u32(7996u, 2u)], global1.x, global3[_wgslsmith_index_u32(var_1.b, 2u)], false)))).x, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(-805f, -1000f))))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -205f))), 1440f)));
    let var_1 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(~12869u, ~43476u, 40548u, ~4294967295u)), ~(~(~vec4<u32>(58882u, 1u, 6043u, 67601u)) << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(31216u, 1u), vec2<u32>(60166u, 72343u)), _wgslsmith_mod_u32(6793u, 1u), reverseBits(1u), ~4294967295u) % vec4<u32>(32u))));
    global3 = array<bool, 2>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-498f)) * _wgslsmith_f_op_f32(1408f + 740f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-158f))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1077f - 874f))))));
    var var_3 = 1000f;
    var var_4 = Struct_2(u_input.b, 28907u | _wgslsmith_dot_vec4_u32(min(~vec4<u32>(1u, var_1.x, 86782u, var_1.x), ~var_1), var_1 << (vec4<u32>(var_1.x, 1u, var_1.x, 0u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-332f, ~_wgslsmith_sub_vec2_u32(vec2<u32>(~9906u, firstLeadingBit(var_4.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(30617u, var_4.b) | var_1.wy, _wgslsmith_mult_vec2_u32(var_1.xx, var_1.yx), select(var_1.wx, var_1.yx, global1.x))), select(~reverseBits(vec4<i32>(var_0.c, u_input.a, -15862i, u_input.b.x) | vec4<i32>(75705i, 2147483647i, 2147483647i, 626i)), vec4<i32>(0i, ~_wgslsmith_add_i32(-71287i, -59945i), -10968i, var_4.a.x), select(!(!var_0.a), select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 2u)], var_0.b, false, false), !var_0.a, select(var_0.a, var_0.a, true)), true)), -550f);
}

