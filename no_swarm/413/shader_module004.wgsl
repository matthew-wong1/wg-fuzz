struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 564f, 129f) - vec3<f32>(arg_0, -708f, arg_0)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(675f, arg_0, 459f)))))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, _wgslsmith_f_op_f32(min(-1005f, -234f)), _wgslsmith_f_op_f32(arg_0 + -649f)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(871f - 1817f), _wgslsmith_f_op_f32(-arg_0)))))));
    var var_1 = vec2<i32>(u_input.a.x, u_input.a.x);
    var var_2 = Struct_5(any(select(vec4<bool>(true, all(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, true, true)), true), vec4<bool>(true, all(vec2<bool>(false, true)), any(vec4<bool>(true, false, false, false)), true), vec4<bool>(true, true, true, true))));
    var_1 = select(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>((i32(-1i) * -2147483647i) ^ reverseBits(u_input.a.x), var_1.x)), vec2<i32>(firstTrailingBit(~select(var_1.x, u_input.a.x, var_2.a)), var_1.x), vec2<bool>(select(true, true, any(vec2<bool>(true, true)) && any(vec4<bool>(true, var_2.a, true, true))), false));
    var var_3 = 2147483647i;
    return _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~firstTrailingBit(1u), _wgslsmith_clamp_u32(~1u, _wgslsmith_add_u32(0u, 16014u), 51038u)), max(vec2<u32>(1u, 1u), abs(_wgslsmith_div_vec2_u32(vec2<u32>(53179u, 361u), vec2<u32>(1u, 4294967295u))))), vec2<u32>(~(~(~0u)), ~(~(~1u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool) -> i32 {
    var var_0 = arg_1.b.a;
    var_0 = arg_1.b.a;
    var var_1 = arg_1.b;
    let var_2 = arg_2 & arg_2;
    var var_3 = Struct_5(all(!select(vec2<bool>(false, false), !vec2<bool>(var_2, arg_2), !vec2<bool>(arg_2, arg_2))));
    return ~2147483647i;
}

fn func_2(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = func_4(Struct_2(max(func_3(arg_2), vec2<u32>(1u, 1u))), Struct_4(~_wgslsmith_div_u32(38933u, 68657u), Struct_1(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -1070f), -1000f, _wgslsmith_f_op_f32(arg_2 + arg_1.x))), all(vec3<bool>(true, any(vec2<bool>(false, false)), !arg_3))) << (~_wgslsmith_clamp_u32(1u, ~_wgslsmith_clamp_u32(91651u, 1u, 10775u), ~abs(44045u)) % 32u);
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(~2147483647i, -2147483647i & u_input.a.x, abs(u_input.a.x)), -vec3<i32>(u_input.a.x, u_input.a.x, -17638i), true), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -45908i), vec2<i32>(-69645i, u_input.a.x)) | -20817i, i32(-1i) * -u_input.a.x, u_input.a.x)), abs(countOneBits(-countOneBits(vec3<i32>(u_input.a.x, 2147483647i, -2147483647i)))));
    let var_2 = countOneBits(32945u);
    var_0 = (~select(_wgslsmith_sub_i32(u_input.a.x, -1i), u_input.a.x << (var_2 % 32u), var_2 >= var_2) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, var_2), ~vec2<u32>(0u, var_2)) % 32u)) << (var_2 % 32u);
    var var_3 = _wgslsmith_add_vec4_u32(select(abs(vec4<u32>(48600u, 4294967295u, var_2, 24844u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(9018u, 13429u, var_2, var_2), vec4<u32>(var_2, var_2, var_2, 56224u)) % vec4<u32>(32u))), vec4<u32>(var_2, ~var_2, abs(var_2 | var_2), var_2), select(!vec4<bool>(arg_3, false, true, arg_3), select(vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), vec4<bool>(false, false, arg_3, arg_3), !arg_3), !arg_0.a)), ~firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(10954u, var_2), 23173u, firstLeadingBit(var_2), abs(1u))));
    return Struct_1(vec4<u32>(4294967295u, ~_wgslsmith_dot_vec3_u32(select(var_3.wzy, vec3<u32>(4658u, var_2, 4323u), false), ~var_3.yzz), ~var_3.x, ~var_3.x), -1500f, -469f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-374f))));
}

fn func_1(arg_0: Struct_5) -> i32 {
    var var_0 = Struct_4(4294967295u, func_2(Struct_5(all(vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -475f)), 217f), 828f, arg_0.a));
    let var_1 = arg_0;
    let var_2 = Struct_2(select(firstTrailingBit(vec2<u32>(var_0.b.a.x, ~1u)), var_0.b.a.yw << ((var_0.b.a.zw << (~var_0.b.a.xy % vec2<u32>(32u))) % vec2<u32>(32u)), select(vec2<bool>(false, true), vec2<bool>(any(vec4<bool>(var_1.a, false, arg_0.a, arg_0.a)), any(vec3<bool>(false, true, true))), vec2<bool>(true, true))));
    var var_3 = arg_0.a;
    let var_4 = arg_0.a;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, func_1(Struct_5(true)), firstLeadingBit(func_1(Struct_5(false)))), 0i | ~u_input.a.x);
    let var_1 = Struct_2(_wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(48731u, 34494u), vec2<u32>(1u, 3082u))), vec2<u32>(~867u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(14065u, 0u)))));
    let var_2 = Struct_3(Struct_2(var_1.a));
    let var_3 = Struct_5(all(vec4<bool>(all(vec3<bool>(true, true, true)), select(any(vec4<bool>(false, true, true, true)), true, true), true, true)));
    let var_4 = !(!(!select(select(vec4<bool>(true, var_3.a, true, var_3.a), vec4<bool>(false, var_3.a, false, true), vec4<bool>(false, false, true, var_3.a)), vec4<bool>(false, var_3.a, true, var_3.a), vec4<bool>(var_3.a, true, true, var_3.a))));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-692f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(521f, -683f, var_3.a))))) + _wgslsmith_f_op_f32(ceil(1000f))));
    var var_6 = Struct_5(false);
    var_6 = var_3;
    var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-704f)) + 1357f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_2.a.a.x, (_wgslsmith_mult_u32(var_1.a.x, 36589u) ^ var_2.a.a.x) >> (2670u % 32u), ~(firstTrailingBit(29344u) ^ var_2.a.a.x), func_3(-744f).x), countOneBits(9763u), ~u_input.a.x, (firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) ^ (firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) >> (vec4<u32>(4294967295u, var_2.a.a.x, var_2.a.a.x, var_2.a.a.x) % vec4<u32>(32u)))) << ((_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(66714u, var_2.a.a.x, var_2.a.a.x, var_2.a.a.x)), vec4<u32>(var_1.a.x, 1u, 49123u, 47524u)) ^ firstTrailingBit(vec4<u32>(var_1.a.x, 42794u, var_2.a.a.x, var_1.a.x) | vec4<u32>(4294967295u, var_1.a.x, var_2.a.a.x, var_1.a.x))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-829f + _wgslsmith_div_f32(-423f, 426f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1830f, -200f))))));
}

