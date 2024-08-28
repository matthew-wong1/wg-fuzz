struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(7029u, 25192u, 5659u));

var<private> global2: array<u32, 25> = array<u32, 25>(1u, 1u, 26507u, 15065u, 114061u, 1u, 4294967295u, 29452u, 16721u, 4294967295u, 4294967295u, 69997u, 18496u, 4294967295u, 44915u, 1664u, 1u, 50160u, 0u, 87789u, 25172u, 1u, 4294967295u, 4294967295u, 10854u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = arg_0;
    global1 = array<vec3<u32>, 1>();
    global2 = array<u32, 25>();
    let var_1 = !vec4<bool>(all(select(!vec4<bool>(arg_0, global0.x, global0.x, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))), false, !arg_0, true);
    global1 = array<vec3<u32>, 1>();
    return ~u_input.a;
}

fn func_3(arg_0: vec2<u32>) -> vec4<i32> {
    global0 = select(!(!(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, true, false)))), select(select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, true, true), true & global0.x), !vec3<bool>(global0.x, global0.x, true), global0.x & all(vec2<bool>(false, true))), vec3<bool>(global0.x, false & !global0.x, global0.x | any(vec2<bool>(global0.x, global0.x))), global0.x), global0.x);
    let var_0 = Struct_2(max(-_wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(2147483647i, 1i))), -1i), select(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(0i, 1i, 0i, 11297i) >> (countOneBits(vec4<u32>(9735u, arg_0.x, global2[_wgslsmith_index_u32(1u, 25u)], 4294967295u)) % vec4<u32>(32u))), vec4<i32>(-(~2147483647i), 24021i, select(i32(-1i) * -4581i, -1i, select(global0.x, global0.x, true)), -2147483647i), false), Struct_1(_wgslsmith_mod_u32(~u_input.a, ~(~4294967295u)), vec2<i32>(abs(1i), 28223i), 2031f), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-7807i, 1307i, 1i), select(_wgslsmith_add_vec3_i32(vec3<i32>(7474i, 1i, -9253i), vec3<i32>(-53107i, -23092i, 2219i)), abs(vec3<i32>(-1i, 8885i, 2147483647i)), !vec3<bool>(global0.x, false, global0.x)))));
    let var_1 = var_0;
    let var_2 = Struct_2(1i, var_0.b, Struct_1(~min(~var_1.c.a, 49507u), var_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.c, _wgslsmith_f_op_f32(246f * var_0.c.c)))), _wgslsmith_dot_vec2_i32(abs(var_0.c.b), abs(_wgslsmith_clamp_vec2_i32(var_0.b.zy, vec2<i32>(1i, var_1.d), var_0.b.ww | vec2<i32>(0i, 0i)))));
    global0 = vec3<bool>(global0.x | false, true, true);
    return min(~var_2.b, var_1.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    global2 = array<u32, 25>();
    let var_0 = ~u_input.a;
    global1 = array<vec3<u32>, 1>();
    var var_1 = arg_0;
    var var_2 = global0.yx;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.a, arg_0.c.a, u_input.a, 1u), vec4<u32>(var_1.c.a, firstLeadingBit(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 17694u, 71446u), vec3<u32>(var_0, var_1.c.a, 1u)))), u_input.a, select(28914u, firstLeadingBit(73456u) | (104565u ^ var_0), 1i >= arg_0.b.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_clamp_u32(~26398u, 0u, func_4(Struct_2(reverseBits(_wgslsmith_div_i32(-9019i, -2147483647i)), func_3(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 25u)], 25u)], global2[_wgslsmith_index_u32(1u, 25u)])) & ~vec4<i32>(-21442i, 37335i, 1i, 25702i), Struct_1(~u_input.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(-15012i, 41306i), vec2<i32>(-31220i, 1i), vec2<i32>(27659i, 9354i)), 377f), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1719i, 0i, -30825i, 1i), vec4<i32>(-2147483647i, -11530i, 13311i, 26236i))), !(!global0.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-658f, -595f))), all(vec4<bool>(true, !global0.x, 9756u <= u_input.a, all(vec3<bool>(true, true, true))))));
    global0 = vec3<bool>(true | (379f >= _wgslsmith_f_op_f32(trunc(-310f))), global0.x, !all(vec4<bool>(global0.x, global0.x, !global0.x, select(true, false, false))));
    global1 = array<vec3<u32>, 1>();
    var var_1 = !select(!vec4<bool>(select(false, global0.x, true), true, global0.x, 1u < u_input.a), select(select(!vec4<bool>(false, global0.x, global0.x, global0.x), !vec4<bool>(global0.x, false, global0.x, true), all(vec2<bool>(global0.x, false))), !select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, true, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x)), select(!vec4<bool>(false, false, global0.x, false), !vec4<bool>(global0.x, false, global0.x, global0.x), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x))), any(vec2<bool>(all(vec3<bool>(global0.x, false, false)), any(vec3<bool>(true, true, false)))));
    var_0 = ~(~firstTrailingBit(_wgslsmith_mult_u32(12898u, u_input.a) | 4294967295u));
    return Struct_2(-_wgslsmith_add_i32(_wgslsmith_mod_i32(firstLeadingBit(-7832i), ~(-25135i)), abs(1i)), max(vec4<i32>(_wgslsmith_mult_i32(-17750i, 42367i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 1i)), -83204i), -vec4<i32>(1i, -2147483647i, 2147483647i, 1256i)) | vec4<i32>(~0i, abs(i32(-1i) * -68263i), ~(-14702i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-23504i, 2705i), vec2<i32>(53913i, 1i))), Struct_1(abs(u_input.a), -vec2<i32>(i32(-1i) * -1i, 1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1122f - -616f), 477f)))), min(i32(-1i) * -1i, 11429i) ^ firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(71199i, 27553i) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), min(vec2<i32>(37185i, 1i), vec2<i32>(-1i, 1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_clamp_u32(abs(_wgslsmith_add_u32(1u, 40285u)), max(43278u, ~global2[_wgslsmith_index_u32(u_input.a, 25u)]), 58626u) << (60199u % 32u));
    let var_1 = ~global2[_wgslsmith_index_u32(abs(u_input.a | _wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(8341u, 25u)], global2[_wgslsmith_index_u32(func_1(global0.x, Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], vec2<i32>(2147483647i, 1i), -604f), Struct_1(19121u, vec2<i32>(2147483647i, 85818i), 1000f)), 25u)], 17930u)), 25u)];
    global1 = array<vec3<u32>, 1>();
    var var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(561f, -381f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1885f)))) + _wgslsmith_f_op_f32(sign(-1146f))))));
    global2 = array<u32, 25>();
    var var_3 = var_2.x;
    let var_4 = vec4<i32>(1i, (_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(-10099i, 2147483647i)) & 1i) >> (0u % 32u), select(-16707i, firstLeadingBit(-(~(-1i))), !(17186u >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 133998u), vec2<u32>(28076u, u_input.a)))), -6281i);
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(select(var_4.x, 0i, global0.x) & var_5.b.x);
}

