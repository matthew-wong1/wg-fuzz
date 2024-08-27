struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(62587u);

var<private> global1: array<f32, 12>;

var<private> global2: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(52809i, 21356i, -1i), vec3<i32>(0i, -46724i, 23586i), vec3<i32>(-8875i, 16017i, 1i), vec3<i32>(-12581i, 2147483647i, -35454i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32) -> bool {
    global0 = Struct_3(reverseBits(firstTrailingBit(global0.a)) >> (abs(global0.a) % 32u));
    global1 = array<f32, 12>();
    var var_0 = vec3<bool>(6462u >= global0.a, (554f != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(343f * 786f), 468f, true))) | all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, true, true))), true);
    var var_1 = Struct_3(0u);
    var var_2 = true;
    return true;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(u_input.a.x);
    let var_1 = -(~select(-(~vec2<i32>(u_input.b.x, 2147483647i)), _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.b), firstLeadingBit(vec2<i32>(u_input.b.x, u_input.b.x))), true));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-758f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(55817u, 12u)] + 344f)))), global1[_wgslsmith_index_u32(1u, 12u)]), ~select(select(reverseBits(u_input.a.zw), u_input.a.wz, vec2<bool>(true, true)), ~(vec2<u32>(83766u, 4294967295u) & u_input.a.yy), true), select(min(_wgslsmith_add_vec3_i32(~global2[_wgslsmith_index_u32(3001u, 4u)], ~vec3<i32>(var_1.x, 54370i, 2147483647i)), abs(~global2[_wgslsmith_index_u32(global0.a, 4u)])), vec3<i32>(2147483647i, -29369i, 2147483647i), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), 15098i > var_1.x), vec3<bool>(true, false, true), func_3(global0.a))));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], _wgslsmith_f_op_f32(round(var_2.a.x))), var_2.a, all(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), global1[_wgslsmith_index_u32(u_input.a.x << (var_2.b.x % 32u), 12u)])))));
    global2 = array<vec3<i32>, 4>();
    return var_0;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: i32) -> Struct_3 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1830f, global1[_wgslsmith_index_u32(0u, 12u)]) - vec2<f32>(-488f, 825f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1097f - -1682f) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.a, 12u)] + arg_2))), arg_2));
    var var_2 = vec3<u32>(~arg_0, countOneBits(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, countOneBits(global0.a)), u_input.a.x)), arg_0);
    var var_3 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.a, var_2.x), _wgslsmith_sub_u32(41870u, 12627u)), _wgslsmith_clamp_u32(1u, var_0.a, ~(~36672u))) >= global0.a;
    let var_4 = !(!vec4<bool>(_wgslsmith_f_op_f32(abs(-1514f)) == _wgslsmith_f_op_f32(-var_1.x), false, false, false));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(24480u, true, 1f, _wgslsmith_dot_vec3_i32(countOneBits(reverseBits(~global2[_wgslsmith_index_u32(u_input.a.x, 4u)])), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(27064u, 4u)]) ^ ~(-29519i), u_input.b.x)));
    let var_1 = func_1(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~(~u_input.a.yx), u_input.a.zy), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.yy, u_input.a.xy, u_input.a.zw), vec2<u32>(98054u, global0.a)) | 0u), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(u_input.a.x), 12u)] - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(8058u, 12u)] - -869f)), _wgslsmith_f_op_f32(1428f + _wgslsmith_f_op_f32(round(269f))))), global1[_wgslsmith_index_u32(~global0.a, 12u)]), _wgslsmith_div_i32(-(i32(-1i) * -1i), _wgslsmith_add_i32(~1i, u_input.b.x)));
    let var_2 = _wgslsmith_div_i32(u_input.b.x, select(countOneBits(0i), reverseBits(~reverseBits(u_input.b.x)), true));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2084f, global1[_wgslsmith_index_u32(0u, 12u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-653f, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec2<f32>(global1[_wgslsmith_index_u32(var_0.a, 12u)], 388f), vec2<bool>(true, true))))))), u_input.a.yx, firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(22060u, var_0.a), 4u)]));
    let var_4 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, global1[_wgslsmith_index_u32(var_1.a, 12u)])), 1361f), -650f), vec2<u32>(19346u, global0.a), vec3<i32>(var_3.c.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b.x, 33613i, var_2), 32853i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_3.c.x, u_input.b.x), -2147483647i))), ~reverseBits(~vec3<i32>(u_input.b.x, 0i, 2147483647i)), firstTrailingBit(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-41388i, var_2, -1i, 1i)), vec4<i32>(var_3.c.x, u_input.b.x, var_3.c.x, 2147483647i) & vec4<i32>(-69045i, 2970i, var_3.c.x, 16874i)) << (4294967295u % 32u)), _wgslsmith_mult_u32(var_1.a, 25847u));
    var var_5 = -1i;
    let var_6 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)) | true), !vec3<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-var_3.a.x) >= _wgslsmith_f_op_f32(486f * _wgslsmith_f_op_f32(var_4.a.a.x * 975f)));
    let var_7 = Struct_2(var_4.a, vec3<i32>(var_3.c.x, var_3.c.x, 0i), countOneBits(var_4.b.x), 0u);
    var var_8 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-121f)))) + var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_7.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -497f), firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a)), ~(-14476i));
}

