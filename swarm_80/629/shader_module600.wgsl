struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-28477i, i32(-2147483648));

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec4<u32>(22015u, 1u, 4294967295u, 1u)), true), Struct_2(Struct_1(vec4<u32>(30532u, 4294967295u, 0u, 0u)), true), Struct_2(Struct_1(vec4<u32>(4294967295u, 26709u, 1u, 41646u)), false), Struct_2(Struct_1(vec4<u32>(26285u, 34381u, 0u, 4294967295u)), false), Struct_2(Struct_1(vec4<u32>(44384u, 30164u, 8325u, 10848u)), true), Struct_2(Struct_1(vec4<u32>(4294967295u, 21531u, 0u, 0u)), true), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 0u)), false), Struct_2(Struct_1(vec4<u32>(4294967295u, 29550u, 4294967295u, 4294967295u)), true), Struct_2(Struct_1(vec4<u32>(10146u, 82744u, 15556u, 76815u)), false), Struct_2(Struct_1(vec4<u32>(1u, 0u, 91878u, 0u)), false));

var<private> global3: Struct_4 = Struct_4(false, 1u);

var<private> global4: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(vec2<f32>(-123f, 1324f), vec2<u32>(4294967295u, 4294967295u), Struct_2(Struct_1(vec4<u32>(47162u, 4294967295u, 120144u, 1u)), false)), Struct_5(vec2<f32>(1382f, 815f), vec2<u32>(0u, 20158u), Struct_2(Struct_1(vec4<u32>(78399u, 0u, 20165u, 0u)), false)), Struct_5(vec2<f32>(-479f, 1000f), vec2<u32>(1u, 0u), Struct_2(Struct_1(vec4<u32>(0u, 5853u, 0u, 45892u)), false)), Struct_5(vec2<f32>(-398f, 2362f), vec2<u32>(0u, 1u), Struct_2(Struct_1(vec4<u32>(50352u, 57734u, 1u, 59464u)), false)), Struct_5(vec2<f32>(-3058f, 1342f), vec2<u32>(4294967295u, 65141u), Struct_2(Struct_1(vec4<u32>(0u, 1u, 1u, 1u)), true)), Struct_5(vec2<f32>(-578f, -1446f), vec2<u32>(10672u, 8251u), Struct_2(Struct_1(vec4<u32>(2382u, 0u, 4294967295u, 5195u)), true)), Struct_5(vec2<f32>(829f, 218f), vec2<u32>(7562u, 50548u), Struct_2(Struct_1(vec4<u32>(44493u, 4294967295u, 2564u, 42996u)), false)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> f32 {
    var var_0 = Struct_4(global3.a, _wgslsmith_mult_u32(1u, ~global1.a.x));
    let var_1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-146f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -810f), -1000f, var_0.a)) * 351f)), min(select(u_input.b, ~max(global1.a.wy, u_input.b), !(!vec2<bool>(false, var_0.a))), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c, global1.a.x), min(vec2<u32>(0u, var_0.b), _wgslsmith_div_vec2_u32(u_input.a.zy, u_input.a.yy)))), Struct_2(Struct_1(vec4<u32>(~4294967295u, global1.a.x, var_0.b, countOneBits(0u))), all(!(!vec3<bool>(false, true, var_0.a)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x))));
    global0 = vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(1897i, global0.x) & vec2<i32>(global0.x, global0.x)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -9660i), vec2<i32>(0i, global0.x))) | (global0.x >> (u_input.c % 32u)), -global0.x << (var_1.c.a.a.x % 32u));
    global3 = Struct_4(global3.a, abs(_wgslsmith_div_u32(~(~10460u), var_0.b)));
    return -352f;
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    global1 = Struct_1(_wgslsmith_clamp_vec4_u32(global1.a, global1.a, vec4<u32>(4294967295u, ~1u, 74664u, ~(~1u))));
    global1 = Struct_1(abs(vec4<u32>(abs(~1u), u_input.a.x, select(35111u, global1.a.x, false) << (abs(global3.b) % 32u), 14342u)));
    global4 = array<Struct_5, 7>();
    global1 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), u_input.c, 79760u, u_input.e), _wgslsmith_mod_vec4_u32(vec4<u32>(global3.b, 1u, 104608u, 52083u), _wgslsmith_mod_vec4_u32(global1.a, vec4<u32>(1u, 108433u, global1.a.x, global1.a.x)))) ^ global1.a);
    let var_0 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(func_2())), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_sub_vec2_u32(vec2<u32>(global1.a.x, 1u), vec2<u32>(global1.a.x, 29493u))), 159564u >> (_wgslsmith_sub_u32(global3.b, _wgslsmith_add_u32(u_input.a.x, 1u)) % 32u)), global2[_wgslsmith_index_u32(~(~countOneBits(global3.b) ^ 12032u), 10u)]);
    return _wgslsmith_f_op_f32(-var_0.a.x);
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    global1 = Struct_1(global1.a);
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f) + _wgslsmith_f_op_f32(select(-190f, -502f, false)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(1000f, -683f), global0.x, vec4<bool>(true, true, false, arg_0.x))), _wgslsmith_f_op_f32(522f - -890f)), 404f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1214f, 398f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-832f, 1854f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1278f, -1215f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2075f, -939f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1213f, -497f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1009f, -1155f))))));
    let var_1 = Struct_2(Struct_1(global1.a), global3.a);
    global4 = array<Struct_5, 7>();
    let var_2 = all(vec4<bool>(all(vec4<bool>(!var_1.b, global3.a, var_1.b, true)), true, any(!(!vec3<bool>(global3.a, var_1.b, var_1.b))), any(!(!vec3<bool>(true, false, arg_0.x)))));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(max(19923u, 39083u), u_input.e), ~global1.a.x | _wgslsmith_mod_u32(global1.a.x, var_1.a.a.x), 1u), min(~vec4<u32>(u_input.a.x, 75572u, 0u, global1.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.a.x, 0u, var_1.a.a.x, global1.a.x), var_1.a.a, vec4<u32>(1u, 0u, u_input.b.x, global3.b)) | vec4<u32>(global1.a.x, 0u, var_1.a.a.x, var_1.a.a.x))), vec4<u32>(u_input.c, global1.a.x, _wgslsmith_mod_u32(global3.b, _wgslsmith_dot_vec2_u32(u_input.a.yy, var_1.a.a.wz)), ~17019u << (global1.a.x % 32u)) >> (vec4<u32>(firstLeadingBit(~1u), 4294967295u, _wgslsmith_mod_u32(35619u, 22955u), 4294967295u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-(firstLeadingBit(~2147483647i) | global0.x), -(global0.x ^ global0.x), global3.a);
    var var_1 = vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(59540u, u_input.d, 26851u, 19457u), global1.a)), func_1(vec2<bool>(true, all(vec4<bool>(global3.a, false, global3.a, false))))) >> (vec2<u32>(u_input.d, func_1(vec2<bool>(!global3.a, true))) % vec2<u32>(32u));
    let var_2 = Struct_1(vec4<u32>(u_input.e, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u), vec4<u32>(u_input.d, global1.a.x, global3.b, global1.a.x)) >> (_wgslsmith_sub_u32(~var_1.x, ~global3.b) % 32u), u_input.c, ~(global3.b >> (20697u % 32u))));
    let var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(-2147483647i), 2147483647i, -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.x, -1i, global0.x), vec4<i32>(global0.x, global0.x, 2147483647i, 1i)), global0.x)), ~vec3<i32>(1i, abs(global0.x) ^ (64375i << (1u % 32u)), 14211i), ~(~vec3<i32>(max(global0.x, global0.x), ~global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -32718i), vec2<i32>(1i, 31454i)))));
    let var_4 = reverseBits(vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(~global1.a.x, 11335u)), reverseBits(43976u), 15485u, ~1u & firstLeadingBit(var_1.x)));
    global0 = vec2<i32>(var_3.x, var_3.x);
    var var_5 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(global0.x), var_3.x, _wgslsmith_mod_i32(19331i, var_3.x)), vec3<i32>(-38102i, -2147483647i, 2147483647i)), var_3, firstLeadingBit(-var_3 | (var_3 >> (vec3<u32>(4294967295u, 2924u, var_4.x) % vec3<u32>(32u))))), -2147483647i, var_2.a.zw, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_f_op_f32(781f - 1711f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1504f - 622f) - _wgslsmith_f_op_f32(f32(-1f) * -217f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1541f, -773f), vec2<f32>(1000f, -286f), false)) + vec2<f32>(1549f, 480f)) - vec2<f32>(-450f, _wgslsmith_f_op_f32(f32(-1f) * -765f)))), -1077f);
}

