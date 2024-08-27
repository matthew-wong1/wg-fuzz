struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    var var_0 = Struct_2(func_2(func_2(Struct_1(max(u_input.a.xx, u_input.a.yz), vec2<u32>(0u, u_input.a.x)))), abs(max(vec2<i32>(0i, firstTrailingBit(70971i)), vec2<i32>(_wgslsmith_mult_i32(27118i, 1i), reverseBits(-355i)))));
    var_0 = Struct_2(func_2(var_0.a), -vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(20743i, 14582i), var_0.b), -var_0.b), var_0.b.x));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), arg_0.x));
    let var_2 = var_0.a;
    var var_3 = max(_wgslsmith_div_vec2_u32(vec2<u32>(func_2(Struct_1(vec2<u32>(var_0.a.b.x, var_0.a.a.x), vec2<u32>(0u, 0u))).a.x, abs(max(1u, 0u))), ~(~var_2.b)), ~var_2.a & var_2.a);
    return abs(37674u);
}

fn func_4(arg_0: u32) -> u32 {
    let var_0 = Struct_2(func_2(Struct_1(_wgslsmith_div_vec2_u32(u_input.a.yy >> (vec2<u32>(arg_0, 63315u) % vec2<u32>(32u)), ~u_input.a.xy), _wgslsmith_sub_vec2_u32(abs(u_input.a.yx), ~u_input.a.yz))), vec2<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -21773i, 18118i), vec3<i32>(-26251i, 5261i, -1i))) ^ 1i, firstTrailingBit(-_wgslsmith_div_i32(40003i, 1322i))));
    let var_1 = func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-760f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1043f)) * -1145f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-243f)), _wgslsmith_f_op_f32(338f + 527f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -316f)))))), !(2147483647i <= _wgslsmith_sub_i32(0i, min(var_0.b.x, 37617i))));
    var var_2 = 4294967295u;
    var_2 = countOneBits(53685u);
    let var_3 = var_0.a.a;
    return max(firstTrailingBit(arg_0), abs(min(~_wgslsmith_sub_u32(1u, var_0.a.a.x), 4294967295u)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: vec2<f32>) -> vec3<i32> {
    let var_0 = Struct_3(4294967295u, -1999f, true, arg_2 | !arg_2);
    let var_1 = func_2(arg_1.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_3.x)), var_0.b), vec2<f32>(arg_3.x, var_0.b), true)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3 - arg_3), vec2<f32>(-479f, _wgslsmith_f_op_f32(f32(-1f) * -862f)))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1877f * 1000f)))) * 362f), func_4(~func_3(vec2<f32>(var_2.x, arg_3.x), arg_1.b.x >= arg_1.b.x)), Struct_2(func_2(arg_1.a), _wgslsmith_clamp_vec2_i32(-(vec2<i32>(arg_1.b.x, arg_1.b.x) >> (vec2<u32>(arg_1.a.b.x, 4294967295u) % vec2<u32>(32u))), -_wgslsmith_sub_vec2_i32(arg_1.b, arg_1.b), ~arg_1.b)), vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a), vec3<u32>(0u ^ arg_0, abs(var_1.b.x), select(var_0.a, var_0.a, false))), u_input.a.x));
    var var_4 = vec2<u32>(var_0.a, countOneBits(func_2(Struct_1(vec2<u32>(arg_0, arg_0), arg_1.a.a)).a.x ^ ~_wgslsmith_clamp_u32(0u, 0u, 1u)));
    return firstLeadingBit(~(-max(vec3<i32>(arg_1.b.x, 1i, 505i), vec3<i32>(-1i, var_3.d.b.x, var_3.d.b.x))) & select(select(vec3<i32>(2147483647i, 2147483647i, arg_1.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, arg_1.b.x, var_3.d.b.x), vec3<i32>(var_3.d.b.x, arg_1.b.x, -2147483647i)), select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, false, var_0.c), vec3<bool>(arg_2, arg_2, true))), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(var_3.d.b.x, -1i, arg_1.b.x), vec3<i32>(arg_1.b.x, -20856i, 74690i))), vec3<bool>(true, arg_2, 0u == var_4.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(abs(~vec4<i32>(~33850i, ~(-53442i), -52530i, 1i)));
    var var_1 = -1i;
    var_0 = vec4<i32>(firstLeadingBit(-2147483647i | abs(~var_0.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, firstTrailingBit(68288i), firstLeadingBit(-1i)), func_1(40157u, Struct_2(Struct_1(vec2<u32>(37479u, 22959u), vec2<u32>(u_input.a.x, u_input.a.x)), var_0.zy), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(360f, 840f)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(~38640i, -2147483647i, firstLeadingBit(9862i)), _wgslsmith_add_vec3_i32(var_0.zxy, var_0.yyw), firstTrailingBit(vec3<i32>(2147483647i, var_0.x, var_0.x)))), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, max(2147483647i, var_0.x)), -var_0.yz), 0i);
    var var_2 = _wgslsmith_f_op_f32(sign(452f));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1811f, 1001f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2079f * -1266f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f)), _wgslsmith_f_op_f32(-481f - -1000f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(597f, -1000f, -1000f, 852f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1114f, -148f, -1416f, 541f))))))));
    var_0 = vec4<i32>(-27373i, var_0.x, -2147483647i, min(~1i, (var_0.x & -1i) << (0u % 32u)));
    var var_4 = Struct_3(firstTrailingBit(~(~u_input.a.x ^ firstLeadingBit(u_input.a.x))), 1161f, select(_wgslsmith_dot_vec2_i32(var_0.wz, vec2<i32>(var_0.x, 1770i)), _wgslsmith_div_i32(-15013i, var_0.x), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))) == ~max(_wgslsmith_add_i32(2147483647i, var_0.x), -var_0.x), true);
    var_4 = Struct_3(_wgslsmith_add_u32(max(~u_input.a.x, ~u_input.a.x) >> (85118u % 32u), 0u), var_3.x, var_4.c, true);
    var_2 = -159f;
    let x = u_input.a;
    s_output = StorageBuffer(-(i32(-1i) * -30664i) & _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(14245i, var_0.x, -1i, var_0.x), vec4<i32>(55616i, 21616i, 24821i, 0i)), -32343i, 67347i, select(-57609i, var_0.x, var_4.c)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -15080i, var_0.x, -26911i), vec4<i32>(40421i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, 70104i, var_0.x, var_0.x)))));
}

