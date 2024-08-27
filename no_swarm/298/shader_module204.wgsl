struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<i32, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: f32) -> bool {
    var var_0 = Struct_2(0i);
    var var_1 = -691f;
    let var_2 = Struct_2(_wgslsmith_div_i32(global0.b.x, _wgslsmith_mod_i32(global0.b.x, -18152i)));
    var var_3 = true;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1), global0.b, any(!select(select(vec2<bool>(global0.c, true), vec2<bool>(global0.d, true), vec2<bool>(false, false)), vec2<bool>(global0.c, true), select(vec2<bool>(false, global0.d), vec2<bool>(global0.d, false), true))), (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.x, 56034u, 4294967295u), ~4294967295u) > max(1u, reverseBits(u_input.a.x))) | !all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * 2190f) - -455f), 2310f)));
    return all(select(vec3<bool>(all(vec2<bool>(global0.c, false)), !global0.d, global0.c), !(!vec3<bool>(true, global0.d, true)), true)) | true;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: u32) -> vec3<f32> {
    global0 = arg_1.a;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 1072f)) - global0.e)))));
    var var_1 = Struct_1(arg_1.a.a, min(vec4<i32>(arg_1.a.b.x, i32(-1i) * -global0.b.x, ~abs(arg_1.b.x), -_wgslsmith_dot_vec4_i32(arg_1.a.b, vec4<i32>(global2[_wgslsmith_index_u32(71585u, 10u)], 6020i, 58720i, 20255i))), -vec4<i32>(~arg_1.b.x, arg_1.a.b.x, 1i, u_input.b)), all(select(select(select(vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, global0.d, arg_0, arg_1.a.c), vec4<bool>(false, global0.d, arg_1.a.d, arg_1.a.d)), !vec4<bool>(global0.d, true, global0.c, false), !arg_1.a.c), vec4<bool>(true, true, true, true), true)), global0.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(arg_1.a.e - _wgslsmith_f_op_f32(603f + global0.a.x))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(_wgslsmith_f_op_f32(710f - -414f), _wgslsmith_f_op_f32(arg_1.a.a.x * arg_1.a.a.x), var_1.e)) * vec3<f32>(163f, -951f, arg_1.a.e)), var_1.b, func_3(u_input.c, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1410f - global0.e), _wgslsmith_f_op_f32(-arg_1.a.e), var_1.e), vec3<f32>(_wgslsmith_f_op_f32(abs(global0.e)), arg_1.a.a.x, _wgslsmith_div_f32(var_0, -886f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1058f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(293f * -234f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * -424f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, arg_1.a.a.x, false))), _wgslsmith_f_op_f32(exp2(arg_1.a.a.x)))));
    global1 = array<Struct_2, 23>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.e, -406f, arg_1.a.e))))))) * var_1.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>) -> vec3<f32> {
    let var_0 = Struct_2(i32(-1i) * -u_input.b);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(global0.a)), vec4<i32>(~2147483647i, reverseBits(1i), -52964i, ~2147483647i), true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.e, global0.a.x))) - -737f) * _wgslsmith_f_op_f32(global0.e - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e * -1528f)))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_3(arg_1.zxw, global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1278f)), Struct_4(Struct_1(global0.a, global0.b, arg_0.x, false, global0.a.x), ~vec3<i32>(2147483647i, -2147483647i, 2147483647i), 56587u), 57857u)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1340f), -1667f, -1122f))), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.b.x, u_input.b, global0.b.x, global0.b.x), vec4<i32>(-11714i, global0.b.x, -33321i, global0.b.x)) & vec4<i32>(0i, u_input.b, global0.b.x, var_0.a)) >> (~(~vec4<u32>(u_input.a.x, arg_1.x, u_input.d.x, u_input.a.x)) % vec4<u32>(32u)), any(vec2<bool>(!all(vec3<bool>(global0.c, global0.d, false)), arg_1.x != ~u_input.c.x)), !(arg_0.x || arg_0.x), global0.e);
    var var_1 = vec2<u32>(arg_1.x, 6945u);
    global2 = array<i32, 10>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.e - _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e))) * global0.a) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_vec3_f32(func_4(any(vec2<bool>(false, arg_0.x)), Struct_4(Struct_1(global0.a, vec4<i32>(var_0.a, global2[_wgslsmith_index_u32(10251u, 10u)], u_input.b, 9764i), arg_0.x, false, -1000f), vec3<i32>(global2[_wgslsmith_index_u32(arg_1.x, 10u)], global0.b.x, u_input.b), 0u), ~u_input.a.x)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(false, Struct_4(Struct_1(vec3<f32>(global0.e, -690f, -551f), vec4<i32>(1i, var_0.a, u_input.b, global0.b.x), arg_0.x, false, 1000f), vec3<i32>(global2[_wgslsmith_index_u32(0u, 10u)], global0.b.x, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), 46354u), 0u)).x + 646f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_div_i32(countOneBits(2147483647i) ^ global0.b.x, ~1i) << (arg_1 % 32u));
    var var_1 = true;
    var var_2 = Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_vec3_f32(func_4(false, Struct_4(Struct_1(global0.a, vec4<i32>(0i, 2147483647i, -1i, -81369i), global0.c, global0.d, 1080f), vec3<i32>(40652i, global2[_wgslsmith_index_u32(58019u, 10u)], 1i), arg_1), 0u)).x), _wgslsmith_div_f32(803f, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-138f * -1674f), arg_0.x, true))), firstLeadingBit(global0.b), false, true, _wgslsmith_f_op_f32(-arg_0.x)), vec3<i32>(global0.b.x, var_0.a, 31570i), _wgslsmith_mod_u32(max(~37438u, _wgslsmith_sub_u32(arg_1, 52814u)) | ~(~0u), ~arg_1));
    global2 = array<i32, 10>();
    var_1 = true;
    return !(!vec3<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(var_2.a.c, global0.d, var_2.a.c), true)), all(vec3<bool>(global0.c, false, global0.c)), var_2.a.d));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> Struct_4 {
    global1 = array<Struct_2, 23>();
    var var_0 = Struct_3(Struct_1(global0.a, global0.b, !any(vec3<bool>(true, false, global0.c)), any(func_5(_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(false, global0.d), u_input.a)), _wgslsmith_clamp_u32(1u, 4294967295u, arg_0))), -381f));
    global1 = array<Struct_2, 23>();
    return Struct_4(var_0.a, var_0.a.b.wxy, arg_0);
}

