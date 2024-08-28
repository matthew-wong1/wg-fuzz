struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: u32 = 1u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32) -> u32 {
    let var_0 = arg_1;
    var var_1 = global0[_wgslsmith_index_u32(~(~(~44325u)), 7u)];
    global0 = array<Struct_2, 7>();
    let var_2 = Struct_2(firstTrailingBit(~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, 22905u, arg_0, 4294967295u), vec4<u32>(arg_0, var_1.a.x, var_1.a.x, 5265u)))));
    var_1 = Struct_2(~(~vec4<u32>(abs(2743u), _wgslsmith_add_u32(var_1.a.x, var_2.a.x), reverseBits(var_2.a.x), countOneBits(74066u))));
    return 1u;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> Struct_2 {
    var var_0 = vec4<f32>(-568f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(582f)) * arg_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1305f, arg_0.x, arg_1)), arg_0.x, arg_0.x != arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, -1014f)) * _wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_f_op_f32(857f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-915f, arg_0.x, all(vec4<bool>(arg_1, false, arg_1, arg_1)))))));
    let var_1 = Struct_2(~vec4<u32>(_wgslsmith_mult_u32(9011u, 38012u), ~4294967295u, 1u, ~1u) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(29785u, 1u, 16332u, 9524u), vec4<u32>(15545u, 0u, 35000u, 20310u))), firstTrailingBit(vec4<u32>(10997u, 12929u, 21262u, 25046u)) ^ vec4<u32>(42016u, 4488u, 0u, 36549u)) % vec4<u32>(32u)));
    global1 = max(select(var_1.a.x, var_1.a.x >> (var_1.a.x % 32u), true) >> (func_3(_wgslsmith_sub_u32(48658u, 20669u), ~39316i) % 32u), firstTrailingBit(4294967295u)) << (~13459u % 32u);
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(1000f * -346f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x))))), 1026f);
    var var_3 = var_0.x;
    return global0[_wgslsmith_index_u32(var_1.a.x, 7u)];
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_2, 2918f), vec2<bool>(false, false))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-297f, arg_2))) * vec2<f32>(_wgslsmith_f_op_f32(arg_2 - arg_2), -1114f))), arg_2, 1000f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.b)), _wgslsmith_f_op_f32(-243f + var_0.a.x))))), _wgslsmith_f_op_f32(trunc(1502f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * 338f)))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(arg_2)), arg_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)), arg_3)), -222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c))))));
    let var_2 = !all(!(!select(vec4<bool>(true, false, arg_3, false), vec4<bool>(arg_3, arg_0, false, false), true)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-568f - var_0.c) * arg_2));
    return ~((vec4<u32>(~arg_1.a.x, 63279u, abs(arg_1.a.x), 29924u & arg_1.a.x) >> ((vec4<u32>(4294967295u, arg_1.a.x, 15409u, 0u) & arg_1.a) % vec4<u32>(32u))) << (~firstTrailingBit(select(arg_1.a, vec4<u32>(1u, arg_1.a.x, 106417u, arg_1.a.x), false)) % vec4<u32>(32u)));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    global0 = array<Struct_2, 7>();
    let var_0 = vec3<i32>(~(-1i), min((u_input.a ^ 0i) << (~arg_0 % 32u), 2147483647i) >> (arg_0 % 32u), _wgslsmith_add_i32(u_input.b.x, 2147483647i));
    global0 = array<Struct_2, 7>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.xy - arg_1.xx) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.x, -461f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-805f, arg_1.x)) + _wgslsmith_f_op_vec2_f32(arg_1.xx * vec2<f32>(arg_1.x, arg_1.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(min(-773f, arg_1.x))))));
    let var_2 = arg_0;
    return _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(34110u, arg_0, arg_0, arg_0)), func_4(false, func_2(var_1, false), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.b.x <= 27208i)), arg_0, func_3(_wgslsmith_dot_vec3_u32(func_4(true, Struct_2(vec4<u32>(88233u, var_2, 0u, 4294967295u)), _wgslsmith_f_op_f32(round(arg_1.x)), select(false, false, true)).wyw, func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.x, 1291f))), any(vec4<bool>(true, false, true, false))).a.xxz), -25084i));
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = -179f;
    let var_1 = abs(reverseBits(~_wgslsmith_div_vec3_u32(vec3<u32>(27108u, arg_1, arg_1), vec3<u32>(4294967295u, arg_1, arg_1)) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(12205u, 34906u, arg_1))));
    var var_2 = Struct_2(~min(~(~vec4<u32>(var_1.x, arg_1, 0u, 2546u)), ~vec4<u32>(var_1.x, 7165u, var_1.x, var_1.x) & _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 1u, 0u, 43804u), vec4<u32>(1u, 0u, 1u, 5469u))));
    return global0[_wgslsmith_index_u32(~firstLeadingBit(~func_1(arg_1, vec3<f32>(482f, -1133f, arg_3.x))) << (func_1(firstTrailingBit(var_2.a.x << (var_2.a.x % 32u)) << (4294967295u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3.x, arg_3.x, arg_3.x)))))) % 32u), 7u)];
}

fn func_6(arg_0: i32, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = arg_1.d;
    var var_1 = arg_1;
    var var_2 = any(vec3<bool>(all(vec3<bool>(true, true, true)), true && (var_1.e.x >= var_1.e.x), !select(false, true, false))) & true;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(395f)), arg_1.c.c)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(var_1.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b.x + 642f)))));
    global1 = arg_1.e.x;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.b), _wgslsmith_f_op_f32(1229f + var_3.c), var_1.b.x, 627f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(883f, var_3.c, arg_1.c.b, 898f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, 459f, var_3.a.x, -961f) + vec4<f32>(-414f, -280f, -1679f, arg_1.c.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -457f;
    global1 = 0u;
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    let x = u_input.a;
    s_output = func_6(u_input.b.x, Struct_3(func_5(vec3<i32>(reverseBits(u_input.b.x), reverseBits(u_input.a), u_input.b.x), _wgslsmith_add_u32(1u, func_1(58911u, vec3<f32>(var_0, -1109f, var_0))), ~(-vec4<i32>(23258i, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-744f, var_0, -259f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, var_0))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))) + vec2<f32>(-114f, var_0)), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, 557f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-348f, var_0) - vec2<f32>(-1000f, var_0))), var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0, 968f)))), max(-(vec4<i32>(u_input.b.x, 2147483647i, u_input.a, 0i) & vec4<i32>(u_input.b.x, u_input.a, u_input.a, -21615i)), max(vec4<i32>(u_input.a, 29272i, -4254i, -46971i), vec4<i32>(20642i, u_input.a, -26216i, u_input.b.x)) >> (func_4(false, Struct_2(vec4<u32>(1u, 10412u, 0u, 64521u)), 247f, true) % vec4<u32>(32u))), ~(~(~vec2<u32>(0u, 40815u)))));
}

