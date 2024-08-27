struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<u32, 12> = array<u32, 12>(5088u, 4294967295u, 117901u, 0u, 57916u, 1u, 60681u, 1u, 8673u, 1u, 0u, 15756u);

var<private> global2: i32 = 0i;

var<private> global3: f32 = 350f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>) -> vec3<i32> {
    let var_0 = arg_0.a | _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 12u)], 12u)]), 12u)], _wgslsmith_mult_u32(9642u, _wgslsmith_clamp_u32(arg_0.a, _wgslsmith_div_u32(u_input.c, 97983u), u_input.b.x)));
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.x * -720f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - 1060f))), arg_0.c);
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    let var_1 = vec3<u32>(arg_0.a, _wgslsmith_add_u32(~var_0, 4629u), _wgslsmith_dot_vec3_u32(~(~max(u_input.b, vec3<u32>(18259u, u_input.c, global1[_wgslsmith_index_u32(5315u, 12u)]))), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.b, vec3<u32>(arg_0.a, 60506u, u_input.c) | vec3<u32>(1u, 0u, 1u)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, u_input.b), vec3<u32>(79583u, 1796u, u_input.b.x)))));
    return -(~(~vec3<i32>(global0.x, 12232i, u_input.a)) | _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(18013i, 1i, u_input.a), vec3<i32>(global0.x, u_input.a, -7764i)), vec3<i32>(global0.x, -13051i, 1i)), firstLeadingBit(-vec3<i32>(u_input.a, u_input.a, 0i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = arg_0;
    let var_1 = Struct_1(vec2<bool>((u_input.b.x < _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2.a, u_input.b.x, 7762u), vec4<u32>(arg_2.a, u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b.x))) & select(var_0.a.x, 0u >= u_input.c, true), arg_2.d.a.x));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(~(~u_input.b.yy), select(u_input.b.yx, u_input.b.zy, true)), u_input.b.zx, vec2<u32>(firstLeadingBit(u_input.b.x), select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 12u)]), u_input.b.yz) | global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(arg_2.a, 12u)], 36594u), 12u)], 12u)], 35445u, all(select(vec3<bool>(arg_0.a.x, arg_0.a.x, false), arg_2.b.ywz, vec3<bool>(true, false, true))))));
    var var_4 = ~arg_1 >> (~vec3<u32>(~(arg_2.a ^ 1u), ~u_input.c, 4388u) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(-arg_2.e.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_4(arg_2.d, func_3(Struct_2(_wgslsmith_div_u32(arg_1.a, u_input.b.x), !vec4<bool>(arg_0.a.x, false, arg_1.b.x, arg_1.d.a.x), 321f, arg_0, _wgslsmith_f_op_vec4_f32(arg_2.e * arg_1.e)), reverseBits(_wgslsmith_mult_i32(u_input.a, 38505i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(390f, -837f, arg_1.c, -986f)))), Struct_2(arg_3.x, !(!arg_1.b), arg_1.c, Struct_1(!arg_1.d.a), arg_1.e))), 330f, _wgslsmith_f_op_f32(f32(-1f) * -341f));
    global3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(713f + 1596f)));
    let var_1 = ~u_input.a;
    let var_2 = ~vec2<i32>(var_1, ~abs(var_1));
    let var_3 = Struct_1(select(vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, arg_1.a, u_input.b.x), vec3<u32>(89397u, 0u, global1[_wgslsmith_index_u32(u_input.b.x, 12u)])) < ~global1[_wgslsmith_index_u32(0u, 12u)], arg_0.a.x), select(vec2<bool>(false, arg_0.a.x), vec2<bool>(true, true), (false == arg_1.d.a.x) && true), select(arg_1.d.a, arg_2.d.a, !arg_1.b.zx)));
    return arg_2.a;
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = select(vec4<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(45626u, 60756u), 12u)]) & ~func_2(Struct_1(vec2<bool>(false, arg_0.a.x)), Struct_2(40691u, vec4<bool>(true, false, false, arg_0.a.x), 601f, Struct_1(vec2<bool>(arg_0.a.x, true)), vec4<f32>(1000f, 1014f, -193f, 366f)), Struct_2(1u, vec4<bool>(arg_0.a.x, true, true, false), 764f, arg_0, vec4<f32>(960f, -548f, -360f, -320f)), vec4<u32>(82198u, 1u, 23968u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], 12u)])), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(48436u, 12u)], 40980u, 38892u), u_input.b.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)]), u_input.b.x, 8454u << (u_input.c % 32u))), ~(~(u_input.c ^ u_input.c)), u_input.b.x), ~((~vec4<u32>(24008u, global1[_wgslsmith_index_u32(1u, 12u)], u_input.c, global1[_wgslsmith_index_u32(66401u, 12u)]) ^ vec4<u32>(1u, 30716u, 1u, 25548u)) >> (vec4<u32>(1u, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 19308u), 12u)], ~global1[_wgslsmith_index_u32(0u, 12u)], u_input.b.x) % vec4<u32>(32u))), !(!select(!vec4<bool>(true, true, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false), true)));
    var var_1 = firstTrailingBit(vec3<u32>(4294967295u ^ var_0.x, 0u, firstTrailingBit(var_0.x)));
    var var_2 = min(var_0.x, 1u ^ _wgslsmith_sub_u32(var_1.x, 1u));
    var_1 = u_input.b;
    var_1 = _wgslsmith_div_vec3_u32(~vec3<u32>(~var_0.x, 4294967295u, ~4294967295u), (firstTrailingBit(vec3<u32>(4294967295u, var_1.x, 14803u)) & _wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23873u, 12u)], 12u)], 71252u, u_input.c), u_input.b)) >> (var_0.zyz % vec3<u32>(32u)));
    return abs(~((104436u & var_1.x) ^ ((40967u >> (var_0.x % 32u)) << (18660u % 32u))));
}

