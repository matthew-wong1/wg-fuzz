struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 4>;

var<private> global3: u32 = 4762u;

var<private> global4: array<vec3<u32>, 5>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec3<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-996f)));
    global1 = any(arg_0.a.c.zzz);
    global2 = array<Struct_1, 4>();
    let var_1 = vec4<i32>(arg_0.b, 15853i, -global0.x, abs(global0.x));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~reverseBits(~_wgslsmith_mult_u32(arg_0.d, 2044u)), arg_0.a.a.x << (~_wgslsmith_add_u32(~u_input.a, select(u_input.a, arg_2.x, arg_0.c.c.x)) % 32u), ~(arg_2.x & ~countOneBits(arg_0.a.a.x))), 4u)];
    return var_1.zz;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(36317i, 2147483647i, 1195i) >> (52908u % 32u), -29192i, u_input.b, 1i), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(22460i, global0.x, 6962i, global0.x), select(vec4<i32>(global0.x, global0.x, u_input.b, -26724i), vec4<i32>(u_input.b, u_input.b, global0.x, 44757i), arg_0)), vec4<i32>(u_input.b, global0.x, max(global0.x, 5832i), _wgslsmith_sub_i32(global0.x, global0.x))));
    let var_1 = global2[_wgslsmith_index_u32(u_input.a, 4u)];
    var var_2 = !var_1.c;
    var var_3 = u_input.b;
    var var_4 = u_input.b;
    return Struct_2(Struct_1(~vec3<u32>(countOneBits(23581u), _wgslsmith_mod_u32(24858u, u_input.a), ~u_input.a), firstLeadingBit(func_3(Struct_2(global2[_wgslsmith_index_u32(u_input.a, 4u)], global0.x, Struct_1(var_1.a, var_1.b, var_1.c, vec3<f32>(-613f, -1000f, var_1.d.x)), var_1.a.x), ~vec3<i32>(var_1.b.x, u_input.b, var_0), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), var_1.d)), select(select(vec4<bool>(false, false, false, false), !vec4<bool>(false, false, var_2.x, true), false), var_1.c, vec4<bool>(true, 0i == global0.x, !arg_0, false)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.d))), var_1.d))), 0i, global2[_wgslsmith_index_u32(u_input.a, 4u)], _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(9143u, u_input.a, var_1.a.x, 34071u)), vec4<u32>(u_input.a, 39966u, 24647u, 10589u)), ~vec4<u32>(var_1.a.x, 0u, u_input.a, 31810u)) << ((select(min(var_1.a.x, var_1.a.x), u_input.a, false) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 7854u, var_1.a.x, 54500u), vec4<u32>(u_input.a, var_1.a.x, u_input.a, 82407u)) % 32u)) % 32u));
}

fn func_1() -> u32 {
    let var_0 = u_input.a;
    global3 = 4294967295u;
    global0 = firstTrailingBit(abs(vec2<i32>(i32(-1i) * -u_input.b, abs(-68637i))));
    var var_1 = ~min(~vec3<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 28932i), vec2<i32>(9703i, -1i)), _wgslsmith_mult_i32(0i, -2147483647i)), -(~vec3<i32>(-51015i, global0.x, -1i)));
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-685f + -767f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -334f)))));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -230f)));
    global2 = array<Struct_1, 4>();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1409f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(step(1121f, 2913f))), var_0)))));
    var var_2 = 86471i;
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(func_1() | 4294967295u, 4u)], abs(15058i ^ countOneBits(~u_input.b)), Struct_1(global4[_wgslsmith_index_u32(~(~1u), 5u)], -(~(~vec2<i32>(1i, 1i))), vec4<bool>(!all(vec2<bool>(false, false)), true, var_0 < _wgslsmith_f_op_f32(sign(var_0)), true), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_1, _wgslsmith_f_op_f32(sign(3589f)))))), _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16356u, 4294967295u, 1u, u_input.a), vec4<u32>(u_input.a, 55812u, 7755u, 85848u)), u_input.a), u_input.a), _wgslsmith_div_u32(1u, ~u_input.a)));
    let var_4 = _wgslsmith_add_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, ~var_3.a.b.x, _wgslsmith_clamp_i32(1i, var_3.a.b.x, var_3.c.b.x)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-19180i, 61027i, u_input.b))))), u_input.b);
    var var_5 = var_3.a.a.xy;
    let var_6 = false;
    let var_7 = func_2(true).a;
    let x = u_input.a;
    s_output = StorageBuffer(-40686i, var_7.a.xz, ~vec3<u32>(max(var_5.x, ~var_7.a.x), 30214u, u_input.a));
}

