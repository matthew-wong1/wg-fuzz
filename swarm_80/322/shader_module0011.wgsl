struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_2(Struct_1(vec2<u32>(countOneBits(arg_2.c.a.x), 0u), ~(~arg_2.c.b) ^ max(vec4<u32>(1u, 33593u, arg_1, arg_1), vec4<u32>(18108u, arg_0, 4294967295u, 17655u)), vec2<u32>(4294967295u ^ arg_0, arg_1) & (countOneBits(arg_2.d.c) >> (vec2<u32>(4294967295u, arg_1) % vec2<u32>(32u)))), any(!(!select(vec2<bool>(false, arg_2.b), vec2<bool>(arg_2.b, arg_2.b), false))), arg_2.a, arg_2.d);
    var var_1 = u_input.a.x;
    var_0 = arg_2;
    return 0u;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = any(!(!vec2<bool>(arg_0.x, true)));
    var var_1 = select(arg_0, !vec4<bool>(var_0, all(vec2<bool>(true, true)), !all(arg_0), var_0), vec4<bool>(true, true, true, true));
    var_1 = select(!select(select(vec4<bool>(var_1.x, false, true, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), false), arg_0, arg_0), vec4<bool>(true, true, var_0, !(false || (var_1.x == false))), vec4<bool>(false, true, true, !(!arg_0.x) | !select(true, true, false)));
    let var_2 = -2130f;
    let var_3 = Struct_2(Struct_1(countOneBits(vec2<u32>(u_input.c, func_3(u_input.c, u_input.c, Struct_2(Struct_1(vec2<u32>(4294967295u, u_input.c), vec4<u32>(u_input.c, 0u, 4294967295u, 28178u), vec2<u32>(u_input.c, u_input.c)), var_0, Struct_1(vec2<u32>(u_input.c, 4294967295u), vec4<u32>(0u, u_input.c, 37895u, 105624u), vec2<u32>(u_input.c, 18025u)), Struct_1(vec2<u32>(u_input.c, u_input.c), vec4<u32>(0u, 1u, u_input.c, 0u), vec2<u32>(u_input.c, u_input.c)))))), vec4<u32>(1u, 26108u, u_input.c, select(func_3(u_input.c, 39951u, Struct_2(Struct_1(vec2<u32>(20873u, u_input.c), vec4<u32>(0u, 58561u, 10623u, u_input.c), vec2<u32>(u_input.c, 1u)), true, Struct_1(vec2<u32>(u_input.c, u_input.c), vec4<u32>(0u, 4294967295u, u_input.c, 4294967295u), vec2<u32>(u_input.c, 1u)), Struct_1(vec2<u32>(9416u, 1u), vec4<u32>(u_input.c, u_input.c, 39865u, 3422u), vec2<u32>(0u, u_input.c)))), 28177u, false & var_0)), _wgslsmith_sub_vec2_u32((vec2<u32>(u_input.c, 6560u) & vec2<u32>(1u, 127891u)) | ~vec2<u32>(u_input.c, 25736u), select(vec2<u32>(1799u, 54947u), vec2<u32>(7528u, u_input.c), true) ^ select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 79201u), vec2<bool>(true, true)))), any(select(arg_0, vec4<bool>(arg_0.x, false, all(arg_0), arg_0.x), vec4<bool>(var_0, arg_0.x, false, true))), Struct_1((~vec2<u32>(u_input.c, 49292u) << (~vec2<u32>(1u, 0u) % vec2<u32>(32u))) ^ ~vec2<u32>(3141u, u_input.c), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 42736u, 0u, u_input.c), vec4<u32>(u_input.c, u_input.c, 4294967295u, 16818u))), countOneBits(_wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.c, 1u), vec2<u32>(61529u, u_input.c), arg_0.x), vec2<u32>(u_input.c, u_input.c)))), Struct_1(max(~vec2<u32>(u_input.c, 4294967295u) | vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.c, 24793u) | ~vec2<u32>(u_input.c, u_input.c)), _wgslsmith_add_vec4_u32(~vec4<u32>(39382u, u_input.c, 1u, u_input.c), ~select(vec4<u32>(43037u, u_input.c, u_input.c, u_input.c), vec4<u32>(0u, u_input.c, u_input.c, 1u), vec4<bool>(var_0, false, var_0, var_1.x))), vec2<u32>(u_input.c, reverseBits(~u_input.c))));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    return func_2(select(vec4<bool>(!(16657u >= u_input.c), true, func_2(vec4<bool>(false, false, arg_2.b, arg_1.b)).b, !all(vec3<bool>(true, arg_1.b, false))), vec4<bool>(all(select(vec4<bool>(arg_1.b, true, true, true), vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_1.b), arg_1.b)), true, arg_2.d.b.x < ~14424u, !select(arg_1.b, arg_2.b, arg_2.b)), !(arg_2.b || all(vec4<bool>(false, true, true, true))))).a;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = vec2<bool>(!all(!vec3<bool>(arg_0, arg_0, false)), false);
    let var_1 = u_input.a.x;
    let var_2 = func_4(Struct_1(abs(~vec2<u32>(u_input.c, u_input.c)), reverseBits(countOneBits(vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u) | vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))), vec2<u32>(u_input.c, u_input.c)), func_2(!vec4<bool>(var_0.x, arg_0 != true, any(vec2<bool>(false, false)), false)), Struct_2(Struct_1(func_2(!vec4<bool>(false, arg_0, arg_0, var_0.x)).a.b.yz, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), reverseBits(vec4<u32>(56042u, 1u, 0u, 44162u))), func_2(select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(arg_0, arg_0, var_0.x, false), vec4<bool>(true, true, var_0.x, true))).c.c), var_0.x, func_2(vec4<bool>(select(true, arg_0, arg_0), true, arg_0 & true, arg_0)).a, Struct_1(~(~vec2<u32>(u_input.c, 1u)), ~(vec4<u32>(u_input.c, 4294967295u, 50289u, 73570u) ^ vec4<u32>(u_input.c, u_input.c, u_input.c, 6871u)), vec2<u32>(59937u, u_input.c) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(4294967295u, 1u)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1572f, 2645f, !(true || arg_0))));
    var var_4 = ~(~(~u_input.c));
    return Struct_1(~_wgslsmith_div_vec2_u32(~(~vec2<u32>(4644u, 1u)), func_2(select(vec4<bool>(false, arg_0, false, var_0.x), vec4<bool>(var_0.x, arg_0, arg_0, false), vec4<bool>(false, true, var_0.x, false))).c.b.zy), countOneBits(var_2.b), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_div_u32(4294967295u, 15262u)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.b.x, var_2.b.x), var_2.c), vec2<u32>(var_2.a.x, 0u)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = i32(-1i) * -u_input.b.x;
    var var_1 = i32(-1i) * -26603i;
    let var_2 = func_2(select(!vec4<bool>(!arg_3, true, arg_3, all(vec2<bool>(arg_3, false))), !(!(!vec4<bool>(arg_3, false, false, arg_3))), !(_wgslsmith_f_op_f32(floor(arg_2)) != _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_1 = ~(-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(1i, -573i, -1i, u_input.d.x)), ~vec4<i32>(u_input.a.x, u_input.d.x, u_input.a.x, 12307i)), i32(-1i) * -2147483647i));
    let var_3 = u_input.a.x;
    return func_1(!(!(arg_3 & false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = Struct_2(func_5(func_1(!(u_input.d.x < 20547i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -260f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1420f - -781f) - _wgslsmith_f_op_f32(-406f * 1304f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-679f - 153f)) + 1000f), 1u != (u_input.c << (~36501u % 32u))), true, Struct_1(~_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 39440u), ~vec2<u32>(9329u, u_input.c)), firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 2130u), vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u), vec4<u32>(u_input.c, u_input.c, u_input.c, 43069u)), ~vec4<u32>(4294967295u, u_input.c, u_input.c, 57890u))), ~func_5(Struct_1(vec2<u32>(u_input.c, u_input.c), vec4<u32>(29474u, 4294967295u, u_input.c, u_input.c), vec2<u32>(u_input.c, 0u)), -1060f, 402f, true).c), func_5(func_1(any(vec4<bool>(true, false, true, false)) && true), -114f, 1987f, all(vec3<bool>(true, true, false))));
    var var_2 = u_input.c;
    var_2 = 1u;
    var var_3 = Struct_1(countOneBits(var_1.a.b.wx), _wgslsmith_add_vec4_u32(func_1(!var_1.b).b, ~max(vec4<u32>(u_input.c, 52549u, var_1.c.a.x, 3202u), ~vec4<u32>(4294967295u, 0u, 0u, var_1.c.a.x))), vec2<u32>(_wgslsmith_clamp_u32(~var_1.d.b.x, func_3(u_input.c, reverseBits(9791u), func_2(vec4<bool>(true, var_1.b, false, var_1.b))), ~(~34467u)), ~(~16966u)));
    let var_4 = ~var_3.c.x;
    var var_5 = vec3<u32>(9454u, _wgslsmith_sub_u32(0u, 0u), var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(716f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f) + _wgslsmith_f_op_f32(max(-154f, _wgslsmith_f_op_f32(f32(-1f) * -1201f)))))), max(u_input.b, abs(vec4<i32>(var_0 >> (u_input.c % 32u), u_input.d.x, abs(49976i), firstLeadingBit(-20937i)))), select(var_4, ~(~28256u | var_1.d.a.x), var_1.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1250f * 191f), -1000f, 1f, -423f)), vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-661f + -109f) + _wgslsmith_f_op_f32(abs(-455f))), _wgslsmith_f_op_f32(round(-296f)), _wgslsmith_f_op_f32(select(269f, -779f, true))), !var_1.b & all(!vec2<bool>(true, var_1.b)))));
}

