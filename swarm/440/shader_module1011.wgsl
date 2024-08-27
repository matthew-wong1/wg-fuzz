struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 25>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool, arg_3: i32) -> vec4<u32> {
    let var_0 = ~_wgslsmith_add_vec2_i32(arg_0.a.b.yx, min(_wgslsmith_div_vec2_i32(vec2<i32>(17195i, 2147483647i), vec2<i32>(17096i, arg_0.a.b.x)), -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_3, -4611i), vec2<i32>(-1i, arg_3))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(-994f)), _wgslsmith_f_op_f32(min(global0.x, global0.x)), 1279f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, -850f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-300f, global0.x, 218f))))));
    var var_2 = select(vec4<bool>(all(arg_1.zx), -1000f >= _wgslsmith_div_f32(406f, _wgslsmith_div_f32(var_1.x, var_1.x)), true, !any(vec4<bool>(true, true, arg_0.a.a, false))), !select(select(vec4<bool>(arg_2, false, arg_0.a.a, arg_1.x), select(vec4<bool>(arg_0.a.a, arg_2, false, arg_0.a.a), vec4<bool>(true, true, false, false), vec4<bool>(arg_2, true, arg_0.a.a, arg_2)), -376f != var_1.x), !vec4<bool>(true, arg_0.a.a, false, true), vec4<bool>(arg_2 || arg_0.a.a, !arg_0.a.a, !arg_0.a.a, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(208f))) < _wgslsmith_f_op_f32(f32(-1f) * -1136f));
    global0 = _wgslsmith_f_op_vec2_f32(-var_1.zz);
    var var_3 = arg_0;
    return select(vec4<u32>(abs(1u) | firstTrailingBit(~18861u), ~(~4294967295u), firstLeadingBit(~_wgslsmith_add_u32(6788u, 37809u)), 7615u), ~vec4<u32>(1u, ~33921u, 56796u, 1u & _wgslsmith_clamp_u32(4294967295u, 0u, 37757u)), all(var_2.ywx));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global1 = arg_0;
    global2 = array<Struct_1, 25>();
    var var_0 = abs(_wgslsmith_sub_vec4_u32(firstTrailingBit(firstLeadingBit(vec4<u32>(97955u, arg_0, arg_0, arg_0))), abs(vec4<u32>(4294967295u, arg_0, arg_0, 28112u)))) >> (_wgslsmith_mult_vec4_u32(select(func_3(Struct_2(Struct_1(true, vec4<i32>(-39236i, 0i, 0i, -7498i))), vec3<bool>(false, arg_2.a, arg_3.a.a), true, ~0i), vec4<u32>(countOneBits(4294967295u), ~1u, arg_0 ^ 1u, arg_0), arg_3.a.a), vec4<u32>(arg_0, arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(20715u, 53582u, 0u), vec3<u32>(49399u, 0u, 4294967295u)) | arg_0, ~_wgslsmith_sub_u32(arg_0, 4294967295u))) % vec4<u32>(32u));
    var var_1 = arg_3;
    global2 = array<Struct_1, 25>();
    return arg_3;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    var var_0 = arg_0.a.a;
    var_0 = false;
    var_0 = global0.x > -1619f;
    let var_1 = -1000f;
    global1 = func_3(func_2(_wgslsmith_mult_u32(min(1u, 55969u), 1u), 1000f, func_2(0u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-800f - var_1), _wgslsmith_f_op_f32(step(1125f, -269f)), false)), func_2(1u, var_1, global2[_wgslsmith_index_u32(~9164u, 25u)], Struct_2(arg_0.a)).a, arg_0).a, arg_0), !select(!select(vec3<bool>(false, false, false), vec3<bool>(true, arg_0.a.a, false), arg_0.a.a), vec3<bool>(any(vec4<bool>(true, false, arg_0.a.a, false)), arg_0.a.b.x != -1i, arg_1), any(select(vec3<bool>(true, arg_0.a.a, arg_0.a.a), vec3<bool>(false, arg_1, true), vec3<bool>(arg_0.a.a, arg_1, arg_0.a.a)))), arg_0.a.a, ~(arg_0.a.b.x >> (4294967295u % 32u))).x;
    return Struct_2(Struct_1(all(vec4<bool>(arg_0.a.a, true, true, select(true, arg_0.a.a, arg_0.a.a))), _wgslsmith_sub_vec4_i32(vec4<i32>(max(1i, arg_0.a.b.x), u_input.a, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 25349i, arg_0.a.b.x, 0i), arg_0.a.b)), ~vec4<i32>(30992i, u_input.a, 0i, u_input.a))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = true;
    var var_1 = ~firstLeadingBit(firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(58548u, 13307u, 19451u))));
    global0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, -605f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-596f - -464f), _wgslsmith_f_op_f32(f32(-1f) * -387f))))));
    return abs(countOneBits(vec3<i32>(firstTrailingBit(-1i), -10955i, ~u_input.a)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    global1 = _wgslsmith_mult_u32(~((arg_0 >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, arg_0, 4338u), vec4<u32>(arg_0, arg_0, 22492u, 9642u)) % 32u)) >> (countOneBits(arg_0) % 32u)), ~(~_wgslsmith_add_u32(_wgslsmith_add_u32(arg_0, 21913u), arg_0)));
    var var_0 = abs(-func_5(19502i, func_4(func_2(arg_0, global0.x, Struct_1(arg_1.a, vec4<i32>(-2147483647i, u_input.a, u_input.a, arg_2)), Struct_2(Struct_1(false, arg_1.b))), !arg_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -409f)), Struct_1(true, vec4<i32>(u_input.a, arg_2, arg_2, 0i))));
    global1 = arg_0;
    var var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-732f, -1484f, -960f, 2187f)))))));
    return vec2<bool>(func_2(~84231u, var_2.x, arg_1, func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, 4294967295u, 1u), ~vec4<u32>(56020u, 0u, 17919u, 0u)), var_2.x, func_4(Struct_2(Struct_1(arg_1.a, arg_1.b)), all(vec2<bool>(arg_1.a, arg_1.a))).a, Struct_2(Struct_1(true, arg_1.b)))).a.a, arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(0u, 25u)];
    var var_1 = select(select(!select(vec2<bool>(true, var_0.a), !vec2<bool>(var_0.a, var_0.a), true), select(select(!vec2<bool>(var_0.a, false), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a), vec2<bool>(true, true)), true), vec2<bool>(true, true), func_1(~17144u, Struct_1(var_0.a, var_0.b), i32(-1i) * -2147483647i)), select(vec2<bool>(any(vec3<bool>(false, true, false)), !var_0.a), !select(vec2<bool>(true, true), vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, false)), !vec2<bool>(false, var_0.a))), select(func_1(83872u, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(99957u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 35555u, 4294967295u, 67366u)), abs(4294967295u)), 25u)], reverseBits(var_0.b.x)), func_1(~reverseBits(95002u), global2[_wgslsmith_index_u32(3675u, 25u)], var_0.b.x), !(!vec2<bool>(var_0.a, false))), !any(vec4<bool>(true, !var_0.a, true, func_1(14436u, Struct_1(false, var_0.b), var_0.b.x).x)));
    var_1 = vec2<bool>(false, false);
    global2 = array<Struct_1, 25>();
    let var_2 = Struct_2(Struct_1(true & func_1(58144u, global2[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_sub_i32(u_input.a, var_0.b.x)).x, var_0.b));
    let var_3 = func_5(~(-reverseBits(select(2147483647i, -1i, var_1.x))), func_2(_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(96049u, 0u, 4294967295u)) ^ _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), ~4294967295u), global0.x, Struct_1(true, _wgslsmith_mod_vec4_i32(vec4<i32>(12514i, var_0.b.x, -2147483647i, var_2.a.b.x), ~var_2.a.b)), func_2(67733u, 316f, var_2.a, var_2)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(133f * -432f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -521f)))), global0.x, _wgslsmith_f_op_f32(global0.x * -1141f)), func_2(30347u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), var_2.a, Struct_2(Struct_1(true, var_0.b))).a).x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(countOneBits(_wgslsmith_dot_vec4_i32(~var_0.b, _wgslsmith_clamp_vec4_i32(var_0.b, var_0.b, var_2.a.b))), u_input.a), ~select(reverseBits(~vec2<u32>(32201u, 1u)), vec2<u32>(~1u, func_3(Struct_2(Struct_1(var_0.a, var_2.a.b)), vec3<bool>(true, false, var_1.x), false, -8239i).x), func_4(var_2, true).a.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(234f, global0.x, global0.x), vec3<f32>(global0.x, -281f, global0.x)))), vec3<f32>(-1127f, _wgslsmith_div_f32(global0.x, 1752f), _wgslsmith_f_op_f32(min(360f, global0.x))), false)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), 950f, -421f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(895f, 1214f, global0.x), vec3<f32>(-1591f, -348f, global0.x)))), true))), var_0.b.yzx, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global0.x)), -785f)));
}

