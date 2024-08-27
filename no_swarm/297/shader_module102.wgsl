struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 11>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: u32) -> f32 {
    global2 = array<Struct_3, 11>();
    let var_0 = all(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), false));
    global2 = array<Struct_3, 11>();
    let var_1 = Struct_2(Struct_1(countOneBits(arg_2 >> (arg_3 % 32u)), _wgslsmith_f_op_f32(max(409f, arg_0))), ~(-vec2<i32>(-2147483647i, min(arg_2, arg_2))));
    global2 = array<Struct_3, 11>();
    return _wgslsmith_f_op_f32(-1477f + 370f);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -2133f), u_input.b.x & 1841i, _wgslsmith_mod_i32(1i, u_input.b.x), global1.a.x << (global1.a.x % 32u)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(199f + _wgslsmith_div_f32(-1281f, 877f)) - _wgslsmith_f_op_f32(round(-2795f)))) + -492f);
    global2 = array<Struct_3, 11>();
    global1 = global2[_wgslsmith_index_u32(0u, 11u)];
    global2 = array<Struct_3, 11>();
    global1 = global2[_wgslsmith_index_u32(global1.a.x, 11u)];
    return true;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_sub_vec2_i32(u_input.b.xy, _wgslsmith_mult_vec2_i32(u_input.b.zy, var_0.zy));
    global0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~5960u, 1u), vec2<u32>(global1.a.x, abs(select(global1.a.x, 1u, any(vec4<bool>(true, true, false, true))))));
    var var_2 = func_2();
    let var_3 = 53029i;
    return arg_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> u32 {
    let var_0 = -_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(-1i) * -vec2<i32>(arg_0.b.x, u_input.a)), arg_0.b);
    global0 = ~select(~1u, global1.a.x, abs(~0i) <= _wgslsmith_clamp_i32(arg_0.b.x, arg_2.b.x, -2147483647i));
    return firstLeadingBit(~_wgslsmith_add_u32(global1.a.x & ~30043u, global1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~func_4(Struct_2(Struct_1(10335i, -1970f), vec2<i32>(0i, u_input.c)), _wgslsmith_f_op_f32(func_1(Struct_1(43646i, -335f))), Struct_2(Struct_1(u_input.b.x, -711f), u_input.b.xy)) << (global1.a.x % 32u);
    global0 = 1u;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-363f, -1207f, 394f, -2323f) + vec4<f32>(-1105f, -1797f, -1021f, -1630f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-406f, -249f, 1425f, 246f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-343f, 1709f, -720f, 418f))))));
    var var_1 = vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c | u_input.b.x, 1i & _wgslsmith_div_i32(u_input.b.x, 0i), ~min(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(-u_input.b, min(u_input.b, u_input.b))), -(~(~vec4<i32>(-1i, u_input.a, u_input.c, 4999i)))), u_input.c >> (global1.a.x % 32u));
    global1 = Struct_3(countOneBits(vec2<u32>(func_4(Struct_2(Struct_1(u_input.a, var_0.x), u_input.b.zx), _wgslsmith_f_op_f32(floor(-1019f)), Struct_2(Struct_1(-27194i, -389f), vec2<i32>(-2147483647i, u_input.c))), 0u)));
    var var_2 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~global1.a.x), var_0.x);
}

