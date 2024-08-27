struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: bool = false;

var<private> global3: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(4294967295u, 57320u, 4294967295u), vec3<u32>(53515u, 1u, 0u), vec3<u32>(1u, 4294967295u, 6105u), vec3<u32>(1u, 54239u, 32366u), vec3<u32>(0u, 1963u, 1u), vec3<u32>(0u, 18209u, 0u), vec3<u32>(55714u, 4294967295u, 13657u), vec3<u32>(34504u, 89039u, 59357u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(60211u, 32405u, 809u));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_3) -> bool {
    var var_0 = !select(!vec2<bool>(all(vec4<bool>(true, false, true, arg_3.a.b)), !arg_3.b.a), arg_2.xx, vec2<bool>(arg_3.a.b, true));
    var var_1 = ~arg_1;
    return arg_2.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = Struct_3(Struct_1(func_3(_wgslsmith_add_u32(u_input.a.x, global0.c.x) | arg_0.c.x, u_input.a.x, !vec3<bool>(true, true, arg_2.x), Struct_3(Struct_1(false, true, u_input.a), Struct_1(true, arg_2.x, vec4<u32>(44962u, 1u, 4294967295u, 98283u)), _wgslsmith_f_op_vec2_f32(-arg_1.zy))), true, ~vec4<u32>(min(arg_0.c.x, 99883u), _wgslsmith_mult_u32(1u, global0.c.x), _wgslsmith_sub_u32(global0.c.x, u_input.a.x), 132919u)), arg_0, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, -780f), arg_1.yy) * arg_1.yx), arg_1.xy)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), 758f));
    return select(select(arg_2, arg_2, (0i << (_wgslsmith_sub_u32(49385u, arg_0.c.x) % 32u)) <= -64737i), !(!arg_2), arg_2);
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_dot_vec4_u32(u_input.a, max(vec4<u32>(4294967295u, 1910u, 83101u, global0.c.x ^ global0.c.x), _wgslsmith_sub_vec4_u32(u_input.a, ~vec4<u32>(0u, u_input.a.x, 19473u, global0.c.x)))) < min(~_wgslsmith_div_u32(select(global0.c.x, global0.c.x, global0.a), ~0u), _wgslsmith_mod_u32(global0.c.x, u_input.a.x));
    global1 = true;
    var var_0 = Struct_2(any(!func_2(Struct_1(false, global0.a, u_input.a), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1061f, 474f, 436f))), select(vec2<bool>(global0.b, true), vec2<bool>(false, true), false))), Struct_1(!(!global0.a), true, _wgslsmith_sub_vec4_u32(abs(vec4<u32>(12041u, 66767u, u_input.a.x, global0.c.x)), vec4<u32>(global0.c.x << (global0.c.x % 32u), ~u_input.a.x, 48756u, _wgslsmith_mult_u32(4294967295u, global0.c.x)))), reverseBits(~global0.c.zww), Struct_1(!global0.b, global0.b, firstTrailingBit(_wgslsmith_clamp_vec4_u32(global0.c, vec4<u32>(4294967295u, 2937u, global0.c.x, global0.c.x), u_input.a) & ~vec4<u32>(4294967295u, 1u, global0.c.x, global0.c.x))));
    global1 = any(!(!select(vec4<bool>(true, true, var_0.b.b, var_0.a), vec4<bool>(var_0.b.b, global0.a, true, true), vec4<bool>(global0.b, var_0.d.b, false, true)))) && all(vec3<bool>(!(!global0.a), all(!vec4<bool>(var_0.a, false, global0.b, false)), any(vec3<bool>(global0.a, global0.b, var_0.a)) && (var_0.b.a & false)));
    let var_1 = Struct_3(var_0.d, Struct_1(var_0.d.b, var_0.d.b == all(select(vec3<bool>(false, true, true), vec3<bool>(global0.a, var_0.a, true), vec3<bool>(true, var_0.d.a, global0.b))), reverseBits(var_0.d.c)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -805f) * 1969f) - _wgslsmith_f_op_f32(f32(-1f) * -970f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2219f)) - _wgslsmith_div_f32(1763f, 858f)))));
    return Struct_1((_wgslsmith_f_op_f32(trunc(var_1.c.x)) >= 1304f) && var_1.a.a, true & any(select(select(vec2<bool>(var_1.a.b, var_0.b.a), vec2<bool>(global0.b, global0.b), vec2<bool>(var_0.b.b, var_0.d.a)), func_2(var_1.a, vec3<f32>(var_1.c.x, -494f, 255f), vec2<bool>(global0.b, var_0.d.a)), func_2(var_1.a, vec3<f32>(1212f, 1088f, -1147f), vec2<bool>(true, true)).x)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.a;
    global3 = array<vec3<u32>, 10>();
    global0 = func_1();
    var var_0 = vec2<i32>(1i, 1i) >> (~_wgslsmith_sub_vec2_u32(~reverseBits(u_input.a.zw), vec2<u32>(global0.c.x, global0.c.x)) % vec2<u32>(32u));
    global3 = array<vec3<u32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 567f)), _wgslsmith_f_op_f32(209f * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(657f, -1000f))))), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, 1i, -45961i) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, -23484i, var_0.x) << (vec4<u32>(global0.c.x, u_input.a.x, 1u, 4826u) % vec4<u32>(32u)), abs(vec4<i32>(0i, var_0.x, var_0.x, var_0.x))), reverseBits(vec4<i32>(select(-28521i, -1i, true), 1i, min(var_0.x, 0i), var_0.x ^ var_0.x))), _wgslsmith_mod_vec4_u32(~global0.c, global0.c), 0u);
}

