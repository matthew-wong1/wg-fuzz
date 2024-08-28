struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27>;

var<private> global1: array<bool, 13>;

var<private> global2: Struct_2;

var<private> global3: array<i32, 21> = array<i32, 21>(-1i, i32(-2147483648), 72127i, 10746i, 34058i, -2496i, 2147483647i, -50488i, -2623i, -68256i, -1i, 2157i, 0i, 34825i, -30199i, 40950i, 41210i, i32(-2147483648), 25848i, -27980i, 39083i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> f32 {
    global1 = array<bool, 13>();
    global0 = array<Struct_4, 27>();
    var var_0 = arg_0.a.c;
    let var_1 = Struct_1(arg_0.c);
    global0 = array<Struct_4, 27>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2598f)), 569f)))));
}

fn func_1() -> StorageBuffer {
    var var_0 = abs(select(u_input.b << (vec3<u32>(4294967295u, u_input.b.x, 32367u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(u_input.b, u_input.b >> (vec3<u32>(1u, 2071u, 850u) % vec3<u32>(32u))), !global2.c.a.yzz)) | reverseBits(firstLeadingBit(u_input.b));
    let var_1 = min(_wgslsmith_add_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 1i, 4242i), u_input.a, vec3<i32>(u_input.a.x, -17528i, 15803i)), u_input.a, var_0.x >= 0u), select(reverseBits(vec3<i32>(global3[_wgslsmith_index_u32(24812u, 21u)], -25340i, u_input.a.x)), ~vec3<i32>(global3[_wgslsmith_index_u32(1u, 21u)], u_input.a.x, 0i), true)) | u_input.a, reverseBits(vec3<i32>(max(-2470i, -32756i), -u_input.a.x, ~(-1i ^ global3[_wgslsmith_index_u32(0u, 21u)]))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-191f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_2(var_0.yz, -1371f, global2.c), vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 13u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(var_0.x, 13u)])), global2.a.x)), _wgslsmith_f_op_f32(trunc(global2.b))), _wgslsmith_f_op_f32(630f + -514f))), -296f) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.b)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b, 735f) - _wgslsmith_f_op_f32(floor(global2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1237f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global2.b, global2.b)), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(1u, 27u)], 0u))))))));
    var_0 = u_input.b;
    let var_3 = ~vec2<u32>(5005u, 1396u);
    return StorageBuffer(vec4<i32>(var_1.x, var_1.x, -47732i, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

