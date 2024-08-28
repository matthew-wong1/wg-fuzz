struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<i32>, 22>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<u32> {
    var var_0 = firstTrailingBit(countOneBits(_wgslsmith_div_u32(~abs(0u), 4294967295u)));
    global0 = 1000f;
    global0 = _wgslsmith_f_op_f32(-arg_1);
    global0 = _wgslsmith_f_op_f32(trunc(-1663f));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-786f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-959f)) * _wgslsmith_f_op_f32(select(arg_1, 160f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_1)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 778f) * -713f)), _wgslsmith_div_f32(-1880f, 408f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(-1f)));
    return firstLeadingBit(u_input.d.xzw);
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-1f);
    var var_0 = _wgslsmith_mult_vec3_u32(func_3(Struct_1(-(vec3<i32>(-17533i, -31857i, u_input.c) & global1[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec3<bool>(true, u_input.c != u_input.c, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(sign(227f))), max(u_input.d.xyx, u_input.d.xxw >> (u_input.d.yxy % vec3<u32>(32u))));
    let var_1 = Struct_2(reverseBits(abs(vec2<i32>(-u_input.c, _wgslsmith_mod_i32(0i, -56745i)))));
    var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(~abs(0u), u_input.a.x, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(~var_0.x, var_0.x, _wgslsmith_clamp_u32(max(4294967295u, 1u), ~u_input.d.x, u_input.d.x)), firstLeadingBit(~vec3<u32>(77445u, var_0.x, 7178u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-398f, _wgslsmith_f_op_f32(449f - 1376f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2044f + -1000f), _wgslsmith_div_f32(1388f, 593f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1242f, _wgslsmith_div_f32(1020f, -640f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-650f, -2397f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-1281f + -1741f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -898f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-979f * 438f))));
    return Struct_1(firstLeadingBit(max(~global1[_wgslsmith_index_u32(1u, 22u)], ~vec3<i32>(1i, u_input.c, var_1.a.x)) ^ global1[_wgslsmith_index_u32(12411u, 22u)]), !(!select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true)), vec2<bool>(false, true));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: u32) -> u32 {
    let var_0 = ~(u_input.d | vec4<u32>(1u, arg_0 << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 34661u, arg_0), vec3<u32>(1u, arg_0, 25732u)) % 32u), u_input.a.x, ~(~arg_2)));
    let var_1 = func_2();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) + arg_1));
    var var_2 = -508f;
    let var_3 = Struct_2(firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec2_i32(-var_1.a.zz, vec2<i32>(var_1.a.x, var_1.a.x) | var_1.a.yz))));
    return countOneBits(~(u_input.a.x << (min(65858u, 69034u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-796f * _wgslsmith_div_f32(491f, -492f))) - 620f), 25931u, ~abs(_wgslsmith_sub_u32(func_1(u_input.a.x, -1212f, 0u), 0u)), u_input.a);
}

