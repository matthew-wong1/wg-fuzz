struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<u32>, 29>;

var<private> global2: u32 = 22941u;

var<private> global3: Struct_5 = Struct_5(vec2<i32>(0i, 62793i), Struct_3(Struct_2(Struct_1(vec4<f32>(-1210f, -949f, -940f, -167f), vec2<i32>(-1i, -63162i)))));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: f32) -> vec2<i32> {
    var var_0 = abs(~(global0.x | min(21187u, u_input.d)) & 4294967295u);
    let var_1 = _wgslsmith_sub_vec3_u32(~(~global1[_wgslsmith_index_u32(global0.x, 29u)]), vec3<u32>(~countOneBits(12046u), ~_wgslsmith_mod_u32(reverseBits(23700u), 1u), _wgslsmith_dot_vec2_u32(select(min(vec2<u32>(33396u, 0u), vec2<u32>(4294967295u, 99844u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(global0.x, global0.x)), true), max(vec2<u32>(global0.x, 0u) << (vec2<u32>(31778u, 44027u) % vec2<u32>(32u)), vec2<u32>(global0.x, 67816u)))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-global3.b.a.a.a), arg_2);
    var var_3 = !(!vec3<bool>(true && all(vec3<bool>(false, true, true)), true, true));
    var var_4 = Struct_3(global3.b.a);
    return u_input.a.xy;
}

fn func_2(arg_0: i32) -> vec2<i32> {
    var var_0 = global3.b.a.a;
    var var_1 = Struct_3(global3.b.a);
    global2 = u_input.b;
    let var_2 = true;
    var var_3 = Struct_2(global3.b.a.a);
    return func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2193f + var_1.a.a.a.x)), 1726f)), _wgslsmith_div_i32(2147483647i, select(var_0.b.x, ~arg_0, all(vec2<bool>(false, true)))), ~reverseBits(global3.a.x), -417f) ^ vec2<i32>(1i, -var_1.a.a.b.x);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    global1 = array<vec3<u32>, 29>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(-410f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global3.b.a.a.a.x, _wgslsmith_f_op_f32(round(global3.b.a.a.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(896f))), all(!select(vec2<bool>(false, arg_3), vec2<bool>(false, true), vec2<bool>(arg_3, arg_3))))), arg_2.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.a.a.a.x - 476f))))));
    global3 = Struct_5(_wgslsmith_add_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(-arg_2.b, u_input.a.zy & arg_1, ~vec2<i32>(global3.b.a.a.b.x, 0i))), -_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(arg_0, -13203i)), -arg_1)), global3.b);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + var_0.x))), arg_2.a.x, -1028f, var_0.x)), (firstTrailingBit(func_2(arg_2.b.x)) & ~(arg_2.b << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)))) | u_input.a.zx);
    let var_2 = global3.b.a.a;
    return !vec4<bool>(any(!vec3<bool>(arg_3, arg_3, arg_3)), !(_wgslsmith_f_op_f32(-global3.b.a.a.a.x) < _wgslsmith_f_op_f32(-global3.b.a.a.a.x)), true, arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(28795u, ~(u_input.c & _wgslsmith_mult_u32(19192u, u_input.d))), 4294967295u >> (abs(global0.x) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(~firstTrailingBit(20798u), global0.x >> (~u_input.c % 32u), _wgslsmith_mult_u32(global0.x ^ 57339u, _wgslsmith_mod_u32(0u, global0.x))), ~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.x, 4294967295u, ~u_input.c), 29u)]), countOneBits(u_input.c));
    var_0 = ~select(vec4<u32>(global0.x, ~countOneBits(u_input.b), u_input.d << (global0.x % 32u), 1u), vec4<u32>(countOneBits(select(var_0.x, 11018u, false)), ~0u, 4294967295u, countOneBits(u_input.b)), select(vec4<bool>(false, true, true, true), select(func_1(global3.a.x, u_input.a.zz, global3.b.a.a, true), vec4<bool>(false, false, false, false), true), any(vec4<bool>(true, false, false, true))));
    let var_1 = abs(vec3<i32>(u_input.a.x, -global3.b.a.a.b.x, -2147483647i));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.b.a.a.a.zz), _wgslsmith_f_op_vec2_f32(select(global3.b.a.a.a.wx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.b.a.a.a.x, 535f)))))), select(func_1(global3.a.x, _wgslsmith_mult_vec2_i32(u_input.a.xy, vec2<i32>(global3.b.a.a.b.x, -2147483647i)), Struct_1(global3.b.a.a.a, global3.b.a.a.b), true).zy, vec2<bool>(all(vec3<bool>(false, true, true)), true), vec2<bool>(true, true)))));
    var var_3 = Struct_4(vec4<f32>(global3.b.a.a.a.x, _wgslsmith_f_op_f32(var_2.x + -1742f), _wgslsmith_f_op_f32(var_2.x - var_2.x), global3.b.a.a.a.x), 0i);
    var var_4 = Struct_3(global3.b.a);
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(676f, var_4.a.a.a.x, 899f, var_2.x) + var_3.a) * global3.b.a.a.a))), ~var_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_2 - global3.b.a.a.a.xz)))) - _wgslsmith_f_op_vec2_f32(var_3.a.wz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.a.a.a.xz) + vec2<f32>(var_4.a.a.a.x, var_2.x)))));
}

