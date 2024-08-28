struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<f32>,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec4<u32>(4294967295u, 1u, 4294967295u, 15642u), vec3<bool>(false, false, true), true, Struct_1(true, -965f, vec3<i32>(-12954i, 23288i, -21829i), 4294967295u, 31054u)), Struct_3(vec4<u32>(0u, 1u, 36097u, 0u), vec3<bool>(false, false, false), true, Struct_1(true, -1183f, vec3<i32>(i32(-2147483648), -25163i, -1i), 4294967295u, 47633u)), Struct_3(vec4<u32>(0u, 4294967295u, 4294967295u, 63379u), vec3<bool>(false, false, false), false, Struct_1(false, 557f, vec3<i32>(i32(-2147483648), -61059i, 1i), 0u, 1u)), Struct_3(vec4<u32>(4294967295u, 4294967295u, 0u, 94144u), vec3<bool>(true, false, true), true, Struct_1(true, -205f, vec3<i32>(15621i, i32(-2147483648), 0i), 80442u, 21729u)), Struct_3(vec4<u32>(1u, 57759u, 4294967295u, 66908u), vec3<bool>(false, true, false), false, Struct_1(false, -309f, vec3<i32>(0i, 50916i, 13468i), 14517u, 42629u)), Struct_3(vec4<u32>(8720u, 19717u, 68702u, 18315u), vec3<bool>(true, false, true), true, Struct_1(false, -2031f, vec3<i32>(-1i, 46968i, -61671i), 48659u, 0u)), Struct_3(vec4<u32>(4294967295u, 1u, 0u, 98749u), vec3<bool>(true, false, true), false, Struct_1(true, 414f, vec3<i32>(-15537i, 2147483647i, 0i), 27025u, 0u)), Struct_3(vec4<u32>(47573u, 0u, 17306u, 1u), vec3<bool>(true, false, false), false, Struct_1(true, 768f, vec3<i32>(0i, 9924i, 2683i), 39306u, 4294967295u)), Struct_3(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 21354u), vec3<bool>(true, false, false), true, Struct_1(true, -1062f, vec3<i32>(21263i, 0i, 38649i), 0u, 10554u)), Struct_3(vec4<u32>(0u, 11641u, 1u, 1u), vec3<bool>(false, false, false), true, Struct_1(false, 2243f, vec3<i32>(2147483647i, -1i, -21778i), 7969u, 8003u)), Struct_3(vec4<u32>(0u, 47482u, 18577u, 4294967295u), vec3<bool>(true, true, false), false, Struct_1(true, 2484f, vec3<i32>(0i, 15193i, -1i), 0u, 42709u)), Struct_3(vec4<u32>(11193u, 0u, 61648u, 1u), vec3<bool>(false, true, false), true, Struct_1(false, 1000f, vec3<i32>(-1i, -1782i, -1i), 97168u, 4294967295u)), Struct_3(vec4<u32>(4294967295u, 59362u, 28830u, 59026u), vec3<bool>(true, true, true), false, Struct_1(true, 1000f, vec3<i32>(32819i, -1i, 2147483647i), 76894u, 10685u)), Struct_3(vec4<u32>(0u, 29707u, 44659u, 0u), vec3<bool>(true, false, true), false, Struct_1(true, -125f, vec3<i32>(1i, i32(-2147483648), 2147483647i), 0u, 14540u)), Struct_3(vec4<u32>(58804u, 1u, 36549u, 1u), vec3<bool>(true, true, false), true, Struct_1(true, 244f, vec3<i32>(i32(-2147483648), -22966i, -1i), 35652u, 4294967295u)), Struct_3(vec4<u32>(1u, 1u, 0u, 60562u), vec3<bool>(false, true, false), false, Struct_1(false, -999f, vec3<i32>(-1i, -26484i, 1529i), 1u, 74832u)), Struct_3(vec4<u32>(0u, 0u, 0u, 11510u), vec3<bool>(true, true, true), false, Struct_1(true, 335f, vec3<i32>(-39807i, 12028i, 1i), 21059u, 4294967295u)), Struct_3(vec4<u32>(4294967295u, 1u, 10428u, 4294967295u), vec3<bool>(false, false, true), false, Struct_1(true, 1190f, vec3<i32>(i32(-2147483648), 29893i, 22535i), 1u, 6837u)), Struct_3(vec4<u32>(1u, 4294967295u, 4294967295u, 23101u), vec3<bool>(true, false, false), true, Struct_1(true, 485f, vec3<i32>(0i, -33835i, 73624i), 4294967295u, 1u)), Struct_3(vec4<u32>(0u, 87786u, 59354u, 72542u), vec3<bool>(false, true, true), false, Struct_1(true, 2017f, vec3<i32>(1i, 56256i, 0i), 4294967295u, 1u)), Struct_3(vec4<u32>(1u, 4294967295u, 52277u, 0u), vec3<bool>(true, true, true), false, Struct_1(true, -1732f, vec3<i32>(-1i, 0i, -53658i), 0u, 1u)), Struct_3(vec4<u32>(4294967295u, 1u, 91968u, 4294967295u), vec3<bool>(false, false, false), true, Struct_1(true, 1561f, vec3<i32>(0i, 2147483647i, 0i), 75238u, 4294967295u)), Struct_3(vec4<u32>(1u, 24693u, 10991u, 1u), vec3<bool>(false, false, false), false, Struct_1(true, 209f, vec3<i32>(2147483647i, -14119i, 43825i), 1u, 13877u)));

var<private> global1: array<f32, 21> = array<f32, 21>(-443f, -1340f, -1000f, -953f, 1632f, 1123f, -1000f, -170f, -520f, -1000f, 1364f, -1047f, -257f, 702f, 1061f, 1089f, -1722f, -286f, -169f, -1105f, -2198f);

