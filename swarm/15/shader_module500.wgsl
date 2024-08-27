struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(-882f, 6028u, vec4<bool>(true, false, false, false)), vec2<u32>(0u, 66040u), false, -4878i, false), Struct_2(Struct_1(2327f, 21845u, vec4<bool>(false, true, false, true)), vec2<u32>(72115u, 0u), true, 0i, false));

var<private> global1: array<Struct_4, 21>;

var<private> global2: array<vec2<u32>, 15>;

var<private> global3: array<vec4<f32>, 16>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global1 = array<Struct_4, 21>();
    global1 = array<Struct_4, 21>();
    global2 = array<vec2<u32>, 15>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, 1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 1167f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, 771f) - vec2<f32>(arg_0.a, arg_0.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1209f, arg_0.a)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + arg_0.a), arg_0.a) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 257f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1674f, arg_0.a))))), vec2<f32>(224f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(select(-777f, arg_0.a, true))))))), abs(vec3<u32>(0u, ~(~18261u), arg_0.b ^ ~0u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(arg_0.b, 41803u, u_input.b.x)), vec3<u32>(0u, 1u, arg_0.b) << (u_input.d % vec3<u32>(32u))), u_input.b.xxy, vec3<u32>(arg_0.b, u_input.b.x, ~4294967295u)), u_input.b.wyx, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 90327u, arg_0.b), vec3<u32>(16212u, 8194u, 0u) | u_input.d) ^ u_input.d));
    let var_1 = _wgslsmith_div_vec3_u32(~abs(~u_input.b.xyy), vec3<u32>(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(var_0.c.x, 15u)] & u_input.d.xx, vec2<u32>(u_input.b.x, var_0.c.x) << (global2[_wgslsmith_index_u32(var_0.d.x, 15u)] % vec2<u32>(32u))), arg_0.b, var_0.c.x)) & abs(~(var_0.d << (var_0.d % vec3<u32>(32u))));
    return 1i;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    global2 = array<vec2<u32>, 15>();
    global3 = array<vec4<f32>, 16>();
    global0 = array<Struct_2, 2>();
    global3 = array<vec4<f32>, 16>();
    global1 = array<Struct_4, 21>();
    return select(arg_3.c.xzx, !(!arg_3.c.yxy), _wgslsmith_f_op_f32(-arg_3.a) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a * _wgslsmith_f_op_f32(select(1190f, 1262f, arg_3.c.x))) - _wgslsmith_f_op_f32(f32(-1f) * -515f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    global2 = array<vec2<u32>, 15>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-arg_0.a.x)), 422f, -205f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.a, arg_0.b.x, arg_0.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(691f, arg_1.a.a, -605f) + vec3<f32>(arg_1.a.a, arg_1.a.a, 3213f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a, arg_0.a.x, arg_1.a.a))), arg_1.c))), all(vec4<bool>(any(arg_1.a.c.zwy) | arg_1.e, false, all(select(vec2<bool>(arg_1.e, false), vec2<bool>(arg_1.c, arg_1.c), true)), true))));
    let var_1 = vec3<i32>(arg_1.d, firstLeadingBit(-30494i), func_1(arg_1.a));
    var var_2 = arg_1.a;
    let var_3 = any(!select(!select(var_2.c.xzy, var_2.c.xxz, false), var_2.c.xxy, !var_2.c.xww));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(false, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))) & true, all(vec2<bool>(true, true))), !select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), func_2(func_1(Struct_1(-113f, 26971u, vec4<bool>(false, false, false, true))), 4294967295u ^ u_input.a, false, Struct_1(1211f, 1u, vec4<bool>(false, true, false, false)))), vec3<bool>(true, true, true));
    var_0 = vec3<bool>(var_0.x | true, false, func_3(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2353f, -1162f)) * vec2<f32>(1895f, -843f)), vec2<f32>(-976f, 756f), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, 24450u), vec3<u32>(u_input.b.x, u_input.a, 0u), u_input.b.wxy), _wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(1u, 4294967295u, u_input.b.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -980f), u_input.d.x & u_input.d.x, !vec4<bool>(var_0.x, false, var_0.x, true)), u_input.b.yx, true, 24032i, !var_0.x)));
    var var_1 = var_0.x;
    var var_2 = u_input.c.x;
    global1 = array<Struct_4, 21>();
    var_1 = (u_input.c.x | ~firstLeadingBit(min(1i, -1076i))) >= ~(-20512i);
    global2 = array<vec2<u32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(u_input.c.zz), vec2<i32>(i32(-1i) * -37046i, 50787i)), u_input.c.yz), vec4<u32>(62507u, min(_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(u_input.a, 1u)) << (~min(4294967295u, 27240u) % 32u), u_input.a, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d.x, max(0u, 1u)), countOneBits(~30417u))));
}

