struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(239f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> bool {
    let var_0 = Struct_3(-2631f);
    global0 = Struct_3(_wgslsmith_f_op_f32(round(global0.a)));
    var var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(455f, 1007f)));
    var_1 = -689f;
    let var_2 = Struct_1(firstLeadingBit(1i), global0.a, 465f, 1173f);
    return !(745f >= var_2.c);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> bool {
    let var_0 = Struct_1(firstTrailingBit(-(~(-arg_0.x))), 498f, global0.a, _wgslsmith_f_op_f32(-global0.a));
    return all(vec3<bool>(all(vec3<bool>(true, all(vec3<bool>(true, false, true)), false)), select(arg_0.x < var_0.a, true, true) | (true && (var_0.b <= -717f)), true));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: f32) -> Struct_3 {
    let var_0 = -1000f;
    var var_1 = vec2<i32>(2147483647i, ~abs(10525i));
    var_1 = abs(~vec2<i32>(var_1.x, -reverseBits(var_1.x)));
    var var_2 = Struct_5(Struct_1(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(136f - _wgslsmith_f_op_f32(-global0.a)))), arg_2, 265f), Struct_1(countOneBits(1i), 764f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(max(197f, global0.a))))), 154f));
    let var_3 = false;
    return Struct_3(_wgslsmith_f_op_f32(-arg_2));
}

fn func_1(arg_0: u32) -> vec4<f32> {
    global0 = func_4(!vec2<bool>(func_2(u_input.d.x, u_input.a) || true, !func_3(vec4<i32>(-2147483647i, 53422i, 17585i, -2147483647i), vec4<u32>(34510u, 4294967295u, arg_0, u_input.d.x))), vec4<bool>(true, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), global0.a >= global0.a)), !all(vec4<bool>(true, false, false, true)), any(vec4<bool>(true, true, true, true))), global0.a);
    let var_0 = func_4(!select(vec2<bool>(arg_0 >= 21149u, true), vec2<bool>(any(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), true), vec4<bool>(true, false | (20683u != arg_0), true, true), select(vec4<bool>(false, true, all(vec2<bool>(false, true)), true), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2228f) * global0.a) * _wgslsmith_div_f32(244f, _wgslsmith_f_op_f32(global0.a * 1806f))), true)));
    global0 = var_0;
    global0 = func_4(vec2<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-552f + var_0.a), _wgslsmith_f_op_f32(-var_0.a))) > global0.a), !(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true), true)), func_4(select(vec2<bool>(true, global0.a > global0.a), vec2<bool>(true, true), vec2<bool>(true, true)), vec4<bool>(false, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), false, select(true, true, false)), -291f).a);
    global0 = func_4(vec2<bool>(select(true, any(vec3<bool>(true, true, true)), true) & all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))), !(any(vec2<bool>(false, true)) || true)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, false, any(vec2<bool>(true, false)), any(vec3<bool>(false, false, true))), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))), select(vec4<bool>(true, 1304f < var_0.a, func_3(vec4<i32>(-1i, 27175i, -2147483647i, -2147483647i), vec4<u32>(0u, u_input.d.x, 66250u, u_input.b.x)), select(false, false, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)))), var_0.a);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-410f - 392f) + var_0.a), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(func_4(vec2<bool>(true, false), vec4<bool>(true, false, false, true), 534f).a - -480f), global0.a) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, 1478f, global0.a) * vec4<f32>(var_0.a, var_0.a, 1001f, -2728f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -165f, var_0.a, global0.a))), vec4<f32>(_wgslsmith_f_op_f32(sign(1639f)), _wgslsmith_f_op_f32(floor(global0.a)), var_0.a, global0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_1(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(58168u, 1u) >> (u_input.c % 32u), countOneBits(~6941u))));
    let var_2 = !select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, false, false)))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true));
    let var_3 = select(-reverseBits(countOneBits(abs(vec2<i32>(2147483647i, 2147483647i)))), vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, 37190i, 1i, 15294i), vec4<i32>(-11067i, -1046i, -6917i, 52314i)), reverseBits(vec4<i32>(1i, 1i, 1i, 1i)))), select(var_2, var_2, var_2));
    var var_4 = vec3<u32>(u_input.e.x, max(u_input.b.x, _wgslsmith_sub_u32(~(u_input.d.x << (u_input.d.x % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 251u, 70001u, 17956u) & vec4<u32>(1u, 4294967295u, u_input.c, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-2147483647i, 2147483647i, max(var_3.x, -18858i)) ^ _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2265i, 17747i, var_3.x), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_3.x, -656i), vec3<i32>(var_3.x, var_3.x, -2147483647i))), vec3<i32>(var_3.x, var_3.x, 2147483647i) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 38130i, var_3.x), vec3<i32>(var_3.x, var_3.x, var_3.x))), firstLeadingBit(vec4<u32>(select(var_4.x, ~1u, var_2.x), var_4.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, u_input.c, u_input.a.x, var_4.x), vec4<u32>(0u, var_4.x, 4294967295u, 49533u))), abs(var_4.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_1)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(994f, global0.a, var_1.x, -912f))))))));
}

