struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: i32 = -11707i;

var<private> global2: bool;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(1u, false, vec4<bool>(false, false, true, false)), Struct_1(4294967295u, true, vec4<bool>(false, false, false, false)), Struct_1(64738u, false, vec4<bool>(false, false, false, true)), Struct_1(26819u, false, vec4<bool>(true, true, false, false)), Struct_1(4294967295u, true, vec4<bool>(false, true, true, false)), Struct_1(0u, false, vec4<bool>(false, false, true, true)), Struct_1(4294967295u, false, vec4<bool>(false, false, true, true)), Struct_1(22926u, false, vec4<bool>(true, true, true, false)), Struct_1(45066u, true, vec4<bool>(false, false, true, true)), Struct_1(0u, false, vec4<bool>(false, true, true, false)), Struct_1(74425u, true, vec4<bool>(true, true, false, true)), Struct_1(26257u, false, vec4<bool>(false, true, true, true)), Struct_1(4294967295u, false, vec4<bool>(false, true, true, true)), Struct_1(18150u, true, vec4<bool>(false, true, true, true)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-2095f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(275f, 1f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-706f + arg_1), _wgslsmith_f_op_f32(trunc(arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1))), arg_1), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-823f, -891f, _wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1287f, -431f, arg_1, 486f)), vec4<f32>(arg_1, arg_1, 1175f, arg_1), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-593f, -1969f, -1002f, -1359f) + vec4<f32>(arg_1, arg_1, -328f, arg_1)) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(arg_1, -936f), _wgslsmith_f_op_f32(arg_1 - arg_1), -481f)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -174f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(arg_1 - var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(var_0.x * arg_1))))));
    global2 = true;
    global0 = max(_wgslsmith_sub_vec4_i32((~vec4<i32>(-13971i, -7539i, 22338i, global0.x) ^ ~vec4<i32>(u_input.e, 0i, 2147483647i, -9911i)) >> ((vec4<u32>(u_input.c, u_input.d, 1u, 1u) << (vec4<u32>(u_input.c, 9264u, 1u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), -vec4<i32>(0i, -1i, -48994i, 7356i)), abs(vec4<i32>(arg_0.x, -global0.x, 42246i, 1i)));
    let var_2 = _wgslsmith_div_i32(-(~arg_0.x), 1i) << (select(u_input.c, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(abs(u_input.c), 4294967295u, ~u_input.c), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1076f) + _wgslsmith_f_op_f32(trunc(-217f))) <= 1673f) % 32u);
    return any(select(vec3<bool>(select(true, false, false), var_0.x <= arg_1, true), select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, true), true))) && !(_wgslsmith_f_op_f32(f32(-1f) * -133f) != var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> bool {
    global0 = min(_wgslsmith_mult_vec4_i32(~(vec4<i32>(u_input.e, global0.x, global0.x, 57340i) ^ vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)) | _wgslsmith_mult_vec4_i32(max(vec4<i32>(global0.x, u_input.a, global0.x, u_input.a), vec4<i32>(701i, u_input.e, global0.x, -1i)), vec4<i32>(0i, 1i, -1755i, -37203i)), ~select(select(vec4<i32>(global0.x, u_input.e, global0.x, 2147483647i), vec4<i32>(global0.x, u_input.a, global0.x, -14723i), arg_0.c.x), ~vec4<i32>(u_input.a, global0.x, -24835i, 0i), select(arg_0.c, arg_0.c, arg_3.c))), vec4<i32>(_wgslsmith_mod_i32(countOneBits(global0.x), abs(global0.x)), u_input.e, global0.x >> (1u % 32u), -2956i));
    let var_0 = global0.x;
    global0 = ~(~vec4<i32>(~u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, 0i), global0.xxy), _wgslsmith_sub_i32(-2147483647i, 1i), u_input.a)) ^ -_wgslsmith_clamp_vec4_i32(max(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, global0.x, global0.x), vec4<i32>(-16544i, 1i, 3082i, 2147483647i)), vec4<i32>(-1i, global0.x, global0.x, -4110i)), -vec4<i32>(u_input.e, global0.x, -2147483647i, -10632i), -reverseBits(vec4<i32>(0i, u_input.e, global0.x, 0i)));
    global3 = array<Struct_1, 14>();
    var var_1 = Struct_1(~_wgslsmith_div_u32(abs(11692u), arg_3.a), any(arg_3.c.xz), select(select(vec4<bool>(select(arg_0.c.x, arg_3.b, false), false, arg_0.b, arg_3.a < arg_3.a), arg_0.c, any(vec4<bool>(arg_0.c.x, false, false, arg_0.c.x))), select(vec4<bool>(arg_3.a != arg_3.a, !arg_0.c.x, func_3(vec3<i32>(1823i, u_input.e, global0.x), 514f), true), select(!arg_3.c, select(vec4<bool>(false, arg_3.b, true, false), vec4<bool>(arg_3.b, arg_0.b, arg_0.c.x, arg_0.b), false), !vec4<bool>(arg_0.b, arg_0.b, arg_3.b, arg_3.c.x)), arg_0.b), select(arg_0.c, vec4<bool>(global0.x != 17177i, !arg_3.c.x, true, true), vec4<bool>(true, true, true, true))));
    return arg_0.c.x;
}

