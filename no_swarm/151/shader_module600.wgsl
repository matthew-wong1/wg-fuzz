struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.b;
    global0 = array<u32, 27>();
    var var_1 = vec4<u32>(~(~abs(~global0[_wgslsmith_index_u32(1u, 27u)])), firstLeadingBit(_wgslsmith_sub_u32(u_input.a, global0[_wgslsmith_index_u32(120790u, 27u)]) << (1u % 32u)) & ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 3550u, 156u), vec3<u32>(0u, u_input.a, 39835u))), _wgslsmith_mod_u32(~40889u << (~u_input.a % 32u), max(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 0u), 27u)], 4294967295u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a, 4294967295u)), vec3<u32>(1u, 4294967295u, u_input.a) << (vec3<u32>(76337u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], 27u)], 70241u) % vec3<u32>(32u))), firstTrailingBit(~vec3<u32>(1u, 4294967295u, 46746u))), _wgslsmith_sub_u32(firstTrailingBit(u_input.a), 40544u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 27u)], 27u)])));
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    return Struct_1(1003f);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.b.a)), -571f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(func_2().a, _wgslsmith_f_op_f32(-2015f - _wgslsmith_f_op_f32(floor(arg_1.a))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1182f + -591f))) - _wgslsmith_f_op_f32(-arg_1.a))), arg_0.b.a);
    var var_2 = func_2();
    var_0 = Struct_2(vec4<bool>(!all(!arg_0.a), select(var_0.a.x, !arg_2.a.x, all(!vec2<bool>(arg_0.a.x, arg_0.a.x))), !var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a, var_1.x))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a)))));
    let var_3 = 0i;
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    var var_0 = Struct_3(select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true), true), func_2());
    var_0 = Struct_3(select(select(!var_0.a, select(vec2<bool>(true, var_0.a.x), vec2<bool>(false, true), !var_0.a), true), select(!var_0.a, !select(var_0.a, var_0.a, true), var_0.a.x), all(!(!vec3<bool>(true, var_0.a.x, true)))), arg_0);
    var var_1 = abs(abs(~max(vec3<u32>(1u, 821u, global0[_wgslsmith_index_u32(12533u, 27u)]), max(vec3<u32>(u_input.a, u_input.a, 6630u), vec3<u32>(82852u, 24432u, 10282u)))));
    return -1000f;
}

fn func_1() -> Struct_1 {
    let var_0 = !(_wgslsmith_f_op_f32(func_4(func_3(Struct_3(vec2<bool>(true, true), Struct_1(-1000f)), func_2(), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, true, false, false))), -(vec4<i32>(0i, -35803i, u_input.e, 1i) << (vec4<u32>(0u, 4822u, 4294967295u, 0u) % vec4<u32>(32u))))) == -207f);
    global0 = array<u32, 27>();
    return func_3(Struct_3(!vec2<bool>(all(vec2<bool>(var_0, var_0)), true), func_3(Struct_3(!vec2<bool>(var_0, true), func_2()), Struct_1(242f), Struct_2(!vec4<bool>(var_0, true, var_0, var_0)), Struct_2(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), var_0)))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-832f * -836f)))), Struct_2(select(vec4<bool>(false, any(vec3<bool>(true, false, var_0)), all(vec3<bool>(var_0, var_0, var_0)), var_0), vec4<bool>(var_0 && var_0, var_0 && true, true, false), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, var_0), vec3<bool>(true, true, false))))), Struct_2(vec4<bool>(true, all(!vec3<bool>(var_0, var_0, false)), var_0, any(!vec3<bool>(false, false, var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec2<i32>(~(~u_input.e & -1i), _wgslsmith_mult_i32(firstTrailingBit(1i), firstTrailingBit(~u_input.c.x))) & vec2<i32>(_wgslsmith_div_i32(u_input.c.x << (_wgslsmith_mult_u32(0u, 8024u) % 32u), -_wgslsmith_dot_vec2_i32(u_input.c.zw, u_input.d.yz)), -5601i);
    var var_2 = 4294967295u;
    let var_3 = -465f;
    var var_4 = !select(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true), select(vec4<bool>(all(vec3<bool>(true, true, false)), true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true));
    var var_5 = 1i >= var_1.x;
    var_1 = ~max(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.e, u_input.c.x), vec2<i32>(u_input.c.x, -1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 2147483647i) & u_input.b.yy, vec2<i32>(0i, u_input.c.x))) ^ u_input.c.xz;
    var_2 = _wgslsmith_dot_vec2_u32(~(~select(vec2<u32>(38217u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(1u, 27u)], u_input.a), false)) << (vec2<u32>(~27822u, countOneBits(1u)) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1040f, -223f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1914f, var_0.a), vec2<f32>(var_0.a, 235f), var_4.wx)))), vec2<f32>(_wgslsmith_f_op_f32(round(730f)), -280f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, -389f))))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.a, var_3, true)))))), firstLeadingBit(2147483647i), _wgslsmith_sub_vec2_i32(u_input.d.zy, vec2<i32>(~var_1.x, -10213i)));
}

