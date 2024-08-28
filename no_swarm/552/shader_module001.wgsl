struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<i32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_2,
    d: i32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<bool, 7> = array<bool, 7>(true, false, true, false, true, false, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>) -> vec2<i32> {
    let var_0 = ~select(~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(74505u, 22144u, 0u)), _wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(u_input.c.x, u_input.c.x)), reverseBits(u_input.c.x)), vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x ^ u_input.c.x, u_input.c.x), u_input.c.x), !(!vec3<bool>(arg_1, arg_1, true)));
    let var_1 = vec2<f32>(-1432f, 115f);
    global0 = array<Struct_1, 32>();
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_div_f32(var_1.x, -914f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f), 620f)))));
    let var_3 = vec2<bool>(select(any(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], false, true, global1[_wgslsmith_index_u32(u_input.c.x, 7u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(var_0.x, 7u)], true, arg_1), vec4<bool>(arg_1, false, false, false))) == global1[_wgslsmith_index_u32(u_input.c.x ^ 0u, 7u)], false, all(!(!vec4<bool>(arg_1, arg_1, false, global1[_wgslsmith_index_u32(u_input.c.x, 7u)])))), true);
    return firstLeadingBit(u_input.b.yw);
}

fn func_2() -> u32 {
    var var_0 = Struct_3(Struct_2(-2698i), u_input.b.yzy, Struct_2(-19980i), u_input.b.x | _wgslsmith_dot_vec3_i32(u_input.b.yyz, u_input.b.zzw), _wgslsmith_div_vec2_i32(~func_3(Struct_2(1i), global1[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, -24498i), u_input.b.wxw, vec3<i32>(-2147483647i, 1i, u_input.a))), select(u_input.b.yy & reverseBits(u_input.b.wz), ~reverseBits(u_input.b.yw), vec2<bool>(u_input.b.x > 92041i, global1[_wgslsmith_index_u32(~u_input.c.x, 7u)]))));
    global1 = array<bool, 7>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(select(_wgslsmith_add_u32(1u, u_input.c.x) >> (u_input.c.x % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 27767u), true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 8347u) >> (countOneBits(u_input.c) % vec3<u32>(32u)), vec3<u32>(22121u, ~1u, u_input.c.x)), ~(~countOneBits(u_input.c.x))), ~_wgslsmith_mult_vec3_u32(u_input.c, max(abs(u_input.c), ~vec3<u32>(38440u, 0u, 36702u)))), 7u)];
    let var_2 = u_input.c.x;
    let var_3 = any(vec2<bool>(true, true));
    return _wgslsmith_sub_u32(~var_2, min(_wgslsmith_sub_u32(~(~48914u), ~u_input.c.x >> (~57444u % 32u)), var_2));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_2) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * _wgslsmith_f_op_f32(arg_2.c + arg_2.a))))), -909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c * _wgslsmith_div_f32(arg_2.a, -1000f))));
    var var_1 = ~(~_wgslsmith_mult_vec3_u32(u_input.c, ~u_input.c));
    var_1 = ~(vec3<u32>(arg_2.b.d, 55730u, ~(~38697u)) & vec3<u32>(1u, 44580u, func_2()));
    var_1 = ~vec3<u32>(~(~56199u), 4294967295u, countOneBits(1u));
    var var_2 = ~(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 38999u, var_1.x, 11801u), vec4<u32>(17475u, 4294967295u, 7448u, 4294967295u)), ~62055u, arg_2.b.d | 0u, ~var_1.x) ^ abs(select(vec4<u32>(0u, 68693u, arg_2.b.d, 17720u), vec4<u32>(arg_2.b.d, arg_2.b.d, u_input.c.x, 44508u), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], false, arg_2.b.e.x, true)))) & _wgslsmith_add_vec4_u32(select(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(73560u, u_input.c.x, var_1.x, var_1.x)), vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 1u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.d, arg_2.b.d, var_1.x, 7797u), vec4<u32>(0u, var_1.x, arg_2.b.d, 11839u)), vec4<bool>(true, arg_2.a < -884f, true, global1[_wgslsmith_index_u32(0u, 7u)])), ~(~(~vec4<u32>(0u, arg_2.b.d, arg_2.b.d, 39785u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(522f)) + arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.b.x);
    var var_1 = Struct_2(abs(84509i));
    var var_2 = 1f <= _wgslsmith_f_op_f32(sign(-574f));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(431f, -653f, -1138f), vec3<f32>(1481f, 345f, 942f), vec3<bool>(false, global1[_wgslsmith_index_u32(11524u, 7u)], global1[_wgslsmith_index_u32(u_input.c.x, 7u)])))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-783f, 1793f, -625f)))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(827f - -1932f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -351f) + _wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.a, u_input.a, 0i), Struct_3(Struct_2(-8240i), vec3<i32>(2147483647i, var_1.a, -17489i), Struct_2(-18275i), -1i, u_input.b.zw), Struct_5(-105f, Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], vec3<bool>(false, false, false), vec4<i32>(var_1.a, 2147483647i, u_input.b.x, u_input.a), u_input.c.x, vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], global1[_wgslsmith_index_u32(u_input.c.x, 7u)], global1[_wgslsmith_index_u32(88436u, 7u)])), -1542f, Struct_2(var_0.a)), Struct_2(-33990i)))), _wgslsmith_f_op_f32(f32(-1f) * -1622f))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)));
    var var_5 = 12936i;
    let var_6 = Struct_4(Struct_3(Struct_2(var_1.a), min(u_input.b.ywx, -(~vec3<i32>(-1i, 18765i, u_input.b.x))), Struct_2(-(~u_input.a)), -26807i, vec2<i32>(-var_0.a, select(-21530i >> (u_input.c.x % 32u), ~(-262i), false || global1[_wgslsmith_index_u32(u_input.c.x, 7u)]))), global0[_wgslsmith_index_u32(2350u, 32u)], reverseBits(~(u_input.c.x & ~u_input.c.x)), Struct_2(~var_0.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(trunc(var_4))) - _wgslsmith_f_op_f32(-var_3.x)), 471f, -878f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(31446u, var_6.b.c.wx, vec3<u32>(1422u, 4294967295u, var_6.b.d), ~u_input.c.xy, _wgslsmith_sub_i32(var_0.a, -2147483647i));
}

