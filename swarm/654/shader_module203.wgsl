struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec3<u32>;

var<private> global2: Struct_3;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_3, arg_0.b, -1000f) * vec4<f32>(-190f, global3.a.b, arg_3, arg_2.a.b))))))));
    let var_1 = arg_2;
    global1 = _wgslsmith_clamp_vec3_u32(abs(~(~vec3<u32>(arg_0.a, 1u, 0u) ^ ~vec3<u32>(global1.x, var_1.a.a, 22706u))), abs(vec3<u32>(1u, global1.x, ~1u)), ~abs(vec3<u32>(~global1.x, firstTrailingBit(0u), _wgslsmith_div_u32(0u, global2.a.a))));
    global3 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_u32(global1.xy, global1.xz)) << (~(~global3.b) % 32u), arg_3), global1.x);
    var var_2 = Struct_1(12155u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1023f, arg_3)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b))))) + arg_0.b));
    return global3.a.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = global3.a;
    global1 = arg_0;
    global0 = ~arg_0.x;
    global2 = Struct_3(global2.a);
    let var_1 = u_input.a.x;
    return _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, 4294967295u, ~(~select(global1.x, 1u, true))), vec3<u32>(~_wgslsmith_div_u32(~arg_2.a, arg_2.a), func_3(Struct_1(~4294967295u, global2.a.b), vec3<i32>(-2147483647i, u_input.a.x, var_1) ^ vec3<i32>(-26788i, var_1, -1i), Struct_3(global2.a), _wgslsmith_f_op_f32(f32(-1f) * -809f)), arg_2.a));
}

