struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: f32,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_div_vec2_u32(u_input.b.xz, arg_0.e.xy);
    global1 = array<vec3<bool>, 20>();
    global1 = array<vec3<bool>, 20>();
    let var_1 = arg_0;
    let var_2 = ~(~u_input.b);
    return -529f;
}

fn func_2(arg_0: vec3<u32>) -> bool {
    var var_0 = vec2<f32>(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-658f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(113f, vec4<bool>(false, false, true, false), -451f, true, u_input.b.zzw), false, vec3<f32>(758f, 852f, 1386f), u_input.a)) + -1148f)))));
    var var_1 = true;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -2034f, var_0.x) * vec3<f32>(var_0.x, var_0.x, 557f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-253f, var_0.x, -402f)), false)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1000f, var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -2060f, -166f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(378f, var_0.x, var_0.x) - vec3<f32>(859f, var_0.x, var_0.x)))))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1405f), var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(340f))))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(var_2.zy, _wgslsmith_f_op_vec2_f32(-var_2.xy), select(u_input.c < 0i, false, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(843f, -999f), var_2.zz, vec2<bool>(true, true)))))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    return true;
}

fn func_1(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = Struct_1(!global1[_wgslsmith_index_u32(~4294967295u, 20u)], select(vec2<bool>(true, true), vec2<bool>(!all(vec2<bool>(true, false)), func_2(vec3<u32>(u_input.a, 75174u, u_input.a)) & any(global1[_wgslsmith_index_u32(1159u, 20u)])), !any(global1[_wgslsmith_index_u32(~u_input.a, 20u)])), i32(-1i) * -6759i, vec4<bool>(true, true, !(~u_input.b.x == ~u_input.a), false), firstTrailingBit(u_input.c));
    let var_1 = !(!(!(!select(vec4<bool>(var_0.a.x, var_0.d.x, var_0.d.x, false), vec4<bool>(false, var_0.d.x, true, true), false))));
    let var_2 = Struct_2(-1055f, vec4<bool>(!all(vec3<bool>(var_1.x, var_1.x, var_0.d.x)), _wgslsmith_f_op_f32(round(-1080f)) <= _wgslsmith_f_op_f32(-arg_0.x), var_0.a.x, !(arg_0.x < _wgslsmith_f_op_f32(trunc(arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(arg_0.x + 771f)))) - _wgslsmith_f_op_f32(sign(arg_0.x))), false & any(vec2<bool>(any(vec2<bool>(false, false)), all(var_0.a.zz))), abs(firstTrailingBit(vec3<u32>(18432u, ~u_input.b.x, u_input.a >> (4294967295u % 32u)))));
    var var_3 = u_input.b.x;
    let var_4 = Struct_1(vec3<bool>(true, var_0.b.x, true), vec2<bool>(var_1.x, false), ~1i, !select(select(var_0.d, vec4<bool>(false, var_1.x, var_0.a.x, true), var_0.b.x), !vec4<bool>(false, var_0.a.x, false, true), true), var_0.c);
    return !(!vec2<bool>(!any(vec4<bool>(false, var_0.a.x, var_0.d.x, var_4.d.x)), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, false), select(vec2<bool>(select(false, u_input.c < -1i, true), true), select(vec2<bool>(all(vec2<bool>(true, false)), true), vec2<bool>(all(vec2<bool>(false, false)), true), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1402f, 786f)))), vec2<bool>(true, all(vec2<bool>(true, true)))), false);
    let var_1 = Struct_1(vec3<bool>(!(!var_0.x), ~_wgslsmith_dot_vec3_u32(u_input.b.yzz, vec3<u32>(763u, u_input.b.x, 22727u)) != 4294967295u, any(vec2<bool>(select(var_0.x, var_0.x, false), false))), var_0, u_input.d.x, select(select(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, false, var_0.x, true), vec4<bool>(true, true, true, true)), select(!vec4<bool>(true, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), false), u_input.d.x < -56997i), var_0.x), select(!select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(true, true, false, var_0.x), vec4<bool>(true, false, true, true)), !select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x), true), var_0.x), min(abs(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), reverseBits(u_input.c))), 2147483647i));
    global0 = _wgslsmith_div_i32(-var_1.e, abs(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c, _wgslsmith_sub_i32(-38516i, -7173i)), var_1.c << (abs(52412u) % 32u))));
    var var_2 = var_1;
    let var_3 = (u_input.a >> (u_input.a % 32u)) != 0u;
    let var_4 = vec3<i32>(u_input.d.x, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(~var_2.e, var_2.e), u_input.c)), -var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-1i, var_2.e, -34765i, 2147483647i)), u_input.d), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_div_f32(-820f, -1000f)), -501f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-466f, 1168f))), -1097f))));
}