fn func_6(arg_0: Struct_4) -> Struct_1 {
    global0 = Struct_1(global0.a, vec4<i32>(u_input.b ^ -25408i, ~(-(~global2[_wgslsmith_index_u32(arg_0.c, 10u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, abs(1i)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.b, vec3<i32>(global2[_wgslsmith_index_u32(39683u, 10u)], 2147483647i, arg_0.b.x)), global0.b.wyx)), u_input.b), !(false & global0.c), arg_0.a.c, arg_0.a.e);
    let var_0 = -1i;
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a + func_1(4294967295u, max(u_input.c.zy, vec2<u32>(arg_0.c, 92989u))).a.a)), 4294967295u).xx;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(1219f, 432f)), arg_0.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1929f)), global0.a, vec3<bool>(arg_0.a.c, true, all(vec3<bool>(arg_0.a.c, true, var_1.x))))), _wgslsmith_f_op_vec3_f32(min(global0.a, _wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(arg_0.a.a.x, global0.a.x, -1907f), vec3<bool>(var_1.x, true, arg_0.a.c))))), !select(select(vec3<bool>(global0.c, true, true), vec3<bool>(global0.d, false, true), vec3<bool>(true, false, true)), !vec3<bool>(var_1.x, global0.c, global0.d), arg_0.a.c))), arg_0.a.b, !any(select(func_5(global0.a, arg_0.c), !vec3<bool>(true, var_1.x, true), false)), var_1.x, _wgslsmith_f_op_f32(-arg_0.a.a.x));
    var_2 = arg_0.a;
    return func_1(~_wgslsmith_mult_u32(abs(u_input.a.x), 16852u) | arg_0.c, _wgslsmith_mod_vec2_u32(~u_input.a.ww, _wgslsmith_mult_vec2_u32(~vec2<u32>(7477u, 8098u), ~(~vec2<u32>(62952u, u_input.c.x))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(func_1(~u_input.d.x, vec2<u32>(~31825u, 28573u))));
    global1 = array<Struct_2, 23>();
    var var_1 = !func_5(_wgslsmith_f_op_vec3_f32(func_4(!(!global0.d), func_1(reverseBits(1u), vec2<u32>(30348u, u_input.a.x)), 1u)), ~firstLeadingBit(firstTrailingBit(u_input.a.x))).yy;
    global0 = var_0.a;
    var var_2 = Struct_3(Struct_1(vec3<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2513f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(346f, -1668f))))), -max(firstLeadingBit(vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(1431u, 10u)], global2[_wgslsmith_index_u32(u_input.d.x, 10u)], u_input.b)), vec4<i32>(var_0.a.b.x, 1i, var_0.a.b.x, global0.b.x)), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.a.b.x, var_0.a.b.x), -39273i) < global0.b.x, u_input.c.x <= 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -312f)));
    let var_3 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(~u_input.a.x, ~u_input.d.x, u_input.c.x)), ~(~(~vec3<u32>(54568u, 16085u, u_input.c.x))) ^ (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.d.x, u_input.a.x) >> (u_input.a.zxw % vec3<u32>(32u)), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)) ^ ~vec3<u32>(0u, u_input.c.x, u_input.a.x)), ~(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.c.x, 1u, 0u, 39611u)), select(u_input.d.x, 111463u, true), 92840u) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x) ^ vec3<u32>(1u, 1u, u_input.a.x), u_input.c & u_input.c) % vec3<u32>(32u))));
    var var_4 = vec2<i32>(1i, _wgslsmith_add_i32(-var_0.a.b.x | ~u_input.b, -12398i));
    global2 = array<i32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(min(~var_0.a.b.yzy, var_0.a.b.xyw) | vec3<i32>(-31128i << (var_3.x % 32u), func_1(firstLeadingBit(0u), u_input.a.zx).a.b.x, -1i), _wgslsmith_div_vec2_i32(~vec2<i32>(_wgslsmith_add_i32(0i, 1i), ~0i), -var_0.a.b.yy), -428f);
}

