struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> vec2<u32> {
    let var_0 = arg_0;
    global1 = _wgslsmith_add_i32((-1i | _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(32295i, u_input.c.x, arg_1.x, arg_1.x), vec4<i32>(35923i, -1i, 62710i, 2147483647i)), ~vec4<i32>(47742i, u_input.b.x, -2147483647i, u_input.c.x))) << (~u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.c.x, u_input.d)) & vec2<i32>(0i, countOneBits(-2147483647i)), abs(u_input.b.yx)));
    global0 = Struct_1(false && global0.a);
    global0 = Struct_1(global0.a);
    global0 = Struct_1(true);
    return vec2<u32>(reverseBits(u_input.a.x), _wgslsmith_sub_u32(54178u, u_input.a.x));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = arg_1.d;
    var_0 = Struct_1(global0.a);
    let var_1 = abs(vec2<i32>(arg_0.x, arg_1.b));
    var var_2 = Struct_2(Struct_1(all(vec3<bool>(true, false, false)) & (!global0.a & !global0.a)), Struct_1(true == (var_0.a & false)), Struct_1(all(!vec3<bool>(global0.a, global0.a, false))), arg_1.a.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(494f))), 359f));
    return _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(63255u, 12394u, u_input.a.x), vec3<u32>(u_input.a.x, var_2.d, 71043u)), ~1u), u_input.a.x, 12828u, max(46040u << (var_2.d % 32u), u_input.a.x)), ~min(abs(vec4<u32>(0u, 4294967295u, u_input.a.x, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, arg_1.a.x, 24414u), vec4<u32>(var_2.d, var_2.d, 45881u, 0u)) << (~vec4<u32>(1u, 71126u, 94826u, 20354u) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_5) -> bool {
    var var_0 = vec3<f32>(1610f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(138f * _wgslsmith_f_op_f32(-580f + -715f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f), -1094f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(984f, -1077f)), 213f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1300f)), 2009f))))));
    global0 = Struct_1(!(any(vec4<bool>(global0.a, global0.a, false, true)) || false));
    let var_1 = abs(u_input.b.x & _wgslsmith_dot_vec4_i32(-vec4<i32>(29459i, 1i, 1i, -1i), vec4<i32>(-2147483647i, u_input.b.x, 1i, 28091i) ^ vec4<i32>(-7381i, u_input.b.x, 2147483647i, 14619i))) < ~u_input.b.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yz) - _wgslsmith_f_op_vec2_f32(var_0.zx * vec2<f32>(var_0.x, 112f))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(1496f + var_0.x)))));
    var var_3 = min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 5488i, max(u_input.b.x, -49528i), select(~u_input.c.x, i32(-1i) * -21930i, any(vec2<bool>(global0.a, true)))), countOneBits(countOneBits(firstTrailingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, -2147483647i))))), (u_input.b.x | -12042i) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~arg_0.a, vec4<u32>(43042u, arg_0.a.x, 20672u, u_input.a.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, arg_0.a.x, u_input.a.x, u_input.a.x), vec4<u32>(65117u, 1u, u_input.a.x, 4294967295u), arg_0.a), vec4<u32>(4294967295u, 16557u, u_input.a.x, arg_0.a.x))) % 32u));
    return all(!select(!vec3<bool>(false, global0.a, global0.a), !vec3<bool>(var_1, global0.a, false), vec3<bool>(var_1, global0.a, global0.a))) & ((~_wgslsmith_mod_u32(43778u, u_input.a.x) & ~firstTrailingBit(arg_0.a.x)) > arg_0.a.x);
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = Struct_3(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 37125u), u_input.a), u_input.a.x >> (1u % 32u)), firstLeadingBit(vec2<u32>(u_input.a.x, 0u))), ~(min(u_input.a, vec2<u32>(39647u, u_input.a.x)) ^ func_2(606f, vec3<i32>(u_input.c.x, u_input.d, 39069i))), vec2<u32>(~1u, u_input.a.x)), u_input.c.x, func_4(Struct_5(func_3(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -1i, -2147483647i), vec3<i32>(u_input.c.x, 0i, 41252i)), Struct_3(vec2<u32>(0u, 36619u), 1i, arg_0, Struct_1(false), arg_0)))), Struct_1(false), all(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(global0.a, false)))));
    global1 = _wgslsmith_add_i32(~_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c.x, var_0.b), firstLeadingBit(5064i)), var_0.b) << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~var_0.a, _wgslsmith_mod_vec2_u32(var_0.a, vec2<u32>(1u, 0u))), countOneBits(firstLeadingBit(u_input.a.x))), var_0.a.x) % 32u);
    var var_1 = -abs(reverseBits(min(2147483647i, var_0.b)) & 1i);
    global1 = -3850i;
    var_1 = -var_0.b & 2147483647i;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(!func_1(global0.a), !(!all(vec2<bool>(false, global0.a))), global0.a));
    var_0 = Struct_1(true);
    let var_1 = Struct_1(all(vec3<bool>(select(global0.a, false, false), any(!vec3<bool>(false, global0.a, true)), ~u_input.b.x < (-47478i ^ u_input.b.x))));
    let var_2 = Struct_1(var_0.a);
    var var_3 = var_2;
    var_3 = Struct_1(true);
    global0 = var_1;
    let var_4 = -1i;
    global1 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, max(~34139i, _wgslsmith_clamp_i32(var_4, 1i, ~u_input.d)) >> (func_3(vec3<i32>(-var_4, u_input.d, 31945i), Struct_3(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(90909u, u_input.a.x)), 2147483647i, false, Struct_1(true), false)).x % 32u));
}

