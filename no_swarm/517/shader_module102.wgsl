struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(10923i, -29131i, -61256i, 14808i), vec4<i32>(-31843i, 2147483647i, 7264i, -20848i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), 11871i), vec4<i32>(4602i, 32498i, -1494i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, 1i, -1i), vec4<i32>(-40086i, 0i, -1i, -14247i), vec4<i32>(-16321i, 1i, -1i, -13743i), vec4<i32>(20113i, 2147483647i, 20324i, 1i), vec4<i32>(32049i, i32(-2147483648), -9915i, 0i), vec4<i32>(38073i, -56674i, i32(-2147483648), 18193i), vec4<i32>(1i, 2147483647i, -34073i, 76976i), vec4<i32>(-1i, -1i, 34286i, i32(-2147483648)), vec4<i32>(-9006i, -13024i, -32953i, 2147483647i), vec4<i32>(-1i, 2147483647i, -13174i, -1i), vec4<i32>(10332i, 236i, 1i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, -5746i, 1i), vec4<i32>(18413i, -1i, 1i, i32(-2147483648)), vec4<i32>(-11129i, -1i, -1i, 2147483647i), vec4<i32>(13783i, 60913i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, 53237i, 32974i), vec4<i32>(2318i, 0i, 37134i, 0i), vec4<i32>(1i, 2147483647i, 31816i, 0i));

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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<vec4<i32>, 22>();
    var var_0 = vec3<i32>(-arg_0.a, abs(min(1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, 2147483647i, 32582i, 43880i)), vec4<i32>(arg_0.b.x, u_input.e.x, 2250i, arg_0.b.x)))), ~(-(~arg_0.b.x)));
    global0 = array<vec4<i32>, 22>();
    var var_1 = Struct_1(_wgslsmith_clamp_i32(~arg_0.b.x, -27584i, ~(arg_0.b.x ^ 0i)), var_0.yz);
    let var_2 = !any(vec2<bool>(true, (1i == u_input.e.x) && true));
    return ~0u;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(~(-1368i), -arg_0);
    let var_1 = vec3<u32>((~(u_input.d | 0u) & u_input.d) & u_input.b.x, ~(~func_3(Struct_1(arg_0.x, vec2<i32>(var_0.b.x, 1i)))), u_input.d);
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    let var_2 = Struct_1(29549i, arg_0);
    return Struct_1(_wgslsmith_add_i32(-2147483647i, u_input.e.x) | (i32(-1i) * -abs(-3642i)), abs(u_input.e));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> bool {
    global0 = array<vec4<i32>, 22>();
    let var_0 = func_2(arg_0.b);
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 22u)];
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.xy) * _wgslsmith_f_op_vec2_f32(min(arg_0.a.zz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.x, -1572f), arg_0.a.xz))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(arg_0.a.xz)), vec2<f32>(-1094f, arg_0.a.x), select(arg_1.zw, arg_1.xy, vec2<bool>(false, arg_1.x)))), !(arg_0.a.x > arg_0.a.x))))));
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    let var_1 = 14211i & u_input.a;
    return Struct_1(~(2147483647i & func_2(firstTrailingBit(u_input.e)).b.x), firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.e, ~(-u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1692f, -258f, -671f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-156f, 885f, -2219f))))))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(all(vec2<bool>(true, true)), true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(any(vec2<bool>(true, false)), true, func_1(Struct_1(-15569i, vec2<i32>(-22496i, 2147483647i)), vec2<u32>(u_input.d, 1u), -1070f), true)), vec4<bool>(true, true, false, func_1(Struct_1(14010i, vec2<i32>(u_input.e.x, u_input.c)), u_input.b.xy, 1655f) && true)));
    var var_1 = Struct_1(u_input.a & -2147483647i, ~(-var_0.b));
    var var_2 = countOneBits(-_wgslsmith_clamp_i32(select(-15823i, u_input.c, false), select(13802i, u_input.a, false), 49598i << (u_input.b.x % 32u)) & _wgslsmith_add_i32(var_1.b.x, u_input.e.x));
    global0 = array<vec4<i32>, 22>();
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))), -982f, _wgslsmith_f_op_f32(f32(-1f) * -291f)));
    let var_4 = vec3<bool>(any(!vec3<bool>(any(vec4<bool>(true, false, false, true)), false, true)), 0i > u_input.a, _wgslsmith_f_op_f32(max(var_3.a.x, var_3.a.x)) > -701f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, u_input.b.x ^ reverseBits(38555u), min(u_input.b.x, abs(u_input.b.x)), min(84168u, 1u & u_input.b.x)) >> (min(~vec4<u32>(4294967295u, 1u, 4574u, u_input.d), ~vec4<u32>(u_input.d, 12560u, 102377u, u_input.b.x)) % vec4<u32>(32u)), firstTrailingBit(u_input.b.x), max(~abs(vec4<u32>(u_input.b.x, 0u, 76698u, 26232u)), ~(~min(vec4<u32>(u_input.b.x, 32449u, u_input.d, u_input.d), vec4<u32>(1u, u_input.b.x, 0u, u_input.d)))), ~firstTrailingBit(u_input.d));
}

