struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<u32>(23228u, 4294967295u, 11356u, 4294967295u), vec4<bool>(true, true, false, true), 1748f, vec4<f32>(-872f, 1405f, 2034f, 441f)), Struct_1(vec4<u32>(52563u, 18720u, 4294967295u, 46672u), vec4<bool>(false, false, false, true), 119f, vec4<f32>(-401f, -363f, 194f, -259f)), Struct_1(vec4<u32>(1u, 22654u, 70433u, 4294967295u), vec4<bool>(true, true, true, false), -1208f, vec4<f32>(303f, -543f, 1252f, -317f)), Struct_1(vec4<u32>(0u, 0u, 15187u, 388u), vec4<bool>(true, true, true, true), 1251f, vec4<f32>(-1000f, -242f, -1000f, 156f)), Struct_1(vec4<u32>(704u, 11724u, 40842u, 34048u), vec4<bool>(true, false, true, false), -928f, vec4<f32>(-541f, 112f, -1650f, 317f)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(global1.d.a ^ firstLeadingBit(~_wgslsmith_add_vec4_u32(global0.a, global1.c.a)));
    var_0 = Struct_3(~global0.a);
    let var_1 = _wgslsmith_mult_u32(abs(firstTrailingBit(_wgslsmith_mod_u32(global0.a.x, global0.a.x) & (1u | var_0.a.x))), countOneBits(~72135u));
    var var_2 = reverseBits(vec2<u32>(global1.c.a.x, global1.a.a.x));
    var_0 = Struct_3(global0.a);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_1, var_1), ~var_1), 4294967295u) & vec2<u32>(13691u, var_1 >> (1u % 32u)), vec2<u32>(max(48845u, ~var_2.x), global0.a.x) << (abs(~vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_5, arg_3: u32) -> vec2<i32> {
    let var_0 = Struct_3(~min(min(abs(global0.a), global1.e.a), vec4<u32>(~global0.a.x, _wgslsmith_add_u32(u_input.b, 4294967295u), global1.a.a.x, func_3())));
    let var_1 = arg_2.a.x;
    global0 = var_0;
    var var_2 = vec2<bool>((var_1 << (1u % 32u)) != u_input.c.x, global1.d.b.x);
    var var_3 = var_2.x;
    return arg_2.a;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: u32) -> Struct_3 {
    var var_0 = -2147483647i;
    var_0 = countOneBits(_wgslsmith_dot_vec3_i32(u_input.c.xyz, _wgslsmith_add_vec3_i32(u_input.c.wwy, countOneBits(u_input.c.zwy | u_input.c.zzx))));
    let var_1 = Struct_3(_wgslsmith_add_vec4_u32(countOneBits(~(~global0.a)), vec4<u32>(~abs(u_input.b), 0u, reverseBits(u_input.b), global0.a.x)));
    global1 = Struct_2(global1.e, global1.a, global1.c, Struct_1(vec4<u32>(_wgslsmith_mult_u32(arg_2, u_input.b), var_1.a.x, max(global1.e.a.x, 4294967295u) ^ _wgslsmith_dot_vec4_u32(var_1.a, global0.a), ~0u), vec4<bool>(!arg_1.x, arg_1.x, arg_1.x, true), _wgslsmith_div_f32(-502f, global1.c.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(global1.c.d)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1095f, global1.b.c, global1.c.d.x, global1.a.d.x))))), global1.c);
    global0 = Struct_3(~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_2, 15970u, var_1.a.x), global1.d.a) << (vec4<u32>(arg_2, _wgslsmith_mod_u32(global1.a.a.x, u_input.b), 4294967295u, 44290u ^ global1.b.a.x) % vec4<u32>(32u))));
    return Struct_3(vec4<u32>(global1.e.a.x, arg_2, _wgslsmith_dot_vec4_u32(~(~var_1.a), _wgslsmith_clamp_vec4_u32(global1.b.a, global0.a, global0.a) << (~var_1.a % vec4<u32>(32u))), u_input.b));
}

