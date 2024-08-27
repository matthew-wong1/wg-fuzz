struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: array<Struct_4, 23>;

var<private> global2: vec3<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<u32>) -> f32 {
    var var_0 = arg_2;
    var_0 = select(max(firstLeadingBit(~min(arg_2, vec2<u32>(arg_2.x, arg_2.x))), select(~arg_2 | select(arg_2, arg_2, false), _wgslsmith_clamp_vec2_u32(arg_2, vec2<u32>(arg_2.x, arg_2.x) >> (vec2<u32>(25194u, var_0.x) % vec2<u32>(32u)), arg_2), select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(35775u, 9u)]), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(false, arg_0.x)))), abs(arg_2), arg_0.x);
    let var_1 = global2.x;
    var_0 = abs(arg_2 ^ reverseBits(arg_2));
    let var_2 = select(arg_0.yxy, arg_0.wzw, !(!all(vec4<bool>(false, true, true, false))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.x, -978f), _wgslsmith_f_op_f32(global2.x * global2.x))) + global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.x, global2.x)) + global2.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~max(abs(vec4<i32>(i32(-1i) * -52200i, ~0i, i32(-1i) * -34481i, countOneBits(0i))), vec4<i32>(-28744i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(53815i, 93730i, 26134i), vec3<i32>(2147483647i, u_input.a.x, -10857i)), _wgslsmith_dot_vec2_i32(u_input.a.xy, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xy)), _wgslsmith_mod_i32(-17016i, -1i) ^ _wgslsmith_div_i32(1i, u_input.a.x)));
    global1 = array<Struct_4, 23>();
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)]), true, firstTrailingBit(vec2<u32>(88833u, 1u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(899f - -307f), _wgslsmith_f_op_f32(trunc(513f))))), 2082f), vec4<f32>(global2.x, 276f, global2.x, _wgslsmith_f_op_f32(1265f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(3037f, 500f)))));
    var var_2 = 4294967295u;
    var var_3 = global1[_wgslsmith_index_u32(reverseBits(reverseBits(countOneBits(_wgslsmith_mod_u32(~1u, ~0u)))), 23u)];
    return Struct_1(var_3.d.a, 1350f, _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, ~var_3.d.c.x, 877i, u_input.a.x), var_3.b.a.c));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_2();
    var var_1 = Struct_3(!vec4<bool>(any(!vec3<bool>(true, false, var_0.a.x)), select(true, true, global0[_wgslsmith_index_u32(73261u, 9u)]), true, global2.x > _wgslsmith_f_op_f32(min(-1000f, global2.x))), abs(vec3<u32>(1u, 1u, 1u)), ~abs(vec4<u32>(1u, 1u, 1u, 1u)), 89761u, _wgslsmith_sub_i32(var_0.c.x, var_0.c.x));
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(100f, _wgslsmith_f_op_f32(f32(-1f) * -1450f), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))) >= -298f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(var_1.c, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_1.d, var_1.d, 63592u), var_1.c)), vec4<u32>(1u, 0u, 14987u | var_1.b.x, ~var_1.b.x) << (select(var_1.c, _wgslsmith_mod_vec4_u32(var_1.c, vec4<u32>(var_1.b.x, var_1.d, 15507u, var_1.d)), select(vec4<bool>(true, true, true, true), var_0.a, var_1.a)) % vec4<u32>(32u))), 9u)]);
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2().b, _wgslsmith_f_op_f32(-631f * -1000f), global2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1670f, _wgslsmith_f_op_f32(abs(global2.x)), 2042f)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b))));
    return select(var_2, !var_0.a.wx, !(!var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 9>();
    var var_0 = func_1();
    var var_1 = vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], any(func_1()), !(!var_0.x), true);
    var var_2 = _wgslsmith_div_vec3_i32(select(~vec3<i32>(0i, ~u_input.a.x, -2147483647i), -u_input.a, true), select(firstLeadingBit(~u_input.a), u_input.a, vec3<bool>(-u_input.a.x >= 1i, true, !(true & var_1.x))));
    var_2 = vec3<i32>(-u_input.a.x, min(var_2.x, u_input.a.x >> (~42252u % 32u)), -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, 0i, var_2.x), -var_2.x)) | u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 36429u), vec2<u32>(4294967295u, 1u)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(8984u, 6042u, 32900u), vec3<u32>(0u, 0u, 0u)))), 88432u));
}

