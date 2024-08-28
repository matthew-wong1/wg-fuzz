struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20>;

var<private> global1: Struct_1 = Struct_1(676f, vec3<i32>(0i, 17806i, -1i), -166f, -591f, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-global1.a);
    global0 = array<vec2<f32>, 20>();
    return _wgslsmith_mod_i32(_wgslsmith_sub_i32(~0i, u_input.a), u_input.b.x);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = arg_3;
    global0 = array<vec2<f32>, 20>();
    global1 = arg_2;
    let var_0 = arg_2.b.x;
    var var_1 = u_input.e;
    return _wgslsmith_f_op_f32(trunc(arg_3.d));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> f32 {
    global0 = array<vec2<f32>, 20>();
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1077f), global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(2319f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.e.x, vec2<u32>(u_input.e.x, 47631u), arg_0, Struct_1(-1154f, vec3<i32>(-2147483647i, u_input.d, 1i), arg_0.c, global1.a, arg_0.e))), arg_0.c) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.d, 1329f)), _wgslsmith_div_f32(global1.c, 479f))))));
    var var_1 = arg_0;
    let var_2 = u_input.e;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-241f + arg_0.d) - arg_0.a), vec3<i32>(_wgslsmith_mult_i32(global1.b.x, -(~(-20972i))), -_wgslsmith_mult_i32(-5324i, u_input.b.x) << (0u % 32u), select(_wgslsmith_dot_vec2_i32(-vec2<i32>(18098i, u_input.b.x), vec2<i32>(arg_0.b.x, 8272i) << (vec2<u32>(u_input.e.x, 56311u) % vec2<u32>(32u))), 29910i, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(736f, _wgslsmith_f_op_f32(trunc(119f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c))) - -136f)), true);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f), -382f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(-943f, reverseBits(-_wgslsmith_sub_vec3_i32(-u_input.b, -vec3<i32>(global1.b.x, u_input.d, -1i))), global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1524f)), _wgslsmith_f_op_f32(max(-1871f, 180f))))), true);
    let var_0 = !(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), all(vec2<bool>(false, true))), !select(vec2<bool>(true, global1.e), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)));
    var var_1 = Struct_1(global1.a, -firstTrailingBit(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(global1.b.x, u_input.a, u_input.d), vec3<i32>(u_input.d, global1.b.x, 2698i)))), 1390f, _wgslsmith_f_op_f32(max(global1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1098f)), _wgslsmith_f_op_f32(abs(1f)))))), false);
    var var_2 = Struct_2(abs(u_input.e), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) * -314f), vec3<i32>(u_input.b.x & _wgslsmith_div_i32(global1.b.x, 24812i), var_1.b.x | 39296i, 31287i), global1.a, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1234f)), false), Struct_1(-1631f, max(vec3<i32>(func_1(), global1.b.x, global1.b.x), vec3<i32>(var_1.b.x, 46529i, ~var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-276f - var_1.c) - _wgslsmith_f_op_f32(sign(-2027f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(Struct_1(-1238f, global1.b, -1043f, 280f, false), false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * -1119f)), -1410f), any(vec4<bool>(var_0.x, true, global1.e, !global1.e))), select(u_input.e.x, u_input.c, false & !all(var_0)), u_input.e.x);
    let var_3 = ~(~_wgslsmith_sub_u32(min(~var_2.d, ~var_2.d), var_2.e));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.b.d - -1498f))), 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(1u, 1u, var_1.e), vec2<u32>(var_3, u_input.e.x), var_2.c, Struct_1(1050f, global1.b, -969f, 945f, true))))), vec3<i32>(_wgslsmith_div_i32(~u_input.a, u_input.d), select(global1.b.x, ~(-21978i), any(select(vec4<bool>(var_1.e, var_0.x, global1.e, true), vec4<bool>(true, var_1.e, false, false), vec4<bool>(global1.e, false, false, true)))), global1.b.x), 804f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-265f, var_2.c.c)), var_1.d)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0[_wgslsmith_index_u32(1u, 20u)], vec2<f32>(global1.d, 478f)))))), 0u);
}

