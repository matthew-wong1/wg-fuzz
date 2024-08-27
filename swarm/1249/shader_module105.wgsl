struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(24339u, 59443u);

var<private> global1: array<f32, 23>;

var<private> global2: Struct_2 = Struct_2(vec3<f32>(-239f, -1904f, -813f), vec2<f32>(750f, -421f), 4294967295u);

var<private> global3: vec3<f32>;

var<private> global4: array<Struct_2, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> i32 {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_3.a)));
    var var_0 = global4[_wgslsmith_index_u32(23888u, 27u)];
    var var_1 = _wgslsmith_sub_vec3_i32(max(u_input.c, firstTrailingBit(_wgslsmith_clamp_vec3_i32(-u_input.c, vec3<i32>(u_input.c.x, arg_1, u_input.c.x), firstTrailingBit(vec3<i32>(u_input.b.x, -12934i, u_input.c.x))))), vec3<i32>(_wgslsmith_mod_i32(max(min(arg_1, 34305i), -38825i), 42829i), ~_wgslsmith_mult_i32(u_input.d ^ u_input.b.x, _wgslsmith_sub_i32(-2147483647i, -43170i)), 1i));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(-global2.a.x)) - _wgslsmith_f_op_f32(ceil(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1137f - arg_0.b.x)))))), _wgslsmith_div_i32(var_1.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, 1i, var_1.x), u_input.b), -u_input.d) >> (firstTrailingBit(~0u) % 32u)));
    let var_3 = Struct_1(_wgslsmith_div_f32(-780f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f) - global3.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-176f)))), global1[_wgslsmith_index_u32(25685u, 23u)], ~(~min(83477i, 18245i)));
    return _wgslsmith_sub_i32(-_wgslsmith_add_i32(-24631i ^ var_1.x, ~u_input.c.x) | (_wgslsmith_mod_i32(_wgslsmith_mod_i32(-9160i, 1i), -1i) >> (_wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.c, var_0.c), arg_2), 55791u) % 32u)), ~_wgslsmith_mult_i32(i32(-1i) * -arg_1, 18070i));
}

fn func_4(arg_0: vec4<i32>) -> vec4<bool> {
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a - vec3<f32>(global3.x, -1121f, 607f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1079f, 341f, global2.b.x) * global2.a)))), _wgslsmith_f_op_vec2_f32(-global3.xz), 191u);
    global4 = array<Struct_2, 27>();
    global1 = array<f32, 23>();
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-547f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(161u, 23u)] * -259f), -704f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-873f, 415f, 517f), _wgslsmith_f_op_vec3_f32(global2.a - vec3<f32>(397f, 1597f, global3.x)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)))))))));
    let var_1 = vec2<i32>(-22015i, firstLeadingBit(~reverseBits(arg_0.x)));
    return select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, !(_wgslsmith_f_op_f32(round(-254f)) >= _wgslsmith_f_op_f32(abs(2517f)))), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(ceil(global2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-464f)) * -1243f) * 367f), ~max(_wgslsmith_mult_i32(u_input.b.x, 1i), u_input.b.x));
    var var_1 = ~_wgslsmith_add_i32(~reverseBits(_wgslsmith_add_i32(-19916i, 1i)), var_0.d);
    let var_2 = func_4(vec4<i32>(var_0.d, func_3(global4[_wgslsmith_index_u32(4294967295u, 27u)], var_0.d, u_input.e, global4[_wgslsmith_index_u32(1u, 27u)]), -22370i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, var_0.d, var_0.d), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, 30578i))) << (global2.c % 32u)));
    let var_3 = vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(80455u, u_input.e.x, 4294967295u, global2.c) & vec4<u32>(global0.x, u_input.e.x, u_input.e.x, 4294967295u), ~vec4<u32>(0u, 20847u, global0.x, 30808u)), vec4<u32>(0u | u_input.e.x, _wgslsmith_sub_u32(73453u, 0u), _wgslsmith_div_u32(global2.c, global0.x), abs(global0.x)) ^ ~(~vec4<u32>(4294967295u, 1u, global0.x, u_input.e.x))), 44836u, abs(global2.c), global0.x << (_wgslsmith_mult_u32(global0.x, 1u) % 32u));
    var var_4 = -1i;
    return Struct_1(global1[_wgslsmith_index_u32(~10640u, 23u)], -1063f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_sub_i32(-(~(-3040i)), -1457i));
}

fn func_1(arg_0: u32, arg_1: u32) -> vec2<bool> {
    var var_0 = u_input.c;
    var var_1 = func_2();
    global4 = array<Struct_2, 27>();
    var var_2 = 2147483647i;
    let var_3 = vec3<i32>(-1i) * -firstLeadingBit(firstLeadingBit(~u_input.c));
    return vec2<bool>(!(!any(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), (_wgslsmith_mod_i32(1i, var_0.x) ^ -9767i) == countOneBits(min(var_3.x, abs(var_1.d))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<bool>) -> u32 {
    var var_0 = false;
    var var_1 = !(!vec2<bool>(_wgslsmith_add_i32(1i, 1i) < _wgslsmith_mult_i32(2147483647i, u_input.d), !all(vec2<bool>(arg_2.x, arg_2.x))));
    var var_2 = -(func_2().d ^ u_input.d);
    global0 = ~(~_wgslsmith_div_vec2_u32(abs(~vec2<u32>(global2.c, 4294967295u)), abs(u_input.e) ^ vec2<u32>(1u, 0u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global2.a)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1154f, global3.x, global2.a.x))))) - vec3<f32>(-296f, arg_1.a.x, _wgslsmith_f_op_f32(858f * global2.b.x))));
    return firstLeadingBit(_wgslsmith_div_u32(global2.c & 28210u, ~u_input.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global4[_wgslsmith_index_u32(global2.c, 27u)];
    var var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(func_5(vec3<f32>(337f, global3.x, -172f), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a), _wgslsmith_f_op_vec3_f32(-global2.a))), global2.a.xx, ~global0.x), !select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), !func_1(global2.c, 24983u))), 23u)];
    var var_2 = global3.yx;
    let var_3 = ~(firstLeadingBit(countOneBits(-u_input.b.ywy)) << (~vec3<u32>(global2.c, 19056u, ~1u) % vec3<u32>(32u)));
    var var_4 = vec3<bool>(true && !any(vec3<bool>(true, true, true)), true, !(all(vec2<bool>(true, true)) | true));
    var var_5 = Struct_2(vec3<f32>(var_2.x, 149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.x, 23u)] - var_2.x)) - _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global3.x)), -1358f))), ~(~global0.x));
    var var_6 = _wgslsmith_f_op_f32(abs(-3219f));
    var var_7 = countOneBits(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(1573f, 0u, var_3.x, -((vec4<i32>(-1i) * -u_input.b) << (vec4<u32>(_wgslsmith_sub_u32(var_5.c, 41504u), ~2166u, u_input.e.x ^ 0u, 0u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-328f, global3.x, _wgslsmith_f_op_f32(global2.a.x + var_5.b.x), var_5.a.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 944f, 620f, global3.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-696f, -552f, global2.b.x, 521f)))) + vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 23u)]), global3.x, -2244f))));
}

