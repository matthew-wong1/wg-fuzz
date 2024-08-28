struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<f32> {
    let var_0 = 0u;
    let var_1 = -95304i;
    global0 = Struct_1(!(!vec4<bool>(true, true, true && arg_0.c.a.x, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(select(arg_0.c.b, global0.b, !arg_0.c.a)), ~(~21647u), var_0);
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(min(~global0.d, ~1u), var_0), ~0u) << ((u_input.c.x << (6672u % 32u)) % 32u);
    var var_3 = Struct_1(arg_0.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0.b)) * vec4<f32>(_wgslsmith_f_op_f32(615f - _wgslsmith_f_op_f32(abs(1241f))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - 328f) - global0.b.x), _wgslsmith_div_f32(812f, _wgslsmith_f_op_f32(max(global0.b.x, arg_1.b.x))))), var_0, ~(~1u));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(global0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b))));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b.x, -763f, 939f, -638f))) * global0.b) * _wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec3<bool>(global0.a.x, true, false), -14910i, Struct_1(global0.a, vec4<f32>(global0.b.x, -246f, global0.b.x, -890f), 0u, 4294967295u), u_input.a.x), Struct_1(global0.a, vec4<f32>(global0.b.x, 606f, 194f, 1000f), u_input.d.x, global0.c), _wgslsmith_f_op_vec3_f32(abs(global0.b.yzx))))) - vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(395f, -379f)))), global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), -786f)), firstLeadingBit(23451u), ~(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.d.x, 1u, u_input.d.x), u_input.d))));
    var var_0 = select(select(!vec3<bool>(20976i >= u_input.a.x, !global0.a.x, all(global0.a)), global0.a.ywx, select(global0.a.x, true, !(10530u < global0.d))), global0.a.yyz, true);
    global0 = Struct_1(!global0.a, global0.b, global0.d, _wgslsmith_sub_u32(4294967295u, global0.c));
    let var_1 = u_input.a.x > (_wgslsmith_div_i32(u_input.a.x, u_input.b) & 1i);
    let var_2 = any(global0.a);
    return Struct_1(vec4<bool>(!select(false, var_0.x, false), all(!vec3<bool>(var_0.x, true, global0.a.x)), var_2, global0.a.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(608f))) - 1119f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * -1158f)) + global0.b.x), _wgslsmith_f_op_f32(max(global0.b.x, _wgslsmith_f_op_f32(798f * global0.b.x))), 1483f), 1u, _wgslsmith_clamp_u32(~(~(~u_input.d.x)), max(_wgslsmith_clamp_u32(~global0.d, _wgslsmith_mod_u32(74679u, 46697u), 0u), ~(global0.d << (u_input.d.x % 32u))), ~(~_wgslsmith_div_u32(global0.c, global0.d))));
}

fn func_1() -> Struct_1 {
    global0 = func_2();
    let var_0 = u_input.a.x;
    let var_1 = func_2();
    var var_2 = var_1.b.x;
    global0 = func_2();
    return var_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<f32>) -> i32 {
    let var_0 = countOneBits(~reverseBits(-33129i));
    global0 = func_2();
    let var_1 = abs(min(u_input.a.xx, -u_input.a.ww));
    global0 = Struct_1(vec4<bool>(true, global0.a.x, global0.a.x, arg_1.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_1.b)) + vec4<f32>(-1736f, -188f, -853f, 689f)) + vec4<f32>(-667f, arg_1.b.x, _wgslsmith_f_op_f32(-global0.b.x), 557f))), ~arg_1.c, u_input.d.x);
    var var_2 = arg_1;
    return _wgslsmith_add_i32(abs(var_1.x), u_input.b << ((_wgslsmith_sub_u32(~arg_0.x, ~54110u) ^ 40631u) % 32u));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(!arg_0.c.a, vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.b.x + _wgslsmith_f_op_f32(-arg_0.c.b.x)), 308f, _wgslsmith_div_f32(_wgslsmith_div_f32(434f, 1352f), arg_0.c.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-790f)))) + func_2().b.x)), arg_0.c.d, _wgslsmith_dot_vec3_u32(select(select(u_input.d.xyw, u_input.d.yzx, arg_0.c.b.x != -1656f), firstTrailingBit(vec3<u32>(34909u, 1u, global0.d)), !func_1().a.xyy), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_0.c.d, 80405u, 0u)), vec3<u32>(76216u, 1855u ^ arg_0.c.d, 60319u))));
    var var_1 = func_1();
    let var_2 = func_1();
    var_1 = func_1();
    global0 = func_1();
    return Struct_1(!func_1().a, vec4<f32>(global0.b.x, var_0.b.x, -858f, _wgslsmith_f_op_f32(-435f * var_1.b.x)), ~(~max(abs(var_1.d), ~60893u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(~firstLeadingBit(var_0.c), var_0.c), _wgslsmith_dot_vec4_u32(u_input.d, ~vec4<u32>(11703u, var_2.d, 66664u, arg_0.c.c) >> (~vec4<u32>(0u, 38128u, 4294967295u, global0.d) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_2(vec3<bool>(global0.a.x, true, all(vec3<bool>(global0.a.x, global0.a.x, true))), func_4(u_input.c, func_1(), _wgslsmith_add_vec2_u32(firstLeadingBit(u_input.c.yw), firstTrailingBit(u_input.c.xy)), global0.b.zwz), func_1(), u_input.b));
    global0 = Struct_1(vec4<bool>(!func_1().a.x, false, select(true, true, true), _wgslsmith_mult_i32(i32(-1i) * -38170i, func_4(vec4<u32>(59274u, 29309u, global0.c, 4294967295u), Struct_1(global0.a, global0.b, 90659u, u_input.d.x), u_input.d.zx, vec3<f32>(107f, -912f, 558f))) <= u_input.b), vec4<f32>(_wgslsmith_f_op_f32(-760f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(global0.a.zwx, -2147483647i, Struct_1(global0.a, global0.b, 22784u, 1u), u_input.a.x), Struct_1(global0.a, vec4<f32>(2127f, -571f, global0.b.x, 315f), u_input.c.x, global0.d), global0.b.zxz)).x)), global0.b.x, _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x + global0.b.x), -193f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + -438f)))), ~(~_wgslsmith_mult_u32(1u, global0.c)), u_input.d.x);
    var var_0 = -693f;
    var_0 = _wgslsmith_f_op_f32(-global0.b.x);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -226f);
    var var_1 = Struct_1(vec4<bool>(false, !global0.a.x, false, func_2().a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1().b + vec4<f32>(global0.b.x, -967f, global0.b.x, global0.b.x)), func_5(Struct_2(vec3<bool>(false, global0.a.x, false), u_input.a.x, Struct_1(vec4<bool>(global0.a.x, true, global0.a.x, true), vec4<f32>(global0.b.x, global0.b.x, -125f, -109f), 4294967295u, 12274u), u_input.b)).b)), ~4294967295u, global0.c);
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(10458u, _wgslsmith_add_u32(countOneBits(global0.c), global0.c)), _wgslsmith_mult_vec3_u32(u_input.c.wwx, ~min(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 45372u, var_1.d), u_input.d.wzz), reverseBits(u_input.c.yxw))), var_1.d);
}

