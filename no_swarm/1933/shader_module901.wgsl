struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = arg_1;
    global0 = u_input.a ^ ~u_input.a;
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_div_u32(abs(27351u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1149u, 35707u, 78204u) ^ ~vec4<u32>(1u, u_input.e.x, var_0.a, 41885u), firstTrailingBit(vec4<u32>(0u, 4294967295u, 1u, u_input.b.x)))));
    global0 = _wgslsmith_div_i32(-(~(reverseBits(u_input.d.x) ^ 39093i)), i32(-1i) * -1090i);
    return ~var_0.a | _wgslsmith_dot_vec3_u32(u_input.b, firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.a, 0u, 1u), u_input.b)) >> (~(~u_input.b) % vec3<u32>(32u)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(1919f * -1000f)), 579f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(507f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(585f, 1289f, false)) - _wgslsmith_f_op_f32(476f * -742f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x * 1000f))))));
    global0 = firstLeadingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.d.zy >> (arg_1 % vec2<u32>(32u))) ^ vec2<i32>(-1i, i32(-1i) * -1i), select(firstLeadingBit(vec2<i32>(u_input.a, u_input.c)), reverseBits(~u_input.d.xx), vec2<bool>(any(vec3<bool>(true, false, false)), all(vec4<bool>(false, true, false, false))))));
    global0 = abs(~u_input.c & _wgslsmith_mult_i32(-2147483647i, firstTrailingBit(u_input.a))) >> (~(51594u & u_input.e.x) % 32u);
    let var_2 = ~_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, abs(u_input.d.x)), 0i), -1i);
    return u_input.e.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = 0i;
    let var_0 = ~arg_0.a < _wgslsmith_sub_u32(0u, u_input.e.x);
    var var_1 = arg_0;
    var var_2 = vec2<bool>(true || (true || (u_input.e.x <= ~u_input.b.x)), true);
    let var_3 = Struct_1(~_wgslsmith_mod_u32(arg_0.a, func_2(-430f, arg_0, var_2.x) << (func_3(4294967295u, vec2<u32>(9870u, 0u)) % 32u)));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    global0 = ~_wgslsmith_mod_i32(_wgslsmith_add_i32(6362i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, -1i, u_input.a) << (vec4<u32>(u_input.b.x, 66822u, arg_0.a, 66214u) % vec4<u32>(32u)), ~vec4<i32>(-2147483647i, u_input.c, 644i, u_input.d.x))), countOneBits(-2147483647i));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(-282f)), -910f, _wgslsmith_f_op_f32(round(116f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(278f, 1221f, 393f)), _wgslsmith_div_vec3_f32(vec3<f32>(1899f, 1391f, 1113f), vec3<f32>(-1382f, -608f, 589f))))), !vec3<bool>(true, arg_2.a <= u_input.b.x, true))));
    var var_1 = arg_2;
    global0 = -select(26864i & -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, -14324i, 495i), vec4<i32>(u_input.a, u_input.c, u_input.a, -9786i)), 33407i, (-u_input.c | 1i) < 20484i);
    var_1 = Struct_1(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, arg_2.a), vec2<u32>(arg_0.a, 94197u)) & ~0u)));
    return func_1(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(0u);
    let var_1 = func_4(func_1(Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 48971u, 13617u), vec4<u32>(u_input.e.x, 1u, 0u, 59843u)), var_0.a))), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true))), func_1(Struct_1(u_input.b.x)));
    global0 = _wgslsmith_sub_i32(~((1i ^ (u_input.a | -26136i)) << (76432u % 32u)), max(u_input.d.x, 1i));
    let var_2 = 2147483647i;
    global0 = 53485i;
    global0 = firstLeadingBit(abs(u_input.c));
    let var_3 = func_1(func_1(Struct_1(4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~firstTrailingBit(var_0.a)), 52476u), var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -367f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(845f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f))))) * vec3<f32>(_wgslsmith_div_f32(408f, _wgslsmith_f_op_f32(f32(-1f) * -808f)), -1508f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(756f, 1000f)), _wgslsmith_f_op_f32(-424f - -1536f), true)))), var_3.a);
}

