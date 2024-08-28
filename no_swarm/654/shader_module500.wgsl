struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 20>;

var<private> global2: i32 = 2147483647i;

var<private> global3: vec4<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> u32 {
    global1 = array<Struct_1, 20>();
    return 17054u;
}

fn func_2() -> vec4<i32> {
    global1 = array<Struct_1, 20>();
    global2 = _wgslsmith_add_i32(global3.x, 45631i);
    var var_0 = vec4<u32>(func_3(), u_input.c.x, ~_wgslsmith_add_u32(_wgslsmith_sub_u32(14669u, 1u), 1u), firstTrailingBit(abs(1026u)));
    global2 = global3.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(949f, 274f, 370f, 1120f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(609f, -2034f, 971f, -1502f) + vec4<f32>(672f, 2052f, -255f, 244f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(369f, 933f, -104f, 139f), vec4<f32>(-290f, 570f, -2128f, 1027f), vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, true)))) * vec4<f32>(939f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1567f), -1380f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2457f, -185f, 263f, 1112f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(251f, 389f, 1068f, -556f) - vec4<f32>(-1575f, 358f, 570f, -344f))) * vec4<f32>(_wgslsmith_f_op_f32(floor(719f)), _wgslsmith_f_op_f32(ceil(-1708f)), _wgslsmith_f_op_f32(f32(-1f) * -160f), -178f))));
    return vec4<i32>(_wgslsmith_sub_i32(-(i32(-1i) * -2147483647i), global3.x), -_wgslsmith_mult_i32(~u_input.b.x, reverseBits(u_input.a.x)), _wgslsmith_dot_vec4_i32(~(u_input.a & vec4<i32>(u_input.d.x, -2147483647i, global3.x, global3.x)), u_input.a) | _wgslsmith_add_i32(_wgslsmith_clamp_i32(29242i, ~(-47450i), -1i), -48316i), global3.x);
}

fn func_1() -> f32 {
    global3 = select(select(u_input.a, ~vec4<i32>(firstTrailingBit(u_input.b.x), -23397i | u_input.b.x, u_input.b.x, 0i), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true))), _wgslsmith_clamp_vec4_i32(max(u_input.a, _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, global3.x, global3.x, 11572i)), -u_input.a)), ~u_input.b, func_2()), !vec4<bool>(false, !all(vec4<bool>(false, true, true, true)), true, select(true, true, true)));
    let var_0 = abs(vec2<i32>(_wgslsmith_clamp_i32(~u_input.d.x, global3.x, abs(_wgslsmith_mult_i32(4458i, global3.x))), 0i));
    global0 = 18454u;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-617f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1335f), 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1310f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1795f)))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = vec3<bool>(true, (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(28420u, u_input.c.x, 4294967295u, u_input.c.x)) & (11186u | u_input.c.x)) < ~_wgslsmith_clamp_u32(26862u | u_input.c.x, u_input.c.x, u_input.c.x), true);
    global2 = -(_wgslsmith_mult_i32(-27845i, ~min(u_input.b.x, global3.x)) ^ _wgslsmith_mod_i32(reverseBits(u_input.d.x ^ 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-15726i, -2147483647i, -46446i), vec3<i32>(222i, -2147483647i, 1i)) & (-1694i >> (u_input.c.x % 32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2));
    var var_2 = !vec4<bool>(true, true, ~abs(u_input.c.x) >= _wgslsmith_add_u32(u_input.c.x >> (18585u % 32u), u_input.c.x), true);
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1), -871f, var_1.a.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, arg_0, -803f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, arg_1, arg_2.x))), var_2.yyw)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, ~(1u & u_input.c.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.c.x, 1u, u_input.c.x), ~u_input.c), u_input.c.x >> (firstTrailingBit(1u) % 32u)), u_input.c), 20u)];
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.d, -(vec3<i32>(u_input.b.x, global3.x, global3.x) ^ global3.wyy)), reverseBits(-1i)), 24057i, -1i, u_input.a.x);
    var_1 = u_input.a;
    global3 = _wgslsmith_add_vec4_i32(~vec4<i32>(var_1.x, -1i, _wgslsmith_mod_i32(-u_input.b.x, 0i), 1i), vec4<i32>(global3.x, -(~1i), 2147483647i, -_wgslsmith_div_i32(_wgslsmith_add_i32(-2470i, u_input.b.x), ~1i)));
    let var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(func_1()))) + 1529f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -985f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.a.x)), -264f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f) + _wgslsmith_f_op_f32(f32(-1f) * -1236f)) - _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.a), vec3<f32>(-1000f, var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(790f + 398f) * _wgslsmith_f_op_f32(round(var_0.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(max(vec2<i32>(2147483647i, global3.x), global3.zz))), 4294967295u, vec4<u32>(~(~(~u_input.c.x)), 49160u, _wgslsmith_sub_u32(4294967295u, ~(~4294967295u)), u_input.c.x), _wgslsmith_sub_i32(~(-var_1.x), var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-751f, var_2.a.x, -1901f, var_0.a.x) + vec4<f32>(588f, -677f, var_2.a.x, -821f))) + vec4<f32>(_wgslsmith_f_op_f32(step(-388f, var_2.a.x)), 1302f, var_2.a.x, _wgslsmith_f_op_f32(step(var_0.a.x, -1019f))))));
}

