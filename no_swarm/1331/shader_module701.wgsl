struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec2<i32> = vec2<i32>(-32511i, i32(-2147483648));

var<private> global2: Struct_1 = Struct_1(1u, -18754i, vec2<i32>(69249i, -1i), vec3<bool>(true, false, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> bool {
    global2 = Struct_1(~4294967295u, _wgslsmith_mod_i32(-2147483647i, min(0i, global1.x << (1u % 32u))) << (u_input.b % 32u), global2.c, global2.d);
    global2 = Struct_1(global2.a, u_input.c.x, vec2<i32>(min(min(111650i, 46916i), -global1.x) & abs(global2.b), 0i), vec3<bool>(any(vec3<bool>(true, true, true)), select(arg_1.x <= arg_1.x, 1u == global2.a, any(select(global2.d.yz, vec2<bool>(false, arg_0), global2.d.x))), true));
    global2 = Struct_1(u_input.a, 2147483647i, _wgslsmith_add_vec2_i32(vec2<i32>(~global1.x | 2147483647i, max(u_input.c.x ^ u_input.c.x, ~(-12427i))), u_input.c.xx), global2.d);
    var var_0 = ~_wgslsmith_div_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c.x, u_input.c.x, -1i), select(u_input.c.yyz, u_input.c.zwz, vec3<bool>(true, true, false)))) >> (global2.a % 32u);
    var var_1 = 0u >> (_wgslsmith_div_u32(u_input.b, 0u) % 32u);
    return !select(true, arg_0, _wgslsmith_f_op_f32(-1000f + arg_1.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    return select(!select(vec3<bool>(true, all(vec4<bool>(global2.d.x, false, true, arg_1.d.x)), arg_0.x), !(!arg_0.xyw), !select(arg_1.d, arg_1.d, false)), vec3<bool>(!any(global2.d), 1000f >= _wgslsmith_f_op_f32(select(591f, -649f, false)), !arg_1.d.x), global2.d.x);
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    global2 = Struct_1(abs(51474u), -arg_0.c.x, ~vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.yyz, u_input.c.zxz) & 38359i, reverseBits(_wgslsmith_div_i32(1i, 7459i))), func_4(select(select(!vec4<bool>(false, global2.d.x, arg_0.d.x, global2.d.x), vec4<bool>(true, arg_0.d.x, false, false), !arg_0.d.x), select(vec4<bool>(false, arg_0.d.x, global2.d.x, false), vec4<bool>(false, arg_0.d.x, true, arg_0.d.x), vec4<bool>(arg_0.d.x, global2.d.x, arg_0.d.x, global2.d.x)), arg_0.d.x), Struct_1(1u, u_input.c.x, -vec2<i32>(global2.b, 12557i), vec3<bool>(arg_0.d.x | false, func_3(true, vec2<f32>(-1132f, -453f)), true)), u_input.b));
    let var_0 = Struct_1(reverseBits(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.a, 4294967295u, u_input.b, global2.a), vec4<u32>(3096u, 0u, global2.a, 111152u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(74075u, u_input.a, u_input.a, 68022u), ~vec4<u32>(4294967295u, global2.a, 4294967295u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.a, 18571u, u_input.b, arg_0.a), vec4<u32>(0u, 85524u, 1u, global2.a))))), -global1.x, vec2<i32>(-u_input.c.x, 0i), global2.d);
    global1 = _wgslsmith_mult_vec2_i32(-vec2<i32>(countOneBits(-2147483647i), u_input.c.x), ~(-select(vec2<i32>(global2.b, global2.b), ~vec2<i32>(u_input.c.x, 37017i), select(var_0.d.yx, vec2<bool>(arg_0.d.x, true), false))));
    var var_1 = true;
    let var_2 = Struct_1(_wgslsmith_div_u32(1u, arg_0.a), global1.x, abs(-(firstLeadingBit(arg_0.c) | _wgslsmith_add_vec2_i32(global2.c, vec2<i32>(1i, var_0.c.x)))), !(!select(vec3<bool>(true, true, var_0.d.x), vec3<bool>(false, var_0.d.x, arg_0.d.x), !arg_0.d.x)));
    return !(!func_4(!vec4<bool>(global2.d.x, var_2.d.x, true, false), var_2, var_2.a));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(u_input.b, u_input.c.x, (_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(global1.x, global1.x)), ~global2.c, ~arg_1.c) << (max(vec2<u32>(22366u, global2.a), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a, 94664u), vec2<u32>(global2.a, u_input.b))) % vec2<u32>(32u))) << (vec2<u32>(~18173u, ~(~arg_1.a)) % vec2<u32>(32u)), vec3<bool>(any(arg_2), true, true));
    let var_1 = !(!vec2<bool>(!(!var_0.d.x), (u_input.c.x >= -9624i) & (var_0.d.x & false)));
    let var_2 = 108972u;
    var var_3 = arg_1;
    var var_4 = arg_1;
    return arg_1;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1000f)))), Struct_1(1u, -global2.b, u_input.c.xz, func_2(Struct_1(firstTrailingBit(u_input.a), _wgslsmith_clamp_i32(global1.x, -1i, 2147483647i), global2.c, global2.d))), arg_0.zy);
    global0 = func_4(select(vec4<bool>(1u <= u_input.a, var_0.d.x, true, arg_0.x), !(!vec4<bool>(false, true, global2.d.x, arg_0.x)), vec4<bool>(true, true, true, true)), Struct_1(~1u, u_input.c.x, _wgslsmith_div_vec2_i32(var_0.c, var_0.c), vec3<bool>(arg_0.x | false, true, true)), 0u).x && true;
    let var_1 = !global2.d.xx;
    var var_2 = ~_wgslsmith_sub_i32(global2.b, 1i);
    return Struct_1(firstLeadingBit(~1u), var_0.c.x, min(u_input.c.ww, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(abs(global2.c), reverseBits(u_input.c.zy)), var_0.c)), func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(615f)))))), Struct_1(4294967295u, _wgslsmith_dot_vec3_i32(u_input.c.yxz, vec3<i32>(global2.b, -2147483647i, global1.x) ^ u_input.c.zzw), var_0.c, !(!vec3<bool>(true, true, var_0.d.x))), var_0.d.yx).d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(27068u, 1u), vec2<u32>(global2.a, 4294967295u));
    let var_1 = func_1(!select(!select(vec3<bool>(global2.d.x, global2.d.x, global2.d.x), vec3<bool>(true, global2.d.x, true), global2.d), vec3<bool>(global2.d.x, true, true), vec3<bool>(global2.d.x, !global2.d.x, true)));
    let var_2 = firstLeadingBit(_wgslsmith_mod_vec4_i32(-reverseBits(u_input.c), vec4<i32>(2147483647i, 28554i, 0i, global2.c.x)));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -169f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-379f)), -362f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1000f)))))));
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1241f, 275f) - vec2<f32>(-652f, -1083f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(-1020f)), _wgslsmith_f_op_f32(select(-1341f, 456f, var_1.d.x))), !global2.d.xx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-429f + -976f), _wgslsmith_f_op_f32(231f - -556f)), vec2<f32>(_wgslsmith_div_f32(1265f, 1032f), 597f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.c.x, reverseBits(global2.b)) | u_input.c.x, 2147483647i), _wgslsmith_dot_vec4_i32(u_input.c, (-u_input.c << (select(vec4<u32>(var_1.a, var_0.x, 14023u, 17788u), vec4<u32>(var_0.x, 1u, 1u, u_input.a), vec4<bool>(var_1.d.x, global2.d.x, var_1.d.x, true)) % vec4<u32>(32u))) << (reverseBits(reverseBits(vec4<u32>(73851u, 1u, 4294967295u, var_1.a))) % vec4<u32>(32u))), min(~reverseBits(~var_0), ~var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-231f, var_4.x, 1265f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * 609f))))));
}

