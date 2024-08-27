struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_3, 21>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = countOneBits(reverseBits(u_input.b.xz));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1239f)));
    var var_2 = !select(!vec4<bool>(true, true, false, all(vec2<bool>(false, true))), vec4<bool>(global0.x, true, false, arg_0.x), select(select(vec4<bool>(true, global0.x, false, arg_0.x), !vec4<bool>(global0.x, false, arg_0.x, false), vec4<bool>(true, global0.x, true, false)), select(!vec4<bool>(global0.x, arg_0.x, true, global0.x), vec4<bool>(true, arg_0.x, arg_0.x, global0.x), vec4<bool>(true, arg_0.x, false, false)), select(select(vec4<bool>(global0.x, true, false, arg_0.x), vec4<bool>(arg_0.x, false, false, false), global0.x), vec4<bool>(arg_0.x, global0.x, arg_0.x, false), true)));
    var var_3 = -(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.e, 0i), 15928i), ~var_0.x & ~(-1i)) ^ _wgslsmith_sub_i32(~(var_0.x | 0i), u_input.a.x));
    global1 = array<Struct_3, 21>();
    return -371f;
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> i32 {
    global0 = select(select(vec4<bool>(true, all(select(vec3<bool>(false, true, global0.x), arg_2, global0.x)), arg_3.x, arg_2.x), vec4<bool>(any(vec4<bool>(arg_3.x, false, true, arg_3.x)), _wgslsmith_dot_vec3_u32(u_input.d.yzy, vec3<u32>(11517u, 5446u, 64543u)) != _wgslsmith_dot_vec3_u32(u_input.c.xxw, u_input.c.zzz), all(select(arg_2.yz, arg_3, vec2<bool>(global0.x, true))), true), !(!vec4<bool>(global0.x, true, global0.x, true))), select(!select(vec4<bool>(false, arg_2.x, false, global0.x), select(vec4<bool>(arg_3.x, false, true, arg_2.x), vec4<bool>(global0.x, arg_2.x, arg_3.x, false), arg_2.x), !vec4<bool>(arg_3.x, arg_2.x, false, arg_2.x)), !(!vec4<bool>(true, true, arg_3.x, true)), false), select(select(!select(vec4<bool>(global0.x, arg_2.x, true, global0.x), vec4<bool>(true, global0.x, arg_2.x, false), vec4<bool>(true, false, true, arg_3.x)), vec4<bool>(true, !arg_2.x, false, arg_3.x), vec4<bool>(!global0.x, u_input.e <= u_input.e, true, true)), select(vec4<bool>(true, 1147f > arg_0.x, all(vec3<bool>(false, false, true)), true), vec4<bool>(true, true, arg_2.x, global0.x), vec4<bool>(false, all(arg_3), arg_3.x, arg_2.x)), true));
    let var_0 = u_input.a.x;
    let var_1 = 4294967295u;
    global1 = array<Struct_3, 21>();
    global1 = array<Struct_3, 21>();
    return firstLeadingBit(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.e, var_0)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, 11049i), vec3<i32>(-2147483647i, 2147483647i, -2147483647i)), reverseBits(8163i))) >> (firstLeadingBit(~abs(arg_1)) % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_3) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.a.x, arg_1.b) ^ min(vec2<i32>(u_input.a.x, 2147483647i), u_input.a.wy), vec2<i32>(2147483647i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -80761i, u_input.b.x))) == 36568i;
    var var_1 = Struct_2(1008f, (1i | countOneBits(min(4853i, u_input.b.x))) == firstLeadingBit(-1i), vec2<i32>(0i, min(0i, u_input.b.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1528f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, 1148f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.e), 126f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a - arg_1.e), var_1.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(434f, -486f, -2219f, -1252f) * vec4<f32>(arg_1.e, -1822f, -202f, -1876f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, arg_2.a, arg_2.a, var_1.a) * vec4<f32>(arg_1.e, arg_1.e, var_1.a, -1000f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, arg_2.a, -1280f, arg_2.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, arg_1.e, -1221f, 152f) + vec4<f32>(var_1.a, arg_1.e, 793f, var_1.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, -1026f, -650f, 174f) + vec4<f32>(867f, 649f, -478f, arg_1.e)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-826f, -992f, arg_1.e, var_1.a)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1546f, arg_2.a, 1346f, arg_1.e) + vec4<f32>(arg_1.e, arg_1.e, 1312f, arg_1.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -2915f, 845f, var_1.a))))))));
    var_1 = Struct_2(1093f, false, ~var_1.c);
    var var_3 = Struct_1(var_1.c.x, ~_wgslsmith_clamp_vec4_i32(u_input.b, -vec4<i32>(2147483647i, arg_1.b, 7601i, u_input.e), _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(-8935i, -2147483647i, -2147483647i, u_input.a.x))) & u_input.a, all(select(global0.xw, vec2<bool>(var_0, !var_0), !var_1.b)), arg_1.e);
    return 919f;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2190f, 856f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1834f))));
    let var_1 = u_input.a.zyy;
    var var_2 = Struct_1(-15212i, firstLeadingBit(reverseBits(select(vec4<i32>(53460i, var_1.x, -2147483647i, var_1.x) & u_input.a, u_input.b, vec4<bool>(arg_0, global0.x, arg_0, arg_0)))), global0.x, _wgslsmith_f_op_f32(floor(arg_1)));
    let var_3 = vec4<bool>(false, arg_0, var_2.c, true);
    global1 = array<Struct_3, 21>();
    return _wgslsmith_f_op_f32(func_4(20727u, Struct_4(-61329i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b.x, var_1.x), func_3(vec4<f32>(180f, -1470f, var_2.d, var_2.d), arg_2, global0.xyx, var_3.wy)), var_1.x), 16546u, (vec2<u32>(1u, 1u) | u_input.d.xy) ^ vec2<u32>(~0u, ~24903u), _wgslsmith_f_op_f32(f32(-1f) * -356f)), global1[_wgslsmith_index_u32(arg_2, 21u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, global0.x, global0.x, true);
    let var_1 = vec4<bool>(true, var_0.x, !any(select(vec2<bool>(global0.x, global0.x), select(global0.yy, global0.zw, vec2<bool>(var_0.x, global0.x)), global0.yz)), false);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(var_1.yyw)), _wgslsmith_f_op_f32(-588f + 1444f)), _wgslsmith_f_op_f32(func_2(!var_1.x, _wgslsmith_f_op_f32(-1367f + -1798f), u_input.d.x)), 967f)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 633f, 977f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-232f, 414f, -858f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(254f, -1000f, -523f), vec3<f32>(1958f, 750f, -242f))))))));
    global1 = array<Struct_3, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x) - vec3<f32>(381f, -408f, var_2.x)), vec3<f32>(317f, var_2.x, var_2.x))))))));
}

