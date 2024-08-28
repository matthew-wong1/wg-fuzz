struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec3<f32> = vec3<f32>(-477f, 1241f, 1114f);

var<private> global2: u32 = 0u;

var<private> global3: i32 = -1i;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4) -> i32 {
    let var_0 = vec4<bool>(arg_1.d.x, arg_1.d.x, true, all(vec3<bool>(all(!arg_1.d.yx), arg_1.d.x, false)));
    var var_1 = ~arg_1.a.zyx;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-618f)) + _wgslsmith_f_op_f32(f32(-1f) * -1801f)));
    var var_3 = !select(!all(select(vec2<bool>(global4.a, false), vec2<bool>(var_0.x, false), true)), !(!arg_1.d.x), arg_1.d.x);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(arg_0.x, -1000f), _wgslsmith_div_f32(1000f, -1877f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 632f, -1000f)))))));
    return arg_1.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_4) -> vec4<i32> {
    let var_0 = Struct_4(vec4<u32>(arg_1, abs(1u), ~4294967295u, ~firstTrailingBit(arg_1)), vec4<i32>(-1i) * -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -1364i, arg_3.c, -1i), vec4<i32>(48875i, -5295i, 12106i, -14507i))), arg_2.x, select(arg_3.d, select(select(!vec4<bool>(true, arg_3.d.x, true, true), !arg_3.d, arg_3.d.x), arg_3.d, ~1u >= _wgslsmith_add_u32(arg_1, 4294967295u)), any(!arg_3.d.xz)));
    global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1517f, global1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(290f, global1.x, _wgslsmith_f_op_f32(-global1.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1869f * 437f))), global1.x, _wgslsmith_f_op_f32(-global1.x))));
    global0 = (max(arg_3.c, arg_3.c >> (arg_1 % 32u)) >> (_wgslsmith_sub_u32(arg_1, 4294967295u) % 32u)) << (0u % 32u);
    global2 = _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mod_u32(97765u, countOneBits(1u))), reverseBits(abs(_wgslsmith_mult_u32(71002u, var_0.a.x)))));
    global0 = arg_2.x << (~(~arg_1) % 32u);
    return (select(vec4<i32>(arg_2.x, -26755i, func_3(vec2<f32>(global1.x, -798f), Struct_4(var_0.a, var_0.b, arg_2.x, arg_3.d)), -arg_0.x), reverseBits(countOneBits(vec4<i32>(u_input.a.x, 1i, 0i, arg_2.x))), global4.a) | -(~firstTrailingBit(u_input.b))) ^ (arg_3.b >> (min(~vec4<u32>(arg_1, 34837u, 4294967295u, 4294967295u), _wgslsmith_mod_vec4_u32(~vec4<u32>(123242u, arg_3.a.x, 85455u, arg_3.a.x), var_0.a)) % vec4<u32>(32u)));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: u32) -> vec3<i32> {
    global2 = ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 62292u, arg_3) ^ vec3<u32>(70218u, arg_3, 18430u), firstTrailingBit(vec3<u32>(58351u, arg_3, 1u))), arg_3), 32684u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, 1751u), ~max(vec2<u32>(1u, arg_3), vec2<u32>(4294967295u, arg_3))));
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f) + _wgslsmith_f_op_f32(sign(global1.x))) * -230f)));
    return _wgslsmith_mod_vec3_i32(arg_1.wyw, countOneBits(u_input.b.yzx));
}

fn func_1() -> vec4<bool> {
    var var_0 = select(!(!vec3<bool>(true, true, all(vec4<bool>(global4.a, global4.a, global4.a, global4.a)))), select(!vec3<bool>(global4.a, false, true), !vec3<bool>(select(false, global4.a, global4.a), true, true), true), !global4.a);
    let var_1 = Struct_3(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.wxx, func_4(global1.x, func_2(u_input.a, 11442u, vec3<i32>(u_input.a.x, u_input.b.x, 1i), Struct_4(vec4<u32>(1u, 41360u, 24968u, 1u), vec4<i32>(0i, u_input.b.x, -48544i, u_input.b.x), 0i, vec4<bool>(global4.a, false, true, var_0.x))), Struct_2(true, -25524i, vec4<bool>(false, var_0.x, global4.a, false)), 0u)), firstLeadingBit(u_input.a)), u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1888f));
    var var_2 = var_0.zx;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, -806f)) - var_1.c));
    let var_4 = vec3<bool>(var_2.x, any(select(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, var_0.x, true, global4.a), vec4<bool>(true, true, false, true), vec4<bool>(var_2.x, false, var_2.x, global4.a)), true), vec4<bool>(true, !global4.a, all(var_0.xz), 1000f > var_1.c), all(vec4<bool>(false, true, var_2.x, false)))), false);
    return !select(vec4<bool>(global4.a, !any(vec4<bool>(true, global4.a, false, var_4.x)), true, true), vec4<bool>(var_1.b <= countOneBits(u_input.b.x), (var_1.b == -50828i) || var_2.x, false, any(var_0.zy)), any(!select(vec4<bool>(var_4.x, var_2.x, var_2.x, true), vec4<bool>(var_0.x, true, false, var_4.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec4<u32>(~0u, ~_wgslsmith_add_u32(28034u, 46731u), ~min(~3238u, _wgslsmith_mod_u32(1u, 4294967295u)), 4294967295u), vec4<i32>(-u_input.a.x, _wgslsmith_add_i32(u_input.a.x | u_input.a.x, _wgslsmith_clamp_i32(u_input.b.x, 15713i, u_input.b.x) | -u_input.a.x), -1i, ~(-min(22114i, -2147483647i))), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(34444i, u_input.a.x, -56559i, -16663i)), u_input.b), select(!vec4<bool>(global4.a, select(global4.a, true, global4.a), all(vec3<bool>(global4.a, global4.a, global4.a)), global4.a), vec4<bool>(true, true, !all(vec4<bool>(global4.a, global4.a, global4.a, false)), any(!vec4<bool>(true, false, global4.a, false))), select(vec4<bool>(false, all(vec2<bool>(true, global4.a)), false, true), !(!vec4<bool>(global4.a, global4.a, false, false)), vec4<bool>(false, select(false, true, false), all(vec4<bool>(global4.a, global4.a, global4.a, global4.a)), true))));
    var var_1 = !var_0.d.zy;
    global3 = 1i;
    global4 = Struct_1(false);
    let var_2 = Struct_3(u_input.b.wyz, ~(-55519i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f), global1.x)), _wgslsmith_f_op_f32(max(1000f, -1147f))));
    let var_3 = var_1.x;
    var var_4 = true;
    let var_5 = Struct_4(vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_add_u32(4294967295u, var_0.a.x)), 9372u, ~6854u << (~var_0.a.x % 32u)), 1u, ~var_0.a.x << (var_0.a.x % 32u), 0u), -vec4<i32>(~u_input.b.x, -u_input.b.x | _wgslsmith_div_i32(u_input.a.x, -25232i), _wgslsmith_div_i32(reverseBits(1i), var_0.b.x), (u_input.b.x & 17414i) & u_input.a.x), abs(-37988i), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_5.b));
}

