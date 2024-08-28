struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

var<private> global1: vec3<u32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    var var_0 = global1.zz;
    let var_1 = u_input.a.x <= _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.a.x), select(2147483647i, u_input.a.x, true)) ^ firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, -8453i)));
    global1 = min(abs(vec3<u32>(_wgslsmith_mod_u32(global1.x, u_input.c) >> (u_input.c % 32u), global1.x, 1u & _wgslsmith_add_u32(4294967295u, global1.x))), max(select(~max(vec3<u32>(34754u, 50243u, global1.x), vec3<u32>(u_input.c, 39628u, global1.x)), ~abs(vec3<u32>(1u, u_input.c, 35910u)), !(!vec3<bool>(false, true, var_1))), vec3<u32>(firstLeadingBit(global1.x) | _wgslsmith_add_u32(26447u, var_0.x), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global1.yy, vec2<u32>(u_input.c, global1.x)), ~u_input.c), 22535u)));
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(-23404i, u_input.b.x, 2147483647i)), select(u_input.b.yyy, -u_input.b.zyy, vec3<bool>(var_1, true, true))), ~u_input.a.x), firstTrailingBit(29659i));
    let var_3 = Struct_1(_wgslsmith_sub_i32(abs(28384i), var_2));
    return vec3<u32>(_wgslsmith_mod_u32(4294967295u, abs(abs(global1.x))) << (~_wgslsmith_add_u32(max(u_input.c, 91813u), 200u) % 32u), u_input.c, ~var_0.x);
}

fn func_2() -> u32 {
    let var_0 = Struct_4(-5348i, ~_wgslsmith_add_u32(global1.x, abs(global1.x)));
    global0 = array<Struct_3, 23>();
    global0 = array<Struct_3, 23>();
    global1 = firstLeadingBit((max(func_3(), firstTrailingBit(vec3<u32>(u_input.c, 4294967295u, 1u))) & firstLeadingBit(abs(vec3<u32>(1u, global1.x, 113947u)))) & abs(select(reverseBits(vec3<u32>(u_input.c, 65337u, 0u)), vec3<u32>(global1.x, 24933u, 44159u) | vec3<u32>(global1.x, 6643u, 23142u), vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(474f, _wgslsmith_f_op_f32(sign(1580f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(245f)), _wgslsmith_f_op_f32(495f - 1880f)), -_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) >= -2147483647i)), -1515f);
    return ~(~_wgslsmith_div_u32(global1.x, 62447u));
}

fn func_1() -> bool {
    global0 = array<Struct_3, 23>();
    let var_0 = _wgslsmith_f_op_f32(round(185f)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -745f)))));
    global1 = vec3<u32>(~(~(global1.x & func_2())), ~10642u, 0u);
    global0 = array<Struct_3, 23>();
    var var_1 = Struct_3(vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(global1.x, 12536u, u_input.c, global1.x)), ~vec4<u32>(28646u, 30962u, global1.x, 0u)), ~u_input.c, 79791u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -149f, 577f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1139f, -334f, -819f)), all(vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1719f, -1983f, -648f)) * vec3<f32>(1127f, -1485f, 924f)), vec3<bool>(true, true, var_0))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(848f, 598f, -848f))), select(select(vec3<bool>(var_0, var_0, false), vec3<bool>(true, var_0, var_0), vec3<bool>(true, false, var_0)), select(vec3<bool>(false, var_0, true), vec3<bool>(true, var_0, false), var_0), vec3<bool>(var_0, false, var_0))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_f_op_f32(f32(-1f) * -347f), var_0)), _wgslsmith_f_op_f32(-247f * _wgslsmith_f_op_f32(trunc(-1093f)))));
    return all(!select(select(select(vec3<bool>(var_0, true, false), vec3<bool>(false, var_0, var_0), var_0), !vec3<bool>(true, true, var_0), !vec3<bool>(var_0, false, false)), vec3<bool>(var_0, all(vec2<bool>(true, false)), false || var_0), vec3<bool>(-468f > var_1.b.x, false, global1.x >= global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1868f * 452f)), _wgslsmith_f_op_f32(f32(-1f) * -942f), 1414f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -119f))))));
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(40626u, reverseBits(global1.x), global1.x), reverseBits(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 30943u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(27610u, global1.x, global1.x))))));
    global0 = array<Struct_3, 23>();
    var var_2 = !vec4<bool>(true, true, !all(vec3<bool>(true, true, false)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    global0 = array<Struct_3, 23>();
    var_2 = !(!vec4<bool>(var_2.x, func_1(), var_0.x < -1508f, var_2.x));
    var var_3 = Struct_1(~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-2257f, _wgslsmith_f_op_f32(f32(-1f) * -2289f))));
}

