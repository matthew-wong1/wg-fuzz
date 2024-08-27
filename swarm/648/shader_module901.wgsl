struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(2213f, Struct_1(false), vec2<bool>(true, false), vec2<f32>(1823f, -1741f)), Struct_2(-542f, Struct_1(true), vec2<bool>(true, false), vec2<f32>(-381f, 948f)), Struct_2(1672f, Struct_1(true), vec2<bool>(true, true), vec2<f32>(-1826f, 114f)), Struct_2(-915f, Struct_1(false), vec2<bool>(false, false), vec2<f32>(-566f, -402f)), Struct_2(1635f, Struct_1(true), vec2<bool>(true, false), vec2<f32>(-182f, -310f)), Struct_2(1520f, Struct_1(false), vec2<bool>(true, true), vec2<f32>(235f, 1460f)), Struct_2(1678f, Struct_1(true), vec2<bool>(true, true), vec2<f32>(-864f, -474f)), Struct_2(-1075f, Struct_1(false), vec2<bool>(false, true), vec2<f32>(-144f, -179f)), Struct_2(-1000f, Struct_1(true), vec2<bool>(false, false), vec2<f32>(-1000f, -561f)), Struct_2(-907f, Struct_1(true), vec2<bool>(true, true), vec2<f32>(976f, 695f)), Struct_2(403f, Struct_1(false), vec2<bool>(false, false), vec2<f32>(211f, 408f)), Struct_2(-1296f, Struct_1(false), vec2<bool>(false, true), vec2<f32>(324f, -682f)), Struct_2(-277f, Struct_1(true), vec2<bool>(true, true), vec2<f32>(1326f, -189f)), Struct_2(-490f, Struct_1(true), vec2<bool>(true, false), vec2<f32>(659f, -1305f)), Struct_2(-1191f, Struct_1(true), vec2<bool>(false, false), vec2<f32>(-1000f, 1020f)), Struct_2(572f, Struct_1(false), vec2<bool>(false, true), vec2<f32>(-414f, 659f)), Struct_2(-669f, Struct_1(true), vec2<bool>(true, false), vec2<f32>(926f, -1681f)), Struct_2(-520f, Struct_1(false), vec2<bool>(false, false), vec2<f32>(-283f, 523f)), Struct_2(-329f, Struct_1(true), vec2<bool>(true, false), vec2<f32>(-1000f, -360f)), Struct_2(-930f, Struct_1(true), vec2<bool>(false, true), vec2<f32>(1000f, 156f)), Struct_2(1339f, Struct_1(true), vec2<bool>(false, true), vec2<f32>(-367f, -1435f)), Struct_2(665f, Struct_1(true), vec2<bool>(true, true), vec2<f32>(-1953f, 1537f)), Struct_2(-543f, Struct_1(false), vec2<bool>(false, true), vec2<f32>(-805f, 1320f)), Struct_2(-523f, Struct_1(false), vec2<bool>(true, false), vec2<f32>(-285f, -832f)), Struct_2(182f, Struct_1(true), vec2<bool>(false, false), vec2<f32>(260f, -152f)), Struct_2(-249f, Struct_1(false), vec2<bool>(false, false), vec2<f32>(-2594f, 1477f)));

var<private> global1: vec4<i32> = vec4<i32>(31182i, -35971i, 2147483647i, -1114i);

var<private> global2: array<Struct_3, 14>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    global0 = array<Struct_2, 26>();
    var var_0 = all(vec4<bool>(true, true, true, true));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-573f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(933f * 1002f), -369f, arg_0.a))))), arg_0, vec2<bool>(true, arg_0.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1725f)), 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_mod_i32(-20125i, 63927i), -abs(arg_1.a));
    var var_3 = vec4<i32>(firstTrailingBit(firstLeadingBit(~select(global1.x, -25588i, var_1.c.x))), -29153i >> (0u % 32u), 1i, firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global1.wzy, global1.yzy), -arg_1.a)));
    return 2147483647i;
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_3(firstLeadingBit(abs(global1.x)) << (u_input.a % 32u), arg_0.b, !(!all(arg_0.c)));
    global0 = array<Struct_2, 26>();
    global1 = abs(vec4<i32>(func_3(Struct_1(var_0.c), var_0), -2147483647i, ~(max(var_0.a, 0i) & _wgslsmith_add_i32(var_0.a, var_0.a)), 1i));
    global2 = array<Struct_3, 14>();
    var var_1 = var_0.b;
    return ~u_input.a;
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = -841f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) * arg_0);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(736f, 1197f), vec2<f32>(arg_0, -121f))))));
    global0 = array<Struct_2, 26>();
    var var_2 = _wgslsmith_add_vec2_u32(~abs(vec2<u32>(reverseBits(u_input.a), u_input.a)), vec2<u32>(func_2(Struct_2(_wgslsmith_f_op_f32(arg_0 - -966f), Struct_1(true), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(114f, arg_0) - vec2<f32>(var_1.x, var_1.x)))), (0u << ((1u << (u_input.a % 32u)) % 32u)) << (0u % 32u)));
    return ~(~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, -2147483647i, 2147483647i, ~(-23743i)), max(reverseBits(vec4<i32>(-2147483647i, -26819i, global1.x, 0i)), vec4<i32>(global1.x, 2147483647i, global1.x, global1.x)) << (vec4<u32>(max(u_input.a, u_input.a), ~44377u, func_1(-858f), 31124u) % vec4<u32>(32u))), vec4<i32>(-2147483647i, -11196i, 28239i, countOneBits(-(19816i ^ global1.x))));
    global1 = var_0;
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(38947u), 26u)];
    global2 = array<Struct_3, 14>();
    global1 = countOneBits(reverseBits(-(~(vec4<i32>(14313i, -2147483647i, global1.x, 5470i) << (vec4<u32>(0u, 4294967295u, 4573u, 0u) % vec4<u32>(32u))))));
    var var_2 = select(false, select(!all(vec4<bool>(true, false, true, var_1.c.x)), true, var_1.b.a), !var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(var_0.zy, -(var_0.wx & global1.xw)) >> (~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 40911u, u_input.a), vec3<u32>(9897u, 1u, u_input.a)), reverseBits(24869u)) % vec2<u32>(32u)), vec3<i32>(~global1.x, firstLeadingBit(select(-17476i, max(0i, -91439i), true | var_1.b.a)), 2147483647i), -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(420f, -400f, var_1.b.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * 428f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(268f, var_1.d.x)) * -975f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(175f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-116f + 278f) - 1597f)))));
}

