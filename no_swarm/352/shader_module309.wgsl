struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 42970u;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> u32 {
    global0 = 68782u;
    global0 = _wgslsmith_mod_u32(120030u, u_input.b.x);
    global0 = reverseBits(_wgslsmith_div_u32(11447u, _wgslsmith_add_u32(max(0u, 1u), firstTrailingBit(4294967295u)) | 23240u));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-353f))), _wgslsmith_f_op_f32(floor(-470f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1318f, 1409f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(764f, 1311f)))));
    let var_1 = vec2<bool>(false, !(arg_1 | true));
    return ~u_input.b.x & ~(~u_input.b.x);
}

fn func_2(arg_0: Struct_3) -> i32 {
    var var_0 = -vec3<i32>(-select(0i & u_input.a, -u_input.a, true), -53546i, arg_0.b.a.x);
    var_0 = vec3<i32>(var_0.x, firstLeadingBit(arg_0.b.a.x), arg_0.b.b.b.x ^ 2147483647i);
    var var_1 = min(select(_wgslsmith_div_i32(var_0.x, arg_0.b.b.b.x), 59142i, true), -2147483647i);
    var var_2 = Struct_1(vec2<u32>(u_input.b.x ^ u_input.b.x, ~func_3(countOneBits(1i), true, u_input.b.yzz)), abs(~(~abs(var_0.zx))));
    var var_3 = select(vec3<bool>(true, true, any(vec4<bool>(false, true, true, all(vec3<bool>(false, true, true))))), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)))), vec3<bool>((var_2.a.x >= 50016u) || true, any(vec4<bool>(true, true, true, true)), false), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), true), true)), true);
    return reverseBits(var_2.b.x);
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<f32>) -> bool {
    global0 = firstLeadingBit(~_wgslsmith_div_u32(firstLeadingBit(u_input.b.x), 71392u) & 0u);
    var var_0 = _wgslsmith_f_op_vec4_f32(max(arg_2, vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -1366f))));
    global0 = arg_1.x >> (~arg_1.x % 32u);
    var var_1 = _wgslsmith_clamp_vec4_u32(min(reverseBits(vec4<u32>(1u, 4153u, arg_1.x, 61747u) << (~u_input.b % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(47045u, arg_1.x, 0u, 16977u), ~(vec4<u32>(arg_1.x, 0u, 3801u, u_input.b.x) & vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x)))), max(reverseBits(~vec4<u32>(1u, 1u, u_input.b.x, arg_1.x)), ~vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, arg_1.x, arg_1.x, 4294967295u), _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(arg_1.x, 18022u, u_input.b.x, u_input.b.x)))), u_input.b);
    var_1 = ~u_input.b;
    return true;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(1044f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -538f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1218f, 604f)))))));
    let var_1 = vec2<bool>(func_4(func_2(Struct_3(u_input.b.x, Struct_2(vec4<i32>(u_input.a, u_input.a, -5021i, u_input.a), Struct_1(u_input.b.wy, vec2<i32>(2147483647i, -1i)), u_input.b.x), 592f)) ^ -(~u_input.a), _wgslsmith_div_vec2_u32(~countOneBits(u_input.b.yx), ~u_input.b.zx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-302f, -1059f, 572f, 507f)))))), false);
    let var_2 = Struct_4(Struct_1(abs(max(u_input.b.zw, vec2<u32>(4294967295u, 0u)) >> (~vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), -(~vec2<i32>(u_input.a, 2147483647i))), 22543u, false, !select(!select(vec4<bool>(false, true, true, true), vec4<bool>(var_1.x, true, true, var_1.x), var_1.x), !vec4<bool>(var_1.x, false, true, var_1.x), !vec4<bool>(false, true, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-671f, 1130f, 1567f) * vec3<f32>(490f, -129f, 461f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-852f, -823f, 971f) - vec3<f32>(-452f, -297f, -188f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-747f, 3235f, -135f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1566f, 1000f, -996f), vec3<f32>(248f, 111f, 779f))))))));
    global0 = ~(~1u);
    let var_3 = var_2.e.x;
    return reverseBits(func_3(31635i << (var_2.b % 32u), _wgslsmith_f_op_f32(-var_2.e.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.e.x))), select(~min(u_input.b.xxw, u_input.b.yzz), _wgslsmith_mult_vec3_u32(u_input.b.wzy, ~vec3<u32>(1u, u_input.b.x, 4294967295u)), var_2.d.xzy)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(u_input.b.x << (_wgslsmith_clamp_u32(u_input.b.x, func_1(), 1u) % 32u));
    var var_0 = vec4<bool>(~(~u_input.a & firstLeadingBit(u_input.a)) >= reverseBits(~u_input.a), true, false, true);
    let var_1 = vec2<bool>(true, true);
    let var_2 = max((-select(vec2<i32>(u_input.a, 0i), vec2<i32>(-1i, 1i), vec2<bool>(var_0.x, true)) & vec2<i32>(-u_input.a, abs(u_input.a))) & _wgslsmith_div_vec2_i32(vec2<i32>(51312i, u_input.a), vec2<i32>(-1i) * -vec2<i32>(u_input.a, 0i)), firstLeadingBit(vec2<i32>(-2147483647i, -u_input.a)));
    var_0 = !select(select(!(!vec4<bool>(var_0.x, false, var_1.x, var_1.x)), !(!vec4<bool>(var_1.x, var_0.x, false, true)), all(var_0.yxw)), select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), vec4<bool>(false, !var_0.x, true, true & var_1.x), !vec4<bool>(false, false, var_1.x, false)), !(!select(vec4<bool>(var_0.x, false, false, var_1.x), vec4<bool>(var_1.x, false, var_0.x, var_0.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(1i) & firstTrailingBit(abs(var_2.x)), ~select(~(-vec3<i32>(-1i, u_input.a, 5136i)), -(vec3<i32>(u_input.a, var_2.x, u_input.a) & vec3<i32>(var_2.x, 1i, 88211i)), true), _wgslsmith_f_op_f32(floor(1040f)), -vec3<i32>(~(~(-16598i)), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, var_2.x << (u_input.b.x % 32u), -u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.a << (1974u % 32u))), u_input.b.x);
}

