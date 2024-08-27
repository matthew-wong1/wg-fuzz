struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24>;

var<private> global1: bool = true;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = ~_wgslsmith_sub_u32(reverseBits(arg_0.x), select(_wgslsmith_clamp_u32(~arg_0.x, arg_0.x, u_input.d), 1u & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x), vec2<u32>(arg_0.x, arg_0.x)), true));
    var var_1 = Struct_4(~(-u_input.a.yyw));
    var var_2 = firstTrailingBit(~45608i) ^ _wgslsmith_div_i32(~u_input.c, -(i32(-1i) * -31931i));
    var var_3 = Struct_3(select(max(-max(vec3<i32>(0i, -1i, 0i), vec3<i32>(-52548i, u_input.b.x, var_1.a.x)), abs(var_1.a | vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x))), ~(vec3<i32>(u_input.a.x, var_1.a.x, -1i) ^ vec3<i32>(13196i, u_input.c, u_input.b.x)), select(!(!global0[_wgslsmith_index_u32(arg_0.x, 24u)]), !global0[_wgslsmith_index_u32(max(var_0, 60602u), 24u)], global0[_wgslsmith_index_u32(5572u, 24u)])));
    let var_4 = firstLeadingBit(vec4<i32>(-var_1.a.x, 16349i, 20066i, var_3.a.x)) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d, var_0, ~u_input.d, ~arg_0.x), _wgslsmith_add_vec4_u32(reverseBits(abs(vec4<u32>(20133u, 1u, var_0, 1u))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.d, var_0, var_0, 1u), vec4<u32>(4294967295u, u_input.d, 70338u, 4294967295u), vec4<bool>(false, false, true, true)), vec4<u32>(2011u, 0u, arg_0.x, u_input.d)))) % vec4<u32>(32u));
    return _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.d, u_input.d), 29748u, 4294967295u), abs(vec3<u32>(arg_0.x, arg_0.x, 53928u)))) != 0u;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1011f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(510f)) - _wgslsmith_f_op_f32(-1450f - 207f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1567f))), _wgslsmith_f_op_f32(f32(-1f) * -1289f)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 1427f, -565f, -1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-198f, 518f, -577f, 1733f)))))));
    global0 = array<vec3<bool>, 24>();
    let var_1 = _wgslsmith_f_op_vec3_f32(var_0.a.zwz * _wgslsmith_f_op_vec3_f32(min(var_0.a.zyw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x))))));
    var var_2 = !vec4<bool>(true, (1i & ~u_input.b.x) > 31838i, func_3(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(0u, u_input.d, u_input.d)), ~vec3<u32>(28474u, 25238u, u_input.d))), false);
    let var_3 = Struct_3(vec3<i32>(reverseBits(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(6699i, u_input.a.x, -61359i, -21828i), u_input.a))), -1589i, u_input.b.x));
    return Struct_3(abs(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-86i, var_3.a.x, -38224i), vec3<i32>(u_input.a.x, -9222i, -1i), u_input.a.zxz) ^ u_input.a.wxx)));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: f32) -> Struct_3 {
    global1 = true;
    return func_2();
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3) -> vec3<u32> {
    global0 = array<vec3<bool>, 24>();
    var var_0 = _wgslsmith_add_i32(_wgslsmith_div_i32(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, -17678i), arg_2.a), abs(_wgslsmith_sub_i32(i32(-1i) * -13158i, arg_2.a.x))), 33818i);
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -701f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2090f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -846f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -442f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1541f)))), _wgslsmith_f_op_f32(ceil(1669f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1430f, 102f, -598f, -555f)), vec4<f32>(-553f, var_1.x, -1763f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 2003f, -1284f, var_1.x))))));
    var_0 = 6127i & (u_input.a.x << (u_input.d % 32u));
    return vec3<u32>(u_input.d | (_wgslsmith_add_u32(4294967295u, u_input.d) | ~u_input.d), _wgslsmith_add_u32(select(select(10396u, 60964u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 2586u, u_input.d), vec4<u32>(1u, 91468u, 1u, u_input.d)), !arg_0), 5488u), u_input.d) | max(vec3<u32>(~(~u_input.d), ~u_input.d, firstTrailingBit(~45416u)), abs(~vec3<u32>(7225u, 0u, u_input.d)) ^ ~(vec3<u32>(48507u, u_input.d, 4294967295u) | vec3<u32>(u_input.d, u_input.d, 49755u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 24>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -272f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)), 872f, -2087f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, 267f, -1056f, -1129f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(231f, -176f, 1000f, -897f) * vec4<f32>(388f, 1000f, -455f, -2160f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(firstTrailingBit(~countOneBits(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d))), ~(~(~vec4<u32>(4294967295u, 86477u, u_input.d, u_input.d)))), ~func_4(false, vec2<i32>(-2147483647i, max(u_input.c, u_input.a.x)), func_1(Struct_2(vec3<i32>(2200i, u_input.b.x, u_input.b.x), vec4<f32>(var_0.a.x, var_0.a.x, 696f, var_0.a.x), true, Struct_1(vec4<f32>(var_0.a.x, -2803f, var_0.a.x, var_0.a.x))), 1u, -1000f, var_0.a.x)), _wgslsmith_div_u32(~(~68590u), _wgslsmith_sub_u32(abs(51939u), u_input.d)), _wgslsmith_div_vec4_i32(-min(-u_input.a, countOneBits(u_input.a)), _wgslsmith_sub_vec4_i32(u_input.a, ~vec4<i32>(-1i, u_input.a.x, u_input.c, 82747i))));
}

