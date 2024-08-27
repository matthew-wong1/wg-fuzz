struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32) -> vec4<i32> {
    global0 = array<u32, 24>();
    let var_0 = countOneBits(min(22856i, -reverseBits(arg_0.x) << (select(u_input.d ^ global0[_wgslsmith_index_u32(u_input.c, 24u)], ~global0[_wgslsmith_index_u32(4294967295u, 24u)], !arg_1.a) % 32u)));
    let var_1 = Struct_2(any(!(!select(vec4<bool>(false, arg_1.c.b, true, arg_1.e.b), vec4<bool>(true, arg_1.e.b, false, arg_1.a), vec4<bool>(arg_1.a, arg_1.c.b, arg_1.c.b, arg_1.c.b)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1.b)))), -197f, arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_div_f32(arg_2, 751f))))), Struct_1(arg_1.c.a, global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(38903u, 4294967295u)), 24u)] > _wgslsmith_mult_u32(reverseBits(u_input.d), select(1u, 4294967295u, arg_1.c.a.x)), ~vec4<i32>(arg_0.x, var_0, 47690i, u_input.a), ~countOneBits(-arg_1.e.d), _wgslsmith_f_op_vec2_f32(trunc(arg_1.e.e))), abs(u_input.b), Struct_1(!arg_1.c.a, true, arg_0, -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, -2147483647i, var_0), vec3<i32>(-25434i, arg_1.d.x, var_0), -arg_1.e.d), arg_1.c.e));
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    return abs(~(~var_1.e.c));
}

