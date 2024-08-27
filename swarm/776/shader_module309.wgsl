struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 24331u, 4294967295u, 1157u);

var<private> global1: vec3<i32> = vec3<i32>(-48233i, -2570i, -55146i);

var<private> global2: Struct_1 = Struct_1(1396f, vec4<i32>(39452i, 17915i, 1i, 8194i));

var<private> global3: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false));

var<private> global4: Struct_3 = Struct_3(47432i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<i32>) -> vec2<bool> {
    global3 = array<vec4<bool>, 6>();
    var var_0 = (global2.b.wx ^ (global2.b.zz & firstLeadingBit(min(vec2<i32>(arg_2.x, arg_2.x), vec2<i32>(56166i, -1i))))) << (vec2<u32>(global0.x, ~global0.x) % vec2<u32>(32u));
    var var_1 = arg_1;
    var var_2 = arg_0.x;
    return !(!select(select(!vec2<bool>(false, arg_1), !vec2<bool>(arg_1, true), !vec2<bool>(arg_1, false)), vec2<bool>(true, all(vec2<bool>(arg_1, true))), !vec2<bool>(false, arg_1)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.a, global2.a, -1000f, _wgslsmith_f_op_f32(select(523f, _wgslsmith_div_f32(140f, 1240f), true))), vec4<f32>(-558f, global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1034f))), global2.a))));
    let var_1 = arg_0.b;
    var var_2 = _wgslsmith_mult_u32(abs(global0.x), 1u);
    global3 = array<vec4<bool>, 6>();
    let var_3 = -vec2<i32>(-abs(min(global1.x, arg_0.b.x)), 0i);
    return !(!(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))));
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = select(select(select(vec2<bool>(true, true), func_2(~u_input.a.yz, true, global2.b.zw), vec2<bool>(global0.x <= u_input.a.x, true)), !(!func_2(vec2<u32>(0u, global0.x), true, global2.b.yw)), any(func_3(Struct_1(global2.a, vec4<i32>(1i, 0i, global4.a, global2.b.x))))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), !select(vec2<bool>(false, false), vec2<bool>(true, false), false), true), func_3(Struct_1(_wgslsmith_f_op_f32(-337f + _wgslsmith_f_op_f32(-global2.a)), abs(vec4<i32>(0i, arg_0.a, arg_0.a, arg_0.a)))).x);
    var var_1 = ~global0.x;
    global1 = global2.b.zyw;
    global1 = vec3<i32>(global2.b.x, abs(global2.b.x), _wgslsmith_mult_i32(9833i, _wgslsmith_mod_i32(global4.a, -firstTrailingBit(6730i))));
    global3 = array<vec4<bool>, 6>();
    return vec2<bool>(true, all(select(vec4<bool>(!var_0.x, true, global2.a > global2.a, false), vec4<bool>(select(false, var_0.x, var_0.x), func_3(Struct_1(391f, vec4<i32>(global1.x, global4.a, 2147483647i, global4.a))).x, !var_0.x, global2.a >= global2.a), select(select(global3[_wgslsmith_index_u32(u_input.b, 6u)], vec4<bool>(true, var_0.x, false, false), global3[_wgslsmith_index_u32(77295u, 6u)]), vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !((_wgslsmith_add_i32(global1.x, 2147483647i) < firstLeadingBit(_wgslsmith_dot_vec3_i32(global2.b.wyz, global2.b.zyz))) & !all(vec3<bool>(true, false, true)));
    let var_1 = select(vec2<bool>(-(global4.a | -20615i) == -48568i, !(!any(global3[_wgslsmith_index_u32(global0.x, 6u)]))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(var_0, true)), vec2<bool>(false, false), !all(vec3<bool>(var_0, var_0, var_0))), !select(!func_1(Struct_3(11600i)), !select(vec2<bool>(false, false), vec2<bool>(var_0, true), false), !var_0));
    let var_2 = _wgslsmith_f_op_f32(global2.a - global2.a);
    global2 = Struct_1(global2.a, ~(-global2.b));
    let var_3 = u_input.a.x;
    global0 = vec4<u32>(var_3 ^ 46468u, global0.x, _wgslsmith_dot_vec4_u32(~countOneBits(~vec4<u32>(58709u, var_3, 19224u, u_input.b)), (_wgslsmith_add_vec4_u32(vec4<u32>(65584u, 40188u, var_3, global0.x), vec4<u32>(u_input.a.x, 70756u, var_3, 3302u)) << (abs(vec4<u32>(var_3, 4294967295u, global0.x, 4294967295u)) % vec4<u32>(32u))) & select(vec4<u32>(0u, 1u, global0.x, var_3), max(vec4<u32>(62056u, 4294967295u, var_3, 3475u), vec4<u32>(global0.x, var_3, 1u, var_3)), true)), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(global2.b, 14823u, _wgslsmith_sub_vec2_i32(vec2<i32>(global2.b.x & abs(-2147483647i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2135i, global4.a), vec3<i32>(global1.x, global4.a, 2147483647i)), _wgslsmith_dot_vec3_i32(global2.b.xzz, vec3<i32>(-5987i, global2.b.x, global2.b.x)))), vec2<i32>(global2.b.x, -(~2147483647i))));
}

