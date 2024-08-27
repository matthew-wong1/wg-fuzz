struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec4<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global1.a)))), global1.a, global1.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(255f)), abs(-8198i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-22102i, ~(-27197i), 0i, -10787i), abs(vec4<i32>(arg_0, 40999i, 0i, 0i))), max(~global1.c.x, -arg_0 & u_input.a)), !select(global0.yyw, global0.xxy, select(global0.zyz, global0.yyw, global1.e)), true);
    global0 = vec4<bool>(!(!(1317f > _wgslsmith_f_op_f32(floor(-1104f)))), true, global0.x, all(!global0.zwx));
    global0 = !select(vec4<bool>(_wgslsmith_f_op_f32(-global1.a) > var_1.a, (global1.d.x | var_1.e) && global1.d.x, 1u < (arg_1 ^ arg_1), false), !(!select(vec4<bool>(false, var_1.e, global1.e, false), vec4<bool>(false, global1.d.x, false, false), var_1.d.x)), select(!vec4<bool>(global0.x, var_1.e, false, false), select(!vec4<bool>(true, false, global1.e, global1.e), !vec4<bool>(false, global0.x, true, true), select(vec4<bool>(var_1.d.x, global0.x, false, true), vec4<bool>(global0.x, var_1.d.x, true, global0.x), true)), select(select(vec4<bool>(global1.e, true, var_1.d.x, global0.x), vec4<bool>(true, true, global0.x, false), vec4<bool>(true, false, false, true)), !vec4<bool>(global0.x, false, var_1.e, var_1.d.x), global1.e)));
    global1 = var_1;
    return !(!(!(!(!vec4<bool>(true, global0.x, global1.d.x, var_1.e)))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    global1 = arg_2;
    let var_0 = global1.c.x;
    global0 = func_3(~arg_2.b, 73046u);
    return 15233u;
}

fn func_4(arg_0: u32) -> Struct_1 {
    var var_0 = !global1.d.x;
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.a))), -1i, vec2<i32>(u_input.b.x ^ (u_input.a ^ -2147483647i), global1.c.x), vec3<bool>(global1.e, true, global1.a <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, global1.a))), true);
    var var_1 = global1.a;
    return Struct_1(global1.a, _wgslsmith_clamp_i32(0i, global1.c.x, -_wgslsmith_div_i32(global1.c.x, u_input.a)), _wgslsmith_mult_vec2_i32(global1.c, u_input.c), vec3<bool>(u_input.c.x != -10199i, true, global0.x), !(arg_0 < ~(arg_0 | 1u)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_sub_u32(~firstLeadingBit(0u), 1u | func_2(global1.a, global0.wyw, Struct_1(1022f, 40239i, vec2<i32>(u_input.b.x, global1.c.x), vec3<bool>(global0.x, false, true), false), vec4<bool>(global1.e, global0.x, true, true))) << (_wgslsmith_clamp_u32(~1u, 1u, firstLeadingBit(~16516u)) % 32u));
    global1 = Struct_1(global1.a, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, -4784i), vec2<i32>(var_0.c.x, 9185i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, u_input.c.x, var_0.b, -10173i), vec4<i32>(var_0.b, var_0.b, -2147483647i, 1i)), var_0.b), -firstLeadingBit(0i)), countOneBits(-_wgslsmith_sub_vec2_i32(u_input.b.xz, u_input.b.zx >> (vec2<u32>(5507u, 4294967295u) % vec2<u32>(32u)))), global0.xxx, _wgslsmith_f_op_f32(-1f) <= _wgslsmith_f_op_f32(trunc(483f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), global1.a, _wgslsmith_div_f32(var_0.a, global1.a), -1000f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(784f, global1.a, global1.a, global1.a), vec4<f32>(-106f, -507f, var_0.a, -1007f), vec4<bool>(true, var_0.d.x, true, global0.x))) - vec4<f32>(var_0.a, global1.a, var_0.a, -1789f)))) + vec4<f32>(2008f, -1584f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -1615f));
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u));
    var_1 = vec4<f32>(var_1.x, var_0.a, var_1.x, var_1.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = !select(true && global0.x, true, true);
    let var_2 = func_1();
    var var_3 = min(min(firstLeadingBit(u_input.b), u_input.b), _wgslsmith_div_vec3_i32(u_input.b, u_input.b));
    var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-(~1i), global1.b, abs(0i << (0u % 32u)), u_input.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(-7739i, 0i, 1i, _wgslsmith_div_i32(var_3.x, -46973i)), -countOneBits(vec4<i32>(0i, 14088i, -2147483647i, var_3.x)))), var_0.b, _wgslsmith_sub_i32(var_2.b << (~countOneBits(0u) % 32u), abs(1i)));
    let var_4 = Struct_1(1147f, _wgslsmith_mod_i32(global1.b, -3574i), var_2.c, select(!var_2.d, var_2.d, !vec3<bool>(any(vec2<bool>(true, global1.d.x)), var_3.x == u_input.b.x, all(var_2.d))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(0u, 1u, 48206u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(4294967295u, 1u, 1u)))), abs(-select(vec3<i32>(-8593i, -21920i, 8366i), u_input.b, var_0.d) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
}

