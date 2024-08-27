struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(7728i, -97056i));

var<private> global1: Struct_2;

var<private> global2: u32;

var<private> global3: array<u32, 25>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<f32>) -> u32 {
    global3 = array<u32, 25>();
    var var_0 = ~vec4<u32>(0u, 39579u, countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 25u)], 82120u), 25u)], 25u)] & global3[_wgslsmith_index_u32(reverseBits(67626u), 25u)]), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(18051u, 8895u), vec2<u32>(1u, global3[_wgslsmith_index_u32(4294967295u, 25u)]))));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.zw, var_0.xx), vec2<u32>(global3[_wgslsmith_index_u32(~73828u, 25u)], ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20206u, 25u)], 25u)], 25u)])) << (12961u % 32u), global3[_wgslsmith_index_u32(abs(~6610u), 25u)]);
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -599f) + arg_2.wx)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.wx), _wgslsmith_f_op_vec2_f32(min(arg_2.zz, vec2<f32>(arg_0, arg_0))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_0) * arg_2.xx)), arg_2, !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(11504u, 25u)], var_0.x & 0u));
    var var_3 = 49112u;
    return ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(27597u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 25u)], 25u)], global3[_wgslsmith_index_u32(117724u, 25u)], 113419u), ~(vec4<u32>(var_2.d.x, 29992u, 17693u, 126897u) & vec4<u32>(0u, var_0.x, 62680u, var_0.x))) >> (~(49357u | ~global3[_wgslsmith_index_u32(var_1.x, 25u)]) % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    var var_0 = vec2<u32>(abs(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)] << (~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8735u, 25u)], 25u)] % 32u)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(~27929u, reverseBits(2510u & global3[_wgslsmith_index_u32(25685u, 25u)])), abs(~countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]))), 25u)], 25u)], 25u)]);
    var var_1 = !vec2<bool>((~var_0.x <= ~30676u) && true, false);
    var_0 = vec2<u32>(~(~func_3(-889f, vec3<i32>(1i, -1i, global0.a.x), vec4<f32>(-359f, -265f, -2040f, arg_1))), ~(~38588u) >> (_wgslsmith_mult_u32(~var_0.x, ~31694u) % 32u)) ^ ~vec2<u32>(50142u, ~(~var_0.x));
    var_1 = !select(vec2<bool>(true, true), !select(vec2<bool>(true, var_1.x), !vec2<bool>(var_1.x, true), true), select(select(vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x), true), vec2<bool>(var_1.x, any(vec4<bool>(false, var_1.x, var_1.x, var_1.x))), true));
    var_1 = vec2<bool>(true, !(!(any(vec3<bool>(var_1.x, var_1.x, var_1.x)) && !var_1.x)));
    return Struct_3(Struct_2(vec2<i32>(-(arg_0.a.x & arg_0.a.x), -firstLeadingBit(global0.a.x))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(Struct_2(vec2<i32>(global0.a.x, _wgslsmith_div_i32(~(-13290i), -global1.a.x))), 1284f);
    global1 = Struct_2(_wgslsmith_sub_vec2_i32(min(-var_0.a.a, global1.a), abs(var_0.a.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(123f, 395f, -1756f) - vec3<f32>(-489f, 1103f, 350f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1284f, -532f, 1917f), vec3<f32>(1313f, -919f, 1000f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(312f, 1490f, 778f), vec3<f32>(2081f, 1335f, -266f), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1664f, 901f) * vec3<f32>(388f, -2101f, 1909f)), all(vec3<bool>(false, true, true)))))));
    let var_2 = true;
    global2 = global3[_wgslsmith_index_u32(~abs(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(82127u, 25u)] ^ 1u, global3[_wgslsmith_index_u32(abs(1u), 25u)]), 25u)], min(_wgslsmith_add_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)]), countOneBits(3706u)))), 25u)];
    return var_0.a;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global3 = array<u32, 25>();
    var var_0 = arg_0;
    var var_1 = !(!all(vec3<bool>(true, true, true)));
    var var_2 = Struct_3(func_1());
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2034f))))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-867f)) * _wgslsmith_f_op_f32(f32(-1f) * -935f))), 529f);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~global3[_wgslsmith_index_u32(37624u, 25u)]) << (min(1u, abs(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32507u, 25u)], 25u)], 10749u), vec2<u32>(global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(0u, 25u)]), true), ~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29785u, 25u)], 25u)], 0u)), 25u)])) % 32u);
    let var_1 = 1u;
    global1 = func_4(func_1());
    let var_2 = Struct_2(_wgslsmith_add_vec2_i32(max(func_4(Struct_2(vec2<i32>(5167i, -13174i))).a, global1.a), firstTrailingBit(global0.a)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1024f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1107f), 414f, true)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1414f + -951f))), -678f, 475f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-800f, -282f)))) + -797f)), vec3<bool>(!(!(u_input.a > -55088i)), true, true), ~(~(~(~vec3<u32>(var_1, 23884u, var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(2147483647i, _wgslsmith_add_i32(u_input.a, 2147483647i), firstLeadingBit(-2147483647i), ~(-1i)), ~(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.x, u_input.a, 2147483647i), vec3<i32>(1i, 23929i, global0.a.x)))), ~firstTrailingBit((vec4<u32>(4294967295u, var_3.d.x, 0u, 0u) ^ vec4<u32>(var_1, var_1, 41670u, 4294967295u)) | vec4<u32>(1u, var_1, var_3.d.x, 75132u)));
}

