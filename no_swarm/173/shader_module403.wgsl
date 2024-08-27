struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(22734i, -3601i, -46031i), vec2<i32>(2147483647i, 14495i));

var<private> global1: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-650f, 278f), vec2<f32>(713f, -1584f), vec2<f32>(-2476f, 705f), vec2<f32>(-213f, 591f), vec2<f32>(-1296f, 604f), vec2<f32>(-900f, -134f), vec2<f32>(-1473f, -418f), vec2<f32>(630f, -230f), vec2<f32>(-702f, 327f), vec2<f32>(-350f, -1034f), vec2<f32>(1238f, -961f), vec2<f32>(2278f, 176f), vec2<f32>(1090f, 2767f), vec2<f32>(668f, -1017f), vec2<f32>(-1000f, 898f), vec2<f32>(697f, -332f), vec2<f32>(1806f, -831f), vec2<f32>(224f, 939f), vec2<f32>(-606f, -1719f), vec2<f32>(-428f, -290f), vec2<f32>(-793f, -784f), vec2<f32>(-1229f, -464f), vec2<f32>(-1813f, -709f), vec2<f32>(-709f, -1639f), vec2<f32>(1079f, -487f), vec2<f32>(-878f, 2231f), vec2<f32>(163f, -525f), vec2<f32>(1704f, -1204f), vec2<f32>(562f, -1589f), vec2<f32>(1667f, -819f));

var<private> global2: array<Struct_2, 2>;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(-53024i, 2147483647i, i32(-2147483648)), vec2<i32>(18170i, -84501i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(global3.a, _wgslsmith_div_vec2_i32(~(~global3.a.yy), vec2<i32>(_wgslsmith_clamp_i32(~0i, ~global3.a.x, countOneBits(25646i)), (35654i << (u_input.c % 32u)) << (65645u % 32u))));
    global2 = array<Struct_2, 2>();
    var var_1 = true;
    var var_2 = select(!(!vec4<bool>(true, false, true, any(vec4<bool>(false, false, true, false)))), !select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(var_0.a.x != global0.a.x, any(vec4<bool>(false, false, true, true)), true, true), any(vec4<bool>(true, false, false, true))), false);
    global2 = array<Struct_2, 2>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - -353f), _wgslsmith_f_op_f32(f32(-1f) * -416f))), -2775f));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>) -> Struct_1 {
    global3 = Struct_1(min(~(~vec3<i32>(29002i, global0.a.x, global3.a.x)) ^ _wgslsmith_mod_vec3_i32(arg_0.wwx << (u_input.b % vec3<u32>(32u)), vec3<i32>(1i, global0.b.x, global0.a.x)), ~vec3<i32>(arg_0.x, min(-7017i, -15768i), i32(-1i) * -2147483647i)), vec2<i32>(-1i) * -global0.a.xx);
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -583f)));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1u, 9124u, 79036u), vec4<u32>(u_input.a.x, 1u, 44969u, 33812u), vec4<u32>(u_input.a.x, 31662u, 45419u, u_input.a.x)), abs(vec4<u32>(u_input.b.x, 69707u, u_input.b.x, 34861u))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.c, 1u), vec4<u32>(u_input.c, u_input.c, 1u, u_input.a.x)) >> (u_input.c % 32u)), vec2<u32>(u_input.a.x, u_input.c)), 30u)]));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(select(select(global0.a, arg_0.wyx, vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), firstTrailingBit(vec3<i32>(arg_0.x, 18735i, global0.a.x)), !vec3<bool>(arg_1.x, true, arg_1.x)), global3.a ^ vec3<i32>(-19950i, arg_0.x, global3.a.x)), -vec2<i32>(~global3.b.x, ~(-2147483647i))), any(vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1550f, var_0.x, var_0.x)), vec3<f32>(930f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1482f + 1212f))))), Struct_1(~min(vec3<i32>(26100i, global0.b.x, global0.a.x), ~arg_0.zwy), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(global3.b, min(vec2<i32>(1i, 37440i), global0.a.zx)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.wz, global0.a.zy), vec2<i32>(-44382i, arg_0.x)))), u_input.b.x);
    global3 = var_1.a;
    return Struct_1(select(var_1.d.a, _wgslsmith_mod_vec3_i32(var_1.d.a, _wgslsmith_div_vec3_i32(var_1.d.a, vec3<i32>(global0.a.x, -52997i, 2607i))), true), vec2<i32>(0i, _wgslsmith_dot_vec2_i32(select(arg_0.xx, var_1.a.b, arg_1), _wgslsmith_sub_vec2_i32(var_1.d.b, global3.b))) & vec2<i32>(-_wgslsmith_mult_i32(global0.a.x, -29014i), ~(~var_1.a.b.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = func_2(vec4<i32>(arg_1.b.x, -(~(global0.b.x << (14832u % 32u))), _wgslsmith_mod_i32(~countOneBits(global3.a.x), -firstLeadingBit(global0.b.x)), select(~25033i & arg_0.x, -(global0.a.x << (36341u % 32u)), true)), vec2<bool>(any(vec4<bool>(true, 4294967295u != u_input.c, any(vec4<bool>(false, false, false, false)), true)), false));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(399f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -187f, true))), _wgslsmith_f_op_f32(ceil(1170f)), true)), -1588f, _wgslsmith_f_op_f32(step(305f, _wgslsmith_f_op_f32(f32(-1f) * -1214f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-784f, -1522f, -206f, 1288f) * vec4<f32>(-192f, 1012f, -1794f, 1441f)), vec4<f32>(-2425f, 199f, 1000f, -314f), true)))));
    var_0 = func_2(_wgslsmith_mod_vec4_i32(-vec4<i32>(-global3.a.x, countOneBits(-14143i), _wgslsmith_dot_vec3_i32(arg_1.a, arg_0), func_2(vec4<i32>(23249i, -2147483647i, 2147483647i, arg_1.b.x), vec2<bool>(false, false)).b.x), vec4<i32>(-max(-15583i, var_0.b.x), -14218i << (~u_input.c % 32u), _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_1.a.x, arg_0.x), 1i), 0i)), !select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, false, false, false)), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false)));
    let var_2 = any(vec2<bool>(false, !(u_input.a.x < ~12056u)));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1074f))), -1213f, var_1.x);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    return Struct_2(func_2(abs(vec4<i32>(select(arg_0, arg_0, false), -1086i, -13216i, -1i)), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), _wgslsmith_div_f32(arg_1.x, -1753f) < _wgslsmith_f_op_f32(round(arg_1.x)))), true, _wgslsmith_div_vec3_f32(arg_1, vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), 202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), Struct_1(global3.a >> (u_input.a % vec3<u32>(32u)), _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(global3.b.x, global3.b.x)), global0.a.yx)), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, all(select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, false, false, false)), false, select(true, true, false)), all(vec2<bool>(true, true)))));
    let var_1 = !(!(!(!select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), true))));
    var var_2 = func_4(~(abs(0i) ^ ~global3.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(298f, 911f, -1002f), vec3<f32>(-561f, -104f, 188f), var_1.x)) + _wgslsmith_f_op_vec3_f32(func_1(vec3<i32>(global3.b.x, global0.b.x, 1i), Struct_1(vec3<i32>(3135i, global3.b.x, -2147483647i), global3.b))))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(934f, _wgslsmith_f_op_f32(min(2399f, -318f)), -907f)))));
    let var_3 = var_2.c.x;
    var var_4 = var_2.d.a.x << (52195u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~global0.a);
}

