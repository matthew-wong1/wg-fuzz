struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(8654u, 42659u, 40782u, 0u);

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: vec2<bool>;

var<private> global3: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x << (global0.x % 32u)), _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(-25553i, 1i))), firstLeadingBit(_wgslsmith_mod_i32(-59498i, u_input.a.x)), u_input.a.x);
    var var_1 = vec4<u32>(_wgslsmith_add_u32(17632u, global0.x), ~global0.x, global0.x, global0.x >> (~(~1u) % 32u));
    var_0 = u_input.a.xzy;
    let var_2 = Struct_1(~global0.x, 39101i, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1085f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(611f, -888f)))), all(!vec4<bool>(false, false, global1.x, false))))));
    var var_3 = Struct_3(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) + var_2.d.x)), var_2);
    return !any(vec2<bool>(!global1.x, _wgslsmith_dot_vec2_u32(var_1.zy, vec2<u32>(var_1.x, 1u)) > ~19029u));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> bool {
    global2 = arg_0;
    return !all(arg_0);
}

fn func_2() -> Struct_1 {
    global3 = !all(!global1.zyz);
    global3 = !func_4(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, global1.x, true)), func_3()), vec2<bool>(true, true)), all(select(select(vec4<bool>(global1.x, global2.x, false, global2.x), vec4<bool>(false, global2.x, global2.x, global1.x), false), select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(false, global2.x, global2.x, false)), true)));
    return Struct_1(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(4775i, firstLeadingBit(16326i)), _wgslsmith_dot_vec4_i32(u_input.a | u_input.a, u_input.a)), u_input.a.yy), false, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1257f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-176f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f * _wgslsmith_f_op_f32(f32(-1f) * -572f)))));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -408f)));
    return Struct_2(Struct_1(87254u, _wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.wz), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.c.d)), arg_1.c.d) + arg_1.c.d)), -max(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -33743i, arg_1.c.b), u_input.a.wwy >> (vec3<u32>(70854u, arg_1.c.a, arg_1.c.a) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(-36117i, arg_2, u_input.a.x), vec3<i32>(arg_2, arg_0, 1i))), firstTrailingBit(min(vec3<i32>(-53203i, arg_0, arg_0), u_input.a.zzx))), countOneBits(vec3<i32>(2147483647i, -12609i, u_input.a.x) | u_input.a.yyx));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1299f, -1164f, arg_0.a.d.x, arg_2), vec4<f32>(-235f, 776f, arg_0.a.d.x, arg_1.a.d.x), vec4<bool>(false, global1.x, true, false))) + vec4<f32>(arg_0.a.d.x, 2256f, arg_2, arg_0.a.d.x)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2335f, -1084f, -432f, arg_1.a.d.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a.d.x, arg_0.a.d.x, arg_2, -502f))))))))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    global3 = !arg_0.x;
    let var_0 = _wgslsmith_f_op_vec4_f32(func_6(func_5(4561i, Struct_3(-9044i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2543f * 1136f))), func_2()), _wgslsmith_mod_i32(-31698i, -2147483647i), !any(!vec4<bool>(arg_0.x, arg_0.x, false, false))), Struct_2(func_2(), u_input.a.xyz, vec3<i32>(u_input.a.x & u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(2147483647i, u_input.a.x)) << (~firstTrailingBit(vec3<u32>(0u, global0.x, 1u)) % vec3<u32>(32u))), -1288f, func_2().b));
    let var_1 = (abs(min(40607i, u_input.a.x) & u_input.a.x) >> (_wgslsmith_mult_u32(func_5(select(-1i, 0i, arg_0.x), Struct_3(u_input.a.x, var_0.x, Struct_1(15532u, 55309i, global1.x, vec2<f32>(937f, var_0.x))), reverseBits(-1i), true).a.a, ~4294967295u) % 32u)) | 0i;
    var var_2 = Struct_3(~(i32(-1i) * -var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f))), Struct_1(firstLeadingBit(21233u), ~var_1, global2.x, _wgslsmith_div_vec2_f32(vec2<f32>(394f, var_0.x), func_2().d)));
    let var_3 = ~50944u;
    return Struct_3(~_wgslsmith_sub_i32(976i, var_1 & _wgslsmith_add_i32(-24670i, var_2.a)), var_0.x, var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1.zxx);
    var var_1 = ~global0.xzy;
    global3 = global1.x;
    var var_2 = global1.xzx;
    var var_3 = Struct_3(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.b, -1i, var_0.c.b), reverseBits(u_input.a.xwy)) ^ -1939i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-433f - _wgslsmith_div_f32(var_0.c.d.x, _wgslsmith_f_op_f32(-var_0.c.d.x))), _wgslsmith_div_f32(1219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1254f, 1024f)))))), var_0.c);
    var_3 = func_1(global1.xzx);
    var var_4 = 15901u;
    var var_5 = global1.wxw;
    let var_6 = func_1(vec3<bool>(func_4(vec2<bool>(false, false), true), true, global2.x || (func_1(global1.zxx).a < _wgslsmith_mult_i32(14088i, -21040i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_6.c.d.x, _wgslsmith_div_f32(var_3.b, -1000f), _wgslsmith_f_op_f32(ceil(var_6.b)), -420f), 427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -487f))) * _wgslsmith_f_op_f32(floor(func_5(var_6.a, Struct_3(u_input.a.x, var_0.b, var_0.c), -2147483647i, var_5.x).a.d.x)))));
}

