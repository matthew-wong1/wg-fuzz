struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 20> = array<i32, 20>(1i, -1i, 2147483647i, -1i, -1i, -59838i, 1i, 69216i, 0i, i32(-2147483648), -43070i, 10657i, -53598i, -1i, 1i, 2147483647i, -1550i, 2147483647i, i32(-2147483648), 12462i);

var<private> global2: u32;

var<private> global3: array<Struct_1, 9>;

var<private> global4: array<vec2<f32>, 17>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = arg_1;
    global4 = array<vec2<f32>, 17>();
    var var_1 = true;
    let var_2 = Struct_4(Struct_1(countOneBits(vec2<u32>(~4294967295u, ~0u))), Struct_3(Struct_1(firstTrailingBit(vec2<u32>(1u, 1u))), Struct_1(~(~vec2<u32>(0u, 10869u))), 1u, !vec4<bool>(arg_2.x <= arg_2.x, any(vec4<bool>(false, arg_0, true, false)), arg_0, true)), var_0.a.wxz);
    global3 = array<Struct_1, 9>();
    return 11481u;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> vec2<u32> {
    var var_0 = arg_1;
    var_0 = Struct_3(Struct_1(var_0.b.a), arg_1.b, arg_1.c ^ ~(~4294967295u), arg_1.d);
    var var_1 = vec4<u32>(max(1u, _wgslsmith_sub_u32(4294967295u, arg_1.a.a.x)), func_3(true, Struct_2(vec4<i32>(_wgslsmith_div_i32(-25844i, -48227i), global1[_wgslsmith_index_u32(var_0.c << (0u % 32u), 20u)], _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), u_input.a), _wgslsmith_add_i32(u_input.c.x, global1[_wgslsmith_index_u32(var_0.a.a.x, 20u)]) <= -45799i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-276f, _wgslsmith_div_f32(334f, -309f), -1000f)), vec2<i32>(-1i) * -vec2<i32>(-1i, arg_0)), 4294967295u, arg_1.c);
    global2 = ~(var_0.c ^ (var_1.x | 34124u)) << (~arg_1.b.a.x % 32u);
    var var_2 = all(!var_0.d.wwx);
    return var_0.a.a;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = u_input.d;
    var var_1 = select(_wgslsmith_add_vec2_u32(firstTrailingBit(~vec2<u32>(46687u, 14804u)) >> (func_2(-arg_0, Struct_3(global3[_wgslsmith_index_u32(1u, 9u)], Struct_1(vec2<u32>(84u, 33133u)), 4294967295u, vec4<bool>(false, false, true, false))) % vec2<u32>(32u)), ~(~vec2<u32>(1u, 46913u)) ^ select(vec2<u32>(0u, 49210u), vec2<u32>(4294967295u, 13058u), all(vec2<bool>(true, true)))), vec2<u32>(1u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(32510u, 6038u), firstTrailingBit(vec2<u32>(24263u, 1u))) % 32u), func_2(arg_0, Struct_3(global3[_wgslsmith_index_u32(25591u, 9u)], global3[_wgslsmith_index_u32(min(26966u, 15892u), 9u)], ~42156u, vec4<bool>(true, true, true, true))).x), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
    var var_2 = Struct_2(u_input.b, any(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), true))));
    var var_3 = _wgslsmith_f_op_f32(138f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1122f))))), _wgslsmith_f_op_f32(step(-345f, _wgslsmith_f_op_f32(floor(-511f)))))));
    let var_4 = var_1.x;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 20>();
    global0 = func_1(_wgslsmith_mod_i32(1i, 1i));
    let var_0 = u_input.b;
    var var_1 = global3[_wgslsmith_index_u32(~func_2(u_input.c.x, Struct_3(global3[_wgslsmith_index_u32(51203u, 9u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(76051u, 17369u) << (~4294967295u % 32u), 9u)], ~28421u, vec4<bool>(true, true, true, true))).x, 9u)];
    let var_2 = vec2<i32>(u_input.a, u_input.b.x);
    global3 = array<Struct_1, 9>();
    var var_3 = Struct_1(~(~_wgslsmith_mult_vec2_u32(func_2(2147483647i, Struct_3(Struct_1(vec2<u32>(0u, var_1.a.x)), global3[_wgslsmith_index_u32(var_1.a.x, 9u)], 1u, vec4<bool>(false, true, true, false))), _wgslsmith_sub_vec2_u32(var_1.a, var_1.a))));
    global2 = 20044u;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-592f)), -837f, var_3.a.x >= var_1.a.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-972f)) * _wgslsmith_f_op_f32(min(-1534f, -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~0u, 69598u) ^ (reverseBits(var_3.a) & var_1.a), ~(~_wgslsmith_sub_u32(~30936u, 0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1435f, var_4))), _wgslsmith_f_op_f32(round(var_4)))));
}

