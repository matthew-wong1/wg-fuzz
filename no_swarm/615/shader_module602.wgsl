struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_div_i32(33484i, countOneBits(u_input.e.x));
    let var_1 = Struct_3(-(~_wgslsmith_mult_vec2_i32(arg_2, firstLeadingBit(vec2<i32>(arg_0.a, 0i)))), false);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-300f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1488f, -410f) * _wgslsmith_f_op_f32(-287f + -909f))))) - 1132f);
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_div_f32(-263f, 711f))), _wgslsmith_f_op_f32(exp2(var_2))), var_2, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 284f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1417f, 381f))))), vec2<f32>(_wgslsmith_f_op_f32(floor(-621f)), -433f), true)));
    var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1367f, _wgslsmith_f_op_f32(1000f - var_2)), vec2<f32>(var_2, var_3.a.x))), _wgslsmith_f_op_f32(exp2(var_2)), var_3.c);
    return var_3.c.x;
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> vec3<bool> {
    var var_0 = Struct_1(vec2<f32>(arg_1, _wgslsmith_f_op_f32(func_3(Struct_5(arg_2.a.x), !all(vec4<bool>(false, false, true, true)), arg_2.a & -u_input.e.xw, select(true, arg_3, arg_2.b)))), -504f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(-722f, arg_1))))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.c))) + var_0.c))), arg_1, var_0.a);
    let var_1 = Struct_2(u_input.e << (~_wgslsmith_add_vec4_u32(min(u_input.d, u_input.d), vec4<u32>(u_input.d.x, 23135u, u_input.c.x, u_input.b.x) >> (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)), arg_3, 820f, vec3<i32>(_wgslsmith_sub_i32(u_input.a, i32(-1i) * -2077i) & arg_2.a.x, arg_2.a.x, _wgslsmith_mod_i32(-reverseBits(-2147483647i), arg_0.a)), arg_1);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-213f + _wgslsmith_f_op_f32(select(arg_1, -226f, arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(307f * -935f))))), -123f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, var_0.b)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-639f, var_1.e) - var_0.a), var_0.a, true)))));
    var var_2 = Struct_2(var_1.a, true, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.e, _wgslsmith_f_op_f32(-var_1.c)) * arg_1)), ~(-(vec3<i32>(17116i, arg_2.a.x, u_input.e.x) >> (vec3<u32>(u_input.b.x, 6093u, 38822u) % vec3<u32>(32u)))) | firstTrailingBit(-var_1.d << (select(vec3<u32>(u_input.d.x, 6596u, 22869u), u_input.c.xxy, vec3<bool>(arg_3, false, arg_3)) % vec3<u32>(32u))), var_1.e);
    return select(select(select(vec3<bool>(true, arg_3, true), select(!vec3<bool>(false, arg_3, false), select(vec3<bool>(var_2.b, var_2.b, arg_2.b), vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(false, var_2.b, true)), var_1.b), select(!vec3<bool>(false, var_2.b, arg_2.b), vec3<bool>(false, false, true), !vec3<bool>(false, false, arg_3))), !(!(!vec3<bool>(arg_2.b, false, true))), all(!vec3<bool>(arg_2.b, false, arg_2.b))), vec3<bool>(!(!all(vec3<bool>(arg_3, false, var_2.b))), all(!(!vec3<bool>(arg_2.b, arg_2.b, arg_3))), any(vec3<bool>(true, var_1.b, var_2.b)) && (_wgslsmith_div_f32(var_0.c.x, var_0.c.x) >= -207f)), var_1.b);
}

fn func_1() -> vec2<f32> {
    let var_0 = 0u;
    let var_1 = Struct_5(2147483647i);
    var var_2 = firstTrailingBit(firstLeadingBit(u_input.b.x));
    let var_3 = select(func_2(var_1, -181f, Struct_3(-(~vec2<i32>(-2147483647i, var_1.a)), false), true), select(vec3<bool>(!all(vec4<bool>(true, true, true, false)), true, !all(vec4<bool>(true, false, true, true))), vec3<bool>(false, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), all(vec2<bool>(true, true))), true), !func_2(Struct_5(u_input.e.x), _wgslsmith_div_f32(-157f, _wgslsmith_f_op_f32(max(-318f, -968f))), Struct_3(countOneBits(vec2<i32>(var_1.a, var_1.a)), false), all(vec2<bool>(true, false))));
    var_2 = 1u;
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(407f, -173f) + vec2<f32>(-620f, -1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(-644f, 1144f), vec2<f32>(651f, 246f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(262f, 1339f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(657f, 1000f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-883f, 312f) + vec2<f32>(-1000f, -115f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-686f, 1621f) + vec2<f32>(-264f, 220f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(31191i);
    let var_1 = ~(1u << (_wgslsmith_sub_u32(~(~0u), 0u) % 32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-104f, -481f)))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_2)), _wgslsmith_f_op_f32(trunc(var_2))));
    var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-656f - var_2)));
    let var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())) - vec2<f32>(var_2, var_2)) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2)), var_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2, -872f), vec2<f32>(2701f, -420f))))), Struct_3(min(-(~vec2<i32>(u_input.a, -35749i)), u_input.e.yz), !(!any(vec4<bool>(false, true, false, false)))), Struct_2(u_input.e, true, var_2, -u_input.e.wzx, var_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1669f, -568f)));
    let var_5 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-130f + _wgslsmith_f_op_f32(floor(var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1261f, -231f) * _wgslsmith_f_op_f32(669f * var_2)) * -1000f)), -1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 2378f) * vec2<f32>(-211f, var_4.c.c)), var_4.a, !vec2<bool>(false, var_4.b.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.a, ~abs(select(var_4.c.d.yy, _wgslsmith_add_vec2_i32(u_input.e.yw, u_input.e.xy), u_input.a <= 42123i)), _wgslsmith_dot_vec3_u32(countOneBits(u_input.c.wyw), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 49186u), vec3<u32>(u_input.b.x, u_input.b.x, 79u)), u_input.d.x >> (31915u % 32u), _wgslsmith_mod_u32(u_input.d.x, var_1)), ~32733u, u_input.d.x)));
}

