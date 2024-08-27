struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: vec4<f32>;

var<private> global2: f32 = 1000f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec2<u32>) -> bool {
    var var_0 = select(select(vec2<bool>(arg_0.a, any(!vec3<bool>(arg_0.a, false, arg_0.a))), !select(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, arg_0.a), true), select(vec2<bool>(arg_0.a, false), vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, false)), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, false))), arg_0.a), vec2<bool>(any(select(vec2<bool>(arg_0.a, true), vec2<bool>(false, false), vec2<bool>(true, arg_0.a))) == true, all(vec2<bool>(true, true))), select(!select(!vec2<bool>(true, arg_0.a), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, false)), select(true, arg_0.a, true)), !select(vec2<bool>(false, false), vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a)), select(vec2<bool>(!arg_0.a, all(vec3<bool>(true, arg_0.a, arg_0.a))), select(vec2<bool>(true, arg_0.a), vec2<bool>(true, arg_0.a), !arg_0.a), arg_0.a)));
    return true;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_3, 10>();
    let var_0 = 1258f;
    global2 = global1.x;
    var var_1 = _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-2296f - global1.x));
    let var_2 = Struct_4(true);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-global1.ww), !vec2<bool>(!func_3(var_2, vec4<f32>(global1.x, -1564f, 243f, var_0), vec2<u32>(u_input.c, 27311u)), true), ~vec3<u32>(0u, ~u_input.c, 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, 965f, global1.x), _wgslsmith_f_op_vec3_f32(-global1.xwy), u_input.a.x <= 2147483647i)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(global1.xyw)))), true))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = ~61764u;
    var var_1 = func_2();
    let var_2 = func_2();
    var var_3 = 889f != arg_0;
    let var_4 = global0[_wgslsmith_index_u32(var_1.c.x, 10u)];
    return func_2();
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = ~(~(~(-1i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1532f) + 1075f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) + _wgslsmith_f_op_f32(abs(416f)))))));
    var var_2 = ~_wgslsmith_sub_u32(~(~(~u_input.c)), arg_1.b.c.x);
    var_0 = -2147483647i;
    let var_3 = !vec4<bool>(false && select(true, true, 1u > arg_1.b.c.x), !select(false, all(vec4<bool>(true, true, arg_1.d.b.x, false)), true | arg_1.d.b.x), arg_0.x, arg_1.d.b.x);
    return Struct_4(!func_3(Struct_4(true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -294f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(661f, -620f, var_1.x, global1.x) + vec4<f32>(215f, 980f, -466f, -273f))), countOneBits(vec2<u32>(9762u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 10>();
    let var_0 = Struct_5(u_input.d.x, func_4(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), Struct_2(_wgslsmith_dot_vec3_i32(u_input.a.yyy, u_input.b.zzy) | max(u_input.a.x, -26916i), func_1(_wgslsmith_div_f32(903f, -725f)), 180f, func_1(_wgslsmith_f_op_f32(f32(-1f) * -137f)))), _wgslsmith_f_op_f32(-global1.x));
    let var_1 = Struct_2(var_0.a, func_2(), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))), func_1(1348f));
    let var_2 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(60620u, _wgslsmith_dot_vec3_u32(vec3<u32>(13177u, var_1.b.c.x, 1u), var_1.b.c), 1u, ~var_1.d.c.x), firstLeadingBit(vec4<u32>(18280u, var_1.b.c.x, 1u, 40055u) >> (vec4<u32>(u_input.c, 4294967295u, var_1.b.c.x, 4294967295u) % vec4<u32>(32u)))), max(~countOneBits(vec4<u32>(var_1.b.c.x, 4294967295u, 1u, u_input.c)), vec4<u32>(4294967295u, 0u, ~24336u, 35655u)));
    var var_3 = 1i;
    var var_4 = Struct_5(-(~_wgslsmith_div_i32(i32(-1i) * -1i, firstLeadingBit(var_1.a))), var_0.b, 1000f);
    var_3 = abs(_wgslsmith_mult_i32(i32(-1i) * -14921i, 1i));
    global0 = array<Struct_3, 10>();
    var var_5 = var_1.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-631f)), var_1.d.c.x, reverseBits(var_4.a), 20944u);
}

