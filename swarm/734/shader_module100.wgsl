struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> u32 {
    let var_0 = 1u | abs(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(548u, 58771u), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 38715u), vec2<u32>(arg_1.a, 4294967295u))), _wgslsmith_mod_vec2_u32(select(vec2<u32>(arg_0.a, arg_1.a), vec2<u32>(arg_1.a, arg_1.a), false), select(vec2<u32>(arg_1.a, 1923u), vec2<u32>(11718u, arg_0.a), arg_2))));
    let var_1 = Struct_1(_wgslsmith_mult_u32(43715u, _wgslsmith_clamp_u32(arg_1.a, arg_0.a, firstLeadingBit(~arg_0.a))), select(!(!vec4<bool>(true, arg_3.x, arg_0.b.x, arg_3.x)), arg_1.b, min(reverseBits(arg_1.a), _wgslsmith_sub_u32(arg_1.a, 26221u)) == 1u));
    let var_2 = var_0;
    var var_3 = Struct_1(~(~_wgslsmith_mult_u32(var_0, 31268u) << (min(arg_1.a, _wgslsmith_add_u32(15915u, 1u)) % 32u)), vec4<bool>(true, true, !(!(true & var_1.b.x)), !arg_2));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-306f * -1368f)), _wgslsmith_f_op_f32(-1673f * -1262f), 1000f));
    return arg_1.a >> (1u % 32u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>) -> f32 {
    var var_0 = Struct_1(23388u, !(!vec4<bool>(false, true, all(vec3<bool>(true, true, true)), false)));
    var_0 = Struct_1(~_wgslsmith_mult_u32(4294967295u, min(arg_0.x, ~53696u)), !var_0.b);
    let var_1 = all(!vec3<bool>(all(vec3<bool>(var_0.b.x, true, var_0.b.x)), var_0.b.x, false));
    var_0 = Struct_1(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(~arg_0.yxx, firstLeadingBit(arg_0.xxy)), _wgslsmith_dot_vec3_u32(~arg_0.yyy, vec3<u32>(arg_0.x, 51472u, arg_0.x)) & 1u), !vec4<bool>(!var_1, !all(var_0.b), true, any(var_0.b.yw)));
    var var_2 = 1000f;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(531f - -1583f)))), false))));
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec4<u32>(38748u, firstLeadingBit(func_3(Struct_1(arg_0.a, arg_0.b), arg_0, arg_0.b.x, arg_0.b.yyw)), 40575u, ~(~0u)), -min(countOneBits(vec2<i32>(u_input.c, 34707i)), _wgslsmith_div_vec2_i32(u_input.b.xz, u_input.b.xz)))), -1000f);
    let var_1 = Struct_1(27230u, arg_0.b);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1108f, _wgslsmith_f_op_f32(-1951f - -2586f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1102f + -1517f))))) - _wgslsmith_div_f32(-466f, -557f));
    let var_2 = !vec4<bool>(~_wgslsmith_div_i32(u_input.a.x, -1i) < abs(2147483647i), !(!any(vec2<bool>(var_1.b.x, true))), false, !var_1.b.x);
    var var_3 = Struct_1(var_1.a, !select(arg_0.b, vec4<bool>(false, any(vec2<bool>(false, false)), true, u_input.d > u_input.b.x), !any(vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(-1159f)), -1000f, -1230f, -1276f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-804f, -888f, -144f, -640f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(614f, 827f, 1127f, -1119f)))))), vec4<bool>(var_1.b.x, !all(var_3.b.xzy), true, !var_3.b.x | !all(vec4<bool>(false, arg_0.b.x, false, var_2.x)))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(10871u, abs(31552u), abs(var_0.a)), ~(~vec3<u32>(103318u, arg_1.a, 1u))), !select(!select(arg_1.b, vec4<bool>(var_0.b.x, arg_1.b.x, arg_2.b.x, var_0.b.x), false), vec4<bool>(var_0.b.x, false, true, false), _wgslsmith_f_op_f32(select(arg_3.x, 1066f, arg_1.b.x)) <= _wgslsmith_f_op_f32(trunc(424f))));
    var_0 = arg_2;
    let var_1 = (vec3<i32>(firstTrailingBit(-u_input.b.x), -2147483647i, abs(-27185i)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a, 0u, arg_2.a), select(vec3<u32>(10799u, 78783u, arg_2.a), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.a, 1u), vec3<u32>(18591u, 47961u, arg_1.a)), vec3<bool>(var_0.b.x, arg_1.b.x, false)), ~vec3<u32>(4294967295u, 0u, 1u) & reverseBits(vec3<u32>(0u, 4294967295u, arg_1.a))) % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(83443u, 0u)), _wgslsmith_add_vec2_u32(select(vec2<u32>(arg_0, arg_2.a), vec2<u32>(96038u, arg_1.a), false), vec2<u32>(4294967295u, arg_1.a) ^ vec2<u32>(18325u, var_0.a))), _wgslsmith_mult_u32(func_3(Struct_1(56615u, arg_1.b), arg_2, arg_1.b.x, vec3<bool>(true, var_0.b.x, false)), ~4294967295u) << (abs(_wgslsmith_mult_u32(arg_1.a, 4294967295u)) % 32u), 50002u) % vec3<u32>(32u));
    return 679f <= _wgslsmith_f_op_f32(min(arg_3.x, 1404f));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, arg_2.a) & arg_1.wwz, arg_1.wzy), _wgslsmith_div_vec3_u32(vec3<u32>(89794u, 1u, 23218u), ~arg_1.zyx)), arg_1.xxx, vec3<u32>(~26154u, 1u, arg_1.x) << (abs(vec3<u32>(arg_1.x, arg_0.a, 4294967295u)) % vec3<u32>(32u)));
    let var_1 = vec3<bool>(select(false, arg_0.b.x, select(true, arg_2.b.x, true)), all(vec2<bool>(!arg_0.b.x, any(select(arg_2.b, arg_2.b, arg_0.b.x)))), arg_0.b.x);
    var var_2 = arg_1 >> (arg_1 % vec4<u32>(32u));
    var var_3 = var_2.wxx;
    let var_4 = Struct_1(4294967295u, vec4<bool>(all(select(vec3<bool>(var_1.x, true, false), select(vec3<bool>(arg_0.b.x, true, false), arg_0.b.yyz, vec3<bool>(false, false, false)), !arg_2.b.wyw)), func_5(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_1.x, arg_2.a), ~19996u), Struct_1(var_0.x, select(vec4<bool>(arg_0.b.x, true, arg_0.b.x, true), arg_2.b, arg_0.b)), Struct_1(4294967295u, arg_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(4294967295u, vec4<bool>(false, true, true, true)))))), !arg_2.b.x, any(select(select(arg_0.b, arg_0.b, false), arg_2.b, select(vec4<bool>(arg_2.b.x, false, arg_2.b.x, true), arg_0.b, false)))));
    return ~_wgslsmith_clamp_u32(arg_0.a, select(_wgslsmith_div_u32(arg_2.a, ~var_3.x), 1u, u_input.b.x < min(10848i, u_input.b.x)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(firstTrailingBit(1u), _wgslsmith_sub_u32(74158u, 1u)), countOneBits(arg_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = _wgslsmith_add_vec3_u32(select(vec3<u32>(~4716u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 79111u), vec4<u32>(27299u, 13768u, 1u, 100012u))), vec3<u32>(1u, 1u, 1u), all(vec3<bool>(var_0, var_0, var_0))), ~(~vec3<u32>(889u, 10135u, 48836u)) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 79295u), vec3<u32>(114376u, 4294967295u, 14581u), vec3<u32>(100181u, 0u, 0u)) >> (~vec3<u32>(82613u, 0u, 10673u) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), select(vec3<u32>(1u, firstLeadingBit(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 219u, 39241u), vec3<u32>(4294967295u, 44585u, 1u))), ~min(vec3<u32>(0u, 20270u, 1325u), vec3<u32>(20912u, 27201u, 3313u)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, var_0), var_0)));
    let var_2 = max(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(var_1.x, var_1.x, 19297u), vec3<u32>(var_1.x, 1u, 4294967295u)) << (countOneBits(vec3<u32>(var_1.x, var_1.x, var_1.x)) % vec3<u32>(32u)), vec3<u32>(var_1.x, var_1.x, var_1.x)), vec3<u32>(var_1.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1350u, 9469u, var_1.x), vec3<u32>(var_1.x, var_1.x, var_1.x)), 35118u)), vec3<u32>((var_1.x << (86169u % 32u)) & _wgslsmith_mod_u32(38576u, var_1.x), ~var_1.x ^ func_1(Struct_1(var_1.x, vec4<bool>(false, true, var_0, true)), vec4<u32>(0u, 0u, var_1.x, var_1.x), Struct_1(var_1.x, vec4<bool>(var_0, var_0, var_0, true))), func_1(Struct_1(var_1.x, vec4<bool>(true, true, false, var_0)), max(vec4<u32>(4294967295u, 32354u, 4294967295u, var_1.x), vec4<u32>(1u, 4294967295u, var_1.x, var_1.x)), Struct_1(var_1.x, vec4<bool>(var_0, true, false, true)))) ^ vec3<u32>(1266u, var_1.x, _wgslsmith_add_u32(var_1.x, func_1(Struct_1(17751u, vec4<bool>(false, false, false, var_0)), vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), Struct_1(var_1.x, vec4<bool>(true, true, true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -u_input.c, ~((_wgslsmith_div_u32(var_2.x, 22385u) & (var_1.x >> (var_1.x % 32u))) << (0u % 32u)));
}

