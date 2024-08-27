struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13>;

var<private> global1: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = u_input.d.x;
    let var_1 = arg_1.yx;
    var var_2 = !select(!select(select(vec4<bool>(false, arg_2.e.a, arg_2.e.a, false), vec4<bool>(true, false, false, true), vec4<bool>(false, arg_2.a.a.a, false, false)), select(vec4<bool>(false, arg_2.e.a, arg_2.c.a, arg_2.c.a), vec4<bool>(true, arg_2.c.a, arg_2.d.a, arg_2.c.a), vec4<bool>(arg_2.a.a.a, arg_2.a.a.a, arg_2.e.a, arg_2.a.a.a)), vec4<bool>(arg_2.d.a, arg_2.e.a, true, true)), !(!(!vec4<bool>(true, arg_2.c.a, false, arg_2.a.a.a))), true);
    let var_3 = Struct_1(select(true, select(arg_2.e.a, var_2.x, true), all(select(var_2.zy, vec2<bool>(var_2.x, false), select(var_2.xx, var_2.xx, true)))));
    let var_4 = vec3<i32>(_wgslsmith_div_i32(-59846i, -(~(-1i)) ^ var_0), _wgslsmith_mod_i32(u_input.d.x, max(-1i, 2147483647i) & u_input.a), _wgslsmith_mult_i32(select(var_0, -1i, any(vec2<bool>(true, var_3.a))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.c & var_0, 1i >> (arg_1.x % 32u), -arg_2.a.b, -arg_2.a.b), firstTrailingBit(vec4<i32>(u_input.a, 1i, arg_2.a.c, arg_2.a.c) ^ vec4<i32>(u_input.d.x, -29317i, arg_2.a.c, 5586i)))));
    return var_2.wxy;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = !vec3<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), any(vec2<bool>(all(vec4<bool>(false, true, false, true)), true)), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    var_0 = select(select(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(204f, arg_1.x, 423f) + vec3<f32>(arg_1.x, 2179f, arg_1.x))), vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.c.x) | (vec4<u32>(33343u, 1u, 4294967295u, 40378u) << (vec4<u32>(u_input.b.x, u_input.b.x, 0u, 15182u) % vec4<u32>(32u))), Struct_3(Struct_2(Struct_1(var_0.x), 0i, 12398i), vec3<f32>(948f, -681f, -789f), Struct_1(false), Struct_1(false), Struct_1(true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1208f), 438f, 1f)), func_3(vec3<f32>(arg_0.x, -509f, 877f), reverseBits(vec4<u32>(u_input.c.x, 11470u, u_input.b.x, u_input.c.x)), Struct_3(Struct_2(Struct_1(var_0.x), u_input.d.x, u_input.a), vec3<f32>(arg_1.x, -1225f, arg_1.x), Struct_1(var_0.x), Struct_1(var_0.x), Struct_1(var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0.yzw, vec3<f32>(arg_1.x, 416f, 681f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1298f, arg_0.x)))), vec3<bool>(true, var_0.x, var_0.x)), !(!func_3(vec3<f32>(arg_0.x, arg_1.x, arg_0.x), vec4<u32>(u_input.b.x, 0u, 4294967295u, 4294967295u) >> (vec4<u32>(u_input.c.x, 0u, u_input.c.x, 1437u) % vec4<u32>(32u)), Struct_3(Struct_2(Struct_1(false), u_input.d.x, u_input.a), vec3<f32>(arg_1.x, 1371f, -239f), Struct_1(true), Struct_1(false), Struct_1(var_0.x)), vec3<f32>(-723f, arg_1.x, arg_1.x))), max(u_input.c.x, 39658u) <= (min(min(52385u, 18787u), _wgslsmith_div_u32(u_input.b.x, 0u)) & 1u));
    let var_1 = Struct_2(Struct_1(!(any(vec3<bool>(var_0.x, false, var_0.x)) | true)), ~abs(_wgslsmith_mod_i32(0i, select(u_input.d.x, 0i, false))), 1i);
    var var_2 = _wgslsmith_f_op_f32(1075f + -755f);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(160f, _wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(-arg_0.x));
    return var_1.a;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = (abs(max(~vec3<i32>(u_input.a, -65954i, -1i), -vec3<i32>(-1i, 2147483647i, u_input.d.x))) | ~(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.a, u_input.a), vec3<i32>(-2147483647i, -1i, u_input.a)))) << (~u_input.c % vec3<u32>(32u));
    var var_1 = Struct_4(firstTrailingBit(_wgslsmith_mod_u32(~u_input.b.x, ~u_input.c.x)), ~(~1i), vec4<f32>(1f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(370f, -507f)) - _wgslsmith_div_f32(-465f, -1656f))), -519f), 1u, var_0.x);
    return Struct_1(false);
}

