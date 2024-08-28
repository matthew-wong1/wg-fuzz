struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(true, arg_3.e, ~0i, abs(0i), !select(arg_3.e, vec3<bool>(any(vec2<bool>(arg_3.b.x, true)), true, select(false, arg_2, true)), !(!arg_3.b)));
    var var_1 = _wgslsmith_f_op_f32(round(1052f));
    var_0 = arg_3;
    var_0 = Struct_1(true, select(select(!select(vec3<bool>(true, true, false), vec3<bool>(arg_3.b.x, arg_3.e.x, false), arg_3.b), var_0.b, true), !(!vec3<bool>(arg_3.a, true, var_0.e.x)), vec3<bool>(true, arg_2, true)), abs(countOneBits(_wgslsmith_div_i32(~2147483647i, u_input.c))), 2147483647i, arg_3.e);
    var_0 = Struct_1(false, var_0.b, _wgslsmith_dot_vec3_i32(select(-countOneBits(vec3<i32>(arg_0.x, -2147483647i, -2147483647i)), arg_0, arg_3.e), _wgslsmith_div_vec3_i32(~(arg_0 ^ vec3<i32>(var_0.d, var_0.c, u_input.a)), vec3<i32>(-2147483647i, -52241i, 1i))), -(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(0i, 2147483647i), var_0.c) | abs(-1i)), !vec3<bool>(arg_3.e.x, var_0.a, true));
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1047f, _wgslsmith_f_op_f32(f32(-1f) * -858f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-443f, 1470f)), 544f)))))));
    var var_1 = true;
    let var_2 = 1u;
    var var_3 = Struct_1(!(true || all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), vec3<bool>((605f <= _wgslsmith_f_op_f32(-var_0)) || select(true, any(vec3<bool>(false, true, true)), true), true, select(func_3(vec3<i32>(u_input.c, u_input.a, 0i), max(vec3<u32>(var_2, var_2, 36353u), vec3<u32>(43931u, var_2, var_2)), true, Struct_1(true, vec3<bool>(true, true, false), -24613i, u_input.a, vec3<bool>(false, false, true))), true, true | func_3(vec3<i32>(u_input.d, u_input.a, u_input.b), vec3<u32>(var_2, var_2, var_2), true, Struct_1(false, vec3<bool>(true, false, false), 1i, 13216i, vec3<bool>(false, false, true))))), i32(-1i) * -30616i, min(-2147483647i, -1i), select(vec3<bool>(true, func_3(vec3<i32>(41800i, u_input.c, 8956i), vec3<u32>(var_2, 4294967295u, 559u), true, Struct_1(false, vec3<bool>(true, false, true), -20696i, u_input.d, vec3<bool>(false, false, false))) || true, any(vec3<bool>(true, true, true))), !vec3<bool>(1u <= var_2, false, 0i == u_input.c), select(vec3<bool>(false, true, all(vec2<bool>(false, true))), vec3<bool>(any(vec2<bool>(false, true)), true, true), true)));
    var_1 = 54795u <= var_2;
    return Struct_1(min(41205u, min(~4294967295u, ~var_2)) <= _wgslsmith_dot_vec4_u32(min(~vec4<u32>(8824u, 88601u, 541u, 1u), ~vec4<u32>(11645u, 1u, 53444u, var_2)), countOneBits(~vec4<u32>(4294967295u, var_2, var_2, var_2))), !(!select(vec3<bool>(var_3.b.x, true, var_3.e.x), select(vec3<bool>(false, var_3.e.x, var_3.e.x), vec3<bool>(true, false, var_3.b.x), false), select(vec3<bool>(false, false, var_3.a), var_3.b, var_3.e.x))), abs(var_3.c), u_input.a, !select(!select(vec3<bool>(true, var_3.e.x, var_3.a), var_3.b, var_3.b.x), select(!vec3<bool>(var_3.b.x, true, var_3.b.x), !var_3.b, true), true));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = func_2();
    let var_2 = arg_1;
    let var_3 = false;
    var_0 = var_2;
    return Struct_1(any(var_0.b.zz), !func_2().b, var_2.c, ~(-11705i), !vec3<bool>(var_2.e.x, arg_1.e.x, true));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> bool {
    let var_0 = Struct_1(all(vec2<bool>(false, !select(false, true, arg_1.b.x))), vec3<bool>(arg_1.e.x, (u_input.c != -arg_1.c) || true, _wgslsmith_sub_u32(5116u, 1u) > select(_wgslsmith_div_u32(35706u, 28548u), ~32302u, all(arg_1.e.zy))), arg_1.d, arg_1.c << (34788u % 32u), vec3<bool>(func_3(~(~vec3<i32>(37139i, -26707i, arg_1.c)), ~vec3<u32>(62284u, 0u, 0u) << (firstTrailingBit(vec3<u32>(41226u, 30477u, 23302u)) % vec3<u32>(32u)), arg_1.a, func_2()), !(!arg_1.a), any(vec3<bool>(arg_1.a, true, all(vec2<bool>(true, arg_1.a))))));
    var var_1 = -(firstTrailingBit(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-1i, u_input.d), vec2<i32>(var_0.c, var_0.d)))) & abs(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-1i, 6132i)))));
    var var_2 = arg_2.yw;
    let var_3 = arg_1.a;
    let var_4 = Struct_1(arg_1.b.x, !(!(!func_2().b)), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -51139i, -15179i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 11281i, -1i), vec3<i32>(arg_1.d, 54623i, 2147483647i), vec3<i32>(-46388i, arg_1.d, 67856i) << (vec3<u32>(9656u, 72460u, 0u) % vec3<u32>(32u)))), var_0.c, select(select(!(!var_0.b), arg_1.e, var_0.e), func_1(2147483647i, var_0).e, !func_1(i32(-1i) * -17541i, func_1(23410i, arg_1)).e));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(vec4<bool>(false, any(vec4<bool>(true, true, true, true)), false, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))))), !vec3<bool>(func_4(-976f, func_1(u_input.a, Struct_1(false, vec3<bool>(true, false, false), 800i, 26089i, vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(819f, 1577f, -1021f, -2947f))), _wgslsmith_f_op_f32(-713f - 1095f)), all(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, true, true)) || true), u_input.b, min(-1i, ~(-2147483647i)) & (u_input.b << (26349u % 32u)), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)));
    var_0 = func_2();
    var_0 = Struct_1(true, !var_0.e, _wgslsmith_mult_i32(-6404i, u_input.a), ((11469i & var_0.d) >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 0u, 0u)), vec4<u32>(4294967295u, 15553u, 1u, 11684u)) % 32u)) >> (4294967295u % 32u), var_0.e);
    let var_1 = func_1(_wgslsmith_sub_i32(u_input.d, _wgslsmith_sub_i32(~countOneBits(20905i), 1i)), func_1(u_input.c, Struct_1(var_0.b.x | all(vec4<bool>(false, false, true, true)), !select(var_0.e, vec3<bool>(var_0.a, var_0.a, false), var_0.e), _wgslsmith_mult_i32(u_input.b, 1i), _wgslsmith_div_i32(min(-16200i, 1i), -u_input.c), !(!vec3<bool>(var_0.e.x, false, true)))));
    let var_2 = ~4230u;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1114f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1250f + 1243f) * _wgslsmith_div_f32(-517f, -637f)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(-vec2<i32>(_wgslsmith_clamp_i32(2147483647i, -23208i, u_input.a), var_1.d ^ var_0.d), reverseBits(~min(vec2<i32>(0i, var_1.c), vec2<i32>(12464i, -8507i)))));
}

