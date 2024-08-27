struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)));

var<private> global2: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: bool) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(step(273f, global0.x));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -399f) * global0.zw)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 867f) - arg_0.yz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, arg_0.x))))), abs(arg_1), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-500f, _wgslsmith_f_op_f32(-arg_0.x)))), abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c.x, u_input.c.x), u_input.c.yyz, max(u_input.c.zxw, vec3<u32>(1u, u_input.c.x, 1u)))));
    let var_2 = var_1.c;
    var var_3 = arg_1;
    let var_4 = !(!(!vec4<bool>(arg_2, true, any(vec3<bool>(false, true, false)), arg_2)));
    return Struct_4(-212f);
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, global2.a, -290f, -418f) + vec4<f32>(global2.a, 1414f, global0.x, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, 1246f, global0.x)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, -1369f)), _wgslsmith_f_op_f32(global0.x * -452f)), 1671f, _wgslsmith_f_op_f32(floor(-1169f)), -574f)))));
    var var_0 = -(0i << (0u % 32u));
    var var_1 = _wgslsmith_sub_i32(~countOneBits(-(i32(-1i) * -1i)), select(_wgslsmith_clamp_i32(~u_input.b.x, -21740i, -1i), ~(-2147483647i), global0.x >= 356f));
    global2 = func_2(_wgslsmith_f_op_vec3_f32(-global0.zxy), u_input.b.x, 138f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)));
    return -345f;
}

fn func_1() -> vec4<f32> {
    global1 = array<Struct_3, 30>();
    global2 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(step(global0.x, global2.a)), global0.x)) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-897f, 944f)), _wgslsmith_f_op_f32(f32(-1f) * -407f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f + 155f)))), ~abs(abs(-1i)), true);
    let var_0 = Struct_1(vec2<f32>(-459f, global0.x));
    global0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -815f), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -1753f) * _wgslsmith_f_op_f32(var_0.a.x - -535f)))) * var_0.a.x));
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(-1i) & u_input.a.x, -47934i, select(-u_input.a.x, firstLeadingBit(1i), all(vec4<bool>(false, true, false, true)) != true)), ~(-(~_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 15850i, u_input.b.x), u_input.a))));
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-357f, _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(-var_0.a.x)), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(func_3()), 120f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 860f, 357f, global2.a) + vec4<f32>(889f, global0.x, global2.a, global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-760f, global0.x, 273f, 1143f), vec4<f32>(global0.x, 1000f, -324f, global2.a), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1044f, 1149f, global0.x, 499f)))), _wgslsmith_f_op_vec4_f32(func_1()), vec4<bool>(true, true, true, true))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, -619f, -1407f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a, global2.a, 589f, 459f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-334f, -926f, global0.x, -389f), vec4<f32>(-839f, global0.x, global0.x, 620f))), vec4<bool>(true, false, false, true))), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(488f + global2.a)), _wgslsmith_div_vec2_f32(global0.zw, _wgslsmith_f_op_vec4_f32(func_1()).zz)) - global0.ww));
    let var_1 = global1[_wgslsmith_index_u32(0u, 30u)];
    var var_2 = Struct_4(-371f);
    global2 = Struct_4(var_0.x);
    global2 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-152f - -522f)), global0.x)), _wgslsmith_clamp_i32(u_input.d.x, 0i, -u_input.d.x) >> (_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c.x, _wgslsmith_mod_u32(1u, u_input.c.x)), ~1u) % 32u), (max(u_input.a.x << (u_input.c.x % 32u), u_input.d.x) >> (u_input.c.x % 32u)) <= 2147483647i);
    var var_3 = select(!select(select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), select(vec4<bool>(true, var_1.a.x, false, var_1.a.x), vec4<bool>(false, true, var_1.a.x, false), vec4<bool>(var_1.a.x, false, var_1.a.x, true)), vec4<bool>(false, true, var_1.a.x, true)), vec4<bool>(!var_1.a.x, var_1.a.x, var_1.a.x, true), true), vec4<bool>(true, !var_1.a.x, var_1.a.x, all(select(select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, true, true, true), true), vec4<bool>(var_1.a.x, true, var_1.a.x, true), select(vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x), var_1.a.x)))), vec4<bool>(((195f == global0.x) || true) != var_1.a.x, all(!vec2<bool>(var_1.a.x, true)) | true, all(vec2<bool>(false, false)) || all(!var_1.a), (u_input.b.x > u_input.b.x) && !(!var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-590f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1845f, var_2.a, 1126f, -1609f) + vec4<f32>(1120f, var_2.a, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(393f, var_0.x, 1510f, global0.x)))) + vec4<f32>(-397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.a))), _wgslsmith_div_f32(-321f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(var_0.x, global0.x))), vec4<u32>(0u, firstLeadingBit(~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), ~(~abs(42602u)), 1u), _wgslsmith_sub_i32(1i, u_input.d.x) ^ -(-64398i >> (~u_input.c.x % 32u)));
}

