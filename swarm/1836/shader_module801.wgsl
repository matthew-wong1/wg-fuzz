struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> i32 {
    let var_0 = _wgslsmith_div_i32(arg_0.x, firstTrailingBit(_wgslsmith_mod_i32(-31157i, arg_3.b.x) << (30800u % 32u)));
    var var_1 = arg_3;
    var var_2 = 2147483647i;
    return firstTrailingBit(_wgslsmith_mod_i32(-1i, arg_0.x));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = vec2<bool>(!(!(!global1.x)), global1.x || ((~1i >> (~4294967295u % 32u)) != u_input.b));
    let var_1 = -_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, u_input.a.x, func_3(vec2<i32>(-29188i, 2147483647i), Struct_1(u_input.e, false, arg_1, global1.xy, vec2<u32>(4294967295u, 48542u)), true, Struct_3(arg_0, u_input.a, vec3<bool>(true, global1.x, var_0.x), vec4<u32>(u_input.e.x, 0u, arg_1, 73451u), 1u)), 1i), _wgslsmith_add_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(6138i, 2147483647i, 32161i, 9010i), vec4<i32>(u_input.a.x, -2147483647i, u_input.b, 2147483647i), vec4<i32>(2147483647i, -1i, -11358i, -2147483647i)), ~vec4<i32>(27102i, u_input.b, -12071i, u_input.a.x)), ~(vec4<i32>(u_input.a.x, -1i, -2147483647i, u_input.a.x) << (vec4<u32>(0u, 10301u, 42201u, u_input.c) % vec4<u32>(32u)))));
    let var_2 = arg_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(396f, 1000f)))))));
    global0 = 592f;
    return 127f;
}

fn func_1() -> Struct_4 {
    let var_0 = select(vec2<bool>(true, false), global1.xz, any(!(!(!vec4<bool>(global1.x, false, global1.x, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(588f, 131f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_2(true), 1u)), _wgslsmith_f_op_f32(731f - -307f))), _wgslsmith_f_op_f32(select(-1513f, _wgslsmith_div_f32(624f, 880f), true)), -1362f)));
    global1 = !select(select(!select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(false, var_0.x, global1.x, var_0.x)), !select(vec4<bool>(true, global1.x, true, false), vec4<bool>(global1.x, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), select(select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(var_0.x, false, true, false), var_0.x), !vec4<bool>(var_0.x, true, true, false), global1.x)), vec4<bool>(true, all(var_0), u_input.d == _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, u_input.e.x)), !(!var_0.x)), _wgslsmith_div_u32(~6489u, ~108061u) != _wgslsmith_dot_vec2_u32(u_input.e.wz, vec2<u32>(1u, u_input.e.x) | vec2<u32>(u_input.c, 15210u)));
    let var_2 = u_input.b;
    let var_3 = ~u_input.d;
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1022f, -1247f, !global1.x))), false, Struct_1(~(~(u_input.e | u_input.e)), all(!select(vec4<bool>(false, var_0.x, global1.x, var_0.x), vec4<bool>(true, false, global1.x, var_0.x), false)), u_input.c, !var_0, ~(~(u_input.e.yz ^ u_input.e.zz))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = select(!vec4<bool>(!global1.x, func_1().c.d.x, func_1().b, global1.x), select(!select(!vec4<bool>(true, true, true, global1.x), select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(global1.x, global1.x, false, var_0.c.b), vec4<bool>(var_0.b, global1.x, var_0.c.d.x, false), vec4<bool>(true, false, false, false))), vec4<bool>(global1.x, any(select(vec2<bool>(global1.x, true), global1.zz, vec2<bool>(global1.x, global1.x))), reverseBits(var_0.d.x) > 7565i, false), vec4<bool>((var_0.a <= var_0.a) & false, var_0.d.x <= (u_input.a.x ^ 2147483647i), var_0.c.b, var_0.b)), select(vec4<bool>(_wgslsmith_clamp_u32(61473u, u_input.d, var_0.c.c) <= ~u_input.d, all(select(vec2<bool>(var_0.c.d.x, global1.x), vec2<bool>(var_0.c.d.x, var_0.c.b), global1.x)), var_0.b, !global1.x & global1.x), !select(select(vec4<bool>(var_0.b, true, true, global1.x), vec4<bool>(var_0.c.b, var_0.c.b, global1.x, var_0.c.b), false), !vec4<bool>(var_0.c.d.x, var_0.c.d.x, true, global1.x), select(vec4<bool>(var_0.c.d.x, true, var_0.c.d.x, var_0.b), vec4<bool>(false, global1.x, var_0.c.b, true), vec4<bool>(false, var_0.c.b, global1.x, var_0.c.b))), var_0.b));
    var var_1 = _wgslsmith_mod_vec3_i32(select(vec3<i32>(var_0.d.x, var_0.d.x, -_wgslsmith_add_i32(59827i, var_0.d.x)), vec3<i32>(var_0.d.x, max(u_input.b, u_input.a.x | u_input.a.x), u_input.b), global1.wzw), _wgslsmith_clamp_vec3_i32(u_input.a, var_0.d, -_wgslsmith_div_vec3_i32(var_0.d << (var_0.c.a.yzw % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(var_0.d, vec3<i32>(u_input.b, u_input.b, var_0.d.x), var_0.d))));
    let var_2 = vec3<u32>(u_input.e.x ^ 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(25560u, var_0.c.a.x, 1u, 4294967295u), ~vec4<u32>(4294967295u, 0u, 0u, var_0.c.e.x)), vec4<u32>(_wgslsmith_clamp_u32(13893u, 21601u, 1u), var_0.c.c ^ 1u, var_0.c.a.x, _wgslsmith_add_u32(26106u, 23352u))), ~(~var_0.c.a) << (~(vec4<u32>(u_input.c, var_0.c.a.x, var_0.c.c, var_0.c.c) << (vec4<u32>(1u, 1u, u_input.c, 94130u) % vec4<u32>(32u))) % vec4<u32>(32u))), abs(1u));
    var var_3 = func_1().c;
    let var_4 = vec2<u32>(0u, func_1().c.c);
    let var_5 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.a * 1237f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a, var_0.a)))))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) + vec2<f32>(var_0.a, -475f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))))))), all(select(global1.zxz, vec3<bool>(global1.x, u_input.a.x < -1i, true), vec3<bool>(global1.x && global1.x, !global1.x, var_2.x > var_0.c.e.x)))));
    let var_6 = _wgslsmith_clamp_vec4_u32(u_input.e, vec4<u32>(var_3.e.x, u_input.c | var_3.e.x, 4294967295u, var_0.c.c), ~var_3.a) & vec4<u32>(71022u, _wgslsmith_sub_u32(select(~u_input.c, ~var_2.x, global1.x || var_3.d.x), _wgslsmith_add_u32(24567u, 1u)), _wgslsmith_add_u32(~_wgslsmith_add_u32(var_2.x, var_0.c.a.x), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.e.x, 50234u), var_0.c.e))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~var_2.x, var_4.x), firstTrailingBit(vec2<i32>(var_0.d.x, u_input.b)), vec2<i32>(~87119i, 1i));
}

