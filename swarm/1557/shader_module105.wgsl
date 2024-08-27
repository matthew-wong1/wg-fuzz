struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<bool, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_2(vec4<bool>(false, all(global0.yy), true, all(!global0.zy)), u_input.c);
    global3 = array<bool, 14>();
    return vec3<bool>(all(var_0.a), any(select(var_0.a, vec4<bool>(true, true, true, true), vec4<bool>(select(global3[_wgslsmith_index_u32(65961u, 14u)], true, var_0.a.x), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_0.b.x), 14u)], true, var_0.a.x))), any(!var_0.a) & !var_0.a.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> bool {
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>) -> bool {
    let var_0 = Struct_2(arg_0.a, ~u_input.c);
    let var_1 = var_0;
    global0 = vec3<bool>(func_2(!vec2<bool>(global0.x, all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 14u)], false, global0.x, false))), arg_0), false, var_0.b.x <= firstLeadingBit(_wgslsmith_div_u32(~var_0.b.x, ~var_0.b.x)));
    global3 = array<bool, 14>();
    let var_2 = Struct_1(1000f, firstTrailingBit(reverseBits(global2.d)), _wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(-1110f + global2.a)), -16497i >> (u_input.b.x % 32u));
    return global3[_wgslsmith_index_u32(arg_2.x, 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 14>();
    let var_0 = select(select(func_1(global1.b, vec3<f32>(_wgslsmith_f_op_f32(trunc(-455f)), global2.c, -1195f)), func_1(2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(854f, -2115f, 106f))), !vec3<bool>(any(vec4<bool>(false, global0.x, global3[_wgslsmith_index_u32(u_input.a, 14u)], global0.x)), global0.x & global3[_wgslsmith_index_u32(4378u, 14u)], global3[_wgslsmith_index_u32(4294967295u, 14u)])), vec3<bool>(global1.c >= _wgslsmith_f_op_f32(f32(-1f) * -1029f), !func_2(global0.xz, Struct_2(vec4<bool>(global3[_wgslsmith_index_u32(849u, 14u)], global3[_wgslsmith_index_u32(u_input.c.x, 14u)], true, false), u_input.c)), func_3(Struct_2(!vec4<bool>(true, global3[_wgslsmith_index_u32(80876u, 14u)], global3[_wgslsmith_index_u32(52077u, 14u)], global3[_wgslsmith_index_u32(u_input.c.x, 14u)]), _wgslsmith_mult_vec4_u32(u_input.c, u_input.c)), 62156u, _wgslsmith_div_vec4_u32(~u_input.c, ~u_input.c))), !(u_input.b.x < ~42507u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(global2.a)), global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))) + _wgslsmith_f_op_f32(-global1.c)), -(~max(min(global1.b, 2147483647i), i32(-1i) * -1i)));
    let var_2 = (true | !all(var_0.zx)) != (24568u >= u_input.c.x);
    global0 = var_0;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(127f + global1.a))))), _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(global2.d, global2.b)), vec2<i32>(1i, global2.d)), ~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(34598i, var_1.d)), max(vec2<i32>(2147483647i, -88950i), vec2<i32>(var_1.d, -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.c, _wgslsmith_div_f32(-152f, -689f)))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d, 1i, _wgslsmith_clamp_i32(-global1.d, max(var_1.b, global2.b), global1.b)), ~max(vec3<i32>(var_1.b, 2147483647i, -23302i) >> (u_input.b % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-34063i, 35846i, var_1.d)))));
    global2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec4<i32>(min(var_1.d, -5936i), global1.b, global2.b, var_1.d)), u_input.d.x);
}