var<private> global2: bool = false;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<f32>) -> i32 {
    global0 = array<Struct_3, 23>();
    let var_0 = Struct_4(Struct_2(arg_0.d.b, countOneBits(arg_0.a.x)), vec4<f32>(-1000f, -2438f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.x, arg_2.x)) + _wgslsmith_f_op_f32(trunc(-198f))))), arg_0.d.b), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1483f, 1098f, 1599f))))))), global0[_wgslsmith_index_u32(arg_0.d.d, 23u)], arg_0);
    global1 = array<f32, 21>();
    global0 = array<Struct_3, 23>();
    return 4367i;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(634f)) * 567f))), vec3<i32>(u_input.a.x, firstLeadingBit(func_3(Struct_3(vec4<u32>(123817u, 0u, 18778u, 4294967295u), vec3<bool>(true, true, false), false, Struct_1(false, global1[_wgslsmith_index_u32(22628u, 21u)], arg_1.xwy, 34137u, 23767u)), ~arg_1.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(9278u, 21u)], 238f)))), arg_1.x), 1u, firstLeadingBit(17660u));
    var var_1 = 2372u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-284f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * 1715f) * -323f), true)))));
    var var_3 = ~1u;
    var var_4 = _wgslsmith_f_op_f32(step(651f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-777f)) - _wgslsmith_f_op_f32(1316f + _wgslsmith_f_op_f32(1000f - var_0.b)))))));
    return var_0.d;
}

fn func_1(arg_0: vec4<u32>) -> vec3<u32> {
    global0 = array<Struct_3, 23>();
    let var_0 = _wgslsmith_div_vec4_u32(arg_0, (reverseBits(vec4<u32>(arg_0.x, 0u, arg_0.x, 25554u)) << (_wgslsmith_clamp_vec4_u32(arg_0, arg_0, vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 20460u)) % vec4<u32>(32u))) ^ vec4<u32>(_wgslsmith_add_u32(81815u, ~arg_0.x), func_2(vec2<i32>(-2623i, u_input.a.x), ~vec4<i32>(u_input.a.x, u_input.a.x, 42474i, u_input.a.x)), max(arg_0.x, arg_0.x) ^ 5956u, 3541u));
    global2 = false;
    var var_1 = Struct_1(any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(var_0.x == arg_0.x, all(vec4<bool>(true, false, false, true))))), -604f, _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), 2147483647i, firstLeadingBit(u_input.a.x)) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_0.x), arg_0.yxx) % vec3<u32>(32u)), vec3<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-50362i, u_input.a.x, 0i) & vec3<i32>(-41328i, u_input.a.x, u_input.a.x), vec3<i32>(1i, 0i, u_input.a.x)), u_input.a.x), abs(vec3<i32>(select(-25108i, u_input.a.x, false), _wgslsmith_sub_i32(-7239i, u_input.a.x), -64146i))), arg_0.x, ~_wgslsmith_add_u32(arg_0.x, 1u));
    return _wgslsmith_add_vec3_u32(~(~select(var_0.yxy, var_0.zxw, vec3<bool>(var_1.a, var_1.a, var_1.a)) & var_0.zwx), select(vec3<u32>(~var_0.x << (1u % 32u), 38218u ^ (var_0.x ^ 4294967295u), 1u), ~countOneBits(~arg_0.wyz), vec3<bool>(var_1.a, var_1.a, _wgslsmith_div_u32(var_1.d, arg_0.x) < var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(firstTrailingBit(~1u) & ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 179u), ~1u, 0u), _wgslsmith_dot_vec3_u32(func_1(max(~vec4<u32>(25955u, 1u, 12823u, 1u), firstLeadingBit(vec4<u32>(4294967295u, 76406u, 37444u, 39084u)))), ~max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 7467u, 0u))), ~_wgslsmith_mod_u32(31485u, 4294967295u), 4294967295u);
    let var_1 = max(u_input.a.x, u_input.a.x);
    var var_2 = _wgslsmith_mod_i32(max(select(var_1, -var_1, true) ^ -2147483647i, -9444i ^ (_wgslsmith_div_i32(23219i, 741i) >> (var_0.x % 32u))), firstLeadingBit(i32(-1i) * -41046i));
    global2 = 18503i > u_input.a.x;
    var var_3 = select(select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), select(true, true, false) && all(vec4<bool>(false, true, true, true))), select(vec3<bool>(any(vec2<bool>(false, false)), true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false))), vec3<bool>(true, true, !select(true, any(vec2<bool>(true, true)), select(false, true, true))), select(!select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), true), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), true, true), true)));
    let var_4 = Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, countOneBits(4294967295u), 1u, var_0.x), vec4<u32>(~_wgslsmith_mod_u32(0u, var_0.x), ~(~0u), var_0.x, 1u)), !(!vec3<bool>(var_3.x, var_0.x <= 14451u, var_3.x)), false, Struct_1(true, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~firstTrailingBit(1u), 21u)])), vec3<i32>(~var_1, u_input.a.x << (var_0.x % 32u), u_input.a.x & u_input.a.x) | _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x, -1i, u_input.a.x), vec3<i32>(-20321i, u_input.a.x, -26456i) | vec3<i32>(u_input.a.x, var_1, 1i), vec3<i32>(-37993i, u_input.a.x, var_1) ^ vec3<i32>(-17749i, -31782i, u_input.a.x)), min(_wgslsmith_clamp_u32(var_0.x, 31833u, 9115u) << (var_0.x % 32u), var_0.x), firstTrailingBit(_wgslsmith_div_u32(var_0.x, func_2(u_input.a, vec4<i32>(3190i, 2147483647i, -22715i, u_input.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~4496u), var_4.d.c);
}

