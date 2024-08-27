struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<u32>(1u, 4294967295u, 1u), -1000f, -1158f, false);

var<private> global1: f32;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: vec3<i32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: u32) -> vec3<bool> {
    global0 = Struct_4(u_input.b, 1f, _wgslsmith_f_op_f32(f32(-1f) * -598f), _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * _wgslsmith_f_op_f32(global0.c + -1338f))) == global0.b);
    global2 = 16115i;
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + global0.c)), 1f, global0.d);
    global0 = Struct_4(_wgslsmith_mod_vec3_u32(min(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(global0.a.x, arg_0, global0.a.x), u_input.d), vec3<u32>(101421u, arg_2, 0u), u_input.d), ~vec3<u32>(u_input.c, 4294967295u, 966u)), arg_1), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.b, 1188f)) + _wgslsmith_f_op_f32(-global0.b))), global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1070f, 428f)), _wgslsmith_f_op_f32(step(-849f, global0.c)))))) - -136f), true || (!all(vec2<bool>(global0.d, global0.d)) || !(!global0.d)));
    let var_0 = ~(34049u >> (arg_1.x % 32u));
    return select(vec3<bool>(!all(vec3<bool>(true, false, true)) & !(global0.b > -137f), !any(vec4<bool>(true, true, true, false)), true), vec3<bool>(global0.d, false, !select(true, true, true) | global0.d), global0.d);
}

fn func_2() -> Struct_1 {
    var var_0 = global0.b;
    global2 = -reverseBits(-global3.x);
    var var_1 = _wgslsmith_div_vec2_i32(select(~(~(~vec2<i32>(1i, 1i))), global3.yz, select(!vec2<bool>(global0.d, true), select(vec2<bool>(global0.d, false), vec2<bool>(global0.d, global0.d), vec2<bool>(global0.d, false)), true)), global3.zy);
    global3 = ~(~vec3<i32>(-49072i, _wgslsmith_add_i32(35894i, var_1.x) ^ -10795i, ~(~(-6123i))));
    var var_2 = Struct_3(false, Struct_1(select(vec3<bool>(global0.d, !global0.d, global0.d), select(select(vec3<bool>(global0.d, false, global0.d), vec3<bool>(global0.d, true, global0.d), global0.d), vec3<bool>(global0.d, global0.d, global0.d), vec3<bool>(false, false, true)), func_3(1u, global0.a, u_input.d.x)), true, -1678f, all(vec4<bool>(!global0.d, true, !global0.d, any(vec2<bool>(global0.d, false))))));
    return var_2.b;
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    global3 = countOneBits(vec3<i32>(-1i) * -firstTrailingBit(reverseBits(vec3<i32>(0i, global3.x, global3.x))));
    let var_0 = -24913i;
    global1 = _wgslsmith_f_op_f32(round(global0.c));
    let var_1 = func_2();
    var var_2 = vec3<u32>(global0.a.x, 44186u & global0.a.x, global0.a.x);
    return Struct_4(~vec3<u32>(16333u, ~0u, global0.a.x >> (1u % 32u)) ^ u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1320f), _wgslsmith_f_op_f32(-var_1.c))))), true);
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(Struct_3(all(vec3<bool>(global0.d, global0.d, true)) | all(vec2<bool>(true, true)), func_2()));
    global1 = _wgslsmith_f_op_f32(442f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(func_4(Struct_3(var_0.d, Struct_1(vec3<bool>(false, true, global0.d), var_0.d, -445f, true))).b, _wgslsmith_f_op_f32(global0.b * 318f)), -1158f)));
    var var_1 = global0.c;
    global0 = func_4(Struct_3((global3.x == _wgslsmith_clamp_i32(global3.x, 1i, global3.x)) & var_0.d, Struct_1(func_2().a, any(!vec4<bool>(global0.d, global0.d, true, global0.d)), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(var_0.c, global0.b)), var_0.d)));
    return Struct_3(any(func_3(28479u, vec3<u32>(48537u, global0.a.x, var_0.a.x) << (~u_input.d % vec3<u32>(32u)), ~(~1u))), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3.x ^ global3.x;
    var var_0 = 2625u << (0u % 32u);
    var var_1 = ~(~vec4<i32>(8030i, firstTrailingBit(-1i), ~global3.x, -global3.x) & (vec4<i32>(0i, select(global3.x, 27282i, global0.d), -37287i, reverseBits(global3.x)) << (~(vec4<u32>(global0.a.x, u_input.a, u_input.c, 0u) << (vec4<u32>(4294967295u, global0.a.x, 0u, global0.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = func_1();
    let var_3 = _wgslsmith_div_i32(global3.x, ~global3.x >> (countOneBits(u_input.b.x) % 32u));
    let var_4 = vec2<u32>(select(4294967295u, 0u & firstTrailingBit(global0.a.x), !func_4(func_1()).d), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c)), global0.c, min(~u_input.a, global0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, var_2.b.c, global0.c, 2293f) * vec4<f32>(var_2.b.c, var_2.b.c, -188f, 1384f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.c, 589f, -382f, global0.c))), select(!vec4<bool>(global0.d, true, var_2.b.d, false), !vec4<bool>(true, false, true, global0.d), var_2.b.d)))), _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.c * var_2.b.c) - global0.c))));
}

