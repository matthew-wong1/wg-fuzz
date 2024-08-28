struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(vec2<bool>(false, false), false, vec2<f32>(-396f, 402f)), Struct_3(vec2<bool>(false, true), true, vec2<f32>(-1557f, 2610f)), Struct_3(vec2<bool>(true, true), true, vec2<f32>(-801f, -398f)), Struct_3(vec2<bool>(true, false), false, vec2<f32>(1464f, 366f)), Struct_3(vec2<bool>(false, true), true, vec2<f32>(1225f, -1318f)), Struct_3(vec2<bool>(true, false), false, vec2<f32>(936f, 1377f)), Struct_3(vec2<bool>(false, false), false, vec2<f32>(112f, -118f)), Struct_3(vec2<bool>(true, false), true, vec2<f32>(-1000f, 1676f)), Struct_3(vec2<bool>(false, true), true, vec2<f32>(643f, 224f)), Struct_3(vec2<bool>(false, true), true, vec2<f32>(516f, 730f)), Struct_3(vec2<bool>(false, true), true, vec2<f32>(1246f, 1136f)), Struct_3(vec2<bool>(true, false), true, vec2<f32>(814f, 797f)), Struct_3(vec2<bool>(false, false), true, vec2<f32>(-838f, 705f)));

var<private> global2: array<i32, 1>;

var<private> global3: i32;

var<private> global4: bool = true;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: i32) -> vec3<bool> {
    var var_0 = ~(~u_input.a >> (4294967295u % 32u));
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~_wgslsmith_sub_u32(1u << (0u % 32u), 1u), abs(1u)), 13u)];
    global2 = array<i32, 1>();
    var var_2 = u_input.a;
    global2 = array<i32, 1>();
    return !select(!vec3<bool>(all(vec3<bool>(var_1.a.x, true, false)), any(vec4<bool>(var_1.a.x, false, true, var_1.a.x)), true), select(vec3<bool>(var_1.a.x, true, var_1.b), vec3<bool>(false, false, var_1.b == var_1.b), false), all(vec4<bool>(var_1.a.x && true, var_1.a.x && var_1.b, var_1.a.x, all(vec3<bool>(var_1.b, var_1.a.x, false)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_mult_vec2_u32(~(~vec2<u32>(abs(u_input.a), ~arg_2)), _wgslsmith_sub_vec2_u32(select(~abs(vec2<u32>(26150u, 79770u)), min(_wgslsmith_sub_vec2_u32(vec2<u32>(46120u, arg_2), vec2<u32>(1u, u_input.a)), ~vec2<u32>(arg_2, 60812u)), select(!vec2<bool>(false, arg_1.x), vec2<bool>(true, true), any(vec2<bool>(false, arg_0.b)))), ~vec2<u32>(arg_2, _wgslsmith_sub_u32(1u, arg_2))));
    var var_1 = ~(~arg_2);
    var var_2 = Struct_1(0i);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1528f)));
    var var_4 = 21015u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> vec3<f32> {
    let var_0 = func_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(u_input.a), 47127u) | 50397u, 1u)]);
    global0 = Struct_1(global2[_wgslsmith_index_u32(0u, 1u)]);
    global1 = array<Struct_3, 13>();
    global2 = array<i32, 1>();
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(var_0.xz, false, vec2<f32>(144f, 452f)), var_0, u_input.a, var_0)), _wgslsmith_f_op_f32(max(-1399f, 247f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-292f, -394f), vec2<f32>(-523f, 2258f)) * vec2<f32>(-1000f, -122f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -553f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -390f)), -1069f))));
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1066f, -351f)), 1f, !var_0.x)))))), _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-244f, var_1.x))) + -640f));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = false;
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1((16108i | abs(global2[_wgslsmith_index_u32(abs(u_input.a), 1u)])) >= u_input.b, -_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(-29223i, u_input.b), vec2<i32>(u_input.b, u_input.b)) ^ ~vec2<i32>(26346i, global0.a))));
    let var_1 = !vec4<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), any(func_2(36069i)), any(vec4<bool>(true, all(vec3<bool>(false, false, false)), true, true)), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false))));
    let var_2 = var_0.yy;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_u32(max(u_input.a, u_input.a), u_input.a)), -_wgslsmith_mult_vec2_i32(select(abs(vec2<i32>(21401i, 2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, global2[_wgslsmith_index_u32(0u, 1u)]), vec2<i32>(-2147483647i, u_input.b)), true), _wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.b, 52506i), vec2<i32>(-2147483647i, -27844i), vec2<bool>(var_1.x, var_1.x)), abs(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], global0.a)))));
}

