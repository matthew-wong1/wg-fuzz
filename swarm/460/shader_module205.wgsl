struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(1000f, 351f, -1089f), vec2<f32>(1464f, -266f), vec4<f32>(214f, -453f, 492f, 702f));

var<private> global1: array<i32, 26> = array<i32, 26>(2147483647i, 41265i, i32(-2147483648), -1i, 22670i, -1i, -1i, 2147483647i, i32(-2147483648), i32(-2147483648), -1i, 0i, 91607i, -59406i, 2147483647i, 10277i, i32(-2147483648), 2147483647i, 53066i, 0i, 1i, 1i, -10712i, i32(-2147483648), -20772i, -60065i);

var<private> global2: array<i32, 16>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: u32) -> vec4<i32> {
    global2 = array<i32, 16>();
    global0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * -682f))), _wgslsmith_f_op_f32(max(-1151f, 1656f)), _wgslsmith_f_op_f32(min(-1070f, 1254f))), global0.a.xx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.a.x)), _wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_div_f32(343f, 200f), _wgslsmith_f_op_f32(arg_2.a.x - -226f)) + global0.c) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a.x + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1712f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) + _wgslsmith_f_op_f32(1182f + global0.b.x)), 387f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * arg_2.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -1471f)))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + -955f)) < arg_2.c.x;
    global0 = arg_2;
    let var_1 = true;
    return vec4<i32>(_wgslsmith_mult_i32(28164i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-26963i, arg_1.x, global1[_wgslsmith_index_u32(20292u, 26u)], 0i)), vec4<i32>(global1[_wgslsmith_index_u32(arg_3, 26u)], 2147483647i, 2147483647i, -95860i))) ^ -reverseBits(select(8110i, u_input.a.x, true)), -3842i, 11950i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_mult_i32(arg_1.x, 2147483647i), -2147483647i ^ _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(arg_3, 16u)], u_input.a.x), -20096i), abs(vec4<i32>(-arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, global2[_wgslsmith_index_u32(35475u, 16u)], arg_1.x), vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(34286u, 26u)], 2147483647i, 0i)), ~global1[_wgslsmith_index_u32(arg_3, 26u)], -27639i))));
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(global0.c.wwz)), _wgslsmith_f_op_vec2_f32(-global0.c.zw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(global0.c)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, 2216f, global0.a.x, -2311f) - vec4<f32>(global0.b.x, global0.b.x, 1773f, global0.c.x)))))));
    let var_1 = global0.a.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -774f) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(global0.c.x))));
    let var_3 = Struct_3(arg_0.x, false, vec3<bool>(all(vec3<bool>(any(vec3<bool>(true, false, false)), true, false)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)))), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.c.wzx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(-454f, 1469f, var_0.a.x))))) - vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1740f), var_0.c.x)));
    return arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_3 {
    global1 = array<i32, 26>();
    var var_0 = 61766i;
    let var_1 = _wgslsmith_f_op_f32(-global0.a.x);
    var var_2 = -_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(func_2(true, vec2<i32>(1i, u_input.a.x), Struct_2(global0.c.xzy, vec2<f32>(global0.a.x, -171f), vec4<f32>(var_1, var_1, 2717f, -822f)), arg_2.x), -vec4<i32>(25986i, 1i, -2147483647i, 0i)), -select(vec4<i32>(1i, -23337i, 0i, u_input.a.x), vec4<i32>(0i, 33851i, u_input.a.x, u_input.a.x), vec4<bool>(arg_3.c.x, arg_0.b, arg_0.c.x, arg_3.c.x))) >> (func_3(~(~max(vec4<u32>(99088u, arg_0.a, 21809u, 94451u), vec4<u32>(1u, 1u, arg_2.x, arg_0.a)))) % vec4<u32>(32u));
    let var_3 = Struct_3(abs(_wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_sub_u32(0u, arg_1)))), !all(!(!vec4<bool>(arg_3.c.x, arg_0.c.x, false, false))), vec3<bool>(!arg_0.b, true, !arg_0.b));
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_2;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(global0.c.yyx))))));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -617f), _wgslsmith_div_f32(var_1.a.x, 240f), _wgslsmith_f_op_f32(min(328f, _wgslsmith_f_op_f32(-1405f - -775f)))));
    var var_3 = func_1(func_1(arg_2, ~func_1(Struct_3(1u, var_0.c.x, vec3<bool>(false, true, false)), 82345u, ~vec3<u32>(arg_2.a, var_0.a, arg_2.a), arg_2).a, func_3(~(vec4<u32>(4294967295u, 0u, var_0.a, 1u) ^ vec4<u32>(55866u, var_0.a, 36236u, 71543u))).yzw, func_1(arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, arg_2.a, 33402u, arg_2.a), firstLeadingBit(vec4<u32>(var_0.a, 357u, 4294967295u, var_0.a))), select(vec3<u32>(19965u, 0u, var_0.a), ~vec3<u32>(0u, 55467u, var_0.a), arg_1), Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.a, 0u, 4294967295u), vec4<u32>(17518u, 0u, 37452u, arg_2.a)), global1[_wgslsmith_index_u32(arg_2.a, 26u)] < global1[_wgslsmith_index_u32(4294967295u, 26u)], vec3<bool>(false, true, arg_2.c.x)))), 41385u, ~(~_wgslsmith_add_vec3_u32(~vec3<u32>(arg_2.a, 4294967295u, arg_2.a), vec3<u32>(var_0.a, 12497u, 0u))), func_1(Struct_3(16533u, all(!vec4<bool>(true, arg_1, true, true)), vec3<bool>(false, true, any(vec2<bool>(false, arg_2.b)))), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(86820u, 0u), var_0.a), ~vec3<u32>(abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(15933u, arg_2.a, 1u, arg_2.a), vec4<u32>(var_0.a, 1u, 52974u, var_0.a)), abs(arg_2.a)), Struct_3(~abs(1u), arg_1, !(!arg_2.c)))).c.yx;
    global1 = array<i32, 26>();
    return func_1(func_1(Struct_3(61739u, _wgslsmith_f_op_f32(sign(var_1.a.x)) == _wgslsmith_div_f32(global0.c.x, arg_0), arg_2.c), 0u, vec3<u32>(countOneBits(0u), var_0.a, 23209u), Struct_3(~reverseBits(34878u), _wgslsmith_f_op_f32(f32(-1f) * -503f) < _wgslsmith_f_op_f32(var_1.a.x - -1978f), arg_2.c)), arg_2.a, min(~vec3<u32>(func_3(vec4<u32>(0u, var_0.a, 85064u, var_0.a)).x, 1u, arg_2.a), vec3<u32>(countOneBits(var_0.a), 4044u, 68913u)), func_1(Struct_3(~_wgslsmith_div_u32(53434u, arg_2.a), any(vec2<bool>(true, false)), !arg_2.c), func_3(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 1u, arg_2.a, 0u), vec4<u32>(1u, 1u, var_0.a, arg_2.a)), var_0.a, abs(28537u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, 8207u), vec2<u32>(var_0.a, var_0.a)))).x, ~(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.a, 4294967295u, 3673u), vec3<u32>(34419u, var_0.a, 54664u)) | abs(vec3<u32>(32567u, 0u, 6260u))), arg_2));
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = select(select(!arg_2.c.xx, arg_2.c.yz, vec2<bool>(arg_1, all(vec4<bool>(arg_2.c.x, arg_1, arg_2.b, false)) & !arg_1)), func_1(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-386f, -1737f, false)) * _wgslsmith_f_op_f32(step(global0.a.x, global0.a.x))), !arg_2.c.x, Struct_3(~arg_2.a, !arg_1, vec3<bool>(true, false, true))), 1u ^ ~arg_2.a, (~vec3<u32>(59180u, arg_2.a, arg_2.a) & firstTrailingBit(vec3<u32>(arg_2.a, arg_2.a, arg_2.a))) >> (select(reverseBits(vec3<u32>(arg_2.a, 7524u, 4294967295u)), ~vec3<u32>(arg_2.a, arg_2.a, arg_2.a), arg_2.c) % vec3<u32>(32u)), func_4(global0.b.x, arg_1, func_4(_wgslsmith_f_op_f32(abs(-766f)), arg_1, func_4(961f, arg_2.b, arg_2)))).c.zx, vec2<bool>(any(select(arg_2.c.yz, vec2<bool>(true, true), vec2<bool>(false, false))), true));
    return !arg_2.c.xz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 26>();
    var var_0 = select(vec2<bool>(true, any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true))), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(true, true), func_5(vec4<i32>(global2[_wgslsmith_index_u32(1u, 16u)], ~(-64684i), ~7468i, -global2[_wgslsmith_index_u32(4294967295u, 16u)]), true, func_4(-1757f, true, func_1(Struct_3(18313u, true, vec3<bool>(true, false, true)), 0u, vec3<u32>(4294967295u, 24643u, 37496u), Struct_3(1u, true, vec3<bool>(true, true, true)))), vec3<i32>(-100623i, 2147483647i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(1u, 26u)], 11111i))), !(!func_5(vec4<i32>(global1[_wgslsmith_index_u32(19999u, 26u)], global2[_wgslsmith_index_u32(65440u, 16u)], global2[_wgslsmith_index_u32(53567u, 16u)], u_input.a.x), true, Struct_3(1u, false, vec3<bool>(true, true, true)), u_input.a))));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(select(global0.c.ywy, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.c.x, -674f)), vec3<f32>(-871f, -339f, global0.c.x)), all(select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, false, true), var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -37712i, _wgslsmith_sub_i32(-413i, u_input.a.x), _wgslsmith_mult_i32(select(-12252i, global2[_wgslsmith_index_u32(33912u, 16u)], var_0.x), -u_input.a.x)), vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 16u)], 1i, global1[_wgslsmith_index_u32(4294967295u, 26u)], 1i), vec4<i32>(u_input.a.x, 0i, 35198i, 2147483647i))), ~6600i, u_input.a.x ^ ~(-1i), ~60517i)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -712f), 478f));
}

