struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(995f, -1662f, -1067f, 1118f, -181f, -126f, -864f, 702f, -893f, 290f);

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = u_input.e.x;
    global1 = arg_0.a;
    global1 = Struct_1(~arg_0.b.a >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(12477u, global1.a), vec2<u32>(4294967295u, global1.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(41658u, arg_0.a.a), u_input.b)) % 32u));
    var var_1 = -(~u_input.d);
    global1 = Struct_1(_wgslsmith_mod_u32(~5733u, abs(~1u)));
    return !vec4<bool>(true, (_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.a, 10u)] * global0[_wgslsmith_index_u32(45939u, 10u)]) <= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 10u)])) || any(vec2<bool>(true, true)), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), u_input.b.x > ~8608u);
}

fn func_2() -> vec3<bool> {
    let var_0 = vec2<bool>(any(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), func_3(Struct_2(Struct_1(11115u), Struct_1(1u), Struct_1(global1.a), vec2<i32>(u_input.a, u_input.d.x)), u_input.a, u_input.e.xz))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], 1000f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b.x, 47737u, global1.a), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, global1.a), vec2<u32>(62343u, 4294967295u)), _wgslsmith_mult_u32(33271u, u_input.b.x), _wgslsmith_add_u32(1u, u_input.b.x))), 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(526f)) + _wgslsmith_f_op_f32(f32(-1f) * -823f)))));
    global0 = array<f32, 10>();
    global1 = Struct_1(_wgslsmith_add_u32(max(~53721u, ~3702u), firstTrailingBit(1u) & u_input.b.x) ^ (1u ^ _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 20393u, 87719u), vec3<u32>(4294967295u, global1.a, u_input.b.x)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-161f, -656f, -436f) - vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)], var_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1082f, 1311f, -1413f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x * -555f), _wgslsmith_f_op_f32(exp2(var_1.x)), global0[_wgslsmith_index_u32(~1u, 10u)]))));
    return vec3<bool>(var_0.x & true, true, var_0.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_5 {
    var var_0 = Struct_1(global1.a);
    var_0 = Struct_1(global1.a);
    let var_1 = select(vec2<i32>(-2935i >> (global1.a % 32u), _wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(20970i, u_input.d.x), u_input.d.zy, u_input.d.wy), ~(~u_input.e.zy))), vec2<i32>(1i, 1i), all(select(!(!vec2<bool>(arg_2.x, false)), vec2<bool>(select(false, arg_2.x, arg_2.x), arg_2.x), arg_2.yz)));
    let var_2 = arg_2;
    global0 = array<f32, 10>();
    return Struct_5(_wgslsmith_add_u32(~111566u, _wgslsmith_add_u32(var_0.a, var_0.a)), vec4<u32>(max((var_0.a | u_input.b.x) | 1u, _wgslsmith_mod_u32(min(0u, 4294967295u), global1.a)), ~firstTrailingBit(_wgslsmith_mod_u32(var_0.a, u_input.b.x)), ~1u, var_0.a));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: u32) -> vec4<u32> {
    var var_0 = 94956u;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1785f, global0[_wgslsmith_index_u32(arg_2, 10u)], 401f) + vec3<f32>(-582f, 510f, global0[_wgslsmith_index_u32(u_input.b.x, 10u)])))))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(var_1.zy - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(89792u, arg_2), 10u)]), vec2<f32>(-708f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(347f, 554f)))))));
    let var_3 = func_3(Struct_2(Struct_1(1u), Struct_1(~max(u_input.b.x, arg_2)), Struct_1(4294967295u << (_wgslsmith_sub_u32(u_input.b.x, 0u) % 32u)), ~u_input.e.yy), _wgslsmith_clamp_i32(arg_1.x, 0i, u_input.d.x), ~(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.c.x), -vec2<i32>(u_input.c.x, 2147483647i)) | ~(~vec2<i32>(u_input.d.x, arg_1.x)))).yw;
    var_2 = var_1.zx;
    return firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(90333u, arg_0.b.x, 22434u, 28556u), arg_0.b)) << (arg_0.b % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_5, arg_1: u32) -> i32 {
    let var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(~0u, 0u & arg_0.a), u_input.b);
    let var_1 = func_5(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 10u)], -228f, global0[_wgslsmith_index_u32(4294967295u, 10u)], -499f) + vec4<f32>(-1655f, -1000f, -357f, 317f))))), _wgslsmith_dot_vec4_i32(~(-u_input.d), u_input.d), !func_2()), abs(vec4<i32>(-1i) * -countOneBits(vec4<i32>(7651i, u_input.e.x, 2147483647i, -2147483647i))), u_input.b.x);
    global1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_0.x, 0u, 0u), ~(vec4<u32>(25246u, 29258u, 0u, global1.a) >> (arg_0.b % vec4<u32>(32u)))), ~global1.a));
    var var_2 = any(func_3(Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), var_0)), Struct_1(arg_0.b.x), Struct_1(~39130u), vec2<i32>(~u_input.c.x, _wgslsmith_add_i32(u_input.e.x, -2147483647i))), 0i, u_input.d.yy));
    let var_3 = Struct_5(global1.a, ~firstTrailingBit(_wgslsmith_clamp_vec4_u32(arg_0.b, ~vec4<u32>(arg_1, 6280u, u_input.b.x, var_1.x), firstTrailingBit(vec4<u32>(23648u, 66823u, var_0.x, 0u)))));
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 10>();
    var var_0 = ~(~16759u);
    var_0 = global1.a;
    var var_1 = ~(~(vec4<i32>(-1i) * -(vec4<i32>(u_input.d.x, u_input.e.x, u_input.c.x, -1i) << (vec4<u32>(u_input.b.x, 26095u, global1.a, 52006u) % vec4<u32>(32u)))));
    var var_2 = true | (_wgslsmith_add_i32(-select(0i, 0i, true), countOneBits(u_input.c.x)) >= _wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.x, -2147483647i), ~func_1(Struct_5(u_input.b.x, vec4<u32>(4294967295u, 349u, 37612u, 0u)), 23283u)));
    var var_3 = Struct_3(_wgslsmith_mod_i32(-(~(-2147483647i) >> (~u_input.b.x % 32u)), func_1(func_4(vec4<f32>(1258f, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(global1.a, 10u)], -597f), u_input.e.x, select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), _wgslsmith_mod_u32(global1.a, ~51184u))), !vec3<bool>(true, true, select(true, u_input.b.x <= 767u, true)), Struct_1(17764u), -1065f);
    global1 = var_3.c;
    var var_4 = countOneBits(vec2<u32>(1u, 1074u));
    var_1 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d, var_3.d, global0[_wgslsmith_index_u32(global1.a, 10u)], var_3.d) + vec4<f32>(-1722f, 462f, 1391f, 345f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d, -1119f, -2025f, var_3.d) * vec4<f32>(global0[_wgslsmith_index_u32(81866u, 10u)], var_3.d, -1103f, var_3.d))), countOneBits(u_input.d.x), func_2()), 32897u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.d, global0[_wgslsmith_index_u32(28849u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)], 358f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-386f)), var_3.d) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(57468u, 10u)], var_3.d), _wgslsmith_f_op_f32(step(-992f, global0[_wgslsmith_index_u32(u_input.b.x, 10u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1962u, 10u)] - global0[_wgslsmith_index_u32(u_input.b.x, 10u)])))))));
}

