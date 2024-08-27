struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: Struct_1 = Struct_1(83493u, false, vec3<f32>(1059f, 687f, -2601f), false);

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_2, 4>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1194f, arg_1.d.c.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1326f, -1150f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1098f, -736f)))))) * _wgslsmith_f_op_vec2_f32(abs(arg_1.d.c.zy)));
    let var_1 = global2.x;
    let var_2 = !global2.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(global1.c)))) + arg_1.d.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.d.c * vec3<f32>(global0[_wgslsmith_index_u32(arg_1.d.a, 19u)], -757f, global1.c.x))) + _wgslsmith_f_op_vec3_f32(sign(arg_1.d.c))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1795f, global1.c.x, var_0.x)) + vec3<f32>(-112f, global0[_wgslsmith_index_u32(global1.a, 19u)], var_0.x)), global1.c))));
    let var_4 = true;
    return vec4<u32>(~global1.a, global1.a, _wgslsmith_add_u32(arg_1.d.a, ~0u), global1.a);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>) -> u32 {
    var var_0 = Struct_1(global1.a | _wgslsmith_mult_u32(global1.a, _wgslsmith_dot_vec4_u32(func_3(u_input.a, Struct_2(vec4<f32>(-421f, arg_1.x, 499f, global1.c.x), -9196i, 825f, Struct_1(47461u, false, vec3<f32>(-1307f, -969f, global0[_wgslsmith_index_u32(39919u, 19u)]), true), arg_0.xy)), vec4<u32>(26179u, global1.a, global1.a, global1.a))), u_input.a >= u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1865f + global1.c.x) - global1.c.x), _wgslsmith_f_op_f32(ceil(-821f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global1.c.x * -1000f), arg_1.x, _wgslsmith_f_op_f32(-112f - arg_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, -455f, global1.c.x) - global1.c)), vec3<bool>(all(vec2<bool>(global1.d, true)), global1.a <= 0u, global1.b)))), true);
    let var_1 = global3[_wgslsmith_index_u32(var_0.a, 4u)];
    global2 = vec4<bool>(all(select(!vec4<bool>(true, var_1.d.b, global2.x, global2.x), vec4<bool>(true, var_1.d.d, true && var_0.d, any(vec3<bool>(global1.b, var_1.d.b, var_0.d))), !var_1.d.b)), false, global1.b || true, _wgslsmith_f_op_f32(max(global1.c.x, _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(exp2(arg_1.x))))) != global1.c.x);
    let var_2 = _wgslsmith_mult_u32(20310u, 1u) & _wgslsmith_dot_vec3_u32(~vec3<u32>(~0u, _wgslsmith_mult_u32(global1.a, var_0.a), firstLeadingBit(4294967295u)), vec3<u32>(4294967295u, max(5249u, _wgslsmith_mult_u32(4294967295u, 0u)), 10246u));
    let var_3 = var_1.d;
    return countOneBits(global1.a);
}

fn func_1(arg_0: u32) -> StorageBuffer {
    global1 = Struct_1(0u, !all(vec3<bool>(true, global1.d, global2.x)), vec3<f32>(196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.c.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 19u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1391f))))), !any(!select(vec4<bool>(global1.d, global2.x, true, true), vec4<bool>(global2.x, global2.x, global2.x, global1.b), true)));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(404f + 812f), global1.c.x, all(!vec4<bool>(global1.b, global2.x, global1.d, false))))), -141f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_2(vec3<i32>(u_input.a, u_input.a, -1i), vec2<f32>(1536f, global1.c.x)), _wgslsmith_div_u32(arg_0, 1u)), 19u)])), global0[_wgslsmith_index_u32(arg_0, 19u)]);
    let var_1 = ~(~_wgslsmith_sub_u32(~93459u, ~arg_0)) << (22906u % 32u);
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1779f), 1159f, 230f, global1.c.x)))));
    global2 = vec4<bool>(any(!vec2<bool>(false, all(global2.wyy))), 2180f < global0[_wgslsmith_index_u32(func_2(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(exp2(var_0.ww))), 19u)], !all(!global2.zy), true);
    return StorageBuffer(-(~1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -3682i, 1i), vec4<i32>(-2147483647i, u_input.a, 0i, u_input.a)), -2641i << (func_2(vec3<i32>(u_input.a, u_input.a, u_input.a), var_0.yw) % 32u), _wgslsmith_clamp_i32(u_input.a, -1i, _wgslsmith_sub_i32(u_input.a, u_input.a)), -u_input.a << (~var_1 % 32u)), -vec4<i32>(u_input.a, u_input.a, -2147483647i & u_input.a, firstTrailingBit(3251i))), countOneBits(countOneBits(abs(abs(vec3<i32>(u_input.a, 2147483647i, u_input.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let x = u_input.a;
    s_output = func_1(4294967295u);
}

