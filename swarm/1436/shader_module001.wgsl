struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(true, vec2<i32>(25623i, 7536i), 1u), Struct_2(false, vec2<i32>(-74207i, 0i), 81701u), Struct_2(true, vec2<i32>(1i, -28141i), 1u), Struct_2(true, vec2<i32>(-55927i, 1i), 72004u), Struct_2(true, vec2<i32>(0i, 2147483647i), 8300u), Struct_2(true, vec2<i32>(-32723i, -34791i), 1016u), Struct_2(true, vec2<i32>(-97250i, 0i), 4294967295u), Struct_2(false, vec2<i32>(-31164i, i32(-2147483648)), 31350u), Struct_2(true, vec2<i32>(0i, -1i), 13220u), Struct_2(true, vec2<i32>(-1i, 0i), 38761u), Struct_2(true, vec2<i32>(-1i, i32(-2147483648)), 1u), Struct_2(true, vec2<i32>(i32(-2147483648), -18173i), 46825u), Struct_2(true, vec2<i32>(i32(-2147483648), -6904i), 0u), Struct_2(true, vec2<i32>(-37001i, -15656i), 35742u), Struct_2(true, vec2<i32>(1i, -17992i), 2340u), Struct_2(false, vec2<i32>(-1i, -1i), 1u), Struct_2(false, vec2<i32>(i32(-2147483648), 2147483647i), 7641u), Struct_2(false, vec2<i32>(-44864i, -7294i), 1u), Struct_2(true, vec2<i32>(-1i, 1i), 3512u), Struct_2(true, vec2<i32>(34261i, -30048i), 29657u), Struct_2(true, vec2<i32>(1i, -1i), 4294967295u), Struct_2(false, vec2<i32>(-8241i, i32(-2147483648)), 1u));

var<private> global1: Struct_3 = Struct_3(vec2<bool>(true, true));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<bool>) -> Struct_3 {
    global0 = array<Struct_2, 22>();
    return Struct_3(!arg_2.yx);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> Struct_3 {
    var var_0 = arg_1;
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b, u_input.b << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), abs(u_input.b)) % 32u)), 22u)];
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(375f, 1543f, 1165f, 478f), vec4<f32>(-1000f, 2137f, -285f, 1555f)))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_3 = false;
    let var_4 = func_1(var_3, -1007f, arg_0);
    return var_4;
}

fn func_2() -> i32 {
    global1 = func_3(select(vec3<bool>(false, true, false), !(!select(vec3<bool>(false, global1.a.x, global1.a.x), vec3<bool>(true, global1.a.x, true), true)), vec3<bool>(!select(global1.a.x, global1.a.x, global1.a.x), select(true, false, global1.a.x) && (true == global1.a.x), true)), _wgslsmith_clamp_i32(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.e.x), u_input.e), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, -1i, u_input.e.x), vec3<i32>(18555i, 2147483647i, u_input.a)), _wgslsmith_sub_i32(u_input.a, -40336i))));
    global1 = Struct_3(vec2<bool>(func_3(select(select(vec3<bool>(global1.a.x, true, true), vec3<bool>(true, false, global1.a.x), true), select(vec3<bool>(true, global1.a.x, true), vec3<bool>(global1.a.x, global1.a.x, global1.a.x), global1.a.x), true), u_input.e.x).a.x, true));
    var var_0 = vec3<i32>(~(-(~(~(-18350i)))), u_input.c >> (max(~u_input.b >> ((u_input.b ^ 0u) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 33487u, u_input.b, 0u), countOneBits(vec4<u32>(u_input.b, u_input.b, 4357u, u_input.b)))) % 32u), _wgslsmith_mod_i32(-21632i, u_input.a) << (u_input.b % 32u));
    let var_1 = u_input.b | ~30566u;
    var_0 = _wgslsmith_mult_vec3_i32((firstTrailingBit(~vec3<i32>(1i, var_0.x, -2147483647i)) << (abs(vec3<u32>(var_1, 1061u, u_input.b)) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_add_u32(~u_input.b, u_input.b >> (var_1 % 32u)), u_input.b, ~4331u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.a, 8004i, u_input.e.x)), _wgslsmith_add_vec3_i32(select(vec3<i32>(2147483647i, -19951i, u_input.a), vec3<i32>(5808i, -53410i, var_0.x), global1.a.x), countOneBits(vec3<i32>(2147483647i, 1i, 0i)))) << (_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_1, 76201u) | vec3<u32>(var_1, 32666u, u_input.b), ~vec3<u32>(25789u, 4294967295u, 0u)), select(~vec3<u32>(0u, var_1, u_input.b), ~vec3<u32>(0u, u_input.b, 27441u), global1.a.x)) % vec3<u32>(32u)));
    return -26465i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(all(!vec4<bool>(u_input.c >= u_input.d, global1.a.x, false, !global1.a.x)), -283f, !vec3<bool>(!all(vec3<bool>(global1.a.x, global1.a.x, true)), global1.a.x, false || all(vec2<bool>(global1.a.x, global1.a.x))));
    var var_0 = func_1(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(657f))), !select(select(vec3<bool>(false, global1.a.x, true), select(vec3<bool>(true, true, true), vec3<bool>(global1.a.x, false, true), true), func_1(true, -647f, vec3<bool>(false, true, global1.a.x)).a.x), !vec3<bool>(false, global1.a.x, global1.a.x), true)).a;
    var var_1 = 971f;
    var_0 = !vec2<bool>(-u_input.e.x == firstLeadingBit(_wgslsmith_add_i32(1i, u_input.d)), all(select(!global1.a, global1.a, false)));
    let var_2 = Struct_3(!global1.a);
    var var_3 = _wgslsmith_f_op_f32(-462f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-666f * _wgslsmith_f_op_f32(step(-1031f, -1577f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1559f, _wgslsmith_f_op_f32(floor(890f))))), (u_input.b << (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.b, 1u)) % 32u)) | ~_wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 29554u), vec2<u32>(1u, 24023u))), _wgslsmith_sub_vec3_i32(~vec3<i32>(42267i, -32327i, u_input.a) ^ -vec3<i32>(u_input.d, 2147483647i, u_input.d), vec3<i32>(1i, -10302i, func_2())) >> (vec3<u32>(~u_input.b, ~1u, ~u_input.b) % vec3<u32>(32u)));
}

