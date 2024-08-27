struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 40434u;

var<private> global1: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = -33513i;
    var var_1 = arg_0;
    global1 = 1u;
    var var_2 = Struct_1(var_1.c.a, !(arg_0.c.b || var_1.b.b), -1036f, 95345u);
    var_2 = var_1.b;
    return -1i;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    global1 = u_input.a;
    var var_0 = Struct_2(vec2<i32>(-45920i, max(func_3(Struct_2(arg_2, Struct_1(vec4<f32>(-1404f, 534f, 178f, -1261f), arg_1, 858f, 4294967295u), Struct_1(vec4<f32>(-972f, 2066f, -615f, 303f), arg_1, -457f, 62437u))), u_input.b)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-419f, 634f, -894f, 1936f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1612f, -424f, -294f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, 264f, -1000f, -718f))))), all(arg_0), _wgslsmith_div_f32(844f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(2074f, -1000f))))), u_input.d.x), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, _wgslsmith_f_op_f32(960f + -466f), _wgslsmith_f_op_f32(f32(-1f) * -970f), _wgslsmith_div_f32(1507f, 438f)))), all(select(vec2<bool>(false, arg_1), select(arg_0.yz, vec2<bool>(arg_0.x, false), arg_0.xx), select(vec2<bool>(arg_1, arg_0.x), arg_0.zz, vec2<bool>(arg_1, arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-158f)))) * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(-608f, 1527f)))), _wgslsmith_dot_vec4_u32(firstLeadingBit(abs(vec4<u32>(u_input.d.x, u_input.a, 16488u, u_input.a))), abs(vec4<u32>(4294967295u, u_input.d.x, 19360u, u_input.a)))));
    let var_1 = countOneBits(abs(33320i)) << (~u_input.d.x % 32u);
    let var_2 = 0u;
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.c + _wgslsmith_f_op_f32(-var_0.b.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.a.x, 1546f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c.c, 407f, var_0.c.b)) + _wgslsmith_f_op_f32(select(-937f, 1000f, arg_0.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.c, var_0.b.c) * _wgslsmith_f_op_f32(-var_0.c.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c.a.x, -840f))))), arg_0.x, 1216f, ~var_0.b.d ^ (var_0.c.d << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.b.d, u_input.a), var_0.b.d) % 32u)));
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<f32>) -> Struct_2 {
    global1 = arg_0.d;
    let var_0 = Struct_1(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0.a.x, arg_2.x)))) - _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-arg_0.c)), 1034f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.x)) - _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(arg_0.a.x + 756f)))), true, 214f, ~u_input.a);
    var var_1 = u_input.c.yz;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(686f * -1000f), _wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(f32(-1f) * -517f), var_2.c))), vec4<f32>(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1188f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.c)) * arg_2.x), _wgslsmith_f_op_f32(1f - -1000f)), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_2.x)));
    return Struct_2(u_input.c.zz, arg_0, Struct_1(vec4<f32>(710f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a.x + -860f), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(182f + 671f) + _wgslsmith_f_op_f32(arg_2.x + arg_0.a.x)), var_2.c), !all(select(vec4<bool>(true, var_0.b, false, var_2.b), vec4<bool>(false, var_0.b, false, var_0.b), vec4<bool>(false, var_0.b, false, var_0.b))), -678f, arg_1.x));
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-787f + arg_0.b.c)))), 1577f, _wgslsmith_f_op_f32(222f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.a.x))) + _wgslsmith_f_op_f32(min(369f, _wgslsmith_f_op_f32(-959f + arg_0.b.c))))));
    global0 = u_input.a & arg_0.b.d;
    let var_1 = vec4<i32>(~reverseBits(abs(arg_0.a.x)), _wgslsmith_mod_i32(arg_0.a.x, arg_0.a.x), 46552i, u_input.c.x & select(-1217i, u_input.c.x, arg_0.c.b));
    var var_2 = arg_0.c.b;
    let var_3 = func_4(arg_0.b, vec2<u32>(28811u, arg_0.c.d) ^ vec2<u32>(55843u, func_2(vec4<bool>(arg_0.b.b, true, true, true), !arg_0.b.b, vec2<i32>(arg_0.a.x, 24163i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b.c, 587f), var_0.xz))))), vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.c.c, 660f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1343f, var_0.x)) + arg_0.b.a.x))));
    return vec2<bool>(select(4294967295u, _wgslsmith_dot_vec2_u32(reverseBits(u_input.d.xz), u_input.d.xy >> (vec2<u32>(36431u, 1u) % vec2<u32>(32u))), any(select(vec4<bool>(var_3.c.b, false, true, true), vec4<bool>(false, true, false, arg_0.c.b), var_3.b.b))) <= ~u_input.a, all(!vec2<bool>(var_3.c.b, false)) || (true | !any(vec3<bool>(true, var_3.c.b, arg_0.c.b))));
}

