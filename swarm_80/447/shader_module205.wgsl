struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32 = 19161u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_3) -> u32 {
    global0 = Struct_2(vec3<bool>(!arg_2, arg_2, select(arg_3.c.x, !global0.a.x, true)));
    var var_0 = Struct_4(arg_3.b, global0.a.x, arg_3.b.c.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.a.x, arg_3.b.a.x)), arg_3.b.a.zz))), ~vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.a.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 8634i, -22159i), vec4<i32>(1i, arg_3.b.b, arg_1.x, 2147483647i)), -(arg_1.x >> (arg_3.a.x % 32u)), -1i));
    global1 = ~(~_wgslsmith_add_u32(~(~4294967295u), ~arg_3.a.x));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(max(arg_0.x, 169f)), arg_3.b.a.x)), u_input.a.x, max(~vec2<u32>(arg_3.b.d, 7879u), var_0.a.c), _wgslsmith_sub_u32(~arg_3.b.d, arg_3.b.c.x)), true, arg_3.b.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.a.x, -199f)), arg_3.b.a.yx)) * vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x - -1196f), _wgslsmith_f_op_f32(f32(-1f) * -1105f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-791f, 1535f), vec2<f32>(var_0.a.a.x, -367f))), _wgslsmith_f_op_vec2_f32(trunc(var_0.a.a.ww))))), var_0.e);
    let var_2 = 1u;
    return select(~(arg_3.a.x | ~_wgslsmith_sub_u32(23479u, 5391u)), ~var_0.a.c.x ^ _wgslsmith_add_u32(var_0.c, 36269u | ~var_0.a.d), var_1.b);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_3) -> vec2<f32> {
    global1 = ~(~16733u);
    global1 = _wgslsmith_add_u32(~arg_1.x, ~arg_0.x);
    let var_0 = u_input.a.x << ((arg_0.x << ((select(func_3(arg_2.b.a.xzx, vec3<i32>(u_input.a.x, arg_2.b.b, -1i), false, arg_2), 49213u, arg_2.c.x) ^ ~0u) % 32u)) % 32u);
    global1 = _wgslsmith_clamp_u32(~arg_0.x, 4294967295u, 22247u);
    global1 = select(arg_0.x, ~(_wgslsmith_sub_u32(~arg_0.x, 1u) >> ((~4294967295u & select(arg_0.x, arg_0.x, arg_2.c.x)) % 32u)), ((-1137f > _wgslsmith_f_op_f32(sign(231f))) | false) != any(vec4<bool>(true, any(vec4<bool>(false, arg_2.c.x, arg_2.c.x, arg_2.c.x)), true, any(global0.a))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(arg_2.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -168f))), arg_2.b.a.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-733f, -137f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_2.b.a.zx)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.a.x, arg_2.b.a.x)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.b.a.x, arg_2.b.a.x), arg_2.b.a.yx, vec2<bool>(global0.a.x, true)))), arg_2.b.a.xx))));
}

fn func_1() -> vec2<f32> {
    global0 = Struct_2(!global0.a);
    global1 = 59561u;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(467f, -352f))) - _wgslsmith_f_op_vec2_f32(func_2(vec2<u32>(52541u, 0u), vec2<u32>(73329u, 4294967295u), Struct_3(vec2<u32>(42168u, 32515u), Struct_1(vec4<f32>(-1013f, -1434f, 1000f, 890f), 56192i, vec2<u32>(66264u, 54167u), 72884u), global0.a.xx)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -967f), _wgslsmith_f_op_f32(f32(-1f) * -1162f)), false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1063f)), 428f)), _wgslsmith_f_op_vec2_f32(func_2(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, 57980u), vec2<u32>(3976u, 54174u), false), vec2<u32>(1u, 1u)), Struct_3(vec2<u32>(1u, 1u), Struct_1(vec4<f32>(-852f, -1783f, 482f, -331f), u_input.a.x, vec2<u32>(1u, 4294967295u), 3054u), select(global0.a.yy, vec2<bool>(global0.a.x, global0.a.x), false)))).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1()))));
    var var_1 = false;
    var var_2 = abs(0u);
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -905f, 570f, -380f), vec4<f32>(2217f, var_0.x, -1000f, -1030f))), u_input.a.x, _wgslsmith_sub_vec2_u32(vec2<u32>(~0u, ~1u), _wgslsmith_mult_vec2_u32(vec2<u32>(44290u, 0u), countOneBits(vec2<u32>(31391u, 1u)))), select(46821u, 0u, true || all(vec4<bool>(true, global0.a.x, false, global0.a.x)))), global0.a.x, ~(~1u), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(467f, _wgslsmith_f_op_f32(-616f - 482f)))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -294f))), ~vec4<i32>(_wgslsmith_mod_i32(u_input.a.x >> (95227u % 32u), u_input.a.x), -2147483647i, countOneBits(i32(-1i) * -43061i), -1i));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_1()).x, 308f) + _wgslsmith_f_op_f32(var_3.d.x + -1793f));
    var var_5 = vec4<u32>(var_3.c, 0u, 34373u, firstTrailingBit(1u));
    let var_6 = global0.a;
    var var_7 = select(global0.a, global0.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1651f - -2312f)))), _wgslsmith_mod_vec4_i32(var_3.e, _wgslsmith_div_vec4_i32(min(vec4<i32>(1i, var_3.a.b, -36540i, var_3.e.x), var_3.e), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, var_3.e.x))) | vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, -2147483647i), 0i, _wgslsmith_clamp_i32(u_input.a.x, 12799i, var_3.a.b >> (0u % 32u)), select(1i, _wgslsmith_clamp_i32(0i, 0i, 584i), var_7.x)), abs(countOneBits(countOneBits(reverseBits(vec4<u32>(47974u, 24849u, var_5.x, 24346u))))));
}

