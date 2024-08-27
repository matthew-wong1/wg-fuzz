struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3;

var<private> global2: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global3: array<i32, 24>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_3) -> f32 {
    return 455f;
}

fn func_2() -> vec3<f32> {
    let var_0 = global1.a.b.b.x;
    let var_1 = Struct_3(Struct_2(true, global1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.a, global1.a.b.a, Struct_3(Struct_2(false, global1.a.b, -371f)))))));
    let var_2 = _wgslsmith_f_op_f32(var_1.a.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-172f, _wgslsmith_f_op_f32(f32(-1f) * -1215f))))));
    var var_3 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, -38127i, global1.a.b.a.x, -1i << (firstTrailingBit(4294967295u) % 32u)), vec4<i32>(min(_wgslsmith_clamp_i32(-16629i, global1.a.b.a.x, 1i), 2147483647i), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.b.x, 19893i, u_input.d.x)), _wgslsmith_dot_vec3_i32(~u_input.b, -vec3<i32>(-1i, 6269i, u_input.b.x)), 32607i) | max(~vec4<i32>(15453i, 2147483647i, global3[_wgslsmith_index_u32(4294967295u, 24u)], u_input.b.x), abs(-vec4<i32>(var_1.a.b.a.x, global3[_wgslsmith_index_u32(74228u, 24u)], 22064i, var_1.a.b.a.x))), vec4<i32>(u_input.b.x, global1.a.b.a.x, reverseBits(-1i), i32(-1i) * -2147483647i));
    var var_4 = 77585u;
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.b.b.x), 429f, true))), -1301f), -636f, _wgslsmith_f_op_f32(f32(-1f) * -2493f));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, 478f, -647f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -857f, arg_0.x)), vec3<f32>(global1.a.b.b.x, global1.a.c, arg_0.x), all(vec3<bool>(global1.a.a, true, true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1436f, arg_0.x, arg_0.x), vec3<f32>(global1.a.b.b.x, global1.a.b.b.x, 2214f), global1.a.a))))));
    global3 = array<i32, 24>();
    global1 = Struct_3(global1.a);
    let var_1 = _wgslsmith_div_vec3_u32(firstTrailingBit(select(vec3<u32>(1u, u_input.a, 50147u), abs(vec3<u32>(1u, u_input.a, 4294967295u)), any(global2[_wgslsmith_index_u32(0u, 26u)]))), vec3<u32>(4294967295u, min(4294967295u, 5256u), 4294967295u)) & _wgslsmith_add_vec3_u32(u_input.e.yyx, u_input.e.wzy);
    global0 = false;
    return Struct_2(any(!select(vec3<bool>(false, global1.a.a, true), select(vec3<bool>(true, true, false), vec3<bool>(global1.a.a, true, true), vec3<bool>(true, false, global1.a.a)), var_0.x > arg_0.x)), global1.a.b, global1.a.b.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> vec3<f32> {
    global1 = Struct_3(Struct_2(true, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(481f, arg_0.a.b.b.x), vec2<f32>(-1242f, arg_0.a.b.b.x), vec2<bool>(global1.a.a, true))))).b, -319f));
    global2 = array<vec2<bool>, 26>();
    return vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-426f)) + -1035f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-2012f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -341f)))), func_1(_wgslsmith_f_op_vec2_f32(-arg_0.a.b.b)).c)), _wgslsmith_f_op_f32(max(1146f, _wgslsmith_f_op_f32(-1000f - 1488f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32) -> Struct_3 {
    global3 = array<i32, 24>();
    global0 = false;
    let var_0 = global1.a.b;
    let var_1 = func_1(func_1(global1.a.b.b).b.b);
    let var_2 = firstLeadingBit(-_wgslsmith_mult_vec3_i32(u_input.d, ~(~u_input.b)));
    return Struct_3(func_1(vec2<f32>(var_1.c, _wgslsmith_f_op_f32(round(-518f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c, global1.a.c)))), Struct_4(1061f, all(select(vec4<bool>(false, global1.a.a, true, false), vec4<bool>(global1.a.a, global1.a.a, global1.a.a, false), global1.a.a))))), 30448u);
    global0 = select(all(select(select(vec4<bool>(global1.a.a, false, false, true), select(vec4<bool>(true, true, true, global1.a.a), vec4<bool>(true, true, global1.a.a, true), global1.a.a), !vec4<bool>(true, true, global1.a.a, global1.a.a)), !select(vec4<bool>(global1.a.a, global1.a.a, false, true), vec4<bool>(global1.a.a, false, global1.a.a, false), vec4<bool>(global1.a.a, false, global1.a.a, false)), !(!vec4<bool>(true, global1.a.a, true, true)))), true, true);
    var var_0 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(242f, global1.a.c, global1.a.c)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-428f, 1711f) * _wgslsmith_f_op_f32(global1.a.c - global1.a.c)), _wgslsmith_f_op_f32(func_3(Struct_2(false, global1.a.b, global1.a.c), vec2<i32>(7454i, u_input.b.x), Struct_3(global1.a))), _wgslsmith_f_op_f32(max(-224f, func_1(global1.a.b.b).b.b.x)))), 0u);
    var var_1 = any(!select(!vec3<bool>(var_0.a.a, true, false), select(select(vec3<bool>(var_0.a.a, global1.a.a, var_0.a.a), vec3<bool>(global1.a.a, true, false), vec3<bool>(var_0.a.a, true, global1.a.a)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, global1.a.a, var_0.a.a), vec3<bool>(true, true, true), !var_0.a.a)));
    var var_2 = true;
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.c, 103f, vec4<i32>(global1.a.b.a.x, _wgslsmith_dot_vec2_i32(global1.a.b.a, u_input.b.zz & _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), u_input.d.zz)), global3[_wgslsmith_index_u32(~countOneBits(u_input.c.x), 24u)], global1.a.b.a.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(step(var_0.a.b.b.x, 709f))))), _wgslsmith_f_op_f32(step(-318f, var_0.a.c)), -1439f), global1.a.b.a.x);
}

