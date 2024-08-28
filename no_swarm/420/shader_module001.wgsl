struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_1 = Struct_1(i32(-2147483648), 897f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> vec2<u32> {
    var var_0 = arg_1;
    var_0 = select(!select(arg_1, select(vec2<bool>(var_0.x, var_0.x), !arg_1, vec2<bool>(false, var_0.x)), false), arg_1, select(select(vec2<bool>(u_input.a.x >= 7129u, any(vec2<bool>(true, var_0.x))), !(!arg_1), all(vec4<bool>(arg_1.x, false, arg_1.x, true))), select(!arg_1, vec2<bool>(true, false), false), true));
    let var_1 = Struct_1(-u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, global1.b) + 1f) + -1169f));
    var var_2 = var_1;
    global0 = ~0u;
    return abs(~(~(u_input.b.xy | (vec2<u32>(u_input.a.x, 4294967295u) >> (u_input.b.yz % vec2<u32>(32u))))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = vec2<bool>(true, u_input.a.x <= _wgslsmith_sub_u32(~abs(45989u), _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), u_input.a.x >> (43505u % 32u))));
    global0 = u_input.b.x;
    let var_1 = firstTrailingBit(_wgslsmith_mod_vec2_u32(func_3(countOneBits(0i), vec2<bool>(true, true)), u_input.b.zx));
    global1 = Struct_1(1i, _wgslsmith_div_f32(467f, global1.b));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-225f)), -862f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -739f)))));
    return Struct_1(0i, _wgslsmith_f_op_f32(max(368f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + global1.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * 481f))))));
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = !arg_0.a.x;
    let var_1 = -2147483647i;
    return ~(-_wgslsmith_add_i32(0i, abs(abs(u_input.d))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.b.b), 729f))));
    var var_1 = arg_1.b.a;
    var var_2 = func_2(~global1.a, u_input.a.x, u_input.c);
    var var_3 = arg_2.yy;
    let var_4 = any(vec4<bool>(all(!vec4<bool>(false, false, true, arg_2.x)), _wgslsmith_f_op_f32(round(-1880f)) == 1679f, true, arg_1.a.x));
    return arg_1.b;
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(vec4<i32>(_wgslsmith_mult_i32(~abs(u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-676i, 2147483647i, -47804i, -1i), vec4<i32>(global1.a, -1i, -1i, global1.a)) | u_input.d), global1.a, func_4(Struct_2(vec2<bool>(true, true), func_2(68158i, 1u, vec3<i32>(-45872i, 0i, 2147483647i)))), 48452i), Struct_2(vec2<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false)), true), Struct_1(u_input.d, -1641f)), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), u_input.d < u_input.d), true), ~u_input.b.x & ~u_input.b.x);
    global0 = abs(abs(~u_input.b.x));
    let var_1 = !vec2<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), true)));
    var_0 = Struct_1(i32(-1i) * -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, var_0.a, var_0.a, u_input.c.x), vec4<i32>(global1.a, u_input.d, var_0.a, global1.a)), select(vec4<i32>(-2147483647i, 0i, u_input.d, var_0.a), vec4<i32>(global1.a, 1i, 10928i, 0i), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.b, global1.b, var_1.x))));
    var_0 = func_5(select(-min(reverseBits(vec4<i32>(2147483647i, var_0.a, -1i, var_0.a)), vec4<i32>(0i, u_input.c.x, -1i, u_input.d)), firstTrailingBit(vec4<i32>(-2147483647i, -2147483647i, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), -var_0.a)), select(!select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, true)), !vec4<bool>(true, false, var_1.x, false), !select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))), Struct_2(vec2<bool>(~u_input.a.x <= countOneBits(u_input.b.x), !(!var_1.x)), Struct_1(-var_0.a, var_0.b)), vec3<bool>(any(vec4<bool>(var_1.x, false, true || var_1.x, var_1.x)), all(vec3<bool>(var_1.x, true, !var_1.x)), var_1.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(59476u, u_input.b.x, 1u, u_input.a.x), select(vec4<u32>(u_input.b.x, 11874u, 4294967295u, u_input.b.x), vec4<u32>(4294967295u, u_input.a.x, 92215u, u_input.b.x), vec4<bool>(false, false, var_1.x, var_1.x))) >> (abs(vec4<u32>(91857u, u_input.b.x, 1u, u_input.a.x)) % vec4<u32>(32u)), ~(~vec4<u32>(0u, u_input.a.x, 0u, 15080u))));
    return func_5(~(~vec4<i32>(global1.a, abs(13920i), -global1.a, _wgslsmith_sub_i32(-2147483647i, global1.a))), Struct_2(vec2<bool>(all(!var_1), true), func_5(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.a, 92193i, -1i, 53339i), vec4<i32>(global1.a, 2147483647i, 2147483647i, var_0.a))), Struct_2(select(vec2<bool>(true, true), vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_1.x)), func_2(16371i, 35416u, u_input.c)), !select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x)), ~0u | u_input.a.x)), vec3<bool>(var_1.x, any(!(!vec4<bool>(var_1.x, true, true, var_1.x))), any(!select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(var_1.x, var_1.x, true, true), var_1.x))), 0u);
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-794f + global1.b);
    let var_1 = -466f != _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.b, -396f), _wgslsmith_div_f32(-542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-764f * arg_0.b) + global1.b))));
    global1 = func_1();
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>((u_input.b.x >> (2773u % 32u)) ^ arg_2.x, countOneBits(u_input.a.x)), vec2<u32>(abs(countOneBits(arg_2.x)), ~countOneBits(u_input.b.x))), ~_wgslsmith_mod_u32(~4294967295u, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.b.x, 1u), vec4<u32>(42612u, 18547u, u_input.b.x, arg_2.x)))));
    var var_3 = Struct_2(vec2<bool>(true, all(!vec4<bool>(true, var_1, false, false))), Struct_1(1i, 842f));
    return arg_0;
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    global1 = arg_1;
    var var_0 = func_1();
    let var_1 = select(!(!vec4<bool>(false, !arg_2.a.x, arg_2.a.x, true)), select(vec4<bool>(true, true, all(vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x)), false), !(!(!vec4<bool>(arg_2.a.x, true, arg_2.a.x, arg_2.a.x))), arg_2.a.x), _wgslsmith_mult_u32(u_input.a.x, u_input.b.x) <= (u_input.a.x & 1u));
    let var_2 = arg_2;
    var var_3 = _wgslsmith_sub_vec2_i32(u_input.c.xy, vec2<i32>(func_5(-vec4<i32>(var_2.b.a, 2147483647i, -1i, 1i), var_2, select(vec3<bool>(var_1.x, var_2.a.x, true), var_1.yzw, arg_2.a.x), arg_3.x | arg_3.x).a ^ arg_2.b.a, func_4(Struct_2(var_1.zw, arg_2.b)) ^ var_2.b.a));
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(u_input.c, func_6(func_1(), false, vec2<u32>(~u_input.a.x, ~u_input.a.x) ^ u_input.a), Struct_2(select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(false, false, false, false))), vec2<bool>(true, true)), Struct_1(u_input.d, -1128f)), ~(~abs(~vec4<u32>(40661u, 25825u, 51230u, 0u))));
    var var_0 = Struct_2(!(!vec2<bool>(all(vec3<bool>(true, false, true)), 777f < global1.b)), func_6(Struct_1(-(global1.a | u_input.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global1.b))))), !((u_input.d >= global1.a) != true), firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(17928u, u_input.b.x), ~1396u))));
    var var_1 = var_0.a.x;
    var var_2 = u_input.b;
    var_0 = Struct_2(select(select(select(var_0.a, !var_0.a, var_0.a), var_0.a, var_0.a), vec2<bool>(true, true), any(!vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x)) != !(var_0.a.x || var_0.a.x)), var_0.b);
    global0 = u_input.b.x | (9474u | ((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), var_2.xx) | 4294967295u) | u_input.b.x));
    var var_3 = firstLeadingBit((-min(vec4<i32>(var_0.b.a, global1.a, u_input.d, 0i), vec4<i32>(0i, global1.a, 57292i, global1.a)) >> (select(~vec4<u32>(1u, 11871u, var_2.x, 100586u), vec4<u32>(u_input.a.x, var_2.x, 1u, var_2.x), !vec4<bool>(false, true, false, var_0.a.x)) % vec4<u32>(32u))) & firstLeadingBit(vec4<i32>(global1.a, -21433i, var_0.b.a, ~global1.a)));
    var var_4 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1593f);
}

