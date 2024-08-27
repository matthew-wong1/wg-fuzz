struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 10291u, 4294967295u, 1u);

var<private> global1: array<i32, 19> = array<i32, 19>(1050i, 34303i, 2147483647i, i32(-2147483648), 9018i, i32(-2147483648), 1i, 1i, 47541i, 2147483647i, 6096i, 27807i, 11423i, -57902i, -33034i, -1i, 48036i, -26234i, -1i);

var<private> global2: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global3: Struct_3;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    global1 = array<i32, 19>();
    global0 = abs(~u_input.a);
    var var_0 = global3.b.d.a;
    let var_1 = global3.b;
    global3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.a.x)) + _wgslsmith_f_op_f32(min(global3.a.x, arg_0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -514f))), any(!vec4<bool>(arg_1.c.x, var_1.a, var_0.x, true))))), global3.b, reverseBits(firstLeadingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(global3.c.x, 4294967295u), ~global3.c))), Struct_1(arg_1.a, max(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(33117i, global3.b.c, arg_1.b, arg_1.b), vec4<i32>(0i, global3.d.d, -374i, var_1.d.b)), var_1.c), select(var_1.d.d, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.a.x, 1u), vec3<u32>(19710u, global0.x, global0.x)), 19u)], arg_0.x > 114f)), !vec3<bool>(all(arg_1.a), global3.d.a.x, false && arg_1.c.x), -2147483647i), vec3<i32>(firstTrailingBit(max(38197i, -8736i)), -max(global3.b.c, -2297i) ^ ~12923i, var_1.d.b));
    return _wgslsmith_dot_vec3_u32(u_input.a.yyw, vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(select(4294967295u, 23726u, var_0.x), global0.x >> (global0.x % 32u))), countOneBits(u_input.a.x | ~u_input.a.x), max(u_input.a.x, 0u)));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> i32 {
    global0 = vec4<u32>(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1388f, 101f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, global3.a.x, global3.a.x) + vec3<f32>(-612f, global3.a.x, 609f)))), global3.b.d), reverseBits(global0.x), reverseBits(1u), firstTrailingBit(0u) ^ _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(~arg_0, 79167u << (0u % 32u))));
    var var_0 = _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_add_u32(4294967295u, firstLeadingBit(arg_0)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a))), Struct_2(!(false != !global3.d.a.x), !(!global3.d.c), firstLeadingBit(global1[_wgslsmith_index_u32(arg_0, 19u)]), global3.b.d), reverseBits(u_input.a.wy), global3.b.d, vec3<i32>(~firstLeadingBit(-global1[_wgslsmith_index_u32(arg_0, 19u)]), _wgslsmith_div_i32(-1i, _wgslsmith_div_i32(89753i, global3.d.b) & select(global3.d.b, -2147483647i, false)), ~(-firstTrailingBit(global3.b.c))));
    global1 = array<i32, 19>();
    let var_2 = 0u;
    return reverseBits(select(~global1[_wgslsmith_index_u32(global0.x, 19u)], arg_1.x, all(var_1.d.c))) ^ max(min(firstTrailingBit(global3.e.x), global3.d.b), -1i | _wgslsmith_dot_vec3_i32(global3.e << (vec3<u32>(var_2, 4294967295u, global0.x) % vec3<u32>(32u)), global3.e | global3.e));
}

