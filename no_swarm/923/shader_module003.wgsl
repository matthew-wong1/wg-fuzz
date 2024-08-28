struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false));

var<private> global2: vec3<f32> = vec3<f32>(-154f, -192f, -215f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<f32> {
    var var_0 = Struct_1(vec2<i32>(arg_0.a.x, ~2147483647i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), global2.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - _wgslsmith_div_f32(-140f, 242f)), _wgslsmith_div_f32(1712f, arg_0.b.x), 538f))));
    global0 = true;
    var var_1 = Struct_1(~arg_1 ^ _wgslsmith_mult_vec2_i32(-abs(arg_0.a), countOneBits(var_0.a)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(749f, arg_0.b.x, global2.x, arg_0.b.x), vec4<f32>(1124f, -326f, -207f, global2.x))) - var_0.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.x)), _wgslsmith_f_op_f32(1046f - 345f), 169f, var_0.b.x)))));
    let var_2 = !vec3<bool>(true, all(vec2<bool>(true, true)), any(select(!global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), 27u)], false)));
    var var_3 = select(u_input.a, u_input.a, true);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(exp2(var_1.b.x)), -911f, _wgslsmith_f_op_f32(round(var_1.b.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = firstTrailingBit(firstLeadingBit(u_input.a)) > _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.a, u_input.a, u_input.a))), vec3<u32>(u_input.a | 0u, ~(~u_input.a), ~(~u_input.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(Struct_1(firstTrailingBit(vec2<i32>(i32(-1i) * -54070i, arg_1.a.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1508f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - 1000f)), _wgslsmith_f_op_f32(ceil(211f)))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-2147483647i, 1i), arg_1.a.x), select(arg_1.a ^ vec2<i32>(arg_1.a.x, arg_0.a.x), firstLeadingBit(arg_0.a), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))), select(arg_1.a, arg_1.a, true))));
    let var_2 = Struct_1(vec2<i32>(2147483647i << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, 0u), 66824u, _wgslsmith_div_u32(29406u, 72026u)) % 32u), 2147483647i), vec4<f32>(_wgslsmith_f_op_f32(ceil(-944f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), -152f));
    global1 = array<vec4<bool>, 27>();
    var var_3 = global1[_wgslsmith_index_u32(u_input.a, 27u)];
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a.x, ~_wgslsmith_div_i32(0i, 53653i), _wgslsmith_mult_i32(abs(-2147483647i), _wgslsmith_sub_i32(var_2.a.x, 1i)), _wgslsmith_add_i32(~arg_0.a.x, 4357i)), firstLeadingBit(vec4<i32>(0i, var_2.a.x, -1i, 23277i)) & ~(vec4<i32>(2147483647i, -1i, arg_1.a.x, 15446i) | vec4<i32>(8946i, arg_0.a.x, 11158i, 30914i))), select(_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(arg_0.a.x), select(0i, 0i, var_3.x), arg_0.a.x, arg_1.a.x << (43406u % 32u)), _wgslsmith_div_vec4_i32(-vec4<i32>(arg_1.a.x, 2147483647i, -2147483647i, 729i), abs(vec4<i32>(arg_1.a.x, arg_0.a.x, 1i, arg_0.a.x)))), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 39805i, arg_1.a.x, var_2.a.x), -vec4<i32>(1i, -2147483647i, arg_0.a.x, -54016i)), true));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global2 = arg_1.b.wwy;
    let var_0 = countOneBits(vec4<i32>(arg_2, ~reverseBits(arg_2), arg_2, _wgslsmith_add_i32(-2147483647i, arg_0.x)));
    var var_1 = arg_1;
    global2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, -1000f, var_1.b.x) + var_1.b.yzw), var_1.b.xxx, select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(arg_1.b.zyy - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<f32>(arg_1.b.x, arg_1.b.x, -1300f)))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(572f - arg_1.b.x) * _wgslsmith_f_op_f32(round(182f)))), _wgslsmith_f_op_f32(global2.x * arg_1.b.x))));
    var var_2 = 0i;
    return Struct_1(vec2<i32>(-(i32(-1i) * -26341i), i32(-1i) * -(var_0.x >> (58350u % 32u))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-476f, arg_1.b.x, var_1.b.x, -611f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(176f, 985f, arg_1.b.x, arg_1.b.x), vec4<f32>(-2302f, -751f, -662f, -969f))))))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global1 = array<vec4<bool>, 27>();
    let var_0 = Struct_1(abs(_wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(arg_0.a, vec2<i32>(15670i, -6440i)), arg_0.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-423f - -1000f), _wgslsmith_f_op_f32(1156f - -918f), _wgslsmith_div_f32(arg_0.b.x, -143f), -558f)))));
    global1 = array<vec4<bool>, 27>();
    var var_1 = func_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(func_2(Struct_1(arg_0.a, var_0.b), Struct_1(var_0.a, var_0.b)), ~arg_0.a.x, -var_0.a.x), ~vec3<i32>(21783i, var_0.a.x, var_0.a.x) ^ select(vec3<i32>(44307i, arg_0.a.x, 15723i), vec3<i32>(-1i, arg_0.a.x, var_0.a.x), vec3<bool>(true, true, false)), vec3<i32>(var_0.a.x, arg_0.a.x, -57465i)) | abs(vec3<i32>(-15328i, arg_0.a.x, abs(-15581i))), Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, -2260f, global2.x, -1440f)))), -select(_wgslsmith_mod_i32(-arg_0.a.x, var_0.a.x), arg_0.a.x, u_input.a != u_input.a));
    var var_2 = Struct_1(select(-min(vec2<i32>(var_1.a.x, 2147483647i) ^ vec2<i32>(0i, 5651i), vec2<i32>(var_1.a.x, var_0.a.x)), ~(-var_1.a) & ~select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -1781i), vec2<bool>(true, false)), true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.b - var_0.b))))));
    return 1297f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 27>();
    var var_0 = u_input.a;
    global0 = all(vec4<bool>(true, true, true, true)) != true;
    let var_1 = _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(-365f - -1000f))))) == _wgslsmith_f_op_f32(min(-451f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<i32>(38214i, 5974i), vec4<f32>(global2.x, global2.x, -136f, global2.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -187f)) - 261f)));
    let var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(min(u_input.a, u_input.a), ~u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a), abs(u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, select(u_input.a, 4294967295u, true), reverseBits(4294967295u), _wgslsmith_mod_u32(0u, u_input.a)), vec4<u32>(countOneBits(4294967295u), ~8060u, abs(1u), u_input.a | 38195u), (vec4<u32>(u_input.a, u_input.a, 1u, 1u) & vec4<u32>(0u, u_input.a, 66935u, u_input.a)) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))), select(_wgslsmith_mult_u32(64939u, u_input.a), ~max(4294967295u, 5910u), false), 58223u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 57321u, ~15418u, ~1u), max(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 42407u, u_input.a, 72369u)), vec4<u32>(~21970u, ~u_input.a, 53689u, countOneBits(u_input.a)))));
    global1 = array<vec4<bool>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(6629u, _wgslsmith_f_op_f32(ceil(-1000f)), abs(min(var_2.yw, firstTrailingBit(countOneBits(vec2<u32>(1u, var_2.x))))));
}

