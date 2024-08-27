struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global2: array<vec2<i32>, 21>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> i32 {
    let var_0 = Struct_1(u_input.c.x, vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(arg_2.x), ~arg_1.x), min(arg_2.x, u_input.a.x) ^ countOneBits(52200u)) >> (vec2<u32>(arg_1.x, _wgslsmith_div_u32(~arg_2.x, min(4294967295u, 59288u))) % vec2<u32>(32u)), abs(~arg_1.x), firstTrailingBit(~(~arg_0.x) ^ 49671i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-770f, 973f, false)))), 1159f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1270f, -106f))), vec3<f32>(_wgslsmith_f_op_f32(abs(-1474f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(371f, -115f)))), global1.x)));
    global0 = array<vec4<u32>, 20>();
    global0 = array<vec4<u32>, 20>();
    let var_1 = ~0i;
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.x, 237f, var_0.e.x, 1251f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(510f)), var_0.e.x, -227f, _wgslsmith_f_op_f32(sign(532f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1982f, -1668f, 102f, -2054f) - vec4<f32>(-1594f, -260f, var_0.e.x, var_0.e.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.x, var_0.e.x, var_0.e.x, -845f), vec4<f32>(1825f, var_0.e.x, var_0.e.x, 2040f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.e.x, var_0.e.x, -979f, 2124f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.e.x, var_0.e.x, -1000f, -895f)))))));
    return ~8391i;
}

fn func_2(arg_0: Struct_5) -> bool {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(41194i, _wgslsmith_div_i32(func_3(u_input.c.yyy, global0[_wgslsmith_index_u32(9132u, 20u)], u_input.a.wx) ^ u_input.c.x, _wgslsmith_mult_i32(-1i, ~arg_0.a.b.x))), _wgslsmith_mod_i32(~func_3(firstLeadingBit(vec3<i32>(u_input.b.x, u_input.d, u_input.d)), vec4<u32>(arg_0.b.x, arg_0.b.x, 4294967295u, u_input.a.x), vec2<u32>(arg_0.a.c.b.x, u_input.a.x)), -5782i));
    return var_0 == 1i;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>) -> f32 {
    global1 = select(vec4<bool>(false, false, true != !(global1.x == global1.x), true), vec4<bool>((min(20872u, 1u) ^ ~arg_0.c.b.x) >= ((1u ^ arg_0.c.c) | arg_0.c.b.x), true, true, !(u_input.c.x != countOneBits(u_input.b.x))), all(vec4<bool>(global1.x, true, _wgslsmith_div_f32(arg_1.x, arg_0.c.e.x) > _wgslsmith_f_op_f32(floor(arg_1.x)), func_2(Struct_5(Struct_3(arg_0.a, u_input.b.wzw, arg_0.c), u_input.a.zyw)))));
    let var_0 = 1u;
    global0 = array<vec4<u32>, 20>();
    global1 = select(select(select(select(vec4<bool>(false, global1.x, true, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x), !global1.x), select(!vec4<bool>(true, global1.x, global1.x, true), !vec4<bool>(global1.x, false, global1.x, global1.x), select(vec4<bool>(false, true, global1.x, false), vec4<bool>(false, global1.x, false, false), false)), global1.x), select(!(!vec4<bool>(true, true, global1.x, global1.x)), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x), !vec4<bool>(false, global1.x, global1.x, false)), global1.x && any(vec4<bool>(false, global1.x, global1.x, true))), true & all(vec3<bool>(global1.x, false, global1.x))), vec4<bool>(false, all(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(false, true, global1.x, false)), true)), !select(false, global1.x, global1.x == false), arg_0.c.b.x == ~24824u), all(global1.xw) | global1.x);
    global2 = array<vec2<i32>, 21>();
    return -117f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(0i, _wgslsmith_mod_vec2_u32(firstLeadingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, u_input.a.x)), ~vec2<u32>(u_input.a.x, u_input.a.x), reverseBits(vec2<u32>(0u, u_input.a.x)))), vec2<u32>(select(_wgslsmith_div_u32(u_input.a.x, 47470u), _wgslsmith_add_u32(u_input.a.x, 0u), true), u_input.a.x)), 8922u, u_input.d ^ (min(~6039i, abs(-3842i)) | u_input.d), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec4<f32>(459f, -2864f, -196f, -746f), vec3<i32>(-1i, u_input.b.x, 30474i), Struct_1(u_input.d, u_input.a.xx, 1u, 1i, vec3<f32>(899f, 2652f, -1066f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(552f, 985f)))) + -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2167f + -391f) - _wgslsmith_f_op_f32(ceil(974f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(975f * -523f), _wgslsmith_f_op_f32(min(-628f, 1680f)))), global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(634f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1834f)), true))));
    var var_1 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(619f, var_0.e.x, 1193f, var_0.e.x), vec4<f32>(-2032f, var_0.e.x, 648f, var_0.e.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, var_0.e.x, 1687f, -1945f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.e.x, -1877f, 1163f)))), firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(-1i, -47130i), u_input.d, u_input.d)), Struct_1(countOneBits(var_0.a), u_input.a.xz, max(~0u, _wgslsmith_div_u32(var_0.b.x, var_0.b.x)), ~u_input.c.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(767f, var_0.e.x, -738f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(556f, var_0.e.x, var_0.e.x)), select(vec3<bool>(global1.x, global1.x, global1.x), global1.wyy, true))))), u_input.a.yxz);
    let var_2 = Struct_2(global1.yz, _wgslsmith_dot_vec2_u32(abs(~_wgslsmith_clamp_vec2_u32(var_1.b.yy, vec2<u32>(58595u, var_0.c), var_0.b)), vec2<u32>(u_input.a.x, firstTrailingBit(173u))));
    var var_3 = var_1.a.c;
    var var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.e.x, _wgslsmith_div_f32(-1000f, -1537f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-114f)) - _wgslsmith_f_op_f32(max(var_1.a.c.e.x, 1094f))), _wgslsmith_f_op_f32(func_1(Struct_3(var_1.a.a, u_input.c.xxx, var_1.a.c), var_3.e.yy))), _wgslsmith_f_op_vec4_f32(var_1.a.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_1.a.a.x, 1243f, var_0.e.x))))), min(min(abs(select(vec3<i32>(var_3.d, 0i, 1i), vec3<i32>(14307i, -1i, var_3.a), false)), min(vec3<i32>(2147483647i, var_0.d, -2147483647i), var_1.a.b)), min(vec3<i32>(7204i, -1i, 2147483647i), ~select(u_input.c.yyx, vec3<i32>(-8210i, var_3.a, -1i), vec3<bool>(global1.x, var_2.a.x, global1.x)))), Struct_1(var_3.d, reverseBits(vec2<u32>(var_3.c, ~var_3.c)), ~(~var_3.c ^ var_2.b), 0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(231f, var_0.e.x, var_3.e.x) + var_3.e) + vec3<f32>(-516f, 260f, var_3.e.x)))));
    var_0 = var_4.c;
    let var_5 = !(!(!global1.zxw));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec3<i32>(~0i, 55905i, var_1.a.b.x)));
}

