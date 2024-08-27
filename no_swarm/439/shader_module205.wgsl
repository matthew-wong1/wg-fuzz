struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = arg_0.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(299f, -239f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(771f, -405f)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(496f, -1863f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2020f, 507f) - vec2<f32>(509f, 622f)), vec2<bool>(var_0, arg_0.a.x)))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1609f, -1417f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(325f, -1712f), -1000f) - vec2<f32>(1f, 1f)), !vec2<bool>(var_0, any(arg_0.a.ww)))));
    let var_2 = arg_0.a.x;
    var var_3 = Struct_3(select(!vec3<bool>(true, !var_0, -372f > var_1.x), arg_0.a.yzy, select(arg_0.a.wxz, arg_0.a.yyy, select(arg_0.a.zzz, !arg_0.a.zyw, true))));
    let var_4 = _wgslsmith_div_vec4_u32(firstTrailingBit(max(vec4<u32>(0u, 4294967295u, ~1u, _wgslsmith_mult_u32(0u, 27428u)), abs(~vec4<u32>(4294967295u, 4132u, 0u, 0u)))), vec4<u32>(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(16146u, 4294967295u), vec2<u32>(4294967295u, 39406u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(79540u, 53878u, 16708u, 1u), vec4<u32>(33785u, 0u, 1u, 5032u))), 384u, (abs(4294967295u) & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 38309u), vec2<u32>(0u, 5358u))) & ~min(86666u, 4294967295u), 0u));
    return _wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(~0u, _wgslsmith_div_u32(var_4.x, var_4.x))), ~(~41475u), 4294967295u ^ var_4.x, 34425u), ~vec4<u32>(var_4.x, _wgslsmith_div_u32(~var_4.x, ~var_4.x), ~(4294967295u & var_4.x), 23057u));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), false), select(vec4<u32>(1u, 1u, 1u, 1u), func_3(Struct_1(vec4<bool>(false, true, false, true))), !(!arg_1.a.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1342f + -1169f))) + _wgslsmith_f_op_f32(min(2066f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(724f, 591f, false)))))));
    let var_2 = !(var_1 <= var_1) & ((arg_1.a.x || (!arg_1.a.x & true)) | false);
    let var_3 = u_input.c;
    let var_4 = _wgslsmith_div_u32(reverseBits(var_0) | _wgslsmith_add_u32(~var_0, ~var_0), _wgslsmith_add_u32(~_wgslsmith_div_u32(var_0, var_0) >> (_wgslsmith_clamp_u32(74910u >> (1u % 32u), 1u, var_0) % 32u), 27851u));
    return Struct_1(!select(vec4<bool>(arg_1.a.x, arg_1.a.x, all(vec4<bool>(false, arg_1.a.x, var_2, false)), true), !vec4<bool>(false, arg_1.a.x, false, arg_1.a.x), all(select(arg_1.a, vec3<bool>(false, arg_1.a.x, true), arg_1.a.x))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: u32) -> Struct_3 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, arg_0), 410f))));
    let var_2 = _wgslsmith_sub_vec2_i32(u_input.c.wz | u_input.b, vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.wzw, ~vec3<i32>(2147483647i, -2147483647i, u_input.a)), u_input.b.x));
    var_0 = true;
    let var_3 = func_2(u_input.c.xzy, Struct_3(vec3<bool>(select(var_2.x != 56339i, true, true), (-2461f > arg_0) | true, true)));
    return Struct_3(select(func_2(u_input.c.xwz, Struct_3(var_3.a.wwx)).a.xzy, vec3<bool>(true, var_3.a.x, var_3.a.x), vec3<bool>(true, select(any(vec4<bool>(false, var_3.a.x, true, false)), false, true), func_2(max(u_input.c.yzy, u_input.c.ywy), Struct_3(var_3.a.wzz)).a.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = vec2<u32>(firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), firstLeadingBit(func_3(Struct_1(vec4<bool>(true, true, true, arg_1.a.x))).zx)));
    let var_1 = Struct_2(func_2(-u_input.c.zzx >> (vec3<u32>(_wgslsmith_mod_u32(22045u, 26346u), select(var_0.x, 4294967295u, arg_0.a.x), firstTrailingBit(var_0.x)) % vec3<u32>(32u)), arg_0), _wgslsmith_f_op_f32(abs(1000f)));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_0.x, 1u), vec4<u32>(75397u, 1u, ~firstLeadingBit(1u), ~firstLeadingBit(0u)));
    let var_3 = arg_1;
    let var_4 = Struct_2(Struct_1(var_1.a.a), var_1.b);
    return var_1.a.a.yww;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1157f - -1000f))), vec4<u32>(1u, 1u, 1u, 1u), 21124u), func_1(_wgslsmith_f_op_f32(f32(-1f) * -331f), firstLeadingBit(~vec4<u32>(0u, 4294967295u, 1u, 19665u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, 56061u), abs(vec3<u32>(4294967295u, 1u, 8742u))))));
    let var_1 = -883f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~3257u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 0u, 4294967295u)), vec3<u32>(40772u, _wgslsmith_clamp_u32(1u, 50406u, 18673u), 27739u)), _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(~8509u, 0u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(-var_1))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(745f)) - 1874f)))), _wgslsmith_f_op_f32(-277f - var_1), -266f);
}