fn func_2(arg_0: u32) -> f32 {
    global2 = !func_4(Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, u_input.d, 54964u), vec3<u32>(4294967295u, u_input.b, 28204u) << (vec3<u32>(1u, arg_0, arg_0) % vec3<u32>(32u))), true, select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), ~(~21871u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1183f, _wgslsmith_f_op_f32(544f + -407f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1746f), _wgslsmith_f_op_f32(f32(-1f) * -1109f), func_3(global0.ywx, -118f)))), Struct_1(~(arg_0 | arg_0), (u_input.e << (arg_0 % 32u)) == global0.x, select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false), true)));
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(638f * 1291f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(380f, 307f) - -1191f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1490f)), _wgslsmith_f_op_f32(select(435f, 2496f, false)), true)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(997f, -654f) - _wgslsmith_div_vec2_f32(vec2<f32>(522f, -703f), vec2<f32>(-1309f, 683f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1115f - 204f))))), select(vec2<bool>(true, true), vec2<bool>(func_4(Struct_1(arg_0, true, vec4<bool>(true, true, false, true)), ~4294967295u, _wgslsmith_f_op_f32(450f + 297f), Struct_1(0u, true, vec4<bool>(true, false, true, true))), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_1 = global3[_wgslsmith_index_u32(~u_input.b, 14u)];
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, ~(-44826i << (_wgslsmith_div_u32(u_input.c, arg_0) % 32u)), _wgslsmith_mult_i32(abs(~10209i), _wgslsmith_add_i32(-1i, 1i)), u_input.e), -(~(~vec4<i32>(global0.x, global0.x, 2147483647i, 1i))) >> (vec4<u32>(~max(u_input.d, 46850u), 76592u, arg_0, arg_0) % vec4<u32>(32u)));
    global2 = !any(var_1.c.xzx);
    return _wgslsmith_f_op_f32(var_0.x + -1000f);
}

fn func_1(arg_0: u32) -> i32 {
    global1 = -25442i;
    var var_0 = ~(~1i);
    var var_1 = global0.zw;
    global2 = _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -348f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-667f))))), true)) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1111f - 790f) * -2211f)), true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-745f, 526f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1586f, -1107f)))), _wgslsmith_f_op_f32(ceil(-1213f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    return reverseBits(firstLeadingBit(firstTrailingBit(var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 27443u;
    global0 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 1i, i32(-1i) * -func_1(u_input.b), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(3723i, -18759i) | global0.wy, firstTrailingBit(global0.zx)), _wgslsmith_div_vec2_i32(vec2<i32>(34490i, -3367i), vec2<i32>(-2147483647i, -1i) | global0.wz))), vec4<i32>(29733i & select(~global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 34013i, u_input.e), vec4<i32>(u_input.e, global0.x, -2147483647i, u_input.a)), true), u_input.a, u_input.e, reverseBits(-func_1(u_input.d))));
    global3 = array<Struct_1, 14>();
    let var_1 = select(select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), func_4(global3[_wgslsmith_index_u32(~7522u, 14u)], ~abs(4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -116f), Struct_1(abs(u_input.b), true, vec4<bool>(false, true, false, true)))), !vec4<bool>(true, !func_4(global3[_wgslsmith_index_u32(u_input.d, 14u)], u_input.d, 951f, Struct_1(1u, true, vec4<bool>(true, false, false, false))), select(true, false, false), false), select(vec4<bool>(!(4294967295u == u_input.d), all(vec2<bool>(false, true)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), select(any(vec4<bool>(true, false, false, false)), 14713u <= u_input.b, true)), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true))), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))));
    var var_2 = var_1.x;
    var var_3 = -1i;
    var var_4 = Struct_1(u_input.b, 252f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1009f - _wgslsmith_f_op_f32(sign(590f)))), var_1);
    var_0 = ~(4294967295u << (u_input.c % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-246f, vec4<f32>(_wgslsmith_f_op_f32(ceil(-933f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-947f, -722f, var_1.x)))), _wgslsmith_f_op_f32(1f - -597f), -1045f), ~(~(~vec4<u32>(var_4.a, 55098u, u_input.c, 28563u))), u_input.e);
}

