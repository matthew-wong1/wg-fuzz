struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -539f;

var<private> global1: f32;

var<private> global2: bool;

var<private> global3: vec2<f32> = vec2<f32>(-465f, -2127f);

var<private> global4: array<vec4<i32>, 23>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    let var_0 = Struct_2(select(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), true), vec3<bool>(true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), all(vec4<bool>(true, true, true, true))), vec3<bool>(false, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false)), !any(vec4<bool>(true, false, true, true)))), Struct_1(1i, 51062i, true, select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), 2147483647i == (u_input.b & u_input.c.x))), vec2<bool>(false, true));
    var var_1 = Struct_2(var_0.a, var_0.b, select(!select(vec2<bool>(true, var_0.b.c), !vec2<bool>(var_0.c.x, var_0.c.x), !var_0.c), vec2<bool>(false, true), false));
    let var_2 = 11365i;
    var_1 = Struct_2(select(var_0.a, select(var_1.a, var_0.a, true), any(vec4<bool>(false, var_1.a.x, var_1.b.c, false)) & var_0.c.x), Struct_1(~(-1i), -1i, !(true != var_1.c.x), vec2<bool>(false, true)), !vec2<bool>(any(!vec4<bool>(var_1.a.x, true, true, var_1.c.x)), var_1.a.x));
    var var_3 = i32(-1i) * -7809i;
    return -2147483647i;
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = func_3(vec3<u32>(abs(arg_1.a), arg_1.a, arg_1.a));
    var var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.zw, vec2<i32>(0i, _wgslsmith_add_i32(firstLeadingBit(1i), u_input.c.x))), _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.c.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 1i), u_input.a))), u_input.a));
    var var_2 = Struct_3(1u);
    var var_3 = Struct_1(~var_1.x ^ u_input.c.x, u_input.a.x, true, vec2<bool>(all(vec4<bool>(select(false, false, false), false, select(true, true, false), true)), !select(all(vec4<bool>(true, false, false, true)), true, any(vec4<bool>(true, false, false, true)))));
    let var_4 = _wgslsmith_add_i32(-2147483647i & var_3.a, _wgslsmith_dot_vec4_i32(countOneBits(firstTrailingBit(firstLeadingBit(vec4<i32>(var_3.b, 7676i, u_input.b, var_1.x)))), countOneBits(vec4<i32>(var_3.a, -28469i, 0i, u_input.c.x)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.a, var_2.a, 30100u, 13158u), _wgslsmith_div_vec4_u32(vec4<u32>(8748u, 6479u, 4294967295u, 4294967295u), vec4<u32>(var_2.a, var_2.a, arg_1.a, arg_1.a))) % vec4<u32>(32u))));
    return Struct_1(countOneBits(var_1.x << (abs(1u & var_2.a) % 32u)), -360i, any(!(!vec4<bool>(var_3.c, var_3.d.x, false, false))), !var_3.d);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: i32) -> f32 {
    global2 = all(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-263f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-758f, 471f)))));
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.x)) - global3.x) - -645f), arg_1);
    let var_1 = var_0.d.x;
    var var_2 = _wgslsmith_f_op_f32(1105f * _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-144f - 866f) - _wgslsmith_div_f32(1572f, global3.x)))));
    return _wgslsmith_f_op_f32(1032f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) + -1103f))), 466f)));
}

fn func_4(arg_0: u32, arg_1: f32) -> f32 {
    var var_0 = Struct_3(arg_0);
    var_0 = Struct_3(~arg_0);
    var var_1 = select(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))), vec3<bool>(any(vec3<bool>(true, true, true)), !func_2(424f, Struct_3(arg_0)).c, !(_wgslsmith_f_op_f32(round(-1295f)) < -330f)), vec3<bool>(true, true, true));
    let var_2 = !any(!(!vec3<bool>(false, var_1.x, var_1.x))) | true;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = (!any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))) != false) || !any(vec4<bool>(true, true, true, true));
    global0 = -177f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(23183u, _wgslsmith_f_op_f32(func_1(u_input.c, Struct_3(24516u), u_input.a.x)))) * 800f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(98577u, -1000f)))))));
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<i32>(1i, -1i, u_input.b, u_input.b), Struct_3(50691u), u_input.c.x)), 1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(323f - _wgslsmith_f_op_f32(global3.x - -2243f))))))));
    var var_1 = Struct_2(vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), true), Struct_1(_wgslsmith_div_i32((9169i ^ u_input.b) & u_input.a.x, min(~u_input.a.x, ~u_input.c.x)), u_input.b, _wgslsmith_f_op_f32(func_4(~4294967295u, global3.x)) <= _wgslsmith_f_op_f32(min(1000f, global3.x)), select(func_2(_wgslsmith_f_op_f32(global3.x - 937f), Struct_3(3231u)).d, vec2<bool>(any(vec3<bool>(false, true, true)), false), false)), vec2<bool>(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(round(1371f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_clamp_i32(-908i, ~(-1i), -1i) > u_input.c.x));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(_wgslsmith_mod_u32(~(~5866u), ~_wgslsmith_div_u32(0u, 4033u)), global3.x))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(countOneBits(26489i), u_input.a.x, var_1.b.a, var_1.b.a), Struct_3(_wgslsmith_clamp_u32(1u, 9364u, ~66031u)), _wgslsmith_mult_i32(abs(var_1.b.b), ~var_1.b.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a);
}

