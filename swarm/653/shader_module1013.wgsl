struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1335f, -843f), vec2<i32>(4749i, i32(-2147483648)), false);

var<private> global1: Struct_2 = Struct_2(vec4<bool>(true, false, true, false), vec4<i32>(-29492i, -1i, -19512i, 1i), false, -542f);

var<private> global2: i32 = -1i;

var<private> global3: vec4<f32> = vec4<f32>(1427f, -1000f, -357f, 792f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec4<bool>) -> vec2<f32> {
    global0 = Struct_1(vec2<f32>(-1125f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f - global0.a.x)))), arg_1.zz, true);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, global0.a.x))), select(arg_1.yx ^ max(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(arg_1.x, arg_1.x)), abs(u_input.a)), abs(countOneBits(~vec2<i32>(-21465i, global1.b.x))), !select(global1.a.wy, !arg_2.yx, select(global1.a.yx, global1.a.xw, arg_2.x))), all(!global1.a.wz));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.a, global3.zz))))), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32((u_input.a >> (vec2<u32>(73559u, 42721u) % vec2<u32>(32u))) << (vec2<u32>(42856u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(0i, -2147483647i)), vec2<i32>(7594i, _wgslsmith_sub_i32(11760i, global0.b.x ^ -2147483647i)), abs(u_input.a)), any(!(!global1.a)));
    global1 = Struct_2(vec4<bool>(!arg_2.x, !global0.c, (~18628u >> (abs(1u) % 32u)) < firstTrailingBit(~67224u), !global1.a.x), select(max(global1.b, -countOneBits(global1.b)), reverseBits(_wgslsmith_sub_vec4_i32(global1.b, _wgslsmith_div_vec4_i32(vec4<i32>(0i, var_0.b.x, var_0.b.x, 8141i), vec4<i32>(2147483647i, arg_1.x, -64221i, 1i)))), global0.b.x > global0.b.x), !all(vec2<bool>(false | global1.c, 253f > global1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) + var_0.a.x));
    let var_1 = false;
    return global0.a;
}

fn func_2() -> f32 {
    global1 = Struct_2(vec4<bool>(global0.c, 1u > select(max(1u, 28724u), 1u, true), all(global1.a), !(select(true, true, global1.a.x) && true)), ~firstTrailingBit(_wgslsmith_mult_vec4_i32(-global1.b, vec4<i32>(2147483647i, u_input.b, global0.b.x, 31862i))), any(!select(!vec2<bool>(global0.c, global1.c), vec2<bool>(false, global0.c), global0.c)), global0.a.x);
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global1.d, 561f, global1.d) * vec4<f32>(global0.a.x, 502f, -266f, 1247f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -2326f, 1000f, -162f) + vec4<f32>(175f, -1000f, global1.d, global3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -409f, global0.a.x, 397f) + vec4<f32>(global0.a.x, 963f, -1278f, 544f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 514f, global3.x, global3.x))))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d * global0.a.x))), 1247f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1013f)), _wgslsmith_f_op_f32(-global0.a.x)) + _wgslsmith_f_op_f32(2345f - global3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.d * -563f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) - _wgslsmith_f_op_f32(f32(-1f) * -291f)))));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(806f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global1.d)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global3.yw)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(global3.ywy, vec3<i32>(global1.b.x, u_input.b, 2147483647i), global1.a)))), select(global1.a.yy, global1.a.yw, !(!vec2<bool>(global0.c, false))))));
    global3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(194f, -1012f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + -272f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1004f * var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(118f, global0.a.x, -782f, 831f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, -1093f, global1.d, global0.a.x))), vec4<f32>(global3.x, -2110f, 213f, global1.d))))));
    global3 = vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(750f + global3.x), _wgslsmith_f_op_f32(229f - -826f), global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(436f - -792f) - _wgslsmith_f_op_f32(var_0.x + global0.a.x)), 1281f), vec3<i32>(select(-33029i, 15343i, false) << (~18988u % 32u), _wgslsmith_dot_vec4_i32(-global1.b, vec4<i32>(global1.b.x, -1i, 7951i, global0.b.x)), ~global0.b.x), global1.a)).x, global1.d, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 508f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + 1738f)))), 1801f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.d - -1049f), _wgslsmith_f_op_f32(exp2(global3.x))))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) * -242f);
    global2 = -1184i;
    let var_1 = Struct_2(!global1.a, -global1.b, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), global0.a.x));
    global3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1955f, var_1.d, _wgslsmith_f_op_f32(140f * _wgslsmith_f_op_f32(global3.x * global3.x)), _wgslsmith_f_op_f32(global1.d + global0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(func_2()), var_1.d, var_0, 169f), !select(!vec4<bool>(var_1.c, var_1.c, false, false), !global1.a, all(vec3<bool>(arg_2.x, global1.a.x, true)))));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), global0.a.x), vec2<i32>(_wgslsmith_sub_i32(-1i, ~(-34870i)), abs(global1.b.x)), all(select(!var_1.a, vec4<bool>(var_1.a.x, any(global1.a.wxw), true, !global0.c), true)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !((u_input.a.x << (_wgslsmith_mult_u32(0u, 59506u) % 32u)) != _wgslsmith_div_i32(~u_input.b, countOneBits(_wgslsmith_mod_i32(global0.b.x, 0i))));
    var var_1 = func_1(_wgslsmith_clamp_u32(abs(~(~4294967295u)), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(30413u, 0u), 25571u), 0u << (0u % 32u)), ~abs(1u), select(global1.a.xz, !select(select(vec2<bool>(false, global1.a.x), global1.a.wy, global1.a.wz), select(global1.a.zw, global1.a.yw, false), false), global1.a.x));
    var var_2 = Struct_1(global0.a, vec2<i32>(var_1.b.x, -_wgslsmith_clamp_i32(~var_1.b.x, global0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_1.b.x), var_1.b.zy))), true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-56611i), -116f, ~(~(~(~24916u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(abs(28883u), _wgslsmith_mult_u32(1u, 1225u), _wgslsmith_mod_u32(1u, 1u), 1u)), ~31407u, 0u));
}

