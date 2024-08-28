struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(4294967295u, 36253u, 1u, 75490u, 34411u, 0u, 0u, 4294967295u, 63165u, 1u, 17715u, 55028u, 5156u, 100061u, 4294967295u, 0u, 65901u, 4294967295u, 25874u, 35187u, 15712u, 0u, 1u, 38592u, 1506u, 0u, 1u);

var<private> global1: vec4<f32> = vec4<f32>(875f, -1037f, 852f, 1474f);

var<private> global2: vec4<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a | min(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global2.x, 27u)]) ^ _wgslsmith_sub_vec2_u32(global2.zy, vec2<u32>(global0[_wgslsmith_index_u32(29124u, 27u)], 1u)), ~vec2<u32>(9527u, 23635u)), global0[_wgslsmith_index_u32(1u, 27u)]), 27u)];
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    return firstLeadingBit(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(global0[_wgslsmith_index_u32(u_input.a, 27u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(68068u, u_input.a, 0u, global2.x), vec4<u32>(global2.x, 29578u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 27u)], 27u)], 0u)), ~global0[_wgslsmith_index_u32(38777u, 27u)], ~59806u), abs(reverseBits(vec4<u32>(4294967295u, u_input.a, 52980u, 1u))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    let var_0 = vec3<f32>(1f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a.x + -627f))))));
    global0 = array<u32, 27>();
    let var_1 = select(vec3<bool>(arg_2.a.x, firstLeadingBit(~131173u) < func_3(_wgslsmith_f_op_f32(select(arg_3.a.x, var_0.x, arg_2.a.x)), Struct_2(arg_2.a, arg_2.c, Struct_1(u_input.b.x, vec4<i32>(u_input.b.x, arg_2.c.a, arg_2.b.a, arg_2.b.c), 0i))), select(all(vec4<bool>(arg_2.a.x, false, false, false)), true, !arg_2.a.x) | (u_input.a >= abs(18189u))), !arg_2.a, true);
    global0 = array<u32, 27>();
    var var_2 = vec4<f32>(-1190f, 2064f, -246f, _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(select(234f, _wgslsmith_f_op_f32(arg_3.a.x - arg_3.a.x), any(select(vec4<bool>(true, arg_2.a.x, var_1.x, var_1.x), vec4<bool>(arg_2.a.x, false, false, var_1.x), true))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x - 1035f))), arg_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -572f)) + 1156f);
    var var_1 = Struct_2(arg_2, Struct_1(-19573i, -(firstLeadingBit(vec4<i32>(-3004i, u_input.b.x, -11159i, u_input.b.x)) << ((vec4<u32>(20292u, u_input.a, global2.x, u_input.a) >> (vec4<u32>(9826u, 21628u, 4294967295u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))), -countOneBits(firstTrailingBit(u_input.b.x))), Struct_1(~u_input.b.x, ~(vec4<i32>(-42516i, u_input.b.x, 0i, 10261i) << (vec4<u32>(46797u, 0u, global2.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_mult_i32(-u_input.b.x, ~u_input.b.x) & _wgslsmith_sub_i32(-2147483647i, -u_input.b.x)));
    global0 = array<u32, 27>();
    let var_2 = Struct_2(vec3<bool>(true, all(select(!vec4<bool>(var_1.a.x, arg_1, arg_2.x, true), vec4<bool>(false, arg_2.x, true, arg_1), !vec4<bool>(false, false, var_1.a.x, arg_1))), any(select(select(vec4<bool>(true, arg_1, true, false), vec4<bool>(arg_2.x, true, false, arg_2.x), true), select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(var_1.a.x, false, true, true), vec4<bool>(false, arg_2.x, var_1.a.x, false)), false))), Struct_1(46052i, -vec4<i32>(firstTrailingBit(-24239i), _wgslsmith_mult_i32(16907i, u_input.b.x), u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, var_1.b.c, -46928i))), firstLeadingBit(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.zz, var_1.b.b.wy)))), Struct_1(-(~_wgslsmith_mod_i32(u_input.b.x, -14802i)), var_1.c.b, abs(u_input.b.x)));
    var var_3 = vec2<u32>(~(~(~_wgslsmith_sub_u32(0u, global2.x))), _wgslsmith_mult_u32(~(~73488u << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(0u, 27u)], 76983u, 44039u), vec4<u32>(1u, global2.x, 4294967295u, global0[_wgslsmith_index_u32(0u, 27u)])) % 32u)), global2.x));
    return -646i;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    var var_0 = arg_1;
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(arg_2.wxw + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1762f, _wgslsmith_f_op_f32(func_2(Struct_3(arg_2), Struct_3(arg_2), arg_1, Struct_3(vec4<f32>(610f, -568f, arg_2.x, global1.x)))), _wgslsmith_f_op_f32(trunc(global1.x))), vec3<f32>(_wgslsmith_f_op_f32(min(1000f, -1288f)), arg_2.x, -194f), !(!vec3<bool>(false, var_0.a.x, arg_1.a.x))))), select(false, false, any(!vec4<bool>(var_0.a.x, true, arg_1.a.x, var_0.a.x))), select(var_0.a, vec3<bool>(any(var_0.a), true, all(select(arg_1.a, vec3<bool>(var_0.a.x, var_0.a.x, false), arg_1.a.x))), vec3<bool>(var_0.a.x, (arg_2.x != arg_2.x) | true, all(vec2<bool>(true, var_0.a.x)))));
    let var_2 = Struct_1(arg_0.a, vec4<i32>(-19125i, arg_1.b.b.x, 1i, _wgslsmith_div_i32(11658i, -4288i)), -15063i);
    var var_3 = global2.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-788f)) + _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)) * _wgslsmith_f_op_f32(global1.x - 1000f)))) + vec3<f32>(global1.x, _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1391f - arg_2.x)) + _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(func_2(Struct_3(arg_2), Struct_3(vec4<f32>(1470f, 1000f, global1.x, 1549f)), Struct_2(arg_1.a, arg_1.c, arg_1.b), Struct_3(arg_2)))))));
    return 27620u;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1267f, -587f, _wgslsmith_f_op_f32(min(-1978f, arg_1)), 1299f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(arg_1 - -573f), global1.x != arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(822f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_1, arg_1, global1.x)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, -989f, 2136f, arg_1), vec4<f32>(arg_2.x, global1.x, arg_1, 740f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-454f, 2336f, -624f, -121f)))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, var_0.x, arg_1, arg_1), vec4<f32>(var_0.x, global1.x, -1286f, 1000f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 1011f, arg_2.x, global1.x), vec4<f32>(var_0.x, 399f, -672f, 826f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -510f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -223f)) * vec4<f32>(_wgslsmith_f_op_f32(863f - 740f), _wgslsmith_f_op_f32(floor(var_0.x)), 520f, arg_1))));
    var var_2 = Struct_2(vec3<bool>(true, all(vec3<bool>(true, select(false, true, true), true)), any(vec4<bool>(true, true, any(vec2<bool>(false, true)), true))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(12505i, 1i, u_input.b.x), ~vec3<i32>(u_input.b.x, u_input.b.x, -1i)), ~reverseBits(select(arg_0.b, arg_0.b, false)), _wgslsmith_div_i32(-(27564i ^ arg_0.c), select(36760i, _wgslsmith_dot_vec3_i32(arg_0.b.wzz, arg_0.b.zyy), all(vec3<bool>(true, true, false))))), Struct_1(arg_0.a, _wgslsmith_clamp_vec4_i32(reverseBits(arg_0.b) | arg_0.b, -arg_0.b, vec4<i32>(-1i) * -arg_0.b), arg_0.b.x));
    var_0 = vec4<f32>(-252f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -642f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f)), _wgslsmith_f_op_f32(round(var_1.a.x)));
    let var_3 = var_2.a.x;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -429f) * vec4<f32>(-1646f, global1.x, -731f, -137f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(438f, global1.x, global1.x, -1102f) - vec4<f32>(global1.x, 442f, global1.x, global1.x)))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(793f, -1767f, global1.x, 792f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(670f, -648f, -754f, 1416f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 548f)))))));
    let var_1 = Struct_2(func_5(Struct_1(u_input.b.x, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x)), -1i), -1319f, var_0.a.xx, _wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(func_1(Struct_1(-287i, vec4<i32>(u_input.b.x, u_input.b.x, -31908i, u_input.b.x), -11872i), Struct_2(vec3<bool>(false, false, false), Struct_1(u_input.b.x, vec4<i32>(u_input.b.x, -1464i, 5109i, u_input.b.x), -9654i), Struct_1(u_input.b.x, vec4<i32>(2147483647i, -33179i, u_input.b.x, 0i), 2147483647i)), vec4<f32>(var_0.a.x, 1194f, -967f, -875f)), 27u)], max(global2.x, global2.x)) & firstLeadingBit(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a, 27u)], 27u)])), Struct_1(u_input.b.x, _wgslsmith_mod_vec4_i32(firstTrailingBit(abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), countOneBits(countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -9340i)))), u_input.b.x), Struct_1(1i, vec4<i32>(u_input.b.x, u_input.b.x, -u_input.b.x, 1i), _wgslsmith_sub_i32(func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, -1004f, 1287f), vec3<f32>(-124f, global1.x, var_0.a.x))), true, vec3<bool>(false, true, false)), abs(-u_input.b.x))));
    var var_2 = vec2<u32>(~(8598u | func_3(_wgslsmith_f_op_f32(-global1.x), Struct_2(vec3<bool>(var_1.a.x, true, false), var_1.b, Struct_1(0i, vec4<i32>(var_1.c.c, -13066i, -1i, -2147483647i), var_1.b.a)))), min(select(reverseBits(~12540u), _wgslsmith_dot_vec3_u32(select(global2.zyx, global2.yzx, vec3<bool>(var_1.a.x, false, false)), vec3<u32>(32489u, global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(0u, 27u)])), var_1.a.x), global2.x | ~max(u_input.a, 34241u)));
    var var_3 = var_1.a;
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.x, 1000f)));
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, 545f, -324f, var_0.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-460f, 1194f, global1.x, -278f) - vec4<f32>(var_0.a.x, 1499f, global1.x, var_4.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(698f, -2147483647i);
}

