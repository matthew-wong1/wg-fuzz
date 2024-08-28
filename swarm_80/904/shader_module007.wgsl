struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<Struct_2, 14>;

var<private> global2: array<vec3<bool>, 16>;

var<private> global3: array<Struct_2, 25>;

var<private> global4: Struct_1 = Struct_1(30850u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-725f, -763f) + _wgslsmith_div_f32(606f, -1582f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-213f))))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(133f, 694f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(365f, 1596f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1525f, 276f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-606f, 388f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(438f, 723f), vec2<f32>(1178f, -427f), global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1244f, 1014f)))), false & all(vec3<bool>(global0.x, true, true)))))));
    var var_1 = !global0.x;
    var var_2 = Struct_1(u_input.e.x);
    var var_3 = Struct_1(arg_0.a);
    let var_4 = ~u_input.c;
    return ~select(u_input.b.wxx, ~abs(vec3<i32>(-1i, var_4.x, var_4.x)), !global0.x || !global0.x);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) - -534f), Struct_1(0u), _wgslsmith_dot_vec3_i32(~max(_wgslsmith_div_vec3_i32(vec3<i32>(16758i, arg_3.d, arg_1.x), u_input.d), func_3(arg_3.c)), ~reverseBits(u_input.d)));
    var var_1 = u_input.d;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -513f)))))), arg_0, Struct_1(max(var_0.c.a, global4.a)), arg_2);
    let var_3 = var_2.c;
    global1 = array<Struct_2, 14>();
    return Struct_2(-1040f, var_0.b, Struct_1(u_input.e.x), _wgslsmith_mod_i32(-54806i, countOneBits(-var_1.x ^ var_1.x)));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_2 {
    let var_0 = global0.x & !(!(!all(vec4<bool>(global0.x, false, true, global0.x))));
    var var_1 = ~(~13128u) >> (~global4.a % 32u);
    let var_2 = func_2(345f, u_input.d, -2147483647i, global3[_wgslsmith_index_u32(select(global4.a, global4.a | 31389u, true), 25u)]);
    var var_3 = ~vec3<i32>(var_2.d, 0i, ~2147483647i);
    global3 = array<Struct_2, 25>();
    return func_2(1153f, u_input.d, 2147483647i, func_2(var_2.b, u_input.d, -2147483647i, func_2(-136f, -min(u_input.b.wyy, u_input.b.zyw), _wgslsmith_add_i32(var_3.x << (26096u % 32u), -var_3.x), global3[_wgslsmith_index_u32(~29311u, 25u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(countOneBits(36514i), _wgslsmith_mult_u32(global4.a, global4.a));
    global0 = global2[_wgslsmith_index_u32(abs(1u), 16u)];
    var var_1 = !select(vec4<bool>(true, global0.x, select(0i == var_0.d, global0.x, any(global0.zy)), global0.x), vec4<bool>(true, global0.x, true, any(vec4<bool>(false, global0.x, global0.x, global0.x))), !vec4<bool>(all(global2[_wgslsmith_index_u32(global4.a, 16u)]), true, !global0.x, true));
    let var_2 = _wgslsmith_f_op_f32(-170f - -891f);
    let var_3 = var_0;
    var var_4 = 21158i;
    let var_5 = func_2(_wgslsmith_f_op_f32(-1f), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x >> (_wgslsmith_mod_u32(6272u, 4294967295u) % 32u), 2147483647i, _wgslsmith_mod_i32(u_input.d.x & var_3.d, 0i)), vec3<i32>(-12555i >> (global4.a % 32u), var_3.d, ~u_input.a.x) ^ -_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d, 2147483647i, var_0.d), vec3<i32>(11323i, 0i, -1i))), u_input.b.x, func_1(~1i, 4294967295u)).d;
    var var_6 = !(!any(var_1.yw));
    var var_7 = ~vec2<i32>(~var_5, _wgslsmith_add_i32(var_0.d, ~(-9753i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -332f, var_2)))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f) + _wgslsmith_div_f32(596f, _wgslsmith_f_op_f32(f32(-1f) * -524f)))), ~vec4<u32>(_wgslsmith_sub_u32(~2906u, abs(0u)), select(func_2(-542f, u_input.d, 0i, Struct_2(var_3.b, -140f, Struct_1(43782u), var_5)).c.a, 4294967295u, true), 0u, reverseBits(57575u)));
}

