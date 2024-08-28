struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: vec3<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<i32> {
    var var_0 = 1i >> (~(~0u) % 32u);
    let var_1 = ~_wgslsmith_add_vec2_i32(~(global1.yx & u_input.a.zx) | u_input.a.xy, firstTrailingBit(global1.zy));
    let var_2 = select(vec2<bool>(all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), all(vec3<bool>(true, false, false)))), true), !select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, false), true)));
    global0 = array<Struct_3, 15>();
    var var_3 = firstTrailingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 16720u)));
    return countOneBits(select(vec3<i32>(-33303i, var_1.x, _wgslsmith_div_i32(global1.x, 5976i)), vec3<i32>(firstTrailingBit(-1i), ~global1.x, abs(global1.x)), var_2.x) & max(~(~u_input.a), ~u_input.a ^ (vec3<i32>(global1.x, global1.x, -17076i) >> (vec3<u32>(var_3.x, 4294967295u, var_3.x) % vec3<u32>(32u)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<i32>) -> bool {
    global1 = vec3<i32>(select(reverseBits(~_wgslsmith_clamp_i32(-1i, -51009i, -14080i)), _wgslsmith_mod_i32(-1i, -(~0i)), true), -_wgslsmith_sub_i32(global1.x, -2147483647i), u_input.a.x);
    let var_0 = ~func_3();
    let var_1 = ~(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, u_input.a.x, -67739i, 73525i), vec4<i32>(46969i, 71210i, 1i, 20686i)), u_input.a.x, max(2147483647i >> (1u % 32u), global1.x)) << (vec4<u32>(arg_1.x, ~firstTrailingBit(arg_1.x), ~(~1u), arg_1.x) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1354f))));
    global1 = select(_wgslsmith_div_vec3_i32(var_1.zzy, _wgslsmith_mult_vec3_i32(var_1.xwy, max(var_1.wzy, var_1.wxw << (vec3<u32>(0u, arg_1.x, 4294967295u) % vec3<u32>(32u))))), _wgslsmith_add_vec3_i32(vec3<i32>(~var_0.x, _wgslsmith_mult_i32(var_0.x, arg_2.x), 2147483647i), ~func_3()), vec3<bool>(!(_wgslsmith_sub_u32(0u, arg_1.x) >= arg_1.x), var_2 > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f) - _wgslsmith_f_op_f32(ceil(774f))), arg_1.x < ~(~arg_1.x)));
    return any(select(vec2<bool>(true, arg_0.a), !select(vec2<bool>(arg_0.a, true), vec2<bool>(false, false), vec2<bool>(arg_0.a, false)), select(!vec2<bool>(arg_0.a, arg_0.a), select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, true), vec2<bool>(false, arg_0.a)), vec2<bool>(arg_0.a, true)))) != (any(!select(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, false, arg_0.a, arg_0.a), true)) | any(!(!vec4<bool>(arg_0.a, true, true, false))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(Struct_1(true), _wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, 1u), vec2<u32>(_wgslsmith_sub_u32(~1u, 1u), 0u), firstTrailingBit(vec2<u32>(0u, ~57239u))), _wgslsmith_div_vec2_i32(~global1.yy, ~vec2<i32>(min(-1i, -2147483647i), u_input.a.x)));
    var var_1 = select(vec3<bool>(all(!vec3<bool>(var_0, true, false)), !var_0, !all(select(vec4<bool>(false, true, false, true), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, true, var_0, var_0)))), vec3<bool>(true, true, var_0), select(select(!vec3<bool>(true, true, var_0), select(vec3<bool>(false, var_0, true), vec3<bool>(true, true, true), select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, false), var_0)), true), select(select(select(vec3<bool>(var_0, true, false), vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, var_0)), vec3<bool>(false, var_0, var_0), any(vec3<bool>(false, var_0, var_0))), !select(vec3<bool>(var_0, true, var_0), vec3<bool>(false, true, var_0), vec3<bool>(var_0, var_0, true)), vec3<bool>(true, all(vec4<bool>(var_0, var_0, true, false)), var_0)), select(select(vec3<bool>(var_0, var_0, false), !vec3<bool>(true, false, var_0), false), select(vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(var_0, true, true), vec3<bool>(false, var_0, false), var_0), var_0 | false), !(!vec3<bool>(var_0, true, true)))));
    var_1 = select(!vec3<bool>(false, all(vec4<bool>(var_0, true, var_1.x, false)), !var_1.x), vec3<bool>(select(var_1.x, ~0u > select(45695u, 0u, var_1.x), var_0), var_0, true), var_0);
    let var_2 = vec4<i32>(reverseBits(abs(~firstLeadingBit(u_input.a.x))), firstTrailingBit(-2147483647i), -2147483647i, firstTrailingBit(u_input.a.x));
    var var_3 = Struct_1(var_0);
    return Struct_1(!(!(!all(vec3<bool>(var_3.a, false, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-745f, 2213f, -184f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(368f, -792f, -724f), vec3<f32>(444f, 1000f, -836f))))) - vec3<f32>(_wgslsmith_f_op_f32(sign(-598f)), _wgslsmith_f_op_f32(f32(-1f) * -367f), -847f)), false)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1129f, _wgslsmith_f_op_f32(-1752f - _wgslsmith_f_op_f32(max(308f, -182f))), -971f) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2394f, 1185f, -1606f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1479f, 1689f, -1338f)), vec3<f32>(219f, 1116f, -125f)))))));
    global0 = array<Struct_3, 15>();
    let var_1 = -77398i;
    var var_2 = true;
    var var_3 = firstTrailingBit(abs(0i));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 15>();
    let var_0 = func_4(func_1(), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 15u)], firstLeadingBit(~min(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 44144u, 4294967295u, 11766u))), ~firstLeadingBit(1i));
    global1 = u_input.a;
    global0 = array<Struct_3, 15>();
    global1 = vec3<i32>(1i, select(-21381i, global1.x, var_0.a), _wgslsmith_clamp_i32(2361i, global1.x, global1.x)) ^ u_input.a;
    global0 = array<Struct_3, 15>();
    global1 = ~(-_wgslsmith_add_vec3_i32(u_input.a, reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 2147483647i, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, -4691i)))));
    global0 = array<Struct_3, 15>();
    let var_1 = _wgslsmith_f_op_f32(select(494f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-348f, -2649f)))))), !var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(62477u, 4294967295u, 4294967295u, 73481u)), ~vec4<u32>(_wgslsmith_clamp_u32(62633u, 5097u, 12409u), 40017u, ~1u, _wgslsmith_clamp_u32(56447u, 10667u, 83496u))), -2147483647i, vec2<u32>(1u, 1u), 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 36348u, 75944u), vec4<u32>(4294967295u, 86882u, 37088u, 1u)), min(vec4<u32>(1u, 0u, 45309u, 4294967295u), vec4<u32>(4294967295u, 1u, 2742u, 1u)), ~vec4<u32>(4294967295u, 99532u, 87864u, 58697u)), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(4294967295u, 4294967295u, 15019u, 14044u)), vec4<u32>(1u, 1u, 1u, 1u))));
}

