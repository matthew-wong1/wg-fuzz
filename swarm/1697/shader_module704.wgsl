struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -17767i;

var<private> global1: bool = true;

var<private> global2: array<vec2<i32>, 28>;

var<private> global3: vec4<u32> = vec4<u32>(101180u, 4294967295u, 22248u, 3468u);

var<private> global4: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = max(44124u, ~global3.x);
    global2 = array<vec2<i32>, 28>();
    global3 = ~(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 85538u, 4869u, global3.x), ~vec4<u32>(1u, 0u, 27293u, global3.x), vec4<u32>(17789u, u_input.e.x, 4294967295u, 31644u) & vec4<u32>(u_input.b.x, 4294967295u, global3.x, 4294967295u)), _wgslsmith_div_vec4_u32(~u_input.b, vec4<u32>(u_input.d.x, u_input.e.x, 4294967295u, u_input.e.x))));
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(-reverseBits(_wgslsmith_add_vec2_i32(global2[_wgslsmith_index_u32(7562u, 28u)], u_input.a)), -(~(global2[_wgslsmith_index_u32(var_0, 28u)] & global2[_wgslsmith_index_u32(u_input.e.x, 28u)]))));
    global4 = select(vec4<bool>(!all(vec3<bool>(global4.x, true, arg_0)), !arg_1.a.x || true, false, firstTrailingBit(var_0) == (var_0 & 7664u)), arg_2.a, !all(select(arg_1.a, !arg_2.a, !vec4<bool>(false, arg_0, true, true))));
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: bool) -> i32 {
    var var_0 = 41155u;
    let var_1 = func_2(false, func_2(arg_2.x, func_2(true, Struct_2(!vec4<bool>(arg_3, global4.x, arg_2.x, global4.x)), Struct_2(select(vec4<bool>(arg_2.x, global4.x, global4.x, true), vec4<bool>(arg_2.x, global4.x, global4.x, arg_2.x), true))), Struct_2(!vec4<bool>(true, true, global4.x, false))), Struct_2(!vec4<bool>(true, arg_3, true, !arg_3)));
    var var_2 = Struct_2(vec4<bool>(true, true, true, true));
    let var_3 = Struct_1(arg_0.a);
    var var_4 = var_1;
    return -5506i;
}

fn func_1() -> vec2<f32> {
    var var_0 = func_2(true, Struct_2(vec4<bool>(true, 25302u >= u_input.b.x, global3.x <= u_input.d.x, all(!vec2<bool>(global4.x, global4.x)))), Struct_2(vec4<bool>(global4.x, global4.x, true, global4.x)));
    global1 = var_0.a.x & true;
    var var_1 = Struct_1(vec2<i32>(49937i, _wgslsmith_add_i32(func_3(Struct_1(vec2<i32>(-29333i, 16460i)), Struct_1(vec2<i32>(0i, 43250i)), vec2<bool>(var_0.a.x, false), var_0.a.x), -(~(-1i)))));
    global2 = array<vec2<i32>, 28>();
    let var_2 = func_2(any(var_0.a), func_2(!var_0.a.x, Struct_2(!vec4<bool>(global4.x, true, true, false)), Struct_2(select(select(var_0.a, var_0.a, false), select(vec4<bool>(global4.x, global4.x, true, global4.x), vec4<bool>(var_0.a.x, global4.x, false, var_0.a.x), false), vec4<bool>(true, false, global4.x, false)))), func_2(!(var_1.a.x >= 44664i) || var_0.a.x, func_2(false, func_2(true, Struct_2(var_0.a), Struct_2(vec4<bool>(global4.x, false, global4.x, false))), Struct_2(select(vec4<bool>(true, false, global4.x, true), var_0.a, global4.x))), Struct_2(vec4<bool>(!global4.x, all(vec2<bool>(true, true)), global4.x, false))));
    return vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2269f))) - _wgslsmith_f_op_f32(trunc(-112f))), 108f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -2172f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-302f - -1397f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_1 = vec2<u32>(u_input.e.x, 8913u);
    let var_2 = Struct_1(vec2<i32>(0i, 1i));
    global4 = !(!select(vec4<bool>(all(vec4<bool>(false, global4.x, true, global4.x)), all(global4.ww), true, false), select(select(vec4<bool>(false, true, global4.x, true), vec4<bool>(global4.x, false, global4.x, false), vec4<bool>(false, false, global4.x, true)), select(vec4<bool>(false, global4.x, global4.x, true), vec4<bool>(false, true, global4.x, true), false), func_2(global4.x, Struct_2(vec4<bool>(global4.x, true, global4.x, global4.x)), Struct_2(vec4<bool>(global4.x, true, true, global4.x))).a), select(global4.x, any(vec4<bool>(false, global4.x, true, false)), false)));
    let var_3 = 38619u & (abs(global3.x) << (_wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(24148u, 0u, 0u, var_1.x)), countOneBits(1u), 4294967295u)) % 32u));
    global3 = vec4<u32>(~(~u_input.b.x >> (global3.x % 32u)), ~(~firstTrailingBit(abs(var_1.x))), 1u, var_3);
    let var_4 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(777f))), -897f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, -1308f, -979f), vec3<f32>(-1651f, var_0.x, var_0.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(var_0.x, -1470f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -944f, -194f))))))));
    let var_5 = func_2(true, func_2(false, func_2(true, func_2(var_0.x == 1417f, func_2(global4.x, Struct_2(vec4<bool>(global4.x, global4.x, false, true)), Struct_2(vec4<bool>(global4.x, true, global4.x, false))), func_2(global4.x, Struct_2(vec4<bool>(global4.x, true, global4.x, false)), Struct_2(vec4<bool>(true, global4.x, global4.x, true)))), Struct_2(vec4<bool>(true, global4.x, global4.x, global4.x))), func_2(true, func_2(true, Struct_2(vec4<bool>(false, false, global4.x, true)), func_2(true, Struct_2(vec4<bool>(global4.x, global4.x, true, global4.x)), Struct_2(vec4<bool>(false, true, global4.x, global4.x)))), Struct_2(vec4<bool>(global4.x, true, global4.x, global4.x)))), Struct_2(vec4<bool>(global4.x, !(var_0.x != var_0.x), !select(global4.x, global4.x, false), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1.x, 31612u) & u_input.e.zz, 1u, _wgslsmith_f_op_f32(-1582f * 933f));
}

