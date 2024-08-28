struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_2, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool) -> Struct_4 {
    let var_0 = ~(~(~(countOneBits(vec3<u32>(7161u, 0u, u_input.c)) | vec3<u32>(13268u, u_input.b.x, 6293u))));
    return global0[_wgslsmith_index_u32(u_input.a, 21u)];
}

fn func_3(arg_0: bool, arg_1: f32) -> u32 {
    global0 = array<Struct_4, 21>();
    global1 = global0[_wgslsmith_index_u32(u_input.c, 21u)];
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(413f + _wgslsmith_f_op_f32(select(1000f, arg_1, arg_0)))), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1936f)))), 123f)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(1840f + arg_1)) - -724f))), _wgslsmith_f_op_f32(ceil(arg_1)));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(18658u << (_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.c, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, u_input.c)), reverseBits(vec3<u32>(4294967295u, u_input.b.x, u_input.c))) % 32u), ~(~(11766u & u_input.c))) << (u_input.c % 32u), 32u)];
    return 26788u;
}

fn func_1() -> Struct_4 {
    global2 = array<Struct_2, 32>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1333f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(536f))))) * _wgslsmith_f_op_f32(490f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -235f))), _wgslsmith_f_op_f32(214f - -1210f)))));
    global2 = array<Struct_2, 32>();
    let var_1 = _wgslsmith_clamp_u32(~(~(~u_input.a)) ^ 0u, ~_wgslsmith_div_u32(min(4294967295u, u_input.c) & 1u, u_input.a), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, 1u << (abs(u_input.a) % 32u)), max(~33315u, 1u)));
    global1 = func_2(~(-firstLeadingBit(_wgslsmith_add_i32(global1.b.x, global1.d.a))), select(global1.d.c, global1.a.x || any(vec4<bool>(global1.a.x, true, global1.d.c, global1.c)), global1.d.c) || global1.a.x, true);
    return global0[_wgslsmith_index_u32(func_3(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(104f + var_0)))))), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(global1.a.x, !(!global1.c) && (abs(24785u) >= ~u_input.b.x), all(!(!vec4<bool>(false, false, global1.a.x, global1.a.x))), false | !global1.d.c);
    var var_1 = func_1();
    global1 = global0[_wgslsmith_index_u32(u_input.a, 21u)];
    var_1 = Struct_4(vec2<bool>(!var_1.c, var_0.x), ~global1.d.e, func_2(-22940i, !var_0.x || var_0.x, var_1.c).a.x, func_1().d, _wgslsmith_mult_vec2_i32(global1.e, firstLeadingBit(func_2(global1.e.x, var_0.x, var_1.c).b.yy)) ^ firstTrailingBit(~(vec2<i32>(-25194i, var_1.e.x) | var_1.d.e.yz)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -280f));
    global0 = array<Struct_4, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, 78086u) & vec3<u32>(0u, u_input.c, 6147u), ~vec3<u32>(38212u, u_input.c, u_input.c)), ~vec3<u32>(u_input.b.x | 0u, 4294967295u << (u_input.b.x % 32u), 0u)), 2147483647i, global1.e.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2)) * var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), var_2), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1460f, var_2, var_2, -160f)), _wgslsmith_div_vec4_f32(vec4<f32>(987f, 930f, 445f, 933f), vec4<f32>(var_2, var_2, -1332f, -712f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, 440f, var_2, -131f) + vec4<f32>(-348f, var_2, -1111f, var_2))))))));
}

