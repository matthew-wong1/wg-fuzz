struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(4294967295u, 4676u, 1u, 21802u, 1u, 0u, 7982u, 54697u, 30369u, 4294967295u, 38261u, 56986u, 12923u, 70775u, 1u, 0u);

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false));

var<private> global3: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(16577u, 36330u, 1u, 1192u), vec4<u32>(9486u, 19232u, 4294967295u, 1u), vec4<u32>(14178u, 50209u, 0u, 1u), vec4<u32>(4294967295u, 43417u, 4294967295u, 50372u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(1u, 38043u, 122860u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 2411u, 23271u, 4294967295u), vec4<u32>(21425u, 4294967295u, 10833u, 67796u), vec4<u32>(9162u, 1u, 0u, 3395u), vec4<u32>(0u, 4294967295u, 1u, 2650u), vec4<u32>(86431u, 64743u, 4294967295u, 4294967295u), vec4<u32>(0u, 52661u, 10961u, 16081u), vec4<u32>(39419u, 51336u, 4294967295u, 80926u), vec4<u32>(22691u, 0u, 26414u, 3272u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(7939u, 1u, 0u, 57229u));

var<private> global4: i32 = -1i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: vec4<i32>) -> bool {
    global1 = Struct_1(_wgslsmith_mod_vec4_u32(u_input.e, reverseBits(vec4<u32>(max(u_input.a, arg_2.x), ~global0[_wgslsmith_index_u32(global1.a.x, 16u)], 40934u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(66627u, 113098u, 18526u), 16u)]))), 0i, (i32(-1i) * -arg_1.x) & -u_input.b);
    global2 = array<vec4<bool>, 2>();
    global3 = array<vec4<u32>, 17>();
    let var_0 = ~(~abs(~arg_2.zzx));
    global4 = ~2147483647i;
    return all(vec2<bool>(true, true));
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1845f, 1612f));
    var var_1 = select(vec2<bool>(true, true), !vec2<bool>(func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, u_input.b, global1.b), arg_0.zww), -vec2<i32>(arg_0.x, arg_0.x), abs(vec4<u32>(12058u, 46490u, 73348u, 0u)), ~arg_0), false), vec2<bool>(false, false));
    var var_2 = _wgslsmith_f_op_f32(abs(var_0));
    var var_3 = var_1.x;
    var_3 = any(vec4<bool>(true, _wgslsmith_mod_i32(reverseBits(u_input.b), -1238i) > global1.c, !func_3(arg_0.x, _wgslsmith_mult_vec2_i32(vec2<i32>(global1.b, global1.b), vec2<i32>(global1.c, u_input.b)), vec4<u32>(1u, u_input.e.x, 15429u, u_input.c.x), vec4<i32>(arg_0.x, 48411i, arg_0.x, -13940i)), false));
    return Struct_3(select(!(!(!global2[_wgslsmith_index_u32(u_input.c.x, 2u)])), !global2[_wgslsmith_index_u32(1u, 2u)], !global2[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(~global1.a.x, 16u)]), 2u)]), ~arg_0.zzw, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0) * vec4<f32>(936f, 1292f, var_0, var_0)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, 1000f, var_0, var_0), vec4<f32>(676f, -117f, var_0, -105f)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(1497f)), var_0, _wgslsmith_div_f32(-1678f, -672f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, var_0, -1000f, 393f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, var_0, var_0, -1472f)))))), Struct_1(abs(~_wgslsmith_sub_vec4_u32(global1.a, global1.a)), ((-735i ^ global1.c) << (4294967295u % 32u)) & -2147483647i, firstTrailingBit(select(countOneBits(6197i), 20464i ^ u_input.b, select(var_1.x, var_1.x, true)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_sub_i32(firstTrailingBit(reverseBits(arg_0.e.b)), -13863i) ^ min(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.b, _wgslsmith_mult_vec3_i32(arg_0.b, arg_2.b)), -arg_2.b | arg_0.b));
    global2 = array<vec4<bool>, 2>();
    global2 = array<vec4<bool>, 2>();
    var_0 = -1i;
    global3 = array<vec4<u32>, 17>();
    return ~_wgslsmith_mult_vec3_u32(u_input.e.wzw, ~_wgslsmith_mod_vec3_u32(global1.a.zyy << (arg_0.e.a.wyy % vec3<u32>(32u)), arg_0.e.a.ywz));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = vec2<i32>(u_input.b, global1.c);
    let var_1 = ~u_input.c.x;
    global3 = array<vec4<u32>, 17>();
    let var_2 = u_input.e.yww ^ _wgslsmith_mod_vec3_u32(func_4(func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(-4093i, 1i, u_input.b, u_input.b), vec4<i32>(12684i, global1.b, -42114i, -12446i), vec4<i32>(-1i, -1i, global1.c, -13249i))), Struct_2(Struct_1(vec4<u32>(4294967295u, 1252u, var_1, 37472u), global1.c, -27421i), -839f, ~vec2<i32>(var_0.x, var_0.x)), func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b, -1878i, u_input.b, u_input.b), vec4<i32>(-1i, 10702i, var_0.x, 1i), vec4<i32>(global1.c, -1i, var_0.x, 0i)))), global1.a.yxx);
    global4 = -20049i;
    return Struct_3(func_2(~_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, global1.c, 1i, u_input.b), -vec4<i32>(u_input.b, 11316i, 53153i, global1.c))).a, -_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 0i, global1.b), vec3<i32>(var_0.x, u_input.b, -15817i) | vec3<i32>(-1412i, 0i, 0i), -vec3<i32>(global1.b, var_0.x, u_input.b)), firstLeadingBit(func_2(vec4<i32>(global1.b, -2147483647i, u_input.b, global1.c)).b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1629f, -1000f, -762f, 1239f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -414f, 682f, -574f)), all(arg_0.yx))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1594f, -747f, 781f, -125f) * vec4<f32>(-1003f, -740f, -281f, 1589f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(114f, 1864f, -337f, -213f), vec4<f32>(1239f, -1000f, -461f, -318f), arg_0.x)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-236f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104f * 1279f))), -200f, 159f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-2721f)), -125f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1492f)))), func_2(vec4<i32>(u_input.b, -firstTrailingBit(-43128i), (-11704i << (u_input.a % 32u)) | -u_input.b, max(global1.b << (var_1 % 32u), i32(-1i) * -43170i))).e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global4 = _wgslsmith_add_i32(-4836i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global1.b, global1.b), vec2<i32>(u_input.b, -2147483647i) << (u_input.d % vec2<u32>(32u)), max(vec2<i32>(8381i, var_0), vec2<i32>(2665i, u_input.b))) << (global1.a.xw % vec2<u32>(32u)), countOneBits(~vec2<i32>(39719i, var_0))));
    global3 = array<vec4<u32>, 17>();
    global3 = array<vec4<u32>, 17>();
    global2 = array<vec4<bool>, 2>();
    var var_1 = func_1(vec3<bool>(true, true, true), vec3<bool>(true, false, true));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_i32(u_input.b, global1.c)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(-1236f - 316f)), 304f), _wgslsmith_div_f32(1095f, _wgslsmith_f_op_f32(trunc(var_1.d.x))), 1293f, -1678f), firstLeadingBit(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, u_input.b, var_0), vec3<i32>(6563i, -1i, 9460i)))));
}

