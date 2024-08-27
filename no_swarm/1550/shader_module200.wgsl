struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(31786u, vec2<f32>(846f, -713f));

var<private> global1: array<Struct_2, 28>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<i32>(-9423i, -1177i)), Struct_1(vec2<i32>(-41880i, -1i)), Struct_1(vec2<i32>(-25602i, -24866i)), Struct_1(vec2<i32>(1i, 20233i)), Struct_1(vec2<i32>(-32839i, 0i)), Struct_1(vec2<i32>(8216i, i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, 13835i)), Struct_1(vec2<i32>(9583i, -62434i)), Struct_1(vec2<i32>(-58146i, 2147483647i)), Struct_1(vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<i32>(-4051i, -12193i)), Struct_1(vec2<i32>(-29478i, 23037i)), Struct_1(vec2<i32>(i32(-2147483648), 11899i)), Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(-19182i, -34136i)), Struct_1(vec2<i32>(13134i, -57986i)), Struct_1(vec2<i32>(52198i, 29013i)), Struct_1(vec2<i32>(1i, -23959i)), Struct_1(vec2<i32>(2147483647i, 67894i)), Struct_1(vec2<i32>(-11373i, 2147483647i)), Struct_1(vec2<i32>(1i, 53519i)), Struct_1(vec2<i32>(-12114i, i32(-2147483648))), Struct_1(vec2<i32>(10439i, -18436i)), Struct_1(vec2<i32>(-663i, 2147483647i)), Struct_1(vec2<i32>(0i, -1i)));

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> i32 {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) - _wgslsmith_f_op_f32(arg_3.b.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f) + 1f)))));
    global3 = array<Struct_1, 28>();
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(-194f - 1487f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(195f)), _wgslsmith_f_op_f32(select(-541f, -984f, true)))))));
    let var_3 = arg_3.a;
    return ~(-564i);
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    global3 = array<Struct_1, 28>();
    var var_0 = (_wgslsmith_add_i32(0i, func_3(0i, _wgslsmith_f_op_f32(f32(-1f) * -769f), _wgslsmith_f_op_f32(max(885f, -1000f)), Struct_2(1u, vec2<f32>(-2488f, -482f)))) | -1i) << (31202u % 32u);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d, reverseBits(arg_0)), 28u)];
    global1 = array<Struct_2, 28>();
    var var_2 = global3[_wgslsmith_index_u32(~(~(91084u << (global0.a % 32u)) | var_1.a) << (min(0u, ~(~_wgslsmith_dot_vec2_u32(arg_0.xy, arg_0.xy))) % 32u), 28u)];
    return -_wgslsmith_mod_i32(2147483647i, min(2147483647i, var_2.a.x));
}

fn func_1(arg_0: i32, arg_1: bool) -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.b.x & u_input.d.x, 28u)];
    var var_1 = vec3<u32>(4294967295u << (~_wgslsmith_sub_u32(u_input.b.x, u_input.d.x) % 32u), ~1u, 1u << (u_input.d.x % 32u));
    let var_2 = vec2<u32>(48724u, var_0.a);
    var var_3 = Struct_1(vec2<i32>(u_input.a.x, abs(func_2(vec3<u32>(18797u, global0.a, var_2.x))) ^ (1i >> ((var_2.x ^ var_1.x) % 32u))));
    var var_4 = any(vec2<bool>(true, true));
    return vec4<i32>(~max(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_0, arg_0), reverseBits(arg_0), arg_0 >> (global0.a % 32u)), -var_3.a.x), abs(-var_3.a.x), min(0i, 28521i), _wgslsmith_mult_i32(0i, u_input.c.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-930f, arg_2.b.x, -127f) * vec3<f32>(arg_2.b.x, arg_2.b.x, -231f)) + vec3<f32>(-1023f, -1145f, global0.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 1695f, global0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, -788f, arg_2.b.x)))))));
    let var_1 = false;
    var var_2 = global2[_wgslsmith_index_u32(0u, 26u)];
    global3 = array<Struct_1, 28>();
    global2 = array<Struct_1, 26>();
    return Struct_1(select(min(~(~vec2<i32>(arg_1.a.x, 2147483647i)), var_2.a), -func_1(~arg_1.a.x, var_1).wz, !(!(!vec2<bool>(var_1, var_1)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> StorageBuffer {
    global1 = array<Struct_2, 28>();
    let var_0 = -(~func_1(arg_0.a.x, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))).zy);
    let var_1 = vec3<bool>(true, true, !all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), global0.b.x <= global0.b.x)));
    global1 = array<Struct_2, 28>();
    global0 = Struct_2(u_input.b.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(global0.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, -1534f)), global0.b, false)), !(!(!vec2<bool>(var_1.x, var_1.x))))));
    return StorageBuffer(vec3<u32>(0u, ~0u >> (arg_2.a % 32u), reverseBits(20727u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(func_1(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), all(vec4<bool>(true, true, false, true))), Struct_1(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c.x, u_input.a.x), ~u_input.c.xw)), Struct_2(0u, vec2<f32>(-608f, 2344f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1354f, 1520f, global0.b.x))))))), global1[_wgslsmith_index_u32(1u, 28u)]);
}

