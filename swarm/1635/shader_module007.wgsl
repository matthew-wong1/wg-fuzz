struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1>;

var<private> global1: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> u32 {
    global1 = array<vec3<bool>, 18>();
    let var_0 = arg_2.a.x << (_wgslsmith_dot_vec2_u32(~u_input.c, ~abs(u_input.c)) % 32u);
    var var_1 = arg_1;
    global1 = array<vec3<bool>, 18>();
    let var_2 = Struct_1(arg_1.a);
    return u_input.d;
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> vec2<u32> {
    var var_0 = vec3<i32>(-2147483647i, -(~(-1i)) ^ arg_0.x, arg_0.x);
    var_0 = -vec3<i32>(var_0.x, _wgslsmith_mult_i32(-max(-2147483647i, arg_0.x), arg_0.x), reverseBits(1i));
    var var_1 = -(~select(vec4<i32>(~u_input.a.x, var_0.x, arg_0.x << (40098u % 32u), arg_0.x << (u_input.d % 32u)), ~vec4<i32>(arg_0.x, var_0.x, -69092i, 5951i), vec4<bool>(true, true, true, true)));
    let var_2 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.x, _wgslsmith_sub_i32(arg_0.x, u_input.b)), 1i), 12601i));
    var_1 = ~(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, -17872i, u_input.a.x), ~vec4<i32>(1i, arg_0.x, 2147483647i, 0i)), var_1.x, -arg_0.x ^ (34469i >> (1u % 32u)), abs(var_0.x) ^ var_1.x));
    return ~u_input.c;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec2<u32>, arg_3: vec3<i32>) -> i32 {
    return _wgslsmith_sub_i32(~(-38715i & u_input.a.x), ~1i >> (~arg_0 % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> StorageBuffer {
    global1 = array<vec3<bool>, 18>();
    var var_0 = reverseBits(-vec3<i32>(-u_input.a.x, arg_0.a.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.b, -67433i)))) << (vec3<u32>(~(~1u), 0u, func_2(~(arg_1 << (arg_1 % 32u)), arg_0, Struct_1(_wgslsmith_div_vec2_i32(arg_0.a, arg_0.a)), arg_3.x)) % vec3<u32>(32u));
    var_0 = vec3<i32>(~_wgslsmith_div_i32(i32(-1i) * -42298i, u_input.a.x), var_0.x, 9638i);
    var var_1 = true;
    var var_2 = Struct_1(var_0.zz);
    return StorageBuffer(~vec4<i32>(arg_0.a.x, u_input.b, func_4(abs(u_input.d), _wgslsmith_mult_i32(u_input.a.x, arg_0.a.x), func_3(vec2<i32>(0i, var_0.x), arg_2.x), firstLeadingBit(vec3<i32>(8450i, -50262i, var_2.a.x))), var_2.a.x), u_input.a.x, vec4<i32>(var_0.x, ~(-50969i), u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_2.a.x, 5911i, -12286i, -2147483647i), vec4<i32>(70910i, -88516i, arg_0.a.x, var_2.a.x) ^ vec4<i32>(0i, arg_0.a.x, arg_0.a.x, var_2.a.x)), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-85912i, var_2.a.x, 13365i, var_0.x), vec4<i32>(-45799i, arg_0.a.x, var_0.x, -1i))))), abs(arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 18>();
    let var_0 = Struct_1(vec2<i32>(reverseBits(~(-u_input.a.x)), 2147483647i));
    global0 = array<vec3<f32>, 1>();
    global0 = array<vec3<f32>, 1>();
    let var_1 = ~max(_wgslsmith_div_vec2_u32(u_input.c, ~u_input.c & vec2<u32>(4294967295u, 0u)), u_input.c);
    var var_2 = Struct_1(u_input.a);
    var var_3 = min(-2147483647i, abs(-23348i));
    let x = u_input.a;
    s_output = func_1(var_0, ~var_1.x, ~_wgslsmith_clamp_vec2_u32(var_1, vec2<u32>(select(var_1.x, 4179u, false), u_input.d), firstTrailingBit(u_input.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-142f, 833f, -1399f) + vec3<f32>(-297f, -917f, -281f))) - _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47559u, u_input.d), u_input.c), 1u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f + 922f), _wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_div_f32(959f, -1234f)) * global0[_wgslsmith_index_u32(~abs(var_1.x), 1u)])));
}

