struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

var<private> global1: vec4<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    global0 = array<Struct_3, 3>();
    var var_0 = firstLeadingBit(firstTrailingBit(-2147483647i) & _wgslsmith_sub_i32(1i, 7933i));
    var var_1 = Struct_2(Struct_1(!vec4<bool>(false, true, true, u_input.b == 1u), u_input.a), Struct_1(!vec4<bool>(true, false, any(vec2<bool>(true, true)), true), u_input.a), _wgslsmith_mod_u32(_wgslsmith_sub_u32(21942u, ~_wgslsmith_sub_u32(1u, u_input.b)), _wgslsmith_sub_u32(u_input.a.x, ~select(u_input.c, u_input.a.x, true))), u_input.c, ~abs(vec4<u32>(~1u, abs(12703u), u_input.a.x, select(u_input.b, u_input.c, true))));
    global0 = array<Struct_3, 3>();
    let var_2 = var_1.d < (abs(firstLeadingBit(var_1.a.b.x) >> (u_input.b % 32u)) >> (1u % 32u));
    return var_1.b.a;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = 63838u;
    let var_1 = Struct_2(Struct_1(func_3(), (~vec3<u32>(u_input.a.x, arg_1.x, arg_1.x) & u_input.a) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(19253u, 4294967295u, u_input.a.x), abs(vec3<u32>(arg_1.x, 4294967295u, 7584u)))), Struct_1(vec4<bool>((arg_3.a.x && arg_2.c.x) != select(false, true, arg_0.c.x), any(vec4<bool>(arg_3.c.x, true, false, arg_3.c.x)), arg_0.a.x, false), vec3<u32>(~40521u ^ u_input.c, 1u, abs(u_input.a.x) | ~3404u)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, 4294967295u, 657u, 0u), vec4<u32>(_wgslsmith_mult_u32(arg_1.x, arg_1.x), 54265u, 43150u >> (u_input.c % 32u), min(u_input.c, arg_1.x))), u_input.b), _wgslsmith_mod_u32(arg_1.x, ~arg_1.x), ~max(countOneBits(vec4<u32>(55045u, arg_1.x, arg_1.x, u_input.c)), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(4294967295u, u_input.b, u_input.a.x, 18872u), vec4<u32>(91506u, 0u, 36606u, u_input.b)), vec4<u32>(u_input.a.x, arg_1.x, arg_1.x, arg_1.x), ~vec4<u32>(0u, u_input.c, arg_1.x, 0u))));
    let var_2 = Struct_3(var_1.a.a.zz, _wgslsmith_f_op_f32(379f * -1013f), select(var_1.a.a.yw, vec2<bool>(any(var_1.a.a.yx), true), !vec2<bool>(arg_3.c.x, select(var_1.a.a.x, arg_0.a.x, false))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1121f, arg_0.b, -470f, var_2.b)))))), vec4<f32>(-1671f, arg_2.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_2.b)))), arg_2.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b - var_2.b) * _wgslsmith_f_op_f32(1000f * global1.x)), arg_3.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2248f - var_2.b))))));
    let var_3 = reverseBits(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(0u, 36933u)), ~(u_input.a.xz & arg_1) & _wgslsmith_clamp_vec2_u32(var_1.b.b.yy, ~vec2<u32>(var_1.c, 48149u), select(var_1.e.yz, u_input.a.yx, vec2<bool>(true, false)))));
    return vec3<u32>(~(_wgslsmith_sub_u32(~21469u, max(1u, u_input.b)) ^ var_3.x), ~2119u, 3926u);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = u_input.a.x;
    let var_1 = arg_0.zy;
    var var_2 = func_3().x;
    var var_3 = Struct_1(func_3(), vec3<u32>(~firstLeadingBit(var_1.x), arg_0.x, 4294967295u));
    var var_4 = !(!any(arg_3.a));
    return arg_1;
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = func_4(firstTrailingBit(func_2(global0[_wgslsmith_index_u32(u_input.b >> (0u % 32u), 3u)], u_input.a.zx, Struct_3(vec2<bool>(true, false), -1029f, vec2<bool>(false, false)), global0[_wgslsmith_index_u32(~4294967295u, 3u)]) >> (countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.c, u_input.b), vec3<u32>(4853u, 10799u, u_input.b))) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(~1u, 3u)], _wgslsmith_clamp_u32(max(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 118165u, 4294967295u, 32315u), vec4<u32>(14927u, 16457u, u_input.a.x, 4294967295u)), u_input.c, true), 51577u), _wgslsmith_mod_u32(u_input.a.x, u_input.c << (max(u_input.b, 43906u) % 32u)), max(_wgslsmith_mult_u32(1u, 0u), u_input.c)), Struct_3(!vec2<bool>(true, arg_0 < arg_0), -269f, select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, false)), -201f >= _wgslsmith_f_op_f32(global1.x - global1.x))));
    let var_1 = Struct_1(func_3(), _wgslsmith_div_vec3_u32(countOneBits(~(~u_input.a)), u_input.a));
    global0 = array<Struct_3, 3>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, var_0.b, -368f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 318f, 914f, -548f), vec4<f32>(global1.x, -228f, -880f, global1.x), var_1.a.x))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1088f, -1375f, 1071f, var_0.b)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_div_f32(1419f, 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1427f)))), _wgslsmith_f_op_f32(1265f + _wgslsmith_div_f32(1000f, 1208f)), _wgslsmith_f_op_f32(-func_4(u_input.a, global0[_wgslsmith_index_u32(u_input.b, 3u)], var_1.b.x, global0[_wgslsmith_index_u32(0u, 3u)]).b)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(12357i);
    var var_1 = global1.x;
    let var_2 = firstLeadingBit(abs(min(~u_input.a.xz, u_input.a.yx | u_input.a.zx))) | (vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.a.x, 22594u), vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c)), 4294967295u), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.b, u_input.c)), vec2<u32>(u_input.a.x, 1u) >> (u_input.a.zx % vec2<u32>(32u)))) ^ (vec2<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, 4294967295u, u_input.c), vec4<u32>(4294967295u, u_input.c, u_input.a.x, u_input.c))) ^ vec2<u32>(~u_input.a.x, u_input.a.x)));
    var var_3 = Struct_1(vec4<bool>(true && any(vec2<bool>(true, true)), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), false)), false, true), ~vec3<u32>(var_2.x, var_2.x, max(~55607u, ~var_2.x)));
    var var_4 = var_3.b.x;
    let var_5 = func_4(u_input.a, func_4(vec3<u32>(~var_3.b.x, ~4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.b), u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 0u, 4219u), u_input.a))), Struct_3(vec2<bool>(all(vec4<bool>(var_3.a.x, true, var_3.a.x, var_3.a.x)), var_3.a.x), 249f, !(!var_3.a.zz)), ~1u, global0[_wgslsmith_index_u32(~var_2.x, 3u)]), 58031u ^ _wgslsmith_dot_vec4_u32(~select(vec4<u32>(var_3.b.x, 0u, 1u, 48326u), vec4<u32>(u_input.a.x, var_3.b.x, u_input.c, 1u), var_3.a), abs(vec4<u32>(0u, 7404u, 4294967295u, 21905u) << (vec4<u32>(var_2.x, var_3.b.x, 804u, 1u) % vec4<u32>(32u)))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~func_2(Struct_3(var_3.a.wy, -824f, var_3.a.yw), vec2<u32>(6291u, u_input.b), Struct_3(var_3.a.xy, -167f, var_3.a.zw), Struct_3(vec2<bool>(false, true), global1.x, vec2<bool>(var_3.a.x, var_3.a.x))).x, var_3.b.x, 4294967295u) | (~var_3.b.x >> (_wgslsmith_mod_u32(~u_input.b, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) % 32u)), 3u)]);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(min(vec3<i32>(abs(10706i), 2147483647i, max(6207i, 28319i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 11252i), vec3<i32>(-28992i, -1447i, 31148i)), 1i, ~(-19899i)))), select(abs(-698i), _wgslsmith_add_i32(firstTrailingBit(9530i), -1i >> (var_2.x % 32u)) | 18486i, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.yz * vec2<f32>(889f, 352f))) * _wgslsmith_f_op_vec2_f32(max(global1.xy, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, var_5.b), global1.zy))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2593f))), global1.x)), ~var_2.x, u_input.a.x);
}

