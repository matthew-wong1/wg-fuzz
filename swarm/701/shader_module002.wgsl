struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -6145i;

var<private> global1: u32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool, arg_1: i32) -> i32 {
    global0 = u_input.b.x;
    let var_0 = u_input.c;
    var var_1 = Struct_3(arg_0);
    return 2147483647i;
}

fn func_3() -> i32 {
    let var_0 = Struct_3(!(u_input.c == ~u_input.c));
    global0 = reverseBits(u_input.b.x);
    let var_1 = min(u_input.c, 37792u) >> (min(select(u_input.c >> (~u_input.c % 32u), _wgslsmith_mod_u32(u_input.c, ~u_input.c), any(vec2<bool>(true, true)) | true), u_input.c << (~4294967295u % 32u)) % 32u);
    var var_2 = Struct_3(var_0.a);
    let var_3 = Struct_1(select(!select(select(vec4<bool>(false, true, var_0.a, false), vec4<bool>(false, var_0.a, var_0.a, var_2.a), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, var_2.a), all(vec2<bool>(false, var_0.a))), vec4<bool>(false, true, true, var_2.a), var_0.a), ~((firstLeadingBit(u_input.b.ww) << (min(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, u_input.c)) % vec2<u32>(32u))) | _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, -9960i), u_input.b.xw), vec2<i32>(u_input.a, -1i))), 1106f, vec3<u32>(u_input.c, ~1u, ~firstTrailingBit(~1u)));
    return -var_3.b.x;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<bool>) -> vec2<f32> {
    let var_0 = Struct_1(vec4<bool>(arg_3.x, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1000f, -629f)))) == _wgslsmith_f_op_f32(floor(-1019f)), select(true, true, arg_3.x)), vec2<i32>(-61366i, 33277i ^ arg_2), 346f, vec3<u32>(_wgslsmith_add_u32(~select(72081u, u_input.c, false), 47470u), 1u, abs(firstTrailingBit(~1u))));
    global0 = ~u_input.a >> (0u % 32u);
    global0 = -(~reverseBits(func_2(var_0.a.x, 2147483647i)) & (_wgslsmith_mod_i32(var_0.b.x & 2147483647i, func_3()) & (-30010i ^ (u_input.a & var_0.b.x))));
    var var_1 = -8712i > _wgslsmith_clamp_i32(u_input.a, u_input.a, select(-3952i, 5270i, arg_3.x));
    global1 = firstLeadingBit(~arg_1.x);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1052f, 560f))))), var_0.c) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c)), vec2<f32>(var_0.c, 646f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(908f, -479f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    global1 = u_input.c;
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(319f, 715f)))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1865f, -2708f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-697f, -1440f), vec2<f32>(-1000f, 1431f))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-766f, -479f), vec2<f32>(811f, 240f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1425f, 134f)) * _wgslsmith_f_op_vec2_f32(func_1(u_input.c, vec3<u32>(14048u, u_input.c, u_input.c), u_input.a, vec2<bool>(false, false))))))), !(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))) && (all(vec3<bool>(true, false, false)) && false))));
    var var_1 = 1i;
    var var_2 = ~u_input.a;
    var_1 = 1i;
    var var_3 = Struct_2(721f, Struct_1(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, all(vec3<bool>(true, true, false)), select(false, true, false)), _wgslsmith_f_op_f32(round(330f)) > _wgslsmith_div_f32(896f, var_0.x)), -reverseBits(u_input.b.zy << (vec2<u32>(u_input.c, 4920u) % vec2<u32>(32u))), 203f, reverseBits(vec3<u32>(33674u, 1u, u_input.c)) >> ((_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 17204u), vec3<u32>(1u, 1u, 1u)) & countOneBits(vec3<u32>(0u, 17120u, 0u))) % vec3<u32>(32u))), vec2<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.c, 50257u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_mult_u32(49447u, u_input.c), 4294967295u))));
    let var_4 = var_3.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_1(u_input.c, var_3.b.d, var_3.b.b.x, !vec2<bool>(var_3.b.a.x, false))).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), -117f)))), ~(~firstLeadingBit(_wgslsmith_add_u32(36077u, 21846u))));
}

