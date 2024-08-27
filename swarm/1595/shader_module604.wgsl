struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 21>;

var<private> global2: array<Struct_5, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> u32 {
    var var_0 = 857f;
    global2 = array<Struct_5, 8>();
    var var_1 = _wgslsmith_mult_vec2_u32(~(vec2<u32>(1u, 94178u) ^ u_input.b.xx), u_input.b.yx);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1307f, 1000f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(233f, -672f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-754f, 515f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 858f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(250f, -285f) * vec2<f32>(1322f, 1073f)))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(295f)), _wgslsmith_div_f32(-1372f, 1278f)))));
    let var_3 = Struct_2(~u_input.b, abs(vec4<i32>(-19320i, _wgslsmith_dot_vec2_i32(u_input.c.xx, arg_1.zy), i32(-1i) * -1i, ~arg_1.x) & ~reverseBits(vec4<i32>(u_input.c.x, -18723i, 0i, 18235i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(sign(-641f)))))))), u_input.c.x, ~firstLeadingBit(max(vec4<u32>(12942u, 4294967295u, u_input.a, u_input.a), ~vec4<u32>(1u, u_input.a, u_input.b.x, 1u))));
    return 10778u;
}

fn func_2(arg_0: f32, arg_1: bool) -> bool {
    global0 = !global1[_wgslsmith_index_u32(~func_3(arg_0 <= -1000f, ~vec3<i32>(u_input.c.x, 6384i, u_input.c.x)) << (min(0u, _wgslsmith_mod_u32(firstLeadingBit(56818u), 55675u << (u_input.a % 32u))) % 32u), 21u)];
    global2 = array<Struct_5, 8>();
    var var_0 = abs(abs(u_input.a)) | u_input.a;
    let var_1 = all(vec2<bool>(all(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], arg_1, arg_1)) || true, any(!vec2<bool>(arg_1, true)))) || !global1[_wgslsmith_index_u32(reverseBits(~u_input.a), 21u)];
    var var_2 = Struct_3(!vec4<bool>(any(!vec4<bool>(arg_1, arg_1, false, global1[_wgslsmith_index_u32(u_input.b.x, 21u)])), true, select(!global1[_wgslsmith_index_u32(u_input.a, 21u)], var_1 || true, true), select(global1[_wgslsmith_index_u32(u_input.a, 21u)] & var_1, var_1, !global1[_wgslsmith_index_u32(1u, 21u)])));
    return false;
}

