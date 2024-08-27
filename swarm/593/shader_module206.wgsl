struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(585f, -1659f, 246f));

var<private> global1: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(46739u, 3456u, 13192u, 28862u), vec4<u32>(1u, 45008u, 41495u, 1u), vec4<u32>(1u, 0u, 1u, 446u));

var<private> global2: vec4<f32>;

var<private> global3: array<vec4<i32>, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> u32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a), global0.a))));
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1534f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.a.x * global2.x), _wgslsmith_f_op_f32(-var_0.a.a.x), 0i > u_input.c))), -525f, _wgslsmith_f_op_f32(-global2.x), global2.x));
    global1 = array<vec4<u32>, 3>();
    global0 = var_0.a;
    let var_1 = !select(select(vec3<bool>(all(vec3<bool>(false, true, false)), all(vec2<bool>(false, true)), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), true), all(vec3<bool>(false, false, false))), vec3<bool>(true, !select(false, false, false), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true))), -1821f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_div_f32(var_0.a.a.x, global2.x)));
    return arg_0.x >> (abs(10634u) % 32u);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(u_input.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(global2.zwy + global0.a)));
    var var_1 = firstTrailingBit(_wgslsmith_mult_u32(~33524u & _wgslsmith_mod_u32(func_3(vec3<u32>(arg_0, u_input.b.x, var_0.a), 4382i), ~1u), var_0.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global2.wxx, vec3<f32>(arg_2.a.x, 747f, _wgslsmith_f_op_f32(-arg_1)), all(vec2<bool>(false, true)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.wyw)), _wgslsmith_f_op_vec3_f32(-global0.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(var_0.b.a, _wgslsmith_f_op_vec3_f32(select(var_0.b.a, vec3<f32>(global2.x, 1254f, var_0.b.a.x), vec3<bool>(true, false, true)))))) - global2.wyx));
    var var_3 = vec3<i32>(-2147483647i, -1i, -u_input.c);
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.a.xz)), -(vec2<i32>(i32(-1i) * -22740i, u_input.c) | var_3.xz), ~(-1i) & var_3.x, var_0.b);
    return Struct_2(u_input.a.x, var_0.b);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_2(96885u, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a + _wgslsmith_f_op_vec3_f32(-global0.a)))));
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.a.x, global2.x, global0.a.x, -834f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, -879f, var_0.b.a.x, -828f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(231f, 1652f, _wgslsmith_f_op_f32(var_0.b.a.x * 448f), -399f)) + vec4<f32>(global2.x, -2491f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-602f + 633f) + global2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1402f, 397f)))));
    global0 = var_0.b;
    return func_2(~(~37793u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global2.x) - var_0.b.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(abs(global0.a))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = func_2(func_2(arg_1.a, arg_1.b.a.x, arg_1.b).a, -570f, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(434f, global0.a.x)) + arg_1.b.a.x), _wgslsmith_f_op_f32(-arg_1.b.a.x), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(abs(597f)))))).b;
    global3 = array<vec4<i32>, 10>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, var_0.a.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1047f, var_1.x), _wgslsmith_div_f32(1081f, _wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_vec2_f32(sign(var_1.zx))));
    let var_3 = Struct_4(arg_1.b);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1172f), func_2(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2293f - -216f), var_2.x))), func_2(u_input.a.x, var_2.x, func_2(_wgslsmith_mod_u32(114674u, 28282u), arg_1.b.a.x, arg_1.b).b).b).b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(global2.x - global0.a.x)) + -167f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_i32(global3[_wgslsmith_index_u32(u_input.b.x, 10u)], vec4<i32>(u_input.c, -53046i, 1114i, -9545i)), func_1(false, vec4<bool>(true, true, false, true)))))), vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -76631i, u_input.c), u_input.c), _wgslsmith_add_i32(select(countOneBits(u_input.c), 0i, all(vec2<bool>(true, false))), -2075i << (u_input.a.x % 32u)) | min(firstTrailingBit(-u_input.c), u_input.c), Struct_1(_wgslsmith_f_op_vec3_f32(global2.zxw * _wgslsmith_f_op_vec3_f32(-func_1(true, vec4<bool>(true, true, true, true)).b.a))));
    global1 = array<vec4<u32>, 3>();
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_0.d.a.x, -780f, global0.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, var_0.d.a.x, -1000f, 1254f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1478f, global2.x, 3401f, global0.a.x))))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1716f, -1491f, 2235f, -763f), vec4<f32>(-944f, var_0.a.x, -1707f, global2.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(168f, -125f, -280f, global2.x)), vec4<f32>(_wgslsmith_div_f32(global0.a.x, global2.x), 984f, _wgslsmith_f_op_f32(global0.a.x * global0.a.x), var_0.a.x)), select(vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, all(vec2<bool>(true, false))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true)))));
    global2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(191f, 2068f, -377f, 621f), vec4<f32>(global2.x, -223f, global0.a.x, global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.a.x, global0.a.x, -791f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-486f, global2.x, 1066f, global0.a.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.d.a.x, 697f, 831f, -1848f)))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d.a + global0.a))), global2.wzw, vec3<bool>(true, any(vec3<bool>(false, false, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), true))))));
    global3 = array<vec4<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-771f, global0.a.x) + 1647f));
}

