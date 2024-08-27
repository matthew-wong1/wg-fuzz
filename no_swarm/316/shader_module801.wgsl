struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<vec2<i32>, 19>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-1290f, 1000f, -724f), vec3<i32>(i32(-2147483648), 0i, 0i));

var<private> global3: array<vec4<bool>, 15>;

var<private> global4: vec3<u32> = vec3<u32>(1u, 56927u, 226u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = global2.b.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_2 = _wgslsmith_f_op_f32(max(591f, -146f));
    global0 = array<Struct_1, 12>();
    var_2 = arg_0;
    return global0[_wgslsmith_index_u32(58995u, 12u)];
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(global2.a.x - global2.a.x);
    var var_1 = global2.b.x;
    var var_2 = Struct_1(global2.a, global2.b);
    let var_3 = Struct_1(vec3<f32>(var_2.a.x, global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-115f, global2.a.x)))), abs(vec3<i32>(var_2.b.x, var_2.b.x, 25604i)));
    let var_4 = all(!vec2<bool>(true, any(vec2<bool>(true, true))));
    return func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -839f), _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -929f))))));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(~54272u, 12u)];
    var var_1 = Struct_1(global2.a, ~(-countOneBits(_wgslsmith_div_vec3_i32(var_0.b, var_0.b))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 12u)];
    global4 = countOneBits(arg_1.zzy);
    global4 = ~(arg_1.xww >> ((vec3<u32>(_wgslsmith_div_u32(1022u, global4.x), ~arg_1.x, ~62034u) >> ((select(vec3<u32>(40588u, 63175u, arg_1.x), vec3<u32>(69806u, 4294967295u, 19157u), vec3<bool>(arg_0, arg_0, true)) << (arg_1.wwz % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return var_0.b;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec3<i32> {
    var var_0 = arg_0;
    var var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(~_wgslsmith_add_u32(29000u, 1u)), arg_1.x, ~countOneBits(46640u)), 15u)];
    var_0 = !any(vec2<bool>(arg_0, any(!vec4<bool>(true, var_1.x, false, var_1.x))));
    let var_2 = Struct_1(vec3<f32>(1f, arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1217f, arg_2.a.x, all(var_1.zwy))))), global2.b);
    let var_3 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.x))), 490f));
    return _wgslsmith_div_vec3_i32(arg_2.b, vec3<i32>(global2.b.x << (4294967295u % 32u), reverseBits(countOneBits(_wgslsmith_sub_i32(var_2.b.x, 2147483647i))), var_3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    global2 = func_1(vec2<u32>(4079u, ~(~firstTrailingBit(u_input.a.x))));
    global3 = array<vec4<bool>, 15>();
    let var_0 = vec2<bool>(false, true);
    var var_1 = ~vec4<u32>(43905u, reverseBits(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x, global4.x), 1u)), u_input.a.x, 0u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(global2.a - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.a.x, -698f, 1000f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -413f), func_2(global2.a.x).a.x))), -func_4(var_0.x, vec3<u32>(1u, global4.x << (u_input.a.x % 32u), var_1.x), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-722f, 1574f, global2.a.x) + vec3<f32>(global2.a.x, 2631f, 724f)), func_3(false, vec4<u32>(1u, u_input.a.x, global4.x, global4.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1139f, global2.a.x, global2.a.x, -344f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.a.x, global2.a.x, -670f, -226f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1599f, 346f, _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(min(1000f, -1000f))).a.x), var_2.a.x));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(600f)))), var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(var_2.b.x) >> (global4.x % 32u)), ~(~1u & _wgslsmith_mult_u32(~u_input.a.x, reverseBits(global4.x))), ~(~var_1.zww), 0u);
}

