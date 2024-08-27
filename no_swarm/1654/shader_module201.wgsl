struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 7>;

var<private> global2: array<i32, 18> = array<i32, 18>(2147483647i, i32(-2147483648), 3903i, 2147483647i, 7264i, 1i, 2808i, -1i, 0i, 2147483647i, -1i, 50874i, 15307i, 11938i, -1i, 13248i, -16734i, 2147483647i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = Struct_1(global0.a, false, arg_0.c, vec3<u32>(max(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(24782u, 22805u, global0.d.x), ~global0.d.x), 1u), _wgslsmith_mod_u32(select(_wgslsmith_div_u32(1u, 70473u), ~0u, true), ~_wgslsmith_clamp_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 7u)], 28225u)), global1[_wgslsmith_index_u32(arg_0.d.x, 7u)]));
    return arg_0.b;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = arg_2;
    var var_1 = Struct_1(any(!vec2<bool>(arg_2.b, !var_0.a)), any(select(select(vec3<bool>(arg_0.a, arg_0.b, false), vec3<bool>(true, var_0.a, true), vec3<bool>(true, var_0.b, true)), !vec3<bool>(false, arg_0.b, arg_2.a), true)) != !(!any(vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, 562f, 2457f, arg_0.c.x) - arg_2.c)))), abs(select(arg_2.d, _wgslsmith_clamp_vec3_u32(arg_2.d, arg_2.d, var_0.d) ^ ~var_0.d, false)));
    var_1 = arg_0;
    var_1 = Struct_1(46726i > global2[_wgslsmith_index_u32(5191u, 18u)], !any(select(!vec3<bool>(arg_2.b, false, var_1.b), !vec3<bool>(false, false, arg_2.b), true)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0.c - vec4<f32>(_wgslsmith_f_op_f32(var_1.c.x + global0.c.x), arg_2.c.x, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_0.c.x + 441f))))), vec3<u32>(~arg_0.d.x, var_0.d.x, 4294967295u));
    let var_2 = Struct_1(var_1.c.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -407f)))), arg_0.a && func_1(Struct_1(false, global0.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3, arg_3, arg_1.x, arg_1.x), vec4<f32>(arg_2.c.x, arg_1.x, -1055f, -787f))), var_0.d)), vec4<f32>(-302f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(301f)) + -528f), _wgslsmith_f_op_f32(-710f + 872f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(765f)))), global0.d);
    return false;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = global0.c.xw;
    global1 = array<u32, 7>();
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.zz) - _wgslsmith_f_op_vec2_f32(vec2<f32>(153f, 878f) * vec2<f32>(_wgslsmith_div_f32(-1000f, arg_0), global0.c.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c.wy * global0.c.zy) + _wgslsmith_f_op_vec2_f32(abs(global0.c.yy))))) + _wgslsmith_f_op_vec2_f32(global0.c.zw * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_f_op_f32(2828f - _wgslsmith_div_f32(arg_0, 206f)))));
    var var_2 = Struct_1(func_3(Struct_1(true, !(arg_1.x && arg_1.x), vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, -1139f)), -188f, -1113f, 796f), global0.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0.c.wxy)) - vec3<f32>(_wgslsmith_div_f32(-498f, arg_0), global0.c.x, var_1.x)), Struct_1(true, all(!arg_2.zx), global0.c, abs(global0.d)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), all(select(select(vec2<bool>(true, true), !vec2<bool>(arg_1.x, arg_2.x), vec2<bool>(arg_2.x, false)), !select(arg_1, arg_2.ww, arg_1.x), false)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(624f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -235f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_1.x)))), _wgslsmith_f_op_f32(var_0.x - arg_0)), vec4<f32>(-664f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(782f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), arg_0))), ~_wgslsmith_sub_vec3_u32(~global0.d, abs(global0.d) >> (reverseBits(vec3<u32>(1u, global0.d.x, global0.d.x)) % vec3<u32>(32u))));
    return Struct_1((global2[_wgslsmith_index_u32(1u, 18u)] >= (_wgslsmith_div_i32(-25279i, 1i) | u_input.a)) & true, !(all(vec2<bool>(arg_2.x, true)) && all(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.c - vec4<f32>(1431f, var_0.x, -1235f, 2046f))), global0.c)))), _wgslsmith_mult_vec3_u32(global0.d, vec3<u32>(firstTrailingBit(~1u), select(var_2.d.x | u_input.c, var_2.d.x, true), u_input.c)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = -_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, 2147483647i, 0i, global2[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19432u, 7u)], 18u)], arg_3.x, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 18u)])) & (_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.x, -2147483647i, u_input.b, u_input.a), vec4<i32>(12229i, 0i, arg_3.x, arg_3.x)) | firstTrailingBit(vec4<i32>(arg_3.x, 40869i, 37338i, global2[_wgslsmith_index_u32(36267u, 18u)]))), -(~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -24955i, u_input.b, 2147483647i), vec4<i32>(-1i, 9236i, u_input.b, arg_3.x))));
    let var_1 = _wgslsmith_add_vec2_i32(~_wgslsmith_clamp_vec2_i32(var_0.yx, vec2<i32>(u_input.a, -191i), vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(arg_0.d.x, 18u)])) >> (vec2<u32>(func_2(214f, arg_2.yx, arg_2).d.x, arg_0.d.x) % vec2<u32>(32u)), vec2<i32>(-_wgslsmith_clamp_i32(arg_3.x, 0i, var_0.x), 2147483647i)) | arg_3.zz;
    var var_2 = min(firstTrailingBit(vec4<u32>(reverseBits(71882u), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(32307u, 1u, 1u), vec3<u32>(24740u, arg_0.d.x, 32940u))), 90535u, u_input.c)), max(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 121000u), global0.d.zz), 4294967295u, 20263u, 1u), ~vec4<u32>(~arg_0.d.x, firstLeadingBit(54133u), 69129u, arg_0.d.x)));
    var var_3 = func_2(-1833f, !arg_2.ww, select(arg_2, vec4<bool>(!select(global0.b, global0.b, global0.a), -1397i != u_input.b, !func_3(arg_0, vec3<f32>(arg_0.c.x, 1300f, arg_0.c.x), arg_0, arg_0.c.x), global0.a), vec4<bool>(false, all(arg_2), !arg_0.a, arg_2.x)));
    let var_4 = _wgslsmith_f_op_f32(1385f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(265f - -1238f)))));
    return Struct_1(arg_0.a, arg_2.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-442f, 547f, -101f, _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(-291f - -1850f))) * var_3.c), firstTrailingBit(var_2.zxx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_4(func_2(1716f, vec2<bool>(global0.b, true), vec4<bool>(!all(vec3<bool>(true, true, global0.b)), any(vec3<bool>(true, true, global0.a)), select(true, global0.b & true, global0.a), func_1(Struct_1(global0.b, global0.a, vec4<f32>(global0.c.x, -630f, global0.c.x, global0.c.x), vec3<u32>(global0.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49013u, 7u)], 7u)], 0u))))), vec2<bool>(global0.b, global0.a), !(!select(!vec4<bool>(false, global0.a, true, false), select(vec4<bool>(global0.b, false, true, true), vec4<bool>(false, false, false, false), global0.b), global0.b)), select(min(reverseBits(vec3<i32>(1212i, 1i, -2147483647i)), ~vec3<i32>(global2[_wgslsmith_index_u32(global0.d.x, 18u)], global2[_wgslsmith_index_u32(0u, 18u)], -1i)), vec3<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(global0.d.x, 7u)], global1[_wgslsmith_index_u32(u_input.c, 7u)], u_input.c), vec4<u32>(13153u, global1[_wgslsmith_index_u32(global0.d.x, 7u)], u_input.c, 66319u)), 7u)], 18u)], -1i, 11334i & u_input.b), vec3<bool>(true, true, true)) & _wgslsmith_sub_vec3_i32(vec3<i32>(~42372i, abs(u_input.a), 1i), -vec3<i32>(global2[_wgslsmith_index_u32(1u, 18u)], u_input.a, 12653i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(56331u, 18u)], -9531i, u_input.b), vec3<i32>(u_input.a, u_input.a, 13123i))));
    var_0 = !(!(any(vec3<bool>(var_1.b, false, global0.a)) && func_4(Struct_1(var_1.b, true, vec4<f32>(1490f, global0.c.x, var_1.c.x, var_1.c.x), global0.d), vec2<bool>(global0.a, true), vec4<bool>(false, false, global0.b, true), -vec3<i32>(u_input.b, -2147483647i, -50352i)).b));
    var var_2 = var_1;
    var_2 = Struct_1(var_1.a, firstLeadingBit(~global0.d.x) != u_input.c, var_1.c, func_2(_wgslsmith_f_op_f32(global0.c.x - var_2.c.x), vec2<bool>(u_input.b > min(global2[_wgslsmith_index_u32(4294967295u, 18u)], 45i), any(select(vec3<bool>(false, global0.b, false), vec3<bool>(true, var_2.a, false), global0.a))), vec4<bool>(true, true, -u_input.a >= 11802i, true)).d);
    let var_3 = vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(select(var_1.d.x, 89583u, !(!global0.a || global0.b)), 18u)], u_input.a, 4291i);
    var_2 = func_4(var_1, !(!vec2<bool>(true, global0.a | true)), vec4<bool>(global0.a, var_2.b, !(!(u_input.c < var_1.d.x)), var_1.b), var_3.zwx);
    let var_4 = select(true, var_2.b, var_2.b);
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~var_5.d, -1000f, vec3<u32>(65625u, 0u, 4294967295u));
}

