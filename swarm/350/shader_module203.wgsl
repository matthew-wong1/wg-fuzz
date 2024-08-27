struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 30>;

var<private> global2: f32;

var<private> global3: array<Struct_4, 25>;

var<private> global4: Struct_1 = Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(15354i, -74042i), vec4<bool>(false, false, false, true), false, 6103u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_1(global4.a, vec2<i32>(select(~1i, global4.b.x, global4.c.x), 2147483647i), select(vec4<bool>(global4.c.x || true, false, !(!global4.d), global4.a.x), select(vec4<bool>(any(vec4<bool>(global4.d, false, false, global4.d)), true | global4.a.x, true, false), global4.a, vec4<bool>(false, !global4.c.x, any(global4.a), arg_0.x == 410f)), all(!select(vec2<bool>(false, true), vec2<bool>(true, global4.d), global4.c.yx))), true, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, u_input.a, global4.e, 35002u), vec4<u32>(arg_1.x, u_input.a, global4.e, 624u))), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, global4.e, global4.e, u_input.a), vec4<u32>(120584u, 0u, 21826u, arg_1.x)))), countOneBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, global4.e), vec4<u32>(u_input.a, 0u, 4294967295u, 1u))))));
    let var_1 = ~_wgslsmith_mod_u32(abs(~1u), global4.e);
    global2 = _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(trunc(-1119f)));
    let var_2 = 4294967295u;
    let var_3 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1562f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, -119f), arg_0.x))));
}

fn func_2(arg_0: bool) -> f32 {
    global3 = array<Struct_4, 25>();
    global0 = _wgslsmith_f_op_f32(-678f - 1000f);
    global3 = array<Struct_4, 25>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-402f, 351f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -153f))), 368f));
    let var_0 = global1[_wgslsmith_index_u32(~(~(1u >> ((_wgslsmith_sub_u32(67907u, u_input.a) << (countOneBits(63099u) % 32u)) % 32u))), 30u)];
    return _wgslsmith_div_f32(_wgslsmith_div_f32(-885f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(261f, 629f, 621f, 2156f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(636f, -732f, 1602f, -1333f))), vec2<u32>(global4.e, 31377u)))), _wgslsmith_f_op_f32(f32(-1f) * -511f));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    let var_0 = Struct_1(vec4<bool>(arg_2.a.a.x, !(arg_3.c.x < arg_2.a.c.x), global4.a.x, arg_2.a.a.x), arg_2.a.c.zx, vec4<bool>(!any(arg_2.a.a.yy), !arg_3.a.x, arg_3.a.x, true), (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(234f + -1000f))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1083f * -2272f), _wgslsmith_f_op_f32(func_2(global4.a.x)), global4.d && false))) | !(!(false && arg_3.a.x)), ~(~u_input.a));
    var var_1 = var_0;
    var var_2 = _wgslsmith_dot_vec4_i32(max(arg_3.c, vec4<i32>(~global4.b.x, firstTrailingBit(-62790i), -(i32(-1i) * -1i), -27982i)), ~(-(u_input.d << (vec4<u32>(1u, 41376u, arg_2.a.d.x, var_1.e) % vec4<u32>(32u)))) & _wgslsmith_add_vec4_i32(arg_3.c, arg_2.a.c));
    var var_3 = _wgslsmith_div_f32(-479f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1027f * 367f), _wgslsmith_f_op_f32(-646f - -1000f))), -1486f, arg_2.a.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-911f, -186f)))))));
    let var_4 = !select(select(vec4<bool>(false, any(arg_2.a.a), false, global4.d), select(!var_0.c, !var_1.c, !vec4<bool>(var_1.a.x, false, false, true)), all(arg_2.a.a)), vec4<bool>(!any(vec2<bool>(arg_3.a.x, true)), all(vec2<bool>(false, global4.d)), !(true & var_0.c.x), true), !global4.d);
    return any(vec4<bool>((true || !global4.d) & all(!arg_2.a.a), true, arg_2.a.a.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, !(!func_1(-vec3<i32>(8161i, global4.b.x, 36825i), global4.b.x >> (62298u % 32u), Struct_4(Struct_3(vec4<bool>(true, global4.a.x, true, global4.a.x), 631u, vec4<i32>(global4.b.x, -2147483647i, global4.b.x, global4.b.x), vec3<u32>(1u, global4.e, u_input.a)), global4.b.x), Struct_3(vec4<bool>(true, global4.a.x, global4.c.x, true), 11894u, vec4<i32>(u_input.b, -49350i, -1i, u_input.c), vec3<u32>(u_input.a, 4294967295u, 0u)))), true);
    let var_1 = -u_input.d.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -837f), _wgslsmith_f_op_f32(758f - -208f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-2118f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-338f, -760f, -355f, -2075f)))));
}

