struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<f32>;

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 16>;

var<private> global4: array<vec3<u32>, 28>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = u_input.a.x;
    var_0 = 1u;
    global4 = array<vec3<u32>, 28>();
    var var_1 = select(true, arg_0, arg_0);
    global2 = ~u_input.a.x >= u_input.a.x;
    return global3[_wgslsmith_index_u32(u_input.a.x, 16u)];
}

fn func_3() -> vec2<f32> {
    var var_0 = false;
    let var_1 = Struct_2(global1.xz, func_1(any(vec3<bool>(true, true, true))), vec4<i32>(u_input.b, u_input.b, u_input.b, ~(~_wgslsmith_mult_i32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x)))) + global1.x), -1699f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -269f))));
    global2 = false;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, global1.x), global1.xz))))), global3[_wgslsmith_index_u32(u_input.a.x, 16u)], min(vec4<i32>(min(var_1.b.a, u_input.b), firstLeadingBit(-u_input.b), 40392i, ~0i), abs(vec4<i32>(~u_input.b, i32(-1i) * -8689i, ~(-22637i), firstLeadingBit(2147483647i)))), _wgslsmith_f_op_f32(min(var_1.a.x, global1.x)), true);
    let var_3 = max(var_1.c, firstTrailingBit(firstLeadingBit(vec4<i32>(31757i, 2147483647i, i32(-1i) * -8655i, -28067i))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(2122f, -510f));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(!(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), false))));
    global4 = array<vec3<u32>, 28>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global1.wz - global1.ww))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, arg_0) - global1.ww) + _wgslsmith_f_op_vec2_f32(func_3())))))), Struct_1(-reverseBits(0i)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), arg_2.a, abs(arg_2.a), u_input.b), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b, 1i, 0i), vec4<i32>(2147483647i, 57569i, u_input.b, arg_2.a))), vec4<i32>(u_input.b, select(arg_2.a, arg_2.a, !var_0.a.x), -(i32(-1i) * -10019i), _wgslsmith_add_i32(_wgslsmith_mod_i32(12209i, 40407i), _wgslsmith_add_i32(-2147483647i, arg_2.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), 700f), true);
    global0 = ~(i32(-1i) * -1i);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2002f, 991f, arg_0, 303f) * vec4<f32>(var_1.a.x, -957f, -454f, -318f)))))));
    return Struct_3(select(vec2<bool>(true, ~u_input.a.x < _wgslsmith_mult_u32(51085u, u_input.a.x)), vec2<bool>(true, var_1.e), true));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<u32>, 28>();
    let var_0 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, 1f)))), _wgslsmith_f_op_vec2_f32(global1.xw + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), -807f))), func_1(false));
    global1 = vec4<f32>(137f, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, -444f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * global1.x), 1350f)) - global1.x), _wgslsmith_f_op_f32(trunc(global1.x)));
    global0 = -(~1i);
    global2 = select(true, var_0.a.x, !((0u & _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) > abs(u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, firstTrailingBit(~(~57789u)));
}

