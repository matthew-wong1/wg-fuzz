struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32 = 33993u;

var<private> global2: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<bool>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1f), min(~(~vec4<u32>(1u, 0u, 1u, 4294967295u)) << (abs(abs(u_input.c)) % vec4<u32>(32u)), vec4<u32>(~u_input.c.x << (u_input.c.x % 32u), ~u_input.c.x, ~u_input.c.x, u_input.c.x & u_input.c.x)));
    var var_1 = var_0.a;
    var var_2 = Struct_4(Struct_2(arg_0), var_0);
    let var_3 = Struct_5(!vec3<bool>(true | any(vec4<bool>(arg_0, true, arg_0, var_2.a.a)), _wgslsmith_f_op_f32(882f - var_0.a) <= -178f, all(select(vec3<bool>(arg_2.x, false, arg_0), vec3<bool>(arg_2.x, true, true), vec3<bool>(false, arg_2.x, false)))));
    let var_4 = Struct_5(vec3<bool>(select(true, var_2.a.a, !arg_2.x), false, true));
    return 1i;
}

fn func_2(arg_0: vec4<u32>) -> Struct_4 {
    global2 = u_input.d.zwx;
    global1 = arg_0.x ^ (~arg_0.x | abs(~arg_0.x | ~0u));
    let var_0 = true;
    global0 = true;
    var var_1 = Struct_3(func_3(!all(vec3<bool>(false, var_0, var_0)), -vec2<i32>(-15064i, -2147483647i), vec2<bool>(true, true)) & 19526i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1223f, 699f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -502f))))));
    return Struct_4(Struct_2(var_0), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - var_1.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -848f) + _wgslsmith_f_op_f32(exp2(var_1.b)))), (_wgslsmith_add_vec4_u32(arg_0, arg_0) | ~vec4<u32>(27755u, 0u, 4294967295u, 31593u)) >> (vec4<u32>(~2852u, _wgslsmith_dot_vec3_u32(arg_0.ywx, vec3<u32>(29611u, u_input.c.x, 1u)), ~arg_0.x, arg_0.x) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: vec4<f32>, arg_3: bool) -> vec3<i32> {
    global1 = _wgslsmith_sub_u32(abs(select(1u, 1u, true)), arg_1);
    global0 = all(select(!vec4<bool>(true, false, false, arg_0.a.a), select(vec4<bool>(!arg_3, global2.x != -35755i, true, !arg_0.a.a), !vec4<bool>(arg_0.a.a, arg_3, true, false), true), reverseBits(firstTrailingBit(14372u)) < ~0u));
    global2 = select(abs(-select(u_input.d.yxw, vec3<i32>(u_input.b.x, global2.x, global2.x), select(vec3<bool>(false, arg_0.a.a, false), vec3<bool>(false, arg_3, arg_3), arg_0.a.a))), vec3<i32>(_wgslsmith_mult_i32(-1i, 1i), ~(-global2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, u_input.d.x), vec2<i32>(21608i, global2.x))) << (arg_0.b.b.xyw % vec3<u32>(32u)), !arg_0.a.a);
    global1 = _wgslsmith_mult_u32(1u, 40907u);
    var var_0 = arg_0.b.b.x;
    return _wgslsmith_clamp_vec3_i32(-vec3<i32>(global2.x, ~(-u_input.b.x), _wgslsmith_mult_i32(~0i, u_input.d.x)), _wgslsmith_sub_vec3_i32(abs(~(-u_input.d.xxz)), vec3<i32>(abs(-35678i), -(i32(-1i) * -2147483647i), global2.x)), u_input.d.yxz);
}

fn func_1() -> Struct_5 {
    global1 = _wgslsmith_sub_u32(u_input.c.x | u_input.c.x, 31329u);
    let var_0 = firstTrailingBit(~1u);
    global2 = select(~max(func_4(func_2(vec4<u32>(var_0, var_0, 47266u, 0u)), ~var_0, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -1000f, 1518f, -289f))), true), countOneBits(func_4(Struct_4(Struct_2(false), Struct_1(1474f, u_input.c)), var_0, vec4<f32>(1361f, 1302f, -2113f, -692f), true))), ~u_input.d.zxy, vec3<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), false)), true || (select(false, false, true) | true), countOneBits(_wgslsmith_clamp_i32(u_input.d.x, global2.x, 31029i)) >= global2.x));
    let var_1 = vec3<i32>(select(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -14316i) & vec2<i32>(u_input.d.x, u_input.a), _wgslsmith_add_vec2_i32(global2.zz, vec2<i32>(global2.x, global2.x))), vec2<i32>(_wgslsmith_mod_i32(0i, u_input.d.x), reverseBits(2147483647i))), ~(-3383i), true), select(~(~(~9246i)), 0i, true), _wgslsmith_mult_i32((1i | u_input.d.x) & max(countOneBits(-1i), -26806i), -17702i));
    let var_2 = _wgslsmith_sub_i32(u_input.d.x, -(~_wgslsmith_div_i32(global2.x | global2.x, 1270i << (0u % 32u))));
    return Struct_5(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), u_input.a < var_1.x), vec3<bool>(true, true, true), select(u_input.c.x == u_input.c.x, all(vec4<bool>(false, false, true, false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<i32>(-1i) * -select(u_input.d.zzw, vec3<i32>(global2.x, max(-9098i, global2.x), 2147483647i), global2.x >= _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-2147483647i, -27553i, global2.x, 0i)));
    var var_0 = 18154u;
    global2 = ~u_input.d.wxz;
    global0 = all(vec2<bool>(firstTrailingBit(~2088u) <= 39472u, true));
    var var_1 = -(~_wgslsmith_add_i32(~u_input.d.x, ~(-2147483647i)));
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-2185f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(776f, -1181f, var_2.a.x)), _wgslsmith_f_op_f32(step(886f, 568f)))))), ~(_wgslsmith_div_vec2_u32(abs(u_input.c.xy), vec2<u32>(4374u, 4294967295u) >> (u_input.c.xx % vec2<u32>(32u))) & vec2<u32>(1u, _wgslsmith_add_u32(u_input.c.x, u_input.c.x))), u_input.d | u_input.d, vec4<f32>(_wgslsmith_div_f32(-1629f, _wgslsmith_div_f32(-615f, _wgslsmith_f_op_f32(step(223f, -825f)))), _wgslsmith_f_op_f32(-596f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-766f - 1145f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1000f, 264f));
}

