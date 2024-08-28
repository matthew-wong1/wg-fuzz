struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> i32 {
    var var_0 = global0.d;
    let var_1 = _wgslsmith_f_op_vec3_f32(-var_0.d.zzw);
    var_0 = global0.d;
    global0 = Struct_4(vec3<i32>(select(u_input.d, arg_0.a, var_0.c) | ~(-2147483647i), -countOneBits(2147483647i), var_0.b) & vec3<i32>(~_wgslsmith_add_i32(arg_0.a, global0.e.a), _wgslsmith_add_i32(arg_0.a, arg_0.a) | (-36268i | var_0.b), ~var_0.b), _wgslsmith_mult_i32(global0.d.b, 1i), global0.c, global0.d, Struct_3(abs(abs(-33848i)), arg_0.b));
    var_0 = global0.d;
    return -21525i >> ((select(_wgslsmith_mod_u32(arg_1.x, ~71607u), 0u, true) << (_wgslsmith_sub_u32(~(~40569u), global0.d.a) % 32u)) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> u32 {
    global0 = Struct_4(vec3<i32>(_wgslsmith_sub_i32(~(-45553i & global0.d.b), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.e, u_input.e), -23473i)), arg_2, 13126i), firstLeadingBit(~firstLeadingBit(i32(-1i) * -16687i)), !vec2<bool>(true, any(!vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x))), Struct_2(_wgslsmith_add_u32(~u_input.c, u_input.b), ~(-19187i), !(any(global0.c) || (-1331f < arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.d.d.x), global0.e.b.a.x, -879f, _wgslsmith_f_op_f32(f32(-1f) * -612f)))), Struct_3(i32(-1i) * -28655i, Struct_1(global0.e.b.a)));
    var var_0 = global0.d;
    var_0 = global0.d;
    var_0 = Struct_2(var_0.a, arg_2, !any(!(!vec4<bool>(global0.c.x, var_0.c, var_0.c, false))), arg_0.a);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)));
    return ~_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_add_u32(var_0.a, 1u) ^ abs(global0.d.a)), ~(~4294967295u) ^ ~var_0.a);
}

fn func_2() -> vec3<i32> {
    var var_0 = any(vec4<bool>(global0.c.x && true, false, global0.c.x, !all(!vec3<bool>(global0.c.x, true, global0.c.x))));
    let var_1 = func_4(Struct_1(global0.e.b.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.d.x * 404f)))))), ~func_3(Struct_3(-54646i, global0.e.b), reverseBits(vec2<u32>(u_input.b, u_input.c))));
    let var_2 = func_3(global0.e, max(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(~vec2<u32>(var_1, var_1) ^ ~vec2<u32>(u_input.b, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 54006u) << (vec2<u32>(7588u, var_1) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.d.a, var_1), vec2<u32>(37811u, var_1))))));
    global0 = Struct_4(u_input.e, global0.d.b, vec2<bool>(true, false), global0.d, Struct_3(-2147483647i << (~_wgslsmith_mult_u32(u_input.c, 10031u) % 32u), global0.e.b));
    let var_3 = vec4<u32>(~select(~(~23440u), countOneBits(u_input.c), true | global0.d.c), max(1u, _wgslsmith_clamp_u32(firstTrailingBit(var_1), u_input.c, abs(var_1)) & _wgslsmith_mult_u32(~global0.d.a, ~0u)), ~u_input.b, firstTrailingBit(reverseBits(_wgslsmith_clamp_u32(var_1, abs(var_1), u_input.c))));
    return vec3<i32>(var_2, var_2, global0.d.b) & global0.a;
}

fn func_1() -> u32 {
    var var_0 = vec2<u32>(firstLeadingBit(global0.d.a & firstTrailingBit(4294967295u)), 0u);
    global0 = Struct_4(func_2() >> (_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(global0.d.a, u_input.b, 1u)), abs(select(vec3<u32>(global0.d.a, 90354u, 1u), vec3<u32>(var_0.x, 19607u, var_0.x), global0.d.c))) % vec3<u32>(32u)), ~func_3(Struct_3(_wgslsmith_add_i32(u_input.d, global0.b), Struct_1(global0.d.d)), _wgslsmith_add_vec2_u32(~vec2<u32>(3581u, u_input.c), firstLeadingBit(vec2<u32>(1u, u_input.c)))), !global0.c, Struct_2(4294967295u, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 15814i), vec2<i32>(0i, 2147483647i) ^ vec2<i32>(global0.b, global0.d.b))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d.d) + vec4<f32>(_wgslsmith_f_op_f32(-global0.d.d.x), _wgslsmith_f_op_f32(sign(global0.e.b.a.x)), _wgslsmith_f_op_f32(-303f - 1000f), -505f))), global0.e);
    var_0 = ~select(~firstLeadingBit(vec2<u32>(25624u, global0.d.a)) | vec2<u32>(~global0.d.a, countOneBits(global0.d.a)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(31177u, u_input.b), vec2<u32>(u_input.c, global0.d.a)), vec2<u32>(global0.d.a, global0.d.a)), ~vec2<u32>(u_input.c, global0.d.a)), select(vec2<bool>(true, true), vec2<bool>(true && global0.c.x, false || global0.c.x), !global0.c));
    var_0 = vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global0.d.a, var_0.x, 83790u), ~(~vec4<u32>(global0.d.a, var_0.x, global0.d.a, 1u)))), ~40209u);
    var_0 = ~(~countOneBits(vec2<u32>(global0.d.a, ~global0.d.a)));
    return _wgslsmith_sub_u32(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.c, 4294967295u), vec3<u32>(53745u, var_0.x, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.c, u_input.b), vec3<u32>(global0.d.a, 4294967295u, 49874u), vec3<u32>(u_input.c, 0u, 0u)))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(8622u, func_1());
    var var_1 = _wgslsmith_div_vec2_i32(global0.a.zy | vec2<i32>(-1i, 30776i), _wgslsmith_clamp_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.e.a, global0.b), global0.a.zx)), -firstLeadingBit(vec2<i32>(1i, -49989i)), ~select(firstLeadingBit(u_input.e.yz), select(vec2<i32>(-32382i, -2147483647i), vec2<i32>(global0.e.a, 1i), global0.c.x), global0.c)));
    let var_2 = Struct_4(global0.a, var_1.x, !(!global0.c), global0.d, global0.e);
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_2.d.d.wwy);
    let var_4 = global0.d.a ^ u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(floor(-1382f)), -1762f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global0.e.b.a))), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_3.x)), _wgslsmith_f_op_f32(331f + -107f), -178f, _wgslsmith_div_f32(334f, 1811f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_2.e.b.a + global0.d.d)))), var_2.a);
}

