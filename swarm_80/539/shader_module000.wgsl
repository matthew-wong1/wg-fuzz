struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: u32, arg_1: i32) -> f32 {
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(878f - 665f), _wgslsmith_f_op_f32(f32(-1f) * -476f)))), _wgslsmith_f_op_f32(-1000f - 1250f)), _wgslsmith_f_op_f32(-336f * _wgslsmith_f_op_f32(trunc(-197f)))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = arg_3;
    var_0 = all(select(vec2<bool>(arg_1.b, any(arg_0.a.b.zzw)), select(arg_0.a.b.xy, !(!arg_0.a.b.zz), arg_0.a.b.wx), arg_1.a.x > arg_0.a.d.x));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1509f)));
    return u_input.a.x;
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = Struct_3(Struct_1(_wgslsmith_clamp_vec2_i32(firstTrailingBit(arg_0.a), select(arg_0.a, vec2<i32>(13915i, arg_0.c), true), ~vec2<i32>(-23167i, 2147483647i) ^ arg_0.d.yy), !vec4<bool>(true, !arg_0.b, all(vec2<bool>(false, arg_0.b)), arg_0.b), min(-(0i | arg_0.c), -54108i), arg_0.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1139f, -594f, 374f, 2136f) + vec4<f32>(169f, 1912f, -212f, -458f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(812f, 223f, 1163f, 734f)))), vec4<f32>(315f, 1f, -671f, _wgslsmith_f_op_f32(-1507f * 2381f))))));
    var var_1 = Struct_2(reverseBits(arg_0.e.zy), _wgslsmith_add_i32(var_0.a.a.x, 29267i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.e.x), _wgslsmith_f_op_f32(-var_0.a.e.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(664f * -252f))))), select(vec3<bool>(false, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.c, var_0.a.a.x, var_0.a.c, -7635i), vec4<i32>(-2147483647i, 0i, var_0.a.c, arg_0.a.x)) < _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, -40911i, 1i), arg_0.d), any(!vec4<bool>(var_0.a.b.x, arg_0.b, true, var_0.a.b.x))), vec3<bool>(any(var_0.a.b.xz), arg_0.b, false), var_0.a.b.wxy));
    global0 = any(vec2<bool>(any(var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1327f))) <= 1432f));
    var_1 = Struct_2(var_1.a, ~29196i, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_div_f32(329f, _wgslsmith_f_op_f32(-var_0.a.e.x)), _wgslsmith_f_op_f32(ceil(var_0.a.e.x))))), var_1.d);
    var_1 = Struct_2(vec2<u32>(38989u, u_input.a.x) | var_1.a, _wgslsmith_div_i32(~arg_0.d.x, 30447i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c.x, 925f)) * _wgslsmith_f_op_f32(var_0.a.e.x - -866f)) * _wgslsmith_f_op_f32(-var_0.a.e.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.c.x, -312f, var_1.d.x)), _wgslsmith_div_f32(var_1.c.x, 900f)))), 819f), var_1.d);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(!select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(false, false)), true)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1197f, _wgslsmith_f_op_f32(func_1(u_input.b.x, -11206i))) - _wgslsmith_f_op_f32(1639f * _wgslsmith_div_f32(2518f, 635f)))));
    let var_1 = vec3<u32>(u_input.b.x, 53076u, func_2(Struct_3(Struct_1(vec2<i32>(62148i, -1i), vec4<bool>(true, true, true, false), ~(-6276i), max(vec2<i32>(2147483647i, 20243i), vec2<i32>(1i, 15035i)), vec4<f32>(-134f, 992f, 2171f, 1066f))), Struct_4(-(vec2<i32>(-27921i, -12908i) >> (vec2<u32>(u_input.a.x, 101333u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(trunc(-829f)) > -1277f, 10084i, vec3<i32>(24888i, ~53578i, 8315i), _wgslsmith_div_vec3_u32(vec3<u32>(33039u, 5856u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.b.x, 1u))), _wgslsmith_mult_i32(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-77028i, -2147483647i, 2147483647i), vec3<i32>(-2147483647i, 2147483647i, 1i))), !(!all(vec3<bool>(false, true, false)))));
    global0 = func_3(Struct_4(reverseBits(-vec2<i32>(1i, 1i)), true, -1i, -max(vec3<i32>(-1i, -53371i, -15480i), vec3<i32>(29195i, 12993i, -2147483647i)) << (~u_input.b.xwx % vec3<u32>(32u)), vec3<u32>(7778u, u_input.a.x, ~var_1.x)));
    let var_2 = Struct_2(select(vec2<u32>(~28740u, _wgslsmith_div_u32(var_1.x, var_1.x)), u_input.b.xz, select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true), true)), select(-2147483647i, max(~abs(-17626i), 18461i), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(477f, -2488f, -912f), vec3<f32>(188f, -1612f, -382f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-414f, -727f, 889f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(330f, 984f, 690f), vec3<f32>(-1262f, -123f, -499f), vec3<bool>(true, true, true)))), func_3(Struct_4(vec2<i32>(-2147483647i, -14846i), true, 15721i, vec3<i32>(2147483647i, 0i, -1i), vec3<u32>(var_1.x, u_input.a.x, u_input.b.x))))) * vec3<f32>(_wgslsmith_f_op_f32(step(1359f, -781f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-211f, 629f), _wgslsmith_f_op_f32(f32(-1f) * -331f))), _wgslsmith_f_op_f32(f32(-1f) * -390f))), vec3<bool>(false, true, (var_1.x >> (1u % 32u)) != 38599u));
    global0 = all(select(!select(!vec4<bool>(var_2.d.x, true, true, var_2.d.x), !vec4<bool>(true, var_2.d.x, true, false), select(vec4<bool>(var_2.d.x, false, var_2.d.x, true), vec4<bool>(true, var_2.d.x, var_2.d.x, true), vec4<bool>(true, var_2.d.x, true, true))), select(select(vec4<bool>(var_2.d.x, var_2.d.x, true, false), select(vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, true), vec4<bool>(true, var_2.d.x, false, var_2.d.x), vec4<bool>(false, var_2.d.x, var_2.d.x, true)), select(vec4<bool>(var_2.d.x, true, var_2.d.x, true), vec4<bool>(true, var_2.d.x, var_2.d.x, var_2.d.x), true)), !vec4<bool>(false, var_2.d.x, var_2.d.x, var_2.d.x), true), !vec4<bool>(!var_2.d.x, !var_2.d.x, var_2.d.x == true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~50828u, ~u_input.b);
}

