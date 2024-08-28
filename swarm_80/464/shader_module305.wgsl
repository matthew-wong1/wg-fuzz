struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<f32, 26>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> bool {
    global1 = array<f32, 26>();
    let var_0 = 27780u;
    global1 = array<f32, 26>();
    var var_1 = any(select(vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), true, any(vec2<bool>(true, true)), true), select(vec4<bool>(false, true, any(vec2<bool>(false, false)), true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))), vec4<bool>(true, true, !any(vec2<bool>(true, true)), true)));
    global1 = array<f32, 26>();
    return select(true, true, !(!select(false, true, true) & true));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec3<bool>) -> vec2<f32> {
    let var_0 = Struct_4(false, 0u, reverseBits(~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.c.x, global0.c.x, global0.c.x), vec3<i32>(arg_1, u_input.c.x, arg_1)), -u_input.b)), global0.b, vec2<bool>(arg_0.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~56797u, 26u)] + global0.b.a.x) < -1179f));
    var var_1 = Struct_3(Struct_1(~min(min(vec4<u32>(0u, 0u, 0u, var_0.b), vec4<u32>(global0.a, 1u, 1196u, 1u)), vec4<u32>(var_0.b, var_0.b, global0.a, 4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d.a - vec3<f32>(global1[_wgslsmith_index_u32(var_0.b, 26u)], global1[_wgslsmith_index_u32(global0.a, 26u)], arg_2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(global0.a, 26u)], var_0.d.a.x, global0.b.a.x) - vec3<f32>(173f, 700f, -1000f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.a.x, arg_2.x, -240f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-163f, 938f, global0.b.a.x) * global0.d.a))), arg_2.x, min(max(vec3<u32>(u_input.a, u_input.a, global0.a) | vec3<u32>(4951u, 0u, 1u), vec3<u32>(u_input.a, global0.a, 4294967295u)), select(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 24710u, 4091u), vec3<u32>(6455u, u_input.a, 58621u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, global0.a), vec3<u32>(4294967295u, global0.a, 1u)), arg_0.x)), ~(~countOneBits(global0.a))));
    global1 = array<f32, 26>();
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(0i, -1i), -countOneBits(_wgslsmith_mult_i32(arg_1, ~(-1708i))), firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, u_input.c), firstTrailingBit(u_input.c)), 0i)));
    global1 = array<f32, 26>();
    return _wgslsmith_f_op_vec2_f32(max(var_0.d.a.zz, _wgslsmith_f_op_vec2_f32(exp2(var_0.d.a.zy))));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.d.a.xz), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(74950u, 26u)], global0.b.a.x), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global0.d.a.x)))), vec2<bool>(true, true))))));
    global0 = Struct_5(u_input.a, global0.b, -abs(_wgslsmith_mult_vec2_i32(-u_input.c.ww, -u_input.b.yx)), global0.d);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a.x) - _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(global0.a, 26u)], var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1703f) == _wgslsmith_f_op_f32(-global0.b.a.x), true, true, func_3(u_input.c, u_input.b.x)), global0.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(920f, 242f, -1000f) + global0.b.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.b.a.x, global0.d.a.x) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], -165f, global0.b.a.x)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    let var_2 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), !vec2<bool>(all(vec3<bool>(false, false, false)) && true, !(u_input.c.x > u_input.c.x)), true);
    let var_3 = vec2<i32>(1i, ~u_input.c.x);
    return Struct_4(var_2.x, ~1u, vec3<i32>(_wgslsmith_clamp_i32(select(i32(-1i) * -62741i, 46875i, false), _wgslsmith_mod_i32(33304i ^ var_3.x, var_3.x << (111231u % 32u)), 1i), _wgslsmith_div_i32(_wgslsmith_add_i32(max(var_3.x, var_3.x), _wgslsmith_dot_vec4_i32(vec4<i32>(7775i, var_3.x, u_input.b.x, -13388i), u_input.c)), max(-u_input.b.x, -u_input.c.x)), select(825i, -61179i, 57998u <= ~u_input.a)), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-338f - -1149f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(791f, global0.b.a.x, 756f), vec3<f32>(global0.d.a.x, -667f, var_0.x))))), vec2<bool>(var_1.x < -485f, all(vec2<bool>(false, !var_2.x))));
}

