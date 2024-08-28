struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 24> = array<i32, 24>(i32(-2147483648), 2147483647i, 2147483647i, 0i, 16529i, -1i, -1i, i32(-2147483648), 0i, 54268i, 47518i, 15730i, -611i, i32(-2147483648), 2147483647i, 6165i, 25782i, 12597i, -34975i, 6234i, 57346i, -44613i, i32(-2147483648), 0i);

var<private> global2: f32 = 1721f;

var<private> global3: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global4: vec2<f32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    var var_0 = Struct_4(vec3<i32>(~(~max(-9751i, 32801i)), global0.a.a.x, reverseBits(global1[_wgslsmith_index_u32(u_input.a, 24u)])));
    let var_1 = global0.a.a.xz;
    var var_2 = vec4<bool>(!(countOneBits(-9698i) <= var_1.x), firstLeadingBit(72290u) == u_input.a, false, !(!any(vec4<bool>(true, false, true, false))));
    let var_3 = Struct_3(global0.a);
    let var_4 = ~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(1u, u_input.a), ~vec2<u32>(5614u, 28323u)) ^ ~(~(~vec2<u32>(34371u, u_input.a))));
    return var_2.x;
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(global0.a.b.xz));
    return select(-abs(-vec4<i32>(-8472i, -2147483647i, global0.a.a.x, global1[_wgslsmith_index_u32(4294967295u, 24u)])), -(~vec4<i32>(2147483647i, -global1[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_clamp_i32(-2147483647i, global1[_wgslsmith_index_u32(37694u, 24u)], global1[_wgslsmith_index_u32(16858u, 24u)]), firstTrailingBit(global1[_wgslsmith_index_u32(51709u, 24u)]))), all(select(vec4<bool>(true, false, true, false), vec4<bool>(any(vec3<bool>(false, false, true)), func_3(), true, true), true)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec4<i32> {
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global1 = array<i32, 24>();
    global4 = global0.a.b.xx;
    let var_0 = ~(~4294967295u) >> (_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(min(vec4<u32>(4294967295u, 1u, 22790u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, 1u, u_input.a, 1u)), select(~(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), firstLeadingBit(select(vec4<u32>(u_input.a, u_input.a, 0u, 49735u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 30950u), arg_0.b.x)), all(select(arg_0.b, arg_0.b, arg_0.b)))) % 32u);
    var var_1 = arg_0.a;
    let var_2 = Struct_3(Struct_1(arg_0.a.yxw, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, 1000f, 845f) - arg_0.c.b), vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.b.x * global0.a.b.x), _wgslsmith_f_op_f32(arg_0.c.b.x * 980f), _wgslsmith_f_op_f32(-arg_0.c.b.x))), global1[_wgslsmith_index_u32(firstTrailingBit(26871u), 24u)]));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_div_vec3_i32(global0.a.a, vec3<i32>(select(1i, i32(-1i) * -2147483647i, true), (global0.a.a.x | global0.a.c) & countOneBits(global0.a.c), 13306i)));
    var var_1 = Struct_3(func_4(Struct_2(vec4<i32>(global0.a.c, 1i, -51517i, global0.a.a.x) & func_1(vec2<bool>(true, true), global0.a, 10308u, Struct_2(vec4<i32>(var_0.a.x, 7206i, 61826i, 0i), vec2<bool>(false, false), global0.a)), !(!global3[_wgslsmith_index_u32(u_input.a, 21u)]), Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(exp2(global0.a.b)), 15410i)), global4.x));
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.b.x))), 763f), 222f))));
    var var_2 = Struct_3(var_1.a);
    let var_3 = global0.a.c;
    var_2 = Struct_3(Struct_1(var_0.a, _wgslsmith_div_vec3_f32(global0.a.b, vec3<f32>(_wgslsmith_f_op_f32(global0.a.b.x + -588f), -105f, global0.a.b.x)), 2147483647i));
    var var_4 = vec4<u32>(max(u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 90231u), vec2<u32>(u_input.a, 4294967295u))), 4294967295u, ~_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(4294967295u & _wgslsmith_sub_u32(4744u, _wgslsmith_clamp_u32(3111u, u_input.a, u_input.a)), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 1u))), vec2<u32>(max(2677u, u_input.a), u_input.a))));
    var var_5 = u_input.a;
    global4 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(730f, global4.x), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) * var_1.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f) + global4.x))), var_1.a.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.b.xx, max(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, var_4.x, 63142u, 17382u), vec4<u32>(var_4.x, 53862u, 11964u, 32640u) & vec4<u32>(4294967295u, 6179u, 22769u, u_input.a)) >> (reverseBits(firstLeadingBit(vec4<u32>(var_4.x, var_4.x, u_input.a, 4294967295u))) % vec4<u32>(32u)), vec4<u32>(var_4.x, min(max(var_4.x, var_4.x), _wgslsmith_mult_u32(4294967295u, var_4.x)), ~u_input.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_4.x, u_input.a), 30102u))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(391f, 142f))))))));
}

