struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 2>;

var<private> global3: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(71409u, 105839u), vec2<u32>(1u, 74042u), vec2<u32>(25710u, 4294967295u), vec2<u32>(4294967295u, 47930u), vec2<u32>(0u, 7638u), vec2<u32>(1u, 4294967295u), vec2<u32>(108575u, 4294967295u), vec2<u32>(44636u, 0u), vec2<u32>(0u, 24003u), vec2<u32>(7147u, 4294967295u), vec2<u32>(41376u, 63400u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 22466u), vec2<u32>(17907u, 26583u), vec2<u32>(93618u, 1u), vec2<u32>(0u, 54981u), vec2<u32>(79203u, 1u), vec2<u32>(4294967295u, 30214u));

var<private> global4: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec4<f32>) -> i32 {
    var var_0 = countOneBits(_wgslsmith_add_vec2_u32(~select(vec2<u32>(1u, 1u), u_input.b.zx, true), global1.wy));
    let var_1 = 2147483647i;
    var var_2 = global2[_wgslsmith_index_u32(global1.x, 2u)];
    var var_3 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(-(~u_input.a.xz), vec2<i32>(u_input.a.x, i32(-1i) * -12673i)), -3914i ^ _wgslsmith_add_i32(abs(u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(0i, u_input.a.x))));
    global4 = global2[_wgslsmith_index_u32(var_0.x, 2u)];
    return _wgslsmith_mod_i32(-61144i, _wgslsmith_add_i32(_wgslsmith_sub_i32(-select(var_1, -33392i, global4.a), -5593i), abs(1i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-397f, 1000f, -322f, -209f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1169f), -556f, _wgslsmith_div_f32(1275f, 1000f), _wgslsmith_f_op_f32(-406f - -755f)) * vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-3371f, -324f, -727f, 1933f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(159f, 435f, 1606f, 609f))))));
    let var_1 = Struct_1(true);
    var var_2 = Struct_1(!(all(!vec2<bool>(false, arg_0.a)) != !arg_0.a));
    return !global0[_wgslsmith_index_u32(0u, 18u)];
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    global0 = array<bool, 18>();
    var var_0 = vec4<bool>(false, func_4(global2[_wgslsmith_index_u32(85016u, 2u)], Struct_1(global0[_wgslsmith_index_u32(~(global1.x << (12478u % 32u)), 18u)]), vec2<i32>(func_3(1540f, u_input.b.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 622f, -1852f, 1040f), vec4<f32>(-951f, -2344f, 725f, 880f)))), arg_0), -u_input.a), any(vec2<bool>(select(!global4.a, !global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, global1.x, 29233u), 18u)]), any(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(global1.x, 18u)], global0[_wgslsmith_index_u32(global1.x, 18u)])))), !all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], !global0[_wgslsmith_index_u32(1u, 18u)], arg_0 <= 2147483647i)));
    var var_1 = Struct_1(!(!arg_1));
    let var_2 = global2[_wgslsmith_index_u32(~(~u_input.b.x), 2u)];
    var var_3 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.yzw, vec3<u32>(_wgslsmith_add_u32(u_input.b.x, global1.x), _wgslsmith_sub_u32(0u, u_input.b.x), 0u) << (select(_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, u_input.b.x, 570u), vec3<u32>(u_input.b.x, 99177u, u_input.b.x)), global1.zwy, var_0.yww) % vec3<u32>(32u))), ~vec3<u32>(~(u_input.b.x | 27872u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 67067u, global1.x), u_input.b), select(55408u, 1u, var_2.a)), ~1u));
    return global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.b.x), 2u)];
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global3 = array<vec2<u32>, 18>();
    let var_0 = select(!(!vec4<bool>(arg_2.a, true, !global4.a, global4.a)), !select(vec4<bool>(!global4.a, any(vec3<bool>(false, true, true)), arg_2.a, global0[_wgslsmith_index_u32(~u_input.b.x, 18u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 18u)], true, func_2(1i, arg_2.a).a), all(select(vec3<bool>(global4.a, true, global0[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 18u)], arg_2.a, false), vec3<bool>(true, true, false)))), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1, 18u)] & arg_2.a, true, true), vec4<bool>(true, false == global0[_wgslsmith_index_u32(global1.x, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], true), global4.a));
    return func_2(u_input.a.x, func_2(_wgslsmith_dot_vec4_i32(arg_0, -vec4<i32>(arg_0.x, -1i, 1i, u_input.a.x)), true).a);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = func_5(_wgslsmith_div_vec4_i32(~firstLeadingBit(firstLeadingBit(vec4<i32>(-2147483647i, arg_0, 2147483647i, -2147483647i))), abs(vec4<i32>(22595i << (u_input.b.x % 32u), -u_input.a.x, ~arg_0, 25918i))), _wgslsmith_mult_u32(max(global1.x, _wgslsmith_sub_u32(u_input.b.x, firstTrailingBit(global1.x))), abs(firstTrailingBit(global1.x | u_input.b.x))), func_2(-select(arg_0, -arg_0, !global4.a), !global4.a));
    global3 = array<vec2<u32>, 18>();
    var var_1 = func_2(~_wgslsmith_add_i32(func_3(_wgslsmith_f_op_f32(abs(1456f)), ~u_input.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1635f, 472f, -1000f, -190f))), u_input.a.x), !(!any(!vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 18u)]))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -731f))))));
    var var_3 = Struct_1(-1000f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(277f, _wgslsmith_f_op_f32(-1489f - var_2), arg_0 >= arg_0))));
    return func_5(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_0, u_input.a.x, -728i, arg_0) ^ ~vec4<i32>(3232i, -1i, 1i, u_input.a.x), abs(vec4<i32>(0i, u_input.a.x, arg_0, -2147483647i))), vec4<i32>(arg_0, 27857i, 5933i, _wgslsmith_mod_i32(24549i, arg_0 << (1u % 32u)))), abs(~global1.x), global2[_wgslsmith_index_u32(firstTrailingBit(~0u), 2u)]).a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 2>();
    global2 = array<Struct_1, 2>();
    let var_0 = global2[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1.x | 0u, 1u), u_input.b.x >> (~u_input.b.x % 32u), _wgslsmith_div_u32(global1.x & 74181u, firstTrailingBit(0u)))), 2u)];
    global3 = array<vec2<u32>, 18>();
    let var_1 = all(!vec3<bool>(all(!vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 18u)], global0[_wgslsmith_index_u32(global1.x, 18u)], var_0.a)), var_0.a, true != func_1(-2147483647i, Struct_1(true))));
    var var_2 = func_5(~_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(11797i, -17877i, 2147483647i, 63616i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(69072i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-5355i, -20910i, 1i, u_input.a.x))), ~(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 0i) >> (vec4<u32>(global1.x, u_input.b.x, 38034u, global1.x) % vec4<u32>(32u)))), global1.x | (76769u >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(33689u, 0u, u_input.b.x, 1u), u_input.b), global1.x & u_input.b.x) % 32u)), func_5(vec4<i32>(-38959i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-7023i, u_input.a.x, u_input.a.x, u_input.a.x)), min(vec4<i32>(u_input.a.x, 11329i, u_input.a.x, u_input.a.x), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x))), ~u_input.a.x, u_input.a.x >> (~14169u % 32u)), global1.x, global2[_wgslsmith_index_u32(75786u, 2u)]));
    let var_3 = Struct_1(false);
    var_2 = Struct_1(global0[_wgslsmith_index_u32(~u_input.b.x & global1.x, 18u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-1911f, 740f, -319f), vec3<f32>(2259f, 951f, -1000f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-217f, 720f, -1668f) - vec3<f32>(2552f, -514f, -253f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(438f, 1725f, 2431f))))), _wgslsmith_dot_vec3_u32(u_input.b.zxz, abs(min(u_input.b.yyw, vec3<u32>(4294967295u, global1.x, 4294967295u)))), ~((~0i & u_input.a.x) >> (global1.x % 32u)), _wgslsmith_div_f32(777f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1239f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1474f, 739f) * -471f))), max(u_input.a.yz, vec2<i32>(-1i) * -(u_input.a.yz ^ u_input.a.xy)));
}

