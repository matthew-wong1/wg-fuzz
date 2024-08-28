struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<f32, 31> = array<f32, 31>(-426f, 330f, -1222f, -905f, 991f, 508f, -1861f, -808f, 415f, 967f, 405f, 1052f, 537f, 1641f, 766f, -169f, -2084f, 362f, 1000f, -1597f, 1000f, -289f, 477f, 385f, -698f, -361f, -374f, -1235f, -353f, -1000f, 1446f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-873f, _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_1 = -12936i;
    return select(select(!(!select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, global0.x), global0.x)), select(vec3<bool>(!global0.x, all(vec4<bool>(global0.x, false, true, false)), all(vec2<bool>(global0.x, global0.x))), vec3<bool>(true, true, global0.x), any(vec2<bool>(global0.x, true))), vec3<bool>(true, true, true)), !select(vec3<bool>(any(vec2<bool>(global0.x, global0.x)), false, false), select(select(vec3<bool>(global0.x, true, true), vec3<bool>(true, true, true), true), !vec3<bool>(global0.x, false, false), u_input.b.x > 0u), global0.x), vec3<bool>(true | all(global0.zy), true, all(vec2<bool>(select(true, false, true), global0.x))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(136f, 340f, global2[_wgslsmith_index_u32(29004u, 31u)], -343f)))))));
    let var_1 = Struct_1(vec4<i32>(-37812i, ~countOneBits(reverseBits(-1i)), abs(-1i), _wgslsmith_div_i32(13697i, countOneBits(-35860i))), any(!global0.xx) & false);
    global0 = vec3<bool>(false, any(!(!(!vec4<bool>(var_1.b, true, global0.x, true)))), !(any(vec4<bool>(true, true, true, true)) | !(true & global0.x)));
    global0 = vec3<bool>(true, false, any(vec3<bool>(~u_input.b.x <= countOneBits(33270u), abs(36821u) != ~u_input.b.x, false)));
    let var_2 = Struct_1((_wgslsmith_div_vec4_i32(var_1.a << (vec4<u32>(38002u, u_input.b.x, 17240u, u_input.b.x) % vec4<u32>(32u)), var_1.a) ^ var_1.a) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.a) % vec4<u32>(32u)), !all(global0.zz));
    return 644f;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = abs(select(select(~vec3<u32>(u_input.a, 1u, u_input.b.x), ~(~vec3<u32>(u_input.a, u_input.b.x, u_input.a)), func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, global2[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<f32>(-2078f, 1698f))))), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 1u, 1u), vec3<u32>(0u, 1u, 25851u)) << ((vec3<u32>(4294967295u, u_input.a, 4294967295u) ^ vec3<u32>(u_input.a, 16405u, 31612u)) % vec3<u32>(32u))), !select(arg_1.yyx, arg_1.wxx, global0.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1841f * -147f));
    var var_2 = arg_0;
    var var_3 = global1[_wgslsmith_index_u32(~select(~(u_input.b.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(21210u, 33866u, var_0.x), vec3<u32>(var_0.x, 1959u, var_0.x)) % 32u)), ~138730u, true), 32u)];
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(f32(-1f) * -957f));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(vec4<i32>(1i, 1i, 1i, 1i), global0.x), vec4<bool>(true, true, true, true));
    var var_1 = Struct_1(max(reverseBits(var_0.a), min((vec4<i32>(var_0.a.x, var_0.a.x, -1i, var_0.a.x) | vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)) << (~vec4<u32>(0u, 0u, 48362u, 21537u) % vec4<u32>(32u)), countOneBits(var_0.a | var_0.a))), true & (_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_0.a.x), vec2<i32>(-37809i, var_0.a.x)), vec2<i32>(var_0.a.x, 1i)) >= 2147483647i));
    let var_2 = var_0;
    global0 = vec3<bool>(var_0.b, global0.x, true);
    var_1 = func_1(Struct_1(select(~_wgslsmith_add_vec4_i32(var_2.a, vec4<i32>(var_1.a.x, -4810i, var_2.a.x, var_2.a.x)), vec4<i32>(_wgslsmith_sub_i32(var_2.a.x, -19709i), var_2.a.x & var_1.a.x, _wgslsmith_dot_vec3_i32(var_2.a.wyy, vec3<i32>(var_2.a.x, var_2.a.x, var_0.a.x)), abs(var_1.a.x)), all(global0.xz)), var_2.b), select(select(vec4<bool>(true, any(vec3<bool>(var_0.b, var_2.b, true)), true, true), vec4<bool>(var_0.b, var_2.b & false, 4294967295u >= u_input.a, any(global0.yx)), any(!vec3<bool>(global0.x, true, true))), vec4<bool>(true & var_0.b, !var_2.b, !all(vec2<bool>(var_2.b, false)), false), !vec4<bool>(var_1.b, func_1(Struct_1(var_0.a, false), vec4<bool>(true, false, true, global0.x)).b, var_1.b, any(global0.zy))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(263f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-577f + global2[_wgslsmith_index_u32(41438u, 31u)]), _wgslsmith_div_f32(-887f, -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-188f)))), 1134f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~60764u), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, 4294967295u, u_input.a, u_input.a)), u_input.a & 19460u)), ~(~u_input.b.x)), var_0.a, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(41543u, 12880u, u_input.b.x), vec3<u32>(25619u, u_input.b.x, 0u)), ~reverseBits(vec3<u32>(37148u, u_input.a, 40478u))), 31u)]));
}

