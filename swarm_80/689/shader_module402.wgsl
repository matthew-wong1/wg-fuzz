struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
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

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 26>;

var<private> global2: i32;

var<private> global3: Struct_2 = Struct_2(vec4<bool>(false, true, true, false), vec2<i32>(-35098i, 1i), vec3<i32>(287i, 1i, -10204i));

var<private> global4: Struct_1 = Struct_1(-26329i, -3846i, -5798i, 4294967295u, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = u_input.c;
    let var_1 = -297f;
    var var_2 = global3.a.zwy;
    var_0 = ~arg_0;
    var_0 = firstLeadingBit(u_input.c);
    return global1[_wgslsmith_index_u32(1u, 26u)];
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    var var_0 = u_input.c.yy;
    var var_1 = 1i;
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(global4.b, 1i, global4.c, -8222i), vec4<i32>(2147483647i, arg_1.b.x, 2147483647i, -1071i), vec4<i32>(-2147483647i, u_input.e.x, u_input.d.x, -25148i)) | vec4<i32>(reverseBits(global3.c.x), -22452i, global3.b.x, arg_1.c.x), vec4<i32>(global4.c, _wgslsmith_add_i32(global4.c ^ global3.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.x, u_input.a), arg_1.c.zz)), -2147483647i ^ arg_1.b.x, arg_1.c.x)), ~firstTrailingBit(countOneBits(_wgslsmith_mod_i32(2147483647i, u_input.b))), global3.b.x, 9851u, !arg_1.a.x);
    let var_3 = arg_1.a.x;
    let var_4 = ~u_input.c.yy;
    return arg_0.x;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1043f, -930f, true))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(211f, 550f) * vec2<f32>(-1761f, 950f)), func_2(u_input.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, -1699f, -1000f, 1000f)), true)), global3.c.x == _wgslsmith_div_i32(arg_3.x, 8420i))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1496f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-960f, 835f)))));
    var var_2 = arg_2.xzw;
    var var_3 = Struct_1(select(u_input.d.x, _wgslsmith_sub_i32(0i, 15143i), false), 27090i, _wgslsmith_sub_i32(~abs(global3.b.x), _wgslsmith_mult_i32(global3.c.x >> (abs(44027u) % 32u), _wgslsmith_mult_i32(max(1i, global4.a), -arg_3.x))), ~(~(~1u << (_wgslsmith_clamp_u32(17856u, global0.x, 1u) % 32u))), !select(true, global4.e, select(global4.e, global3.a.x, arg_0) || true));
    var var_4 = -global4.c;
    return global1[_wgslsmith_index_u32(arg_1.x, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false, vec2<u32>(global4.d, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global4.d, 85537u, global0.x), 48433u)), vec4<bool>(false, !global4.e, !global3.a.x, global3.a.x), vec2<i32>(-27073i, _wgslsmith_sub_i32(-51792i, 1i)));
    var var_1 = ~countOneBits(vec4<u32>(global4.d, 43868u, u_input.c.x, ~(~global0.x)));
    let var_2 = !global4.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1240f)), _wgslsmith_f_op_f32(func_3(vec2<f32>(-731f, -285f), Struct_2(vec4<bool>(true, global3.a.x, true, false), vec2<i32>(var_0.c.x, -1i), vec3<i32>(global4.b, global4.b, global4.c)), vec4<f32>(-708f, 331f, 1000f, -244f), false)))), _wgslsmith_f_op_f32(1226f * -491f), var_0.a.x))));
}