fn func_1() -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 19u)];
    let var_1 = _wgslsmith_mult_i32(~27760i, -1i);
    var var_2 = _wgslsmith_add_vec3_i32(-(~vec3<i32>(-66699i, firstLeadingBit(0i), func_2(56957u, global3.e.xz))), ~vec3<i32>(var_1, select(global1[_wgslsmith_index_u32(global0.x | u_input.a.x, 19u)], ~global3.d.b, any(vec3<bool>(global3.d.a.x, global3.b.d.a.x, global3.d.c.x))), _wgslsmith_clamp_i32(var_1, global3.b.d.b, reverseBits(2147483647i))));
    global0 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, _wgslsmith_f_op_f32(866f - global3.a.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.a.x, 722f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1083f, global3.a.x), global3.a, false)) - global3.a)))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, var_3.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1291f, 2006f))))))), global3.b, _wgslsmith_sub_vec2_u32(max(global3.c, _wgslsmith_clamp_vec2_u32(vec2<u32>(20593u, u_input.a.x), global0.zw, global0.wy) >> (~u_input.a.zy % vec2<u32>(32u))), vec2<u32>(~u_input.a.x, u_input.a.x) & min(_wgslsmith_div_vec2_u32(global0.yx, vec2<u32>(31349u, 63413u)), u_input.a.yx >> (vec2<u32>(37836u, 4294967295u) % vec2<u32>(32u)))), Struct_1(global3.b.b, -countOneBits(30455i), !global3.b.d.c, -1i), global3.e);
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> vec2<bool> {
    global0 = countOneBits(abs(~(~min(vec4<u32>(29753u, 1u, 62143u, global3.c.x), vec4<u32>(0u, 59204u, 4294967295u, u_input.a.x)))));
    let var_0 = global3.d.a.x;
    global1 = array<i32, 19>();
    var var_1 = global3.b;
    var var_2 = vec4<i32>(var_1.c, countOneBits(global1[_wgslsmith_index_u32(~(19759u | u_input.a.x), 19u)]), func_2(~_wgslsmith_dot_vec3_u32(u_input.a.xyw, vec3<u32>(30916u, global3.c.x, global3.c.x)), vec2<i32>(-1i) * -vec2<i32>(global3.b.c, -3209i)), countOneBits(_wgslsmith_div_i32(-17172i, -23195i) << (reverseBits(global0.x) % 32u))) >> (u_input.a % vec4<u32>(32u));
    return vec2<bool>(select(select(all(select(vec4<bool>(true, global3.b.a, true, global3.b.a), vec4<bool>(true, true, false, global3.b.a), vec4<bool>(arg_0.d.a.x, var_1.a, false, global3.b.d.a.x))), (i32(-1i) * -2147483647i) <= _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(global0.x, 19u)], -23354i), true), false, any(select(vec4<bool>(true, true, arg_0.b.d.a.x, true), select(vec4<bool>(arg_0.d.c.x, global3.d.c.x, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, arg_0.b.a, arg_0.b.a, false)))), !(!global3.d.a.x));
}

