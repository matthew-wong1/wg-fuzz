struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 88150i;

var<private> global1: bool = false;

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<u32>(53200u, 63184u, 4294967295u, 50185u), vec4<bool>(false, true, false, true), vec3<bool>(true, true, false)), Struct_1(vec4<u32>(23628u, 49282u, 0u, 20164u), vec4<bool>(false, true, false, true), vec3<bool>(false, false, false)), Struct_1(vec4<u32>(6285u, 58022u, 1u, 16875u), vec4<bool>(true, true, true, false), vec3<bool>(false, true, false)), Struct_1(vec4<u32>(43577u, 0u, 0u, 1u), vec4<bool>(false, true, true, false), vec3<bool>(false, false, false)), Struct_1(vec4<u32>(0u, 2790u, 31164u, 0u), vec4<bool>(true, true, true, true), vec3<bool>(false, true, false)), Struct_1(vec4<u32>(10115u, 101008u, 49443u, 4294967295u), vec4<bool>(false, false, true, false), vec3<bool>(true, false, false)), Struct_1(vec4<u32>(46594u, 13807u, 64276u, 24343u), vec4<bool>(true, true, false, false), vec3<bool>(false, false, true)), Struct_1(vec4<u32>(59732u, 0u, 7249u, 6180u), vec4<bool>(false, false, false, false), vec3<bool>(true, true, false)), Struct_1(vec4<u32>(60239u, 4294967295u, 0u, 0u), vec4<bool>(false, true, true, true), vec3<bool>(true, true, true)), Struct_1(vec4<u32>(1u, 71307u, 138934u, 48781u), vec4<bool>(true, false, false, true), vec3<bool>(false, false, false)), Struct_1(vec4<u32>(16011u, 38425u, 0u, 4294967295u), vec4<bool>(true, false, true, false), vec3<bool>(true, false, false)), Struct_1(vec4<u32>(1u, 0u, 0u, 0u), vec4<bool>(false, false, false, true), vec3<bool>(false, false, true)), Struct_1(vec4<u32>(4294967295u, 40467u, 24991u, 1u), vec4<bool>(false, true, true, false), vec3<bool>(false, true, false)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<bool>(true, true, true, false), vec3<bool>(false, true, true)), Struct_1(vec4<u32>(38644u, 1u, 4294967295u, 21389u), vec4<bool>(false, false, false, false), vec3<bool>(true, true, false)), Struct_1(vec4<u32>(57004u, 4294967295u, 2423u, 0u), vec4<bool>(false, false, true, true), vec3<bool>(true, true, true)), Struct_1(vec4<u32>(61343u, 38730u, 0u, 29445u), vec4<bool>(false, false, true, true), vec3<bool>(false, false, true)), Struct_1(vec4<u32>(3934u, 1u, 0u, 0u), vec4<bool>(true, true, false, false), vec3<bool>(true, true, false)));