fn func_5(arg_0: vec2<bool>) -> f32 {
    let var_0 = vec4<u32>(u_input.a, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.d.x, 0u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), u_input.d) | ~u_input.d)), u_input.a, u_input.d.x);
    let var_1 = select(vec3<bool>(all(arg_0), arg_0.x || all(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), any(vec2<bool>(func_4(Struct_1(vec4<f32>(277f, -1594f, 1931f, 843f), true, 1485f, var_0.x), vec2<u32>(var_0.x, u_input.d.x), vec2<f32>(-318f, 380f)).c.b, true))), !(!(!vec3<bool>(true, arg_0.x, true))), vec3<bool>(any(select(select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(false, false, arg_0.x, arg_0.x), true), !vec4<bool>(arg_0.x, true, true, true), true)), any(!vec3<bool>(arg_0.x, true, arg_0.x)), func_1(func_4(Struct_1(vec4<f32>(837f, 634f, -200f, -859f), arg_0.x, -1450f, u_input.a), _wgslsmith_mult_vec2_u32(u_input.d.zz, vec2<u32>(4294967295u, 28661u)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -2181f), vec2<f32>(-1487f, -463f)))).x));
    global0 = 6145u;
    global1 = _wgslsmith_sub_u32(u_input.a ^ 29083u, firstTrailingBit(firstTrailingBit(13732u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-130f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-950f, -730f))), 1454f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-554f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(381f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1524f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -2001f), var_1.x & true)), _wgslsmith_f_op_f32(abs(-2465f))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(-437f))) - 196f), -1928f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(false, ~1u != _wgslsmith_clamp_u32(4294967295u, u_input.d.x, u_input.d.x), false), vec3<bool>(true, all(vec3<bool>(true, true, true)), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)));
    let var_1 = Struct_1(vec4<f32>(1746f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-559f)) - -103f) - -1151f), _wgslsmith_div_f32(-395f, 1f), -740f), true, 1f, ~22756u);
    let var_2 = vec3<bool>(var_1.b, _wgslsmith_f_op_f32(func_5(select(func_1(Struct_2(u_input.c.yy, Struct_1(var_1.a, false, -268f, 80489u), var_1)), var_0.yy, vec2<bool>(var_0.x, true)))) < var_1.c, var_0.x);
    let var_3 = vec4<bool>(true, true || var_1.b, any(vec4<bool>(true, false, _wgslsmith_f_op_f32(min(var_1.a.x, var_1.a.x)) > _wgslsmith_div_f32(-1249f, -1000f), func_4(var_1, _wgslsmith_clamp_vec2_u32(vec2<u32>(54429u, 1u), u_input.d.xy, vec2<u32>(var_1.d, 1u)), vec2<f32>(var_1.a.x, var_1.a.x)).b.b)), !(~func_4(Struct_1(vec4<f32>(370f, var_1.c, -203f, 1567f), true, var_1.a.x, var_1.d), u_input.d.yy, var_1.a.yw).b.d != 0u));
    var var_4 = Struct_2(~u_input.c.yx, var_1, var_1);
    let var_5 = 1000f;
    let var_6 = ~4294967295u;
    let var_7 = func_4(func_4(var_4.b, u_input.d.zx, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)) * func_4(Struct_1(vec4<f32>(var_1.a.x, var_4.b.a.x, var_1.c, 191f), false, 256f, 4294967295u), u_input.d.yy, var_1.a.wx).b.c), _wgslsmith_f_op_f32(-687f - _wgslsmith_div_f32(var_1.c, -839f)))).c, vec2<u32>(~(var_1.d & reverseBits(var_4.b.d)), var_6), _wgslsmith_f_op_vec2_f32(var_1.a.zz * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-1413f, var_1.c)), _wgslsmith_f_op_f32(-var_5)) * var_4.c.a.wx))).c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~var_1.d)) & ~(~func_4(var_7, vec2<u32>(1u, var_7.d), var_4.b.a.yz).c.d), select(select(u_input.c.xx, vec2<i32>(min(-1i, var_4.a.x), u_input.b), var_7.b), var_4.a, false), ~(-countOneBits(var_4.a)), var_4.c.a.x);
}

