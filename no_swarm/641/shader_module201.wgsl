struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 18>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> vec4<f32> {
    global0 = ~(~u_input.a.x);
    let var_0 = ~vec4<u32>(~abs(u_input.b.x), 0u, 4294967295u ^ _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.e, 4294967295u), _wgslsmith_add_u32(0u, 4294967295u)), ~u_input.d.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -386f, _wgslsmith_f_op_f32(f32(-1f) * -706f), -532f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(339f, -859f), _wgslsmith_f_op_f32(f32(-1f) * -498f), -662f, _wgslsmith_f_op_f32(ceil(779f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(380f, 1000f, 878f, 176f), vec4<f32>(-1367f, 1454f, -1084f, 101f)))))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1497f))))), 568f, -1000f, _wgslsmith_div_f32(1000f, 331f)));
    let var_2 = 1i;
    var var_3 = var_1.xw;
    return var_1;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> i32 {
    global1 = array<Struct_2, 18>();
    var var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(arg_1)), 18u)];
    var var_1 = u_input.b;
    var var_2 = var_0.a;
    return abs(select(_wgslsmith_clamp_i32(7114i, 2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(15416i, arg_2), _wgslsmith_mult_i32(1i, -1i))), reverseBits(2147483647i), var_2.a));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_2) -> StorageBuffer {
    return StorageBuffer(u_input.a, arg_1.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(3057i, arg_1.x, 2147483647i, u_input.a.x), u_input.a >> (vec4<u32>(48096u, 0u, 1u, 44886u) % vec4<u32>(32u)))), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, func_3(arg_3.a.b.x, arg_2.x, arg_1.x, vec2<f32>(1000f, -881f))), min(vec2<i32>(1i, -1i) >> (vec2<u32>(u_input.b.x, 19353u) % vec2<u32>(32u)), vec2<i32>(arg_1.x, arg_1.x) & arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_vec4_f32(func_1()), u_input.a.yx, _wgslsmith_sub_vec2_u32(~u_input.b.wy, vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 48388u, 13571u, 0u)), vec4<u32>(2252u, 42393u, 60933u, u_input.d.x)), u_input.d.x)), global1[_wgslsmith_index_u32(~1u, 18u)]);
}

