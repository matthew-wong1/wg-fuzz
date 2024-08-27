struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: bool;

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_2, 15>;

var<private> global4: vec2<u32> = vec2<u32>(1u, 57108u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-519f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), -115f), vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(19547u, 30u)] * _wgslsmith_f_op_f32(max(333f, 611f))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a & global4.x, 30u)] * -498f), -740f)), 8926u, -(_wgslsmith_dot_vec4_i32(vec4<i32>(-41336i, 429i, 0i, u_input.d.x) | vec4<i32>(-16148i, u_input.d.x, -20571i, 47300i), vec4<i32>(0i, 2147483647i, 8158i, u_input.c)) | ~(u_input.d.x | u_input.c)), _wgslsmith_mult_vec2_u32(max(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.a), vec2<u32>(1u, 1u)), vec2<u32>(0u, 1u)), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 44996u), vec2<u32>(u_input.a, global4.x))) | ~_wgslsmith_add_vec2_u32(vec2<u32>(global4.x, u_input.a), vec2<u32>(global4.x, global4.x))), any(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_mod_i32(-(~var_0.c), -60970i);
    global0 = array<f32, 30>();
    let var_2 = Struct_2(var_0);
    let var_3 = true;
    return min(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, var_0.d.x, 0u, var_0.d.x)), ~vec4<u32>(var_0.b, 57296u, global4.x, global4.x)), abs(1u)) & var_0.d.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> bool {
    var var_0 = 1u;
    let var_1 = ~vec2<i32>(u_input.d.x >> (func_3() % 32u), _wgslsmith_div_i32(u_input.d.x >> ((global4.x | 1u) % 32u), max(0i, -2147483647i)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(min(arg_0, vec3<f32>(-751f, global2.x, arg_0.x))))) + vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), global2.x, _wgslsmith_div_f32(936f, global0[_wgslsmith_index_u32(59804u, 30u)]))), global4.x, 44813i, vec2<u32>(_wgslsmith_mod_u32(u_input.b, global4.x), _wgslsmith_mult_u32(global4.x, global4.x)) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, 0u), ~vec2<u32>(global4.x, 8633u), vec2<u32>(55684u, global4.x)), !select(true, true, all(vec4<bool>(true, false, true, true)))));
    var var_3 = select(all(!select(!vec3<bool>(var_2.a.e, false, true), select(vec3<bool>(var_2.a.e, var_2.a.e, true), vec3<bool>(var_2.a.e, false, true), var_2.a.e), all(vec4<bool>(true, var_2.a.e, false, true)))), any(vec3<bool>(all(vec2<bool>(false, var_2.a.e)), false, any(!vec2<bool>(var_2.a.e, true)))), var_1.x <= ~reverseBits(var_2.a.c));
    var var_4 = max(_wgslsmith_sub_i32(~(-u_input.c) ^ ~(~var_2.a.c), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(-50856i, u_input.d.x, -66688i), -vec3<i32>(arg_1, var_2.a.c, var_2.a.c))), -2147483647i);
    return var_2.a.e;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    return any(select(vec4<bool>(true, !(arg_2.a || arg_2.c.e), _wgslsmith_dot_vec4_i32(arg_0, arg_0) < 2147483647i, true), vec4<bool>(true, true, true, true), !vec4<bool>(true, any(vec4<bool>(false, arg_2.c.e, true, arg_1.e)), arg_2.a, true)));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    let var_0 = 2147483647i;
    var var_1 = vec3<bool>(func_4(vec4<i32>((arg_0.a.c ^ -39226i) & 1i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, arg_0.a.c), u_input.d)), _wgslsmith_div_i32(-1i, 1i), u_input.d.x), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(arg_0.a.a)), 36715u, 15871i, arg_0.a.d, func_2(vec3<f32>(1915f, arg_0.a.a.x, 673f), firstLeadingBit(-46722i))), Struct_3(arg_0.a.e, arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(min(arg_0.a.a, arg_0.a.a)), 1u, u_input.c, arg_0.a.d, select(arg_0.a.e, false, false)))), arg_0.a.e, false);
    let var_2 = -arg_0.a.c;
    global0 = array<f32, 30>();
    var var_3 = Struct_3(var_1.x, ~arg_1, arg_0.a);
    return Struct_3(func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-1606i, var_2, 10745i), _wgslsmith_clamp_i32(-1i, var_0, var_0), firstLeadingBit(13046i), select(var_3.c.c, -2147483647i, var_1.x)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-47802i, 1i, var_2, var_0), min(vec4<i32>(var_2, u_input.c, var_3.c.c, arg_0.a.c), vec4<i32>(-2147483647i, -27436i, var_3.c.c, -2147483647i)))), var_3.c, Struct_3(var_3.c.e, 1u, Struct_1(var_3.c.a, ~arg_1, -var_3.c.c, arg_0.a.d, arg_0.a.c <= 17372i))), ~arg_1 & (~select(29816u, global4.x, var_1.x) & arg_0.a.b), arg_0.a);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<f32>) -> u32 {
    let var_0 = (firstTrailingBit(vec3<i32>(-arg_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 3716i, u_input.d.x, arg_0.c.c), vec4<i32>(arg_0.c.c, -54555i, -15621i, -1i)), -arg_1.c)) & ~abs(u_input.d)) & ~_wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(u_input.d, vec3<i32>(u_input.c, arg_0.c.c, arg_1.c), vec3<i32>(0i, arg_1.c, arg_1.c)), u_input.d);
    global4 = vec2<u32>(~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.x, global4.x, 0u) & vec3<u32>(4198u, 1u, u_input.b), min(vec3<u32>(global4.x, arg_1.b, 34104u), vec3<u32>(global4.x, 35541u, arg_1.d.x)))), max(13982u, min(_wgslsmith_clamp_u32(1u, arg_0.b, arg_0.c.b), global4.x) >> (31710u % 32u)));
    return _wgslsmith_div_u32(func_3(), ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.b, global4.x, arg_1.b, 7104u), vec4<u32>(4294967295u, 198u, 0u, arg_1.d.x)) | firstTrailingBit(_wgslsmith_sub_u32(arg_0.c.d.x, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(true, ~37454u, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-1039f, -1298f)), _wgslsmith_f_op_f32(abs(1324f)), global2.x) - vec3<f32>(global2.x, -1327f, _wgslsmith_div_f32(global2.x, -415f))), _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 0u), true), vec2<u32>(1u, 1u))), max(2196i, 0i), vec2<u32>(20032u, global4.x), !(true || (1u != global4.x))));
    global4 = vec2<u32>(var_0.b, func_5(func_1(global3[_wgslsmith_index_u32(~0u, 15u)], 11640u), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.c.a), ~4294967295u, u_input.d.x, select(vec2<u32>(30715u, var_0.b), var_0.c.d, var_0.a), var_0.c.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.c.a))), var_0.c.a.xz));
    global2 = var_0.c.a;
    global0 = array<f32, 30>();
    global2 = vec3<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(7249u, 0u), 30u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 30u)] * global0[_wgslsmith_index_u32(4294967295u, 30u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global2.x))))) - global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(40540u, 1u, global4.x, global4.x) ^ vec4<u32>(global4.x, 4294967295u, global4.x, var_0.b), ~vec4<u32>(var_0.b, 4320u, u_input.a, u_input.a)), ~31798u | _wgslsmith_dot_vec2_u32(var_0.c.d, vec2<u32>(1u, global4.x))), 30u)]));
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(473f, _wgslsmith_f_op_f32(836f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global4.x, 30u)]))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1946f), _wgslsmith_f_op_f32(round(547f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(463f, global2.x, global2.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global4.x, 30u)], global0[_wgslsmith_index_u32(var_0.c.b, 30u)], 428f) - var_0.c.a) + var_0.c.a))));
    var var_1 = (abs(44518u) != (_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, var_0.b, 3452u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, u_input.b, 43574u, 4294967295u), vec4<u32>(global4.x, 1u, var_0.b, 4294967295u))) & ~61560u)) | true;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.c.b, 38742u), 26652u << (u_input.a % 32u)), firstTrailingBit(u_input.b << (20456u % 32u)), _wgslsmith_mult_u32(~var_0.b, u_input.b), global4.x), reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.b, global4.x, 0u, var_0.c.b), vec4<u32>(var_0.c.b, 1u, var_0.c.d.x, 4294967295u)))), max(select(firstLeadingBit(~vec4<u32>(1u, 0u, 28071u, u_input.b)), _wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.a, u_input.b, 4294967295u, var_0.c.b), vec4<u32>(0u, 12991u, 4294967295u, 4294967295u)), vec4<u32>(0u, 3342u, u_input.b, var_0.b)), vec4<bool>(var_0.a, var_0.a, !var_0.c.e, var_0.c.e)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 36947u, u_input.b, 0u), vec4<u32>(1u, u_input.b, global4.x, var_0.b))))), 15u)];
    global3 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_2(var_0.c), _wgslsmith_mult_u32(func_5(var_0, var_0.c, var_0.c.a, var_0.c.a.yy) & ~u_input.a, firstLeadingBit(1u))).c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a.x - 1696f) - 854f) + 945f), _wgslsmith_div_f32(global2.x, 761f), select(~(~(~vec4<u32>(82086u, var_0.c.d.x, global4.x, var_0.c.b))), vec4<u32>(4294967295u, var_0.b, firstTrailingBit(var_0.c.b), 1u), vec4<bool>(false, true & !var_2.a.e, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 30u)]) >= _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 30u)], -1020f), var_2.a.e)));
}

