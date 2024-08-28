struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), 1i, vec4<f32>(2330f, 322f, 1180f, 1254f), vec4<f32>(-1194f, -613f, 1446f, -1726f));

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<Struct_2, 25>;

var<private> global3: array<Struct_1, 17>;

var<private> global4: array<Struct_2, 22>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(reverseBits(u_input.a.x), 22u)];
    let var_1 = _wgslsmith_f_op_f32(ceil(-1321f));
    var var_2 = u_input.a.x;
    return max(max(~(~(~u_input.a.x)), u_input.a.x), u_input.a.x);
}

fn func_2(arg_0: f32, arg_1: f32) -> u32 {
    global2 = array<Struct_2, 25>();
    global3 = array<Struct_1, 17>();
    global1 = global0.a;
    var var_0 = global1.x;
    let var_1 = vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(u_input.a.x, func_3(Struct_1(global0.a, -23629i, vec4<f32>(-679f, -101f, arg_0, 1895f), vec4<f32>(607f, -142f, 113f, arg_1)), true, Struct_1(global0.a, 20240i, vec4<f32>(-1686f, 346f, -1286f, -263f), vec4<f32>(-412f, arg_1, arg_1, -199f))), 48925u, u_input.a.x)), u_input.a.x);
    return ~countOneBits(0u);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    global0 = global3[_wgslsmith_index_u32(abs(~1u), 17u)];
    let var_0 = func_2(_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(sign(global0.c.x))), global0.c.x);
    let var_1 = !(global0.b != u_input.b.x);
    global3 = array<Struct_1, 17>();
    return select(_wgslsmith_clamp_u32(80124u, abs(firstTrailingBit(reverseBits(arg_1))), _wgslsmith_add_u32(617u, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, 20656u), ~arg_0.x))), u_input.a.x, !all(select(!vec4<bool>(global0.a.x, false, var_1, true), vec4<bool>(global1.x, global1.x, global0.a.x, global0.a.x), !vec4<bool>(false, global0.a.x, global1.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(func_1(firstLeadingBit(firstLeadingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, 1637u), max(u_input.a.yz, vec2<u32>(104353u, 4294967295u))))), u_input.a.x), 22u)];
    var var_1 = var_0.b.c.x;
    var var_2 = 34489i <= _wgslsmith_mod_i32(var_0.b.b, reverseBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.b.x)), -36340i << (u_input.a.x % 32u))));
    var var_3 = _wgslsmith_div_u32(~u_input.a.x, ~(~u_input.a.x));
    global3 = array<Struct_1, 17>();
    let var_4 = global0.c;
    let var_5 = Struct_2(global0.a.x, global3[_wgslsmith_index_u32(3466u, 17u)]);
    let var_6 = Struct_1(!(!global0.a), _wgslsmith_sub_i32(-10251i, global0.b), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_5.b.c * vec4<f32>(-1431f, -1644f, var_5.b.d.x, 1216f)), var_0.b.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, var_5.b.d.x, global0.c.x, global0.d.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, var_4.x, global0.c.x, 2816f))))))), var_5.b.d);
    let x = u_input.a;
    s_output = StorageBuffer(-590f, _wgslsmith_f_op_f32(857f + -309f), var_6.d.x);
}

