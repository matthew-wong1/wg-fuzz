struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec3<bool>(true, true, false), -1i), Struct_3(vec3<bool>(true, false, false), 20776i), Struct_3(vec3<bool>(true, false, false), -12746i), Struct_3(vec3<bool>(true, false, true), 53723i), Struct_3(vec3<bool>(false, false, false), 2147483647i), Struct_3(vec3<bool>(false, true, false), 1i), Struct_3(vec3<bool>(false, false, false), 13612i), Struct_3(vec3<bool>(false, false, true), -9238i), Struct_3(vec3<bool>(true, false, false), 4816i), Struct_3(vec3<bool>(false, true, true), 0i), Struct_3(vec3<bool>(true, true, true), 0i), Struct_3(vec3<bool>(true, true, true), 0i), Struct_3(vec3<bool>(false, true, false), 0i), Struct_3(vec3<bool>(true, true, true), 2147483647i), Struct_3(vec3<bool>(true, false, true), -60059i), Struct_3(vec3<bool>(true, true, true), -59454i), Struct_3(vec3<bool>(false, false, true), 34582i), Struct_3(vec3<bool>(false, true, true), 20567i), Struct_3(vec3<bool>(true, false, false), 0i), Struct_3(vec3<bool>(false, false, false), -15625i), Struct_3(vec3<bool>(false, false, false), 2147483647i), Struct_3(vec3<bool>(true, true, false), 32617i), Struct_3(vec3<bool>(true, true, false), 0i), Struct_3(vec3<bool>(false, false, false), 0i), Struct_3(vec3<bool>(true, false, true), 2147483647i), Struct_3(vec3<bool>(true, true, false), 0i), Struct_3(vec3<bool>(false, false, true), 23947i));

var<private> global1: bool;

var<private> global2: vec3<f32>;

var<private> global3: Struct_2;

var<private> global4: array<vec3<f32>, 10>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> vec3<u32> {
    global2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(u_input.c.x, 10u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(global4[_wgslsmith_index_u32(~u_input.c.x, 10u)])))))));
    global0 = array<Struct_3, 27>();
    global4 = array<vec3<f32>, 10>();
    global1 = global3.d;
    global2 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, ~min(reverseBits(1u), 0u)), 10u)];
    return ~(u_input.d.xyz >> (~u_input.d.ywx % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_2) -> i32 {
    global1 = any(select(vec3<bool>(true, true, true), !(!(!vec3<bool>(global3.d, arg_0.d, global3.d))), global3.d));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), global2.x)), -1057f, -1000f) + global4[_wgslsmith_index_u32(u_input.d.x, 10u)]));
    var var_0 = ~(~func_3(global3.d, (vec4<i32>(u_input.b, 0i, u_input.b, 7324i) >> (u_input.d % vec4<u32>(32u))) >> ((u_input.d >> (u_input.d % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(362f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.x, global2.x))))));
    let var_2 = ~(~func_3(all(!vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true)), firstLeadingBit(-vec4<i32>(-58866i, 2147483647i, -1i, 0i))).x);
    return -1i;
}

fn func_4(arg_0: i32) -> Struct_2 {
    global4 = array<vec3<f32>, 10>();
    global3 = Struct_2(global3.b, global3.c, global3.e, !global3.d, global3.a);
    global0 = array<Struct_3, 27>();
    global2 = vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), -434f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(ceil(global2.x)), all(vec2<bool>(global3.d, global3.d)))), -1325f, !any(vec3<bool>(global3.d, global3.d, global3.d)))) - _wgslsmith_f_op_f32(global2.x + 643f)));
    global1 = select(!(!any(!vec3<bool>(false, global3.d, false))), global3.d, select(_wgslsmith_div_u32(_wgslsmith_sub_u32(10794u, u_input.a), u_input.d.x), abs(reverseBits(u_input.c.x)), true) != (~6912u & u_input.c.x));
    return Struct_2(global3.c, Struct_1(38825i), Struct_1(_wgslsmith_dot_vec2_i32(-(vec2<i32>(30360i, u_input.b) & vec2<i32>(2147483647i, -6993i)), vec2<i32>(u_input.b, -1i))), true, Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -11611i, 58811i), vec3<i32>(global3.b.a, -1i, arg_0)) ^ _wgslsmith_div_i32(global3.c.a, arg_0)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = func_4(_wgslsmith_add_i32(_wgslsmith_div_i32((1i >> (1u % 32u)) | arg_1.a, global3.c.a), -func_2(Struct_2(global3.c, Struct_1(45433i), Struct_1(2147483647i), true, Struct_1(arg_1.a)))));
    let var_1 = global4[_wgslsmith_index_u32(26598u ^ u_input.c.x, 10u)];
    var var_2 = var_0.b;
    global2 = global4[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 10u)];
    var var_3 = abs(~(~u_input.d.xyy));
    return vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 61374i, var_0.a.a) ^ vec3<i32>(global3.c.a, 2147483647i, -11618i), vec3<i32>(func_4(0i).a.a, i32(-1i) * -1i, -12094i)) >= ~(~0i), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, u_input.a), vec2<u32>(var_3.x, var_3.x)), 1u) >= 0u, true, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(~(~(~42601u)), 10u)]), vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(829f, 158f, global3.d)))), -1191f), all(select(!(!vec4<bool>(true, global3.d, global3.d, global3.d)), select(vec4<bool>(global3.d, global3.d, global3.d, true), vec4<bool>(false, global3.d, global3.d, true), func_1(vec3<bool>(true, true, false), Struct_4(global3.c.a, global0[_wgslsmith_index_u32(u_input.d.x, 27u)]), Struct_1(u_input.b))), select(vec4<bool>(true, true, global3.d, global3.d), vec4<bool>(false, false, global3.d, global3.d), global3.d)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(737f)) + _wgslsmith_f_op_f32(590f + 767f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1651f) + -515f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), 1000f)));
    var_1 = var_0.xz;
    global4 = array<vec3<f32>, 10>();
    let var_2 = global3.d;
    var var_3 = global3.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.d.x, 67345u, u_input.d.x));
}

