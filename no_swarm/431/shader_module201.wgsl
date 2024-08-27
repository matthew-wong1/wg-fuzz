struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: array<vec4<bool>, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec4<bool> {
    global0 = array<vec2<bool>, 32>();
    global1 = array<vec4<bool>, 21>();
    global0 = array<vec2<bool>, 32>();
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(~select(select(-94424i, 33330i, false), _wgslsmith_mod_i32(2147483647i, 2147483647i), !arg_0.e.a.x), i32(-1i) * -51964i), -_wgslsmith_dot_vec4_i32(-vec4<i32>(-43778i, -2147483647i, -4802i, -2147483647i) & select(vec4<i32>(-2147483647i, -2147483647i, 7299i, 35797i), vec4<i32>(-10457i, 1i, 2147483647i, -28742i), arg_0.a), vec4<i32>(reverseBits(139i), -1i, ~(-5791i), i32(-1i) * -1i)));
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(48764u, select(u_input.a, 0u, arg_1.x))), 21u)];
}

fn func_2() -> Struct_1 {
    var var_0 = (_wgslsmith_add_i32(-5520i, _wgslsmith_add_i32(i32(-1i) * -54199i, ~(-18375i))) << (u_input.b.x % 32u)) | -47611i;
    var var_1 = Struct_2(!func_3(Struct_2(select(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), true, Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, true, true))), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), global1[_wgslsmith_index_u32(0u, 21u)])), true, Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true != all(vec3<bool>(true, false, false)), true, true)), Struct_1(select(vec4<bool>(true, true, any(global1[_wgslsmith_index_u32(u_input.a, 21u)]), false), global1[_wgslsmith_index_u32(u_input.b.x, 21u)], vec4<bool>(true, true, true, true))));
    global1 = array<vec4<bool>, 21>();
    let var_2 = Struct_2(select(!vec4<bool>(var_1.c.a.x, true, var_1.b, var_1.a.x), vec4<bool>(true, var_1.d.a.x, true, any(vec3<bool>(true, true, false))), !global1[_wgslsmith_index_u32(~(~u_input.c), 21u)]), !(_wgslsmith_add_u32(86125u, 70633u) <= u_input.b.x), Struct_1(select(var_1.e.a, global1[_wgslsmith_index_u32(countOneBits(0u), 21u)], _wgslsmith_f_op_f32(select(-1121f, 1930f, var_1.d.a.x)) > _wgslsmith_f_op_f32(f32(-1f) * -427f))), Struct_1(vec4<bool>(!var_1.a.x, u_input.b.x > u_input.a, var_1.b, true)), var_1.e);
    global0 = array<vec2<bool>, 32>();
    return Struct_1(func_3(Struct_2(func_3(Struct_2(var_1.a, var_2.a.x, Struct_1(global1[_wgslsmith_index_u32(u_input.a, 21u)]), Struct_1(vec4<bool>(var_2.a.x, var_1.b, var_1.a.x, true)), Struct_1(var_2.d.a)), vec4<bool>(true, var_2.c.a.x, var_2.d.a.x, true)), false, Struct_1(func_3(var_2, vec4<bool>(var_2.c.a.x, false, var_1.b, true))), Struct_1(var_1.d.a), Struct_1(global1[_wgslsmith_index_u32(30923u, 21u)])), vec4<bool>(any(vec2<bool>(false, var_2.d.a.x)), false, var_1.c.a.x, var_1.e.a.x)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: vec3<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_add_u32(1u, reverseBits(countOneBits(_wgslsmith_clamp_u32(1u, ~14109u, 42705u ^ u_input.c))));
    var_0 = reverseBits(~(~u_input.a));
    var var_1 = func_2();
    let var_2 = Struct_1(select(vec4<bool>(arg_1, any(func_3(Struct_2(vec4<bool>(arg_1, arg_1, arg_1, arg_1), false, Struct_1(vec4<bool>(false, var_1.a.x, true, var_1.a.x)), Struct_1(var_1.a), Struct_1(global1[_wgslsmith_index_u32(u_input.c, 21u)])), vec4<bool>(arg_1, var_1.a.x, true, true)).zyw), any(vec4<bool>(var_1.a.x, var_1.a.x, true, true)), select(any(vec2<bool>(arg_1, var_1.a.x)), var_1.a.x, true)), func_3(Struct_2(select(var_1.a, var_1.a, arg_1), true, func_2(), func_2(), Struct_1(global1[_wgslsmith_index_u32(1u, 21u)])), vec4<bool>(any(var_1.a.ww), false && arg_1, true, true)), arg_1));
    var_0 = u_input.c;
    return -firstTrailingBit(select(vec2<i32>(_wgslsmith_mult_i32(49196i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_2, arg_2), vec3<i32>(10266i, 2147483647i, arg_2))), vec2<i32>(countOneBits(arg_2), _wgslsmith_clamp_i32(arg_2, 31286i, arg_2)), var_1.a.zx));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = -432f;
    let var_1 = func_2();
    let var_2 = -(vec4<i32>(~abs(-1i), ~arg_1.x, arg_1.x, arg_1.x) >> (~(~u_input.b) % vec4<u32>(32u)));
    global1 = array<vec4<bool>, 21>();
    global0 = array<vec2<bool>, 32>();
    return vec3<i32>(-1i) * -firstTrailingBit(var_2.zyw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 32>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 21u)];
    let var_1 = _wgslsmith_add_vec3_i32(func_4(select(vec4<bool>(true, false, true, true), global1[_wgslsmith_index_u32(4294967295u, 21u)], false), func_1(788f, var_0.x, -2147483647i, vec3<f32>(884f, 1000f, -227f)), func_2()) | vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-60962i, -1i, 42583i, 0i), vec4<i32>(-33577i, -1i, 0i, -2147483647i)), 29596i), reverseBits(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-2147483647i, 51810i, -26973i)), vec3<i32>(56879i, 1i, -48848i)))) >> (~select(u_input.b.yyx, countOneBits(max(u_input.b.yxx, vec3<u32>(u_input.b.x, u_input.a, u_input.c))), !var_0.x | (48925u <= u_input.b.x)) % vec3<u32>(32u));
    let var_2 = ~vec2<i32>(~_wgslsmith_add_i32(abs(0i), 9352i), _wgslsmith_add_i32(func_1(-2737f, var_0.x, ~2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-404f, 316f, -1887f))).x, ~(~var_1.x)));
    var var_3 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.b.xz, min(~u_input.b.wx, vec2<u32>(u_input.b.x, u_input.c))), ~vec2<u32>(~4294967295u, ~23996u), ~(~u_input.b.ww));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2111f))) + -2312f))), _wgslsmith_mult_u32(firstLeadingBit(~min(var_3.x, u_input.b.x)), ~abs(1u)));
}

