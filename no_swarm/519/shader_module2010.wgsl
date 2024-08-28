struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7>;

var<private> global1: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false));

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(-2177f), true, Struct_1(500f), vec2<bool>(true, true), 0u), Struct_2(Struct_1(2188f), true, Struct_1(606f), vec2<bool>(false, false), 0u), Struct_2(Struct_1(-430f), false, Struct_1(-150f), vec2<bool>(false, true), 3546u), Struct_2(Struct_1(-811f), true, Struct_1(-318f), vec2<bool>(true, true), 7161u), Struct_2(Struct_1(-325f), false, Struct_1(1179f), vec2<bool>(false, true), 1u), Struct_2(Struct_1(941f), true, Struct_1(1000f), vec2<bool>(true, false), 36832u), Struct_2(Struct_1(-649f), true, Struct_1(810f), vec2<bool>(true, false), 40078u), Struct_2(Struct_1(-857f), false, Struct_1(-183f), vec2<bool>(true, true), 46403u), Struct_2(Struct_1(284f), true, Struct_1(-140f), vec2<bool>(false, false), 4294967295u), Struct_2(Struct_1(938f), true, Struct_1(-1476f), vec2<bool>(false, true), 90714u), Struct_2(Struct_1(-666f), true, Struct_1(1000f), vec2<bool>(false, false), 1u), Struct_2(Struct_1(1812f), false, Struct_1(-1277f), vec2<bool>(true, false), 0u));

var<private> global3: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(4294967295u, 20877u, 0u), vec3<u32>(35865u, 0u, 1u), vec3<u32>(50150u, 59738u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(11552u, 8769u, 0u), vec3<u32>(4294967295u, 5394u, 4294967295u), vec3<u32>(4294967295u, 0u, 18519u), vec3<u32>(36250u, 0u, 20705u), vec3<u32>(4294967295u, 107065u, 26391u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 33998u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 64729u, 1u), vec3<u32>(5473u, 1u, 25385u), vec3<u32>(1u, 4294967295u, 23996u), vec3<u32>(82735u, 50099u, 42794u), vec3<u32>(15799u, 26290u, 5215u), vec3<u32>(1u, 72200u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(20057u, 1u, 17994u), vec3<u32>(1u, 1u, 13087u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(95717u, 46956u, 41535u), vec3<u32>(4294967295u, 0u, 0u));

var<private> global4: vec4<f32> = vec4<f32>(282f, 536f, 1925f, -1824f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec3<f32> {
    global2 = array<Struct_2, 12>();
    global3 = array<vec3<u32>, 24>();
    let var_0 = Struct_1(1000f);
    global1 = array<vec4<bool>, 17>();
    global3 = array<vec3<u32>, 24>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global4.yyw + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 1187f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, 1234f, 850f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-602f - -171f)), _wgslsmith_f_op_f32(sign(-2718f)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: f32) -> Struct_3 {
    var var_0 = any(select(select(select(select(global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(62822u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)]), vec4<bool>(true, false, false, true), !global1[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<bool>(true, true, true, true), all(select(global1[_wgslsmith_index_u32(u_input.a, 17u)], vec4<bool>(false, false, true, true), false))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), global1[_wgslsmith_index_u32(28260u, 17u)])), all(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1739f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))));
    global2 = array<Struct_2, 12>();
    global2 = array<Struct_2, 12>();
    let var_2 = 1857f;
    return Struct_3(1000f, abs(vec2<i32>(~_wgslsmith_clamp_i32(24086i, 0i, -27107i), ~(-2147483647i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) + var_1)));
}

fn func_1(arg_0: bool) -> vec3<f32> {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -312f, global4.x, global4.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.x))));
    global4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 708f, 190f, 1000f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-647f, var_0.a, global4.x, var_0.a), vec4<f32>(var_0.c.a, global4.x, 1163f, -182f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1842f, 476f, global4.x, -415f), vec4<f32>(-478f, var_0.c.a, var_0.c.a, global4.x), true))))), select(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(u_input.a, 17u)], true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(min(-861f, _wgslsmith_f_op_f32(-global4.x))), global4.x)), arg_0));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.a, -3046f))), global4.x, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-(2147483647i >> (u_input.a % 32u)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-42634i, 7083i, -1i, 2147483647i), vec4<i32>(-31716i, 0i, -28076i, -39038i))), max(1i, -18490i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-4799i, 30321i, 2147483647i), vec3<i32>(36217i, -8294i, 21798i)), -45368i >> (0u % 32u))), vec4<i32>(-34527i, 1i, -1i, -(i32(-1i) * -27950i))), max(0i, _wgslsmith_mult_i32(1i, -(11312i << (u_input.a % 32u)))));
    global2 = array<Struct_2, 12>();
    var_0 = max(-(abs(abs(-14783i)) >> ((~u_input.a & _wgslsmith_mult_u32(u_input.a, 1u)) % 32u)), 1i);
    var_0 = ~_wgslsmith_mult_i32(select(0i, 2147483647i, true), countOneBits(-2147483647i));
    var var_1 = global4.wx;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -987f);
    var var_3 = _wgslsmith_mult_vec2_u32(~(_wgslsmith_sub_vec2_u32(vec2<u32>(31636u, u_input.a), vec2<u32>(u_input.a, u_input.a)) ^ (vec2<u32>(35192u, u_input.a) ^ vec2<u32>(112704u, u_input.a))) >> (((select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(89614u, u_input.a), vec2<bool>(false, true)) >> (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 61235u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(~(~1u), 52497u));
    global1 = array<vec4<bool>, 17>();
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-26031i, ~firstLeadingBit(vec3<i32>(i32(-1i) * -2147483647i, 0i, 16087i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(true))), 1i);
}

