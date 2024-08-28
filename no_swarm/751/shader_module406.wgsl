struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(false, -1i, vec4<i32>(51285i, -1i, 2147483647i, 1i), vec2<f32>(446f, -1124f));

var<private> global2: f32 = -601f;

var<private> global3: vec2<bool>;

var<private> global4: array<i32, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> f32 {
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_0.d.x)), _wgslsmith_f_op_f32(step(-548f, -1469f))))), false))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> i32 {
    let var_0 = select(select(!(!vec4<bool>(global1.a, global1.a, false, arg_1.a)), !select(vec4<bool>(global3.x, true, true, global1.a), !vec4<bool>(false, global1.a, global0.a, global0.a), global1.a), vec4<bool>(!any(vec4<bool>(true, true, global1.a, false)), all(vec4<bool>(global1.a, global0.a, global0.a, arg_1.a)), arg_1.a, _wgslsmith_div_u32(u_input.b, 0u) > firstTrailingBit(0u))), vec4<bool>(!(!arg_1.a), !(!(!arg_1.a)), global0.b == (abs(global4[_wgslsmith_index_u32(arg_3, 16u)]) & ~0i), global3.x), all(vec3<bool>(!global0.a, arg_1.a, global0.a)));
    let var_1 = arg_1;
    global0 = Struct_1(!(!arg_1.a), ~(-(~global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3, 0u), 16u)])), select(_wgslsmith_add_vec4_i32(firstTrailingBit(~var_1.c), ~max(vec4<i32>(var_1.c.x, 16584i, global4[_wgslsmith_index_u32(u_input.b, 16u)], var_1.b), vec4<i32>(arg_0.x, 3665i, global0.b, global0.b))), ~(-firstLeadingBit(vec4<i32>(1i, global1.b, global0.b, 0i))), select(select(!vec4<bool>(global1.a, var_0.x, var_1.a, false), var_0, var_0), !vec4<bool>(global0.a, var_0.x, global1.a, var_0.x), var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(616f - global0.d.x), 1830f), var_1.d))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) - _wgslsmith_f_op_f32(arg_2 * arg_1.d.x)))), arg_1.d.x))));
    global0 = var_1;
    return ~var_1.b;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    global3 = arg_2.zx;
    global3 = select(!vec2<bool>(any(arg_2), true), !arg_2.yy, global0.a);
    global1 = Struct_1(!(global1.d.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.d.x)) + _wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_mod_i32(func_3(vec4<i32>(44191i, -1i, global0.c.x, global1.c.x), Struct_1(arg_2.x, 46932i, global0.c, vec2<f32>(global1.d.x, global0.d.x)), global1.d.x, u_input.b) ^ 1i, -global0.c.x) << (((3425u | abs(u_input.b)) | u_input.b) % 32u), global1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.d + global0.d) - _wgslsmith_f_op_vec2_f32(abs(global0.d))))));
    global3 = !(!arg_2.xz);
    global1 = Struct_1(abs(0u) > u_input.b, global1.c.x, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-global1.c.x, global4[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, 1i), _wgslsmith_sub_i32(-50698i, -12392i))), 2147483647i, _wgslsmith_add_i32(_wgslsmith_div_i32(~59304i, _wgslsmith_mod_i32(global0.c.x, arg_0)), _wgslsmith_mod_i32(reverseBits(global1.c.x), 1i)), _wgslsmith_div_i32(~u_input.c.x, select(min(0i, 0i), 4823i, false))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(sign(global1.d.x))))));
    return global0.b;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1.c.xwx;
    var var_1 = arg_1;
    var var_2 = Struct_1(!(!var_1.a), var_1.b, vec4<i32>(1i, arg_0, global4[_wgslsmith_index_u32(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(5635u, u_input.b, u_input.b, 100984u), vec4<u32>(u_input.b, 77812u, 22695u, 1u)), u_input.b, false || global3.x), 16u)], _wgslsmith_add_i32(arg_1.b, func_3(vec4<i32>(u_input.c.x, u_input.c.x, var_0.x, 1i), arg_1, 1000f, u_input.b)) ^ ~(global1.c.x >> (4294967295u % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.d))) * _wgslsmith_f_op_vec2_f32(sign(global1.d))));
    var var_3 = var_2.a;
    global2 = 695f;
    return Struct_1(all(vec4<bool>(false, all(vec3<bool>(true, true, global1.a)), global3.x, arg_1.a)) == (true & all(vec2<bool>(true, true))), -_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a, i32(-1i) * -32597i), 1565i), -vec4<i32>(global4[_wgslsmith_index_u32(u_input.b, 16u)], firstLeadingBit(global4[_wgslsmith_index_u32(u_input.b, 16u)]), countOneBits(var_0.x), arg_0) ^ vec4<i32>(global1.b, -17376i, var_1.b, (global0.c.x ^ global1.b) ^ (u_input.a ^ arg_0)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.d.x, 403f))), _wgslsmith_f_op_f32(-var_2.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(219f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(global1.a, global0.c.x, vec4<i32>(22302i, u_input.a, -1434i, global4[_wgslsmith_index_u32(0u, 16u)]), vec2<f32>(global0.d.x, -1000f)), Struct_1(global0.a, global4[_wgslsmith_index_u32(u_input.b, 16u)], vec4<i32>(u_input.a, -7149i, global0.c.x, global1.c.x), global1.d), u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1032f, global0.d.x)))));
    global0 = func_4((_wgslsmith_mod_i32(~(-11388i), -21689i) ^ func_2(u_input.a, all(vec4<bool>(global0.a, true, global1.a, global1.a)), select(vec3<bool>(global3.x, global0.a, true), vec3<bool>(true, global0.a, false), vec3<bool>(true, true, global0.a)))) ^ func_3(global0.c, Struct_1(!global3.x, -2147483647i, global0.c, _wgslsmith_f_op_vec2_f32(select(global1.d, global0.d, global3.x))), -751f, u_input.b), Struct_1(global0.a, _wgslsmith_dot_vec4_i32(global0.c, vec4<i32>(~global1.c.x, ~global4[_wgslsmith_index_u32(57998u, 16u)], func_3(vec4<i32>(-16094i, -34196i, -1i, global1.b), Struct_1(global3.x, u_input.a, vec4<i32>(global4[_wgslsmith_index_u32(u_input.b, 16u)], global4[_wgslsmith_index_u32(u_input.b, 16u)], u_input.a, -2147483647i), vec2<f32>(global1.d.x, global1.d.x)), global1.d.x, 4294967295u), ~14433i)), global0.c, _wgslsmith_f_op_vec2_f32(-global1.d)));
    let var_1 = any(!(!vec4<bool>(global1.a, 76889u == u_input.b, func_4(global1.b, Struct_1(global3.x, -11568i, global1.c, vec2<f32>(global1.d.x, global1.d.x))).a, global0.a)));
    var var_2 = 1f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(true, 0i, vec4<i32>(-2147483647i, -2147483647i, global4[_wgslsmith_index_u32(u_input.b, 16u)], u_input.c.x), global1.d), Struct_1(global0.a, -2147483647i, global0.c, global0.d), u_input.b)) - 333f) * _wgslsmith_f_op_f32(-global1.d.x)), global1.d.x) + _wgslsmith_f_op_f32(global1.d.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-241f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, firstTrailingBit(countOneBits(-global1.c)), abs(global1.b));
}

