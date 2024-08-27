struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = vec2<u32>(4294967295u, ~u_input.b);
    let var_1 = _wgslsmith_sub_vec3_i32(~(~(~vec3<i32>(-1i, 1i, 2147483647i))), ~countOneBits(select(vec3<i32>(1i, -1i, -2147483647i), vec3<i32>(-18397i, -61940i, 114673i), false))) << (vec3<u32>(35583u, ~_wgslsmith_mod_u32(~var_0.x, u_input.b), firstTrailingBit(select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1459u, u_input.a), vec3<u32>(var_0.x, u_input.b, u_input.b)), true))) % vec3<u32>(32u));
    var_0 = vec2<u32>(4294967295u, ~u_input.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1520f, 1650f)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(300f, 1009f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-658f, 1496f)), _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-790f, -930f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 529f), vec2<f32>(-206f, 728f), true))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(1058f)), _wgslsmith_f_op_f32(trunc(1906f))))))));
    var_0 = vec2<u32>(~(~_wgslsmith_sub_u32(var_0.x, 0u) >> (~(u_input.a ^ 8808u) % 32u)), ~(~(~1u)));
    return vec2<i32>(0i, _wgslsmith_sub_i32(22912i, firstTrailingBit(max(var_1.x | 1i, var_1.x))));
}

