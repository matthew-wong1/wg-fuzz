struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<bool>, 18>;

var<private> global2: array<vec4<bool>, 4>;

var<private> global3: bool;

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2() -> i32 {
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, -247f) + vec3<f32>(2669f, -378f, global4.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, 358f, global4.x) * vec3<f32>(global4.x, -1260f, global4.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4.x, -1143f, global4.x), vec3<f32>(global4.x, global4.x, -1725f))))));
    global1 = array<vec2<bool>, 18>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(global4.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4.x))), global4.x)))), u_input.c);
    global3 = !select(false, !(true | (u_input.a.x >= u_input.a.x)), true);
    let var_1 = -14012i;
    return 0i;
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = false;
    global4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(global4.x - global4.x), 143f);
    global3 = arg_0.x >= _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(u_input.a.wzx ^ u_input.a.wxz), arg_0.wyx);
    return _wgslsmith_div_f32(-955f, _wgslsmith_f_op_f32(trunc(-126f)));
}

fn func_1(arg_0: bool) -> f32 {
    global2 = array<vec4<bool>, 4>();
    let var_0 = Struct_2(min(~vec2<u32>(~u_input.c, ~u_input.c), max(vec2<u32>(u_input.c, u_input.b) | ~vec2<u32>(u_input.b, u_input.c), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(1u, u_input.b)), vec2<u32>(52564u, u_input.c)))));
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.b, 4294967295u), 18u)];
    global1 = array<vec2<bool>, 18>();
    let var_2 = -func_2();
    return _wgslsmith_f_op_f32(func_3(~_wgslsmith_div_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, var_2, var_2, 1i), u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_1(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-709f, _wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.x, _wgslsmith_div_f32(global4.x, global4.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.x, global4.x, -669f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4.x, global4.x, global4.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, 520f, global4.x) * vec3<f32>(-414f, global4.x, 399f))))))), select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true))), select(vec3<bool>(true, any(global1[_wgslsmith_index_u32(22804u, 18u)]), true), vec3<bool>(true, true, true), true), any(vec2<bool>(true, true)))));
    var var_0 = true;
    global3 = all(vec3<bool>(true, true, any(select(vec2<bool>(true, false), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(99503u, u_input.c)), 18u)], select(vec2<bool>(false, true), global1[_wgslsmith_index_u32(0u, 18u)], vec2<bool>(true, false))))));
    var_0 = all(vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true)), 4294967295u < reverseBits(~u_input.b)));
    let var_1 = Struct_2(_wgslsmith_add_vec2_u32(abs(~countOneBits(vec2<u32>(1u, u_input.c))), vec2<u32>(u_input.b, select(~1u, u_input.c, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(vec2<u32>(var_1.a.x, u_input.c))), _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(min(vec3<u32>(4294967295u, var_1.a.x, 0u), vec3<u32>(0u, 1u, 1u)), reverseBits(vec3<u32>(15672u, 45979u, 4294967295u))), select(abs(vec3<u32>(1u, 30218u, u_input.c)), vec3<u32>(1u, 1u, u_input.b) & vec3<u32>(26837u, 23745u, var_1.a.x), true) & ((vec3<u32>(u_input.b, var_1.a.x, 51921u) << (vec3<u32>(var_1.a.x, 7124u, 27502u) % vec3<u32>(32u))) & ~vec3<u32>(69284u, 4294967295u, var_1.a.x))), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(u_input.a.zyx, _wgslsmith_sub_vec3_i32(u_input.a.xwy, vec3<i32>(u_input.a.x, -63592i, -21443i)) | select(u_input.a.zzy, u_input.a.zxy, vec3<bool>(false, true, true))), _wgslsmith_clamp_i32(u_input.d.x & u_input.d.x, -12750i, -36400i), _wgslsmith_mod_i32(~(~u_input.d.x), u_input.d.x)), -u_input.a.x);
}

