struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

var<private> global1: array<vec3<u32>, 1>;

var<private> global2: vec3<f32>;

var<private> global3: array<vec3<u32>, 5>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    var var_0 = Struct_2(Struct_1(-8304i, 1u < u_input.a));
    global0 = array<Struct_3, 12>();
    let var_1 = Struct_5(vec2<bool>(var_0.a.b, var_0.a.b));
    var_0 = Struct_2(Struct_1(select(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_0.a.a), vec2<i32>(u_input.b.x, 50362i)), u_input.b.xw), var_0.a.a, true), any(!select(vec3<bool>(false, true, var_1.a.x), vec3<bool>(false, arg_1, var_0.a.b), arg_1))));
    var_0 = Struct_2(Struct_1(i32(-1i) * -1i, all(vec2<bool>(false, true))));
    return arg_0;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> Struct_3 {
    let var_0 = vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x) | u_input.b.xz), vec2<i32>(1i, _wgslsmith_mult_i32(-1i, arg_2)));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-150f, 481f, 1730f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x - global2.x))))) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(372f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, 1333f), vec3<f32>(-152f, -385f, 2068f))))));
    var var_1 = vec4<u32>(countOneBits(u_input.a ^ func_3(countOneBits(arg_0), true & arg_1.x)), ~(~4294967295u), abs(~0u), _wgslsmith_div_u32(reverseBits(arg_0) & 63136u, ~_wgslsmith_sub_u32(4294967295u, u_input.a) | 0u));
    var var_2 = Struct_5(vec2<bool>(arg_1.x, ~arg_2 >= _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.xw))));
    global3 = array<vec3<u32>, 5>();
    return global0[_wgslsmith_index_u32(arg_0, 12u)];
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3) -> i32 {
    let var_0 = ~(arg_2.a | (arg_2.a ^ _wgslsmith_div_u32(8114u, 53276u))) >> ((arg_2.a | max(_wgslsmith_mod_u32(u_input.a, _wgslsmith_add_u32(u_input.a, 0u)), ~countOneBits(24904u))) % 32u);
    let var_1 = Struct_2(arg_2.b);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-998f + 1164f), global2.x));
    let var_3 = arg_2.b;
    var var_4 = _wgslsmith_sub_vec2_i32(select(vec2<i32>(0i, var_3.a), u_input.b.yz, arg_1 | any(!vec4<bool>(var_1.a.b, arg_1, false, true))), firstLeadingBit(vec2<i32>(~(i32(-1i) * -28799i), var_3.a)));
    return _wgslsmith_add_i32(~var_4.x, var_3.a);
}

fn func_1() -> u32 {
    global1 = array<vec3<u32>, 1>();
    global3 = array<vec3<u32>, 5>();
    global0 = array<Struct_3, 12>();
    var var_0 = _wgslsmith_sub_vec3_i32(u_input.b.ywx, _wgslsmith_add_vec3_i32(vec3<i32>(28334i, func_4(vec4<i32>(u_input.b.x, u_input.b.x, -9051i, u_input.b.x), false, func_2(u_input.a, vec4<bool>(true, true, false, false), u_input.b.x)), _wgslsmith_mult_i32(u_input.b.x, -1i)), select(u_input.b.yww, vec3<i32>(1i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), func_4(u_input.b, true, global0[_wgslsmith_index_u32(u_input.a, 12u)])), all(vec2<bool>(true, true)))));
    global0 = array<Struct_3, 12>();
    return _wgslsmith_mod_u32(u_input.a, ~(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(~func_1(), u_input.a), _wgslsmith_div_u32(~(u_input.a | ~9713u), ~func_1()), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, vec4<i32>(func_2(4294967295u, !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), ~(-41276i) ^ _wgslsmith_dot_vec2_i32(u_input.b.xw, vec2<i32>(u_input.b.x, u_input.b.x))).b.a, i32(-1i) * -46989i, firstLeadingBit(func_4(u_input.b, any(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(~66043u, 12u)])), u_input.b.x | -func_2(32331u, vec4<bool>(true, true, false, false), u_input.b.x).b.a), countOneBits(abs(vec3<u32>(99279u, var_0.x, var_0.x))) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 25052u, 1u), ~vec3<u32>(0u, u_input.a, 33780u)), _wgslsmith_mult_u32(26635u, var_0.x));
}

