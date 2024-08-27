struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 14>;

var<private> global3: array<f32, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = ~u_input.c.yx;
    global3 = array<f32, 25>();
    let var_1 = Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(713f, _wgslsmith_f_op_f32(704f + global3[_wgslsmith_index_u32(var_0.x, 25u)]), global1.c || global1.e)) + global1.b)), global1.e, firstLeadingBit(~(-u_input.a)) ^ vec3<i32>(15719i, _wgslsmith_div_i32(global1.d.x, -u_input.a.x), _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, global1.d.x)), false);
    var var_2 = countOneBits(~_wgslsmith_add_i32(var_1.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.x, u_input.a.x), vec2<i32>(var_1.d.x, -38593i)))) & firstTrailingBit(countOneBits(u_input.a.x));
    global0 = array<Struct_1, 19>();
    return var_1.c;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(4294967295u, ~select(global1.a.x, 22417u, global1.c)) ^ max(~global1.a, global1.a), arg_0, any(vec3<bool>(any(vec2<bool>(true, true)), !select(global1.e, false, global1.e), any(select(vec3<bool>(false, false, global1.e), vec3<bool>(true, false, false), false)))), reverseBits(global1.d), global1.e | func_3());
    return Struct_1(u_input.c.yx, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-579f + -1066f), _wgslsmith_f_op_f32(-global1.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(316f)), _wgslsmith_f_op_f32(ceil(-2186f))))), _wgslsmith_f_op_f32(-1530f * arg_0), any(vec4<bool>(var_0.c, all(vec2<bool>(var_0.c, global1.e)), var_0.e | global1.c, any(vec2<bool>(global1.e, true)))))), global1.c, _wgslsmith_mod_vec3_i32(abs(global1.d >> (u_input.c.wzx % vec3<u32>(32u))) | ~(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & global1.d), -u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1113f) * -706f) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-197f - global1.b))));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = u_input.c.x;
    let var_1 = func_2(_wgslsmith_f_op_f32(-2290f + global1.b));
    var var_2 = 1u;
    global2 = array<vec4<u32>, 14>();
    let var_3 = 0u;
    return _wgslsmith_f_op_f32(-global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = ~global1.a.x & u_input.c.x;
    var_0 = u_input.c.x;
    global2 = array<vec4<u32>, 14>();
    var_0 = ~0u;
    var var_2 = Struct_1(firstLeadingBit(abs(min(vec2<u32>(global1.a.x, global1.a.x), global1.a) << (u_input.c.zx % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)) - global1.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2216f + -788f)) + global1.b)), global1.c, (~vec3<i32>(1i, global1.d.x, global1.d.x) ^ -reverseBits(u_input.a)) & _wgslsmith_sub_vec3_i32(vec3<i32>(-56636i, 2147483647i | global1.d.x, firstLeadingBit(41489i)), _wgslsmith_mod_vec3_i32(global1.d, u_input.a >> (u_input.c.wwz % vec3<u32>(32u)))), any(vec2<bool>(true, true)));
    global3 = array<f32, 25>();
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(global1.b, 1f)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(285f + var_2.b)))))), global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(vec2<i32>(-2147483647i, 1i))), firstLeadingBit(_wgslsmith_mult_u32(4294967295u, firstTrailingBit(0u))) | ~_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, var_2.a.x), 4294967295u), vec4<i32>(1i, u_input.a.x, -2147483647i, -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(691f, 719f, -2124f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1047f, -1917f, global3[_wgslsmith_index_u32(4294967295u, 25u)]) + _wgslsmith_div_vec3_f32(var_3, vec3<f32>(var_2.b, global3[_wgslsmith_index_u32(72439u, 25u)], 1831f))))));
}

