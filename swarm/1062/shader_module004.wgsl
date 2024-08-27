struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec4<i32> {
    var var_0 = reverseBits(vec2<i32>(-firstTrailingBit(u_input.a.x), -12644i));
    var var_1 = -(u_input.a.xyw & u_input.a.wxx);
    let var_2 = Struct_4(select(~vec2<i32>(_wgslsmith_add_i32(u_input.a.x, var_0.x), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), ~vec2<i32>(abs(-28708i), var_1.x), select(select(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), true), select(vec2<bool>(false, arg_0), vec2<bool>(false, false), vec2<bool>(false, arg_0))), !select(vec2<bool>(true, false), vec2<bool>(false, arg_0), true), true)), vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 47995u, 99997u), vec3<u32>(1u, 1u, 1u), true), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 36082u, 93881u), abs(vec3<u32>(13662u, 16729u, 0u)), vec3<u32>(1u, 28369u, 4294967295u))), ~(~571u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -469f, arg_1))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(576f, 1103f, 1215f), vec3<f32>(arg_1, 1001f, -2109f)) - vec3<f32>(-736f, arg_1, 173f)))), !(!(!(!vec2<bool>(arg_0, true)))));
    let var_3 = var_2;
    var var_4 = _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_3.b.x, var_3.b.x), vec3<u32>(38015u, 0u, var_2.b.x)), var_3.b.x, var_3.b.x << (var_3.b.x % 32u), 79357u)) << (firstLeadingBit(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_3.b.x, 4294967295u, var_2.b.x, var_2.b.x)), vec4<u32>(var_2.b.x, var_3.b.x, var_2.b.x, 39865u) >> (vec4<u32>(36191u, var_2.b.x, var_3.b.x, 14949u) % vec4<u32>(32u)))) % vec4<u32>(32u)), (~vec4<u32>(34978u, var_2.b.x, var_2.b.x, var_2.b.x) & vec4<u32>(~var_3.b.x, 73698u, 1u, reverseBits(1u))) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(var_2.b.x, var_2.b.x, 0u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 87510u, var_3.b.x), vec4<u32>(49272u, 1u, 75337u, 15778u), vec4<u32>(var_3.b.x, var_3.b.x, 52996u, 18220u))) | vec4<u32>(~1u, _wgslsmith_mod_u32(22353u, var_2.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(26338u, var_2.b.x, var_3.b.x), vec3<u32>(91057u, 0u, var_2.b.x)), var_2.b.x)) % vec4<u32>(32u)));
    return u_input.a;
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = func_3(false, _wgslsmith_f_op_f32(-1010f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_1 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 4294967295u, arg_0, arg_0), vec4<u32>(arg_0, ~46483u, abs(4294967295u), countOneBits(firstLeadingBit(~arg_0))));
    let var_3 = Struct_4(var_0.wx, var_2.xy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(525f, 617f, -1000f), vec3<f32>(871f, 260f, -1824f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(369f, 424f, 989f)), var_1.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-389f, 426f, -217f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(276f, -844f, -853f))), !vec3<bool>(false, var_1.x, false))))), vec2<bool>(!(true & var_1.x), any(!vec3<bool>(var_1.x, var_1.x, var_1.x))));
    var var_4 = Struct_5(Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(~var_2.xww, reverseBits(vec3<u32>(var_2.x, arg_0, 1u))), any(var_3.d)), -543f, _wgslsmith_f_op_f32(ceil(-992f))), _wgslsmith_mult_vec4_i32(min(u_input.a, vec4<i32>(u_input.a.x, -47623i, -48134i, var_3.a.x)), vec4<i32>(u_input.a.x, ~select(31536i, var_0.x, false), 1i, countOneBits(29131i))));
    return Struct_3(var_4.a.a, max(~(-_wgslsmith_div_i32(var_3.a.x, var_0.x)), func_3(!any(vec4<bool>(false, var_1.x, true, var_3.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(855f - var_3.c.x) - _wgslsmith_f_op_f32(var_4.a.b + 1156f))).x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1043f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -905f))))), -1030f));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_div_u32(_wgslsmith_mod_u32(reverseBits(~56726u), countOneBits(1u)), ~1u));
    let var_1 = Struct_5(Struct_2(var_0.a, 1f, _wgslsmith_f_op_f32(var_0.c.x + 304f)), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, 1i, 49916i, u_input.a.x), ~vec4<i32>(26301i, 31004i, var_0.b, -12928i), vec4<i32>(1i, u_input.a.x, var_0.b, -34442i)), vec4<i32>(u_input.a.x, 0i, -1i, u_input.a.x)), var_0.b, _wgslsmith_clamp_i32(func_2(var_0.a.a.x & var_0.a.a.x).b, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, var_0.b, 1i), vec4<i32>(u_input.a.x, var_0.b, u_input.a.x, -2147483647i)), select(u_input.a.x, u_input.a.x, var_0.a.b) >> (108584u % 32u))));
    var var_2 = var_0.a.a.x;
    var_2 = 88495u;
    var var_3 = !select(!vec4<bool>(true, any(vec2<bool>(false, true)), any(arg_0.xy), func_2(0u).a.b), vec4<bool>(false, false, all(select(vec3<bool>(false, var_0.a.b, true), arg_0, true)), true), !all(arg_0.yy));
    return func_2(10504u).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), false, true && all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(656f)) - _wgslsmith_f_op_f32(trunc(-466f))), 778f)) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-884f)) + 1f))));
    var var_1 = ~(vec3<u32>(40853u, select(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), var_0.a.a), any(vec2<bool>(true, true))), _wgslsmith_dot_vec2_u32(~vec2<u32>(25258u, 6530u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.a.x, 33957u), vec2<u32>(4294967295u, var_0.a.a.x)))) | reverseBits(var_0.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(223f * var_0.b), _wgslsmith_mod_vec4_i32(~(-u_input.a | firstTrailingBit(u_input.a)), firstTrailingBit(min(vec4<i32>(u_input.a.x, u_input.a.x, 0i, 0i), u_input.a))));
}

