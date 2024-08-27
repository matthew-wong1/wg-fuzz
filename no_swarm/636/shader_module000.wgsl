struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<u32> = vec3<u32>(27340u, 62680u, 13450u);

var<private> global2: array<i32, 5> = array<i32, 5>(13685i, 1i, -1i, i32(-2147483648), i32(-2147483648));

var<private> global3: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = Struct_4(false, select(vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<bool>(false, !(-21005i == global2[_wgslsmith_index_u32(u_input.c, 5u)])), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(-1821f))) > _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(167f, 213f)))), Struct_1(2147483647i, !select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), -_wgslsmith_mod_i32(-u_input.b, _wgslsmith_clamp_i32(u_input.b, -35711i, global2[_wgslsmith_index_u32(27156u, 5u)])), !all(vec2<bool>(true, true))));
    global1 = vec3<u32>(0u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, select(~arg_0, 24083u, true)), global1.xx ^ vec2<u32>(max(arg_0, 0u), arg_0)));
    var var_1 = -791f;
    let var_2 = 8931i;
    global2 = array<i32, 5>();
    return _wgslsmith_sub_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.c, 4294967295u, 71316u)), vec3<u32>(68595u, _wgslsmith_mod_u32(u_input.c ^ (1u ^ arg_0), min(arg_0, 1u) | global1.x), ~u_input.c << (1u % 32u)));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 27990i, 10339i, global2[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<i32>(4849i, u_input.a.x, global2[_wgslsmith_index_u32(global1.x, 5u)], global2[_wgslsmith_index_u32(u_input.c, 5u)])))), !select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, false), all(vec4<bool>(false, true, true, true))), true), ~countOneBits(-13782i), firstLeadingBit(_wgslsmith_sub_i32(-1i, firstTrailingBit(global2[_wgslsmith_index_u32(u_input.c, 5u)]))) < (_wgslsmith_add_i32(-5349i, 1i) ^ ~(-global2[_wgslsmith_index_u32(u_input.c, 5u)])));
    global1 = ~vec3<u32>(90408u, ~(u_input.c | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, 0u), vec4<u32>(4294967295u, global1.x, 1u, 38791u))), global1.x);
    global1 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 22321u, u_input.c) << (func_3(34300u) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 15001u, u_input.c), vec3<u32>(global1.x, u_input.c, 44245u))));
    let var_1 = Struct_4(all(vec2<bool>(var_0.d, false)), vec2<bool>(var_0.d, all(vec3<bool>(var_0.b.x == var_0.b.x, any(vec3<bool>(var_0.d, false, true)), true))), Struct_1(firstTrailingBit(0i), !var_0.b, ~1i, !var_0.b.x));
    var var_2 = 0u;
    return ~(~vec2<u32>(0u ^ ~u_input.c, global1.x));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_3(Struct_2(~select(global1.x, firstTrailingBit(14832u), all(vec3<bool>(false, false, false))), _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.zz), -62558i), func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(106f, 1000f, 342f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_3.x))))));
    let var_1 = Struct_2(arg_2.x, _wgslsmith_add_i32((firstTrailingBit(52558i) ^ u_input.a.x) >> (6500u % 32u), -2147483647i), vec2<u32>(~(~var_0.a.c.x), u_input.c) ^ vec2<u32>(69020u, _wgslsmith_sub_u32(0u, 59058u >> (u_input.c % 32u))), var_0.a.d);
    var_0 = Struct_3(var_0.a);
    let var_2 = vec4<f32>(_wgslsmith_div_f32(var_1.d.x, -887f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_3.x)), -1000f)), -647f, -1278f);
    global1 = arg_2 >> (vec3<u32>(~global1.x, min(arg_2.x, ~4084u), ~abs(_wgslsmith_sub_u32(var_0.a.a, arg_2.x))) % vec3<u32>(32u));
    return abs(u_input.a.zxy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-898f, 774f, 715f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -176f, -1345f), vec3<f32>(296f, -550f, -1295f), vec3<bool>(true, false, true))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(888f, -473f), 1f, -364f))));
    global2 = array<i32, 5>();
    global2 = array<i32, 5>();
    var var_1 = Struct_2(abs(u_input.c), _wgslsmith_dot_vec3_i32(u_input.a.xyy, vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(global1.x, 5u)], u_input.d) >> (4294967295u % 32u), _wgslsmith_dot_vec3_i32(-u_input.a.zxz, func_1(var_0.x, Struct_1(global2[_wgslsmith_index_u32(u_input.c, 5u)], vec2<bool>(false, false), global2[_wgslsmith_index_u32(4294967295u, 5u)], false), vec3<u32>(47422u, global1.x, global1.x), vec2<f32>(530f, var_0.x))))), _wgslsmith_add_vec2_u32(~(~func_3(global1.x).xy), countOneBits(~(global1.zy >> (vec2<u32>(u_input.c, 38289u) % vec2<u32>(32u))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -653f, 231f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -457f, -803f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2072f, -3511f, -792f), vec3<f32>(var_0.x, var_0.x, var_0.x)) - vec3<f32>(-1560f, -648f, var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), -110f), ~u_input.c > ~0u)))));
    let var_2 = var_1.c;
    let var_3 = var_2.x;
    global1 = _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(reverseBits(var_2.x), 1u | var_1.a), 4294967295u, _wgslsmith_sub_u32(reverseBits(4294967295u), 1u))), (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 1u), ~vec3<u32>(u_input.c, 32114u, 11437u)) ^ ~(~vec3<u32>(var_1.c.x, 48762u, var_1.c.x))) << ((_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(40832u, var_1.a, 1u), vec3<u32>(800u, var_2.x, u_input.c))) | ~vec3<u32>(1u, var_1.a, 4294967295u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.d)) ^ (u_input.a.yz ^ -u_input.a.wx), -min(_wgslsmith_div_vec2_i32(vec2<i32>(24992i, -8117i), u_input.a.ww), u_input.a.zx)), u_input.a, 21717i >> (countOneBits(30026u) % 32u), _wgslsmith_sub_i32(0i << (~(~var_1.a) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, -1i), abs(u_input.a.wx) >> (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 38874u), vec2<u32>(20859u, global1.x)) % vec2<u32>(32u)))), ~_wgslsmith_sub_i32(countOneBits(~global2[_wgslsmith_index_u32(global1.x, 5u)]), select(-1i, 39284i, any(vec2<bool>(true, false)))));
}

