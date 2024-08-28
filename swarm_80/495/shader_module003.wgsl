struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(21506i, -47312i, 55698i, -1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-525f - -155f))))));
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    var var_1 = var_0;
    global0 = array<i32, 4>();
    return var_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = vec2<bool>(select(false, any(vec3<bool>(true, true, true)), false) && true, false);
    var var_2 = Struct_3(abs(_wgslsmith_add_i32(~global0[_wgslsmith_index_u32(u_input.b.x, 4u)], max(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)]))) < _wgslsmith_dot_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)], -4397i, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), ~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 29925i, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 0i)), Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a, arg_0.a)), arg_0.a, !select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(false, var_1.x))))), Struct_1(_wgslsmith_add_i32(13091i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-2555i, -17588i), abs(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(1799u, 4u)])))), firstLeadingBit(_wgslsmith_dot_vec3_i32(min(vec3<i32>(global0[_wgslsmith_index_u32(44412u, 4u)], 2165i, global0[_wgslsmith_index_u32(85684u, 4u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 58814i, 2147483647i)), -vec3<i32>(-1i, global0[_wgslsmith_index_u32(52312u, 4u)], 4099i))), u_input.a.zww, !vec2<bool>(var_1.x, var_1.x), select(0u, abs(u_input.b.x), true)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(276f, -1000f) + arg_1.a))) + vec2<f32>(_wgslsmith_f_op_f32(-655f - arg_0.a.x), var_0.a.x))));
    var var_3 = 6336i;
    global0 = array<i32, 4>();
    return func_2(u_input.a.xww);
}

fn func_4(arg_0: Struct_2) -> bool {
    var var_0 = ~(-(vec2<i32>(-1i) * -(~vec2<i32>(-5289i, 4703i))));
    global0 = array<i32, 4>();
    var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-_wgslsmith_div_i32(-6237i, -global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), ~_wgslsmith_div_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 4u)], var_0.x), -2346i)), vec2<i32>(-8442i >> (u_input.b.x % 32u), -1i));
    var var_1 = func_2(vec3<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.b.x, 48082u), ~countOneBits(u_input.a.x >> (48386u % 32u))));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(var_0.x, var_0.x), var_0.x)), ~vec2<i32>(_wgslsmith_mult_i32(-4665i, 1i), global0[_wgslsmith_index_u32(~u_input.a.x, 4u)])), -(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, abs(u_input.a.x)), 4u)]), select(_wgslsmith_sub_vec3_u32(u_input.a.zyy, abs(~vec3<u32>(20176u, u_input.a.x, 1319u))), _wgslsmith_sub_vec3_u32(u_input.a.xxx & u_input.a.zyy, ~vec3<u32>(u_input.b.x, 1u, 63591u)) | min(vec3<u32>(14288u, 4294967295u, u_input.a.x), select(u_input.a.yzx, vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<bool>(false, false, true))), !(0u < u_input.a.x)), select(vec2<bool>(select(true, all(vec4<bool>(false, true, true, true)), any(vec4<bool>(false, false, false, true))), false), vec2<bool>(all(vec3<bool>(true, true, true)), 781f <= arg_0.a.x), false), ~u_input.a.x);
    return !(!any(select(select(vec3<bool>(false, var_2.d.x, false), vec3<bool>(false, var_2.d.x, true), vec3<bool>(true, var_2.d.x, var_2.d.x)), select(vec3<bool>(true, false, true), vec3<bool>(var_2.d.x, true, false), false), vec3<bool>(var_2.d.x, var_2.d.x, false))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: bool) -> StorageBuffer {
    global0 = array<i32, 4>();
    var var_0 = func_2(vec3<u32>(~3925u, arg_1.x, arg_1.x | ~arg_1.x) ^ arg_1.xzx);
    var_0 = arg_0.d;
    var var_1 = func_2(countOneBits(abs(vec3<u32>(firstLeadingBit(arg_1.x), u_input.b.x, ~arg_0.c.c.x))));
    var var_2 = arg_0.c;
    return StorageBuffer(-1i, -776f, ~(~select(~1u, u_input.b.x, any(vec3<bool>(var_2.d.x, arg_2, arg_0.c.d.x)))), vec3<i32>(~(~1i), _wgslsmith_add_i32(-arg_0.c.b, -var_2.a), _wgslsmith_dot_vec2_i32(min(vec2<i32>(arg_0.c.a, -2147483647i) >> (u_input.a.xx % vec2<u32>(32u)), -vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 4u)])), vec2<i32>(-35602i, 1i))), min(vec4<u32>(~countOneBits(1u), arg_1.x, (0u ^ var_2.c.x) << (var_2.e % 32u), ~u_input.a.x), ~arg_1 >> (~vec4<u32>(65074u, arg_0.c.e, u_input.b.x, arg_0.c.c.x) % vec4<u32>(32u))));
}

fn func_1() -> StorageBuffer {
    let var_0 = u_input.b.x;
    global0 = array<i32, 4>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-188f, 822f) - vec2<f32>(-1634f, -1404f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-171f, -1607f) - vec2<f32>(-569f, 372f))))))));
    var var_2 = ~(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, u_input.b.x, countOneBits(u_input.b.x)), var_0));
    let var_3 = _wgslsmith_div_f32(var_1.a.x, 539f);
    return func_5(Struct_3(func_4(func_3(func_2(vec3<u32>(59797u, 0u, 4294967295u)), Struct_2(vec2<f32>(317f, var_3)))), func_3(func_2(_wgslsmith_clamp_vec3_u32(u_input.b.wxw, u_input.b.wyx, u_input.b.ywy)), var_1), Struct_1(firstTrailingBit(~global0[_wgslsmith_index_u32(46702u, 4u)]), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(var_0, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]) ^ global0[_wgslsmith_index_u32(countOneBits(31668u), 4u)], ~abs(u_input.b.xzx), select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec4<bool>(true, false, true, true))), _wgslsmith_mod_u32(57503u, var_0) & u_input.a.x), func_3(Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3, 945f)))), var_1)), u_input.a ^ u_input.a, (31371i ^ (global0[_wgslsmith_index_u32(var_0, 4u)] & 1i)) >= 18420i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

