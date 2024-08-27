struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
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

var<private> global0: Struct_2;

var<private> global1: Struct_3;

var<private> global2: array<f32, 9>;

var<private> global3: array<i32, 32> = array<i32, 32>(1i, i32(-2147483648), i32(-2147483648), i32(-2147483648), -6464i, 1i, -6649i, -1i, -24247i, i32(-2147483648), -5067i, 0i, -32572i, -13327i, 1i, 0i, -1i, -1i, 0i, 7319i, 42037i, 0i, 63224i, 28119i, 0i, 1i, -24265i, -23400i, 0i, -1i, 17034i, 19223i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(all(!vec3<bool>(false, global0.d, false)), _wgslsmith_f_op_f32(-1f) < global0.c.a, 38087u <= u_input.a.x);
    global3 = array<i32, 32>();
    global3 = array<i32, 32>();
    var var_1 = global0.c;
    var var_2 = Struct_2(true, u_input.a.x >> ((_wgslsmith_add_u32(var_1.c, 35701u | var_1.c) >> (0u % 32u)) % 32u), global0.c, global0.d & select(any(vec4<bool>(var_0.x, var_0.x, global0.a, true)), false, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2018f, _wgslsmith_f_op_f32(-118f + -831f), -2400f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(u_input.a.x, global1.c.c, 18947u, 1u)), 9u)]) - _wgslsmith_f_op_vec4_f32(global0.e + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.a, -1648f, var_1.a, -404f))))));
    global1 = Struct_3(~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, var_2.c.b.x, var_2.c.b.x), abs(global1.c.b), var_2.c.b), -vec3<i32>(17590i, global1.d, u_input.b.x)), ~_wgslsmith_mult_u32(reverseBits(4294967295u), var_1.c), Struct_1(-1325f, ~vec3<i32>(max(var_1.b.x, 2147483647i), -10957i, _wgslsmith_dot_vec2_i32(var_2.c.b.xz, var_1.b.xy)), 27882u), u_input.c);
    let var_3 = (u_input.b >> (select(~(~vec4<u32>(var_2.c.c, 40913u, 27842u, 64046u)), u_input.a, global0.a) % vec4<u32>(32u))) >> (~vec4<u32>(firstTrailingBit(1u), u_input.a.x, ~4294967295u, ~(global0.b << (u_input.a.x % 32u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer((abs(select(vec4<u32>(0u, 0u, 4294967295u, 61114u), u_input.a, global0.d)) ^ u_input.a) & reverseBits(u_input.a));
}

