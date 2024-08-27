struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    var var_0 = arg_1;
    let var_1 = Struct_2(arg_2.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.b, arg_2.b) - arg_2.b), arg_2.b)))));
    var_0 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2079f) + 1f)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = firstLeadingBit(vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(30688i, 1i), u_input.b.xx) ^ -select(u_input.b.x, 0i, true), ~_wgslsmith_add_i32(~u_input.b.x, ~1i)));
    let var_1 = ~vec2<u32>(_wgslsmith_sub_u32(max(u_input.a, 0u) | 0u, 127915u), _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(0u, ~u_input.a), 4294967295u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1663f)));
    global0 = array<Struct_4, 13>();
    var var_3 = 0u;
    return Struct_2(~u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-615f, 1000f, -611f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1173f, -764f, 326f) * vec3<f32>(126f, -718f, 645f)))) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_div_f32(842f, -1609f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1139f, 1408f), _wgslsmith_f_op_f32(func_3(vec2<i32>(-2147483647i, var_0.x), arg_0.x, Struct_2(var_1.x, vec3<f32>(2275f, -401f, -1157f)), vec3<i32>(4645i, -1i, -131593i))))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = !vec3<bool>(u_input.c == reverseBits(_wgslsmith_add_i32(u_input.b.x, arg_0.x)), true, true);
    let var_1 = vec4<f32>(658f, arg_1.x, _wgslsmith_f_op_f32(round(-1096f)), _wgslsmith_div_f32(618f, _wgslsmith_f_op_f32(f32(-1f) * -538f)));
    var var_2 = Struct_3(func_2(!(!vec4<bool>(arg_2.x, true, true, false))), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))), select(arg_2, !arg_2, !(!vec2<bool>(false, arg_2.x))));
    var_2 = Struct_3(Struct_2(~func_2(!vec4<bool>(var_2.d.x, false, true, true)).a, _wgslsmith_f_op_vec3_f32(-var_2.a.b)), _wgslsmith_mod_i32(-(_wgslsmith_dot_vec2_i32(vec2<i32>(20814i, 2147483647i), vec2<i32>(u_input.b.x, -32238i)) ^ -2147483647i), u_input.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -200f))))), select(vec2<bool>(var_0.x, false & any(var_0.zz)), select(!vec2<bool>(var_2.d.x, true), select(select(vec2<bool>(arg_2.x, true), vec2<bool>(arg_2.x, false), false), !var_0.xz, !arg_2), var_2.d), select(!var_2.d, vec2<bool>(true, any(vec4<bool>(false, false, var_0.x, false))), var_2.d.x)));
    var_0 = !(!vec3<bool>(var_2.d.x, var_0.x, 1f != _wgslsmith_f_op_f32(step(var_2.a.b.x, 940f))));
    return Struct_3(var_2.a, u_input.c, _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(round(-1917f))), vec2<bool>(all(vec4<bool>(false, var_0.x, arg_2.x, arg_2.x)), _wgslsmith_sub_i32(arg_0.x, min(arg_0.x, arg_0.x)) != _wgslsmith_clamp_i32(4740i, 13664i, abs(35767i))));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    global0 = array<Struct_4, 13>();
    var var_0 = Struct_3(Struct_2(0u, vec3<f32>(_wgslsmith_f_op_f32(-258f + _wgslsmith_f_op_f32(floor(404f))), _wgslsmith_f_op_f32(floor(202f)), _wgslsmith_f_op_f32(-349f + _wgslsmith_f_op_f32(-arg_0.c)))), -u_input.b.x, _wgslsmith_f_op_f32(func_1(vec3<i32>(_wgslsmith_add_i32(u_input.c, 5248i), abs(-1i), -8524i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b.x, arg_0.a.b.x)))), arg_0.d).c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2765f)) - 1515f)), vec2<bool>(false, arg_0.d.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_0.a.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.c, 397f, var_0.a.b.x), var_0.a.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.a.b.x, var_0.a.b.x)))))));
    var_0 = func_1(_wgslsmith_div_vec3_i32(~(countOneBits(u_input.b.wxw) << (select(vec3<u32>(1u, u_input.a, 1u), vec3<u32>(var_0.a.a, u_input.a, 30199u), true) % vec3<u32>(32u))), u_input.b.zyw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.yy * arg_0.a.b.zx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 1000f))))) + var_1.yz), var_0.d);
    let var_2 = var_0.a;
    return Struct_4(~1u > u_input.a);
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_2) -> bool {
    var var_0 = arg_0;
    global0 = array<Struct_4, 13>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.zy) * _wgslsmith_f_op_vec2_f32(arg_2.zx * _wgslsmith_f_op_vec2_f32(arg_3.b.xx - vec2<f32>(623f, 667f))))) + arg_3.b.zx);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3.b.x * _wgslsmith_f_op_f32(min(-1318f, -827f))), 1034f, -1000f), arg_2));
    var var_3 = _wgslsmith_sub_u32(1u, ~(~_wgslsmith_mult_u32(arg_3.a, 51433u)));
    return false;
}