var<private> global4: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(1000f, 1493f), vec2<f32>(-141f, 1700f), vec2<f32>(-2179f, -184f), vec2<f32>(-1666f, -1000f), vec2<f32>(-1000f, -3027f), vec2<f32>(356f, -265f), vec2<f32>(-266f, 742f), vec2<f32>(646f, -625f), vec2<f32>(1482f, -1108f), vec2<f32>(1000f, -163f), vec2<f32>(403f, 224f), vec2<f32>(986f, -532f), vec2<f32>(1845f, -554f), vec2<f32>(783f, 1483f), vec2<f32>(427f, 557f), vec2<f32>(1534f, -656f), vec2<f32>(-1000f, -351f), vec2<f32>(-333f, 734f), vec2<f32>(313f, 708f), vec2<f32>(-997f, -420f), vec2<f32>(-1708f, 276f), vec2<f32>(1448f, 1293f), vec2<f32>(-535f, 702f), vec2<f32>(-1431f, 123f), vec2<f32>(-1085f, -446f));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5) -> vec2<u32> {
    var var_0 = countOneBits(vec2<i32>(1i, -u_input.c.x) & _wgslsmith_clamp_vec2_i32(u_input.c.wz, u_input.c.zw, _wgslsmith_div_vec2_i32(u_input.c.yz, u_input.c.zw))) >> (vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32((vec2<u32>(4294967295u, 20200u) & u_input.a.zz) >> (~u_input.b % vec2<u32>(32u)), arg_1.a)) % vec2<u32>(32u));
    let var_1 = arg_1;
    return select(~_wgslsmith_clamp_vec2_u32((u_input.b ^ vec2<u32>(arg_0.c.a.a.x, arg_1.c.x)) | _wgslsmith_add_vec2_u32(vec2<u32>(0u, 26487u), vec2<u32>(arg_0.c.a.a.x, arg_1.a.x)), u_input.a.xy | var_1.c, vec2<u32>(~4294967295u, max(4294967295u, arg_1.a.x))), ~((~vec2<u32>(0u, arg_1.b.a.a.x) << (vec2<u32>(1u, arg_1.b.a.a.x) % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(arg_0.e.yw, vec2<u32>(1u, 19500u)) % vec2<u32>(32u))), !vec2<bool>(var_1.b.a.c.x && false, global2.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> vec2<bool> {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(-min(vec4<i32>(arg_1.x, u_input.c.x, u_input.c.x, -23876i), vec4<i32>(-21419i, arg_1.x, -2147483647i, u_input.c.x)), -u_input.c), u_input.c.x);
    let var_1 = Struct_4(Struct_1(~arg_0.a.a, !arg_0.a.b, arg_0.a.c), _wgslsmith_div_f32(-378f, -898f), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c & reverseBits(u_input.c), ~(~vec4<i32>(u_input.c.x, 6121i, 2147483647i, 2147483647i))), u_input.c));
    var var_2 = var_1;
    global1 = all(vec4<bool>(_wgslsmith_f_op_f32(var_1.b + var_1.b) <= _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(exp2(var_1.b))), !var_2.a.c.x, arg_0.a.c.x, false));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(914f, var_2.b, var_1.b) + vec3<f32>(-387f, -1907f, var_2.b))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1906f, var_2.b, var_2.b), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2299f, var_1.b, 418f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, 1450f, var_2.b))))), select((_wgslsmith_dot_vec3_u32(u_input.a, arg_0.a.a.zyw) ^ var_2.a.a.x) <= u_input.b.x, false, any(var_1.a.b)), Struct_2(global3[_wgslsmith_index_u32(firstLeadingBit(var_1.a.a.x), 18u)], ~var_2.a.a.xz), _wgslsmith_f_op_vec2_f32(vec2<f32>(551f, _wgslsmith_div_f32(-176f, 349f)) - _wgslsmith_f_op_vec2_f32(trunc(global4[_wgslsmith_index_u32(var_1.a.a.x, 25u)]))), _wgslsmith_sub_vec4_u32(select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.a.a.x, u_input.a.x, u_input.a.x), var_1.a.a, arg_0.a.a), reverseBits(vec4<u32>(u_input.a.x, arg_0.a.a.x, 38262u, 1u)), var_2.a.b), ~(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.a.a.x, 0u, var_1.a.a.x, 7745u), var_2.a.a) & var_1.a.a)));
    return vec2<bool>(true | all(select(!var_1.a.b.xzy, var_1.a.c, vec3<bool>(global2.x, global2.x, true))), !(true != all(select(var_3.c.a.c.zz, var_3.c.a.b.wy, false))));
}

