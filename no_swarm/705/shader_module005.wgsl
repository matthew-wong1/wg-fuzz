struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30>;

var<private> global1: array<Struct_2, 7>;

var<private> global2: Struct_2;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(239f, i32(-2147483648), 83645u, -887f), Struct_1(590f, i32(-2147483648), 133653u, 123f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    global1 = array<Struct_2, 7>();
    global0 = array<vec4<i32>, 30>();
    let var_0 = global2.c;
    var var_1 = global4[_wgslsmith_index_u32(var_0.c, 2u)];
    var var_2 = global4[_wgslsmith_index_u32(4294967295u | _wgslsmith_add_u32(global2.c.c, 0u), 2u)];
    return var_0.c;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<u32>(arg_0.c, global2.c.c, arg_0.c);
    global4 = array<Struct_1, 2>();
    global2 = global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, func_3(), 1u), reverseBits(vec3<u32>(75u, 4294967295u, var_0.x)) ^ (~vec3<u32>(arg_0.c, 70949u, 0u) >> (vec3<u32>(20781u, 0u, arg_0.c) % vec3<u32>(32u))))), 7u)];
    global3 = select(!vec2<bool>(false, global3.x), vec2<bool>(global3.x, true), select(vec2<bool>(any(vec4<bool>(global3.x, true, false, global3.x)), all(select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(true, true, true), global3.x))), !vec2<bool>(false, arg_0.c >= arg_0.c), vec2<bool>(true, !(var_0.x >= 91005u))));
    let var_1 = countOneBits(4294967295u);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_sub_vec2_i32(u_input.a.yy, u_input.a.xz);
    var var_1 = Struct_2(arg_1.x, abs(arg_2.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -968f))), global2.b, abs(~(28328u & arg_2.c)), 147f), func_2(Struct_1(_wgslsmith_f_op_f32(arg_0.a + 638f), func_2(func_2(Struct_1(arg_2.a, 1i, global2.c.c, 657f))).b, ~_wgslsmith_div_u32(25831u, 16019u), arg_0.d)), global2.e);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1537f), ~(-(~(-12297i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1625f, var_1.c.d))) - _wgslsmith_f_op_f32(-1f)), -var_0.x, global2.c.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(var_1.d.d - -920f))))), Struct_1(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-214f * global2.e.x), global3.x)), 38430i, 14792u, -825f), var_1.e);
    global1 = array<Struct_2, 7>();
    var var_3 = arg_1;
    return 13592u;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = global3.x;
    global0 = array<vec4<i32>, 30>();
    var var_1 = ~vec4<u32>(~func_4(func_2(global4[_wgslsmith_index_u32(arg_1.c, 2u)]), vec4<f32>(183f, 948f, 1021f, -899f), global2.d), global2.c.c & 22166u, arg_2.d.c, abs(arg_2.d.c));
    var_1 = firstTrailingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(11362u, 1u, 6726u, 4294967295u), ~vec4<u32>(arg_3, arg_1.c, 0u, global2.c.c))) | abs(_wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(global2.c.c, 6074u, 0u, 20850u)), ~(vec4<u32>(2875u, arg_2.c.c, arg_1.c, arg_2.d.c) ^ vec4<u32>(0u, 0u, var_1.x, global2.c.c))));
    let var_2 = max(-25346i, 20445i);
    return global2.d;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    let var_0 = any(!(!(!select(vec3<bool>(false, true, global3.x), vec3<bool>(true, global3.x, true), true))));
    global3 = !select(select(select(!vec2<bool>(var_0, global3.x), vec2<bool>(var_0, false), true), select(vec2<bool>(var_0, global3.x), select(vec2<bool>(global3.x, false), vec2<bool>(true, true), var_0), select(vec2<bool>(global3.x, var_0), vec2<bool>(false, true), false)), !var_0), select(!(!vec2<bool>(global3.x, true)), vec2<bool>(true, true), select(select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), vec2<bool>(false, true)), vec2<bool>(global3.x, false), select(global3.x, var_0, true))), select(select(!vec2<bool>(var_0, var_0), vec2<bool>(true, false), global2.c.b >= u_input.a.x), select(vec2<bool>(global3.x, false), vec2<bool>(true, true), !vec2<bool>(var_0, false)), select(vec2<bool>(true, true), vec2<bool>(true, var_0), true)));
    let var_1 = global1[_wgslsmith_index_u32(~(~(~((62832u ^ arg_0.c) >> (_wgslsmith_div_u32(35916u, global2.c.c) % 32u)))), 7u)];
    let var_2 = !global3.x;
    global1 = array<Struct_2, 7>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.e.yz) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.e.x, arg_0.a) + var_1.e.xy)) * _wgslsmith_f_op_vec2_f32(abs(var_1.e.yy)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 7>();
    var var_0 = i32(-1i) * -2147483647i;
    let var_1 = global3.x;
    let var_2 = u_input.a.xxx;
    let var_3 = any(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(var_2.x & -1i), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, var_2.x), -vec4<i32>(global2.d.b, var_2.x, global2.d.b, -1i))) >> (~global2.d.c % 32u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_5(func_1(var_2.x, global2.d, Struct_2(-858f, -42801i, Struct_1(1235f, 41279i, global2.c.c, 139f), global4[_wgslsmith_index_u32(75730u, 2u)], vec3<f32>(global2.d.a, global2.a, -284f)), global2.c.c), _wgslsmith_clamp_i32(2147483647i, u_input.a.x, -8454i))))));
}

