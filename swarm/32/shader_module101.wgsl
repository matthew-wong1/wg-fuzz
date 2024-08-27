struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(0i, -24496i, 154i, -43612i));

var<private> global2: bool;

var<private> global3: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: bool) -> i32 {
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, abs(abs(2147483647i))), reverseBits(firstLeadingBit(vec2<i32>(-1i, u_input.b) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))))), -_wgslsmith_dot_vec4_i32(firstLeadingBit(min(vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b), global1[_wgslsmith_index_u32(u_input.a, 1u)])), -firstLeadingBit(vec4<i32>(-15346i, -2147483647i, u_input.b, u_input.b))), 0i);
}

fn func_2(arg_0: i32) -> Struct_2 {
    global3 = arg_0;
    global1 = array<vec4<i32>, 1>();
    global2 = true;
    let var_0 = vec3<i32>(func_3(vec2<bool>(true, true), Struct_2(Struct_1(false), _wgslsmith_div_f32(-1525f, 1000f), 867f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1227f, 343f, 1000f, -1017f) - vec4<f32>(-161f, -1667f, -210f, -1244f)) + vec4<f32>(304f, -725f, 661f, -1258f)), false) >> (45142u % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.b, 31713i) & vec2<i32>(arg_0, arg_0)), _wgslsmith_mod_vec2_i32(-vec2<i32>(-16406i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-20115i, 10925i), vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, u_input.b)))), -2147483647i), firstLeadingBit(-2147483647i));
    let var_1 = vec2<f32>(1026f, _wgslsmith_f_op_f32(abs(-615f)));
    return Struct_2(Struct_1(true), var_1.x, -619f);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> vec3<u32> {
    var var_0 = func_2(0i);
    var_0 = func_2(~(-(~_wgslsmith_div_i32(0i, u_input.b))));
    global3 = 62171i;
    var var_1 = _wgslsmith_f_op_f32(-628f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_3.x) - _wgslsmith_f_op_f32(sign(arg_3.x))))));
    var var_2 = arg_2;
    return ~firstTrailingBit(abs(~vec3<u32>(u_input.a, arg_0, arg_0)));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = vec2<bool>(!func_2(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(-1i, u_input.b))).a.a, all(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))) && true);
    global3 = countOneBits(u_input.b) >> ((~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, arg_3.x), vec4<u32>(4294967295u, arg_0, u_input.a, u_input.a)), arg_0) >> (arg_3.x % 32u)) % 32u);
    var var_1 = func_2(func_3(select(select(var_0, var_0, true), !var_0, all(vec3<bool>(var_0.x, true, false))), Struct_2(func_2(u_input.b).a, _wgslsmith_div_f32(-1373f, -1000f), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -1264f, arg_1.x, 378f))), false) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, -1i), global0[_wgslsmith_index_u32(arg_0, 11u)]) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_0, arg_3.x, 11541u), vec4<u32>(53539u, 3669u, 10946u, arg_3.x)) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, reverseBits(u_input.a)), 1u)]));
    global3 = _wgslsmith_add_i32(~u_input.b, abs(-35061i | u_input.b));
    let var_2 = func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(0i), u_input.b & _wgslsmith_mod_i32(u_input.b, u_input.b)), -_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(u_input.b, -24542i)), vec2<i32>(-2147483647i, u_input.b) << (arg_3.zx % vec2<u32>(32u)))));
    return Struct_1(all(var_0) & all(select(!vec4<bool>(var_2.a.a, var_2.a.a, var_0.x, var_0.x), vec4<bool>(var_2.a.a, false, false, true), !vec4<bool>(var_1.a.a, var_1.a.a, true, var_2.a.a))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    global2 = true;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1881f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(903f - 1000f) + _wgslsmith_f_op_f32(sign(353f))) + _wgslsmith_f_op_f32(f32(-1f) * -880f)));
    global2 = arg_2.a;
    var var_1 = ~min(countOneBits(reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a))), vec3<u32>(u_input.a, ~countOneBits(12963u), u_input.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1286f)), 616f, 1227f));
    return func_2(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = min(-1i, u_input.b);
    let var_0 = _wgslsmith_f_op_f32(739f - -1000f);
    let var_1 = func_5(func_4(~u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1477f, var_0, 868f, var_0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 932f, var_0, 2204f) - vec4<f32>(var_0, var_0, var_0, -1802f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -1134f, -836f) * vec4<f32>(var_0, var_0, var_0, var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(755f, var_0, var_0, 1000f) * vec4<f32>(var_0, 1335f, 1228f, var_0)), select(false, false, false)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1532f - var_0), var_0), var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -757f))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(step(var_0, var_0)))), ~func_1(u_input.a << (0u % 32u), -1561f, Struct_2(Struct_1(true), var_0, var_0), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, 290f, var_0, var_0), vec4<f32>(-2007f, var_0, var_0, var_0))))), -((_wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(u_input.a, 11u)], vec4<i32>(20000i, u_input.b, -2147483647i, 2147483647i)) << (vec4<u32>(23739u, 57943u, 20035u, u_input.a) % vec4<u32>(32u))) ^ (_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), global0[_wgslsmith_index_u32(u_input.a, 11u)]) ^ ~vec4<i32>(-1i, 75913i, u_input.b, u_input.b))), Struct_1(any(vec4<bool>(true, true, true, true))), u_input.b);
    global1 = array<vec4<i32>, 1>();
    global2 = var_1.a.a || false;
    let x = u_input.a;
    s_output = StorageBuffer(-24862i);
}

