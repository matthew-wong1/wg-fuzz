struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    return arg_2.c.x;
}

fn func_2() -> u32 {
    return ~_wgslsmith_div_u32(abs(u_input.b.x), 10257u) & ~firstLeadingBit(u_input.b.x);
}

fn func_3() -> f32 {
    global0 = array<vec4<u32>, 21>();
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(abs(928f));
    global0 = array<vec4<u32>, 21>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_div_f32(-609f, _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(select(var_1, 292f, true)), !var_0)))), Struct_1(u_input.c | -43857i, 143f), select(countOneBits(1i), _wgslsmith_mod_i32(~13417i, u_input.a) | ~_wgslsmith_clamp_i32(u_input.a, 10903i, 0i), 896f > _wgslsmith_div_f32(var_1, var_1)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(678f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = vec3<i32>(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0.c, u_input.a, 0i), min(vec4<i32>(-29309i, arg_0.b.a, -2147483647i, arg_0.c), vec4<i32>(-15983i, 2147483647i, -2147483647i, -59934i))), _wgslsmith_mod_i32(-15506i ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(32929i, 2147483647i), vec2<i32>(1i, 1i)), min(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, arg_0.b.a, u_input.c) << (u_input.b % vec4<u32>(32u)), vec4<i32>(u_input.a, 0i, arg_0.b.a, 1i) << (u_input.b % vec4<u32>(32u))))), max(u_input.c, 0i));
    var var_1 = arg_0;
    var var_2 = !any(vec4<bool>(arg_3.c.x, false != !arg_3.d, true, any(!vec2<bool>(arg_1, arg_1))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1216f, _wgslsmith_f_op_f32(exp2(var_1.a.x)), 1026f)))), Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.xz, var_0.xy), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), var_0.xx, var_0.zy)), (arg_0.c ^ -1i) >> (arg_3.e % 32u)), -314f), 2147483647i);
    var_1 = arg_0;
    return vec4<bool>(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-992f, var_1.a.x, arg_0.a.x, var_1.b.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, var_3.a.x, -268f, -1492f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.b, -1041f, var_1.a.x, var_3.b.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_3.a.x, -836f, arg_3.b)))), Struct_4(Struct_1(var_0.x, arg_3.b), arg_1), arg_3, Struct_2(_wgslsmith_f_op_vec3_f32(min(var_1.a, vec3<f32>(var_3.b.b, 1419f, var_3.b.b))), Struct_1(_wgslsmith_add_i32(arg_0.c, var_3.c), _wgslsmith_f_op_f32(select(var_1.b.b, var_3.b.b, arg_3.c.x))), min(~var_0.x, -69802i))), false, arg_1, !(true & arg_3.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 21>();
    var var_0 = !all(vec2<bool>(true, true));
    var var_1 = 32461u;
    var var_2 = 86782u;
    var_0 = all(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), !func_1(vec4<f32>(792f, 608f, 127f, -761f), Struct_4(Struct_1(u_input.c, 1714f), false), Struct_3(vec4<u32>(u_input.b.x, 30663u, 11475u, 95770u), -995f, vec2<bool>(false, true), true, 0u), Struct_2(vec3<f32>(-1199f, 598f, 1086f), Struct_1(u_input.c, 1280f), -35771i)), true, func_2() != 61866u)) != any(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-718f, 495f, 1308f)), Struct_1(u_input.a, -656f), i32(-1i) * -3536i), any(vec4<bool>(true, false, false, true)), abs(~45277u), Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b, global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), _wgslsmith_f_op_f32(func_3()), vec2<bool>(false, false), all(vec3<bool>(false, false, false)), ~36566u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -780f) + vec2<f32>(-1704f, 1182f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-885f, -296f), vec2<f32>(-2173f, -2545f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1256f, -517f), vec2<f32>(-971f, -1277f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(floor(var_3.x)), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_3.x)))))), _wgslsmith_add_i32(max(~u_input.a, reverseBits(i32(-1i) * -22883i)), _wgslsmith_div_i32(countOneBits(~36569i), _wgslsmith_clamp_i32(~u_input.a, _wgslsmith_clamp_i32(66755i, u_input.a, u_input.c), ~u_input.a))), ~48120u, u_input.c >> (15650u % 32u), _wgslsmith_f_op_vec2_f32(var_3 - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_3)) - vec2<f32>(-1117f, var_3.x)))));
}

