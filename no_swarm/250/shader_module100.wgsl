struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(i32(-2147483648), vec3<bool>(false, true, true), vec3<i32>(2147483647i, i32(-2147483648), -59649i), 52962i, vec2<bool>(true, true)), Struct_1(1i, vec3<bool>(true, false, true), vec3<i32>(i32(-2147483648), 0i, 54574i), -18468i, vec2<bool>(false, false)), Struct_1(i32(-2147483648), vec3<bool>(true, false, false), vec3<i32>(-35893i, -1i, -7552i), 39581i, vec2<bool>(false, true)), Struct_1(2147483647i, vec3<bool>(false, false, false), vec3<i32>(-31738i, 39944i, 2147483647i), 1i, vec2<bool>(false, true)), Struct_1(1i, vec3<bool>(true, true, false), vec3<i32>(-6795i, i32(-2147483648), -1i), i32(-2147483648), vec2<bool>(false, true)), Struct_1(1i, vec3<bool>(true, true, false), vec3<i32>(1i, -61082i, -1i), 0i, vec2<bool>(false, true)), Struct_1(-14279i, vec3<bool>(false, false, false), vec3<i32>(0i, 16991i, -12960i), -35434i, vec2<bool>(true, true)), Struct_1(-20576i, vec3<bool>(false, true, true), vec3<i32>(32810i, 0i, 14636i), -21698i, vec2<bool>(true, false)), Struct_1(2147483647i, vec3<bool>(true, true, true), vec3<i32>(2147483647i, 2147483647i, -97233i), 1i, vec2<bool>(false, false)), Struct_1(11065i, vec3<bool>(true, false, true), vec3<i32>(i32(-2147483648), 2147483647i, -1i), 5626i, vec2<bool>(false, false)), Struct_1(-29996i, vec3<bool>(true, false, true), vec3<i32>(40423i, -11278i, 70138i), -1i, vec2<bool>(true, true)), Struct_1(-1953i, vec3<bool>(true, true, true), vec3<i32>(0i, -19123i, 1i), -11925i, vec2<bool>(true, true)), Struct_1(-1i, vec3<bool>(true, false, true), vec3<i32>(19265i, 0i, 0i), i32(-2147483648), vec2<bool>(false, true)), Struct_1(-1i, vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), 15012i, vec2<bool>(true, true)), Struct_1(42075i, vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), 0i, -1i), -1i, vec2<bool>(false, false)), Struct_1(i32(-2147483648), vec3<bool>(true, true, false), vec3<i32>(11471i, 2147483647i, -9362i), -31540i, vec2<bool>(false, true)), Struct_1(1i, vec3<bool>(false, true, true), vec3<i32>(-1i, i32(-2147483648), -1i), i32(-2147483648), vec2<bool>(false, false)), Struct_1(-1i, vec3<bool>(true, false, true), vec3<i32>(2147483647i, i32(-2147483648), 1i), 1i, vec2<bool>(false, true)), Struct_1(i32(-2147483648), vec3<bool>(false, true, true), vec3<i32>(1i, i32(-2147483648), -31336i), -1i, vec2<bool>(false, true)), Struct_1(2147483647i, vec3<bool>(true, true, true), vec3<i32>(2147483647i, -1i, 15527i), -16775i, vec2<bool>(true, true)), Struct_1(32312i, vec3<bool>(false, false, false), vec3<i32>(-55550i, 2147483647i, 1i), -1i, vec2<bool>(false, true)), Struct_1(0i, vec3<bool>(true, false, false), vec3<i32>(1i, 26488i, -18133i), i32(-2147483648), vec2<bool>(false, true)), Struct_1(20091i, vec3<bool>(false, false, false), vec3<i32>(0i, 16807i, i32(-2147483648)), 1i, vec2<bool>(true, true)), Struct_1(-6167i, vec3<bool>(false, true, true), vec3<i32>(1i, 36995i, 0i), 2147483647i, vec2<bool>(true, false)), Struct_1(28089i, vec3<bool>(true, true, true), vec3<i32>(8974i, 79520i, 1i), i32(-2147483648), vec2<bool>(false, false)), Struct_1(-11109i, vec3<bool>(false, false, true), vec3<i32>(0i, -1i, -1i), -19353i, vec2<bool>(false, false)), Struct_1(-39131i, vec3<bool>(true, false, false), vec3<i32>(4212i, 0i, 1i), 2147483647i, vec2<bool>(true, false)), Struct_1(0i, vec3<bool>(true, true, false), vec3<i32>(2147483647i, 0i, i32(-2147483648)), -7727i, vec2<bool>(false, false)), Struct_1(22269i, vec3<bool>(true, true, false), vec3<i32>(-1i, 19769i, -1813i), -1i, vec2<bool>(false, false)));