fn func_1(arg_0: u32) -> vec4<f32> {
    let var_0 = ~_wgslsmith_dot_vec3_u32(func_2(reverseBits(~vec3<u32>(global1.x, 5861u, 18452u)), global3.a.b, Struct_1(_wgslsmith_mod_u32(0u, 4294967295u), -497f)), firstTrailingBit(_wgslsmith_add_vec3_u32(func_2(vec3<u32>(4294967295u, global2.a.a, 7475u), global3.a.b, global3.a), vec3<u32>(135459u, 4294967295u, global1.x) << (vec3<u32>(arg_0, global1.x, global2.a.a) % vec3<u32>(32u)))));
    let var_1 = select(!(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), vec2<bool>(all(vec4<bool>(false, true, all(vec2<bool>(true, true)), true)), any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true))), select(vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1836f) != _wgslsmith_f_op_f32(global2.a.b * -1638f)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(select(true, true, false), arg_0 != global3.b)), !vec2<bool>(any(vec4<bool>(true, true, false, false)), true)));
    var var_2 = u_input.a.x;
    let var_3 = ((~(~(-8400i)) ^ _wgslsmith_div_i32(u_input.a.x >> (global2.a.a % 32u), 0i)) & u_input.a.x) & 4451i;
    var var_4 = ~arg_0;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.a.b)) * 592f), -326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1174f - global3.a.b)))), _wgslsmith_f_op_f32(-global3.a.b));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: f32) -> Struct_3 {
    var var_0 = Struct_3(global3.a);
    let var_1 = !(!(!vec3<bool>(true, true, all(vec2<bool>(false, true)))));
    var var_2 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_2.a.a, global3.b << ((68940u | var_0.a.a) % 32u)), 4294967295u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.b, global3.a.b) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(2903f, arg_0.x))))))));
    let var_3 = 0u;
    var var_4 = !(!vec4<bool>(true || any(vec3<bool>(var_1.x, false, false)), all(var_1), true, false));
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1188f, global2.a.b) * 671f), _wgslsmith_f_op_f32(-global2.a.b))), arg_0.a.b);
    let var_1 = 78753u;
    var var_2 = Struct_1(20067u, var_0.x);
    var var_3 = countOneBits(_wgslsmith_add_i32(1i, u_input.a.x));
    let var_4 = _wgslsmith_mult_vec2_u32(arg_2.zy, firstLeadingBit(vec2<u32>(func_4(vec4<f32>(arg_1.a.b, global3.a.b, 788f, var_2.b), ~vec3<u32>(global3.a.a, 3934u, global2.a.a), Struct_3(global2.a), 156f).a.a, global2.a.a)));
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.b + var_2.b) + _wgslsmith_div_f32(-170f, var_0.x)), _wgslsmith_f_op_f32(max(global2.a.b, arg_1.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-201f * arg_1.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(110f * global2.a.b) + _wgslsmith_div_f32(global3.a.b, global2.a.b))), -845f), arg_2 << (vec3<u32>(1u, func_2(arg_2, -576f, global2.a).x << (~arg_0.a.a % 32u), 4294967295u) % vec3<u32>(32u)), func_4(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1258f, -1535f, 1746f, arg_1.a.b) + vec4<f32>(global2.a.b, arg_1.a.b, -1000f, 880f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.b, arg_0.a.b, global3.a.b, -757f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, -1000f, global3.a.b, -919f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a.b, global3.a.b, -142f, global3.a.b))))), abs(arg_2 & ~vec3<u32>(8115u, 4294967295u, arg_2.x)), func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1553f, global3.a.b, -1859f, -361f))))), vec3<u32>(10202u << (1u % 32u), 31294u, 4294967295u & arg_0.a.a), arg_0, global3.a.b), 1000f), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.b), 1000f)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, false);
    var_0 = vec2<bool>(false, !(true && (u_input.a.x != -1i)));
    var var_1 = func_5(func_4(_wgslsmith_f_op_vec4_f32(func_1(~global3.a.a)), select(vec3<u32>(0u, countOneBits(global1.x), global2.a.a), reverseBits(~vec3<u32>(515u, 35774u, 38077u)), vec3<bool>(true, true, true)), Struct_3(global3.a), 351f), Struct_2(func_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-562f, -503f, global3.a.b, -1141f))), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, global3.a.a, 4294967295u), vec3<u32>(0u, 2097u, 16125u)) << (_wgslsmith_div_vec3_u32(vec3<u32>(24681u, 0u, 1u), vec3<u32>(73672u, global2.a.a, global1.x)) % vec3<u32>(32u)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(853f, global3.a.b, 996f, 161f)), vec3<u32>(global3.b, 4294967295u, global3.b), Struct_3(Struct_1(0u, global3.a.b)), _wgslsmith_f_op_f32(global2.a.b - 1482f)), _wgslsmith_f_op_f32(global3.a.b - 982f)).a, global3.b), select(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(global1.x, 4294967295u, 1u)), firstLeadingBit(vec3<u32>(1u, 5746u, 21778u))) ^ vec3<u32>(reverseBits(global3.b), global3.b, _wgslsmith_mod_u32(12750u, 1u)), vec3<u32>(abs(global3.b), ~(~4294967295u), func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, global3.a.a, global2.a.a), vec3<u32>(global2.a.a, global3.a.a, global3.b)), _wgslsmith_f_op_f32(f32(-1f) * -716f), global3.a).x), !vec3<bool>(true, global1.x != 6440u, var_0.x)));
    global3 = Struct_2(global2.a, 75337u);
    var_1 = func_5(Struct_3(func_5(Struct_3(Struct_1(global2.a.a, var_1.b)), Struct_2(Struct_1(global3.a.a, global2.a.b), 1u), ~countOneBits(vec3<u32>(global3.a.a, var_1.a, global3.b)))), Struct_2(global3.a, global3.a.a), abs(vec3<u32>(var_1.a, select(global2.a.a, var_1.a, true == var_0.x), 73537u >> (~var_1.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, global3.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.b, var_1.b, -183f, global3.a.b) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.a.b, 618f, global2.a.b, global3.a.b)))))), vec3<f32>(global3.a.b, _wgslsmith_f_op_f32(-903f - var_1.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.b, var_1.b, var_0.x)), _wgslsmith_div_f32(var_1.b, global2.a.b))))), vec2<i32>(min(-1i, _wgslsmith_add_i32(abs(2147483647i), ~u_input.a.x)), -_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))));
}