fn func_1(arg_0: Struct_3) -> bool {
    var var_0 = func_4(_wgslsmith_dot_vec2_i32(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -13843i), vec2<i32>(-24595i, 62706i))), func_2(u_input.c.x << (u_input.b % 32u), -(u_input.c.x ^ -27322i), Struct_5(vec2<i32>(u_input.c.x, u_input.c.x), global1.b.d.ywz), ~max(9089u, global0.a.x))), !(!global1.a.b.zx), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global1.e.a.x, global1.b.a.x, global1.e.a.x, global1.d.a.x), global1.b.a), ~max(~vec4<u32>(4294967295u, arg_0.a.x, 69719u, u_input.a), vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a) & arg_0.a)));
    var_0 = Struct_3(global1.d.a);
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(65982u, 1u, arg_0.a.x), ~vec3<u32>(~global0.a.x, 1u, global0.a.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(global1.c.d.wz))));
    var var_3 = u_input.c;
    return !(((var_3.x ^ _wgslsmith_add_i32(u_input.c.x, 2147483647i)) & ~1i) <= _wgslsmith_add_i32(abs(-18899i), 92402i));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_4) -> Struct_1 {
    global1 = Struct_2(global1.b, Struct_1(global1.a.a, arg_1.b.b, arg_1.b.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, -521f, 904f, 2111f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.b.d + vec4<f32>(-246f, global1.b.c, -1271f, -584f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.b.c, arg_1.d.x, global1.e.d.x, -673f)))))), arg_1.b, arg_1.b, arg_1.b);
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global1.c.a.ww, vec2<u32>(1u, 1u)), vec2<u32>(global1.e.a.x, ~u_input.a >> (44906u % 32u)));
    global0 = func_4(_wgslsmith_dot_vec2_i32(-firstTrailingBit(u_input.c.wz), u_input.c.yy), global1.e.b.xx, abs(max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.a.x, 34781u, u_input.a), vec4<u32>(1u, arg_1.c, arg_1.c, global1.e.a.x)), u_input.b) << (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 20531u, arg_0.x, 63392u), global0.a), 3564u) % 32u)));
    return Struct_1(func_4(u_input.c.x, select(vec2<bool>(all(vec2<bool>(true, arg_1.b.b.x)), global0.a.x < 1694u), !select(vec2<bool>(arg_1.b.b.x, arg_1.b.b.x), vec2<bool>(global1.a.b.x, false), true), select(vec2<bool>(false, true), select(vec2<bool>(false, true), global1.c.b.zz, vec2<bool>(false, arg_1.b.b.x)), all(vec4<bool>(true, global1.c.b.x, arg_1.b.b.x, arg_1.b.b.x)))), ~_wgslsmith_mult_u32(func_3(), arg_0.x)).a, select(!(!(!global1.c.b)), select(!select(vec4<bool>(false, true, false, true), arg_1.b.b, global1.d.b), vec4<bool>(!global1.e.b.x, true, any(global1.c.b.zx), !global1.b.b.x), vec4<bool>(!global1.a.b.x, true, true, true)), select(global1.b.b.x, true, any(!vec2<bool>(global1.c.b.x, arg_1.b.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.d.c, 226f, false)), 194f)), arg_1.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(29306u, 94325u >> ((~global0.a.x ^ 1u) % 32u));
    let var_1 = vec4<u32>(~0u, global1.b.a.x, var_0, var_0);
    var var_2 = global0.a.wwz;
    let var_3 = Struct_4(~global0.a.x, func_5(vec4<u32>(u_input.b, u_input.a, global1.e.a.x, min(reverseBits(21119u), abs(4294967295u))), Struct_4(max(var_0, global0.a.x) >> (select(80791u, 35787u, global1.b.b.x) % 32u), global1.c, 15397u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-476f, global1.c.c), _wgslsmith_f_op_vec2_f32(round(global1.a.d.xw)), func_1(Struct_3(global0.a)))))), _wgslsmith_div_u32(global1.d.a.x, ~56425u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.c.c, -1229f))));
    global0 = func_4(~func_2(-2147483647i, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.c.x), Struct_5(u_input.c.xx, vec3<f32>(var_3.b.c, global1.d.d.x, global1.b.d.x)), min(36735u, 4294967295u)).x & u_input.c.x, func_5(vec4<u32>(~14034u, ~4769u >> (var_3.b.a.x % 32u), _wgslsmith_dot_vec4_u32(var_3.b.a | vec4<u32>(18251u, var_2.x, 9182u, var_0), _wgslsmith_sub_vec4_u32(global0.a, vec4<u32>(0u, 1u, var_2.x, 0u))), 0u), Struct_4(~var_0 >> (var_2.x % 32u), Struct_1(global0.a, func_5(vec4<u32>(6603u, var_2.x, 6806u, global0.a.x), Struct_4(var_1.x, Struct_1(var_3.b.a, global1.d.b, 213f, global1.d.d), 4294967295u, vec2<f32>(1221f, -2215f))).b, var_3.d.x, _wgslsmith_f_op_vec4_f32(floor(var_3.b.d))), global1.e.a.x ^ func_4(-2147483647i, vec2<bool>(var_3.b.b.x, var_3.b.b.x), var_0).a.x, vec2<f32>(1f, 1000f))).b.yw, ~69588u);
    let var_4 = u_input.c.x;
    var var_5 = _wgslsmith_f_op_f32(-global1.a.d.x);
    let var_6 = ~(max(var_3.b.a.ww, vec2<u32>(u_input.b, var_0)) >> (vec2<u32>(var_0, ~(~var_0)) % vec2<u32>(32u)));
    var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1192f) + _wgslsmith_f_op_f32(sign(-909f)))) + func_5(~vec4<u32>(var_0, u_input.b, _wgslsmith_dot_vec2_u32(var_1.yz, vec2<u32>(var_6.x, global1.b.a.x)), func_4(var_4, global1.b.b.ww, 36042u).a.x), Struct_4(var_6.x, global1.e, 5526u, vec2<f32>(_wgslsmith_div_f32(var_3.d.x, var_3.b.c), -1186f))).d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, 1i, _wgslsmith_dot_vec3_i32(u_input.c.xzx, u_input.c.zzz) >> (abs(10221u) % 32u)), min(vec4<i32>(u_input.c.x, var_4, -26692i, 17110i), u_input.c) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_3.b.a.x, var_0, 2843u), ~vec4<u32>(global0.a.x, u_input.a, 4294967295u, 30558u)) % vec4<u32>(32u))), global1.c.d.x);
}

