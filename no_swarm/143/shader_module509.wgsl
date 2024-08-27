struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(777f, -318f, -160f), i32(-2147483648), true);

var<private> global1: array<vec3<bool>, 30>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-582f, -185f, 1280f), 1i, false);

var<private> global3: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = vec3<u32>(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)) | select(~1u, u_input.a, global2.b != global0.b), _wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), 4294967295u)) >> ((countOneBits(vec3<u32>(u_input.a, u_input.a ^ 4294967295u, firstLeadingBit(1u))) & _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), 1u, u_input.a), ~(vec3<u32>(u_input.a, 0u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))))) % vec3<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-1483f, _wgslsmith_f_op_f32(min(-572f, arg_0.a.x)), arg_0.c)), _wgslsmith_f_op_f32(400f * _wgslsmith_f_op_f32(round(1074f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-734f)) + 1362f))), -19783i, !global0.c);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1101f), 553f, global2.c)))))));
}

fn func_2(arg_0: vec2<f32>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, arg_0.x, -187f)), global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) - arg_0.x) != _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(1586f, -880f, arg_0.x), ~global0.b, global2.c))));
    let var_1 = ~abs(~(vec3<i32>(var_0.b, var_0.b, 0i) >> (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))));
    global1 = array<vec3<bool>, 30>();
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -205f, 1084f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(872f, global2.a.x, global0.a.x))))))), -10704i, !(true && !any(vec4<bool>(false, true, global2.c, var_0.c))));
    var var_2 = ~88496u;
    return ~_wgslsmith_sub_vec4_u32(abs(~(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))), _wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), ~vec4<u32>(u_input.a, 81110u, u_input.a, u_input.a)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> bool {
    global2 = arg_1;
    let var_0 = -1147f;
    let var_1 = ~(~arg_0);
    global2 = arg_1;
    global1 = array<vec3<bool>, 30>();
    return all(select(vec2<bool>(false, global0.c), select(vec2<bool>(true, true), select(vec2<bool>(arg_1.c, false), vec2<bool>(global2.c, arg_1.c), arg_1.c), all(vec3<bool>(global0.c, global0.c, arg_1.c))), select(vec2<bool>(global0.c, global2.c), vec2<bool>(global2.c, global2.c), vec2<bool>(global2.c, false)))) || global2.c;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    var var_0 = arg_0;
    global3 = any(!vec4<bool>(var_0.c, var_0.a.x >= 420f, all(vec4<bool>(false, false, true, arg_0.c)), all(vec2<bool>(arg_0.c, global2.c)))) & any(vec4<bool>(!any(global1[_wgslsmith_index_u32(97012u, 30u)]), !global0.c, arg_0.c, true));
    global0 = Struct_1(_wgslsmith_div_vec3_f32(global2.a, _wgslsmith_f_op_vec3_f32(arg_0.a + vec3<f32>(_wgslsmith_f_op_f32(global2.a.x * -286f), _wgslsmith_f_op_f32(f32(-1f) * -1308f), global2.a.x))), -global0.b, func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 87075u, firstTrailingBit(u_input.a)), firstLeadingBit(func_2(var_0.a.zz))), arg_0, select(-41860i, global2.b, arg_0.c | false)));
    var var_1 = arg_0;
    return Struct_1(var_0.a, _wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(-var_0.b, _wgslsmith_add_i32(-24119i, -1i), ~var_1.b), -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global2.b, var_0.b), vec3<i32>(global2.b, global2.b, arg_0.b)), vec3<i32>(var_0.b, global0.b, 0i)), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 1i, global0.b, var_0.b), vec4<i32>(-1i, -1i, var_0.b, var_0.b)))), all(!vec4<bool>(false, !var_1.c, false, any(global1[_wgslsmith_index_u32(18720u, 30u)]))));
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = abs(-30217i) < global0.b;
    var var_1 = vec4<i32>(-1i) * -vec4<i32>(arg_0.b, global0.b, global0.b, _wgslsmith_mult_i32(global2.b, -1i) | countOneBits(48607i));
    let var_2 = func_2(global0.a.yx).xwz;
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_add_i32(-21267i, _wgslsmith_mult_i32(-1692i, -36632i)), min(~(~(-2147483647i)), -2147483647i), _wgslsmith_dot_vec3_i32(~(-var_1.xxy), vec3<i32>(0i, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, global2.b, -1i), vec4<i32>(-28395i, global0.b, -26512i, global0.b)))), 0i), ~abs(firstLeadingBit(vec4<i32>(global2.b, -2147483647i, global2.b, -24966i))));
    let var_4 = !(all(!(!vec2<bool>(true, global0.c))) || (((var_3.x <= 36139i) & true) & arg_0.c));
    return !(!(16447u <= var_2.x));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    global2 = arg_0;
    global0 = arg_0;
    let var_0 = ~select(select(-_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(global0.b, 0i)), abs(-vec2<i32>(global0.b, 1i)), vec2<bool>(true, true)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(27799i, 27472i), firstTrailingBit(abs(vec2<i32>(global2.b, 2147483647i))), reverseBits(vec2<i32>(arg_0.b, global2.b) & vec2<i32>(global0.b, arg_0.b))), select(global0.c, global2.c, global0.c));
    let var_1 = max(reverseBits(arg_1.x), arg_1.x);
    var var_2 = !(!select(select(!vec2<bool>(global0.c, global2.c), vec2<bool>(arg_0.c, false), false), select(select(vec2<bool>(false, global0.c), vec2<bool>(false, global2.c), vec2<bool>(arg_0.c, arg_0.c)), !vec2<bool>(global2.c, true), vec2<bool>(true, global2.c)), select(!vec2<bool>(global2.c, true), vec2<bool>(global0.c, true), global0.b < -3815i)));
    return Struct_1(vec3<f32>(-2160f, global2.a.x, 1f), global0.b, all(global1[_wgslsmith_index_u32(abs(73058u), 30u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(Struct_1(global0.a, max(global0.b, global2.b), func_5(func_1(Struct_1(global0.a, -10881i, global2.c))) || false), ~(vec4<u32>(firstTrailingBit(4294967295u), firstTrailingBit(u_input.a), u_input.a, 1u >> (0u % 32u)) >> (select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 1u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), select(vec4<bool>(true, global2.c, global2.c, global0.c), vec4<bool>(global0.c, false, true, global0.c), global0.c)) % vec4<u32>(32u))), ~11741u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.a.x, global0.a.x, true)), _wgslsmith_f_op_f32(-global2.a.x)))) + _wgslsmith_f_op_f32(floor(global2.a.x))));
    var var_0 = vec2<bool>(false, global2.c);
    global1 = array<vec3<bool>, 30>();
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(516f * global0.a.x), 1000f) + _wgslsmith_f_op_f32(trunc(1740f))), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(global0.a.x * 1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1671f))))), 1i, true);
    var var_2 = var_1;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(var_3.b, -abs(2147483647i)), _wgslsmith_mult_i32(-1i, _wgslsmith_sub_i32(1i, 0i)), ~countOneBits(-var_1.b)), ~_wgslsmith_sub_u32(~(~u_input.a), u_input.a));
}

