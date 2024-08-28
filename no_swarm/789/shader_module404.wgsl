struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: Struct_3,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(-493f, _wgslsmith_f_op_f32(floor(-239f))), _wgslsmith_f_op_f32(491f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-694f * -598f), -664f))));
    let var_1 = var_0.a;
    var_0 = Struct_1(var_0.a);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) * _wgslsmith_div_vec2_f32(var_0.a, var_0.a))))));
    var_0 = Struct_1(var_0.a);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1973f)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_5, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = arg_3;
    let var_1 = Struct_4(arg_2.b.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * arg_1) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.b.a.x * var_0.a.a.x), arg_3.b.a.x))), arg_3, ~(~firstTrailingBit(_wgslsmith_clamp_vec3_u32(arg_0, vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 57757u, u_input.c.x)))), vec2<i32>(2147483647i, -10543i));
    var var_2 = arg_2.a.yzz;
    let var_3 = vec2<bool>(all(select(vec2<bool>(arg_2.b.x > arg_3.a.a.x, true), vec2<bool>(true, any(vec4<bool>(true, true, false, true))), !any(vec3<bool>(false, false, true)))), true);
    let var_4 = any(!(!vec4<bool>(all(vec2<bool>(false, var_3.x)), any(vec3<bool>(var_3.x, true, var_3.x)), arg_2.b.x >= 1630f, true)));
    return !select(select(vec2<bool>(false & var_4, var_3.x), !vec2<bool>(var_3.x, false), vec2<bool>(any(vec4<bool>(var_4, var_3.x, true, var_3.x)), any(vec3<bool>(var_4, var_4, var_4)))), select(vec2<bool>(false || var_3.x, true), !var_3, vec2<bool>(true, true & var_4)), !var_3);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1956f, -721f))), 1022f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.a.x, -259f)));
    var_0 = 1440f;
    var var_1 = Struct_5(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b)), firstTrailingBit(vec4<i32>(u_input.b, u_input.b, 1i, -1i) ^ vec4<i32>(40948i, u_input.b, u_input.b, u_input.b))) ^ ~(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 8196i, 37579i, u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.a.x, 365f, 647f, -1105f), vec4<f32>(arg_1.a.a.x, -717f, arg_1.b.a.x, arg_1.a.a.x)))))), 1u);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a.x) * 581f);
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(false, !(true | func_2(vec3<u32>(4294967295u, u_input.a, 1u), -1310f, Struct_5(vec4<i32>(u_input.b, 29765i, -11849i, u_input.b), vec4<f32>(734f, 717f, arg_2.a.a.x, arg_1.a.a.x), u_input.a), func_4(1u, Struct_3(arg_2.a, Struct_1(vec2<f32>(2679f, -702f))), vec2<bool>(true, false))).x));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.b.a.x);
    var var_2 = Struct_4(vec2<f32>(-1000f, var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x) * var_1)))), arg_2, ~(~_wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.c.x, u_input.a, 43318u), vec3<u32>(u_input.a, 23500u, u_input.a)), ~vec3<u32>(35261u, 4294967295u, 4294967295u))), firstLeadingBit(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(4419i, 0i)), -vec2<i32>(-1i, u_input.b), reverseBits(vec2<i32>(u_input.b, 1i))) & -(~vec2<i32>(60513i, u_input.b))));
    var_2 = Struct_4(arg_3.a, _wgslsmith_f_op_f32(-arg_1.b.a.x), arg_1, ~_wgslsmith_add_vec3_u32(var_2.d, vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(0u, u_input.a), ~u_input.c.x)), max(var_2.e, select(var_2.e, var_2.e, var_0)));
    let var_3 = Struct_2(var_2.c.b.a, arg_1.a, arg_2.b, arg_2.b);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_2.a))));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> i32 {
    let var_0 = func_5(func_4(0u, arg_0, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(func_2(vec3<u32>(u_input.a, 12907u, u_input.a), arg_0.b.a.x, Struct_5(vec4<i32>(18584i, u_input.b, 10713i, 9913i), vec4<f32>(663f, arg_0.a.a.x, arg_1, -834f), 1u), Struct_3(arg_0.b, arg_0.a)), vec2<bool>(true, true), vec2<bool>(true, true)))), func_4(u_input.a, func_4(~(~u_input.c.x), arg_0, vec2<bool>(true, select(false, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), func_2(vec3<u32>(9505u, 29086u, u_input.a), -1145f, Struct_5(vec4<i32>(68380i, u_input.b, 31999i, 2147483647i), vec4<f32>(-639f, arg_1, -1298f, arg_1), 11288u), arg_0), vec2<bool>(true, any(vec4<bool>(false, true, true, false))))), func_4(~13303u, arg_0, vec2<bool>(true, true)), arg_0.b);
    var var_1 = -57144i;
    var var_2 = ~(~((_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, u_input.a, u_input.c.x), vec4<u32>(83068u, u_input.c.x, 4294967295u, u_input.c.x)) | ~vec4<u32>(23974u, 34455u, 0u, u_input.a)) >> (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(37636u, u_input.c.x, 0u, u_input.a)), select(vec4<u32>(u_input.a, u_input.c.x, 97987u, u_input.a), vec4<u32>(35207u, u_input.a, u_input.c.x, u_input.a), false)) % vec4<u32>(32u))));
    var var_3 = Struct_5(-(abs(vec4<i32>(2147483647i, 17081i, -2147483647i, 2147483647i)) << (~countOneBits(vec4<u32>(var_2.x, 52551u, u_input.a, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1615f, arg_0.b.a.x, -383f, -493f) + vec4<f32>(arg_0.b.a.x, var_0.a.x, var_0.a.x, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-363f, 1000f, arg_0.b.a.x, arg_0.b.a.x)), vec4<bool>(true, false, true, true))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -473f, arg_1, -1032f) + vec4<f32>(-1000f, 382f, -112f, -842f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-446f * arg_0.b.a.x), -367f, 1000f, var_0.a.x)))), abs(min(select(u_input.c.x, var_2.x, true), ~countOneBits(var_2.x))));
    var_3 = Struct_5(-var_3.a, vec4<f32>(_wgslsmith_f_op_f32(floor(-574f)), 670f, _wgslsmith_f_op_f32(-arg_1), func_5(arg_0, func_4(~80802u, Struct_3(Struct_1(vec2<f32>(1054f, arg_1)), arg_0.b), vec2<bool>(true, true)), arg_0, var_0).a.x), firstLeadingBit(var_3.c));
    return -u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(~vec2<i32>(func_1(Struct_3(Struct_1(vec2<f32>(652f, 283f)), Struct_1(vec2<f32>(173f, -196f))), 1063f), 1i), vec2<i32>(1i, countOneBits(2147483647i)) << (u_input.c % vec2<u32>(32u)), select(countOneBits(countOneBits(vec2<i32>(u_input.b, -51468i))), abs(vec2<i32>(u_input.b, 53637i) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))), !func_2(vec3<u32>(4294967295u, u_input.c.x, 40318u), -2192f, Struct_5(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<f32>(-627f, 324f, 515f, 770f), 1u), Struct_3(Struct_1(vec2<f32>(387f, 1192f)), Struct_1(vec2<f32>(1000f, 634f)))))), select(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(-19803i, u_input.b), vec2<i32>(u_input.b, -10171i), vec2<i32>(u_input.b, -16736i)), vec2<i32>(u_input.b | u_input.b, 64572i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(631f + 1214f), _wgslsmith_div_f32(-1900f, 831f), all(vec4<bool>(false, true, false, true)))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1246f, -535f, false))))));
}

