struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(35489u, 0u, 4557u), vec3<u32>(16222u, 13381u, 4294967295u), vec3<u32>(60701u, 0u, 16916u), vec3<u32>(33976u, 16176u, 4294967295u), vec3<u32>(56407u, 7615u, 4294967295u), vec3<u32>(0u, 45959u, 1u), vec3<u32>(35890u, 65716u, 22464u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 2815u, 8163u), vec3<u32>(1u, 4294967295u, 40190u), vec3<u32>(77661u, 0u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 0u, 0u), vec3<u32>(28168u, 4294967295u, 0u), vec3<u32>(0u, 0u, 84736u), vec3<u32>(4294967295u, 9079u, 96168u), vec3<u32>(7359u, 4294967295u, 41580u), vec3<u32>(1u, 1016u, 1u), vec3<u32>(27656u, 0u, 36113u), vec3<u32>(21247u, 108143u, 1u), vec3<u32>(3442u, 1u, 16578u), vec3<u32>(2647u, 5425u, 50513u), vec3<u32>(12315u, 25846u, 4294967295u), vec3<u32>(11956u, 75789u, 1u), vec3<u32>(1u, 1u, 58875u), vec3<u32>(0u, 10076u, 1u), vec3<u32>(4294967295u, 4143u, 9744u), vec3<u32>(25336u, 43748u, 1u), vec3<u32>(26203u, 0u, 0u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-146f)), -1000f);
    let var_1 = Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true))));
    var var_2 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1223f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), var_0.x) + -1533f)), var_0.x);
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, all(vec4<bool>(false, false, var_1.a.x, var_1.a.x)))), var_2.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_2.zx))), _wgslsmith_f_op_vec2_f32(-var_2.yy)), _wgslsmith_f_op_vec2_f32(ceil(var_2.yz)))));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(6451i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -1i)), -vec4<i32>(0i, 11988i, u_input.a.x, 2147483647i))), _wgslsmith_add_i32(firstLeadingBit(17472i) ^ _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -_wgslsmith_mod_i32(40123i, u_input.a.x)), ~countOneBits(0i), u_input.a.x), vec4<i32>(_wgslsmith_div_i32(u_input.a.x, ~u_input.a.x) << (~u_input.b.x % 32u), 2147483647i, 0i & select(1i, 33737i, false), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), ~u_input.a), ~select(184i, -23990i, var_1.a.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_4 {
    var var_0 = vec2<i32>(firstTrailingBit(~(-arg_2)), _wgslsmith_mod_i32(-40239i, ~71628i)) << (vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(u_input.c), ~31026u), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_sub_u32(u_input.c, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 41226u, 1u), global0[_wgslsmith_index_u32(u_input.b.x, 29u)]) & abs(u_input.b.x))) % vec2<u32>(32u));
    var_0 = abs(vec2<i32>(arg_2, func_3()));
    var var_1 = Struct_5(Struct_2(firstTrailingBit(vec2<i32>(var_0.x, arg_2)), Struct_1(arg_1.a), firstLeadingBit(0u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, ~41970u, ~u_input.c, ~u_input.c), ~vec4<u32>(27169u, 1u, u_input.c, u_input.c)), all(vec4<bool>(true, arg_1.a.x, all(vec2<bool>(arg_1.a.x, arg_1.a.x)), arg_1.a.x || true))), Struct_4(select(~(~vec4<u32>(30199u, u_input.b.x, u_input.b.x, u_input.c)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c, 11985u), vec4<u32>(39413u, 4294967295u, u_input.c, 4294967295u)), true), u_input.b.x, Struct_1(vec3<bool>(arg_0.x != -823f, false, all(vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-405f, 1173f))))), ~abs(countOneBits(0u)));
    var var_2 = select(!(!all(vec4<bool>(var_1.a.e, true, var_1.b.c.a.x, arg_1.a.x)) || any(vec2<bool>(var_1.a.b.a.x, var_1.a.e))), all(!(!select(vec4<bool>(true, arg_1.a.x, var_1.a.e, var_1.a.b.a.x), vec4<bool>(true, false, var_1.b.c.a.x, arg_1.a.x), vec4<bool>(true, true, false, arg_1.a.x)))), false);
    var var_3 = Struct_3(~min(var_1.a.d, min(vec4<u32>(1u, u_input.b.x, 0u, 19272u) << (vec4<u32>(11082u, var_1.b.a.x, 25065u, 22587u) % vec4<u32>(32u)), var_1.b.a)), ~(~vec2<i32>(29490i, -2147483647i) ^ -select(var_1.a.a, vec2<i32>(arg_2, -11842i), var_1.a.e)), firstTrailingBit(288i), select(vec4<bool>(all(var_1.a.b.a.zz), true && all(var_1.b.c.a), !all(arg_1.a.zz), arg_1.a.x), !select(select(vec4<bool>(arg_1.a.x, var_1.a.e, var_1.a.b.a.x, var_1.b.c.a.x), vec4<bool>(arg_1.a.x, var_1.b.c.a.x, false, true), var_1.b.c.a.x), vec4<bool>(arg_1.a.x, false, true, true), !vec4<bool>(var_1.b.c.a.x, arg_1.a.x, true, false)), true));
    return var_1.b;
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: i32) -> i32 {
    global0 = array<vec3<u32>, 29>();
    global0 = array<vec3<u32>, 29>();
    global0 = array<vec3<u32>, 29>();
    let var_0 = !(arg_0.c > select(-(0i << (u_input.c % 32u)), arg_3, false));
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(828f, 564f, -387f), vec3<f32>(1000f, 2035f, 1112f), arg_0.d.xzx))) + vec3<f32>(-1000f, -2245f, _wgslsmith_f_op_f32(f32(-1f) * -610f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1545f, -1001f, 691f) - vec3<f32>(-1000f, -647f, 362f)))))), Struct_1(select(!arg_0.d.wwx, arg_0.d.yww, true)), -2147483647i);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x <= countOneBits(-1i);
    global0 = array<vec3<u32>, 29>();
    var var_1 = vec2<i32>(_wgslsmith_add_i32(u_input.a.x, 21515i), ~1i) ^ (~u_input.a.yz ^ vec2<i32>(func_1(Struct_3(vec4<u32>(1u, u_input.c, 145160u, u_input.b.x), u_input.a.yy, -54835i, vec4<bool>(true, true, var_0, true)), !var_0, var_0 | var_0, _wgslsmith_mod_i32(u_input.a.x, -3616i)), func_1(Struct_3(vec4<u32>(4294967295u, 1u, 18644u, 0u), vec2<i32>(2147483647i, -2147483647i), -21318i, vec4<bool>(true, false, true, var_0)), any(vec3<bool>(var_0, var_0, false)), any(vec2<bool>(var_0, var_0)), u_input.a.x)));
    var var_2 = all(func_2(vec3<f32>(-1445f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-900f - -1896f), -255f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1433f, 214f, 412f)), Struct_1(vec3<bool>(false, var_0, var_0)), var_1.x).c, _wgslsmith_clamp_i32(~max(2147483647i, u_input.a.x), _wgslsmith_add_i32(i32(-1i) * -29455i, u_input.a.x << (0u % 32u)), -24307i)).c.a);
    let var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~(~u_input.c), 1u), vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.b.x, u_input.b.x), abs(vec3<u32>(u_input.c, u_input.b.x, u_input.b.x))), u_input.b.x), vec2<u32>(_wgslsmith_add_u32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(2019f, 273f, -1000f) * vec3<f32>(-437f, 827f, 186f)), func_2(vec3<f32>(-374f, -134f, 178f), Struct_1(vec3<bool>(var_0, true, true)), var_1.x).c, _wgslsmith_sub_i32(var_1.x, u_input.a.x)).b, u_input.b.x), u_input.b.x ^ countOneBits(4294967295u)));
    global0 = array<vec3<u32>, 29>();
    var_1 = select(-(vec2<i32>(-52803i, 1i) >> (abs(vec2<u32>(4294967295u, u_input.c) & var_3) % vec2<u32>(32u))), vec2<i32>(max(11027i, u_input.a.x), -1i), vec2<bool>(any(!(!vec4<bool>(false, true, false, var_0))), all(func_2(vec3<f32>(1271f, -737f, -1555f), Struct_1(vec3<bool>(var_0, false, var_0)), var_1.x >> (var_3.x % 32u)).c.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -482f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-626f, 168f, 102f))))) - vec3<f32>(767f, -185f, _wgslsmith_div_f32(293f, -1000f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
}

