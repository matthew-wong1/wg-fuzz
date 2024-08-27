struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<f32> = vec2<f32>(-1000f, 127f);

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_2, 21>;

var<private> global4: f32 = -1824f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = select(arg_0.b.x, 38602u, true);
    global2 = u_input.c;
    let var_1 = Struct_2(3455i, vec3<u32>(firstTrailingBit(max(u_input.e, _wgslsmith_clamp_u32(arg_0.b.x, u_input.e, 0u))), _wgslsmith_dot_vec3_u32(arg_0.b, ~vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)), ~0u), _wgslsmith_f_op_f32(-477f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(535f)))) + -663f)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1173f * _wgslsmith_f_op_f32(ceil(-1161f))), _wgslsmith_f_op_f32(-1513f * var_1.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-166f, global0.x), _wgslsmith_f_op_f32(-global0.x)))) - vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1709f + -953f))));
    let var_2 = Struct_1(false);
    return _wgslsmith_f_op_f32(ceil(-1430f));
}

fn func_2(arg_0: u32) -> f32 {
    global2 = u_input.c;
    return _wgslsmith_div_f32(1291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(971f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.c.x, vec3<u32>(u_input.d.x, arg_0, 1279u), -1283f))) * _wgslsmith_f_op_f32(-global0.x))))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> vec2<f32> {
    global2 = vec2<i32>(-1i) * -u_input.c;
    var var_0 = u_input.e;
    let var_1 = _wgslsmith_mod_i32(firstTrailingBit(global2.x) << (_wgslsmith_sub_u32(abs(u_input.d.x ^ u_input.e), ~u_input.e) % 32u), -32885i);
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * global0.x), _wgslsmith_f_op_f32(-629f + global0.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_2(2229u)))), -201f)));
    let var_2 = true;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 381f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(global1.x, Struct_1(false), true, vec3<bool>(false, false, false))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1501f, global1.x) + vec2<f32>(global0.x, global1.x))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * vec2<f32>(134f, 308f)), vec2<f32>(517f, global1.x))))))));
    let var_0 = Struct_3(_wgslsmith_sub_i32(-(reverseBits(global2.x) >> ((4294967295u ^ u_input.d.x) % 32u)), ~(-6423i)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(u_input.d.x), abs(0u)), 21u)], Struct_2(~max(-9712i, -2147483647i), ~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.e, u_input.d.x, u_input.d.x), ~vec3<u32>(u_input.d.x, u_input.e, 1u)), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(-48692i), ~_wgslsmith_mult_i32(-var_0.a, 0i & global2.x), global2.x >> (u_input.d.x % 32u), -global2.x & -1i), _wgslsmith_dot_vec3_u32(var_0.b.b, ~(~(vec3<u32>(49189u, var_0.b.b.x, 97885u) & vec3<u32>(var_0.c.b.x, 0u, u_input.d.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(607f, _wgslsmith_f_op_f32(f32(-1f) * -2528f), global1.x, global1.x), vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f)), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1822f), true)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-var_0.c.c))))));
}

