struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec2<bool> {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -146f);
    var var_2 = _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a.x, _wgslsmith_mult_i32(arg_0.b, u_input.a.x), arg_0.b), u_input.a)), ~abs(select(-var_0, -437i, true)));
    var var_3 = arg_0.d;
    var_2 = u_input.a.x;
    return vec2<bool>(select(true, false, true) & (arg_1 >= (54567u << (1u % 32u))), true);
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    global0 = u_input.a.x;
    global0 = 2147483647i;
    return 0u;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_3(arg_2.b.d);
    var var_1 = u_input.a.x;
    var var_2 = Struct_2(!func_2(arg_0, firstTrailingBit(_wgslsmith_div_u32(0u, 1u))), Struct_1(~func_3(u_input.a.zx), arg_2.b.b, ~vec4<u32>(arg_0.c.x, _wgslsmith_mult_u32(1u, arg_2.c.x), ~arg_2.b.c.x, ~55189u), var_0.a, -317f), ~firstLeadingBit(vec3<u32>(arg_2.b.a, 0u, arg_2.c.x) & arg_0.c.www));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e + -954f) + _wgslsmith_f_op_f32(-arg_2.b.d)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(617f, var_2.b.d))), _wgslsmith_f_op_f32(-543f * _wgslsmith_f_op_f32(trunc(arg_2.b.e))))))));
    var_2 = arg_2;
    return -abs(_wgslsmith_mod_i32(_wgslsmith_mult_i32(6583i, -u_input.a.x), 2147483647i));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(24991i, ~(i32(-1i) * -62912i));
    global0 = var_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 912f, 466f), vec3<f32>(2146f, 2067f, 624f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-146f, 1000f, -395f), vec3<f32>(298f, 943f, 342f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1149f, 132f, 780f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1817f, 1726f, 161f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(904f, 1029f, -642f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(418f, 407f, 768f)))))));
    var var_2 = Struct_3(333f);
    var var_3 = vec3<u32>(_wgslsmith_sub_u32(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 72478u, 14813u), vec3<u32>(55933u, 1u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(40022u, 32216u, 53302u, 34431u), vec4<u32>(42576u, 12431u, 68944u, 50772u)), arg_1.x & arg_1.x), _wgslsmith_clamp_u32(0u, abs(2192u), 4294967295u)), _wgslsmith_mult_u32(~(~17778u), 1u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(47753u, 1u, 7954u)), 0u), vec4<u32>(54530u, _wgslsmith_mod_u32(10191u, 48463u), _wgslsmith_div_u32(9896u, 1u), func_3(u_input.a.yz))) % 32u), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(37485u, 0u, 0u, 4294967295u), vec4<u32>(0u, 0u, 0u, 4294967295u)) & 56324u, _wgslsmith_add_u32(0u, 1449u) >> (1u % 32u)));
    return Struct_1(~(~0u), u_input.a.x, ~(~firstTrailingBit(vec4<u32>(var_3.x, 45725u, var_3.x, var_3.x)) | vec4<u32>(~var_3.x, var_3.x >> (var_3.x % 32u), _wgslsmith_mod_u32(1u, var_3.x), 44104u)), -492f, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<bool>(true, _wgslsmith_sub_i32(func_1(Struct_1(83586u, u_input.a.x, vec4<u32>(54096u, 1u, 66554u, 18274u), -273f, -2095f), false, Struct_2(vec2<bool>(false, false), Struct_1(4294967295u, -2147483647i, vec4<u32>(50804u, 0u, 1u, 0u), 498f, 1377f), vec3<u32>(1u, 35915u, 0u))), ~65845i) >= 26024i), vec2<bool>((u_input.a.x | u_input.a.x) > min(u_input.a.x, -u_input.a.x), true), select(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))), vec4<bool>(true == all(vec4<bool>(false, true, true, false)), true, false, func_2(Struct_1(1u, 1i, vec4<u32>(0u, 0u, 6513u, 4294967295u), 683f, -1235f), 1u).x), vec4<bool>(true, !all(vec4<bool>(true, true, false, true)), !(u_input.a.x != u_input.a.x), -141f > _wgslsmith_f_op_f32(ceil(224f)))));
    var var_1 = Struct_2(select(!func_2(Struct_1(var_0.c.x, u_input.a.x, vec4<u32>(27121u, 22438u, var_0.a, var_0.c.x), var_0.d, -1000f), 4294967295u), vec2<bool>(true, true), vec2<bool>(true, false)), Struct_1(72782u, -1i, ~firstTrailingBit(_wgslsmith_div_vec4_u32(var_0.c, vec4<u32>(0u, 1u, 48153u, var_0.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -665f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -139f), -391f) + var_0.d)), countOneBits(_wgslsmith_mult_vec3_u32(var_0.c.ywz, var_0.c.wwx) >> (vec3<u32>(select(var_0.c.x, var_0.c.x, false), var_0.c.x >> (0u % 32u), func_3(u_input.a.xy)) % vec3<u32>(32u))));
    var var_2 = vec4<i32>(~(~var_0.b >> (_wgslsmith_clamp_u32(1u, var_1.b.c.x ^ 4294967295u, ~4294967295u) % 32u)), _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, u_input.a.x, 39693i, -1988i), vec4<i32>(1i, var_0.b, 15752i, var_0.b), var_1.a.x), ~vec4<i32>(u_input.a.x, -15152i, 2147483647i, u_input.a.x)), 29038i), _wgslsmith_mult_i32(-(u_input.a.x >> (4294967295u % 32u)), select(4319i, -abs(2147483647i), !(509f > var_1.b.e))), abs(_wgslsmith_sub_i32(7192i, 0i)));
    var_0 = Struct_1(0u, _wgslsmith_dot_vec4_i32(min(vec4<i32>(_wgslsmith_clamp_i32(var_1.b.b, 0i, 18014i), var_0.b, firstTrailingBit(2147483647i), abs(var_1.b.b)), abs(reverseBits(vec4<i32>(var_1.b.b, u_input.a.x, var_2.x, var_0.b)))), ~(vec4<i32>(1i, 4773i, 1i, -8684i) & vec4<i32>(var_2.x, var_1.b.b, u_input.a.x, u_input.a.x))), vec4<u32>(18232u, _wgslsmith_div_u32(_wgslsmith_add_u32(firstTrailingBit(var_0.a), var_1.b.c.x ^ var_1.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, var_1.b.a, var_1.c.x, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 12407u, var_1.c.x), vec4<u32>(4294967295u, var_0.c.x, 4294967295u, var_1.c.x)))), ~(countOneBits(1u) << (_wgslsmith_dot_vec2_u32(var_1.c.xx, vec2<u32>(var_0.c.x, 30992u)) % 32u)), var_1.c.x), _wgslsmith_f_op_f32(var_0.e - var_1.b.e), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.b.d, -1893f)) + _wgslsmith_f_op_f32(1000f - 205f)) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.b.e, 1306f), _wgslsmith_div_f32(-1598f, -867f)))))));
    let var_3 = Struct_3(var_1.b.e);
    var var_4 = all(var_1.a);
    let var_5 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.a), var_0.e, all(vec4<bool>(var_1.a.x, true, var_1.a.x, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 23381u, var_1.b.c.x), vec3<u32>(28393u, var_1.c.x, var_0.a))) >> (select(~max(var_1.c.xx, vec2<u32>(4294967295u, var_0.c.x)), var_0.c.xw, all(vec4<bool>(true, true, true, true))) % vec2<u32>(32u)), 20990u);
}