fn func_2() -> vec3<f32> {
    var var_0 = u_input.c.yww;
    global1 = any(!func_4(Struct_2(Struct_1(vec4<u32>(u_input.b.x, 16755u, 4294967295u, 4294967295u), vec4<bool>(false, global2.x, false, global2.x), vec3<bool>(true, global2.x, global2.x)), func_3(Struct_3(vec3<f32>(-640f, 786f, -642f), global2.x, Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 18u)], vec2<u32>(u_input.b.x, u_input.b.x)), vec2<f32>(-544f, -111f), vec4<u32>(0u, 54897u, u_input.b.x, u_input.a.x)), Struct_5(vec2<u32>(31167u, 0u), Struct_2(Struct_1(vec4<u32>(55028u, 42076u, u_input.a.x, u_input.b.x), vec4<bool>(global2.x, false, global2.x, global2.x), vec3<bool>(true, true, true)), u_input.b), vec2<u32>(25533u, u_input.b.x), false))), select(u_input.c.yw, vec2<i32>(u_input.c.x, var_0.x), false) >> (~vec2<u32>(u_input.b.x, 7086u) % vec2<u32>(32u))));
    global2 = vec2<bool>(true, !func_4(Struct_2(Struct_1(vec4<u32>(27998u, u_input.a.x, 1u, 101188u), vec4<bool>(global2.x, global2.x, false, global2.x), vec3<bool>(true, true, global2.x)), vec2<u32>(11408u, 15832u)), u_input.c.xy << (abs(u_input.b) % vec2<u32>(32u))).x);
    let var_1 = 216f;
    var_0 = vec3<i32>(-1i) * -u_input.c.zwz;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1, -330f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)))), _wgslsmith_div_f32(var_1, var_1)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, 905f) + vec3<f32>(-644f, var_1, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-368f, var_1, var_1)), select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, global2.x, false), vec3<bool>(false, global2.x, global2.x))))), vec3<f32>(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(abs(786f))), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * var_1))));
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    global3 = array<Struct_1, 18>();
    var var_0 = ~vec4<u32>(47539u, countOneBits(max(42294u, firstLeadingBit(4294967295u))), 1u, _wgslsmith_add_u32(47709u, ~arg_0.a.x));
    global4 = array<vec2<f32>, 25>();
    var_0 = abs(~_wgslsmith_mult_vec4_u32(max(vec4<u32>(0u, var_0.x, u_input.b.x, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, var_0.x)) | _wgslsmith_mod_vec4_u32(arg_0.a, vec4<u32>(23345u, 70400u, 0u, 17116u)), ~(arg_0.a & vec4<u32>(0u, 1u, 1u, 30037u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1882f * -1000f))), 837f, _wgslsmith_f_op_f32(abs(-542f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2()))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1568f, 2083f, -1000f) * vec3<f32>(1f, 1f, 1f)) + vec3<f32>(1f, _wgslsmith_f_op_f32(-625f * 1000f), _wgslsmith_f_op_vec3_f32(func_2()).x))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-1128f + 2201f), _wgslsmith_f_op_f32(trunc(408f)), var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-369f, var_1.x, 1099f, 1757f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2162f, -1412f, var_1.x, var_1.x))), vec4<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), var_1.x, 856f, 748f), !select(true, global2.x, arg_0.c.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(427f, -827f, -227f, var_1.x), vec4<f32>(-676f, -1253f, var_1.x, var_1.x), true)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(505f, -666f, 430f, var_1.x), vec4<f32>(var_1.x, var_1.x, -196f, var_1.x))))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, var_1.x, -1428f, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1250f, -2366f) * vec4<f32>(-286f, -2935f, 637f, 621f)))))));
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: vec2<bool>) -> vec3<f32> {
    global1 = false;
    let var_0 = countOneBits(abs(u_input.b.x));
    global0 = arg_0;
    global2 = vec2<bool>(true, true);
    global4 = array<vec2<f32>, 25>();
    return vec3<f32>(1446f, -366f, _wgslsmith_f_op_vec3_f32(func_2()).x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    let var_0 = ~u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_5(2147483647i, u_input.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(global3[_wgslsmith_index_u32(~(~40770u), 18u)])), vec4<f32>(1f, 118f, -1286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-425f * 929f))), select(!vec4<bool>(global2.x, true, true, global2.x), !select(vec4<bool>(false, false, false, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x), global2.x), !vec4<bool>(true, false, false, global2.x)))), !select(func_4(Struct_2(Struct_1(vec4<u32>(22441u, u_input.b.x, 37814u, u_input.a.x), vec4<bool>(false, global2.x, true, global2.x), vec3<bool>(global2.x, global2.x, global2.x)), vec2<u32>(4294967295u, 1u)), select(u_input.c.xz, vec2<i32>(u_input.c.x, u_input.c.x), vec2<bool>(false, global2.x))), !select(vec2<bool>(true, true), vec2<bool>(global2.x, true), true), func_4(Struct_2(Struct_1(vec4<u32>(79217u, var_0, u_input.a.x, 1u), vec4<bool>(false, global2.x, global2.x, true), vec3<bool>(false, global2.x, false)), vec2<u32>(4294967295u, 4267u)), u_input.c.yx).x)));
    global3 = array<Struct_1, 18>();
    global0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.x), u_input.c ^ vec4<i32>(-15566i, 51158i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(52487i, -2096i), u_input.c.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(27433i, 3894i, -2147483647i, u_input.c.x), u_input.c), -vec4<i32>(1i, -4622i, u_input.c.x, u_input.c.x))), vec2<i32>(-u_input.c.x, min(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.c.xwz, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c.x), _wgslsmith_dot_vec2_i32(abs(u_input.c.yx), vec2<i32>(-7710i, 0i)))), reverseBits(_wgslsmith_add_i32(1i, 7077i)));
}

