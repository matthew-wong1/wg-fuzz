struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-1000f, -1074f, 1000f, 588f), vec4<f32>(-252f, 840f, -2412f, 805f), vec4<f32>(792f, 1000f, 1000f, 237f), vec4<f32>(-132f, -645f, -980f, 411f), vec4<f32>(658f, 1061f, -348f, 429f));

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), 86814u, true), Struct_2(Struct_1(vec2<i32>(0i, -53497i)), 27415u, true), Struct_2(Struct_1(vec2<i32>(-2787i, 0i)), 18819u, false), Struct_2(Struct_1(vec2<i32>(27389i, -22608i)), 1u, false), Struct_2(Struct_1(vec2<i32>(-1774i, 2147483647i)), 0u, true), Struct_2(Struct_1(vec2<i32>(2147483647i, 11554i)), 25603u, false), Struct_2(Struct_1(vec2<i32>(1i, 0i)), 46125u, false), Struct_2(Struct_1(vec2<i32>(12285i, -1i)), 4294967295u, false), Struct_2(Struct_1(vec2<i32>(-13878i, -50730i)), 33319u, false), Struct_2(Struct_1(vec2<i32>(-2847i, i32(-2147483648))), 0u, true), Struct_2(Struct_1(vec2<i32>(7709i, 36252i)), 4294967295u, true), Struct_2(Struct_1(vec2<i32>(26995i, 2147483647i)), 26307u, true), Struct_2(Struct_1(vec2<i32>(-1i, 0i)), 14609u, false), Struct_2(Struct_1(vec2<i32>(1i, 1i)), 1u, true), Struct_2(Struct_1(vec2<i32>(44760i, -43546i)), 53995u, true), Struct_2(Struct_1(vec2<i32>(2147483647i, -1i)), 59319u, true), Struct_2(Struct_1(vec2<i32>(16745i, 0i)), 4294967295u, true), Struct_2(Struct_1(vec2<i32>(-15640i, 1i)), 26214u, true), Struct_2(Struct_1(vec2<i32>(34457i, 0i)), 93348u, true), Struct_2(Struct_1(vec2<i32>(-19937i, 955i)), 86652u, false), Struct_2(Struct_1(vec2<i32>(3603i, -1i)), 5214u, false), Struct_2(Struct_1(vec2<i32>(5912i, 1i)), 102946u, true), Struct_2(Struct_1(vec2<i32>(-1i, 40539i)), 23007u, false), Struct_2(Struct_1(vec2<i32>(0i, 66031i)), 1u, false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(select(-2147483647i, -2147483647i, true) & -56624i, u_input.a.x, -2147483647i, abs(u_input.a.x << (13739u % 32u)))), abs(_wgslsmith_mod_vec4_i32(max(u_input.a, min(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x))), u_input.a)));
    global0 = array<vec4<f32>, 5>();
    var_0 = -5567i;
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(1u, 1u)), 24u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(abs(24356u), 14044u)), 5u)]) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-958f, 414f, true)), _wgslsmith_f_op_f32(1853f * 173f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-847f)) * _wgslsmith_f_op_f32(389f - 1572f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(651f, 346f))), -1454f), global0[_wgslsmith_index_u32(abs(~u_input.b.x), 5u)]));
    return abs(~(~(-4748i)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec2<i32>(u_input.a.x, ~func_3(25434u))), _wgslsmith_div_u32(4294967295u, reverseBits(~u_input.c.x) >> (u_input.b.x % 32u)), true && select(false, arg_0.x > _wgslsmith_f_op_f32(arg_0.x * arg_0.x), true));
    let var_1 = true;
    var_0 = global1[_wgslsmith_index_u32(var_0.b, 24u)];
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(round(-965f))), 194f);
    let var_3 = 1u;
    return global1[_wgslsmith_index_u32(1u, 24u)];
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(120f, -185f, 701f, 586f), global0[_wgslsmith_index_u32(30056u, 5u)]))), global0[_wgslsmith_index_u32(~(~u_input.d), 5u)]))));
    global0 = array<vec4<f32>, 5>();
    var_0 = Struct_2(var_0.a, _wgslsmith_mult_u32(var_0.b | ~30035u, abs(_wgslsmith_mult_u32(7436u, var_0.b) ^ select(56803u, u_input.c.x, true))), var_0.c);
    var var_1 = 67262u;
    let var_2 = false != (true != any(vec2<bool>(var_0.c && arg_1, var_0.c)));
    return Struct_2(var_0.a, var_0.b >> (((u_input.d << (func_2(vec4<f32>(1165f, 1598f, 171f, 714f)).b % 32u)) >> (~abs(40611u) % 32u)) % 32u), any(!(!select(vec3<bool>(arg_1, var_0.c, var_0.c), vec3<bool>(var_0.c, var_0.c, arg_1), arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.yw);
    var var_1 = 246f;
    let var_2 = Struct_1(vec2<i32>(-2147483647i, ~_wgslsmith_dot_vec3_i32(u_input.a.zzy, vec3<i32>(var_0.a.x, 1i, 786i))));
    let var_3 = func_1(~(-(~0i)), !all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)));
    let var_4 = func_1(-46799i, true | (abs(countOneBits(0u)) > min(u_input.c.x, abs(0u)))).a;
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1339f))), _wgslsmith_f_op_f32(f32(-1f) * -446f));
    var var_6 = var_5;
    let var_7 = all(vec2<bool>(var_3.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_5)))) <= _wgslsmith_f_op_f32(abs(var_5))));
    let var_8 = vec3<bool>(false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_5, _wgslsmith_f_op_f32(var_5 - var_5)))) < -552f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(-u_input.a, abs(u_input.a)));
}

