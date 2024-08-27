struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global2: array<Struct_2, 2>;

var<private> global3: vec4<i32> = vec4<i32>(i32(-2147483648), 5672i, 2147483647i, 19906i);

var<private> global4: array<i32, 6> = array<i32, 6>(-17571i, i32(-2147483648), -14547i, 57114i, 9231i, 1i);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_sub_i32(countOneBits(37002i), ~firstLeadingBit(max(global3.x, abs(-2147483647i))));
    global1 = array<vec3<bool>, 14>();
    let var_1 = _wgslsmith_add_u32(4294967295u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, _wgslsmith_mod_u32(4294967295u, 3683u), 1u, 74619u))));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(-1383f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(643f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -991f), _wgslsmith_f_op_f32(max(1059f, 316f)), true)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-962f + -1310f))))), 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1191f + 1671f)))))));
    let var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(var_1), 2u)];
    return (-select(var_3.c.b, vec2<i32>(-1i, u_input.a.x), true) & -(-u_input.a ^ u_input.a)) | vec2<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(var_3.c.b.x, -1i), var_3.c.b.x)), var_3.b.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-159f, 248f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-693f, -1000f) - vec2<f32>(1000f, -337f)))));
    let var_1 = global3.x;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -346f), Struct_1(arg_0.a, min(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global3.x, global4[_wgslsmith_index_u32(1u, 6u)]), vec2<i32>(1i, u_input.a.x)), u_input.a, -u_input.a), u_input.a & vec2<i32>(2147483647i, 9331i))), arg_2.b, arg_2.d);
    var var_3 = _wgslsmith_clamp_u32(~arg_1 >> (min(~arg_1, 4294967295u) % 32u), arg_1, 1u);
    var var_4 = ~vec2<u32>(_wgslsmith_mult_u32(abs(abs(arg_1)), ~arg_1), max(38603u, _wgslsmith_mod_u32(arg_1, arg_1) ^ countOneBits(1u)));
    return 998f;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a), vec2<i32>(-1i) * -abs(arg_0.b.b));
    var var_1 = vec2<f32>(-1072f, _wgslsmith_f_op_f32(func_4(Struct_1(arg_0.a, vec2<i32>(-28659i, ~(-14466i))), 1u, Struct_2(_wgslsmith_f_op_f32(-var_0.a), arg_0.c, Struct_1(_wgslsmith_f_op_f32(sign(2016f)), func_3()), arg_0.d), any(select(vec4<bool>(false, arg_0.d.x, arg_0.d.x, arg_0.d.x), arg_0.d, var_0.a < 1420f)))));
    var var_2 = var_0;
    var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2397f, _wgslsmith_div_f32(-585f, var_1.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.a, arg_0.b.a) - vec2<f32>(var_2.a, var_0.a)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2570f, arg_0.a)))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(591f + arg_0.c.a) * var_2.a)), arg_0.d.x))));
    global1 = array<vec3<bool>, 14>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1417f, -293f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(291f, var_1.x)))))) - vec2<f32>(_wgslsmith_f_op_f32(floor(-199f)), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.c.a), var_2.a)))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-719f, 992f))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(830f)), _wgslsmith_f_op_f32(ceil(arg_1.c.a)))), 589f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_1.a) * _wgslsmith_f_op_f32(-arg_1.a)), -661f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.a, _wgslsmith_f_op_f32(253f * arg_0)) - _wgslsmith_f_op_vec2_f32(func_2(global2[_wgslsmith_index_u32(4294967295u, 2u)], u_input.a >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))))));
    var var_1 = any(vec2<bool>(any(vec4<bool>(select(arg_3, false, false), arg_0 > var_0.x, true, true)), false));
    var var_2 = global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 29261u), vec2<u32>(24300u, 4294967295u), arg_3), select(vec2<u32>(1u, 0u), vec2<u32>(18119u, 0u), arg_1.d.xz) & vec2<u32>(91543u, 3084u))), 2u)];
    global1 = array<vec3<bool>, 14>();
    global0 = !(!(~(-46286i) == max(arg_1.c.b.x, func_3().x)));
    return _wgslsmith_clamp_u32(~(~(~(~0u))), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(abs(0u), _wgslsmith_div_u32(4294967295u, 23393u)), _wgslsmith_mult_u32(select(17390u, 83045u, false), 1u)), abs(max(vec2<u32>(23321u, 3794u), select(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u), arg_3)))));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_1 {
    global3 = countOneBits(_wgslsmith_mult_vec4_i32(~(~select(vec4<i32>(-11950i, 18938i, -45518i, 1i), vec4<i32>(arg_1.b.b.x, arg_1.b.b.x, arg_1.c.b.x, 2147483647i), true)), vec4<i32>(-1i) * -vec4<i32>(-25142i, global3.x, 2147483647i, 0i)));
    global4 = array<i32, 6>();
    let var_0 = vec3<u32>(~arg_0, _wgslsmith_sub_u32(~4294967295u ^ _wgslsmith_mod_u32(arg_0, 33217u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 46967u), vec2<u32>(arg_0, arg_0)), ~arg_0, arg_0)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0) << (vec3<u32>(arg_0, 41413u, 33537u) % vec3<u32>(32u)), vec3<u32>(arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(29625u, arg_0), vec2<u32>(arg_0, 1u)), _wgslsmith_mod_u32(1u, arg_0)))) & _wgslsmith_mult_vec3_u32(abs(~(~vec3<u32>(0u, 1u, 39848u))), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_0, arg_0) >> (vec3<u32>(4294967295u, 4294967295u, 3743u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 0u)), 4294967295u, _wgslsmith_div_u32(arg_0, arg_0))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.a)), vec2<i32>(global3.x, max(arg_1.b.b.x, global4[_wgslsmith_index_u32(~arg_0, 6u)] >> (4294967295u % 32u))));
    let var_2 = arg_1.c;
    return Struct_1(-264f, vec2<i32>(abs(_wgslsmith_mod_i32(var_1.b.x, arg_1.b.b.x)), abs(abs(~arg_1.b.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-1199f, func_5(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(14464u, 73005u, 4294967295u)), global2[_wgslsmith_index_u32(8448u, 2u)], select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), global1[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(round(-1012f)), global2[_wgslsmith_index_u32(1u, 2u)], Struct_1(-185f, vec2<i32>(0i, u_input.a.x)), true), 14u)], any(vec3<bool>(true, true, true)))), func_5(_wgslsmith_sub_u32(firstTrailingBit(abs(0u)), ~abs(1u)), Struct_2(1f, func_5(1u, global2[_wgslsmith_index_u32(~1u, 2u)], select(global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], vec3<bool>(false, false, false))), func_5(~10944u, global2[_wgslsmith_index_u32(abs(1u), 2u)], select(vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)])), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false))), !select(select(vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]), vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(1u, 14u)])), vec4<bool>(false, true != (~1u <= firstTrailingBit(36937u)), true, true));
    global4 = array<i32, 6>();
    global0 = (global3.x | global4[_wgslsmith_index_u32(~84925u >> (max(select(8285u, 4294967295u, false), firstTrailingBit(4294967295u)) % 32u), 6u)]) == -_wgslsmith_clamp_i32(u_input.a.x, global4[_wgslsmith_index_u32(1u, 6u)], -54702i);
    let var_1 = var_0;
    global4 = array<i32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~46720u ^ func_1(-302f, Struct_2(528f, var_0.b, var_0.b, vec4<bool>(var_1.d.x, true, true, true)), Struct_1(200f, global3.yx), var_0.d.x), select(1u, _wgslsmith_mult_u32(1u, 20623u), true)), 6u)], 2147483647i, vec2<f32>(var_0.b.a, _wgslsmith_f_op_f32(-var_1.b.a)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~22044u, firstLeadingBit(1u), ~9194u, reverseBits(1u)), min(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(16506u, 1u, 4294967295u, 0u)))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(44390u, 32849u, 17039u, 67930u), vec4<u32>(1u, 53684u, 1u, 12643u), var_0.d.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(37104u, 60932u, 0u, 8539u), vec4<u32>(25932u, 34284u, 4294967295u, 14728u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1615f, var_0.b.a))))))));
}

