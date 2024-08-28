struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2>;

var<private> global1: vec3<bool>;

var<private> global2: i32 = 51940i;

var<private> global3: Struct_1;

var<private> global4: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    return !vec3<bool>(true, !global1.x, global1.x);
}

fn func_2(arg_0: u32) -> bool {
    global1 = select(!select(vec3<bool>(true, true, global3.c.x), func_3(vec4<u32>(arg_0, u_input.c.x, 55077u, arg_0)), !(!vec3<bool>(global1.x, false, global3.c.x))), select(select(vec3<bool>(any(vec3<bool>(global3.c.x, global1.x, global1.x)), false, all(vec4<bool>(global3.c.x, true, true, false))), vec3<bool>(false, all(vec4<bool>(true, global3.c.x, global1.x, true)), true), global3.c.x), !vec3<bool>(global3.c.x, select(global1.x, global3.c.x, global1.x), global1.x), global1.x), !(!(!global1.x)));
    global3 = Struct_1(global3.a, min(firstTrailingBit(~abs(u_input.d.x)), ~(-42370i)), !global3.c);
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2908f, -329f, -1000f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(745f, var_0.x, var_0.x))))), vec3<f32>(var_0.x, var_0.x, 1785f)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-490f, 692f, -1301f)), vec3<f32>(var_0.x, 1206f, 576f)))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 671f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.x))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-181f, 125f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(319f, var_0.x, -911f) - vec3<f32>(476f, -1000f, var_0.x)))))))));
    let var_1 = Struct_2(Struct_1(u_input.b ^ ~global3.a, _wgslsmith_dot_vec2_i32(-u_input.d.yz, u_input.d.xy), vec2<bool>(_wgslsmith_f_op_f32(var_0.x * var_0.x) != 745f, false)), -1i, Struct_1(arg_0, 30769i, vec2<bool>(true, any(!vec3<bool>(global1.x, global3.c.x, global3.c.x)))));
    return !(-abs(global3.b >> (53845u % 32u)) >= 41688i);
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    global1 = !vec3<bool>(!func_2(4294967295u), true, all(global1.yy) && !(!global3.c.x));
    global1 = select(!vec3<bool>(func_2(global3.a) & (global3.a == 3406u), ~2147483647i > (arg_0.b ^ arg_0.b), true), !(!vec3<bool>(true, u_input.c.x < arg_0.a, true)), vec3<bool>(false && func_2(~u_input.b), global3.c.x, true));
    var var_0 = arg_0;
    let var_1 = 185i;
    var_0 = arg_0;
    return global1.zz;
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = vec2<bool>(69093u > (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(61428u, 36524u, 1u), u_input.a), _wgslsmith_dot_vec3_u32(u_input.c.zxz, u_input.c.xwz)) >> (global3.a % 32u)), all(vec4<bool>(any(!vec2<bool>(global1.x, true)), true && global1.x, countOneBits(u_input.b) == _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a, 4294967295u, u_input.b), u_input.c.xyz), global1.x)));
    global2 = reverseBits(u_input.d.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-625f * 593f)) + 661f);
    let var_2 = u_input.a.zz;
    global0 = array<vec2<u32>, 2>();
    return Struct_1(73118u, _wgslsmith_dot_vec3_i32(vec3<i32>(~(-7937i << (var_2.x % 32u)), u_input.d.x, _wgslsmith_add_i32(43617i, u_input.d.x)), _wgslsmith_mult_vec3_i32(countOneBits(u_input.d), vec3<i32>(-2147483647i, -1i, global3.b)) >> (u_input.a % vec3<u32>(32u))), select(!func_1(Struct_1(72274u, u_input.d.x, vec2<bool>(var_0.x, arg_0.x))), var_0, !select(vec2<bool>(var_0.x, global1.x), func_1(Struct_1(var_2.x, -2147483647i, var_0)), global1.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_1(~_wgslsmith_mult_u32(global3.a, ~(~u_input.c.x)), ~_wgslsmith_mult_i32(-51234i, -21938i << (_wgslsmith_mod_u32(14049u, global3.a) % 32u)), vec2<bool>(!var_0, global1.x));
    global1 = !vec3<bool>(true, var_0, global3.c.x);
    var_1 = func_4(select(vec4<bool>(any(!var_1.c), !var_1.c.x, all(func_1(Struct_1(global3.a, 67484i, global1.yz))), true && all(vec3<bool>(global3.c.x, true, true))), select(select(!vec4<bool>(true, false, false, global3.c.x), !vec4<bool>(var_0, global3.c.x, false, global1.x), select(vec4<bool>(true, false, var_1.c.x, false), vec4<bool>(var_0, global1.x, var_1.c.x, false), false)), !(!vec4<bool>(false, false, var_1.c.x, false)), global3.c.x), true));
    var var_2 = select(vec3<bool>(!(!(!global1.x)), _wgslsmith_div_f32(-584f, _wgslsmith_div_f32(-709f, 1945f)) > _wgslsmith_f_op_f32(ceil(968f)), global1.x), !vec3<bool>(any(var_1.c), true, any(!vec4<bool>(global3.c.x, global1.x, global1.x, var_0))), !func_3(~vec4<u32>(25591u, 1u, 0u, global3.a) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 67032u, var_1.a, global3.a), vec4<u32>(0u, 0u, 1081u, global3.a))));
    let var_3 = func_4(!vec4<bool>(var_0, global1.x, var_2.x, !(!var_1.c.x)));
    global2 = ~0i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -702f) - _wgslsmith_f_op_f32(f32(-1f) * -1351f)) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1971f))), _wgslsmith_f_op_f32(f32(-1f) * -517f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1567f * -644f)))), firstLeadingBit(u_input.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-260f, 748f, -241f), vec3<f32>(-1000f, -1339f, -921f))))))));
}

