struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(1368f, -993f, -182f, 476f), 1u);

var<private> global2: i32;

var<private> global3: vec2<i32> = vec2<i32>(1i, -1i);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_2(vec3<i32>(global3.x, global3.x, -30488i), Struct_1(global1.a, ~55997u), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(global1.a.x, 1049f)), 380f, _wgslsmith_f_op_f32(1000f + -1243f), 618f), u_input.a), vec4<u32>(u_input.b, u_input.b, select(1u, _wgslsmith_mult_u32(14661u, 0u), global1.a.x < _wgslsmith_f_op_f32(-global1.a.x)), abs(_wgslsmith_sub_u32(16014u, ~global1.b))), abs(firstLeadingBit(-vec2<i32>(global3.x, global3.x))) & reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3.x, 22465i), -vec2<i32>(global3.x, global3.x), -vec2<i32>(-1i, global3.x))));
    var var_1 = Struct_2(vec3<i32>(34871i, 0i, _wgslsmith_dot_vec3_i32(min(var_0.a, ~vec3<i32>(var_0.a.x, var_0.e.x, var_0.a.x)), _wgslsmith_div_vec3_i32(reverseBits(var_0.a), var_0.a))), Struct_1(var_0.b.a, var_0.c.b), Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a.x, -274f, _wgslsmith_f_op_f32(-global1.a.x), var_0.c.a.x))), 4294967295u), var_0.d, -var_0.a.zx);
    var var_2 = var_0.c.b;
    var var_3 = _wgslsmith_f_op_f32(-var_1.b.a.x);
    var var_4 = select(_wgslsmith_add_vec2_u32(~var_0.d.zz, var_0.d.xw), vec2<u32>(1u, ~(~var_0.c.b)), !any(arg_0));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f)), 954f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(917f * global1.a.x) - _wgslsmith_f_op_f32(-1055f * -986f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b.a.x - var_0.c.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -319f)), ~(~(~var_4.x)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    var var_0 = func_2(!(!vec3<bool>(false, true, any(vec3<bool>(false, false, false)))));
    return true;
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = func_2(vec3<bool>(true, true, true));
    global1 = func_2(select(vec3<bool>(true, arg_0, func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(17458i, 1i, global3.x), vec3<i32>(-2456i, global3.x, -2147483647i)), Struct_1(var_0.a, var_0.b), -vec4<i32>(global3.x, 0i, -3300i, -33204i))), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, arg_0), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true), !(!vec3<bool>(true, arg_0, true))));
    global3 = _wgslsmith_add_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(global3.x, select(47991i, global3.x, arg_0)), -32078i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global3.x), ~vec2<i32>(global3.x, global3.x)), _wgslsmith_mod_i32(-1i | global3.x, 17383i << (global1.b % 32u))) & _wgslsmith_sub_vec2_i32(vec2<i32>(global3.x, 48082i), max(select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(global3.x, global3.x), vec2<bool>(false, false)), vec2<i32>(global3.x, global3.x))));
    let var_1 = func_3(~abs(-2147483647i), func_2(vec3<bool>(true, any(select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0))), arg_0)), ~countOneBits(-vec4<i32>(global3.x, global3.x, global3.x, 1i)));
    global0 = abs(~(i32(-1i) * -(global3.x & global3.x)));
    return _wgslsmith_div_i32(countOneBits(firstLeadingBit(global3.x)) | (22800i | global3.x), -_wgslsmith_mult_i32(global3.x, (-2147483647i | global3.x) | 0i));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = -1195f;
    global1 = func_2(vec3<bool>(arg_3, false, true));
    global3 = _wgslsmith_div_vec2_i32(vec2<i32>(arg_1, ~firstLeadingBit(arg_1)), vec2<i32>(2147483647i, min(2147483647i, arg_1)));
    var var_1 = !arg_3 && true;
    var_1 = !(!(!(!arg_3)));
    return func_2(select(vec3<bool>(false, true, all(select(vec2<bool>(arg_3, arg_3), vec2<bool>(false, arg_3), arg_3))), vec3<bool>(all(!vec4<bool>(arg_3, true, true, arg_3)), !any(vec2<bool>(arg_3, arg_3)), true), vec3<bool>(any(!vec3<bool>(arg_3, arg_3, true)), !arg_3 | true, !select(arg_3, arg_3, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(_wgslsmith_f_op_vec4_f32(global1.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 501f, global1.a.x, global1.a.x)), true)))), -(func_1(false) ^ ~global3.x) ^ global3.x, Struct_1(global1.a, ~(~u_input.b)), all(select(vec4<bool>(false, global3.x > 0i, true, true), vec4<bool>(false, any(vec2<bool>(false, false)), global1.b <= 6212u, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true))));
    global0 = -1i;
    let var_0 = _wgslsmith_f_op_f32(global1.a.x * global1.a.x);
    var var_1 = !select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(u_input.b <= global1.b, true, func_3(-14047i, Struct_1(global1.a, u_input.a), vec4<i32>(global3.x, global3.x, global3.x, 0i)), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, !all(vec3<bool>(true, false, true)), (u_input.b ^ 6970u) > u_input.b, !any(vec3<bool>(true, true, true))), any(vec3<bool>(true, true, true)));
    var var_2 = ~vec4<u32>(4294967295u, 47709u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, global1.b, 4294967295u), ~vec3<u32>(11881u, 3342u, 32236u)), ~(u_input.a ^ 9194u)) >> (max(_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(global1.b, u_input.a, 22372u, 4294967295u)), min(vec4<u32>(1u, global1.b, global1.b, global1.b), min(vec4<u32>(4294967295u, global1.b, 44147u, 53039u), vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 58854u, u_input.a, global1.b), ~vec4<u32>(u_input.b, 37201u, 5302u, 44002u))), abs(_wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, 58117u, 4277u, u_input.a), vec4<u32>(55688u, global1.b, u_input.b, u_input.a), false), _wgslsmith_div_vec4_u32(vec4<u32>(46536u, u_input.a, u_input.a, global1.b), vec4<u32>(global1.b, 1u, u_input.b, 4294967295u))))) % vec4<u32>(32u));
    global3 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, global3.x), vec3<i32>(1i, 2147483647i, global3.x)), global3.x), global3.x), vec2<i32>(global3.x, firstLeadingBit(min(-24755i, global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1429i, -6648i) | vec3<i32>(global3.x, global3.x, -39937i), max(vec3<i32>(-39726i, global3.x, global3.x), vec3<i32>(-2147483647i, global3.x, global3.x)), min(vec3<i32>(global3.x, 9727i, global3.x), vec3<i32>(global3.x, -56627i, 12249i)))), ~(-vec3<i32>(-14238i, global3.x, global3.x)), vec3<bool>(var_1.x, var_1.x, var_1.x)), ~(-max(vec3<i32>(global3.x, global3.x, 74378i), vec3<i32>(global3.x, -12755i, global3.x))) ^ countOneBits(-vec3<i32>(global3.x, -15964i, -1i)));
}

