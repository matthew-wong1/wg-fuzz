struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(select(vec4<bool>(true, false || !arg_3.a.x, (u_input.a < u_input.a) | any(vec4<bool>(true, true, arg_0, true)), all(!vec2<bool>(arg_0, arg_3.a.x))), arg_3.a, !arg_3.a), abs(firstTrailingBit(~arg_2)), abs(arg_3.b >> (vec3<u32>(abs(arg_3.c.x), arg_3.c.x | 0u, ~arg_3.b.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-850f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.d)))));
    var var_1 = var_0;
    let var_2 = var_0;
    var var_3 = ~reverseBits(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(var_0.b.x, arg_2.x, var_1.c.x, 52868u)), reverseBits(vec4<u32>(20786u, arg_2.x, var_2.c.x, var_1.b.x))));
    var_1 = arg_3;
    return ~1i;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = firstTrailingBit(firstLeadingBit(vec4<i32>(1i, u_input.a | -42615i, 1i, u_input.a))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a, 43664i) | _wgslsmith_sub_i32(45648i, 1451i), 1i, _wgslsmith_div_i32(-1i, 3701i), u_input.a), ~countOneBits(abs(vec4<i32>(u_input.a, u_input.a, -2147483647i, 61574i))));
    var var_1 = vec3<u32>(21298u, 38994u, ~arg_1.c.x);
    var_1 = arg_1.c;
    let var_2 = ~(vec3<i32>(u_input.a | _wgslsmith_dot_vec3_i32(var_0.zyx, var_0.xzw), abs(2147483647i), _wgslsmith_dot_vec3_i32(var_0.zyw, var_0.ywz)) | vec3<i32>(func_3(false | arg_0.x, u_input.a, arg_1.b, arg_1), _wgslsmith_mult_i32(5843i, var_0.x) | u_input.a, ~var_0.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(390f, 116f, 278f, 1598f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-680f, arg_1.d, arg_1.d, arg_1.d)))))));
    return select(arg_1.a, select(!vec4<bool>(false, select(arg_0.x, arg_0.x, true), any(arg_1.a), true), select(arg_1.a, select(arg_1.a, !arg_1.a, -1i <= u_input.a), all(!vec4<bool>(arg_0.x, arg_1.a.x, arg_1.a.x, false))), true), !arg_1.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    var var_1 = select(arg_0.x, arg_1.a.x, arg_0.x);
    var_1 = !all(select(!vec4<bool>(true, true, var_0.a.x, arg_1.a.x), func_2(vec2<bool>(false, arg_0.x), arg_1), vec4<bool>(arg_1.a.x, !var_0.a.x, false, any(vec4<bool>(var_0.a.x, false, false, false)))));
    let var_2 = 1238f;
    var var_3 = reverseBits(-abs(~(-vec2<i32>(u_input.a, u_input.a))));
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(false, false, select(true, false, true), true), min(select(vec3<u32>(1u, 1u, 1u), select(_wgslsmith_div_vec3_u32(vec3<u32>(49437u, 0u, 1u), vec3<u32>(1u, 7973u, 1u)), firstLeadingBit(vec3<u32>(0u, 3599u, 36548u)), all(vec2<bool>(false, false))), func_1(vec4<bool>(true, true, false, false), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(84376u, 20368u, 0u), vec3<u32>(66545u, 4294967295u, 84855u), -416f)) > _wgslsmith_sub_u32(1u, 0u)), ~abs(~vec3<u32>(1u, 62014u, 64090u))), min(vec3<u32>(_wgslsmith_clamp_u32(19895u, 98918u, 0u), min(1u, 53582u), _wgslsmith_add_u32(0u, 0u)) << (~abs(vec3<u32>(47445u, 4294967295u, 0u)) % vec3<u32>(32u)), vec3<u32>(1u, 1u, 1u)), -1566f);
    var_0 = Struct_1(!select(var_0.a, var_0.a, true), vec3<u32>(~(~(~var_0.b.x)), var_0.b.x ^ 0u, var_0.b.x), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-295f, 998f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.d)) - _wgslsmith_f_op_f32(max(-568f, 519f)))) - _wgslsmith_f_op_f32(ceil(var_0.d))));
    var var_1 = !(!(!func_2(var_0.a.xx, Struct_1(var_0.a, var_0.b, vec3<u32>(1u, 4294967295u, var_0.b.x), -315f))));
    var var_2 = -(~(~countOneBits(vec3<i32>(1i, 1i, u_input.a) << (var_0.b % vec3<u32>(32u)))));
    let var_3 = var_0.d;
    var_1 = select(var_0.a, vec4<bool>(!(false || var_0.a.x) | (~var_2.x >= min(-1i, 61513i)), all(vec3<bool>(all(var_0.a), true, var_1.x)), true, any(var_1.wxz)), !vec4<bool>(all(vec3<bool>(var_0.a.x, true, var_1.x)), true, var_1.x, select(any(vec4<bool>(false, true, false, false)), true, select(true, true, var_1.x))));
    let var_4 = Struct_1(select(select(!var_0.a, vec4<bool>(-1i != var_2.x, true, any(vec2<bool>(var_1.x, var_0.a.x)), true), !var_0.a), func_2(vec2<bool>(false, any(vec2<bool>(var_0.a.x, var_1.x))), Struct_1(var_0.a, vec3<u32>(var_0.c.x, var_0.c.x, 8552u) << (vec3<u32>(30406u, 9247u, 4294967295u) % vec3<u32>(32u)), abs(vec3<u32>(54078u, var_0.b.x, var_0.b.x)), -544f)), vec4<bool>(all(var_0.a.yyz) & true, true, (i32(-1i) * -1i) >= ~var_2.x, true)), vec3<u32>(~(~(4294967295u ^ var_0.c.x)), ~1u, var_0.b.x), var_0.c, _wgslsmith_div_f32(-341f, 672f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.b.x, 42746u, 0u) & var_0.c, var_4.d);
}