fn func_2() -> vec2<f32> {
    var var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.a), vec3<u32>(u_input.b, u_input.a, 5217u)) & vec3<u32>(u_input.b | u_input.a, _wgslsmith_clamp_u32(40128u, 139665u, u_input.a), firstTrailingBit(0u)), ~(vec3<u32>(4294967295u, u_input.b, 4294967295u) ^ select(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(4294967295u, u_input.b, u_input.a), true)));
    var var_1 = Struct_1(!(all(vec2<bool>(true, true)) && all(vec2<bool>(true, true))), _wgslsmith_mod_vec2_i32(func_3(), vec2<i32>(reverseBits(2147483647i), ~(-25683i))) & _wgslsmith_div_vec2_i32(vec2<i32>(~1i, -46830i), abs(select(vec2<i32>(-32556i, 2147483647i), vec2<i32>(-2147483647i, 2147483647i), vec2<bool>(false, true)))), ~u_input.a, ~(~vec4<u32>(min(u_input.a, u_input.a), u_input.b | 16425u, ~u_input.a, ~2726u)));
    var var_2 = -2275f;
    let var_3 = var_1.d.yzw;
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1455f * -268f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(-1014f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-702f, 374f, 1569f))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1122f)))), _wgslsmith_f_op_f32(select(-1000f, -781f, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(min(-2227f, _wgslsmith_f_op_f32(181f - -2808f)))))), select(vec3<bool>(true, abs(var_1.b.x) >= var_1.b.x, false), select(!vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(any(vec2<bool>(false, var_1.a)), all(vec2<bool>(var_1.a, true)), var_1.a), var_1.a), countOneBits(~var_1.b.x) != var_1.b.x)));
    return _wgslsmith_f_op_vec2_f32(var_4.zz - var_4.zz);
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: f32) -> u32 {
    let var_0 = 165f;
    var var_1 = arg_0;
    let var_2 = vec2<bool>((!(0u != u_input.b) && !all(vec2<bool>(arg_0, true))) == !arg_0, !arg_0);
    var_1 = true;
    var var_3 = Struct_1(var_2.x, vec2<i32>(22191i, ~_wgslsmith_div_i32(~1i, 1i)), min(_wgslsmith_div_u32(71286u, 4294967295u), arg_1.x), vec4<u32>(u_input.b, countOneBits(~arg_1.x), 5230u, u_input.b) >> ((firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a, arg_1.x), vec4<u32>(u_input.a, 27798u, arg_1.x, 46966u))) >> ((vec4<u32>(arg_1.x, arg_1.x, u_input.b, u_input.a) | ~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 317u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return (arg_1.x & var_3.c) ^ 1u;
}

fn func_5(arg_0: u32) -> f32 {
    let var_0 = Struct_1(false, abs(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i) >> (vec2<u32>(arg_0, 23851u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-20748i, -9036i), vec2<i32>(-17843i, -2147483647i))), 2147483647i)), reverseBits(8529u), abs(~((vec4<u32>(u_input.b, u_input.b, 40187u, 0u) & vec4<u32>(0u, u_input.b, 1u, arg_0)) >> (firstTrailingBit(vec4<u32>(arg_0, u_input.b, 1u, arg_0)) % vec4<u32>(32u)))));
    var var_1 = Struct_1(all(vec3<bool>(true, select(var_0.a, true, any(vec2<bool>(var_0.a, true))), var_0.a)), abs(vec2<i32>(1i, reverseBits(2147483647i))), func_4(true, (abs(var_0.d.xzy) << ((var_0.d.xww & var_0.d.wwx) % vec3<u32>(32u))) ^ vec3<u32>(~var_0.c, ~1627u, 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(405f, -1059f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f) - _wgslsmith_div_f32(_wgslsmith_div_f32(497f, -323f), _wgslsmith_f_op_f32(ceil(235f))))), var_0.d >> ((var_0.d >> (~(~var_0.d) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_1 = Struct_1(!all(!vec4<bool>(var_0.a, var_1.a, var_1.a, false)), vec2<i32>(var_0.b.x, countOneBits(firstTrailingBit(var_1.b.x))) | ~(var_0.b ^ var_0.b), ~var_1.c, _wgslsmith_sub_vec4_u32(var_1.d, select(vec4<u32>(var_1.c, 4294967295u, func_4(var_0.a, vec3<u32>(var_1.d.x, 5742u, arg_0), vec2<f32>(-1442f, 242f), -972f), _wgslsmith_mod_u32(10470u, 1u)), ~(vec4<u32>(arg_0, 65219u, u_input.a, var_0.c) & vec4<u32>(var_1.c, var_0.c, 50562u, 43519u)), var_0.a)));
    var var_2 = max(-vec3<i32>(var_0.b.x, var_0.b.x, ~select(-22222i, var_1.b.x, var_0.a)), select(select(vec3<i32>(firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(var_0.b.x, 1i), ~var_1.b.x), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(1i, 51666i, var_0.b.x)), vec3<i32>(2147483647i, var_0.b.x, -1i)), true), ~(~vec3<i32>(-5480i, 56889i, 42700i) << (var_0.d.yww % vec3<u32>(32u))), any(select(select(vec2<bool>(false, var_1.a), vec2<bool>(var_1.a, false), vec2<bool>(true, var_0.a)), vec2<bool>(true, var_1.a), false))));
    var_2 = -vec3<i32>(reverseBits(var_2.x), var_1.b.x, -1i);
    return _wgslsmith_f_op_f32(684f * 1f);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_clamp_i32(arg_0.d.b.x, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(2147483647i), arg_0.d.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), arg_0.d.b)), -min(vec3<i32>(-35005i, -1i, arg_0.d.b.x), vec3<i32>(1i, 0i, arg_0.d.b.x))) & countOneBits((0i << (u_input.b % 32u)) << (35343u % 32u)));
    var var_1 = arg_0.c;
    let var_2 = _wgslsmith_f_op_f32(func_5(func_4(!arg_2.x, vec3<u32>(_wgslsmith_sub_u32(arg_1.x, arg_1.x | 1u), arg_0.d.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, arg_0.d.c), abs(arg_0.d.d.xwx))), _wgslsmith_f_op_vec2_f32(func_2()), arg_0.c.x)));
    var var_3 = arg_0.c.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, var_1.x, arg_0.c.x, _wgslsmith_f_op_f32(-var_1.x)))))));
    return 753f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -463f))), _wgslsmith_f_op_f32(func_1(Struct_2(vec2<bool>(false, false), vec4<f32>(-582f, 112f, -906f, 2272f), vec2<f32>(1133f, 808f), Struct_1(false, vec2<i32>(0i, -13679i), u_input.a, vec4<u32>(9920u, 26793u, 1u, u_input.b))), vec2<u32>(u_input.b, u_input.b), vec4<bool>(true, true, true, true))))));
    var_0 = vec2<f32>(-1514f, var_0.x);
    var var_1 = Struct_1(!(all(vec4<bool>(false, false, false, false)) || true), _wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(firstTrailingBit(2147483647i)), 1i), vec2<i32>(1i, _wgslsmith_sub_i32(-1i, 19324i) & _wgslsmith_dot_vec2_i32(vec2<i32>(14862i, -3885i), vec2<i32>(-1444i, 2147483647i)))), min(38891u, ~14000u), vec4<u32>(_wgslsmith_add_u32(u_input.b, _wgslsmith_div_u32(abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(105660u, u_input.b), vec2<u32>(u_input.b, 4294967295u)))), countOneBits(25113u >> (1u % 32u)), _wgslsmith_add_u32(func_4(any(vec3<bool>(true, true, true)), ~vec3<u32>(u_input.b, u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_f32(func_5(u_input.a))), 1u), u_input.a));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(-281f, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(abs(var_0.x))) + -1146f)));
    var var_3 = Struct_1(var_1.a, var_1.b, u_input.a, _wgslsmith_mod_vec4_u32(~(var_1.d | var_1.d), ~abs(var_1.d)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<bool>(var_1.a, false), vec4<f32>(var_2.x, -785f, 2494f, var_0.x), vec2<f32>(-411f, -1646f), Struct_1(true, vec2<i32>(var_1.b.x, var_3.b.x), var_1.d.x, vec4<u32>(93229u, u_input.b, 55758u, var_1.d.x))), vec2<u32>(var_1.d.x, 4294967295u), select(vec4<bool>(false, var_3.a, var_1.a, var_1.a), vec4<bool>(false, true, false, var_1.a), vec4<bool>(var_1.a, false, true, var_3.a)))), var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(978f + -554f) * _wgslsmith_div_f32(-1000f, var_2.x)))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(var_0.x * 380f)), _wgslsmith_f_op_vec2_f32(func_2())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))), vec2<bool>(true, all(select(vec3<bool>(false, var_3.a, var_1.a), vec3<bool>(false, true, var_3.a), vec3<bool>(false, false, var_3.a)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-784f, var_0.x))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -254f), vec2<f32>(var_0.x, var_0.x)), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 1069f) - vec2<f32>(var_2.x, 607f)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -192f), vec2<f32>(-1077f, var_0.x))))))));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -1242f, var_0.x), vec3<f32>(var_2.x, var_0.x, var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x)), true))))), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b.x, -1i, -53401i), ~vec3<i32>(var_1.b.x, var_3.b.x, 13984i)), 1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(21937i, var_3.b.x, var_3.b.x), vec3<i32>(1478i, 0i, var_1.b.x))), var_2.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), var_0.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, var_2.x), vec2<f32>(917f, var_2.x)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(711f, var_2.x) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, var_0.x)))))));
}

