struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 5421u;

var<private> global1: vec3<u32>;

var<private> global2: Struct_2 = Struct_2(0u, vec2<i32>(12532i, 8710i));

var<private> global3: vec3<i32> = vec3<i32>(2147483647i, -56405i, -1i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: f32) -> f32 {
    return arg_2;
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_3(i32(-1i) * -u_input.d, -569f);
    var var_1 = any(!vec2<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false))));
    global2 = Struct_2(64878u >> (_wgslsmith_add_u32(countOneBits(global1.x), global2.a) % 32u), select(~firstTrailingBit(-vec2<i32>(u_input.d, var_0.a)), global2.b, all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))));
    let var_2 = Struct_2(17542u, ~global3.yy);
    let var_3 = var_2;
    return vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + 282f), -705f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(378u, global3.yy, 975f)) * 1141f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b))));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> vec2<f32> {
    var var_0 = u_input.c.x << (firstTrailingBit(~global1.x) % 32u);
    var var_1 = Struct_2(global1.x << (_wgslsmith_add_u32(global2.a, 1u ^ u_input.c.x) % 32u), ~(select(global2.b, min(vec2<i32>(1i, global3.x), vec2<i32>(u_input.d, global3.x)), all(vec4<bool>(false, false, false, true))) ^ vec2<i32>(27051i, 1i)));
    global0 = 14578u | _wgslsmith_mult_u32(54596u, ~u_input.a);
    let var_2 = Struct_3(u_input.d, -269f);
    var_1 = Struct_2(21680u, vec2<i32>(-29002i, 0i));
    return vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))) * -2136f));
}

fn func_2() -> vec4<u32> {
    let var_0 = all(vec2<bool>(all(vec3<bool>(true, true, true)), true));
    global3 = select(-vec3<i32>(-2147483647i, _wgslsmith_div_i32(-2147483647i, u_input.d), -2147483647i), max(vec3<i32>(~min(global3.x, global3.x), global2.b.x, ~2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(6613i & u_input.d, u_input.d, _wgslsmith_mod_i32(23944i, -1i)), vec3<i32>(_wgslsmith_div_i32(-2147483647i, -2147483647i), 4839i, 41808i & global2.b.x))), select(!select(vec3<bool>(false, var_0, var_0), select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, true)), true), vec3<bool>(_wgslsmith_f_op_f32(ceil(-261f)) == _wgslsmith_f_op_f32(f32(-1f) * -672f), !all(vec3<bool>(var_0, var_0, true)), var_0 & true), var_0));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1029f - 333f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1852f, 899f), _wgslsmith_f_op_vec2_f32(vec2<f32>(403f, 2189f) - vec2<f32>(377f, 206f)))))), true));
    global3 = ~(-countOneBits(~(~vec3<i32>(50609i, -1i, 1i))));
    global3 = vec3<i32>(~u_input.d, ~u_input.d, 0i);
    return _wgslsmith_sub_vec4_u32(vec4<u32>(34297u, 1u, _wgslsmith_dot_vec4_u32(min(u_input.e, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, global1.x, 4294967295u, 4294967295u), vec4<u32>(1369u, u_input.b.x, global1.x, u_input.e.x), u_input.e)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(84735u, global2.a, global2.a, 8060u)), abs(u_input.e))), 0u << (~_wgslsmith_mult_u32(4294967295u, u_input.c.x) % 32u)), ~vec4<u32>(~0u, ~(~330u), 1u, (global1.x << (1u % 32u)) | 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1443f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(63397u, vec2<i32>(-21805i, 15530i), 130f)))))));
    let var_1 = vec4<u32>(select(~(4294967295u >> ((28797u | global2.a) % 32u)), 23705u, false & any(vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 42204u, u_input.e.x), u_input.e), u_input.e), _wgslsmith_mult_vec4_u32(~min(u_input.e, vec4<u32>(global2.a, 4294967295u, u_input.a, u_input.a)), func_2())), reverseBits(0u), u_input.a & (~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.e.x, 0u, 1u), u_input.e) & u_input.b.x));
    let var_2 = Struct_2(~select(~(~u_input.a), func_2().x, true), vec2<i32>(_wgslsmith_mod_i32(global3.x ^ _wgslsmith_add_i32(global3.x, -2147483647i), reverseBits(-84617i)), -2147483647i));
    let var_3 = !(false & !(!all(vec4<bool>(true, false, true, true))));
    var var_4 = global3.zx | -(global3.yx & (global2.b << (vec2<u32>(4294967295u, 3118u) % vec2<u32>(32u))));
    var_4 = firstTrailingBit(vec2<i32>(global2.b.x & 2147483647i, -countOneBits(countOneBits(u_input.d))));
    let var_5 = u_input.e.yxy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32((global2.a >> (~70019u % 32u)) >> (~var_1.x % 32u), global1.x), max(firstTrailingBit(-(~(-7672i))), select(var_4.x, -2147483647i, !(!var_3))), ~global2.b, firstLeadingBit(vec3<i32>(abs(_wgslsmith_clamp_i32(u_input.d, -2147483647i, var_2.b.x)), firstTrailingBit(var_4.x) ^ (global3.x << (global2.a % 32u)), 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(770f, -1352f, var_0.x) + vec3<f32>(var_0.x, -644f, 464f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -509f, -369f) - vec3<f32>(var_0.x, var_0.x, -278f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1057f, 2165f, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -592f, 577f))))));
}

