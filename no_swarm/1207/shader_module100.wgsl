struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<f32>(961f, 1183f, 199f, 1000f), -45204i, vec2<i32>(11913i, 0i)), Struct_1(vec4<f32>(-146f, 569f, 937f, -1000f), -1i, vec2<i32>(-1i, -12039i)), Struct_1(vec4<f32>(-1176f, -2634f, -1914f, -309f), 0i, vec2<i32>(-12021i, -52029i)), Struct_1(vec4<f32>(-1216f, -1030f, 228f, -160f), -37150i, vec2<i32>(-1i, -10979i)), Struct_1(vec4<f32>(-1841f, 598f, 732f, 1058f), -31404i, vec2<i32>(-2123i, -8635i)), Struct_1(vec4<f32>(-844f, 605f, -386f, 1901f), i32(-2147483648), vec2<i32>(i32(-2147483648), -36308i)), Struct_1(vec4<f32>(-603f, 791f, -751f, -900f), -66415i, vec2<i32>(i32(-2147483648), 34936i)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<f32> {
    global0 = array<Struct_1, 7>();
    var var_0 = false;
    var_0 = true | !(!any(vec2<bool>(true, false)));
    return arg_0.a.wzw;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = u_input.a;
    global0 = array<Struct_1, 7>();
    let var_1 = true;
    global0 = array<Struct_1, 7>();
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(1288f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-674f - -562f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(242f, -581f)), -772f)))), _wgslsmith_div_f32(-1569f, -872f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec4<f32>(-241f, 1015f, -226f, 1917f), 16193i, vec2<i32>(-25129i, 1i)), Struct_1(vec4<f32>(1269f, -528f, 495f, 1000f), u_input.b.x, arg_0.zy), arg_0)))));
    return Struct_1(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(min(-971f, -1876f))))), -509f, -189f), _wgslsmith_clamp_i32(reverseBits(-(~u_input.b.x)), arg_0.x, 1i), min(firstLeadingBit(~arg_0.zx) ^ select(vec2<i32>(-386i, 1i), vec2<i32>(u_input.b.x, -2147483647i), select(vec2<bool>(false, var_1), vec2<bool>(var_1, false), vec2<bool>(true, true))), vec2<i32>(_wgslsmith_clamp_i32(arg_0.x | -17179i, u_input.b.x, -21821i), 34441i)));
}

fn func_1() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(min(~(~u_input.a), _wgslsmith_div_u32(u_input.a & ~41474u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, 4294967295u, 40750u, u_input.a))) << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u)), 7u)];
    global0 = array<Struct_1, 7>();
    var_0 = func_2(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.x, -32876i, u_input.b.x, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), select(u_input.b.x, -2147483647i, true), ~u_input.b.x, ~u_input.b.x), _wgslsmith_sub_vec4_i32(-vec4<i32>(var_0.b, u_input.b.x, u_input.b.x, u_input.b.x), abs(vec4<i32>(-2147483647i, -12714i, -2147483647i, u_input.b.x))))));
    let var_1 = true;
    let var_2 = global0[_wgslsmith_index_u32(1u, 7u)];
    return countOneBits(u_input.a);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = firstLeadingBit(firstLeadingBit(u_input.a));
    let var_1 = _wgslsmith_div_u32(~(1u & var_0), var_0);
    global0 = array<Struct_1, 7>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~13865u | ~(0u ^ _wgslsmith_div_u32(var_0, u_input.a)), firstTrailingBit(~4294967295u)), 7u)];
    let var_3 = func_2(max(-max(select(vec4<i32>(arg_2.b, arg_2.c.x, 6914i, -38153i), vec4<i32>(2147483647i, -1i, 2147483647i, 16144i), vec4<bool>(true, true, true, false)), vec4<i32>(33447i, u_input.b.x, 0i, arg_2.c.x) >> (vec4<u32>(26300u, var_0, 31450u, var_1) % vec4<u32>(32u))), vec4<i32>(arg_2.c.x, u_input.b.x, var_2.b, select(-arg_2.b, -16301i, true))));
    return StorageBuffer(82116u, var_3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-161f, 499f) * vec2<f32>(992f, -641f)) + vec2<f32>(-1126f, 492f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-823f, 1078f, 2200f, 991f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1987f, 404f, 180f, 1000f))))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), ~65515u, u_input.a) >> (firstTrailingBit(~vec3<u32>(40881u, 3371u, 1u)) % vec3<u32>(32u)), vec3<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, func_1()), abs(1u))), 7u)], func_2(vec4<i32>(u_input.b.x, 6952i, u_input.b.x, u_input.b.x) << (vec4<u32>(~u_input.a, select(4294967295u, 4294967295u, true), u_input.a ^ 15524u, 1u) % vec4<u32>(32u))));
}

