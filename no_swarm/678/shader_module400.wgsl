struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<i32>(1i, -27032i, -32545i), vec2<u32>(17806u, 1u)), Struct_1(vec3<i32>(0i, -1i, 0i), vec2<u32>(21360u, 27205u)), Struct_1(vec3<i32>(-17776i, -10925i, 1i), vec2<u32>(25235u, 12164u)), Struct_1(vec3<i32>(1i, -35359i, 2147483647i), vec2<u32>(25533u, 33984u)), Struct_1(vec3<i32>(2147483647i, 1i, 0i), vec2<u32>(1u, 35159u)), Struct_1(vec3<i32>(20786i, 4907i, 1i), vec2<u32>(25564u, 24063u)), Struct_1(vec3<i32>(-22161i, -21397i, 1i), vec2<u32>(0u, 0u)), Struct_1(vec3<i32>(-17082i, -2630i, -2797i), vec2<u32>(0u, 56259u)), Struct_1(vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec2<u32>(14396u, 4588u)), Struct_1(vec3<i32>(-1i, 1i, 5405i), vec2<u32>(4294967295u, 0u)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 75252i), vec2<u32>(67170u, 1u)));

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, i32(-2147483648), 44500i);

var<private> global2: array<vec3<f32>, 25>;

var<private> global3: i32 = i32(-2147483648);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<u32> {
    global2 = array<vec3<f32>, 25>();
    let var_0 = vec2<u32>((1u & ~reverseBits(u_input.a)) | 30082u, u_input.e.x);
    global1 = _wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.zwx, abs(u_input.c.xxz)), select(u_input.c.xxx | vec3<i32>(1i, global1.x, 23564i), u_input.c.wxy, select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true))), vec3<i32>(-_wgslsmith_dot_vec2_i32(global1.yz, _wgslsmith_div_vec2_i32(u_input.b, global1.yx)), (2852i | select(u_input.d.x, u_input.b.x, true)) & _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -3627i) ^ vec2<i32>(1i, u_input.b.x), u_input.c.zz), -select(10728i, 75025i, true) | -_wgslsmith_div_i32(u_input.c.x, u_input.c.x)));
    global3 = 33552i;
    global1 = select(~vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(1i, max(u_input.d.x, 1i)), 0i), u_input.c.xwx, all(vec3<bool>(true, any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)))));
    return reverseBits(vec2<u32>(countOneBits(var_0.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(25701u, 4294967295u, 10830u, 12850u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, u_input.e.x), vec4<u32>(u_input.e.x, 1u, 1u, var_0.x)), vec4<bool>(true, true, true, true)), ~u_input.e)));
}

fn func_2(arg_0: bool, arg_1: bool) -> vec3<f32> {
    let var_0 = Struct_1(vec3<i32>(-countOneBits(u_input.b.x), 1001i, i32(-1i) * -firstTrailingBit(2147483647i)), func_3());
    let var_1 = select(!select(select(vec2<bool>(arg_0, false), select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, false)), arg_0), vec2<bool>(true, true), select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_1, true), false), select(vec2<bool>(arg_0, arg_1), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0, true))), !(!select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), arg_0), !vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_1))), !(!select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), all(vec2<bool>(true, true)))));
    global3 = -max(-82628i, u_input.b.x);
    let var_2 = arg_1 || var_1.x;
    var var_3 = -30423i;
    return vec3<f32>(_wgslsmith_f_op_f32(step(-518f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1309f - -487f) - _wgslsmith_f_op_f32(sign(-257f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-265f - 246f) + _wgslsmith_f_op_f32(step(1753f, -846f)))))), _wgslsmith_f_op_f32(-402f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + -672f)))), _wgslsmith_div_f32(-145f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-376f, -1311f, arg_1)) + _wgslsmith_f_op_f32(sign(614f))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> StorageBuffer {
    global3 = -1i;
    let var_0 = abs((u_input.c.wx & reverseBits(u_input.d)) << (vec2<u32>(_wgslsmith_mod_u32(4294967295u, countOneBits(4294967295u)), 0u) % vec2<u32>(32u)));
    var var_1 = -(u_input.c & -u_input.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(884f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1662f, -1276f)), -275f) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(false, true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, -1157f)))))));
    global1 = ~min(~firstLeadingBit(countOneBits(vec3<i32>(28622i, 1i, -33594i))), ~var_1.xyy);
    return StorageBuffer(vec4<i32>(7592i, i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.x), vec2<i32>(-45361i, global1.x)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-31337i, var_1.x), -u_input.b.x), select(_wgslsmith_sub_i32(var_1.x, 2147483647i), -1i, false)), i32(-1i) * -max(u_input.c.x, var_0.x)), u_input.e, _wgslsmith_mod_i32(0i, -u_input.c.x), -833f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 25>();
    global1 = vec3<i32>(~(-38948i), global1.x, -17481i);
    global2 = array<vec3<f32>, 25>();
    global3 = ~1i;
    var var_0 = _wgslsmith_dot_vec4_u32(u_input.e, select(u_input.e, vec4<u32>(countOneBits(firstTrailingBit(4294967295u)), u_input.a, ~4294967295u, 4294967295u), true));
    var var_1 = abs(u_input.b);
    var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.e.zzy, vec3<u32>(u_input.a, u_input.e.x, 64516u)) | (u_input.e.wyx ^ ~u_input.e.ywy), countOneBits(firstLeadingBit(u_input.e.zwx)));
    let x = u_input.a;
    s_output = func_1(global0[_wgslsmith_index_u32(u_input.a, 11u)], u_input.e.yxx);
}

