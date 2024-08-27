struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: f32) -> f32 {
    let var_0 = true;
    let var_1 = vec3<u32>(min(_wgslsmith_dot_vec4_u32(global1.a.a, global1.a.a), _wgslsmith_dot_vec4_u32(global1.a.a ^ ~global1.a.a, _wgslsmith_add_vec4_u32(abs(vec4<u32>(4249u, 1u, global1.a.a.x, global1.a.a.x)), ~global1.a.a))), 1u, _wgslsmith_mult_u32(global1.b, 20851u));
    var var_2 = Struct_1(global1.a.a, global1.a.b);
    var var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(u_input.a.yxx), max(vec3<i32>(arg_1, _wgslsmith_sub_i32(0i, u_input.a.x), -2147483647i), ~firstLeadingBit(vec3<i32>(68296i, arg_1, -63596i))), u_input.a.xwy), abs(u_input.a.xxz));
    var var_4 = _wgslsmith_dot_vec3_u32(countOneBits(~max(vec3<u32>(0u, var_2.a.x, 0u), global1.a.a.ywy << (global1.a.a.wzy % vec3<u32>(32u)))), _wgslsmith_add_vec3_u32(~global1.a.a.wxx, abs(var_1)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_f_op_f32(-var_2.b.x))))) - _wgslsmith_f_op_f32(ceil(global1.c))));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_clamp_i32(max(u_input.a.x, _wgslsmith_mult_i32(countOneBits(min(u_input.a.x, -1i)), -8998i)), u_input.a.x, (i32(-1i) * -(~u_input.a.x)) | countOneBits(_wgslsmith_div_i32(i32(-1i) * -2147483647i, 1i)));
    global0 = array<Struct_1, 8>();
    let var_1 = Struct_1(global1.a.a, vec3<f32>(-1953f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1099f)), 1109f)), 621f));
    global1 = Struct_3(Struct_1(global1.a.a, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.x - global1.a.b.x), _wgslsmith_f_op_f32(func_3(true, var_0, -145f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_1.b.x)))), _wgslsmith_f_op_f32(-var_1.b.x))), ~select(~var_1.a.x, _wgslsmith_clamp_u32(global1.a.a.x << (var_1.a.x % 32u), ~var_1.a.x, _wgslsmith_mod_u32(var_1.a.x, 4294967295u)), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))));
    var var_2 = (i32(-1i) * -var_0) | ~(-42478i);
    return vec4<u32>(~global1.b >> (abs(_wgslsmith_add_u32(1u, var_1.a.x)) % 32u), ~max(1u ^ var_1.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(94384u, var_1.a.x), global1.a.a.wz), vec2<u32>(var_1.a.x, 15342u))), ~reverseBits(0u), 4294967295u);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = ~arg_0.a.a.zy | ~arg_0.d.xx;
    var var_1 = Struct_1(global1.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-105f, _wgslsmith_f_op_f32(-global1.c), 2141f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, global1.c, -1000f) + vec3<f32>(global1.a.b.x, global1.c, -1975f)))));
    var_1 = Struct_1(firstLeadingBit(func_2()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b))));
    var var_2 = all(vec3<bool>(all(select(vec2<bool>(arg_2, false), vec2<bool>(true, true), vec2<bool>(arg_2, false))), !arg_2, arg_2)) && !(_wgslsmith_f_op_f32(step(global1.a.b.x, _wgslsmith_f_op_f32(var_1.b.x + -669f))) > global1.c);
    var var_3 = vec2<i32>(-47723i, 1i);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a.b.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-215f, var_1.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    var var_0 = all(vec4<bool>(!all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, false, true)), false, false));
    var var_1 = _wgslsmith_f_op_f32(func_1(Struct_2(global0[_wgslsmith_index_u32(27584u, 8u)], vec4<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), global1.a.b.x, global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.c)) * _wgslsmith_f_op_f32(-global1.c))), ~(~global1.a.a), _wgslsmith_sub_vec2_i32(-(vec2<i32>(u_input.a.x, 29832i) >> (global1.a.a.zy % vec2<u32>(32u))), firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x)))), u_input.a.x, !(_wgslsmith_f_op_f32(f32(-1f) * -197f) >= global1.c)));
    let var_2 = Struct_2(Struct_1(vec4<u32>(~global1.a.a.x, global1.a.a.x, 4294967295u & _wgslsmith_add_u32(global1.a.a.x, 1u), ~0u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-345f, global1.c, global1.c) + _wgslsmith_f_op_vec3_f32(vec3<f32>(542f, global1.c, -1610f) - global1.a.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b.x, 119f, 770f, -1803f))), vec4<f32>(_wgslsmith_f_op_f32(global1.a.b.x - 734f), global1.a.b.x, global1.c, _wgslsmith_f_op_f32(abs(354f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1512f, global1.c, global1.c, global1.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1422f, global1.a.b.x, -518f, 140f)))))), 1f, ~global1.a.a, -vec2<i32>(u_input.a.x, u_input.a.x));
    var_0 = true;
    global0 = array<Struct_1, 8>();
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~vec4<u32>(var_2.a.a.x, 4294967295u, 4294967295u, var_2.d.x) & (var_2.d >> (var_2.d % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(4294967295u, 44571u, 1u, var_2.a.a.x)), global1.a.a)));
}

