struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 2>;

var<private> global2: f32 = 165f;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_3, 16>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec4<bool> {
    let var_0 = global0.a.xy;
    global3 = select(!select(select(select(vec2<bool>(true, global3.x), vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, true)), vec2<bool>(global3.x, false), !global3.x), select(vec2<bool>(false, false), !vec2<bool>(true, global3.x), vec2<bool>(global3.x, global3.x)), !select(vec2<bool>(false, global3.x), vec2<bool>(false, false), global3.x)), !vec2<bool>(!any(vec4<bool>(global3.x, true, global3.x, true)), global3.x), true);
    global3 = !(!select(vec2<bool>(!global3.x, global3.x), vec2<bool>(true, !global3.x), select(select(vec2<bool>(false, global3.x), vec2<bool>(true, global3.x), global3.x), !vec2<bool>(global3.x, global3.x), false & global3.x)));
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-643f)), _wgslsmith_f_op_f32(f32(-1f) * -961f))) * 1f)));
    let var_1 = u_input.d.xz;
    return select(vec4<bool>(any(vec3<bool>(true, true, !global3.x)), false, true, !all(vec2<bool>(true, global3.x)) || true), !select(!vec4<bool>(true, global3.x, global3.x, global3.x), !(!vec4<bool>(global3.x, true, false, global3.x)), vec4<bool>(-34258i == var_1.x, global3.x | global3.x, global3.x, !global3.x)), vec4<bool>(any(!(!vec2<bool>(global3.x, global3.x))), global3.x, all(!select(vec2<bool>(global3.x, global3.x), vec2<bool>(false, global3.x), vec2<bool>(false, global3.x))), ~var_0.x > _wgslsmith_clamp_u32(_wgslsmith_div_u32(78553u, 636u), 0u, abs(0u))));
}

fn func_2(arg_0: vec2<i32>) -> vec2<bool> {
    global4 = array<Struct_3, 16>();
    global1 = array<Struct_1, 2>();
    var var_0 = global4[_wgslsmith_index_u32(~41049u, 16u)];
    let var_1 = global4[_wgslsmith_index_u32(min(firstTrailingBit(1u), 37738u | (~(global0.a.x << (u_input.e % 32u)) << (~_wgslsmith_dot_vec2_u32(var_0.c.xy, u_input.b.zy) % 32u))), 16u)];
    global0 = global1[_wgslsmith_index_u32(var_1.c.x, 2u)];
    return vec2<bool>(any(func_3()), false);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -709f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1559f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(987f)) - _wgslsmith_f_op_f32(abs(554f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-888f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-984f, _wgslsmith_f_op_f32(floor(846f)), _wgslsmith_f_op_f32(-508f - -569f), _wgslsmith_f_op_f32(-563f * 297f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(641f, -2013f, -1648f, 570f), vec4<f32>(-137f, 150f, -883f, 763f))))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(365f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(926f)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f)), _wgslsmith_f_op_f32(floor(773f)))));
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = global0.a.x;
    global1 = array<Struct_1, 2>();
    let var_1 = global4[_wgslsmith_index_u32(1u >> (u_input.b.x % 32u), 16u)];
    var var_2 = _wgslsmith_f_op_f32(abs(var_1.d.b.x));
    let var_3 = vec3<u32>(0u, select(85130u, var_1.b, func_2(vec2<i32>(-14252i, var_1.a.x) ^ vec2<i32>(0i, u_input.d.x)).x & func_2(global0.c.xx & vec2<i32>(25167i, var_1.a.x)).x), _wgslsmith_sub_u32(~15442u, 0u));
    return Struct_3(vec3<i32>(-1i, min(var_1.a.x, u_input.d.x), abs(-14601i)), ~global0.b, firstTrailingBit(var_3), Struct_2(_wgslsmith_f_op_vec4_f32(var_1.d.a * _wgslsmith_f_op_vec4_f32(-var_1.d.b)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.a.x, _wgslsmith_f_op_f32(-var_1.d.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -939f), _wgslsmith_f_op_f32(floor(var_1.d.a.x)))))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec3<i32>) -> i32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -549f) - _wgslsmith_f_op_f32(max(-225f, 727f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -880f))))))));
    var var_0 = func_5(Struct_2(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(func_4(any(func_2(arg_3.zz)), arg_1))));
    let var_1 = !select(!func_3().yxx, select(vec3<bool>(arg_0, !arg_0, all(vec2<bool>(global3.x, false))), select(vec3<bool>(global3.x, true, global3.x), !vec3<bool>(false, arg_0, true), global3.x), !select(vec3<bool>(arg_0, true, global3.x), vec3<bool>(true, true, global3.x), true)), true == (-arg_3.x > min(var_0.a.x, var_0.a.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-766f, var_0.d.a.x)), _wgslsmith_f_op_f32(-var_0.d.b.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(999f * -2206f)))));
    var var_3 = _wgslsmith_mod_vec3_i32(abs(vec3<i32>(var_0.a.x, ~(-2147483647i), ~global0.c.x)), vec3<i32>(countOneBits(~func_5(var_0.d).a.x), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, arg_1.c.x, 10721i, -23279i), vec4<i32>(global0.c.x, -1i, arg_1.c.x, u_input.d.x)), arg_3.x), -1i));
    return -_wgslsmith_dot_vec2_i32(-vec2<i32>(-23757i, max(arg_1.c.x, arg_3.x)), min(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-10727i, 0i), u_input.d.wx)), u_input.d.wz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(select(firstLeadingBit(u_input.d), -u_input.d, vec4<bool>(true, true, true, true))), u_input.d), ~firstLeadingBit(vec4<i32>(~global0.c.x, ~u_input.d.x, -44662i, func_1(global3.x, global1[_wgslsmith_index_u32(30981u, 2u)], 68572u, u_input.d.wwz))));
    let var_1 = 1f;
    global1 = array<Struct_1, 2>();
    var_0 = abs(vec4<i32>(2346i, _wgslsmith_div_i32(-30184i, select(~u_input.d.x, 1i, !global3.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, global0.c.x), var_0.xw), _wgslsmith_add_i32(u_input.d.x, 11100i)), u_input.d.zxy), u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-127f)), _wgslsmith_f_op_vec4_f32(func_4(true, Struct_1(u_input.b | u_input.b, ~global0.a.x, _wgslsmith_div_vec3_i32(var_0.zyy, global0.c)))).x));
}

