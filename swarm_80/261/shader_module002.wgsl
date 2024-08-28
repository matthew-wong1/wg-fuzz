struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-540f, -1073f, 199f, -2254f), vec4<f32>(498f, 1060f, 1055f, 259f), vec4<f32>(895f, -275f, 106f, -553f), vec4<f32>(-1000f, 418f, -2053f, -560f), vec4<f32>(479f, -484f, 674f, -148f), vec4<f32>(975f, 2351f, -2230f, 1995f), vec4<f32>(-568f, 182f, 1000f, -1026f), vec4<f32>(-961f, -1958f, 121f, -1353f), vec4<f32>(188f, -1000f, 253f, 387f), vec4<f32>(-1032f, 261f, 1015f, -1000f), vec4<f32>(-281f, -454f, -1000f, 930f), vec4<f32>(1108f, 312f, 861f, 916f), vec4<f32>(371f, -389f, -1440f, 270f), vec4<f32>(581f, -1190f, 468f, 732f), vec4<f32>(810f, -637f, 734f, 332f), vec4<f32>(484f, -1000f, 299f, -1617f), vec4<f32>(2139f, 581f, 352f, 143f), vec4<f32>(-343f, 1296f, 262f, 1085f), vec4<f32>(-154f, -1103f, -114f, 1299f), vec4<f32>(-397f, -1345f, -725f, -515f), vec4<f32>(-765f, 458f, -833f, -364f), vec4<f32>(-134f, 1125f, 353f, -460f), vec4<f32>(-952f, 1927f, 1780f, 253f), vec4<f32>(500f, 368f, 118f, -1830f), vec4<f32>(-329f, 639f, 702f, 1537f), vec4<f32>(341f, 262f, 204f, 1325f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(arg_1.c.d.wy));
    var var_1 = Struct_3(arg_1.b);
    global0 = -(vec4<i32>(u_input.e, _wgslsmith_mod_i32(u_input.b, var_1.a.c), -4916i, countOneBits(var_1.a.e.x)) << (firstLeadingBit(reverseBits(vec4<u32>(u_input.a, 12063u, u_input.c, u_input.a))) % vec4<u32>(32u))) >> (((min(_wgslsmith_mult_vec4_u32(vec4<u32>(47995u, 8432u, var_1.a.a, arg_1.c.a), vec4<u32>(1u, 4294967295u, 0u, 62000u)), select(vec4<u32>(4294967295u, 13751u, 20153u, 4294967295u), vec4<u32>(7701u, 4294967295u, 4294967295u, 47479u), vec4<bool>(true, arg_0.b.x, false, arg_0.b.x))) & vec4<u32>(u_input.a << (1u % 32u), arg_1.a & u_input.d.x, ~u_input.c, ~0u)) | ~(_wgslsmith_sub_vec4_u32(vec4<u32>(29150u, var_1.a.a, 52970u, 4294967295u), vec4<u32>(21367u, 4294967295u, arg_1.a, 1u)) << (~vec4<u32>(arg_1.b.a, arg_1.a, 13186u, arg_1.c.a) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_2 = arg_0;
    let var_3 = arg_0;
    return !(!var_2.b);
}

fn func_2(arg_0: Struct_5) -> Struct_1 {
    var var_0 = all(func_3(arg_0, Struct_2(~u_input.c ^ ~u_input.d.x, Struct_1(1u, arg_0.a, 1i, global1[_wgslsmith_index_u32(~115018u, 26u)], min(global0.zzw, global0.xzy)), Struct_1(_wgslsmith_sub_u32(u_input.a, 1u), -512f, ~(-60727i), vec4<f32>(arg_0.a, -1000f, -886f, 436f), global0.xzx)), abs(global0.x) == 30688i));
    var var_1 = arg_0.b.x;
    var var_2 = Struct_1(u_input.d.x, -653f, _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(min(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, -2147483647i, 20193i), global0.wxx), vec3<i32>(global0.x, -8261i, global0.x)), ~min(vec3<i32>(u_input.b, -76218i, global0.x), global0.yww))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -666f) + arg_0.a), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_0.a), -1006f), -_wgslsmith_mult_vec3_i32(global0.wzw >> (reverseBits(vec3<u32>(42325u, u_input.c, u_input.c)) % vec3<u32>(32u)), select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, u_input.b, u_input.b), vec3<i32>(u_input.b, -47224i, global0.x)), global0.wyw, false | arg_0.b.x)));
    var_2 = Struct_1(30265u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.d.x, _wgslsmith_f_op_f32(-var_2.d.x)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(235f))))), ~var_2.c, var_2.d, -(~var_2.e));
    let var_3 = arg_0;
    return Struct_1(1u, var_3.a, global0.x, _wgslsmith_f_op_vec4_f32(-var_2.d), vec3<i32>(-min(1i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(global0.x), i32(-1i) * -2147483647i), -(~vec2<i32>(68242i, 1i))), global0.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    var var_0 = arg_1.a.e.x;
    var_0 = _wgslsmith_dot_vec3_i32(reverseBits(~(-global0.zxx)) ^ abs(firstLeadingBit(vec3<i32>(arg_1.a.c, u_input.e, 0i) & vec3<i32>(u_input.b, -28607i, -21711i))), -max(~(vec3<i32>(u_input.b, u_input.b, 11787i) & vec3<i32>(-1650i, 12064i, u_input.b)), -vec3<i32>(0i, -50372i, u_input.e)));
    var var_1 = arg_1.a;
    var var_2 = -2147483647i;
    var_1 = arg_1.a;
    return Struct_1(arg_1.a.a, _wgslsmith_f_op_f32(-783f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), var_1.e.x, var_1.d, vec3<i32>(~arg_1.a.e.x & reverseBits(func_2(Struct_5(arg_0.x, vec3<bool>(arg_2, arg_2, arg_2))).e.x), 0i, ~_wgslsmith_mult_i32(-global0.x, _wgslsmith_dot_vec3_i32(arg_1.a.e, vec3<i32>(arg_1.a.e.x, -2147483647i, var_1.c)))));
}