fn func_5(arg_0: Struct_4) -> Struct_5 {
    global0 = Struct_5(firstTrailingBit(0u), arg_0.d, ~(vec2<i32>(-u_input.b.x, min(9619i, 1i)) << ((vec2<u32>(20150u, global0.a) ^ firstTrailingBit(vec2<u32>(38889u, global0.a))) % vec2<u32>(32u))), global0.d);
    global0 = Struct_5(global0.a, func_2().d, _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(u_input.c.x, 1i)), select(vec2<i32>(arg_0.c.x, u_input.c.x), vec2<i32>(global0.c.x, global0.c.x), arg_0.e), select(vec2<i32>(global0.c.x, global0.c.x), u_input.b.xy, true)), ~(-vec2<i32>(global0.c.x, -2147483647i))) ^ vec2<i32>(abs(_wgslsmith_mult_i32(global0.c.x, global0.c.x)), 2147483647i), arg_0.d);
    var var_0 = -24252i ^ _wgslsmith_clamp_i32(0i, -24433i, global0.c.x);
    var var_1 = Struct_5(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.b & 4294967295u, ~max(u_input.a, global0.a)), global0.a), arg_0.d, firstLeadingBit(firstLeadingBit(arg_0.c.xx)), func_2().d);
    var_1 = Struct_5(func_2().b, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.a.x + var_1.b.a.x) - global0.d.a.x), global1[_wgslsmith_index_u32(125162u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)])), func_2().c.yx, func_2().d);
    return Struct_5(_wgslsmith_mult_u32(~4294967295u | _wgslsmith_clamp_u32(63088u, select(22511u, 4294967295u, arg_0.e.x), _wgslsmith_div_u32(4294967295u, var_1.a)), var_1.a), Struct_2(_wgslsmith_f_op_vec3_f32(global0.d.a + vec3<f32>(-541f, _wgslsmith_f_op_f32(min(491f, global0.d.a.x)), _wgslsmith_f_op_f32(max(1469f, arg_0.d.a.x))))), vec2<i32>(var_1.c.x, -(select(u_input.c.x, var_1.c.x, arg_0.a) & _wgslsmith_mod_i32(arg_0.c.x, -29677i))), func_2().d);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    var var_0 = func_5(func_2());
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(~55733u, 42626u), 26u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1052f) * -919f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.a.x))))));
    let var_2 = arg_1;
    let var_3 = Struct_3(Struct_1(var_2.a, vec3<f32>(1129f, _wgslsmith_f_op_f32(f32(-1f) * -572f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(56614u, 26u)])), _wgslsmith_f_op_f32(-func_2().d.a.x), abs(_wgslsmith_add_vec3_u32(var_2.d ^ var_2.d, countOneBits(arg_1.a.yyz))), u_input.a));
    var_0 = func_5(Struct_4(true, ~(~_wgslsmith_clamp_u32(u_input.a, 1u, 22704u)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(9677i, 2147483647i, -1i), u_input.c.zwz) ^ firstTrailingBit(vec3<i32>(arg_0, global0.c.x, -1i)), -u_input.b), func_5(func_2()).d, !(!func_2().e)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(func_1(~6017i, Struct_1(vec4<u32>(1u, global0.a, 4294967295u, u_input.a), global0.b.a, global0.d.a.x, vec3<u32>(global0.a, 45767u, u_input.a), global0.a), abs(u_input.c.xww)), firstLeadingBit(0u)), func_5(func_2()).a, ~46256u, _wgslsmith_mult_u32(countOneBits(global0.a), u_input.a) >> (~1u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.d.a.x, global0.b.a.x, global0.d.a.x), vec3<f32>(global1[_wgslsmith_index_u32(global0.a, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)], 1135f), vec3<bool>(false, false, false))) * func_2().d.a)) * vec3<f32>(global0.b.a.x, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.a, 26u)], _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(143895u, 26u)], global1[_wgslsmith_index_u32(global0.a, 26u)])), false)), _wgslsmith_f_op_f32(502f - func_5(Struct_4(true, 37834u, u_input.b, global0.b, vec2<bool>(false, false))).d.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(true, true, true, true), ~5114i, _wgslsmith_f_op_vec3_f32(exp2(global0.b.a)), vec3<bool>(true, true, true))).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1060f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global0.a, 26u)], 806f) * 699f) + _wgslsmith_f_op_f32(f32(-1f) * -994f))), _wgslsmith_add_vec3_u32(select(~vec3<u32>(14846u, 32137u, global0.a) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(8963u, u_input.a, 26524u), vec3<u32>(39287u, global0.a, u_input.a)) % vec3<u32>(32u)), vec3<u32>(global0.a, global0.a, u_input.a), vec3<bool>(func_3(vec4<i32>(global0.c.x, 1i, -15553i, 1939i), u_input.b.x), any(vec4<bool>(false, true, true, true)), true)), select(firstTrailingBit(vec3<u32>(u_input.a, 16738u, global0.a)), firstTrailingBit(~vec3<u32>(0u, u_input.a, 44947u)), false)), ~(~(_wgslsmith_div_u32(122941u, global0.a) & 1u)));
    var_0 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a, firstLeadingBit(37909u), 4294967295u >> (global0.a % 32u), u_input.a >> (var_0.e % 32u)), var_0.a), min(min(var_0.a, vec4<u32>(1u, 42108u, 31528u, 11953u)), select(var_0.a << (var_0.a % vec4<u32>(32u)), var_0.a, false))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_5(Struct_4(false, 43782u, vec3<i32>(global0.c.x, -1i, u_input.c.x), Struct_2(var_0.b), vec2<bool>(true, true))).b.a.x)))), vec3<u32>(~global0.a, 9137u, firstTrailingBit(global0.a) | ~_wgslsmith_mod_u32(u_input.a, u_input.a)), abs(var_0.e));
    let var_1 = Struct_5(firstTrailingBit(firstTrailingBit(81522u)), func_5(Struct_4(!(4294967295u == u_input.a), 11256u, abs(_wgslsmith_mult_vec3_i32(u_input.c.xzy, vec3<i32>(u_input.c.x, global0.c.x, 0i))), global0.b, select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), false))).b, -global0.c, func_2().d);
    let var_2 = select(global0.c.x, -2147483647i, var_0.b.x <= var_1.d.a.x);
    var var_3 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 17236u, ~global0.a, 1u), reverseBits(~var_0.a)), ~reverseBits(var_1.a) >> (_wgslsmith_clamp_u32(~global0.a, ~5449u, firstTrailingBit(0u)) % 32u), 1u, ~1u), _wgslsmith_f_op_vec3_f32(var_1.d.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_5(Struct_4(false, u_input.a, u_input.c.zxw, global0.b, vec2<bool>(false, false))).d.a) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.a.x, 1000f, 1574f), vec3<f32>(global0.d.a.x, -142f, global0.d.a.x), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-969f)))))), select(~vec3<u32>(func_5(Struct_4(false, 16012u, vec3<i32>(-2147483647i, var_2, u_input.b.x), var_1.d, vec2<bool>(true, false))).a, var_1.a, _wgslsmith_mod_u32(9115u, global0.a)), _wgslsmith_sub_vec3_u32(var_0.a.yzz, vec3<u32>(var_1.a >> (0u % 32u), 1u, func_2().b)), all(vec2<bool>(true, true))), 1u | ~(~var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -vec3<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-22532i, u_input.c.x, -2147483647i)), vec3<i32>(2147483647i, 5402i, global0.c.x)), min(global0.c.x, -27303i), _wgslsmith_mod_i32(_wgslsmith_div_i32(var_1.c.x, 0i), _wgslsmith_sub_i32(38046i, var_1.c.x))), ~firstTrailingBit(0u));
}

