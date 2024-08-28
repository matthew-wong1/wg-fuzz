struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2>;

var<private> global1: array<vec3<i32>, 20>;

var<private> global2: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<bool> {
    global1 = array<vec3<i32>, 20>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2065f)))));
    var var_1 = -vec2<i32>(-15482i, u_input.b);
    var var_2 = ~u_input.b;
    global1 = array<vec3<i32>, 20>();
    return vec2<bool>(!(!all(select(vec2<bool>(arg_2.b, false), vec2<bool>(arg_2.b, arg_2.b), false))), !select(arg_2.b, false, -668f < _wgslsmith_f_op_f32(max(arg_0.x, arg_3.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = 2147483647i | arg_1.c.x;
    global0 = array<vec3<i32>, 2>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(719f, _wgslsmith_f_op_f32(arg_1.a.x * arg_0.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1642f, arg_0.a.x, false)))) >= _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_clamp_vec3_i32(firstTrailingBit(min(vec3<i32>(21103i, arg_1.d.x, arg_1.d.x), vec3<i32>(1i, arg_0.d.x, arg_0.c.x)) & (arg_1.c >> (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u)))), global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_mod_u32(56163u, u_input.c)), 20u)], _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.c.x, arg_0.d.x, 6017i) ^ vec3<i32>(-2147483647i, -1i, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.d.x, 21226i, 1i) << (u_input.a.xxy % vec3<u32>(32u)), vec3<i32>(0i, 2147483647i, arg_1.d.x) & vec3<i32>(arg_0.d.x, -23609i, arg_1.c.x)))), max(min(_wgslsmith_div_vec4_i32(arg_0.d, -arg_0.d), vec4<i32>(u_input.b, u_input.b, -42405i >> (u_input.c % 32u), -2147483647i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.x, 73564i, 1i, 1i), arg_0.d)));
    var var_2 = -15164i;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x)) * _wgslsmith_f_op_vec2_f32(arg_0.a - vec2<f32>(var_1.a.x, arg_0.a.x))) * vec2<f32>(_wgslsmith_f_op_f32(max(-274f, -132f)), _wgslsmith_f_op_f32(-arg_1.a.x)))), arg_1.b, var_1.c, _wgslsmith_add_vec4_i32(arg_0.d, arg_0.d));
    return firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(arg_0.c.x, _wgslsmith_add_i32(var_1.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.x, var_1.d.x), var_3.c.xz))), arg_0.d.x, 2147483647i, arg_0.c.x));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 679f), _wgslsmith_div_vec2_f32(vec2<f32>(-523f, 543f), vec2<f32>(1506f, 137f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-167f, -1397f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-555f, -975f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -141f) - vec2<f32>(-386f, -1170f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1769f, -735f) + vec2<f32>(565f, 1865f))))), false, vec3<i32>(56590i, ~(-1i), ~u_input.b), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1465f, -416f), vec2<f32>(314f, 367f))), all(func_3(vec4<f32>(-168f, 748f, -1373f, -1629f), vec4<u32>(1u, u_input.c, u_input.a.x, u_input.c), Struct_1(vec2<f32>(-975f, -1304f), true, global0[_wgslsmith_index_u32(u_input.c, 2u)], vec4<i32>(45250i, u_input.b, u_input.b, u_input.b)), vec3<f32>(435f, -510f, -2000f))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(3666u, u_input.a.x) ^ min(94398u, u_input.a.x), 2u)], _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -49698i, u_input.b, u_input.b), ~vec4<i32>(u_input.b, -2147483647i, -6172i, u_input.b))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, -737f)), vec2<f32>(155f, -389f)), false, global0[_wgslsmith_index_u32(~(~u_input.c), 2u)], _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec4<i32>(-1i, 1i, 2147483647i, u_input.b)))));
    global2 = u_input.b;
    let var_1 = ~max(vec2<i32>(~reverseBits(-31170i), -(u_input.b << (28064u % 32u))), -_wgslsmith_mult_vec2_i32(select(var_0.c.yx, vec2<i32>(6580i, u_input.b), vec2<bool>(true, false)), vec2<i32>(2147483647i, u_input.b)));
    let var_2 = var_0;
    var var_3 = _wgslsmith_dot_vec2_i32(var_2.d.yx, countOneBits(var_0.d.ww));
    return _wgslsmith_div_u32(~1u, firstTrailingBit(_wgslsmith_sub_u32(firstTrailingBit(19515u), 1u) & 10289u));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec3<f32>) -> bool {
    let var_0 = u_input.a.zww;
    var var_1 = Struct_1(arg_3.yz, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)), (global1[_wgslsmith_index_u32(func_2(), 20u)] ^ _wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(~58307u, 20u)], vec3<i32>(u_input.b, u_input.b, u_input.b) >> (arg_1 % vec3<u32>(32u)))) << (vec3<u32>(reverseBits(var_0.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.x), arg_1.yz), abs(var_0.x)), var_0.x) % vec3<u32>(32u)), vec4<i32>(u_input.b, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(arg_3.yz)), true, func_4(Struct_1(arg_3.xz, true, vec3<i32>(u_input.b, -2580i, u_input.b), vec4<i32>(34305i, u_input.b, u_input.b, -28922i)), Struct_1(vec2<f32>(arg_0, 1891f), false, global0[_wgslsmith_index_u32(1u, 2u)], vec4<i32>(-38268i, u_input.b, u_input.b, u_input.b))).xyw, vec4<i32>(u_input.b, -2147483647i, 0i, u_input.b)), Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3.x, arg_3.x))), true, vec3<i32>(u_input.b, 0i, -1487i), ~vec4<i32>(u_input.b, -2147483647i, 27566i, 1i))).x, _wgslsmith_clamp_i32(-1528i, -u_input.b, u_input.b) << (~func_2() % 32u), u_input.b | firstTrailingBit(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(74557u, 20u)]))));
    var_1 = Struct_1(arg_3.zx, !any(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-721f, arg_3.x, 1049f, arg_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, arg_2, 4294967295u, arg_1.x), vec4<u32>(53692u, 37698u, arg_1.x, u_input.c)), Struct_1(vec2<f32>(var_1.a.x, 1306f), var_1.b, vec3<i32>(u_input.b, var_1.d.x, u_input.b), vec4<i32>(-2147483647i, u_input.b, -21658i, var_1.d.x)), vec3<f32>(arg_0, arg_0, arg_0))), ~global1[_wgslsmith_index_u32(4294967295u, 20u)], -vec4<i32>(u_input.b, ~var_1.c.x << (firstTrailingBit(var_0.x) % 32u), ~2147483647i, -min(u_input.b, u_input.b)));
    var var_2 = !any(func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 1042f, 1504f, -932f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-979f, arg_0, 2108f, -644f)))), ~vec4<u32>(u_input.a.x, arg_2, arg_1.x, arg_1.x) & abs(vec4<u32>(1u, u_input.a.x, 1u, arg_2)), Struct_1(var_1.a, func_3(vec4<f32>(997f, arg_3.x, -1109f, var_1.a.x), vec4<u32>(19911u, 0u, 70215u, 1u), Struct_1(vec2<f32>(-1229f, -1078f), false, vec3<i32>(u_input.b, var_1.d.x, 86862i), vec4<i32>(2147483647i, var_1.c.x, -2147483647i, u_input.b)), arg_3).x, global0[_wgslsmith_index_u32(0u, 2u)], var_1.d), arg_3));
    var_2 = any(select(vec4<bool>(var_1.b, select(true, false, var_1.b & var_1.b), var_1.b, !(arg_1.x <= arg_2)), select(!(!vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)), !vec4<bool>(var_1.b, true, var_1.b, var_1.b), vec4<bool>(var_1.b, arg_0 >= arg_0, true, any(vec2<bool>(var_1.b, false)))), true));
    return all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), !select(vec3<bool>(var_1.b, true, var_1.b), vec3<bool>(true, true, true), vec3<bool>(var_1.b, true, false)), !(!var_1.b)), !select(!vec3<bool>(false, var_1.b, var_1.b), select(vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(false, false, var_1.b), false), select(vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, false), false)), vec3<bool>(true, false, (arg_1.x >= 35154u) & true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, u_input.a.x), u_input.a), _wgslsmith_mod_u32(0u, u_input.a.x), abs(u_input.c)), vec4<u32>(~u_input.c << (_wgslsmith_mult_u32(u_input.c, 24457u) % 32u), u_input.c, 56376u, 4294967295u)) > countOneBits(37626u);
    global2 = reverseBits(2147483647i);
    var var_1 = select(vec4<bool>(!all(vec4<bool>(false, false, true, false)), false, u_input.b < -1i, any(vec3<bool>(false, true, any(vec3<bool>(false, false, true))))), vec4<bool>(!select(true, true, false) | func_1(-1375f, u_input.a.yzz, 0u, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-846f, 125f, 1163f), vec3<f32>(-205f, 1000f, -412f)))), !any(vec4<bool>(true, true, true, true)), (i32(-1i) * -u_input.b) <= 36082i, false), vec4<bool>(any(vec3<bool>(true, false, true)), (u_input.b < ~u_input.b) || false, !all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), true));
    global0 = array<vec3<i32>, 2>();
    var var_2 = _wgslsmith_f_op_f32(floor(326f));
    global2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_clamp_u32(1u, 1u, u_input.c), ~firstTrailingBit(12479u)), 0i);
}

