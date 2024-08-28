struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(14689i, 1i, -36702i, 1i));

var<private> global2: Struct_5 = Struct_5(true, vec3<u32>(55064u, 77172u, 1375u), vec2<i32>(2147483647i, -7333i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_5, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = ~_wgslsmith_mult_u32(arg_0.b.x, 0u);
    let var_1 = -580f;
    global2 = arg_0;
    var var_2 = true;
    var_2 = false;
    return Struct_4(_wgslsmith_mult_u32(~select(0u, 66609u, true) >> (108247u % 32u), arg_0.b.x));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> bool {
    return any(select(arg_0.a.xz, arg_0.a.zy, !all(select(vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(false, global2.a, global2.a, false), vec4<bool>(arg_0.a.x, arg_0.a.x, true, false)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: bool, arg_3: vec3<bool>) -> vec2<bool> {
    global2 = Struct_5(global2.a, firstTrailingBit(min(firstTrailingBit(global2.b), ~global2.b)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(0u), ~global2.b.x, global2.b.x | 35907u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(35932u, 50199u, global2.b.x), global2.b), global2.b.x, _wgslsmith_mod_u32(80121u, global2.b.x))), _wgslsmith_mod_vec2_i32(max(_wgslsmith_add_vec2_i32(global2.c, vec2<i32>(13522i, global1.a.x)), global1.a.wx), abs(abs(select(vec2<i32>(2147483647i, global1.a.x), arg_1.xz, arg_2)))));
    let var_0 = -vec2<i32>(global1.a.x, _wgslsmith_dot_vec3_i32(arg_1, ~global1.a.ywz));
    let var_1 = Struct_2(_wgslsmith_sub_vec4_i32(global1.a, vec4<i32>(_wgslsmith_add_i32(2147483647i, arg_1.x), abs(_wgslsmith_div_i32(2147483647i, u_input.a)), global2.c.x, ~u_input.a)));
    let var_2 = arg_0.x;
    var var_3 = var_0.x;
    return arg_3.zx;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = global2.c.x;
    let var_1 = Struct_2(vec4<i32>(-firstTrailingBit(37926i), _wgslsmith_clamp_i32(0i, global1.a.x, -2147483647i), _wgslsmith_dot_vec3_i32(-(~global1.a.zyy), global1.a.wyw), 2147483647i));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1)), arg_1))), vec2<f32>(_wgslsmith_div_f32(-776f, _wgslsmith_f_op_f32(-1614f - global0.x)), _wgslsmith_f_op_f32(-894f * _wgslsmith_div_f32(arg_1, global0.x))), vec2<bool>(false, arg_2.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1146f * global0.x), _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -442f) * vec2<f32>(arg_1, -943f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-833f, -1119f)) - vec2<f32>(629f, global0.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-481f, 1136f)))), !(!vec2<bool>(global2.a, false))))));
    global2 = Struct_5(true, global2.b, global2.c);
    var var_3 = global2.b;
    return Struct_3(!vec3<bool>(-global2.c.x != select(2147483647i, 0i, false), func_2(Struct_3(vec3<bool>(false, true, global2.a)), Struct_4(0u)) & (arg_1 >= -1000f), !func_2(Struct_3(vec3<bool>(global2.a, true, false)), Struct_4(0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -76165i;
    var var_1 = ~global1.a | ~global1.a;
    var var_2 = global2.b.x;
    let var_3 = Struct_5(true, _wgslsmith_clamp_vec3_u32(vec3<u32>(65442u, _wgslsmith_mult_u32(~global2.b.x, 4294967295u), 45891u), vec3<u32>(0u, global2.b.x, ~49699u), vec3<u32>(~global2.b.x, global2.b.x, _wgslsmith_add_u32(global2.b.x, global2.b.x))), global1.a.xx);
    let var_4 = func_4(-global2.c.x, _wgslsmith_f_op_f32(select(global0.x, 382f, all(!select(vec4<bool>(global2.a, global2.a, false, global2.a), vec4<bool>(true, true, global2.a, true), vec4<bool>(false, global2.a, true, false))))), select(vec2<bool>(func_2(Struct_3(vec3<bool>(var_3.a, false, var_3.a)), func_1(var_3, vec4<f32>(-1000f, -396f, -193f, 343f))), !var_3.a), !func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-469f, global0.x, global0.x)), global1.a.zxx << (var_3.b % vec3<u32>(32u)), !global2.a, vec3<bool>(true, false, global2.a)), global2.a));
    global1 = Struct_2(global1.a);
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1404f * global0.x))), -1236f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))))));
    var var_5 = func_1(var_3, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1166f, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, -1166f, -892f))), false)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, 1894f))), 1260f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1576f)))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(step(global0.x, 1000f))))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(global0.x);
}