fn func_1(arg_0: f32) -> vec3<u32> {
    var var_0 = -2147483647i;
    let var_1 = select(!select(!vec3<bool>(global1[_wgslsmith_index_u32(21291u, 21u)], true, true), select(!vec3<bool>(global1[_wgslsmith_index_u32(12838u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(5454u, 21u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], false, true), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(95187u, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(35994u, 21u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]))), false), select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, global1[_wgslsmith_index_u32(58643u, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], false)), vec3<bool>(func_2(_wgslsmith_f_op_f32(526f * arg_0), true), !(global1[_wgslsmith_index_u32(u_input.b.x, 21u)] & global1[_wgslsmith_index_u32(u_input.a, 21u)]), true), 1u < u_input.a), !(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(1u, 4294967295u, u_input.b.x)), select(vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.b, global1[_wgslsmith_index_u32(u_input.b.x, 21u)])), 21u)] & true));
    var var_2 = Struct_5(Struct_2(~_wgslsmith_div_vec3_u32(vec3<u32>(32828u, 4294967295u, 0u) & u_input.b, ~u_input.b), -firstTrailingBit(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i)), arg_0, -20031i, _wgslsmith_div_vec4_u32(vec4<u32>(53390u, ~u_input.b.x, min(1u, u_input.b.x), 54668u), ~vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.b.x))), Struct_4(min(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 13721u, u_input.a, 112033u) << (vec4<u32>(4294967295u, u_input.b.x, 4294967295u, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.b.x) << (vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.b.x, u_input.a), ~vec4<u32>(u_input.b.x, 70259u, u_input.b.x, u_input.b.x), abs(vec4<u32>(4294967295u, 1u, 73118u, u_input.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-111f)), _wgslsmith_div_f32(221f, arg_0), any(var_1)))), 2147483647i & firstTrailingBit(min(21031i, u_input.c.x)), Struct_1(true, 2147483647i, true, _wgslsmith_f_op_f32(trunc(-1000f)))), Struct_1(!all(select(var_1.yz, vec2<bool>(var_1.x, true), global1[_wgslsmith_index_u32(4294967295u, 21u)])), firstTrailingBit(u_input.c.x), !(_wgslsmith_f_op_f32(f32(-1f) * -751f) > arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1135f))));
    let var_3 = vec4<bool>(select(select(!var_2.c.a, var_2.b.d.c, !var_1.x), all(var_1.xx) | var_2.b.d.a, any(select(var_1.xx, vec2<bool>(var_2.b.d.a, var_2.b.d.c), var_1.zz))), (_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_2.b.a.x, 11898u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), var_2.a.e.xy), var_2.a.e.x & 4294967295u) ^ u_input.a) != ~(~19986u), var_2.b.d.c, !any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(var_2.b.a.x, 21u)], true)) && (var_2.c.c && (global1[_wgslsmith_index_u32(12825u, 21u)] | !global1[_wgslsmith_index_u32(u_input.b.x, 21u)])));
    let var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(676f * var_2.a.c), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-var_2.c.d), var_2.b.b))), vec2<bool>(!all(var_1.zz), global1[_wgslsmith_index_u32(~var_2.b.a.x, 21u)]))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_div_f32(1322f, arg_0)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(1788f, 1000f, var_3.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, var_2.a.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1323f, 401f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1137f))))))));
    return vec3<u32>(1u, max(abs(_wgslsmith_mult_u32(25694u, u_input.b.x)), ~1u & _wgslsmith_mult_u32(var_2.a.a.x, var_2.b.a.x | 27024u)), select(~27320u, max(~_wgslsmith_mult_u32(0u, var_2.a.e.x), ~firstTrailingBit(1u)), !var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false, -7179i, global1[_wgslsmith_index_u32(~select(u_input.a, abs(45101u ^ u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a ^ u_input.a, ~10922u), 21u)]), 21u)], -858f);
    let var_1 = 547f;
    var var_2 = vec2<u32>(u_input.b.x, ((reverseBits(4981u) << (_wgslsmith_div_u32(u_input.b.x, u_input.b.x) % 32u)) ^ _wgslsmith_mult_u32(min(u_input.a, 23960u), firstTrailingBit(u_input.b.x))) & ~u_input.b.x);
    global0 = !(_wgslsmith_sub_i32(~_wgslsmith_add_i32(var_0.b, var_0.b), var_0.b) < u_input.c.x);
    var var_3 = Struct_2(func_1(var_1), -countOneBits(~vec4<i32>(u_input.c.x, u_input.c.x, -1i, -9745i)) >> (~vec4<u32>(u_input.b.x, 55770u ^ u_input.a, u_input.b.x, u_input.a) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(175f))) - var_0.d), firstTrailingBit(_wgslsmith_dot_vec3_i32(~abs(vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i)), ~firstLeadingBit(vec3<i32>(u_input.c.x, var_0.b, u_input.c.x)))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 22885u, u_input.a, var_2.x), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(7422u, 0u, u_input.a, var_2.x), vec4<u32>(u_input.b.x, var_2.x, u_input.b.x, 16028u)))), vec4<u32>(var_2.x, u_input.b.x << (~1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(2757u, 43057u), u_input.b.xx) >> (~var_2.x % 32u), u_input.a)));
    var var_4 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(-905f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_0.d)), _wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(max(355f, -1000f))), -210f), vec4<f32>(-1205f, _wgslsmith_f_op_f32(-943f * _wgslsmith_div_f32(-908f, -1000f)), -435f, -408f)), _wgslsmith_f_op_f32(-737f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.c))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.c))))), abs(countOneBits(vec2<i32>(~var_4.x, -var_3.b.x))));
}

