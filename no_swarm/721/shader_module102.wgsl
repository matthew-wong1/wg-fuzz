struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 17>;

var<private> global2: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> vec2<f32> {
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1108f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f))));
    let var_0 = -1915f;
    let var_1 = vec4<bool>(true || any(vec4<bool>(all(vec4<bool>(false, false, true, true)), true, true, true)), true, all(vec2<bool>(true, true)), true);
    global2 = 529f;
    global0 = var_1.x;
    return vec2<f32>(var_0, _wgslsmith_f_op_f32(ceil(var_0)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = ~arg_2;
    let var_1 = arg_3;
    let var_2 = vec2<u32>(arg_2, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~(~u_input.b.x), ~43311u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 18142u, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)]), ~vec4<u32>(u_input.c.x, global1[_wgslsmith_index_u32(arg_2, 17u)], 4294967295u, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]))), ~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(10533u, 17u)], 17u)] ^ arg_2));
    global1 = array<u32, 17>();
    var var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(23429u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)]), min(0u, _wgslsmith_clamp_u32(14222u, u_input.b.x, 7398u)), 1u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(var_2.x, 17u)], 88311u) ^ _wgslsmith_clamp_u32(0u, 1u, u_input.b.x)), vec4<u32>(arg_2 << (1u % 32u), 6492u, _wgslsmith_div_u32(select(arg_2, 4294967295u, true), arg_2), ~1u)), arg_2);
    return reverseBits(~(var_2 << ((vec2<u32>(var_2.x, 97577u) & reverseBits(var_2)) % vec2<u32>(32u))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_2.x)))))));
    var var_2 = Struct_2(vec4<bool>(!var_0, var_0, false != var_0, !var_0), 61229i, vec4<f32>(_wgslsmith_f_op_f32(step(arg_2.x, arg_2.x)), arg_2.x, _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.x)) * _wgslsmith_f_op_f32(-arg_2.x)), any(vec4<bool>(false, var_0, true, var_0)))), arg_2.x), _wgslsmith_f_op_vec3_f32(-arg_2), Struct_1(false, vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -832f), 1427f, 427f), u_input.a));
    let var_3 = u_input.b.xz << (select(~arg_1.xx, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1643f, arg_2.x) - _wgslsmith_f_op_vec2_f32(func_3(2695u, vec3<i32>(var_2.e.c, u_input.a, var_2.e.c)))), var_2.e, 1u, Struct_2(!vec4<bool>(var_0, var_2.a.x, false, false), var_2.b, _wgslsmith_f_op_vec4_f32(abs(var_2.e.b)), var_2.e.b.wwy, Struct_1(true, var_2.e.b, var_2.e.c))), vec2<bool>(true, true)) % vec2<u32>(32u));
    global1 = array<u32, 17>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c.x))), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(abs(1000f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x)))) - arg_2.x);
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-876f + 1545f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(67274i, vec3<u32>(global1[_wgslsmith_index_u32(1u, 17u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)]), vec3<f32>(-937f, -1017f, -1496f))), _wgslsmith_f_op_f32(step(506f, -469f)), true)), 418f, _wgslsmith_f_op_f32(160f + -1880f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1169f * 221f)), -1398f, _wgslsmith_f_op_f32(-607f * -1285f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(f32(-1f) * -118f), all(vec4<bool>(false, true, false, true)))))), ~(4983i << (~(~global1[_wgslsmith_index_u32(1u, 17u)]) % 32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.b.www, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.x, var_0.b.x, 451f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.b.zxz))))) + var_0.b.wyz);
    let var_2 = Struct_1(any(!vec4<bool>(false, var_0.a, false, var_0.a)), _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(42806u, vec3<i32>(var_0.c, -64638i, var_0.c))).x * var_1.x), var_0.b.x, _wgslsmith_f_op_f32(max(1755f, var_1.x)))), 18924i ^ select(firstLeadingBit(_wgslsmith_add_i32(-12110i, u_input.a)), var_0.c, var_0.a));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(133f - var_2.b.x), _wgslsmith_f_op_f32(func_2(-1i, vec3<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], u_input.b.x), var_2.b.zzw)))), 595f, var_1.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.b.wzz + _wgslsmith_f_op_vec3_f32(-var_2.b.xxy)), _wgslsmith_f_op_vec3_f32(vec3<f32>(333f, -2384f, var_0.b.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_2.b.x, var_2.b.x))))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(step(var_2.b.x, _wgslsmith_f_op_f32(round(-655f)))), _wgslsmith_f_op_f32(ceil(-620f)))))));
    let var_4 = -vec3<i32>(-(u_input.a | -20216i), 16902i, ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.c, u_input.a, -42803i, -804i), vec4<i32>(u_input.a, var_2.c, var_2.c, -2147483647i), true), vec4<i32>(7406i, var_2.c, var_0.c, var_2.c) & vec4<i32>(-1i, -18853i, var_2.c, var_0.c)));
    return vec4<bool>(var_0.a, false || !((false || var_2.a) || var_0.a), !(!var_0.a), 1u == (global1[_wgslsmith_index_u32(reverseBits(9009u), 17u)] ^ u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(-2147483647i);
    global0 = true && any(func_1());
    global1 = array<u32, 17>();
    var var_1 = -224f;
    var var_2 = Struct_1(u_input.b.x == (4294967295u >> (u_input.b.x % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-165f, 850f, -391f, -1295f) - vec4<f32>(306f, -448f, -586f, -697f))))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(u_input.c.yy, _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.xy)), vec3<f32>(var_2.b.x, _wgslsmith_f_op_vec2_f32(func_3(select(_wgslsmith_clamp_u32(0u, 6610u, u_input.c.x), 42005u, var_2.a), firstTrailingBit(vec3<i32>(u_input.a, var_2.c, var_2.c)))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + 594f)), firstTrailingBit(min(~(-vec4<i32>(34393i, -40966i, u_input.a, var_2.c)), firstLeadingBit(firstTrailingBit(vec4<i32>(2147483647i, 40626i, 2147483647i, var_2.c))))), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 17u)] >> (0u % 32u), 17u)], _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 17u)], u_input.c.x, u_input.c.x), vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.c.x, 17u)], 0u, global1[_wgslsmith_index_u32(29637u, 17u)])))), var_2.b.x);
}

