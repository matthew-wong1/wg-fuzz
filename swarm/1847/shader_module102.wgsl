struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<i32>,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 45089u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: u32) -> vec2<i32> {
    var var_0 = firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_add_u32(~(~53424u), 12790u << (arg_0 % 32u)), arg_2.c.c.x));
    var var_1 = arg_2.b;
    var var_2 = arg_2.e;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d));
    global0 = abs(4294967295u);
    return vec2<i32>(-71188i, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_4) -> u32 {
    global0 = ~abs(arg_1.c.x);
    let var_0 = min(~firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(arg_2, arg_3.a.x), ~9789u, ~0u, _wgslsmith_mult_u32(u_input.e, u_input.e))), ~vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(arg_1.c.wz, arg_1.c.xx), _wgslsmith_dot_vec2_u32(arg_3.a.yy, _wgslsmith_div_vec2_u32(arg_1.c.xw, arg_1.c.zw)), _wgslsmith_mult_u32(select(1u, 0u, false), 33620u)));
    global0 = _wgslsmith_sub_u32(~select(firstLeadingBit(arg_2), abs(9579u), !arg_3.e), reverseBits(~(~arg_2))) | _wgslsmith_div_u32(~(~55892u ^ arg_1.c.x), arg_1.b.a);
    var var_1 = arg_3.e;
    let var_2 = select(vec2<bool>(true, !arg_3.e), vec2<bool>(true, true && !arg_3.e), false);
    return var_0.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: u32) -> bool {
    global0 = max(_wgslsmith_dot_vec2_u32(vec2<u32>(min(_wgslsmith_div_u32(30138u, 1u), ~9092u), func_3(func_2(arg_2, vec2<bool>(false, true), Struct_3(vec3<i32>(arg_1, u_input.d, 16773i), Struct_1(arg_2), Struct_2(Struct_1(4294967295u), Struct_1(26225u), vec4<u32>(124349u, 9435u, arg_2, 34873u)), arg_0.x, Struct_2(Struct_1(48706u), Struct_1(1u), vec4<u32>(arg_2, u_input.e, u_input.e, arg_2))), arg_2), Struct_2(Struct_1(arg_2), Struct_1(u_input.e), vec4<u32>(arg_2, 4294967295u, arg_2, 4294967295u)), abs(arg_2), Struct_4(vec3<u32>(u_input.e, u_input.e, u_input.e), Struct_2(Struct_1(0u), Struct_1(0u), vec4<u32>(301u, arg_2, arg_2, arg_2)), vec4<i32>(u_input.c.x, u_input.b, arg_1, 2147483647i), vec4<u32>(31453u, 4294967295u, 0u, arg_2), true))), select(~(vec2<u32>(10513u, u_input.e) << (vec2<u32>(arg_2, u_input.e) % vec2<u32>(32u))), vec2<u32>(arg_2, u_input.e & 11924u), true)), 4294967295u);
    var var_0 = abs(u_input.d);
    let var_1 = !(!vec4<bool>(false, true, true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false))));
    var_0 = -u_input.b;
    var var_2 = var_1.x;
    return all(!(!(!(!vec4<bool>(false, var_1.x, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec2<bool>(!func_1(vec4<f32>(-529f, -161f, -1447f, -2109f), u_input.b, u_input.e), false), vec2<bool>(!(!any(vec3<bool>(true, false, true))), true), select(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 433f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-959f)) * 1f), all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var var_1 = abs(~(-1i));
    var var_2 = true;
    let var_3 = _wgslsmith_dot_vec4_i32(reverseBits(~_wgslsmith_div_vec4_i32(vec4<i32>(-12009i, u_input.a, u_input.b, 5035i), vec4<i32>(u_input.d, 1i, -18119i, u_input.d))), -vec4<i32>(_wgslsmith_clamp_i32(u_input.d, u_input.b, 2147483647i), 1i, u_input.b, ~u_input.c.x)) | -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e, ~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.e, u_input.e, u_input.e), ~vec4<u32>(u_input.e, 19198u, u_input.e, u_input.e), abs(vec4<u32>(u_input.e, 0u, u_input.e, 52092u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(444f, 644f, -1089f, 1000f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-179f, -598f, 1207f, -464f), vec4<f32>(373f, 688f, -2086f, -210f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(663f, -2093f, 422f, -314f)), vec4<f32>(-1000f, -188f, 1742f, 760f)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1926f, 1441f, -1828f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(698f, -1000f, -1026f, 470f) + vec4<f32>(-716f, 1040f, 351f, -1634f)))))), _wgslsmith_f_op_f32(-1466f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(296f, 1202f) + _wgslsmith_f_op_f32(-3979f * 1249f)) - 1000f)));
}

