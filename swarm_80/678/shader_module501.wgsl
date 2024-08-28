struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-566f, 389f, 1000f), vec3<f32>(-1104f, -153f, 821f), vec3<f32>(661f, 1336f, 1346f), vec3<f32>(-283f, -1756f, 935f), vec3<f32>(-752f, -856f, -512f), vec3<f32>(-1183f, -1572f, 380f), vec3<f32>(-605f, -539f, 868f), vec3<f32>(-307f, 147f, -454f), vec3<f32>(229f, 1000f, 270f), vec3<f32>(-532f, 208f, 2167f), vec3<f32>(-286f, -1175f, 1035f), vec3<f32>(2147f, 1766f, 710f), vec3<f32>(-607f, -952f, -313f), vec3<f32>(-1498f, -2965f, 557f), vec3<f32>(-1000f, -1075f, -1014f), vec3<f32>(635f, 848f, -1368f), vec3<f32>(110f, 777f, 1619f), vec3<f32>(124f, -375f, -365f), vec3<f32>(512f, 318f, 1442f), vec3<f32>(540f, -728f, -462f), vec3<f32>(-684f, -625f, -921f), vec3<f32>(-1249f, 2982f, -631f), vec3<f32>(451f, 401f, 736f), vec3<f32>(-658f, 1000f, 362f), vec3<f32>(-146f, -1624f, 804f), vec3<f32>(440f, -525f, -414f), vec3<f32>(472f, -1525f, 1360f), vec3<f32>(1229f, -1000f, -2282f));

var<private> global1: array<vec3<u32>, 4>;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 4u)];
    global1 = array<vec3<u32>, 4>();
    global1 = array<vec3<u32>, 4>();
    var var_1 = global2.a;
    let var_2 = global2.a;
    return -24606i;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = false;
    global1 = array<vec3<u32>, 4>();
    var var_1 = Struct_2(global2.a, vec2<i32>(51303i, _wgslsmith_mod_i32(func_3(), _wgslsmith_sub_i32(select(65961i, u_input.c, true), 52656i))), u_input.c, arg_0.xx);
    global0 = array<vec3<f32>, 28>();
    var var_2 = select(!select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(select(false, true, false), true, any(vec3<bool>(true, false, true))), false), select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, false), u_input.a.x != 259u)), !vec3<bool>(true, true, select(true, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    return select(!vec3<bool>(var_2.x, var_2.x, !any(vec3<bool>(var_2.x, var_2.x, true))), !vec3<bool>(var_2.x, !var_2.x, false == var_2.x), var_2.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec2<f32>) -> bool {
    global0 = array<vec3<f32>, 28>();
    let var_0 = !select(!(!any(vec2<bool>(true, true))), false | all(vec2<bool>(true, true)), true);
    global0 = array<vec3<f32>, 28>();
    global0 = array<vec3<f32>, 28>();
    return any(vec3<bool>(all(!func_2(global0[_wgslsmith_index_u32(28446u, 28u)], vec3<f32>(arg_2.x, 1617f, -113f))), true, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.a.x & 4294967295u, 28u)] + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-579f, global2.d.x, global2.a.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, -176f, -154f)))));
    var_0 = global2.a;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.d.x, _wgslsmith_f_op_f32(-global2.a.a.x), _wgslsmith_f_op_f32(global2.a.a.x - var_0.a.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -253f), 1633f, _wgslsmith_f_op_f32(step(global2.d.x, -788f))), true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.d.x, global2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-875f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-1000f - var_0.a.x), 1014f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.a.a.x, var_1.a.x, 1181f)))) + vec3<f32>(289f, -1586f, -562f)))));
    let var_3 = _wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(9894u, ~(~(~32575u))), 4u)], firstLeadingBit(global1[_wgslsmith_index_u32(select(~(~u_input.a.x), ~countOneBits(0u), func_1(-vec4<i32>(u_input.b.x, global2.c, global2.c, 0i), global1[_wgslsmith_index_u32(7489u, 4u)], var_0.a.yz)), 4u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d.x, -1251f) + 539f), firstTrailingBit(-2147483647i) | u_input.b.x, _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(min(40348u, 0u), 4u)], var_3 << (global1[_wgslsmith_index_u32(u_input.a.x, 4u)] % vec3<u32>(32u))), _wgslsmith_mod_u32(38820u >> (0u % 32u), 4294967295u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.x, var_1.a.x, 154f, 1f))), ~vec2<u32>(4294967295u, ~(~32348u)));
}

