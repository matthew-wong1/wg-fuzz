struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(80495i, -17548i, -31838i, 2147483647i, 53623i);

var<private> global1: Struct_1;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(global1.d, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(52449i, 2147483647i), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(global1.a.x, 5u)]) & vec2<i32>(0i, 1i)), vec2<i32>(-8264i, abs(-1i)))), _wgslsmith_clamp_i32(~(~(-u_input.a)), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, countOneBits(21790u)), 5u)], _wgslsmith_dot_vec2_i32(vec2<i32>(44854i, 11055i), vec2<i32>(global1.d.x, global0[_wgslsmith_index_u32(global1.a.x, 5u)])) | -u_input.c), max(3315i, _wgslsmith_add_i32(-64676i, 16005i)) ^ _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global1.e.x, 1i, 2147483647i, global0[_wgslsmith_index_u32(59289u, 5u)])), ~vec4<i32>(2147483647i, u_input.a, u_input.c, 19391i))));
    var_0 = _wgslsmith_div_vec2_i32(~(~vec2<i32>(19584i >> (global1.a.x % 32u), reverseBits(-51639i))), ~global1.d);
    var_0 = -countOneBits(firstTrailingBit(_wgslsmith_add_vec2_i32(global1.d, -vec2<i32>(global1.e.x, global0[_wgslsmith_index_u32(global1.a.x, 5u)]))));
    let var_1 = 1i >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, global1.a.x, 0u), global1.a.zyy), _wgslsmith_add_u32(global1.a.x, _wgslsmith_sub_u32(31660u, 10255u))), global1.a.x) % 32u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(floor(234f)));
    return 0u;
}

fn func_2(arg_0: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b + 1583f) - _wgslsmith_f_op_f32(abs(864f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c)))));
    let var_1 = countOneBits(~_wgslsmith_add_vec3_u32(~vec3<u32>(global1.a.x, global1.a.x, global1.a.x), global1.a.xyx) & vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global1.a.wxz, global1.a.xwy), 53464u), 74121u, 69110u));
    let var_2 = Struct_1(vec4<u32>(var_1.x, _wgslsmith_mult_u32(~reverseBits(4294967295u), _wgslsmith_add_u32(~global1.a.x, min(39417u, 42311u))), func_3(), _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(0u, ~13009u))), global1.b, _wgslsmith_f_op_f32(-arg_0), global1.e.zz, vec3<i32>(_wgslsmith_mult_i32(global1.e.x, min(61066i, -1060i) << (0u % 32u)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, global1.e.x, -14879i), global0[_wgslsmith_index_u32(var_1.x | global1.a.x, 5u)]) << (~(~62947u) % 32u), -1464i));
    let var_3 = vec4<u32>(~(~var_1.x >> (abs(41136u) % 32u)), 52737u, var_2.a.x, var_2.a.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(569f - -1445f));
    return vec4<f32>(var_2.b, _wgslsmith_f_op_f32(step(global1.b, -1803f)), global1.b, _wgslsmith_f_op_f32(821f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_4)))) * 1256f)));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-967f, _wgslsmith_f_op_f32(324f * global1.c), _wgslsmith_f_op_f32(round(global1.c)), _wgslsmith_f_op_f32(1521f - -1000f)) + _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(300f - global1.c)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f * -253f)), global1.b, _wgslsmith_f_op_f32(ceil(global1.b)), global1.b)));
    let var_1 = Struct_1(~_wgslsmith_add_vec4_u32(global1.a, firstTrailingBit(max(global1.a, vec4<u32>(global1.a.x, global1.a.x, 1u, 4294967295u)))), global1.c, var_0.x, vec2<i32>(_wgslsmith_mod_i32(1i >> (1u % 32u), _wgslsmith_clamp_i32(10412i, global0[_wgslsmith_index_u32(arg_0, 5u)], arg_1.x)), arg_1.x) & arg_1.xw, vec3<i32>(countOneBits(firstTrailingBit(countOneBits(global1.e.x))), _wgslsmith_mult_i32(-firstTrailingBit(25531i), 28939i), ~(-9224i)));
    global0 = array<i32, 5>();
    var var_2 = vec2<bool>(false, !(true && (all(vec2<bool>(false, true)) & false)));
    var_2 = vec2<bool>(false, var_2.x & !var_2.x);
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> StorageBuffer {
    global1 = arg_2;
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1415f + 1119f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.b)) - _wgslsmith_f_op_f32(-396f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_2(global1.b)).x, _wgslsmith_f_op_f32(step(-1764f, _wgslsmith_f_op_f32(-395f * 1250f)))))));
    let var_3 = abs(global1.e.x << (~arg_0.a.x % 32u));
    return StorageBuffer(max(countOneBits(vec4<i32>(-1i, var_3, u_input.c, 5677i)) | vec4<i32>(global1.d.x, firstLeadingBit(2147483647i), var_3, 1884i), _wgslsmith_mult_vec4_i32(vec4<i32>(~global0[_wgslsmith_index_u32(27123u, 5u)], u_input.c & 1i, global1.e.x, -21435i), ~(-vec4<i32>(var_3, 0i, arg_0.e.x, 26362i)))), vec3<u32>(global1.a.x, _wgslsmith_mult_u32(4294967295u, arg_2.a.x | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 15678u, arg_2.a.x), arg_2.a.wyw)), select(_wgslsmith_dot_vec3_u32(arg_0.a.yxx, arg_0.a.xwx), arg_0.a.x, arg_3)), ~(-41432i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -49646i;
    var var_1 = ~_wgslsmith_mod_u32(1u, abs(global1.a.x));
    var var_2 = global1.c;
    var_1 = 4294967295u;
    var var_3 = true;
    let x = u_input.a;
    s_output = func_4(Struct_1(~_wgslsmith_mult_vec4_u32(global1.a, _wgslsmith_clamp_vec4_u32(global1.a, vec4<u32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), global1.a)), _wgslsmith_f_op_f32(892f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1019f - global1.b) - global1.b)), -403f, _wgslsmith_div_vec2_i32(vec2<i32>(min(global0[_wgslsmith_index_u32(global1.a.x, 5u)], u_input.a), 1i), vec2<i32>(2147483647i, _wgslsmith_add_i32(-10754i, -1i))), -global1.e), ~80843u, Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.c, -1183f)) + _wgslsmith_f_op_f32(-global1.b)) * global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + 311f)), global1.d, vec3<i32>(global1.d.x, u_input.b, -8640i)), !(!func_1(global1.a.x, -vec4<i32>(1i, global1.e.x, 1582i, 0i))));
}

