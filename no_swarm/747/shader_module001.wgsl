struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = Struct_1(_wgslsmith_add_vec4_i32(firstTrailingBit(~(-vec4<i32>(-70046i, 1i, u_input.d.x, 40543i))), _wgslsmith_add_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, arg_0.a.x, 2147483647i, u_input.c), arg_0.a, arg_0.a), firstLeadingBit(arg_0.a), !vec4<bool>(false, arg_2, arg_0.b, arg_2)), reverseBits(vec4<i32>(arg_1.c.x, 18796i, u_input.a, u_input.d.x)))), select(arg_2, all(!vec4<bool>(true, arg_2, arg_2, true)), false));
    var var_1 = Struct_1(select(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a.x, arg_0.a.x), vec2<i32>(arg_1.c.x, 27642i)), -vec2<i32>(-1i, arg_1.c.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_1.c.zx, vec2<i32>(arg_0.a.x, -2147483647i)), u_input.d.x), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.a.x, 43820i), 1i, abs(arg_1.c.x)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c, -1i), reverseBits(2147483647i))), -vec4<i32>(~arg_0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -50005i, var_0.a.x, 1i), vec4<i32>(arg_0.a.x, 22101i, 47868i, -39490i)), arg_1.c.x, -2147483647i), !(!select(vec4<bool>(var_0.b, true, false, false), vec4<bool>(var_0.b, false, var_0.b, true), false))), arg_2);
    var_1 = Struct_1(_wgslsmith_mod_vec4_i32(~select(arg_0.a >> (vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 19798u) % vec4<u32>(32u)), var_1.a, select(vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(true, arg_0.b, true, var_0.b), vec4<bool>(arg_0.b, var_0.b, var_1.b, true))), select(~(~var_1.a), -countOneBits(vec4<i32>(arg_1.c.x, arg_0.a.x, -16974i, arg_1.c.x)), vec4<bool>(false, var_1.b, !arg_2, var_0.b))), var_0.b | (arg_0.b || all(!vec3<bool>(false, true, arg_2))));
    var_1 = Struct_1(~select(vec4<i32>(16410i, arg_1.c.x, -29321i, firstTrailingBit(arg_0.a.x)), -firstLeadingBit(vec4<i32>(-13525i, var_1.a.x, arg_1.c.x, 19271i)), select(!vec4<bool>(false, false, true, arg_2), !vec4<bool>(arg_2, true, true, arg_0.b), all(vec2<bool>(true, var_1.b)))), !arg_2);
    var_1 = Struct_1(arg_0.a, 1i >= arg_0.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -307f))))));
}

fn func_2(arg_0: vec4<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(u_input.a, 1i, 316i, u_input.d.x), false), Struct_3(vec2<f32>(1078f, -348f), vec2<u32>(1u, u_input.b.x), u_input.e), true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(735f, 747f))), -299f)), 1f)));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_1.x, -1581f, false)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), -1029f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0)))) - var_0));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1149f, var_0.x, 1266f, var_1.x)), vec4<f32>(-170f, 1359f, -149f, 882f)) - _wgslsmith_f_op_vec4_f32(-var_0)) - var_0), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) * vec4<f32>(247f, var_1.x, var_1.x, var_1.x))))), vec4<bool>(false, true, !(select(true, false, false) || all(vec2<bool>(false, false))), true)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-317f, _wgslsmith_f_op_f32(min(var_2.x, var_2.x)), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -354f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) - -2549f))));
    return countOneBits(~(~((vec2<u32>(1u, 37932u) & arg_0.zx) | ~vec2<u32>(u_input.b.x, u_input.b.x))));
}

fn func_1() -> bool {
    let var_0 = -select(2147483647i, _wgslsmith_dot_vec2_i32(~(-u_input.d), vec2<i32>(u_input.c, u_input.e.x) | u_input.d), !(4294967295u != u_input.b.x) || true);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1316f, -192f)))), _wgslsmith_mod_vec2_u32(vec2<u32>(min(u_input.b.x, u_input.b.x), u_input.b.x), func_2(~vec4<u32>(4294967295u, 81474u, u_input.b.x, u_input.b.x))) << (func_2(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(24175u, u_input.b.x, u_input.b.x, 4294967295u))) % vec2<u32>(32u)), u_input.e);
    var var_2 = vec3<i32>(0i, i32(-1i) * -20506i, 1i);
    return any(vec4<bool>(false, any(vec4<bool>(true, true, any(vec4<bool>(true, true, false, true)), true)), true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(select(true, true, !func_1()), select(true, true, !(~0u < u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1439f, 557f, 153f, -203f) * vec4<f32>(556f, -251f, 1735f, -1409f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-809f, -786f, -1794f, 342f) * vec4<f32>(-524f, -1958f, 1790f, 723f)), vec4<bool>(!var_0.x, var_0.x && false, true, var_0.x & var_0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(240f - 1964f), _wgslsmith_div_f32(-729f, -546f), 357f, _wgslsmith_f_op_f32(select(1360f, -964f, var_0.x))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 292f, 297f, -612f), vec4<f32>(645f, 255f, -1000f, 1098f))))))), u_input.e.zz);
}