fn func_5(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    global2 = u_input.a;
    var var_0 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1003f, -1620f))) + 203f)));
    var var_1 = select(vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global0.x), ~vec2<i32>(2147483647i, u_input.a))), 2147483647i, abs(global0.x), u_input.a), vec4<i32>(-59561i, global0.x, 2147483647i, global0.x), true);
    let var_2 = vec2<bool>(arg_0.x, arg_0.x);
    global3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1726f)))))), 632f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(969f + -359f) + _wgslsmith_f_op_f32(f32(-1f) * -1995f)))));
    return Struct_1(var_2);
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> StorageBuffer {
    let var_0 = arg_1.d;
    var var_1 = func_5(arg_1.b.zx, _wgslsmith_mult_u32(104606u, ~_wgslsmith_clamp_u32(~u_input.c, 0u, global1[_wgslsmith_index_u32(u_input.b.x, 12u)] >> (4294967295u % 32u))));
    global0 = min(countOneBits(select(vec2<i32>(-2147483647i, ~1i), func_3(arg_1, 3246i, arg_1.e).yx, vec2<bool>(arg_2, false))), vec2<i32>(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(10024i, 1i, reverseBits(global0.x), abs(23321i)), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, 35116i), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 0i, -1i, 1i), vec4<i32>(-2147483647i, global0.x, u_input.a, global0.x))))));
    let var_2 = arg_1;
    global0 = -vec2<i32>(_wgslsmith_mult_i32(-2147483647i, 1i), -1i);
    return StorageBuffer(-(~u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * -273f), 1560f, -472f) * var_2.e) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1931f, -2773f, var_2.c, arg_1.e.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.x, arg_0.x, arg_0.x, arg_1.e.x)))))), abs(~global1[_wgslsmith_index_u32(1u, 12u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(882f, 144f) - vec2<f32>(259f, 1284f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1215f, 130f) + vec2<f32>(710f, 304f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-877f, 1000f)))))), _wgslsmith_div_vec2_f32(vec2<f32>(-783f, _wgslsmith_f_op_f32(-1644f - -525f)), vec2<f32>(1000f, -1000f))), Struct_2(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_clamp_u32(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 43798u)), ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(5892u, 12u)]), 12u)]), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), select(false, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), func_5(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), ~59071u << (func_1(Struct_1(vec2<bool>(false, false))) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(784f, -2256f, -531f, -1949f)))), all(vec3<bool>(all(vec2<bool>(false, false)), true, true)));
}

