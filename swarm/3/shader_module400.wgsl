struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(-1443i, 1i), vec2<i32>(47219i, 1i), vec2<i32>(0i, 1i), vec2<i32>(-57111i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-22358i, i32(-2147483648)));

var<private> global1: array<bool, 5>;

var<private> global2: array<vec3<bool>, 16>;

var<private> global3: array<Struct_4, 11>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> vec2<u32> {
    let var_0 = false;
    let var_1 = vec3<bool>(any(!vec2<bool>(true, !var_0)), true, !all(vec4<bool>(-2147483647i > u_input.c, true, true, true)));
    global3 = array<Struct_4, 11>();
    let var_2 = _wgslsmith_div_vec2_i32(-vec2<i32>(_wgslsmith_div_i32(-1i, 46969i), 1i), u_input.d.ww) >> (u_input.a.yz % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-338f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(934f, 1000f)) * 1f)), -473f) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1432f, 2228f) + -1174f), 227f));
    return vec2<u32>(~(~_wgslsmith_mult_u32(~u_input.a.x, max(u_input.b, 1u))), abs(81498u));
}

fn func_3() -> vec2<f32> {
    var var_0 = ~_wgslsmith_clamp_vec4_i32(~vec4<i32>(27081i, u_input.d.x, u_input.d.x, u_input.c), _wgslsmith_sub_vec4_i32(-u_input.d, vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) & u_input.d), vec4<i32>(u_input.c, u_input.c, select(u_input.c, 6153i, false), -2147483647i << (u_input.b % 32u))) & vec4<i32>(~(-2319i), _wgslsmith_clamp_i32(41666i, i32(-1i) * -2147483647i, -28489i) & ~(u_input.c >> (16360u % 32u)), _wgslsmith_mult_i32(min(~(-13751i), -14800i), (u_input.c << (u_input.a.x % 32u)) ^ _wgslsmith_add_i32(u_input.d.x, -1i)), _wgslsmith_dot_vec4_i32(u_input.d, reverseBits(vec4<i32>(1i, 2147483647i, u_input.c, u_input.c))) >> (_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(u_input.b, u_input.a.x, 34444u, 4294967295u)) % 32u));
    var_0 = _wgslsmith_div_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(~0i, i32(-1i) * -2147483647i), var_0.x, 1i, (20560i | var_0.x) >> (_wgslsmith_mod_u32(4294967295u, u_input.a.x) % 32u)), reverseBits(vec4<i32>(25247i | u_input.c, i32(-1i) * -11894i, ~(-21588i), i32(-1i) * -57491i)));
    var var_1 = abs(~(u_input.a.wz ^ (select(vec2<u32>(1886u, 1506u), vec2<u32>(0u, 4294967295u), false) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(25843u, u_input.b), u_input.a.wx, u_input.a.yz) % vec2<u32>(32u)))));
    let var_2 = ~(~vec3<i32>(abs(~var_0.x), min(_wgslsmith_div_i32(5928i, var_0.x), 1i), 0i));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-189f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1340f)) + _wgslsmith_f_op_f32(f32(-1f) * -1329f))), select(true, _wgslsmith_dot_vec3_u32(u_input.a.ywx, u_input.a.yzy) <= _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.b, var_1.x, 0u)), true))), Struct_1(_wgslsmith_sub_i32(countOneBits(var_2.x), var_2.x), ~vec4<u32>(58694u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, u_input.b), vec2<u32>(u_input.a.x, var_1.x)), _wgslsmith_mult_u32(0u, 1u), abs(u_input.b)), var_2.yz, select(vec2<bool>(var_0.x > var_0.x, global1[_wgslsmith_index_u32(1u, 5u)]), select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 5u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(4397u, 5u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(121020u, 5u)]), vec2<bool>(global1[_wgslsmith_index_u32(36742u, 5u)], true)), select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(36374u, 5u)]), vec2<bool>(false, true))), !global1[_wgslsmith_index_u32(16176u, 5u)] && all(global2[_wgslsmith_index_u32(var_1.x, 16u)]))), select(!vec2<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.x, 4294967295u, 0u), 5u)]), vec2<bool>(true, select(any(vec2<bool>(global1[_wgslsmith_index_u32(19986u, 5u)], false)), !global1[_wgslsmith_index_u32(var_1.x, 5u)], true)), !vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 5u)])), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-253f, 341f, -906f), vec3<f32>(-440f, -892f, 381f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2297f, 1543f, -584f) * vec3<f32>(457f, -249f, -1057f)))))), _wgslsmith_div_i32(var_2.x, ~min(firstLeadingBit(-2147483647i), _wgslsmith_add_i32(u_input.c, var_2.x))));
    return vec2<f32>(906f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * _wgslsmith_div_f32(var_3.d.x, var_3.a))))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = vec2<bool>(!(!global1[_wgslsmith_index_u32(select(1u, 1u, global1[_wgslsmith_index_u32(~u_input.a.x, 5u)]), 5u)]), global1[_wgslsmith_index_u32(4294967295u, 5u)]);
    global0 = array<vec2<i32>, 6>();
    global0 = array<vec2<i32>, 6>();
    global0 = array<vec2<i32>, 6>();
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(237f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(func_3()))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x), _wgslsmith_div_f32(1000f, -1136f))));
    return Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-437f * -570f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2194f)))))), Struct_1(max(~2147483647i, max(_wgslsmith_sub_i32(u_input.c, u_input.c), select(u_input.d.x, u_input.c, var_0.x))), vec4<u32>(39548u >> (_wgslsmith_add_u32(0u, arg_0.x) % 32u), ~46505u, ~select(1u, arg_0.x, global1[_wgslsmith_index_u32(0u, 5u)]), 63491u), _wgslsmith_sub_vec2_i32(min(-u_input.d.zz, ~vec2<i32>(0i, u_input.d.x)), ~(global0[_wgslsmith_index_u32(4294967295u, 6u)] & u_input.d.yw)), !vec2<bool>(select(false, var_0.x, var_0.x), global1[_wgslsmith_index_u32(u_input.a.x, 5u)])), vec2<bool>(false, !any(!vec4<bool>(var_0.x, var_0.x, var_0.x, false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, -193f, -634f) * vec3<f32>(1000f, -305f, 291f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -2059f, var_1.a.x)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.a.x)), var_1.a.x, -1359f)))), reverseBits(_wgslsmith_div_i32(1i, abs(u_input.c) & u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 11>();
    global1 = array<bool, 5>();
    var var_0 = func_2(min(select(~(~u_input.a.yy), ~u_input.a.yz, !select(vec2<bool>(true, global1[_wgslsmith_index_u32(18126u, 5u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 5u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)]))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.xx, vec2<u32>(0u, 5164u), vec2<u32>(u_input.b, 4294967295u)), func_1())));
    let var_1 = ~0i;
    global2 = array<vec3<bool>, 16>();
    var var_2 = var_0.d;
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-137f);
}

