struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false));

var<private> global1: array<Struct_1, 9>;

var<private> global2: vec2<bool>;

var<private> global3: array<vec2<f32>, 7>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(17957u, u_input.a.x), vec2<u32>((u_input.a.x & _wgslsmith_div_u32(4294967295u, 4294967295u)) << (26333u % 32u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a.x))), ~u_input.a);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(790f, -817f, true)) - _wgslsmith_f_op_f32(select(1658f, 162f, true))))), _wgslsmith_div_f32(933f, -514f))), _wgslsmith_f_op_f32(f32(-1f) * -1494f), -368f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -534f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(552f)), -588f)))));
    var var_2 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 38766i, u_input.b.x), ~min(vec3<i32>(u_input.b.x, -30057i, -28866i), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x)) & _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), -vec3<i32>(13014i, u_input.b.x, 0i), select(vec3<i32>(-1i, u_input.b.x, u_input.b.x), vec3<i32>(-40344i, u_input.b.x, u_input.b.x), true)));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, u_input.a.x), 9u)];
    global3 = array<vec2<f32>, 7>();
    return var_1.x;
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    global3 = array<vec2<f32>, 7>();
    global1 = array<Struct_1, 9>();
    var var_0 = Struct_1((any(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(false, false, true), vec3<bool>(arg_0.a, arg_0.a, global2.x))) || global2.x) | !(!any(vec2<bool>(arg_0.a, arg_0.a))), firstTrailingBit(arg_0.c), arg_0.b, -1i);
    var var_1 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1131f * 128f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(430f, -565f, true)) - -565f), 408f))));
    let var_2 = 1i;
    return _wgslsmith_div_vec3_i32(-vec3<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d, u_input.b.x), vec2<i32>(u_input.b.x, 83088i)), ~var_2, false), select(~u_input.b.x, 2147483647i, false), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, var_0.d, arg_0.b.x), vec3<i32>(7902i, var_2, u_input.b.x)), u_input.b.x, 5574i)), countOneBits(max(~vec3<i32>(var_2, 0i, 6543i) ^ max(vec3<i32>(var_0.b.x, u_input.b.x, var_0.d), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<i32>(-var_2, -2147483647i | u_input.b.x, i32(-1i) * -1i))));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: f32, arg_3: bool) -> i32 {
    global0 = array<vec4<bool>, 7>();
    global0 = array<vec4<bool>, 7>();
    global1 = array<Struct_1, 9>();
    global0 = array<vec4<bool>, 7>();
    global0 = array<vec4<bool>, 7>();
    return ~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(~25269i, select(-25218i, u_input.b.x, arg_3), -1i), func_3(Struct_1(global2.x, vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x), 2147483647i))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: vec4<i32>) -> StorageBuffer {
    var var_0 = (global2.x || select(!(arg_2.x <= arg_1.x), (52045u ^ arg_0.x) < reverseBits(u_input.a.x), global2.x)) | global2.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(102f + _wgslsmith_f_op_f32(func_1(true))), _wgslsmith_f_op_f32(arg_1.x + arg_1.x)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.yzy + vec3<f32>(arg_1.x, -921f, -540f)))))));
    let var_2 = func_3(global1[_wgslsmith_index_u32(29974u, 9u)]) & reverseBits(vec3<i32>(34721i, arg_3.x, 25075i));
    global1 = array<Struct_1, 9>();
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f) + _wgslsmith_f_op_f32(-var_1.x))))));
    return StorageBuffer(vec2<i32>(-(~u_input.b.x), 6247i) | ~select(-arg_3.zy, arg_3.zw, vec2<bool>(global2.x, global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, u_input.b, u_input.b, 1i);
    var var_1 = global2.x;
    let var_2 = !(!(!(!vec3<bool>(true, var_0.a, var_0.a))));
    let var_3 = 29411u;
    let x = u_input.a;
    s_output = func_4(firstTrailingBit(~(~select(vec3<u32>(23916u, u_input.a.x, u_input.a.x), vec3<u32>(1426u, 4294967295u, var_3), vec3<bool>(true, global2.x, var_0.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-931f, -1659f)) - -532f), -1000f) + vec2<f32>(_wgslsmith_div_f32(-1448f, 116f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(false)) * _wgslsmith_f_op_f32(f32(-1f) * -795f)))), _wgslsmith_add_vec4_i32(vec4<i32>(1i << (u_input.a.x % 32u), var_0.d, 0i, 1i), vec4<i32>(-func_2(var_0.a, vec4<f32>(1655f, 1000f, 1278f, -1588f), 846f, true), var_0.b.x, var_0.c.x >> (countOneBits(u_input.a.x) % 32u), -func_3(global1[_wgslsmith_index_u32(u_input.a.x, 9u)]).x)));
}

