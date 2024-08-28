struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<bool>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec2<u32>(74363u, 14533u), true, vec4<bool>(false, false, false, true), vec2<f32>(-1000f, 1003f), Struct_1(false, true, -21395i, vec2<f32>(303f, 1188f), vec2<f32>(-1090f, 1260f))), Struct_2(vec2<u32>(0u, 29213u), false, vec4<bool>(false, false, false, false), vec2<f32>(1015f, 623f), Struct_1(true, false, i32(-2147483648), vec2<f32>(-192f, -114f), vec2<f32>(-1828f, 388f))), Struct_2(vec2<u32>(30990u, 4294967295u), true, vec4<bool>(false, false, false, false), vec2<f32>(-1722f, 244f), Struct_1(true, true, i32(-2147483648), vec2<f32>(1299f, -313f), vec2<f32>(-324f, 1000f))), Struct_2(vec2<u32>(4294967295u, 4294967295u), true, vec4<bool>(false, true, true, false), vec2<f32>(583f, -988f), Struct_1(false, false, 16498i, vec2<f32>(156f, 1006f), vec2<f32>(-1703f, 1333f))), Struct_2(vec2<u32>(4294967295u, 1u), false, vec4<bool>(true, true, true, false), vec2<f32>(-798f, 697f), Struct_1(true, true, 0i, vec2<f32>(-174f, -1593f), vec2<f32>(-462f, -1688f))), Struct_2(vec2<u32>(5356u, 1u), true, vec4<bool>(false, false, true, false), vec2<f32>(-110f, -373f), Struct_1(false, false, 35731i, vec2<f32>(-2237f, 2236f), vec2<f32>(-640f, -649f))));

var<private> global1: Struct_2 = Struct_2(vec2<u32>(17717u, 31742u), false, vec4<bool>(true, true, true, false), vec2<f32>(776f, -526f), Struct_1(false, true, 0i, vec2<f32>(-1034f, 435f), vec2<f32>(952f, 357f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = global1.c.zx;
    let var_1 = vec3<u32>(u_input.c, u_input.c | u_input.c, 53627u);
    let var_2 = !vec2<bool>(!arg_2.x, 1u >= select(global1.a.x, ~global1.a.x, !arg_2.x));
    var var_3 = _wgslsmith_clamp_i32(-arg_3.c, 2147483647i, reverseBits(arg_3.c));
    var var_4 = Struct_4(~vec4<u32>(min(select(4294967295u, 1u, global1.e.a), var_1.x >> (31557u % 32u)), 0u, countOneBits(28611u), global1.a.x), _wgslsmith_add_i32(global1.e.c, _wgslsmith_mod_i32(_wgslsmith_div_i32(-global1.e.c, abs(u_input.e.x)), u_input.e.x)), global0[_wgslsmith_index_u32(~12018u, 6u)], Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-814f, -548f, arg_3.e.x, -258f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.e.x, arg_3.e.x, -1073f, -245f)), vec4<f32>(global1.d.x, arg_3.d.x, arg_3.e.x, global1.e.d.x), any(vec4<bool>(true, var_2.x, arg_1, false)))))));
    return 27i;
}

fn func_2(arg_0: f32) -> vec2<u32> {
    global0 = array<Struct_2, 6>();
    let var_0 = vec4<bool>(any(select(!global1.c, select(global1.c, global1.c, false), !vec4<bool>(global1.c.x, true, global1.b, global1.c.x))) && (~func_3(global1.e.b, false, vec2<bool>(global1.b, true), Struct_1(true, global1.c.x, u_input.a.x, vec2<f32>(global1.e.e.x, 370f), global1.d)) < 2147483647i), true, global1.c.x, !global1.b);
    var var_1 = vec4<u32>(_wgslsmith_div_u32(~u_input.c >> (u_input.b.x % 32u), 1u), 0u, 0u, ~1924u | ~(1u & select(4395u, 43342u, global1.b)));
    let var_2 = -vec3<i32>(global1.e.c, 1i, reverseBits(global1.e.c));
    global0 = array<Struct_2, 6>();
    return ~global1.a;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_dot_vec2_u32(func_2(global1.d.x), vec2<u32>(_wgslsmith_sub_u32(~(~u_input.b.x), ~countOneBits(0u)), reverseBits(1u)));
    var_0 = firstLeadingBit(~0u);
    let var_1 = vec4<u32>(6256u, 1u, 1u, global1.a.x);
    let var_2 = var_1;
    let var_3 = Struct_1(any(!select(select(vec2<bool>(false, global1.b), global1.c.xw, true), !vec2<bool>(global1.e.b, false), !global1.c.xw)), false, global1.e.c, vec2<f32>(1326f, _wgslsmith_div_f32(_wgslsmith_div_f32(-389f, global1.e.d.x), global1.e.d.x)), vec2<f32>(global1.d.x, _wgslsmith_div_f32(global1.e.d.x, 373f)));
    return select(var_3.a, !(1u < abs(var_2.x)), !all(global1.c.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<u32>(firstLeadingBit(0u), countOneBits(u_input.d)), false, vec4<bool>(any(select(select(vec3<bool>(global1.b, false, global1.e.b), global1.c.xyz, true), vec3<bool>(true, true, false), true)), global1.e.a | any(!global1.c), func_1() == (abs(u_input.a.x) <= -9567i), true), _wgslsmith_f_op_vec2_f32(global1.e.d * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1.e.d))), global1.e.d)), Struct_1(false, (func_2(-925f).x & (0u | global1.a.x)) < u_input.c, ~u_input.a.x >> (0u % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(global1.d.x, global1.e.d.x), vec2<f32>(global1.e.e.x, global1.e.d.x)), global1.d)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global1.d)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global1.d), global1.d))));
    let var_1 = Struct_4(abs(vec4<u32>(global1.a.x, _wgslsmith_div_u32(38667u, _wgslsmith_mod_u32(4294967295u, 79702u)), var_0.a.x, u_input.c ^ var_0.a.x)), max(global1.e.c, -95093i), Struct_2(var_0.a, global1.b, select(!global1.c, !(!global1.c), false), vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1717f - var_0.d.x), 1694f, global1.d.x < var_0.e.d.x))), var_0.e), Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, var_0.e.d.x, 1000f, 1382f))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.d.x), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(round(-1100f)), global1.e.e.x)))));
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_1.b, _wgslsmith_sub_i32(-firstLeadingBit(2147483647i), ~var_0.e.c), var_0.e.c));
    global1 = var_1.c;
    let var_3 = var_1;
    global1 = Struct_2(vec2<u32>(abs(_wgslsmith_div_u32(32056u >> (var_3.a.x % 32u), abs(var_0.a.x))), var_0.a.x), true || select(false, func_1() && any(vec2<bool>(true, var_1.c.b)), select(var_3.c.b, var_1.c.c.x, true)), vec4<bool>(!((var_0.e.d.x >= var_0.d.x) | var_0.c.x), true, _wgslsmith_add_u32(global1.a.x, 97963u) >= ~global1.a.x, true), var_0.e.e, var_3.c.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(_wgslsmith_dot_vec2_u32(abs(var_1.a.wy), ~var_1.c.a), ~(~var_1.a.x), global1.e.b), global1.a.x, abs(58161u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(553f * 935f) - var_1.d.a.x), _wgslsmith_f_op_vec2_f32(ceil(var_3.d.a.xz)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.c.e.e.x, _wgslsmith_f_op_f32(trunc(-2317f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.d.x))) + -1220f));
}