fn func_2() -> vec4<u32> {
    var var_0 = select(vec3<bool>(!all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), true, true), !select(vec3<bool>(any(vec3<bool>(true, true, false)), u_input.d != 1u, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), false);
    var var_1 = ~(firstLeadingBit(1u) | _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)])), vec2<u32>(u_input.c, 1u) | vec2<u32>(u_input.c, u_input.d)), 71722u));
    var var_2 = -_wgslsmith_div_vec4_i32((vec4<i32>(u_input.a, u_input.b.x, u_input.a, 0i) ^ func_3(vec4<i32>(-19978i, u_input.b.x, -2832i, u_input.a), Struct_2(var_0.x, 1000f, Struct_1(var_0.zx, false, vec4<i32>(u_input.b.x, 0i, u_input.a, 0i), vec3<i32>(31093i, u_input.b.x, u_input.a), vec2<f32>(-901f, 1706f)), u_input.b, Struct_1(var_0.zx, false, vec4<i32>(u_input.a, 69321i, u_input.b.x, 6453i), vec3<i32>(2147483647i, -1i, -3709i), vec2<f32>(1784f, 342f))), -1185f)) << (_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 4294967295u, u_input.c)), abs(vec4<u32>(u_input.c, 4294967295u, 1691u, global0[_wgslsmith_index_u32(1u, 24u)]))) % vec4<u32>(32u)), -vec4<i32>(abs(5380i), 32108i, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, -14328i))));
    var var_3 = select(!(!select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, true, var_0.x), var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, true, false)), vec4<bool>(var_0.x, true, var_0.x, true))), vec4<bool>(var_0.x & any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), true)), var_0.x, true, -1000f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(741f)))), var_0.x);
    global0 = array<u32, 24>();
    return _wgslsmith_mod_vec4_u32(~firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, global0[_wgslsmith_index_u32(14421u, 24u)], u_input.c, global0[_wgslsmith_index_u32(u_input.d, 24u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 0u, 47195u, global0[_wgslsmith_index_u32(54559u, 24u)]))), vec4<u32>(~55347u >> (max(global0[_wgslsmith_index_u32(39704u, 24u)], 1u) % 32u), countOneBits(4294967295u), u_input.d, ~(33716u >> (global0[_wgslsmith_index_u32(u_input.c, 24u)] % 32u))) << (~(~reverseBits(vec4<u32>(u_input.d, u_input.c, 9865u, 0u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32) -> Struct_2 {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    let var_0 = Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -422f)))), Struct_1(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true)), !all(vec2<bool>(true, true)), countOneBits(func_3(vec4<i32>(u_input.a, -15130i, u_input.a, u_input.b.x), Struct_2(true, 356f, Struct_1(vec2<bool>(false, false), false, vec4<i32>(0i, u_input.a, -30447i, u_input.a), vec3<i32>(u_input.b.x, -36490i, u_input.b.x), vec2<f32>(-408f, 708f)), vec2<i32>(u_input.b.x, u_input.b.x), Struct_1(vec2<bool>(true, false), true, vec4<i32>(-51669i, u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.a, 1i, u_input.a), vec2<f32>(-1510f, -910f))), 202f) & (vec4<i32>(u_input.b.x, -2147483647i, 35197i, -22389i) << (vec4<u32>(arg_0.x, global0[_wgslsmith_index_u32(u_input.d, 24u)], 35398u, arg_0.x) % vec4<u32>(32u)))), vec3<i32>(u_input.a, -7350i & _wgslsmith_mult_i32(u_input.a, -1i), ~select(1i, u_input.a, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -288f), 557f))), vec2<i32>(u_input.b.x, u_input.a), Struct_1(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(any(vec3<bool>(false, false, false)), all(vec2<bool>(true, false)))), !any(vec4<bool>(false, true, true, false)), _wgslsmith_add_vec4_i32(select(select(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x), vec4<i32>(-1i, u_input.a, u_input.b.x, 1i), vec4<bool>(false, false, true, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.b.x, -13669i), vec4<i32>(41345i, u_input.a, u_input.a, -33241i), vec4<i32>(u_input.a, 2147483647i, u_input.b.x, 1i)), true), vec4<i32>(~u_input.a, _wgslsmith_sub_i32(u_input.b.x, 0i), _wgslsmith_mult_i32(-1i, 12917i), u_input.b.x)), -(vec3<i32>(-1i, u_input.a, u_input.a) ^ (vec3<i32>(u_input.a, 37957i, u_input.a) >> (vec3<u32>(arg_0.x, 1u, arg_1) % vec3<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -724f) + -1072f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1005f, -344f) - _wgslsmith_f_op_f32(1100f - -867f)))));
    global0 = array<u32, 24>();
    return var_0;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> vec3<f32> {
    global0 = array<u32, 24>();
    let var_0 = 2439f;
    let var_1 = arg_0;
    var var_2 = !arg_0.x;
    let var_3 = func_4(max(func_2(), vec4<u32>(u_input.c, func_2().x, _wgslsmith_sub_u32(u_input.c, 16318u), countOneBits(global0[_wgslsmith_index_u32(4294967295u, 24u)]))) ^ select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)], 0u), vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.c, 24u)], 59075u)), global0[_wgslsmith_index_u32(u_input.d, 24u)] >> (9359u % 32u), global0[_wgslsmith_index_u32(60134u, 24u)], _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 26832u, 1u), vec3<u32>(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 10700u))), ~firstTrailingBit(vec4<u32>(u_input.c, u_input.d, u_input.c, 1u)), select(select(vec4<bool>(true, false, true, arg_0.x), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(true, false, var_1.x, false)), !vec4<bool>(arg_0.x, false, true, var_1.x), select(false, true, arg_0.x))), ~(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(973u, 24u)], 24u)], 5682u), vec2<u32>(8028u, u_input.c)), 24u)]) | 44578u);
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-524f, var_3.e.e.x, var_0)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_4(vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(u_input.c, 24u)], u_input.d, 8101u), 4294967295u).c.e.x, -1202f, 1992f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1203f, -125f, 627f)) * vec3<f32>(789f, 591f, -1502f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1551f, 170f, -1436f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(975f, 862f, 360f), vec3<f32>(-901f, -381f, 1000f), true)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-959f - -1413f) + _wgslsmith_f_op_f32(362f - -386f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1060f, 1940f)) + _wgslsmith_f_op_f32(f32(-1f) * -1045f)), -320f)) + vec3<f32>(180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1763f)) - _wgslsmith_div_f32(470f, 288f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-525f - 524f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1005f, -399f, var_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(false, true), 0i))))));
    var var_1 = -vec2<i32>(u_input.a, ~(-16822i));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(578f * -515f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(step(-2189f, var_0.x)), true)))), _wgslsmith_f_op_f32(-269f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(942f, -1709f)), -2127f)), 4294967295u != ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1361f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true))))))), var_0.x);
    var var_2 = firstTrailingBit(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(1750f, ~reverseBits(reverseBits(vec4<u32>(0u, 45643u, 4294967295u, u_input.c))) >> (max(~(vec4<u32>(39420u, 4294967295u, 4294967295u, global0[_wgslsmith_index_u32(u_input.d, 24u)]) ^ vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 24u)], 4294967295u, 1u)), select(abs(vec4<u32>(u_input.c, 60951u, u_input.d, 7849u)), ~vec4<u32>(u_input.d, u_input.c, 1u, global0[_wgslsmith_index_u32(u_input.c, 24u)]), 4294967295u <= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 24u)], 24u)])) % vec4<u32>(32u)));
}

