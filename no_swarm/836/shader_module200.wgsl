struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec4<u32>(4294967295u, 66565u, 1u, 4294967295u)), Struct_3(vec4<u32>(1u, 23562u, 57113u, 4294967295u)), Struct_3(vec4<u32>(0u, 20441u, 0u, 23225u)), Struct_3(vec4<u32>(1u, 10609u, 4294967295u, 54156u)), Struct_3(vec4<u32>(38794u, 74013u, 0u, 1u)), Struct_3(vec4<u32>(5826u, 1u, 4294967295u, 4294967295u)), Struct_3(vec4<u32>(0u, 1u, 67303u, 1u)), Struct_3(vec4<u32>(10715u, 1u, 4294967295u, 31763u)), Struct_3(vec4<u32>(0u, 0u, 75512u, 88801u)), Struct_3(vec4<u32>(56502u, 0u, 2030u, 59401u)), Struct_3(vec4<u32>(45151u, 1u, 39624u, 4294967295u)), Struct_3(vec4<u32>(0u, 9726u, 90362u, 1u)), Struct_3(vec4<u32>(4294967295u, 29178u, 0u, 0u)), Struct_3(vec4<u32>(0u, 0u, 22493u, 42357u)), Struct_3(vec4<u32>(36653u, 85047u, 81361u, 45303u)), Struct_3(vec4<u32>(4294967295u, 22372u, 43857u, 72393u)), Struct_3(vec4<u32>(1u, 0u, 51634u, 1u)));

var<private> global1: array<Struct_3, 30>;

var<private> global2: array<Struct_1, 12>;

var<private> global3: array<Struct_1, 16>;

var<private> global4: vec2<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> i32 {
    global4 = vec2<u32>(76384u, u_input.a.x & _wgslsmith_mod_u32(0u, firstTrailingBit(1u)));
    var var_0 = true;
    let var_1 = 1120f;
    global4 = ~(u_input.a.yz ^ ~(~u_input.a.xz));
    global1 = array<Struct_3, 30>();
    return reverseBits(-arg_1.x);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_div_f32(arg_2.a.d.x, 614f);
    let var_1 = Struct_3(vec4<u32>(abs(abs(31983u) >> (~arg_3.x % 32u)), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_2.a.b, abs(arg_3.x), arg_2.a.b, _wgslsmith_div_u32(arg_2.a.b, 4294967295u)), vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x)), global4.x));
    var var_2 = ~(-(-_wgslsmith_sub_vec3_i32(arg_2.a.a.yyz, vec3<i32>(arg_2.a.a.x, 2147483647i, 3981i)) | vec3<i32>(i32(-1i) * -58790i, -49104i, arg_0)));
    var var_3 = 34708i;
    global0 = array<Struct_3, 17>();
    return -739f;
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    global1 = array<Struct_3, 30>();
    global0 = array<Struct_3, 17>();
    var var_0 = Struct_1(min(abs(vec4<i32>(1i, 1i, 1i, 1i)) | vec4<i32>(56054i, reverseBits(-19183i), 43414i >> (arg_0.x % 32u), i32(-1i) * -23768i), vec4<i32>(-53459i, 2147483647i, 1i, func_2(1717f, vec3<i32>(-1i, -1i, 0i)))), ~u_input.a.x, select(~(~vec2<u32>(u_input.a.x, 14541u)), ~(arg_0.zy & arg_0.zx), vec2<bool>(-1113f >= _wgslsmith_f_op_f32(func_3(0i, -224f, Struct_4(global2[_wgslsmith_index_u32(1u, 12u)]), vec2<u32>(arg_0.x, arg_0.x))), false)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1839f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-556f)) - _wgslsmith_f_op_f32(-1391f + -154f)), _wgslsmith_f_op_f32(-1408f + 2332f))));
    let var_1 = reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 46336u, arg_0.x, global4.x), vec4<u32>(23791u, 0u, 0u, global4.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(var_0.c.x, 4294967295u))) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, arg_0.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, var_0.b, 17246u), vec4<u32>(0u, 58964u, 1u, arg_0.x)) % vec4<u32>(32u)), select(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.x, 1u, var_0.b, global4.x), vec4<u32>(0u, global4.x, 42263u, global4.x)), vec4<u32>(u_input.a.x, 0u, 58501u, var_0.b) | vec4<u32>(var_0.c.x, 37307u, 0u, 0u)), vec4<u32>(16541u, firstTrailingBit(23930u), _wgslsmith_mod_u32(4294967295u, 1u), 1u), vec4<bool>(true, all(vec4<bool>(false, true, false, true)), false, true))));
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x ^ var_1, (arg_0.x >> (u_input.a.x % 32u)) & ~37222u), _wgslsmith_div_u32(~0u, global4.x ^ u_input.a.x) << ((arg_0.x << (abs(50048u) % 32u)) % 32u)) ^ 0u, 16u)];
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1840f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(var_0.a.x, var_0.d.x, Struct_4(Struct_1(vec4<i32>(var_0.a.x, 13476i, 35206i, var_0.a.x), var_0.c.x, u_input.a.zy, vec2<f32>(224f, 1186f))), var_0.c)))) + var_0.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -131f, _wgslsmith_f_op_f32(f32(-1f) * -1094f), 766f) + vec4<f32>(_wgslsmith_f_op_f32(-916f * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-983f, -1114f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1077f, _wgslsmith_f_op_f32(trunc(760f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2194f)))));
    global4 = firstTrailingBit(u_input.a.xz);
    global2 = array<Struct_1, 12>();
    var var_1 = countOneBits(~_wgslsmith_dot_vec4_i32(firstTrailingBit(min(vec4<i32>(-2147483647i, -43725i, -27034i, 1i), vec4<i32>(-26058i, 0i, 41850i, -1i))), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))));
    var var_2 = Struct_2(false, vec2<f32>(var_0.x, var_0.x), global3[_wgslsmith_index_u32(~reverseBits(46151u), 16u)]);
    var_1 = reverseBits(-32101i) << (global4.x % 32u);
    var var_3 = ~(~min(_wgslsmith_clamp_u32(1u, 0u, 2057u), ~1u)) >> (0u % 32u);
    var var_4 = Struct_1(var_2.c.a, firstTrailingBit(u_input.a.x), u_input.a.xy, _wgslsmith_f_op_vec2_f32(exp2(var_0.yx)));
    global3 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~_wgslsmith_mod_u32(4294967295u, 1u), ~_wgslsmith_add_vec4_i32(vec4<i32>(-33009i, abs(var_2.c.a.x), -61782i, _wgslsmith_div_i32(var_2.c.a.x, 1i)), var_2.c.a), 11956i, var_4.a.x);
}

