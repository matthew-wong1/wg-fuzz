struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -393f;

var<private> global1: vec3<i32> = vec3<i32>(1i, 2147483647i, 46347i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>) -> vec3<i32> {
    let var_0 = min(1i << (firstLeadingBit(50770u) % 32u), _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, global1.x, 2147483647i), -vec3<i32>(1i, -44239i, 1i))), ~select(vec3<i32>(40751i, u_input.a, u_input.a), vec3<i32>(-30928i, u_input.a, u_input.a), true) & -vec3<i32>(global1.x, -2147483647i, global1.x)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(110f, 828f, arg_0.x))))), _wgslsmith_f_op_f32(abs(1f))));
    var var_1 = Struct_2(Struct_1(select(firstLeadingBit(1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 27733u), vec2<u32>(22315u, 0u)), true && all(vec2<bool>(arg_0.x, false))), true, false, ~7976u));
    let var_2 = Struct_2(var_1.a);
    var var_3 = -42476i;
    return (vec3<i32>(i32(-1i) * -1i, global1.x, 2147483647i) | _wgslsmith_mult_vec3_i32(vec3<i32>(-36972i, -1i, 1i), ~vec3<i32>(u_input.a, -27305i, 482i) | (vec3<i32>(u_input.a, -3960i, 50523i) | vec3<i32>(global1.x, 0i, 68225i)))) ^ select(vec3<i32>(1i, select(40610i, 23874i, false) >> (reverseBits(var_1.a.a) % 32u), _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(-34845i, 1i))), max(countOneBits(~vec3<i32>(0i, -4658i, 1i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, 9443i, 22478i), vec3<i32>(1i, -2147483647i, global1.x))), var_1.a.c);
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_u32(27709u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u))), true & !any(vec4<bool>(true, true, true, false)), true, _wgslsmith_div_u32(~1u, ~_wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u))));
    global1 = func_3(select(vec3<bool>(all(vec3<bool>(var_0.a.c, true, false)), !var_0.a.b, false | var_0.a.c), !(!vec3<bool>(var_0.a.c, true, false)), !vec3<bool>(var_0.a.c, var_0.a.b, true))) | _wgslsmith_add_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(min(vec3<i32>(-47539i, u_input.a, -1i), vec3<i32>(global1.x, -63314i, 1i)), -vec3<i32>(37925i, u_input.a, 0i))), firstTrailingBit(countOneBits(-vec3<i32>(u_input.a, global1.x, 1i))));
    var var_1 = reverseBits(~vec3<i32>(global1.x, u_input.a, ~u_input.a));
    var var_2 = Struct_3(-(~(-vec4<i32>(0i, 2147483647i, 1078i, var_1.x))));
    var_1 = vec3<i32>(countOneBits(u_input.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_2.a.xxw, _wgslsmith_mult_vec3_i32(-var_2.a.xyw, func_3(vec3<bool>(false, var_0.a.b, false)))), reverseBits(_wgslsmith_clamp_i32(-25860i, var_1.x, ~var_2.a.x))), global1.x);
    return Struct_3(vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.a.www, vec3<i32>(~51507i, var_2.a.x, ~global1.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-1i, global1.x))), 2147483647i), ~(~(-16427i) ^ _wgslsmith_clamp_i32(-2147483647i, 4325i, 2147483647i)), _wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(u_input.a & var_2.a.x, var_1.x))));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_2 {
    var var_0 = -1423f;
    global0 = -209f;
    global1 = -_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(global1.x, global1.x, 24931i), abs(vec3<i32>(u_input.a, global1.x, 2404i) << (vec3<u32>(27274u, 0u, 4294967295u) % vec3<u32>(32u)))), select(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global1.x, u_input.a, -2147483647i), vec3<i32>(global1.x, 0i, -15073i)), abs(vec3<i32>(0i, u_input.a, global1.x))), abs(-vec3<i32>(-1i, -2147483647i, global1.x)), select(select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, true, arg_1), arg_1), select(vec3<bool>(arg_0, true, arg_1), vec3<bool>(arg_0, false, arg_1), arg_1), global1.x != -1i)));
    let var_1 = abs(4294967295u);
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-370f, 705f, -1106f))))))));
    return Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_1, 4294967295u, 64745u, 17501u) | vec4<u32>(0u, var_1, 1u, var_1)), vec4<u32>(var_1, max(var_1, var_1), var_1, var_1)), any(vec4<bool>(true, false, arg_0, !arg_1)), !arg_1, 1u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    var var_0 = -1i;
    var var_1 = Struct_1(67359u, all(select(select(vec3<bool>(false, arg_0.a.b, true), select(vec3<bool>(arg_2.a.c, false, arg_1.c), vec3<bool>(true, true, arg_0.a.c), false), !arg_0.a.b), select(!vec3<bool>(arg_2.a.c, arg_1.b, arg_2.a.b), select(vec3<bool>(arg_1.b, arg_2.a.c, true), vec3<bool>(arg_2.a.c, arg_2.a.c, arg_2.a.b), true), select(arg_0.a.b, arg_0.a.b, arg_1.b)), vec3<bool>(arg_2.a.c || false, !arg_1.c, any(vec4<bool>(arg_2.a.b, false, arg_2.a.c, false))))), false, ~0u);
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(209f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 603f) + _wgslsmith_f_op_f32(max(-209f, 397f))), -169f)))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(809f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1115f - 1342f) - _wgslsmith_f_op_f32(select(-1000f, 633f, arg_1.b))), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1011f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2228f, 1267f, -508f, 141f) * vec4<f32>(-619f, 1000f, 121f, -2233f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-822f, -1102f, 203f, -1000f), vec4<f32>(652f, 503f, -1000f, -334f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-190f, -1000f, -702f, 961f))), true)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-290f, -103f, 1292f, -806f), vec4<f32>(541f, -1000f, 2249f, 895f), arg_1.c)))))));
    let var_3 = vec3<bool>(arg_2.a.b, !(arg_2.a.a > ~(~4294967295u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d, 20900u), ~vec2<u32>(1u, arg_1.d)) >= arg_1.d);
    return Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global1.x, -1744i), firstTrailingBit(-41851i), abs(-2147483647i), -_wgslsmith_clamp_i32(1i, global1.x, -47262i)), -(~min(vec4<i32>(u_input.a, u_input.a, u_input.a, 20016i), vec4<i32>(1i, 23139i, global1.x, -2147483647i)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec3<i32>) -> bool {
    var var_0 = (arg_2.a.wz | (~min(global1.zx, arg_3.yy) ^ (~global1.xx & ~vec2<i32>(arg_3.x, arg_3.x)))) & global1.xz;
    global0 = 1727f;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1381f + _wgslsmith_f_op_f32(-1656f * 2158f)) - _wgslsmith_f_op_f32(max(-131f, _wgslsmith_f_op_f32(min(2006f, 425f))))) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(250f * 169f), -1000f), _wgslsmith_f_op_f32(floor(-1321f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1560f - -1260f) + _wgslsmith_f_op_f32(f32(-1f) * -994f)))) * _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f), 984f)))), 522f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(741f, 944f))))));
    let var_2 = ~firstTrailingBit(~0u);
    global1 = -vec3<i32>(-2147483647i, global1.x, i32(-1i) * -50034i) ^ -(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.a.x, var_0.x, 1i), ~arg_2.a.wxz) & arg_3);
    return var_1.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(273f, var_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(true, func_5(Struct_2(Struct_1(55455u, false, false, 52776u)), vec2<bool>(true, true), func_4(Struct_2(Struct_1(29176u, true, true, 0u)), Struct_1(1u, false, false, 57532u), func_1(false, true)), ~(vec3<i32>(u_input.a, -4684i, -55162i) << (vec3<u32>(36709u, 0u, 0u) % vec3<u32>(32u)))), !(!any(vec3<bool>(true, false, false)))));
    var var_1 = all(vec4<bool>(true, true, false, true));
    global1 = firstLeadingBit(vec3<i32>(min(u_input.a, countOneBits(global1.x)), global1.x, -func_4(func_1(true, false), Struct_1(1u, true, true, 0u), func_1(false, true)).a.x));
    var_0 = !func_5(Struct_2(Struct_1(abs(67286u), true, all(vec3<bool>(true, false, true)), _wgslsmith_clamp_u32(0u, 677u, 1u))), vec2<bool>(true, true), func_4(Struct_2(func_1(false, false).a), func_1(true, true).a, Struct_2(Struct_1(75489u, false, true, 29016u))), -_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, u_input.a, 18615i), vec3<i32>(2147483647i, -1i, -40028i) & vec3<i32>(u_input.a, u_input.a, u_input.a)));
    var var_2 = func_1(all(vec2<bool>(true, true)), false).a;
    var var_3 = func_1(var_2.b, var_2.c != var_2.b).a;
    var var_4 = func_1(var_2.b, any(vec2<bool>(any(vec4<bool>(var_3.c, var_3.b, false, var_2.c)), false)) | var_3.b).a;
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_4.d, var_5, var_3.d, 36188u));
}

