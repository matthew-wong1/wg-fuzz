struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 3412i);

var<private> global1: Struct_2;

var<private> global2: Struct_2;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<u32> {
    global2 = Struct_2(abs(vec4<i32>(2147483647i, -12613i, abs(u_input.b.x), 1i)));
    let var_0 = Struct_1(false || (1i > _wgslsmith_mod_i32(global2.a.x, ~16398i)), arg_2.b, _wgslsmith_mod_vec3_u32(abs(arg_0.c & arg_2.c), _wgslsmith_sub_vec3_u32(vec3<u32>(16558u, arg_2.c.x, 10431u) ^ _wgslsmith_add_vec3_u32(arg_2.c, vec3<u32>(51317u, u_input.a, arg_2.b.x)), ~max(vec3<u32>(arg_2.b.x, arg_2.b.x, 0u), vec3<u32>(44819u, arg_2.b.x, 10184u)))));
    var var_1 = Struct_2(vec4<i32>(firstTrailingBit(~global2.a.x), ~15206i >> (~firstTrailingBit(u_input.a) % 32u), u_input.b.x, global2.a.x));
    var var_2 = !select(arg_3, !(!arg_3), arg_3.x);
    var var_3 = 298f;
    return vec3<u32>(var_0.b.x, ~(~firstTrailingBit(1u)), arg_2.b.x);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(true, ~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(24016u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a)), min(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, true)), ~vec2<u32>(u_input.a, 1u))), vec3<u32>(~1u, max(1u, _wgslsmith_clamp_u32(4294967295u, u_input.a, 1u)) ^ ~max(111239u, 1u), _wgslsmith_clamp_u32(u_input.a, min(1u << (u_input.a % 32u), u_input.a & u_input.a), _wgslsmith_add_u32(8932u ^ u_input.a, 4294967295u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_div_f32(-668f, _wgslsmith_f_op_f32(-100f + 1359f)), _wgslsmith_f_op_f32(-972f - _wgslsmith_f_op_f32(f32(-1f) * -202f)))));
    global1 = Struct_2(abs(global1.a));
    var var_2 = Struct_2(vec4<i32>(-(~(~(-10807i))), -2147483647i, 8819i, u_input.b.x));
    let var_3 = !vec2<bool>(var_0.a || var_0.a, var_1.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -1497f) - 466f));
    return Struct_1(false, var_0.b, ~func_3(var_0, var_0.a, var_0, !vec4<bool>(var_3.x, false, var_3.x, false)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> Struct_2 {
    global1 = Struct_2(~abs(~(-vec4<i32>(2147483647i, 1i, -64692i, 0i))));
    let var_0 = 10382u >> (1u % 32u);
    var var_1 = true;
    let var_2 = arg_1.a;
    global1 = Struct_2(~global2.a);
    return Struct_2(-vec4<i32>(-u_input.b.x, _wgslsmith_div_i32(_wgslsmith_add_i32(0i, global2.a.x), global1.a.x), i32(-1i) * -global2.a.x, ~global2.a.x | firstTrailingBit(1i)));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> vec3<i32> {
    global2 = arg_0;
    global2 = func_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-1731f - _wgslsmith_f_op_f32(f32(-1f) * -864f)), _wgslsmith_f_op_f32(step(628f, 1f))))), func_2(), 260f, min(vec3<u32>(u_input.a, u_input.a, ~74569u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, 1u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 24725u), vec3<u32>(u_input.a, 18288u, 61713u), vec3<u32>(u_input.a, 59776u, 0u)))) | func_2().c);
    global1 = arg_0;
    global2 = Struct_2(global2.a);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1138f, _wgslsmith_f_op_f32(max(-1164f, -486f))), 1867f, true)) - _wgslsmith_div_f32(-1300f, 267f)));
    return ~arg_0.a.zxx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<i32>(firstTrailingBit(i32(-1i) * -2147483647i), global0.x, _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_clamp_i32(firstTrailingBit(-3052i), i32(-1i) * -1i, global1.a.x)), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(global2.a.x, 2147483647i, -1i), func_1(Struct_2(global1.a), true, global0.x))));
    var var_1 = func_4(vec2<f32>(471f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-340f))))), Struct_1(any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true)), ~(~(~vec2<u32>(u_input.a, u_input.a))), ~(~func_3(Struct_1(false, vec2<u32>(1u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 83094u)), false, Struct_1(true, vec2<u32>(41835u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)), vec4<bool>(false, true, false, true)))), -470f, ~_wgslsmith_clamp_vec3_u32(func_2().c, vec3<u32>(~0u, 30252u, _wgslsmith_mod_u32(u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), func_3(Struct_1(false, vec2<u32>(0u, u_input.a), vec3<u32>(4294967295u, 27863u, 0u)), true, Struct_1(true, vec2<u32>(32150u, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)), vec4<bool>(false, false, true, true)))));
    var var_2 = Struct_2(global2.a);
    let var_3 = -6488i;
    let var_4 = Struct_2(~abs(~_wgslsmith_mod_vec4_i32(global1.a, global2.a)));
    global2 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, 897f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1061f, -348f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-640f, -647f)))), Struct_1(all(vec3<bool>(true, true, true)), ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(41398u, u_input.a), vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(u_input.a, u_input.a)), vec3<u32>(1u, u_input.a, _wgslsmith_div_u32(95499u, ~15644u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-913f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(2067f, -302f) + _wgslsmith_f_op_f32(round(-106f))))), ~vec3<u32>(4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 10824u, u_input.a), vec3<u32>(58226u, 0u, 2679u)) % 32u), u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 22704u), vec2<u32>(64680u, 58738u))));
    var var_5 = Struct_1(true, ~(max(reverseBits(vec2<u32>(u_input.a, 0u)), select(vec2<u32>(16433u, 61247u), vec2<u32>(0u, 1u), vec2<bool>(true, false))) << (~_wgslsmith_sub_vec2_u32(vec2<u32>(12722u, u_input.a), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), vec3<u32>(~(~select(4294967295u, 0u, true)), ~(~max(11954u, 0u)), firstLeadingBit(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_5.c, vec3<u32>(var_5.b.x, 6123u, 83373u)) & vec3<u32>(u_input.a, var_5.c.x, 0u), reverseBits(var_5.c & var_5.c)) | u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(582f, -354f, -693f) * vec3<f32>(458f, 921f, 556f)) - vec3<f32>(-1495f, -111f, 344f)))));
}

