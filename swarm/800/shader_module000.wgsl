struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_3,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: i32 = -45017i;

var<private> global2: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(i32(-2147483648), -709i, 0i, -1i), vec4<i32>(1i, -48481i, 1i, 2147483647i), vec4<i32>(0i, -1i, 9913i, -35148i), vec4<i32>(0i, -1i, 0i, 2147483647i), vec4<i32>(16196i, 23082i, -36865i, 64886i), vec4<i32>(-65260i, -45812i, 36355i, -53721i), vec4<i32>(25754i, -2828i, -7690i, 2147483647i), vec4<i32>(-1998i, -1i, 25491i, -18503i), vec4<i32>(i32(-2147483648), 14822i, -2146i, 2147483647i), vec4<i32>(-57930i, -6493i, -27861i, 0i), vec4<i32>(0i, i32(-2147483648), -4563i, 0i));

var<private> global3: Struct_2 = Struct_2(2147483647i, vec3<u32>(1u, 1u, 21002u), -1333f);

var<private> global4: Struct_4;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_4 {
    var var_0 = -global0.c.b;
    global2 = array<vec4<i32>, 11>();
    var var_1 = global4.e.zx;
    let var_2 = global0.d;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, 974f))))), -u_input.a.x >= -_wgslsmith_mult_i32(-1i, u_input.a.x << (global4.c.a.x % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c.a.x, global3.b.x, global4.a.a.x, 11253u) & ~vec4<u32>(4294967295u, 35990u, 1u, 96976u), vec4<u32>(40152u, ~global0.a.a.x, ~global3.b.x, global4.a.a.x | global4.a.a.x)) <= select(global4.c.a.x, 56543u, true));
    return Struct_4(Struct_1(~global4.a.a, ~(-48031i)), global4.b, global4.a, global0.d, vec4<f32>(1597f, -459f, var_3.a, 1000f));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: f32) -> u32 {
    global1 = _wgslsmith_div_i32(-46001i, ~(~(-10356i)));
    global2 = array<vec4<i32>, 11>();
    var var_0 = -69670i ^ ~global0.a.b;
    global0 = Struct_4(global4.c, vec2<i32>(_wgslsmith_add_i32(u_input.a.x, global3.a), -abs(-17509i)), func_2().a, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1976f + _wgslsmith_f_op_f32(-global0.d.a))), false, func_2().d.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1258f, -312f, arg_3, -364f) * global0.e), global0.e, 1000f != arg_2.a)), _wgslsmith_f_op_vec4_f32(-func_2().e), vec4<bool>(true, arg_2.c, !global4.d.b, true)))));
    global3 = Struct_2(0i, _wgslsmith_clamp_vec3_u32(~vec3<u32>(global0.c.a.x, abs(global0.c.a.x), arg_0.x | global4.c.a.x), vec3<u32>(61557u, func_2().a.a.x, firstLeadingBit(global4.c.a.x)), _wgslsmith_mod_vec3_u32(global3.b ^ global0.c.a, ~vec3<u32>(global3.b.x, arg_1.a.x, global4.a.a.x)) & select(select(global3.b, global3.b, vec3<bool>(arg_2.c, arg_2.b, global0.d.b)), global0.c.a, false && global4.d.b)), global4.e.x);
    return _wgslsmith_clamp_u32(global3.b.x, 29098u, global4.c.a.x);
}

fn func_1() -> bool {
    var var_0 = func_2();
    global4 = Struct_4(Struct_1(vec3<u32>(~func_3(vec2<u32>(4294967295u, 0u), Struct_1(global3.b, global3.a), global4.d, 856f), _wgslsmith_add_u32(_wgslsmith_add_u32(18252u, 1u), _wgslsmith_mod_u32(29393u, 69803u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16507u, global3.b.x, 0u, global3.b.x), vec4<u32>(var_0.a.a.x, var_0.a.a.x, global4.a.a.x, 73922u)), var_0.c.a.x)), 35192i), vec2<i32>(firstLeadingBit(func_2().c.b), _wgslsmith_dot_vec2_i32(select(firstLeadingBit(global4.b), countOneBits(u_input.a.zy), true), max(-global0.b, global4.b))), func_2().a, global0.d, vec4<f32>(-799f, -505f, -774f, global3.c));
    var var_1 = func_2().d;
    var var_2 = !vec4<bool>(var_1.b | var_1.c, var_0.d.b, global0.d.c, true);
    global3 = Struct_2(firstTrailingBit(max(select(-2147483647i, u_input.a.x, global4.c.a.x > 34382u), -global3.a)), ~vec3<u32>(~(global0.a.a.x ^ 3423u), ~_wgslsmith_mult_u32(9211u, 86619u), ~123060u), global3.c);
    return var_0.d.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(global4.b.x, vec3<u32>(global0.a.a.x, ~global4.c.a.x, reverseBits(_wgslsmith_mult_u32(~global3.b.x, 4294967295u << (global0.a.a.x % 32u)))), -1000f);
    var var_0 = !(!vec4<bool>(func_1(), global0.d.b, !all(vec4<bool>(true, global0.d.b, global4.d.c, true)), global0.d.c));
    var var_1 = ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global4.c.a.x, global0.c.a.x, global3.b.x), _wgslsmith_add_vec3_u32(global4.c.a, global0.c.a))));
    var var_2 = Struct_2(~firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.xx, global4.b), _wgslsmith_mod_i32(-24190i, -58720i))), vec3<u32>(global4.a.a.x << (_wgslsmith_dot_vec2_u32(abs(global4.c.a.xz), ~global3.b.zy) % 32u), global4.c.a.x & global4.c.a.x, ~(~global3.b.x << (10225u % 32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(func_2().e.x)))))));
    var var_3 = global0.e.xyz;
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(-1238f, _wgslsmith_f_op_f32(-global3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.d.a))), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(select(-150f, -541f, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.e.wy, u_input.a, select(4294967295u, _wgslsmith_mult_u32(1u, select(~4294967295u, 37580u, all(var_0.yzw))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887f * global4.d.a)), _wgslsmith_mult_i32(u_input.a.x, 21834i));
}

