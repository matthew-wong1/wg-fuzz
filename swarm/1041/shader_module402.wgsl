struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: Struct_2 = Struct_2(-574f, -1i, vec4<bool>(true, false, false, true), vec2<i32>(2147483647i, i32(-2147483648)), true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec2<u32> {
    return _wgslsmith_clamp_vec2_u32(~reverseBits(vec2<u32>(arg_1, u_input.b)) | ~vec2<u32>(1u, ~0u), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.xzx, u_input.a.yxz) ^ ~vec3<u32>(25196u, u_input.a.x, 4294967295u), u_input.a.yyz), ~15041u), vec2<u32>(0u, _wgslsmith_sub_u32(u_input.b, 30103u)));
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(38253u), 62162u ^ countOneBits(arg_0.b)), _wgslsmith_dot_vec2_u32(abs(~func_3(Struct_2(global0.a, 2147483647i, global0.c, arg_0.a, global2.e), 0u, 1720f, Struct_2(-1249f, global2.b, vec4<bool>(true, false, global2.e, global0.e), vec2<i32>(global0.d.x, 2147483647i), false))), ~_wgslsmith_div_vec2_u32(select(u_input.a.zx, vec2<u32>(u_input.a.x, u_input.a.x), global0.c.x), u_input.a.zx << (vec2<u32>(u_input.a.x, u_input.b) % vec2<u32>(32u)))));
    var_0 = 1u;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-858f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c + global2.a)))))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(24919i, global0.d.x, 1i), vec3<i32>(24151i, global2.d.x, 0i)), ~(~vec3<i32>(global0.d.x, arg_0.a.x, global0.b))), vec3<i32>(select(-24384i, global2.d.x, true), 1i, _wgslsmith_mult_i32(1i, arg_0.a.x)) << (abs(u_input.a.zxy) % vec3<u32>(32u))), select(select(global0.c, !select(global0.c, global2.c, global0.c), global2.c), select(select(!global2.c, !global0.c, global0.e | global2.c.x), global0.c, vec4<bool>(select(global0.e, global2.c.x, false), !global2.c.x, false, global2.c.x)), all(!select(global0.c.xw, vec2<bool>(global0.c.x, true), false))), ~global2.d, true);
    global2 = Struct_2(var_1.a, 25109i, !global2.c, firstLeadingBit(~min(firstLeadingBit(vec2<i32>(var_1.d.x, arg_0.a.x)), ~vec2<i32>(23907i, var_1.d.x))), any(!select(vec2<bool>(true, false), select(vec2<bool>(global2.c.x, false), global2.c.yy, global0.c.ww), vec2<bool>(global0.c.x, false))));
    let var_2 = u_input.a.zx;
    return _wgslsmith_mod_vec3_u32((_wgslsmith_clamp_vec3_u32(~vec3<u32>(26120u, 0u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec3_u32(u_input.a.wwz, vec3<u32>(4294967295u, var_2.x, var_2.x), vec3<u32>(0u, 67308u, 1u))) | ~(~u_input.a.wzz)) >> (u_input.a.zwz % vec3<u32>(32u)), u_input.a.zxz);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: bool) -> i32 {
    var var_0 = ~func_2(Struct_1(vec2<i32>(~1i, global2.d.x >> (arg_0.x % 32u)), 1u, -1252f));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1534f, 1746f, global2.a, global2.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(331f, global2.a, global0.a, -805f), vec4<f32>(-102f, -550f, global0.a, global2.a)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 370f, 1743f, -1232f)), vec4<f32>(656f, -281f, 710f, 623f), select(vec4<bool>(global2.e, arg_2, true, false), global0.c, true))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, global2.a, global0.a) - vec4<f32>(global0.a, global2.a, global0.a, -1370f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, -195f, -1429f, global2.a))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(952f, _wgslsmith_f_op_f32(-1337f - -538f), _wgslsmith_div_f32(global2.a, 423f), global0.a))))), any(select(!select(global0.c.wz, vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(2147483647i <= global2.d.x, !arg_2), !(!global2.c.xw)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1117f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(479f - global2.a))) - -397f), ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global2.d.x, global2.d.x), global0.d.x | 14394i, reverseBits(-1i)), -vec3<i32>(-2147483647i, global2.d.x, -1i)), select(global2.c, global0.c, !global2.c.x), vec2<i32>(max(_wgslsmith_mod_i32(global0.d.x & global2.d.x, max(24921i, global2.b)), global2.b), firstTrailingBit(global2.d.x)), !global2.e);
    var var_3 = var_2.c.yz;
    var var_4 = any(!(!vec2<bool>(false, !var_2.e)));
    return _wgslsmith_add_i32(-32802i, _wgslsmith_sub_i32(var_2.d.x, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(func_1(_wgslsmith_mod_vec3_u32(u_input.a.yzx, vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 32315u), select(69076u, u_input.a.x, false), 1u)), reverseBits(28205u), any(select(select(global2.c.yx, vec2<bool>(global0.c.x, global2.e), vec2<bool>(global0.e, global0.c.x)), !vec2<bool>(global0.e, global0.e), vec2<bool>(false, false)))), global2.d.x);
    global0 = Struct_2(-327f, global2.d.x, select(select(global2.c, select(select(vec4<bool>(global0.e, global0.c.x, global2.e, false), global0.c, true), !vec4<bool>(global2.e, global0.c.x, true, true), global0.e), global0.c), global0.c, vec4<bool>(!global0.e, global2.c.x, select(global2.e && global2.c.x, global0.c.x, any(vec2<bool>(false, global2.c.x))), global0.c.x)), ~(-vec2<i32>(global0.d.x ^ -36371i, reverseBits(4714i))), false);
    global1 = u_input.a.x;
    let var_1 = true;
    let var_2 = reverseBits(min(~(~(vec4<u32>(1u, u_input.b, u_input.b, 35972u) << (u_input.a % vec4<u32>(32u)))), u_input.a));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-425f * 620f), _wgslsmith_f_op_f32(global2.a + global2.a), -2147483647i <= global2.d.x)))), ~global0.d.x, !(!select(vec4<bool>(global0.e, true, false, true), global2.c, true)), vec2<i32>(i32(-1i) * -10603i, -23395i | -_wgslsmith_div_i32(global0.d.x, global0.b)), global0.b < min(global2.b, 3343i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, _wgslsmith_f_op_f32(global2.a * var_3.a), 2385f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(862f, global0.a, -406f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, var_3.a, var_3.a) + vec3<f32>(global2.a, 1000f, global2.a)), true))), true)), firstLeadingBit(global0.d));
}

