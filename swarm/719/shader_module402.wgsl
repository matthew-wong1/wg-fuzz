struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 1001f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    var var_0 = vec4<u32>(global0.c, 0u, u_input.a.x, ~u_input.a.x);
    let var_1 = _wgslsmith_div_i32(abs(_wgslsmith_add_i32(min(global0.a, global0.a), _wgslsmith_add_i32(global0.a, global0.a))), min(-2147483647i, 1i)) >> (~1u % 32u);
    let var_2 = u_input.b.wzw << (_wgslsmith_div_vec3_u32(u_input.a, u_input.a >> (vec3<u32>(42519u, abs(2604u), reverseBits(u_input.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = Struct_1(i32(-1i) * -27072i, var_2, u_input.a.x);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-126f - -398f) - -3335f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(189f, -218f))) * _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(1164f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-746f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(313f - 2091f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(522f * -923f)))))));
    return countOneBits(-var_3.a) >= abs(1i);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(196f + 1343f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * 1995f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-666f - 131f)))), -854f));
    var var_1 = arg_2;
    global0 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -573f), -915f))));
    let var_3 = select(vec3<bool>(any(select(vec4<bool>(var_1.a, false, arg_1.c, true), select(vec4<bool>(arg_2.a, var_1.a, false, true), vec4<bool>(var_1.c, false, true, var_1.c), vec4<bool>(true, false, true, arg_1.c)), func_3())), any(!vec2<bool>(false, var_1.c)), false), select(vec3<bool>(_wgslsmith_clamp_i32(global0.a, -2147483647i, 1i) <= (-16718i & global0.b.x), false, !(!var_1.c)), select(vec3<bool>(false == arg_1.c, var_1.a & var_1.c, any(vec4<bool>(var_1.c, false, false, true))), select(vec3<bool>(var_1.c, arg_1.c, arg_1.c), select(vec3<bool>(arg_2.a, arg_1.c, false), vec3<bool>(true, arg_1.a, var_1.a), arg_2.c), !vec3<bool>(var_1.c, arg_2.a, false)), !(!vec3<bool>(arg_1.a, false, arg_1.c))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.a, var_1.c, var_1.c), true), vec3<bool>(true, arg_1.a, arg_1.c), vec3<bool>(var_1.a, false, arg_2.c)), select(!vec3<bool>(arg_1.a, arg_1.c, true), !vec3<bool>(false, true, arg_2.a), select(vec3<bool>(true, var_1.a, true), vec3<bool>(arg_2.a, false, false), arg_2.a)), all(!vec2<bool>(arg_1.a, arg_1.a)))), false);
    return var_3.x;
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = arg_0.d;
    let var_1 = select(!select(vec3<bool>(any(vec2<bool>(false, arg_0.c)), false, arg_0.a && true), !select(vec3<bool>(false, true, arg_0.a), vec3<bool>(true, true, arg_0.c), vec3<bool>(true, false, arg_0.c)), !vec3<bool>(false, arg_0.a, false)), vec3<bool>(any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, arg_0.c, true), all(vec4<bool>(arg_0.c, false, arg_0.c, false)))), true, select(true != all(vec3<bool>(false, false, false)), func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.b.x, 12013i, global0.b.x, 0i), u_input.b), Struct_2(false, 69585u, false, vec3<u32>(u_input.a.x, 1u, 25812u), 4294967295u), arg_0, Struct_1(u_input.b.x, u_input.b.zww, 30454u)), any(!vec2<bool>(true, arg_0.c)))), arg_0.a);
    var_0 = vec3<u32>(~reverseBits(~_wgslsmith_dot_vec3_u32(arg_0.d, arg_0.d)), min(1u, arg_0.b), abs(countOneBits(0u)));
    var var_2 = 0u;
    var var_3 = Struct_1(-12503i, -vec3<i32>(~u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(-1907i, u_input.b.x)), -5220i), 11631u);
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-155f, -582f, -1394f, -748f)) + vec4<f32>(619f, -1000f, 1377f, -272f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1282f, -167f, -408f, -916f) - vec4<f32>(-550f, -173f, 162f, 1138f))))) - vec4<f32>(-673f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(max(-165f, -1188f)))), _wgslsmith_f_op_f32(floor(175f))));
    let var_1 = Struct_1(select(u_input.b.x, -24488i, !(var_0.x >= 1449f)) ^ -1i, ~_wgslsmith_mod_vec3_i32(func_1(Struct_2(true, 0u, false, u_input.a, 0u)), u_input.b.yyw) | vec3<i32>(min(global0.b.x, u_input.b.x), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(global0.a, global0.a, 1i, -1i)) << (u_input.a.x % 32u), -_wgslsmith_clamp_i32(-40178i, 7532i, 1i)), global0.c);
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(var_1.b, -abs(vec3<i32>(u_input.b.x, 12466i, u_input.b.x)) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, var_1.c, var_1.c), firstTrailingBit(u_input.a)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(~(vec3<i32>(23346i, 6405i, 2147483647i) >> (vec3<u32>(1u, global0.c, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(var_1.a, min(-23991i, -2147483647i), 37569i), -vec3<i32>(firstLeadingBit(var_1.b.x), min(global0.a, global0.a), 16626i)), 4294967295u);
    let var_2 = vec4<i32>(2147483647i, 0i, var_1.a, firstTrailingBit(2147483647i) & (var_1.a & global0.a)) << (~(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, u_input.a.x), ~vec4<u32>(4294967295u, 1199u, 9398u, 8479u))) % vec4<u32>(32u));
    global1 = _wgslsmith_f_op_f32(-var_0.x);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -383f);
    var var_3 = global0.b;
    var var_4 = abs(abs(countOneBits(~(~u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(((firstLeadingBit(u_input.a.x) << (abs(0u) % 32u)) | countOneBits(~var_1.c)) | ~abs(_wgslsmith_div_u32(var_1.c, 4294967295u)), abs(_wgslsmith_mod_vec3_u32(~min(u_input.a, u_input.a), select(firstLeadingBit(vec3<u32>(global0.c, var_1.c, global0.c)), ~vec3<u32>(34556u, 4294967295u, 42722u), true))));
}

