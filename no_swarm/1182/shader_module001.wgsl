struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 45946i;

var<private> global1: f32 = 992f;

var<private> global2: Struct_3 = Struct_3(Struct_1(26743u, vec4<u32>(4294967295u, 6483u, 0u, 36161u), -1294f));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = select(arg_0.a.wx, vec2<bool>(!(-67i > ~arg_0.b.x), all(arg_0.a)), vec2<bool>(arg_2, all(select(!vec3<bool>(arg_0.a.x, false, true), vec3<bool>(false, arg_0.a.x, arg_2), vec3<bool>(false, true, true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.a.c - -285f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.c)), _wgslsmith_f_op_f32(global2.a.c * -1691f), 495f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a.c, arg_1.b.c, arg_3.b.c, -666f), vec4<f32>(arg_1.b.c, 711f, global2.a.c, 297f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-673f, arg_1.b.c, 1210f, 1287f)) * vec4<f32>(global2.a.c, 322f, -1487f, -415f)), all(vec2<bool>(var_0.x, arg_2)))))));
    let var_2 = arg_1;
    var var_3 = false;
    var_3 = !(!var_0.x);
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(step(var_1.x, 1570f)), arg_1.b.c);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-2118f - arg_2.a.c), arg_1.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(172f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1175f + -1197f) * global2.a.c))), _wgslsmith_f_op_f32(836f - _wgslsmith_f_op_f32(sign(arg_1.a.c))));
    let var_1 = Struct_4(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), -1i >= abs(arg_0)), ~vec3<i32>(arg_0 & arg_0, _wgslsmith_add_i32(-1i, arg_0), arg_0) ^ ~(~(vec3<i32>(-17449i, arg_0, arg_0) << (vec3<u32>(global2.a.b.x, global2.a.a, 0u) % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_4(vec4<bool>(!var_1.a.x, !var_1.a.x, false, true), ~var_1.b), Struct_2(vec2<u32>(~0u, ~arg_1.a.a), arg_2.a), false, Struct_2(arg_2.a.b.xw << (arg_2.a.b.zz % vec2<u32>(32u)), arg_1.a))));
    var var_3 = 31926i;
    let var_4 = ~abs(~(vec3<u32>(arg_1.a.b.x, 4294967295u, 0u) ^ firstLeadingBit(arg_1.a.b.zyx)));
    return var_1.a.x;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(4294967295u, ~_wgslsmith_sub_vec4_u32(reverseBits(global2.a.b), vec4<u32>(1230u, 4294967295u, u_input.a, 0u) & global2.a.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.a.c), _wgslsmith_f_op_f32(-495f - global2.a.c)))))));
    var var_1 = var_0.a;
    let var_2 = arg_1.b.zx;
    var var_3 = Struct_1(firstLeadingBit(34179u), var_1.b, 1f);
    var var_4 = Struct_4(arg_2.a, ~abs(firstTrailingBit(~arg_1.b)));
    return Struct_3(global2.a);
}

fn func_1() -> f32 {
    let var_0 = func_4(7545u, Struct_4(vec4<bool>(true, !func_2(-10220i, Struct_3(Struct_1(u_input.a, global2.a.b, global2.a.c)), Struct_3(Struct_1(1u, vec4<u32>(11787u, global2.a.b.x, global2.a.b.x, u_input.a), global2.a.c))), false, true), -(~vec3<i32>(2147483647i, 811i, -40153i))), Struct_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(true, false)), 1000f < global2.a.c, true), vec4<bool>(true, true, true, true)), select(firstLeadingBit(firstTrailingBit(vec3<i32>(0i, -1i, 0i))), abs(~vec3<i32>(-2147483647i, -25911i, 31764i)), select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), true))), global2.a.a);
    return _wgslsmith_f_op_f32(f32(-1f) * -1538f);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_4 {
    let var_0 = arg_1.a;
    var var_1 = _wgslsmith_mod_i32(1i, -_wgslsmith_clamp_i32(1i, -1i << (u_input.a % 32u), ~(-1i))) << (abs(~u_input.a & abs(4294967295u)) % 32u);
    let var_2 = reverseBits(vec3<i32>(-1i, countOneBits(~(-14684i)), 62290i) | vec3<i32>(~(-2752i), _wgslsmith_add_i32(2147483647i, -1i), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, -1i), _wgslsmith_mod_i32(-197i, 1851i), 1i)));
    global0 = var_2.x;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-154f)), -1000f)))) * -1072f);
    return Struct_4(!vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), false, true, true), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.x, 2147483647i, var_2.x) << (vec3<u32>(var_0, 36548u, 11801u) % vec3<u32>(32u)), -var_2) & countOneBits(~vec3<i32>(var_2.x, var_2.x, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(2273f, global2.a.c, 1080f) * vec3<f32>(global2.a.c, -378f, -353f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(102f, global2.a.c, global2.a.c)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2006f)) * global2.a.c), _wgslsmith_f_op_f32(global2.a.c + global2.a.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1348f, global2.a.c) * _wgslsmith_f_op_f32(func_1())))), Struct_1(~global2.a.a, firstLeadingBit(global2.a.b), -1492f));
    global0 = ~(-1i);
    global2 = Struct_3(global2.a);
    let var_1 = func_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(401f - -659f) * _wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(min(-991f, -152f))), _wgslsmith_f_op_f32(global2.a.c * global2.a.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(865f + global2.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))))), global2.a);
    global0 = -1i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.c, 103f, global2.a.c, -207f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-316f, 106f, -245f, -694f) - vec4<f32>(1000f, global2.a.c, 407f, 1104f)), vec4<f32>(global2.a.c, 1610f, global2.a.c, -1616f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-544f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f), -358f), _wgslsmith_f_op_f32(round(global2.a.c)), 1832f)));
    var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global2.a.c), var_2.x, -1322f, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - global2.a.c))))));
    var var_3 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_add_u32(max(global2.a.b.x, u_input.a), _wgslsmith_sub_u32(u_input.a, 0u))), _wgslsmith_f_op_f32(185f + global2.a.c), var_0.b.x, countOneBits(~select(min(vec4<i32>(var_1.b.x, var_1.b.x, 50373i, var_0.b.x), vec4<i32>(var_1.b.x, var_0.b.x, var_0.b.x, var_1.b.x)), min(vec4<i32>(44737i, -1i, 2147483647i, -10113i), vec4<i32>(-1i, 62218i, 1i, 2147483647i)), select(vec4<bool>(false, var_1.a.x, var_0.a.x, var_1.a.x), var_1.a, vec4<bool>(false, var_1.a.x, false, var_0.a.x)))), vec4<i32>(~firstLeadingBit(_wgslsmith_clamp_i32(55292i, 2147483647i, var_1.b.x)), -var_0.b.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(~(-37831i), ~var_1.b.x, firstLeadingBit(-1i)), 1i), _wgslsmith_sub_i32(6773i, var_1.b.x) << (abs(_wgslsmith_clamp_u32(global2.a.b.x, 4294967295u, 42497u)) % 32u)));
}

