struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11>;

var<private> global1: array<f32, 3> = array<f32, 3>(482f, 454f, 850f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(1346f));
    var_0 = 1000f;
    global0 = array<Struct_4, 11>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 3u)], global1[_wgslsmith_index_u32(38662u, 3u)]), vec2<f32>(-860f, 1505f))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-215f, global1[_wgslsmith_index_u32(1u, 3u)])))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(563f, 935f) * vec2<f32>(813f, global1[_wgslsmith_index_u32(1u, 3u)])) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-910f, global1[_wgslsmith_index_u32(33669u, 3u)])))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], global1[_wgslsmith_index_u32(32491u, 3u)]), vec2<f32>(global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(32624u, 3u)]), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-344f, global1[_wgslsmith_index_u32(u_input.e.x, 3u)])), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(32219u, 3u)], global1[_wgslsmith_index_u32(u_input.c.x, 3u)])) + _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(37889u, 3u)], 887f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], global1[_wgslsmith_index_u32(79843u, 3u)]))))))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, _wgslsmith_mod_u32(4294967295u, u_input.c.x)) >> (reverseBits(~vec2<u32>(u_input.c.x, 49709u)) % vec2<u32>(32u)), ~u_input.e.xx), 11u)];
    return 1066f;
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))));
    global1 = array<f32, 3>();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-955f, global1[_wgslsmith_index_u32(u_input.b, 3u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-684f, global1[_wgslsmith_index_u32(0u, 3u)]))), vec2<f32>(-344f, -629f)))))));
    var var_2 = Struct_2(vec2<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(9819u, u_input.c.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, 7392u) << (u_input.c.xx % vec2<u32>(32u)), select(u_input.c.zx, vec2<u32>(27768u, u_input.c.x), true))), ~u_input.c.x), select(vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), true), vec2<bool>(true, false), !all(vec3<bool>(true, true, true))), vec4<bool>(true, ((u_input.c.x & 64260u) << (~8301u % 32u)) != _wgslsmith_dot_vec3_u32(~u_input.e, select(vec3<u32>(0u, 0u, 36818u), u_input.c, true)), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), false)), true), true);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -409f)));
    return vec3<bool>(var_2.d, false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(408f - global1[_wgslsmith_index_u32(var_2.a.x, 3u)]))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = firstLeadingBit(reverseBits(_wgslsmith_div_vec3_i32(min(vec3<i32>(-40379i, u_input.a.x, -2147483647i) & vec3<i32>(u_input.a.x, u_input.d.x, u_input.d.x), max(vec3<i32>(u_input.d.x, 40953i, 2674i), vec3<i32>(u_input.d.x, u_input.a.x, u_input.a.x))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.d.x, 12243i, 0i)))));
    let var_1 = _wgslsmith_mult_vec3_u32(~firstTrailingBit(u_input.e), _wgslsmith_clamp_vec3_u32(u_input.e << (u_input.c % vec3<u32>(32u)), vec3<u32>(u_input.b, 39511u, u_input.b), vec3<u32>(~0u, 35439u, _wgslsmith_sub_u32(u_input.e.x, _wgslsmith_add_u32(u_input.e.x, 4294967295u)))));
    global0 = array<Struct_4, 11>();
    global1 = array<f32, 3>();
    return Struct_1(2205u, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 3u)]));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    let var_0 = func_4(func_2());
    global0 = array<Struct_4, 11>();
    let var_1 = Struct_3(~(~(-2147483647i)), _wgslsmith_div_f32(-905f, global1[_wgslsmith_index_u32(1u, 3u)]) <= -1928f, vec4<i32>(~arg_1.c.x, _wgslsmith_sub_i32(min(arg_1.c.x, -22014i), 1i), min(14989i, arg_1.a), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(arg_1.c, countOneBits(arg_1.c)), _wgslsmith_mult_vec4_i32(min(arg_1.c, arg_1.c), vec4<i32>(arg_1.a, -1i, -18901i, 2147483647i)))));
    let var_2 = Struct_1(~39973u, _wgslsmith_f_op_f32(func_3()));
    let var_3 = all(select(vec4<bool>(true, any(vec4<bool>(arg_0.x, arg_1.b, arg_0.x, arg_1.b)), !arg_0.x | (false & var_1.b), _wgslsmith_f_op_f32(-1000f * global1[_wgslsmith_index_u32(20087u, 3u)]) < _wgslsmith_f_op_f32(ceil(-739f))), !vec4<bool>(false, true, false == var_1.b, true), true));
    return _wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.a, 0u), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(_wgslsmith_sub_vec3_i32(select(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(2147483647i, 0i, u_input.a.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.d.x, 1i, u_input.d.x))), abs(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.d.x)), 1u <= min(0u, u_input.e.x)), _wgslsmith_div_vec3_i32(select(vec3<i32>(-18122i, u_input.a.x, -12266i), vec3<i32>(u_input.a.x, -2147483647i, -2147483647i), true), _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.d.x, u_input.a.x), vec3<i32>(-1i, 0i, 11929i))) ^ -max(vec3<i32>(37481i, u_input.a.x, u_input.d.x), vec3<i32>(6149i, u_input.d.x, u_input.a.x))), ~vec3<i32>(~(-2147483647i), u_input.a.x, 2147483647i));
    var var_1 = vec3<u32>(abs(_wgslsmith_div_u32(max(u_input.b, 1u), func_1(vec4<bool>(true, true, true, false), Struct_3(u_input.d.x, false, vec4<i32>(var_0.x, u_input.d.x, -30290i, var_0.x)), Struct_4(Struct_1(68969u, 503f))))), u_input.b, 0u) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 25924u, u_input.e.x) >> (vec3<u32>(u_input.b, u_input.e.x, u_input.e.x) % vec3<u32>(32u)), ~(~vec3<u32>(u_input.e.x, u_input.c.x, 26071u))) % vec3<u32>(32u));
    global1 = array<f32, 3>();
    var var_2 = Struct_2(u_input.e.xx, !func_2().yx, vec4<bool>(_wgslsmith_dot_vec3_i32(var_0, countOneBits(var_0)) >= var_0.x, true, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e.x, 105151u, 1u), 3u)] * global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, 5760u), 3u)]) <= 1310f), false);
    var var_3 = all(select(select(select(vec2<bool>(var_2.c.x, var_2.b.x), vec2<bool>(var_2.d, false), var_2.c.x), !vec2<bool>(var_2.c.x, var_2.d), var_1.x == ~19821u), vec2<bool>(any(vec3<bool>(var_2.c.x, true, false)), !var_2.b.x), all(!vec2<bool>(var_2.c.x, var_2.b.x))));
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-2133f * global1[_wgslsmith_index_u32(min(~(~var_4), _wgslsmith_mod_u32(var_2.a.x, ~u_input.b)), 3u)]), _wgslsmith_clamp_vec2_u32(~abs(~vec2<u32>(25897u, var_2.a.x)), firstTrailingBit(var_2.a), vec2<u32>(0u, _wgslsmith_clamp_u32(var_1.x, 0u, firstLeadingBit(var_4)))), var_1.x);
}

