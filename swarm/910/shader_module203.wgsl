struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 5>;

var<private> global2: Struct_3;

var<private> global3: Struct_3 = Struct_3(vec3<u32>(1u, 1u, 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32) -> f32 {
    global1 = array<vec3<u32>, 5>();
    let var_0 = Struct_3(~vec3<u32>(~(~u_input.a.x), u_input.a.x, global2.a.x ^ 81839u));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~max(78423u, 50413u), global3.a.x), 13817u), ~vec2<u32>(~6185u, var_0.a.x));
    var var_2 = _wgslsmith_mult_u32(global3.a.x, 33800u);
    let var_3 = -18071i;
    return -1161f;
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1514f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(525f * -343f) + _wgslsmith_f_op_f32(1579f - -180f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1080f * 381f) + 667f))) * -771f);
    var var_0 = ~(-firstLeadingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, -1i, 813i), select(vec3<i32>(2147483647i, -41578i, -12873i), vec3<i32>(-1i, 2147483647i, 16698i), vec3<bool>(true, true, true)))));
    var var_1 = select(1u, global2.a.x << (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.ww, vec2<u32>(u_input.a.x, u_input.a.x)), ~vec2<u32>(global3.a.x, 16635u)), ~countOneBits(u_input.a.x)) % 32u), false);
    let var_2 = Struct_1(vec4<i32>(~(-select(-12236i, -1i, false)), 50339i, firstLeadingBit(1i), -(~abs(2147483647i))), 0i);
    return ~19820i;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(695f * _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-766f))))));
    var var_1 = Struct_2(firstTrailingBit(vec4<i32>(-abs(-20498i), ~2147483647i, ~0i, _wgslsmith_mod_i32(select(1i, -2147483647i, false), reverseBits(-25427i)))), Struct_1(vec4<i32>(40341i, func_3(), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(5198i, 1i, -9175i), vec3<i32>(78088i, 42262i, 38216i)), 32306i), -firstTrailingBit(36442i)), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2995i, -29628i, -7408i, 1i), vec4<i32>(1i, 1i, 1i, 1i)))), Struct_1(-(countOneBits(vec4<i32>(-1i, -46763i, -1i, 2147483647i)) << (u_input.a % vec4<u32>(32u))), countOneBits(23484i)), global3.a.x, -737f);
    var var_2 = var_1.b.a;
    var_2 = firstTrailingBit(var_1.c.a);
    var var_3 = var_1.a;
    return global2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(abs(min(vec3<u32>(abs(global2.a.x), func_1(), u_input.a.x), global3.a & vec3<u32>(42488u, global3.a.x, global2.a.x))));
    let var_0 = vec2<i32>(19191i, min(-_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(18751i, -2147483647i), vec2<i32>(29194i, -1i)), 2147483647i >> (global2.a.x % 32u)), 2147483647i));
    global1 = array<vec3<u32>, 5>();
    global2 = Struct_3(_wgslsmith_div_vec3_u32(global3.a, _wgslsmith_add_vec3_u32(global3.a, global1[_wgslsmith_index_u32(31071u, 5u)])));
    global2 = Struct_3(~select(abs(select(global1[_wgslsmith_index_u32(4294967295u, 5u)], global2.a, vec3<bool>(false, true, false))), reverseBits(~vec3<u32>(12134u, global3.a.x, 42380u)), vec3<bool>(true, true, true)));
    var var_1 = 0u;
    let var_2 = u_input.a;
    var var_3 = firstLeadingBit(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-169f, -1701f, 287f, 998f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1140f, -575f, -194f, -161f) + vec4<f32>(-1000f, -522f, 1104f, -215f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1177f)), _wgslsmith_f_op_f32(273f * -508f), 1f, -1395f), vec4<f32>(410f, _wgslsmith_f_op_f32(max(-330f, 2246f)), _wgslsmith_f_op_f32(trunc(-352f)), _wgslsmith_f_op_f32(ceil(457f))))), 16415i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-741f, 1f, _wgslsmith_div_f32(-1221f, 446f)))))), 124139u ^ global2.a.x);
}

