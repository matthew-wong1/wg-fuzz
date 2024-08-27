struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 6625u, 42899u);

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>, arg_3: u32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(773f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(469f, -1059f)))), 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1632f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1154f, -1139f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-451f + 703f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec2<bool>) -> f32 {
    var var_0 = -1i;
    let var_1 = Struct_1(!global1.a, vec2<bool>(true, arg_2.x));
    global1 = var_1;
    let var_2 = _wgslsmith_sub_i32(abs(abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -806i), vec2<i32>(-1i, -4974i)))), 0i | _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(76332i, 7911i, -92611i), vec3<i32>(1i, 2147483647i, -8410i)), vec3<i32>(24854i, 10532i, -54133i)), _wgslsmith_clamp_i32(abs(-1i), -29923i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 53578i, 1i), vec4<i32>(2147483647i, -2752i, 0i, -51949i)))));
    return -283f;
}

fn func_2(arg_0: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(745f, 254f))), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(26325u), 1i, vec2<bool>(global1.a.x, global1.a.x), 84563u << (u_input.b.x % 32u))), global1.b))) + _wgslsmith_f_op_f32(f32(-1f) * -150f));
    let var_1 = Struct_2(2152u);
    global1 = Struct_1(vec3<bool>(select(10209i <= _wgslsmith_mod_i32(arg_0, 0i), global1.b.x, any(vec4<bool>(global1.a.x, global1.a.x, false, false)) & true), all(vec3<bool>(global1.b.x, true, false)), true), vec2<bool>(!(false && global1.a.x), any(global1.b)));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-235f, var_0)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0)))), vec2<f32>(-1601f, 300f)))));
    var var_3 = Struct_2(~_wgslsmith_clamp_u32(abs(u_input.b.x), 74052u, _wgslsmith_div_u32(~1u, reverseBits(8314u))));
    return !vec4<bool>(countOneBits(~0u) <= _wgslsmith_mult_u32(~var_1.a, max(global0.x, 0u)), false, any(vec4<bool>(true, false, true, true)), any(global1.b));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = arg_0.xzz;
    var var_1 = Struct_1(global1.a, !vec2<bool>(all(func_2(1i)), any(!vec3<bool>(global1.b.x, global1.b.x, global1.a.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(func_3(Struct_2(0u), -24732i, select(var_1.b, var_1.b, true), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.yw), _wgslsmith_mult_vec2_u32(u_input.a << (vec2<u32>(2693u, 4294967295u) % vec2<u32>(32u)), ~global0.zz)) | u_input.b.x)).xx;
    var_1 = Struct_1(var_1.a, select(vec2<bool>(false, any(vec2<bool>(true, true))), global1.b, true));
    var var_3 = Struct_1(vec3<bool>(!all(func_2(-1i).xz), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(var_2, vec3<f32>(913f, var_2.x, var_2.x), global1.b)))) > _wgslsmith_f_op_vec3_f32(func_3(Struct_2(1u), -44418i, vec2<bool>(true, true), u_input.a.x)).x, any(vec2<bool>(global1.a.x, true))), select(vec2<bool>(!select(true, true, false), true), !global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) + _wgslsmith_f_op_f32(abs(179f))) >= _wgslsmith_f_op_f32(-var_2.x)));
    return 64099u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(abs(abs(~min(global0.x, 25630u))), ~func_1(firstTrailingBit(select(u_input.b, u_input.b, true))), _wgslsmith_mult_u32(~abs(_wgslsmith_add_u32(global0.x, global0.x)), func_1(_wgslsmith_sub_vec4_u32(~u_input.b, _wgslsmith_add_vec4_u32(u_input.b, u_input.b)))));
    global0 = u_input.b.yyy ^ reverseBits(vec3<u32>(~u_input.a.x | _wgslsmith_dot_vec3_u32(u_input.b.zxz, vec3<u32>(12040u, global0.x, global0.x)), func_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, u_input.b.x, 45366u, u_input.a.x), u_input.b, vec4<u32>(23183u, 69300u, global0.x, 10160u))), 69709u));
    global0 = ~select(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, global0.x, 0u, 49985u)), ~39537u, func_1(u_input.b))), u_input.b.zyx, !vec3<bool>(false, false, !global1.a.x));
    let var_0 = vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(max(~vec2<i32>(-43787i, -2993i), -vec2<i32>(2147483647i, 0i)), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(20931i, 1i)), -vec2<i32>(-1i, 0i), countOneBits(vec2<i32>(2147483647i, 58649i)))) >> (u_input.a.x % 32u), 1671i >> (((abs(u_input.a.x) ^ global0.x) >> (4294967295u % 32u)) % 32u), -7907i);
    global0 = u_input.b.xyy;
    var var_1 = -var_0.xyw;
    let x = u_input.a;
    s_output = StorageBuffer(24832i, firstTrailingBit(110156u), 1u, ~global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1301f, 1f, abs(global0.x) > 4294967295u)) - -531f));
}