fn func_1() -> Struct_1 {
    return func_4(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(643f, -1184f, -1010f, 264f) + vec4<f32>(1305f, 1760f, 484f, 905f))), vec3<f32>(_wgslsmith_div_f32(642f, -480f), 999f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-666f))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<u32>) -> Struct_3 {
    global0 = array<Struct_4, 13>();
    var var_0 = Struct_3(Struct_2(func_1(), 1i, _wgslsmith_clamp_i32(u_input.d.x, -31127i, _wgslsmith_sub_i32(-6791i, u_input.a) ^ 0i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-464f, -2225f, -1322f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1581f, _wgslsmith_f_op_f32(568f + -1917f), -1000f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, -867f))))), arg_0, func_2(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_2.x)))), arg_2.x, 1563f, 1245f), vec3<f32>(1296f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -598f))), arg_2.x)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -1469f, 1848f, arg_2.x) - vec4<f32>(-462f, 605f, arg_2.x, 1000f)) - vec4<f32>(arg_2.x, arg_2.x, -1938f, -463f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x))))));
    let var_1 = ~arg_3;
    var var_2 = Struct_3(var_0.a, vec3<f32>(1000f, 292f, _wgslsmith_f_op_f32(-1038f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -554f) - _wgslsmith_f_op_f32(-arg_2.x)))), Struct_1(!arg_1.a), Struct_1(!func_2(vec4<f32>(591f, 232f, arg_2.x, -324f), vec3<f32>(-293f, 1454f, var_0.b.x)).a || arg_1.a), arg_0);
    let var_3 = 1000f;
    return Struct_3(var_2.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-254f, -337f, 624f) - var_2.b)), var_0.b))), func_1(), var_0.e, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(~10644i, 54403i >> (u_input.b.x % 32u));
    global0 = array<Struct_4, 13>();
    let var_1 = func_5(func_1(), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-316f, -231f, -1820f, -1684f), vec4<f32>(-1201f, -445f, -1003f, -174f)))), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, 1028f)))), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(~42748u, 28894u, u_input.c.x << (u_input.c.x % 32u), u_input.b.x), vec4<u32>(75311u & u_input.b.x, ~4294967295u, u_input.c.x, max(u_input.b.x, 27624u)))));
    global1 = 1910u & _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 20310u, 73017u, 28092u)) << (~vec4<u32>(u_input.b.x, u_input.b.x, 0u, 0u) % vec4<u32>(32u)), select(firstLeadingBit(vec4<u32>(4294967295u, u_input.b.x, u_input.c.x, u_input.c.x) & vec4<u32>(89461u, u_input.c.x, 4294967295u, 4294967295u)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, 91196u, 1u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 4294967295u))), !(var_1.e.a == var_1.e.a)));
    let var_2 = global0[_wgslsmith_index_u32(0u, 13u)];
    global1 = ~(~u_input.c.x);
    global0 = array<Struct_4, 13>();
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(select(~vec4<u32>(var_2.a, 4294967295u, u_input.b.x, 4294967295u), vec4<u32>(var_2.d, var_2.a, var_2.d, u_input.c.x) | vec4<u32>(56161u, u_input.b.x, u_input.c.x, 27786u), func_4(Struct_1(var_3.e.a)).a), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.d, var_2.d, 67602u, 51829u), _wgslsmith_sub_vec4_u32(vec4<u32>(730u, 80999u, var_2.a, var_2.d), vec4<u32>(25796u, var_2.a, u_input.b.x, u_input.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-591f + var_3.b.x)), _wgslsmith_f_op_f32(floor(-501f)), -906f, _wgslsmith_f_op_f32(min(var_2.c.x, var_2.c.x))), -401f, countOneBits(~(-(~vec4<i32>(var_0, -15495i, -1i, -7332i)))), ~u_input.d);
}

