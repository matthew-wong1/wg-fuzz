struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: u32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<i32>;

var<private> global2: array<vec4<f32>, 25>;

var<private> global3: Struct_2;

var<private> global4: vec3<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1000f), global3.b, any(vec2<bool>(!global3.c, global3.c)) == global3.c, reverseBits(global3.d), vec3<i32>(u_input.a, global3.e.x, _wgslsmith_div_i32(global3.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(13140i, -34648i, 0i), vec3<i32>(53970i, global3.e.x, -2147483647i))) | -1i));
    var var_1 = !select(!select(select(vec2<bool>(global3.c, var_0.c), vec2<bool>(true, false), vec2<bool>(false, var_0.c)), vec2<bool>(true, true), !vec2<bool>(var_0.c, false)), !select(vec2<bool>(false, var_0.c), !vec2<bool>(var_0.c, false), var_0.c & false), !vec2<bool>(var_0.c, global4.x < 1u));
    let var_2 = Struct_3(vec2<f32>(-762f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(901f - var_0.a)) * global3.a)));
    let var_3 = global4.x;
    var var_4 = Struct_1(arg_0.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -723f), var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2059f, var_2.a.x)), global3.b.x));
    return var_0.b.x;
}

fn func_2(arg_0: f32) -> Struct_4 {
    global0 = u_input.b.wzz;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, global3.a, -166f))) + vec3<f32>(-1127f, _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -830f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(global3.d, global4.x, 30378u, global0.x))) - -305f), -222f, arg_0)));
    let var_1 = select(u_input.c, select(_wgslsmith_div_i32(1i, reverseBits(69353i) & _wgslsmith_sub_i32(global1.x, u_input.a)), 8443i >> (_wgslsmith_mult_u32(~56496u, min(4294967295u, global0.x)) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(max(-1000f, -1253f))) > -248f), !any(!(!vec3<bool>(global3.c, global3.c, false))));
    global3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f)), _wgslsmith_f_op_vec2_f32(ceil(var_0.xx)), global3.c, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(~308u, _wgslsmith_dot_vec2_u32(global4.zx, global0.zx))), global4.yz), vec3<i32>(_wgslsmith_mult_i32(global1.x, var_1 & u_input.a), -_wgslsmith_dot_vec2_i32(~vec2<i32>(global3.e.x, -1i), select(vec2<i32>(var_1, u_input.a), vec2<i32>(-22198i, var_1), false)), -33763i));
    let var_2 = select(vec2<bool>(true, true), vec2<bool>(global3.c != global3.c, global3.c), any(vec3<bool>(!(var_0.x > 1000f), false, any(select(vec4<bool>(global3.c, false, false, false), vec4<bool>(global3.c, false, false, false), global3.c)))));
    return Struct_4(Struct_1(global3.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 25u)]))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2015f, 1070f, arg_0, var_0.x), global2[_wgslsmith_index_u32(1u, 25u)], vec4<bool>(global3.c, true, false, false))), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(0u, 25u)]))))), u_input.b.yy);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_5(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.b.x + global3.b.x), arg_0.x, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u << (global4.x % 32u), 34782u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(15636u, 33780u, 4294967295u, 77474u))), 25u)]))), select(vec3<bool>(false, all(!vec3<bool>(global3.c, global3.c, true)), any(vec3<bool>(true, global3.c, true))), vec3<bool>(global3.c, select(true, true, global3.c), select(global3.c, true, any(vec4<bool>(false, global3.c, global3.c, global3.c)))), select(select(vec3<bool>(global3.c, false, true), vec3<bool>(global3.c, true, global3.c), !vec3<bool>(true, global3.c, true)), select(!vec3<bool>(global3.c, false, false), !vec3<bool>(global3.c, true, false), !vec3<bool>(false, global3.c, global3.c)), _wgslsmith_dot_vec3_i32(global1.wyy, vec3<i32>(global1.x, 12105i, 22994i)) > -2147483647i)), Struct_3(vec2<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 785f)))));
    var var_1 = abs(firstTrailingBit(vec4<i32>(4081i, _wgslsmith_div_i32(arg_1, abs(global1.x)), ~u_input.a & 34204i, -24905i)));
    global0 = _wgslsmith_clamp_vec3_u32(~u_input.b.ywz, ~(firstLeadingBit(abs(u_input.b.xzz)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.b.x, 14501u, 1u), reverseBits(u_input.b.zyz)) % vec3<u32>(32u))), ~u_input.b.zzw);
    global2 = array<vec4<f32>, 25>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1654f, -1297f, var_0.a.a.b.x, arg_0.x) - global2[_wgslsmith_index_u32(5810u, 25u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, arg_0.x, arg_0.x, 399f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -2756f, -879f, 1609f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - -309f), _wgslsmith_f_op_f32(-var_0.a.a.b.x), _wgslsmith_f_op_f32(-845f - 488f), _wgslsmith_f_op_f32(step(839f, arg_2))))));
    return Struct_2(-943f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.xw + var_0.a.a.b.yz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1088f, arg_2)) * _wgslsmith_f_op_vec2_f32(var_2.wx * vec2<f32>(arg_0.x, -128f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1199f, arg_2), arg_0))))), any(var_0.c))), !(!(!global3.c & global3.c)), global4.x, global3.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    global2 = array<vec4<f32>, 25>();
    global3 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(734f, global3.a, global3.c))))), -436f), global3.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f) - _wgslsmith_f_op_f32(global3.b.x - global3.b.x)));
    let var_1 = global3.c;
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(365f + _wgslsmith_f_op_f32(f32(-1f) * -1862f)))).a;
    let var_3 = vec2<i32>(func_1(_wgslsmith_f_op_vec2_f32(-var_2.b.wx), abs(select(global1.x, u_input.c, global3.c)), -929f).e.x, u_input.a) >> (((~_wgslsmith_mod_vec2_u32(var_0.xy, var_0.zw) & ~vec2<u32>(99600u, 1u)) & global0.yy) % vec2<u32>(32u));
    let var_4 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b)), var_3.x & 1i, var_2.b.x).e;
    var var_5 = var_2.b;
    var var_6 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(602f)))))), var_5.yy, true, global0.x, func_1(vec2<f32>(_wgslsmith_f_op_f32(-336f * 113f), -162f), _wgslsmith_mod_i32(-2147483647i, 27801i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-754f + var_5.x)))).e);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_dot_vec2_i32(var_4.zx, var_4.xx << (firstTrailingBit(global0.xy) % vec2<u32>(32u)))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-2147483647i, 0i, var_3.x)), vec3<i32>(-32343i, -856i, global1.x ^ global1.x)), reverseBits(vec3<i32>(u_input.a, 2147483647i, _wgslsmith_mod_i32(-47688i, -2147483647i)))), 1583f, _wgslsmith_add_u32(~(~global0.x) | func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.b.x, global3.a)), 43625i, var_2.b.x).d, _wgslsmith_mult_u32(min(global0.x, 24634u) ^ ~37498u, _wgslsmith_sub_u32(min(var_6.d, 61113u), ~var_0.x))), 211f);
}

