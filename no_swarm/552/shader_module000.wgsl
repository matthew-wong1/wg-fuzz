struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: i32,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, true, false, true, false, false, true, false, true, true, false, false, true, true, true, false, false, true, true, false, false, true, false, false, false, true, true, true, true, false, false);

var<private> global1: Struct_4 = Struct_4(vec2<bool>(true, true), false);

var<private> global2: vec2<f32>;

var<private> global3: i32 = -12884i;

var<private> global4: u32 = 4544u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_mod_u32(arg_0, abs(1u)), _wgslsmith_f_op_vec3_f32(min(arg_1.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(471f, -945f, -1000f) + arg_1.b)))))));
    global4 = ~(~(~(~_wgslsmith_mult_u32(arg_0, 1u))));
    var var_1 = 483f;
    global3 = countOneBits(u_input.c);
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.b.xz), arg_1.b.zx)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.x, -1474f, -1000f, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1465f, 1235f, global2.x, -765f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1061f, -1186f, global2.x, -615f) + vec4<f32>(var_0.b.x, -558f, -109f, var_0.b.x)))) - vec4<f32>(118f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -433f), false || global1.b)), _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(floor(arg_1.b.x)))));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(333f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1016f)), global2.x, _wgslsmith_f_op_f32(abs(global2.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global2.x)), -988f, _wgslsmith_f_op_f32(global2.x - global2.x), 1398f) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-209f, global2.x, global2.x, global2.x) - vec4<f32>(global2.x, global2.x, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(func_3(30853u, Struct_1(1u, vec3<f32>(-1003f, -895f, -826f)), vec3<i32>(u_input.b.x, -24152i, 2147483647i)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -728f, global2.x, global2.x) - vec4<f32>(global2.x, global2.x, 1000f, 759f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1274f, global2.x, -1000f, -347f), vec4<f32>(-1409f, global2.x, 393f, -338f))))));
    var var_1 = Struct_1(26416u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 1000f) + vec3<f32>(var_0.x, 511f, -392f)) - var_0.wzz))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global2.x, 158f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(760f))), global2.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-371f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.b.x)), var_1.b.x))) >= 1f;
    var var_3 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~(var_1.a << (var_1.a % 32u)), var_1.a, ~min(60141u, var_1.a)), ~(~vec3<u32>(1u, 74057u, var_1.a)) | vec3<u32>(4294967295u, firstTrailingBit(var_1.a), var_1.a)), var_0.wyw);
    let var_4 = Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(var_3.a, var_3.a) & vec2<u32>(var_1.a, var_3.a), firstTrailingBit(vec2<u32>(3998u, 46754u)), any(vec2<bool>(var_2, global1.a.x))), abs(min(vec2<u32>(1u, var_1.a), vec2<u32>(var_3.a, 4294967295u)))), ~vec2<u32>(select(21766u, var_3.a, global0[_wgslsmith_index_u32(1u, 32u)]), var_1.a)), Struct_1(62143u, _wgslsmith_f_op_vec3_f32(select(var_3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.yyy))), vec3<bool>(false, !global0[_wgslsmith_index_u32(var_1.a, 32u)], any(global1.a))))));
    return Struct_3(max(1i, -41849i), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = Struct_2(arg_3.a, arg_2.d.b);
    let var_1 = arg_2;
    global4 = arg_3.a.x;
    var var_2 = vec2<u32>(~var_1.d.b.a, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(var_0.a, ~vec2<u32>(var_1.d.b.a, arg_3.b.a), select(global1.a, global1.a, global1.a)), vec2<u32>(var_0.b.a, 85493u)), vec2<u32>(1u, ~_wgslsmith_add_u32(46600u, var_1.d.b.a))));
    let var_3 = ~(~(~(~0u)));
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.b, 639f))))), arg_3.b.b.x), arg_2.b, arg_3.b.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_u32(~var_1.d.b.a, select(42324u, var_1.d.b.a, arg_1.b)), var_0.b, (vec3<i32>(var_1.a, 1i, -47903i) >> (vec3<u32>(20555u, 42750u, var_0.b.a) % vec3<u32>(32u))) ^ ~u_input.a)).x)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> vec4<f32> {
    global3 = -1i;
    global0 = array<bool, 32>();
    return _wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(true | (select(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(arg_1.a.x, 32u)], arg_3) | global1.b), false, select(false, arg_3, true), true), func_2(), Struct_5(arg_2, -1000f, max(firstTrailingBit(-1i), ~(-u_input.c)), Struct_2(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_1.b.a), arg_1.a), arg_1.b), vec3<bool>(global0[_wgslsmith_index_u32(~arg_1.b.a, 32u)] != true, false, false)), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -1331f)), 148f, _wgslsmith_f_op_f32(max(1017f, _wgslsmith_f_op_f32(591f + global2.x))), 2626f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x), vec4<f32>(236f, global2.x, -817f, global2.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, global2.x, global2.x, -1324f)))) - _wgslsmith_f_op_vec4_f32(func_1(all(vec4<bool>(true, false, global1.a.x, global0[_wgslsmith_index_u32(4294967295u, 32u)])), Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(35734u, vec3<f32>(global2.x, global2.x, global2.x))), reverseBits(63010i), global0[_wgslsmith_index_u32(~4294967295u, 32u)]))), vec4<bool>(func_2().b, true, false, true))));
    global2 = vec2<f32>(-372f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - var_0.x)), _wgslsmith_f_op_f32(558f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), !(_wgslsmith_f_op_f32(-global2.x) == -778f))));
    var_0 = _wgslsmith_f_op_vec4_f32(func_1(all(vec4<bool>(false, any(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 32u)], global1.a.x, false, true), vec4<bool>(false, false, global1.b, global1.a.x), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 32u)], false, true))), all(vec3<bool>(false, global1.b, false)), !any(vec2<bool>(global0[_wgslsmith_index_u32(56742u, 32u)], true)))), Struct_2(~(~vec2<u32>(1u, 1u)), Struct_1(0u & firstTrailingBit(1u), _wgslsmith_f_op_vec3_f32(round(var_0.zzz)))), max(u_input.c, ~u_input.c), true));
    let var_1 = _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1986f))));
    let var_2 = Struct_5(u_input.c, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_dot_vec3_i32(max(u_input.a, ~vec3<i32>(1i, 1i, 13567i)), max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 0i, 0i), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(u_input.c, u_input.a.x, u_input.b.x))), u_input.a)), Struct_2(vec2<u32>(~(~0u), 28870u), Struct_1(firstLeadingBit(0u >> (1u % 32u)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(global2.x + 1000f), global2.x))), !(!select(!vec3<bool>(true, false, global1.b), vec3<bool>(false, global0[_wgslsmith_index_u32(9359u, 32u)], global1.a.x), select(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(24726u, 32u)]), vec3<bool>(global1.b, global1.b, false), vec3<bool>(global1.a.x, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(var_2.a, -1i), _wgslsmith_mod_i32(-24427i, u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), -(~(-1i)), -2147483647i, -1i), ~vec4<i32>(var_2.c, var_2.c, 17314i, -1i) ^ firstLeadingBit(select(vec4<i32>(var_2.c, 2147483647i, 27709i, -15503i), vec4<i32>(var_2.c, u_input.b.x, var_2.c, -9840i), vec4<bool>(false, global1.b, var_2.e.x, false)))), vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, var_2.a), u_input.a)), select(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 32047u, var_2.d.a.x), var_2.d.b.a & var_2.d.a.x, 22468u) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.d.a.x, var_2.d.b.a, 60180u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.d.a.x, var_2.d.a.x, var_2.d.a.x), vec3<u32>(var_2.d.a.x, 4294967295u, 1u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.d.b.a, 1u, 372u), vec3<u32>(61303u, var_2.d.b.a, var_2.d.a.x))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.d.a.x, 4294967295u, 1u), vec3<u32>(3168u, 6781u, 33058u))), !var_2.e), vec3<i32>(1i ^ (i32(-1i) * -var_2.c), _wgslsmith_mod_i32(1i, -min(u_input.b.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, abs(var_2.a), -24420i ^ u_input.b.x), u_input.a)), _wgslsmith_f_op_vec2_f32(var_0.ww - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1165f, _wgslsmith_f_op_f32(global2.x - var_0.x))))));
}