fn func_6(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = arg_1.x && ((u_input.b.x ^ 28467i) <= u_input.b.x);
    let var_1 = u_input.a;
    return func_1(abs(firstLeadingBit(vec3<i32>(min(0i, -1i), -40996i, 1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_2.x)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, -994f)))), select(vec2<bool>(all(vec4<bool>(true, false, false, true)), arg_1.x), arg_1.xx, !func_1(vec3<i32>(u_input.b.x, 1i, 2147483647i), vec2<f32>(arg_2.x, -629f), vec2<bool>(false, arg_0)).d)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    var var_0 = func_6(func_5(select(all(vec2<bool>(true, true)), true, false), func_4(func_1(u_input.b.zyy | u_input.b.zzz, vec2<f32>(-675f, 1056f), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(778f, 194f, -245f), vec3<f32>(-839f, 1805f, 882f)), vec3<f32>(110f, -702f, -1530f), true)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1025f), 1f, _wgslsmith_f_op_f32(sign(519f)))), Struct_2(u_input.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-633f, -1194f, -296f))))), select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), func_4(func_1(vec3<i32>(u_input.c, -77927i, -2147483647i), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2169f, -797f))), vec2<bool>(true, true))).a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3196f), _wgslsmith_f_op_f32(f32(-1f) * -298f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-410f - -435f))), _wgslsmith_f_op_f32(-440f + _wgslsmith_f_op_f32(-func_2(vec4<bool>(true, false, true, true)).b.x))));
    var var_1 = vec4<u32>(u_input.a, var_0.a, _wgslsmith_mult_u32((var_0.a & u_input.a) & 40092u, _wgslsmith_add_u32(~8392u, select(46552u, var_0.a, true))) & max(1u, ~u_input.a), 12097u);
    var var_2 = func_1(max(-_wgslsmith_mult_vec3_i32(abs(u_input.b.wxy), countOneBits(vec3<i32>(33882i, -2147483647i, u_input.c))), -select(-vec3<i32>(-2968i, 1i, 21410i), firstLeadingBit(u_input.b.zxy), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.b.xx - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x), vec2<f32>(var_0.b.x, var_0.b.x))))), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~firstLeadingBit(vec4<u32>(4294967295u, 76612u, var_1.x, 1774u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_2.a.a, u_input.a, 56655u), ~vec4<u32>(0u, u_input.a, 4294967295u, 0u)) % vec4<u32>(32u))), _wgslsmith_add_i32(-2147483647i ^ var_2.b, 2147483647i), _wgslsmith_f_op_f32(func_3(vec2<i32>(firstTrailingBit(abs(u_input.c)), _wgslsmith_sub_i32(0i, u_input.b.x) | u_input.b.x), -2090f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.a.b.x, -248f)) * var_0.b.x), func_2(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, var_2.d.x, var_2.d.x), vec4<bool>(true, true, true, false), vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.d.x)), var_2.d.x)), _wgslsmith_add_vec3_i32(-abs(vec3<i32>(u_input.b.x, 6363i, u_input.c)), select(u_input.b.xxw >> (var_1.wwy % vec3<u32>(32u)), vec3<i32>(var_2.b, var_2.b, 0i), !var_2.d.x)))), u_input.a);
}

