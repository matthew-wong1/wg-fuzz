struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: vec2<i32> = vec2<i32>(0i, i32(-2147483648));

var<private> global2: vec4<f32> = vec4<f32>(-355f, 503f, 2266f, 1048f);

var<private> global3: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(2147483647i), vec2<bool>(false, false), 0u), Struct_2(Struct_1(-1i), vec2<bool>(true, true), 4294967295u), Struct_2(Struct_1(-31426i), vec2<bool>(true, false), 55214u), Struct_2(Struct_1(i32(-2147483648)), vec2<bool>(true, false), 1u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32) -> vec4<bool> {
    let var_0 = 39981i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global2.x, 426f)), _wgslsmith_f_op_f32(-1045f - global2.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-290f, -513f))))));
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let var_2 = var_0;
    return !select(vec4<bool>(true, true, true, true), vec4<bool>(countOneBits(4294967295u) <= firstTrailingBit(1u), true, any(vec2<bool>(false, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.x >= global2.x, global1.x >= -79136i, true, true), true));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> vec4<i32> {
    var var_0 = any(vec2<bool>(!select(any(vec4<bool>(true, false, true, true)), all(vec4<bool>(false, true, false, false)), arg_1.x != global2.x), true));
    let var_1 = u_input.a.x;
    var_0 = select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 859f) * -304f)) >= 661f, global2.x != _wgslsmith_f_op_f32(abs(-325f)), false);
    var var_2 = func_1(firstLeadingBit(_wgslsmith_add_u32(1u, 1316u)));
    var_2 = vec4<bool>(false, !var_2.x && any(!(!vec4<bool>(false, var_2.x, false, true))), all(!(!func_1(16469u))), !(true | any(vec4<bool>(var_2.x, var_2.x, var_2.x, true))));
    return u_input.c;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec3<bool>) -> vec4<i32> {
    var var_0 = select(!any(select(vec3<bool>(false, arg_2.x, false), vec3<bool>(true, true, true), vec3<bool>(false, arg_2.x, true))), arg_2.x, !(!(!arg_2.x))) | arg_2.x;
    var var_1 = vec3<bool>(true, arg_2.x, true & (false && !arg_2.x));
    return func_3(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, 48381u, u_input.d.x, 1u)), ~vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.b.x)) & _wgslsmith_mod_u32(~0u, select(~u_input.a.x, u_input.d.x, false)), global2.ywz, vec4<i32>(-2147483647i, 21703i, 768i, ~global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(1i, -u_input.c.x), global1.x, _wgslsmith_mod_i32(-2147483647i, ~(-10243i)), ~(-3040i));
    var var_1 = -1573f;
    var var_2 = vec3<bool>(true, !all(vec4<bool>(true, false, 63776u < u_input.d.x, true)), select(!all(func_1(32444u)), any(vec3<bool>(true, true, true)) && true, true));
    var_0 = select(vec4<i32>(0i, abs(abs(0i)), (i32(-1i) * -1i) << (u_input.b.x % 32u), firstLeadingBit(u_input.c.x) ^ global1.x), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(197f, 730f, global2.x, global2.x)), vec4<f32>(329f, global2.x, 512f, global2.x)), vec4<i32>(var_0.x, u_input.c.x, -1i, var_0.x) & -vec4<i32>(var_0.x, global1.x, -2147483647i, 1i), vec3<bool>(var_2.x & false, true, true)), vec4<bool>(true, true, func_1(u_input.a.x).x, all(vec3<bool>(true, true, true)))) & -vec4<i32>(_wgslsmith_sub_i32(15768i, u_input.c.x) << (5774u % 32u), _wgslsmith_mod_i32(0i, 72335i << (u_input.a.x % 32u)), u_input.c.x, reverseBits(_wgslsmith_div_i32(55453i, -8737i)));
    let var_3 = vec2<bool>(true, any(vec4<bool>(var_2.x, any(var_2.zz), var_2.x, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1409f, 302f, _wgslsmith_f_op_f32(f32(-1f) * -1146f)), i32(-1i) * -1i, _wgslsmith_mult_u32(reverseBits(u_input.d.x), u_input.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.xz)))), vec4<f32>(-480f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_div_f32(global2.x, 474f)))), -432f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))));
}