fn func_1(arg_0: bool) -> vec4<f32> {
    var var_0 = true;
    let var_1 = Struct_2(u_input.c, func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(940f, 489f)) - _wgslsmith_f_op_f32(675f * 1999f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1234f * 1158f))), -1733f), Struct_3(func_2(Struct_5(-460f, vec3<bool>(arg_0, true, true)))), !arg_0), func_2(Struct_5(1999f, vec3<bool>(arg_0, true, true))));
    let var_2 = Struct_2(min(firstTrailingBit(1u), _wgslsmith_mult_u32(var_1.c.a, ~1u) >> (20223u % 32u)), func_2(Struct_5(_wgslsmith_f_op_f32(var_1.b.d.x - 694f), !(!vec3<bool>(true, arg_0, true)))), func_2(Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-898f, 1752f), 992f)), vec3<bool>(true, arg_0, u_input.c >= var_1.a))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.c.b)), var_2.b.b);
    global1 = array<vec4<f32>, 26>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2.b.d), _wgslsmith_f_op_vec4_f32(-var_1.b.d), true))), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(1u, 26u)]), !select(arg_0 && arg_0, arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~select(u_input.c, 1u, true), _wgslsmith_f_op_f32(f32(-1f) * -948f), -31287i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(false))), func_2(Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1614f) + _wgslsmith_f_op_f32(abs(1515f))), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)))).e);
    global1 = array<vec4<f32>, 26>();
    var var_1 = Struct_3(Struct_1(func_2(Struct_5(-795f, vec3<bool>(true, true, true))).a, _wgslsmith_f_op_f32(-var_0.b), u_input.e, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1458f, 138f, true))), _wgslsmith_f_op_f32(var_0.d.x + var_0.b), var_0.b, var_0.d.x), ~(~_wgslsmith_mult_vec3_i32(global0.yzz, global0.yyy))));
    var var_2 = 1i | -_wgslsmith_mod_i32(~global0.x & var_1.a.c, 0i);
    let var_3 = Struct_3(Struct_1(_wgslsmith_clamp_u32(1u, 32224u, 1u), var_0.d.x, var_1.a.e.x, _wgslsmith_f_op_vec4_f32(max(var_0.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, 317f, -883f, var_1.a.b) + vec4<f32>(-786f, -289f, var_1.a.d.x, var_0.b)), vec4<f32>(-876f, -205f, 1341f, 1734f), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true))))), vec3<i32>(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 971f, var_0.d.x) * vec3<f32>(-1039f, 518f, var_0.b)), Struct_3(var_1.a), true).c, 0i, 0i)));
    var var_4 = vec4<bool>(false, false, select(true & !select(true, true, true), !all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false)), true), true);
    let var_5 = vec4<i32>(global0.x, abs(27888i), ~(global0.x | -2147483647i), var_0.e.x);
    global1 = array<vec4<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(-var_5.x, -_wgslsmith_dot_vec3_i32(var_0.e, -select(var_1.a.e, var_0.e, var_4.x)));
}