fn func_5(arg_0: i32, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = select(select(!vec4<bool>(any(global3.d.a), any(vec3<bool>(false, arg_1.x, global3.b.b.x)), true, any(vec2<bool>(global3.d.c.x, false))), select(!(!vec4<bool>(true, arg_1.x, global3.b.a, false)), vec4<bool>(arg_1.x, true, global3.b.d.a.x, !global3.d.c.x), !vec4<bool>(global3.d.a.x, global3.b.d.a.x, global3.b.a, true)), global3.d.a.x), !vec4<bool>(all(global3.b.d.c), (u_input.a.x >> (60372u % 32u)) < (global0.x << (u_input.a.x % 32u)), global3.d.c.x, global3.b.b.x), global3.d.c.x);
    global0 = firstTrailingBit(abs(~countOneBits(vec4<u32>(u_input.a.x, 20132u, global0.x, u_input.a.x)))) | u_input.a;
    let var_1 = _wgslsmith_f_op_f32(step(global3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -959f))) > _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(705f, 492f)))), _wgslsmith_f_op_f32(-global3.a.x), global3.d.a.x));
    global1 = array<i32, 19>();
    let var_2 = vec4<f32>(426f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-141f, global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(453f))), true)) * _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(-global3.a.x), -1000f);
    return Struct_2(true, !vec3<bool>(arg_1.x, false, all(!vec4<bool>(var_0.x, false, var_1, false))), arg_0, Struct_1(!select(!global3.d.c, select(vec3<bool>(arg_1.x, var_1, arg_1.x), global3.d.a, false), vec3<bool>(true, var_1, true)), -53781i, vec3<bool>(var_1, false, any(!vec4<bool>(true, var_0.x, var_1, true))), 57590i | (~arg_0 | -21134i)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(global3.a, func_5(-2147483647i, select(func_4(func_1(), global3.b.c), !func_4(Struct_3(vec2<f32>(global3.a.x, -1011f), global3.b, vec2<u32>(1u, u_input.a.x), Struct_1(global3.b.d.c, 2147483647i, global3.d.c, 1i), vec3<i32>(global3.e.x, 2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 19u)])), global1[_wgslsmith_index_u32(global3.c.x, 19u)]), vec2<bool>(false, select(false, global3.d.a.x, true)))), global0.zz, func_1().d, abs(vec3<i32>(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, u_input.a.x), 19u)], global3.d.d, 1i)));
    global2 = array<vec2<bool>, 21>();
    var var_0 = func_1();
    var var_1 = Struct_2(false, select(!var_0.b.b, !(!(!global3.d.a)), func_1().b.b), firstLeadingBit(global3.b.c), Struct_1(vec3<bool>(all(!vec2<bool>(var_0.d.c.x, false)), var_0.b.d.a.x, global3.b.d.a.x), -global3.d.b, !select(vec3<bool>(true, true, var_0.d.a.x), global3.b.d.c, true), -(~global1[_wgslsmith_index_u32(u_input.a.x ^ 0u, 19u)])));
    var var_2 = Struct_3(var_0.a, func_5(-var_0.b.c & max(select(-26991i, 2147483647i, var_0.d.c.x), _wgslsmith_mod_i32(var_0.d.b, 2147483647i)), global2[_wgslsmith_index_u32(0u, 21u)]), ~(~u_input.a.xw) >> (u_input.a.wx % vec2<u32>(32u)), var_1.d, vec3<i32>(abs(select(-2147483647i, _wgslsmith_div_i32(-16383i, 5655i), !global3.b.d.c.x)), ~firstTrailingBit(1i), 1i));
    var_0 = func_1();
    global3 = Struct_3(var_0.a, var_2.b, ~(~countOneBits(_wgslsmith_mult_vec2_u32(var_2.c, var_2.c))), func_1().b.d, abs(firstTrailingBit(var_0.e) >> (global0.wzy % vec3<u32>(32u))));
    var var_3 = -var_1.d.b ^ _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.d.d, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.e.x, global3.b.c, var_0.b.c, 64306i), vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], -3634i, -20585i))), min(-vec2<i32>(-1i, var_0.e.x), firstLeadingBit(vec2<i32>(57936i, -24458i)))), var_2.e.zy);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.e.xy, -2147483647i, u_input.a.xxx, _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.x, (u_input.a.x << (1u % 32u)) << (func_3(vec3<f32>(var_2.a.x, var_0.a.x, var_0.a.x), Struct_1(vec3<bool>(var_0.d.a.x, false, false), 0i, vec3<bool>(false, false, global3.b.b.x), global1[_wgslsmith_index_u32(47031u, 19u)])) % 32u), _wgslsmith_sub_u32(global0.x, 46958u), ~_wgslsmith_div_u32(12011u, var_2.c.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(81789u, 58131u, u_input.a.x, u_input.a.x), ~u_input.a), 1u, ~(~u_input.a.x), global0.x)), max(~vec4<i32>(var_1.c, global1[_wgslsmith_index_u32(var_0.c.x, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], -25361i) | max(-vec4<i32>(var_2.b.d.d, -5304i, var_1.d.b, global1[_wgslsmith_index_u32(29341u, 19u)]), max(vec4<i32>(2147483647i, var_2.e.x, var_0.d.b, var_1.c), vec4<i32>(2147483647i, 1i, var_2.e.x, 2147483647i))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_1.d.d, var_0.b.c, 59264i, -25226i) | ~vec4<i32>(global3.d.d, 33371i, global1[_wgslsmith_index_u32(var_0.c.x, 19u)], var_0.e.x), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-4187i, global3.e.x, global3.d.b, -5380i), vec4<i32>(var_2.b.c, var_0.b.c, -2147483647i, var_2.d.b))), vec4<i32>(reverseBits(60448i), _wgslsmith_sub_i32(var_1.c, -20161i), 0i | var_2.e.x, -32389i))));
}

