struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = max(~(~(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 16021u))), ~(vec4<u32>(5411u, 17263u, u_input.d.x, u_input.d.x) ^ _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 35508u, 0u, 20155u), vec4<u32>(37209u, 1u, 8230u, 1u)))) << (~vec4<u32>(max(_wgslsmith_clamp_u32(37887u, u_input.d.x, u_input.d.x), ~u_input.d.x), u_input.d.x, u_input.d.x, u_input.d.x) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-583f)) + _wgslsmith_f_op_f32(step(-705f, 1643f))))) + _wgslsmith_f_op_f32(abs(1465f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -295f))))) + _wgslsmith_f_op_f32(f32(-1f) * -136f)), true));
    var_0 = ~_wgslsmith_mult_vec4_u32(min(vec4<u32>(1035u ^ var_0.x, u_input.d.x, ~var_0.x, var_0.x), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, var_0.x, 7029u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, var_0.x))), vec4<u32>(var_0.x, min(_wgslsmith_sub_u32(u_input.d.x, 33307u), ~var_0.x), 0u, 124302u));
    let var_2 = Struct_3(u_input.b.xy ^ vec2<i32>(reverseBits(min(1i, 1i)), 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1982f + _wgslsmith_div_f32(_wgslsmith_div_f32(610f, var_1), _wgslsmith_f_op_f32(-var_1)))));
    global0 = vec2<i32>(abs(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b.x, 2147483647i), ~var_2.a.x), countOneBits(_wgslsmith_div_i32(global0.x, u_input.a)))), 2147483647i);
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<f32>) -> vec4<bool> {
    let var_0 = 1i;
    var var_1 = all(vec4<bool>(!arg_1, true, all(select(!vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1))), func_3()));
    global0 = -(~u_input.b.wz);
    let var_2 = var_0;
    var_1 = arg_1;
    return !vec4<bool>(arg_1, !all(select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1))), false, !any(vec4<bool>(false, true, true, false)) || !all(vec2<bool>(arg_1, false)));
}

fn func_1(arg_0: u32) -> vec4<u32> {
    let var_0 = select(func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-673f, -1208f, 512f))))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1034f, 1296f)), vec3<f32>(-1000f, 225f, 809f))))), vec4<bool>(!all(func_2(vec3<f32>(-311f, -984f, 1506f), true, vec3<f32>(-425f, -813f, -907f)).wz), false == !any(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, true)), true), any(vec3<bool>(true, false, true)));
    global0 = ~max(u_input.b.zx, ~vec2<i32>(9771i & global0.x, u_input.c ^ -25201i));
    var var_1 = Struct_3(u_input.b.zz, _wgslsmith_f_op_f32(f32(-1f) * -1198f));
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(max(abs(u_input.b), ~_wgslsmith_mult_vec4_i32(u_input.b, u_input.b)), ~vec4<i32>(var_1.a.x, _wgslsmith_mult_i32(-2147483647i, 1i), var_1.a.x, 0i)), _wgslsmith_sub_u32(18383u, firstLeadingBit(u_input.d.x)), 16310u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-177f * var_1.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-930f * 1370f))))) * _wgslsmith_f_op_f32(-var_1.b)));
    global0 = vec2<i32>(var_1.a.x, -27713i);
    return reverseBits(_wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.c, 29467u, arg_0, 1u), vec4<u32>(4294967295u, u_input.d.x, 0u, 43437u))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, 55456u, u_input.d.x, arg_0)), min(vec4<u32>(61329u, 128806u, u_input.d.x, 0u), vec4<u32>(u_input.d.x, u_input.d.x, var_2.c, 1u))))) ^ firstTrailingBit(~(~(~vec4<u32>(1u, 4294967295u, arg_0, 1961u))));
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_3 {
    global0 = vec2<i32>(global0.x | 38304i, ~(-_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b.x, -22597i), select(-17339i, -41602i, true))));
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(select(min(_wgslsmith_add_i32(u_input.c, 2147483647i), global0.x), -(~u_input.a), any(vec4<bool>(true, true, true, true))), global0.x), min(max(-vec2<i32>(9634i, global0.x), vec2<i32>(countOneBits(u_input.b.x), -u_input.b.x)), u_input.b.yw));
    global0 = -countOneBits(-(~(~u_input.b.wy)));
    let var_0 = !(!(!vec4<bool>(false, true, any(vec2<bool>(true, true)), arg_1 == 77288u)));
    var var_1 = Struct_2(!(!any(vec4<bool>(true, false, true, var_0.x))));
    return Struct_3(u_input.b.zy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1696f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_0) + arg_0)))));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: bool) -> u32 {
    let var_0 = any(vec4<bool>(true, firstLeadingBit(u_input.d.x << (0u % 32u)) <= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, u_input.d.x) & vec4<u32>(4294967295u, 24253u, 1u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 51828u, u_input.d.x, 6124u), vec4<u32>(1u, 0u, 4294967295u, 0u))), select(func_3(), true != all(vec2<bool>(false, true)), arg_3), true && !arg_3));
    var var_1 = firstTrailingBit(u_input.b.zxx);
    let var_2 = false;
    var var_3 = arg_2;
    let var_4 = vec3<u32>(countOneBits(u_input.d.x), 4294967295u, 1u);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec4_i32(~vec4<i32>(0i, 49177i, -13013i, global0.x) >> (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.d.x, 0u, 4294967295u, 4294967295u)), ~vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.d.x)) % vec4<u32>(32u)), ~abs(~u_input.b)), countOneBits(select(u_input.d.x, u_input.d.x, true)), func_5(Struct_3(abs(vec2<i32>(u_input.b.x, -2147483647i)), _wgslsmith_f_op_f32(557f + _wgslsmith_f_op_f32(891f - -103f))), global0.x, func_4(1f, _wgslsmith_dot_vec4_u32(func_1(1u), min(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(29935u, 0u, 1u, 0u)))), true), -224f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(u_input.d.zx)), vec2<u32>(u_input.d.x, ~countOneBits(0u)) | ~(~_wgslsmith_sub_vec2_u32(u_input.d.xx, u_input.d.yz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(417f, 507f))))), firstLeadingBit(select(-vec4<i32>(u_input.a, -35811i, 10468i, var_0.a.x), ~vec4<i32>(-17695i, 5817i, global0.x, global0.x), vec4<bool>(true, true, true, true))), var_0.a.x);
}