var<private> global1: Struct_1 = Struct_1(-8348i, vec3<bool>(true, true, true), vec3<i32>(i32(-2147483648), 0i, 1i), 2147483647i, vec2<bool>(false, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>) -> vec4<u32> {
    let var_0 = global0[_wgslsmith_index_u32(~arg_1.x, 29u)];
    return abs(~vec4<u32>(~26035u, arg_1.x, 6747u, arg_0.x));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    global1 = Struct_1(-(~global1.a), vec3<bool>(false || global1.b.x, ~firstTrailingBit(u_input.a) == -abs(-1i), false), global1.c, u_input.a | (-2147483647i | _wgslsmith_add_i32(arg_0.x, ~global1.c.x)), select(vec2<bool>(global1.b.x || all(global1.e), global1.b.x), select(vec2<bool>(true, global1.b.x & true), select(select(global1.b.xx, global1.b.yy, true), vec2<bool>(true, true), !vec2<bool>(false, global1.b.x)), !(!global1.e)), select(global1.b.xz, global1.b.yy, all(!global1.e))));
    var var_0 = global0[_wgslsmith_index_u32(16831u, 29u)];
    var_0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-min(2147483647i, global1.c.x), 54252i), reverseBits(global1.c.zy)), !vec3<bool>(true, false, 1i > global1.c.x), abs(~select(vec3<i32>(u_input.a, 2147483647i, global1.c.x), vec3<i32>(-32231i, u_input.a, 43593i), var_0.e.x) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), firstLeadingBit(i32(-1i) * -1i) >> (1u % 32u), vec2<bool>(all(!var_0.b), true));
    global1 = Struct_1(0i, vec3<bool>(true, true, global1.b.x), vec3<i32>(min(-15517i, ~_wgslsmith_div_i32(arg_0.x, 1i)), _wgslsmith_mod_i32(var_0.a, u_input.a), ~arg_0.x), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, -24181i, abs(arg_0.x)) >> (_wgslsmith_add_u32(firstLeadingBit(1u), _wgslsmith_mod_u32(1u, 33162u)) % 32u), _wgslsmith_mod_i32(arg_0.x, 2147483647i)), select(vec2<bool>(true, !(!global1.b.x)), var_0.b.zy, vec2<bool>(false, all(vec4<bool>(false, false, true, true)) != true)));
    let var_1 = vec3<u32>(~(~min(firstLeadingBit(4294967295u), 4294967295u)), 40922u, 1u);
    return ~1u;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(~func_2(abs(~vec3<u32>(48476u, 17373u, 20788u)), vec4<u32>(_wgslsmith_mult_u32(0u, 27382u), 0u, ~1u, abs(13732u))), vec4<u32>(firstLeadingBit(1u), _wgslsmith_mod_u32(abs(max(1u, 0u)), func_3(global1.c.yy) << (88487u % 32u)), ~reverseBits(~1u), select(56821u, _wgslsmith_sub_u32(~0u, 29788u), true)));
    let var_1 = any(global1.b);
    var var_2 = _wgslsmith_mod_vec2_u32(~var_0.yx, ~reverseBits(select(var_0.wy, var_0.zz, global1.e.x)) | ((vec2<u32>(15044u, var_0.x) << (~vec2<u32>(18967u, var_0.x) % vec2<u32>(32u))) >> (vec2<u32>(~50855u, var_0.x) % vec2<u32>(32u))));
    global0 = array<Struct_1, 29>();
    global1 = global0[_wgslsmith_index_u32(~1u, 29u)];
    return Struct_1(53391i, !vec3<bool>(true, select(true, any(vec3<bool>(global1.b.x, global1.e.x, global1.e.x)), all(vec2<bool>(var_1, global1.e.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.x, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.a, global1.c.x, u_input.a, global1.a)) <= -u_input.a), global1.c | select(global1.c, -vec3<i32>(-42205i, global1.d, u_input.a), !global1.b), firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_add_i32(1i, 9278i), i32(-1i) * -u_input.a)), global1.e);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<u32>(112220u, 19367u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, _wgslsmith_add_u32(1u, 76545u)))) & select(vec3<u32>(1u, ~1u, ~66638u), vec3<u32>(func_2(~vec3<u32>(82270u, 1u, 1u), ~vec4<u32>(28429u, 40642u, 0u, 0u)).x, ~(~88756u), ~1u), arg_0.b.x);
    let var_1 = func_1();
    global1 = Struct_1(countOneBits(~1i), func_1().b, vec3<i32>(-2147483647i, select(_wgslsmith_dot_vec3_i32(vec3<i32>(-10352i, var_1.a, 1i), vec3<i32>(arg_0.a, global1.a, 0i)), abs(-41207i), var_1.e.x), -(u_input.a & (arg_0.d ^ global1.c.x))), arg_0.a, var_1.b.xz);
    var var_2 = ~vec2<u32>(4294967295u, ~var_0.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1316f - 519f), _wgslsmith_f_op_f32(ceil(200f))), 3165f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-195f, 1f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 296f, -852f, -1155f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-118f, -1000f, 743f, -1989f), vec4<f32>(601f, 1095f, -897f, 191f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1473f, -214f, -321f, -1000f)))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~1u, 29u)];
    var var_1 = func_4(func_1());
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-423f, -635f, -597f) * vec3<f32>(-143f, 687f, 290f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-254f, -724f, 1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -742f, 794f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2393f, -401f, -859f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(158f, -633f, 320f))))), true)));
    let var_4 = var_1.c;
    let var_5 = min(-2147483647i, var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

