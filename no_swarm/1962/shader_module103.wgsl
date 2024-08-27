struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 1i, -66643i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = arg_0.x > _wgslsmith_f_op_f32(floor(arg_0.x));
    let var_1 = Struct_1(18814u, _wgslsmith_sub_vec4_i32(arg_2.b, vec4<i32>(-arg_2.b.x | -2147483647i, -2147483647i, _wgslsmith_div_i32(33668i, 22314i), -_wgslsmith_add_i32(global0.x, arg_2.b.x))), arg_2.c, all(!select(!arg_2.c, arg_2.c, arg_2.c)));
    global0 = -arg_2.b.xxw;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), var_1.c, var_1, global0.x, !var_1.c);
    var var_3 = var_1.b.x;
    return min(global0.x, var_2.d >> (~(~_wgslsmith_mod_u32(var_2.c.a, 34875u)) % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    global0 = vec3<i32>(_wgslsmith_add_i32(~firstTrailingBit(1i), func_3(vec4<f32>(arg_0.a, arg_0.a, -1000f, _wgslsmith_f_op_f32(arg_0.a + 868f)), vec3<bool>(!arg_0.e.x, arg_0.a >= arg_0.a, true), arg_1)), -38441i, -75610i);
    global0 = arg_1.b.yyy;
    var var_0 = arg_0.c.c.ww;
    var var_1 = vec3<f32>(arg_0.a, -697f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -238f))))) + _wgslsmith_f_op_f32(trunc(-318f))));
    let var_2 = vec3<bool>(arg_0.c.d, true, all(vec4<bool>(false, false, !any(vec3<bool>(var_0.x, var_0.x, arg_0.e.x)), true)));
    return ~_wgslsmith_div_u32(arg_1.a, _wgslsmith_sub_u32(firstLeadingBit(u_input.a), _wgslsmith_div_u32(arg_1.a, 4294967295u))) & (59349u << (_wgslsmith_sub_u32(u_input.a, firstLeadingBit(_wgslsmith_add_u32(arg_0.c.a, 4294967295u))) % 32u));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = ~0u;
    let var_1 = !select(arg_0.c, select(select(select(arg_0.c, vec4<bool>(true, arg_0.c.x, false, arg_0.d), false), vec4<bool>(false, arg_0.c.x, arg_0.d, false), select(true, arg_0.d, arg_0.d)), vec4<bool>(-21315i > arg_0.b.x, false, arg_0.c.x, all(vec4<bool>(false, false, arg_0.d, arg_0.c.x))), arg_0.c), !all(arg_0.c.wx) | false);
    var var_2 = _wgslsmith_mult_u32(u_input.a, var_0 << (~u_input.a % 32u));
    var_2 = 21453u;
    let var_3 = arg_0;
    return Struct_2(_wgslsmith_f_op_f32(-704f + -1711f), var_1, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~56709u, arg_0.a, arg_0.a, ~0u), firstLeadingBit(firstTrailingBit(vec4<u32>(arg_0.a, 4294967295u, 1u, var_3.a)))), vec4<i32>(reverseBits(global0.x | var_3.b.x), global0.x, var_3.b.x, var_3.b.x), vec4<bool>(true, var_1.x, _wgslsmith_f_op_f32(select(-925f, 482f, arg_0.c.x)) == _wgslsmith_f_op_f32(-1000f + -1000f), var_1.x), select(true, !(false && arg_0.d), var_3.d)), var_3.b.x, var_1);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: bool) -> vec3<i32> {
    var var_0 = func_4(Struct_1(_wgslsmith_div_u32(91930u, func_2(Struct_2(arg_1, vec4<bool>(arg_0.c.x, arg_2, arg_3, true), Struct_1(0u, vec4<i32>(1i, 27722i, arg_0.b.x, 0i), arg_0.c, false), arg_0.b.x, arg_0.c), Struct_1(arg_0.a, arg_0.b, vec4<bool>(false, arg_3, arg_0.c.x, false), arg_2), vec2<u32>(118532u, u_input.a))) << (46741u % 32u), _wgslsmith_div_vec4_i32(~(-arg_0.b), (vec4<i32>(arg_0.b.x, global0.x, -18422i, -37054i) & arg_0.b) | min(vec4<i32>(19062i, 2147483647i, 2147483647i, -20701i), arg_0.b)), select(arg_0.c, vec4<bool>(!arg_3, select(arg_3, true, true), arg_2, false & arg_3), !(!vec4<bool>(false, arg_3, arg_3, false))), _wgslsmith_mod_i32(~(-57017i), arg_0.b.x) != firstLeadingBit(firstTrailingBit(global0.x))));
    return _wgslsmith_add_vec3_i32(var_0.c.b.xxz, vec3<i32>(1i >> ((_wgslsmith_add_u32(u_input.a, 63062u) | ~73145u) % 32u), min(-16909i, -_wgslsmith_mult_i32(global0.x, 0i)), var_0.c.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ((~(-vec3<i32>(global0.x, global0.x, -18415i)) | -vec3<i32>(1i, global0.x, global0.x)) & (_wgslsmith_add_vec3_i32(func_1(Struct_1(4294967295u, vec4<i32>(24516i, global0.x, global0.x, global0.x), vec4<bool>(false, false, true, true), true), -1134f, false, false), vec3<i32>(27006i, global0.x, global0.x)) & -_wgslsmith_mult_vec3_i32(vec3<i32>(45676i, -1i, 3304i), vec3<i32>(-1i, global0.x, global0.x)))) | -countOneBits(vec3<i32>(global0.x, ~global0.x, ~global0.x));
    let var_0 = ~reverseBits(~select(vec3<u32>(25809u, u_input.a, 55680u) | vec3<u32>(u_input.a, u_input.a, 27592u), vec3<u32>(u_input.a, u_input.a, 5623u) & vec3<u32>(u_input.a, u_input.a, 9607u), select(false, false, false)));
    global0 = vec3<i32>(-global0.x, min(0i, -(i32(-1i) * -8424i)), countOneBits(global0.x));
    var var_1 = -1i;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_3 = !(!select(vec4<bool>(func_4(Struct_1(46267u, vec4<i32>(-1i, -48710i, global0.x, global0.x), vec4<bool>(false, false, true, true), false)).b.x, false, true, true), select(func_4(Struct_1(var_0.x, vec4<i32>(2147483647i, 2147483647i, -9544i, global0.x), vec4<bool>(false, false, true, false), true)).b, vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(u_input.a, var_0.x) ^ _wgslsmith_sub_u32(~u_input.a, var_0.x), 32706u, u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1893f, _wgslsmith_f_op_f32(trunc(-1949f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2121f, 497f, -873f) * vec3<f32>(-700f, -1801f, -398f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1226f, -1328f, -385f)))))), select(vec4<i32>(global0.x, _wgslsmith_div_i32(max(global0.x, global0.x), 17582i), -global0.x, global0.x), vec4<i32>(1i ^ global0.x, -1i ^ global0.x, _wgslsmith_mult_i32(global0.x, 39017i), ~2147483647i), vec4<bool>((global0.x == 1i) & any(vec3<bool>(var_3.x, true, true)), var_3.x, var_3.x, all(func_4(Struct_1(6348u, vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), false)).e))), -countOneBits(-1i) ^ global0.x);
}

