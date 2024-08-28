struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 43617u;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>) -> vec2<i32> {
    global1 = global2.xx;
    global0 = abs(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(13372u, arg_0.x, u_input.a, arg_0.x) & vec4<u32>(u_input.c, u_input.a, 4818u, 4294967295u)), vec4<u32>(u_input.a, ~_wgslsmith_sub_u32(49233u, u_input.c), select(~47670u, u_input.c, true), 4294967295u)));
    global2 = vec3<bool>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f)) > _wgslsmith_f_op_f32(round(2673f)), any(!(!vec4<bool>(true, global2.x, global2.x, false))));
    global0 = 4294967295u;
    var var_0 = -u_input.b;
    return firstTrailingBit(_wgslsmith_sub_vec2_i32(-min(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.b, u_input.b)) >> (~(~arg_0) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(select(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, u_input.b), vec2<bool>(true, false)), vec2<i32>(2147483647i, u_input.b)) ^ countOneBits(-vec2<i32>(u_input.b, 25942i))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec3<f32>) -> f32 {
    global3 = array<Struct_1, 21>();
    global1 = !select(global2.yz, vec2<bool>(true, select(select(global2.x, true, true), true, true)), false);
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(trunc(-914f)));
    let var_1 = !(!(!vec3<bool>(arg_1.x, all(vec4<bool>(global2.x, true, true, false)), global2.x != arg_1.x)));
    var var_2 = vec4<i32>(firstTrailingBit(_wgslsmith_add_i32(firstLeadingBit(-2147483647i), 56525i ^ _wgslsmith_clamp_i32(-51381i, u_input.b, 1i))), reverseBits(2147483647i), u_input.b, _wgslsmith_mult_i32(firstTrailingBit(min(arg_0.x, abs(u_input.b))), -_wgslsmith_add_i32(18487i, ~(-70307i))));
    return _wgslsmith_f_op_f32(sign(arg_2.x));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<f32>) -> i32 {
    global3 = array<Struct_1, 21>();
    global1 = vec2<bool>(false, !(_wgslsmith_f_op_f32(func_4(func_3(vec2<u32>(u_input.c, 591u)), select(vec3<bool>(false, true, global2.x), vec3<bool>(false, false, global2.x), vec3<bool>(false, true, true)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1478f, arg_2.x, -983f))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, false)) - _wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)))));
    var var_0 = true;
    global3 = array<Struct_1, 21>();
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, abs(~arg_1), ~(89282u >> (0u % 32u)))), firstTrailingBit(vec3<u32>(arg_1 << (countOneBits(arg_1) % 32u), _wgslsmith_sub_u32(1u, _wgslsmith_add_u32(arg_1, 11391u)), abs(16219u)))), 21u)];
    return u_input.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_i32(~(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1.wxy, arg_1.yxw), ~vec3<i32>(1i, -33858i, -30849i)) ^ vec3<i32>(func_2(-518f, u_input.a, arg_0.ww), u_input.b & u_input.b, u_input.b)), vec3<i32>(max((arg_1.x << (17900u % 32u)) ^ _wgslsmith_sub_i32(-7894i, 19507i), abs(abs(48848i))), 38398i, -29681i));
    let var_1 = u_input.b;
    return Struct_1(!global1.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(-108f)), 339f, arg_3, -215f)))), -vec4<i32>(~u_input.b, reverseBits(~u_input.b), (u_input.b << (3901u % 32u)) ^ -u_input.b, firstTrailingBit(max(91323i, u_input.b))), func_1(vec4<f32>(_wgslsmith_f_op_f32(max(arg_3, _wgslsmith_f_op_f32(arg_3 - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3))), arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + -1196f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-436i, -2147483647i, u_input.b) >> (arg_1.xyy % vec3<u32>(32u)), abs(vec3<i32>(u_input.b, u_input.b, 9333i))), 2147483647i, func_3(_wgslsmith_mod_vec2_u32(arg_1.wz, arg_1.zx)).x, countOneBits(-23190i)), global3[_wgslsmith_index_u32(37985u, 21u)], 1239f), arg_3);
    var var_1 = arg_2.a;
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1011f, _wgslsmith_f_op_f32(round(arg_3)), _wgslsmith_f_op_f32(arg_3 - arg_3))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(1545f, 1273f)), 662f, _wgslsmith_f_op_f32(f32(-1f) * -807f), arg_3)))), vec4<i32>(-30709i, firstLeadingBit(select(~u_input.b, -1983i << (u_input.a % 32u), all(vec3<bool>(var_0.a, arg_2.a, arg_0.a)))), ~u_input.b, 30927i), arg_2, arg_3);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, 227f, arg_3, arg_3)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(447f, arg_3, -594f, arg_3), vec4<f32>(arg_3, arg_3, arg_3, 159f), vec4<bool>(true, var_2.a, true, arg_0.a))), vec4<bool>(global1.x, false, true, var_2.a)))))));
    let var_4 = arg_2;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1817f))) - arg_3), arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global2 = vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1648f, _wgslsmith_f_op_f32(f32(-1f) * -1182f))))) <= _wgslsmith_f_op_f32(func_5(func_1(vec4<f32>(-719f, 195f, -859f, 175f), vec4<i32>(-2147483647i, u_input.b, u_input.b, -1i) | vec4<i32>(-30684i, var_0, u_input.b, u_input.b), Struct_1(false), 1f), reverseBits(~vec4<u32>(u_input.a, u_input.c, 14488u, 8949u)), func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-323f, 879f, 136f, -305f), vec4<f32>(-913f, -420f, 240f, -750f))), -vec4<i32>(var_0, 15632i, 1i, -10622i), global3[_wgslsmith_index_u32(u_input.c & u_input.c, 21u)], _wgslsmith_f_op_f32(ceil(-371f))), _wgslsmith_f_op_f32(func_4(vec2<i32>(2147483647i, 1i), !vec3<bool>(global2.x, false, false), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-733f, 720f, -458f), vec3<f32>(-1129f, 113f, 1590f))))))), all(!vec4<bool>(select(true, global2.x, true), global1.x & global2.x, true, global2.x)), !(~(~u_input.c) != 10885u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(597f, 1479f, -2869f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-465f, -578f, 537f) + vec3<f32>(2417f, 517f, -489f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(234f, -1120f, 1070f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1479f, -313f, 622f) + vec3<f32>(937f, -140f, -546f)))) * vec3<f32>(-163f, _wgslsmith_f_op_f32(f32(-1f) * -217f), 1664f))));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, firstLeadingBit(_wgslsmith_div_u32(u_input.c, u_input.c))), countOneBits(~select(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, u_input.a), false))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-_wgslsmith_div_i32(2972i, u_input.b) >> (u_input.a % 32u), _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(-1i, var_0)), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-893i, 2147483647i)))), ~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(54285u, 4294967295u, 0u, 9732u), vec4<u32>(var_2.x, u_input.a, u_input.a, var_2.x))), _wgslsmith_f_op_f32(-var_1.x), ~(~firstTrailingBit(vec2<u32>(var_2.x, 127445u))) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.c), reverseBits(0u)), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(17524u, 4294967295u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(var_2.x, 1626u), ~vec2<u32>(1u, var_2.x))));
}

