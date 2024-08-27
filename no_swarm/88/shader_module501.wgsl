struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-954f, 897f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = u_input.a.x;
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(226f, global0.x)))) + vec2<f32>(global0.x, 1000f))));
    let var_1 = global0.x;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 805f)) + vec2<f32>(global0.x, -103f))), vec2<f32>(842f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, -897f)) + -1729f)))) + vec2<f32>(511f, _wgslsmith_div_f32(-384f, 146f)));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(countOneBits(~20507i)), _wgslsmith_mod_i32(u_input.c, -(u_input.c << (arg_0.a.b.x % 32u)))), u_input.b.xx);
    return vec3<f32>(_wgslsmith_f_op_f32(-468f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-258f - _wgslsmith_f_op_f32(-993f * -1587f)), 976f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2553f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(exp2(global0.x))))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-694f + global0.x)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec4<bool>(global0.x == 1433f, true, any(arg_3.a.a), 4294967295u < arg_0.a.b.x), ~(~arg_0.a.b)))));
    var var_1 = _wgslsmith_add_vec4_u32(max(vec4<u32>(0u, arg_3.a.b.x, ~(arg_3.a.b.x << (11939u % 32u)), _wgslsmith_mult_u32(1u, 11890u)), select(vec4<u32>(arg_0.a.b.x, ~1u, 78049u & arg_1.x, 56040u | arg_3.a.b.x), reverseBits(abs(vec4<u32>(arg_3.a.b.x, 4294967295u, arg_3.a.b.x, arg_0.a.b.x))), select(vec4<bool>(false, false, true, true), select(arg_0.a.a, arg_3.a.a, arg_0.a.a), vec4<bool>(true, true, true, false)))), abs(vec4<u32>(~(arg_3.a.b.x & arg_0.a.b.x), 49704u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 41001u), _wgslsmith_sub_u32(arg_3.a.b.x, arg_3.a.b.x)), arg_0.a.b.x)));
    var var_2 = arg_3.a.a.wwx;
    var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-619f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_div_f32(-923f, 1251f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1550f, global0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_0)).x - _wgslsmith_f_op_f32(global0.x - 109f))), -996f, arg_2.x)));
    let var_3 = Struct_1(arg_0.a.a, ~(~(~vec2<u32>(u_input.a.x, 4294967295u)) & arg_0.a.b));
    return var_3;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_2.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 598f, 232f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1523f, -694f, 122f, -1873f), vec4<f32>(990f, -1248f, 2316f, global0.x)))) + vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(arg_3))).x, -1013f, _wgslsmith_div_f32(global0.x, global0.x), global0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 199f, -1468f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1828f, 1356f, 1553f, -786f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-483f, -1292f, global0.x, 738f), vec4<f32>(global0.x, -1224f, global0.x, -1866f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 2627f, 302f, -197f) * vec4<f32>(-919f, 573f, -1016f, global0.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, global0.x, 353f)))))));
    let var_2 = ~abs(vec2<u32>(_wgslsmith_add_u32(~72953u, ~4294967295u), 40414u));
    let var_3 = Struct_2(Struct_1(vec4<bool>((arg_2.a.x & arg_2.a.x) || (arg_2.a.x == true), !arg_3.a.x, true, false), _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(arg_2.b.x, arg_3.b.x)), abs(var_2)) | ~(~arg_1)));
    var var_4 = _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.d.ywz), u_input.d.wzz) | 4294967295u;
    return -(u_input.b.x >> (arg_3.b.x % 32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = firstLeadingBit(~u_input.a.x);
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, global0.x))))), !(_wgslsmith_f_op_f32(floor(arg_1.x)) < -1175f)));
    let var_1 = min(max(firstLeadingBit(func_4(~u_input.b.yy, u_input.d.zw, func_2(Struct_2(Struct_1(vec4<bool>(false, arg_0.x, true, true), u_input.a.ww)), u_input.a.wy, arg_0.xz, Struct_2(Struct_1(arg_0, u_input.d.yw))), func_2(Struct_2(Struct_1(vec4<bool>(true, arg_0.x, arg_0.x, true), vec2<u32>(var_0, var_0))), u_input.d.yy, vec2<bool>(false, true), Struct_2(Struct_1(arg_0, u_input.d.yz))))), u_input.c), u_input.c);
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) * arg_1))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -1091f) * arg_1), _wgslsmith_f_op_vec2_f32(arg_1 * arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_1))))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 1703f)), -1658f, func_2(Struct_2(Struct_1(vec4<bool>(false, arg_0.x, true, false), u_input.d.wy)), vec2<u32>(var_0, u_input.a.x), vec2<bool>(true, true), Struct_2(Struct_1(arg_0, vec2<u32>(var_0, 1u)))).a.x)))), 1109f);
    return func_2(Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), u_input.a.zz)), u_input.a.yx, arg_0.zw, Struct_2(Struct_1(arg_0, u_input.d.wz)))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 11556u), u_input.a.xx), func_2(Struct_2(Struct_1(arg_0, vec2<u32>(var_0, var_0))), vec2<u32>(0u, 4294967295u), func_2(Struct_2(Struct_1(arg_0, u_input.a.wz)), u_input.a.wz, vec2<bool>(arg_0.x, arg_0.x), Struct_2(Struct_1(arg_0, u_input.d.yz))).a.yx, Struct_2(Struct_1(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), u_input.a.xx))).a.yw, Struct_2(Struct_1(vec4<bool>(arg_0.x, arg_0.x, false, false), u_input.a.xx)))), _wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(53105u), ~var_0) & u_input.d.xz, _wgslsmith_mult_vec2_u32(u_input.d.xz, ~(~u_input.d.yy))), vec2<bool>(true, any(!arg_0)), Struct_2(Struct_1(arg_0, vec2<u32>(18847u << (var_0 % 32u), 71967u))));
}

fn func_5(arg_0: Struct_2) -> bool {
    let var_0 = arg_0.a.a.x;
    let var_1 = arg_0.a.a.wx;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-433f, global0.x, global0.x), vec3<f32>(725f, 1995f, -756f), var_0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(862f, global0.x, global0.x))))));
    global0 = var_2.yz;
    var var_3 = arg_0.a.a.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(func_1(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.x) - vec2<f32>(-931f, -1322f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1134f, -2042f)))))));
    let var_1 = true;
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-505f, global0.x) - vec2<f32>(global0.x, 1665f)) + _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 140f), vec2<f32>(global0.x, global0.x))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(select(global0.x, global0.x, false)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -920f)) * vec2<f32>(global0.x, -301f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2972f), _wgslsmith_f_op_f32(round(global0.x)))) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x)) * vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -242f) - vec2<f32>(global0.x, global0.x)))))));
    var var_3 = -34551i;
    var var_4 = 0u;
    var_3 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, firstTrailingBit(-1i)), countOneBits(vec3<u32>(~16602u, u_input.a.x, 56592u) >> (select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, u_input.a.x, u_input.d.x), u_input.d.yxy, u_input.d.yyz), u_input.a.xwy >> (u_input.d.wyz % vec3<u32>(32u)), u_input.a.x != u_input.a.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1198f, var_2.x, -139f) * vec3<f32>(global0.x, global0.x, 560f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(377f, var_2.x, var_2.x)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(228f * var_2.x), _wgslsmith_f_op_f32(var_2.x * global0.x), _wgslsmith_f_op_f32(var_2.x * var_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 615f, global0.x))))))), global0.x, u_input.a.yxz ^ ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x)), _wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x), ~31937u));
}

