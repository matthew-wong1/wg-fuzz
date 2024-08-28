struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~19111u, 1u), ~reverseBits(45746u), 72149u), 0u, abs(~(~25891u))), vec3<u32>(1u, 1u, 1u));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1004f - -356f), _wgslsmith_f_op_f32(round(-1000f)))), -1469f, _wgslsmith_f_op_f32(abs(1196f)), 1913f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-398f, -916f, 908f, 177f) + vec4<f32>(-168f, -654f, -229f, -1363f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-389f, -301f, -791f, 1380f))))), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(any(vec2<bool>(false, false)), true, true, true))));
    let var_2 = Struct_1(vec3<u32>(4294967295u, var_0.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 34533u, 23736u, 0u), ~vec4<u32>(var_0.x, 30697u, var_0.x, 10232u))), all(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, false, true, false), true)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_0.x, var_0.x, 23179u), ~var_0.x, ~var_0.x) & ~(~vec3<u32>(65287u, var_0.x, 0u)), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(42431u, var_0.x)), ~countOneBits(0u), ~(~var_0.x))));
    let var_3 = select(vec4<u32>(_wgslsmith_sub_u32(~1u >> (_wgslsmith_mult_u32(var_0.x, var_0.x) % 32u), var_0.x), ~(~var_0.x), 1u, var_2.c.x >> (~10578u % 32u)), vec4<u32>(~var_2.a.x, _wgslsmith_dot_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(var_2.a.x, var_2.c.x, 0u, 1u))), countOneBits(~vec4<u32>(var_2.a.x, var_0.x, 64872u, var_0.x))), 1u, var_2.a.x), select(!(!select(vec4<bool>(var_2.b, false, var_2.b, var_2.b), vec4<bool>(var_2.b, false, var_2.b, var_2.b), var_2.b)), select(select(vec4<bool>(var_2.b, false, var_2.b, var_2.b), select(vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b), vec4<bool>(var_2.b, false, var_2.b, true), false), var_1.x >= -652f), vec4<bool>(false, any(vec4<bool>(false, false, var_2.b, false)), !var_2.b, all(vec3<bool>(true, var_2.b, var_2.b))), vec4<bool>(var_2.b, all(vec3<bool>(false, false, var_2.b)), var_2.b | false, 1u == var_2.a.x)), vec4<bool>(var_2.b, -1770i != _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, -1i), any(!vec4<bool>(var_2.b, false, false, var_2.b)), true)));
    var var_4 = false;
    return firstTrailingBit(reverseBits(~_wgslsmith_mod_u32(~var_3.x, var_0.x)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(~vec3<u32>(1u, func_3(), _wgslsmith_div_u32(0u, ~arg_0.a.x)), arg_0.a.x <= _wgslsmith_mult_u32(max(69925u, arg_0.a.x) << ((0u >> (arg_2.a.x % 32u)) % 32u), 1u), _wgslsmith_clamp_vec3_u32(~firstTrailingBit(~arg_0.a), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 79374u)), _wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(arg_0.a.x, 1u, arg_2.c.x)), arg_2.c.x), ~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 58031u, arg_0.c.x), vec3<u32>(1u, arg_0.c.x, arg_0.c.x)))));
    var_0 = Struct_1(abs(_wgslsmith_add_vec3_u32(abs(vec3<u32>(arg_2.a.x, arg_0.c.x, var_0.a.x)) << (reverseBits(vec3<u32>(var_0.c.x, 55026u, arg_0.a.x)) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_u32(arg_0.c, arg_2.c))), select(true, -486f == _wgslsmith_f_op_f32(trunc(arg_1)), var_0.b), vec3<u32>(~arg_2.c.x | var_0.c.x, reverseBits(_wgslsmith_mult_u32(0u, 6960u)), var_0.c.x) ^ reverseBits(arg_0.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-619f, 301f)) - vec2<f32>(_wgslsmith_div_f32(368f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, arg_1)) + arg_1)), _wgslsmith_f_op_f32(max(464f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-156f)))))));
    var var_2 = arg_2;
    var var_3 = Struct_1(abs(min(var_2.a, ~vec3<u32>(0u, arg_0.c.x, 16348u))), true, var_2.c);
    return ~1u;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~(-firstLeadingBit(u_input.a.xx));
    var var_1 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(select(u_input.a.wxx, vec3<i32>(u_input.a.x, var_0.x, -2147483647i), vec3<bool>(false, true, true)), -vec3<i32>(var_0.x, var_0.x, u_input.a.x)), vec3<i32>(1i, abs(2147483647i), _wgslsmith_dot_vec3_i32(u_input.a.yzz, u_input.a.wwx))), _wgslsmith_mod_i32(var_0.x, -2147483647i));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(u_input.a.yyz, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i))), abs(-2147483647i), -73328i), reverseBits(abs(u_input.a.x) << (_wgslsmith_mult_u32(arg_0.c.x, arg_0.a.x) % 32u)), max(u_input.a.x, 45109i)), vec4<i32>(u_input.a.x, i32(-1i) * -(i32(-1i) * -1i), u_input.a.x, firstLeadingBit(-8062i)));
    var var_1 = Struct_1(arg_0.c, !(!arg_1.b), ~(vec3<u32>(arg_0.c.x, ~arg_1.a.x, firstLeadingBit(arg_0.a.x)) << (arg_1.c % vec3<u32>(32u))));
    var var_2 = _wgslsmith_sub_vec2_u32(firstLeadingBit(arg_0.c.xy), vec2<u32>(abs(arg_0.a.x >> (_wgslsmith_div_u32(4294967295u, 4294967295u) % 32u)), 1239u));
    let var_3 = arg_0;
    var_1 = Struct_1(vec3<u32>(~var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.a.x, arg_1.c.x) << (~vec4<u32>(arg_0.a.x, 78607u, var_3.a.x, var_2.x) % vec4<u32>(32u)), ~(vec4<u32>(arg_1.a.x, 4294967295u, arg_0.c.x, 1u) & vec4<u32>(arg_0.c.x, var_3.c.x, 0u, 119849u))), firstTrailingBit(func_2(arg_1, _wgslsmith_f_op_f32(426f * 1587f), var_3))), arg_1.b, var_1.a ^ reverseBits(select(arg_0.c, vec3<u32>(59615u, arg_0.c.x, 49568u), any(vec2<bool>(arg_1.b, true)))));
    return arg_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>) -> bool {
    var var_0 = ~(~vec4<u32>(1u, 1u, 1u, 1u));
    var_0 = vec4<u32>(var_0.x, ~_wgslsmith_add_u32(14427u, var_0.x), ~var_0.x, 1u);
    var_0 = vec4<u32>(~(~(~(~var_0.x))), var_0.x, ~49944u, abs(22998u));
    var var_1 = func_5(func_4(Struct_1(vec3<u32>(4294967295u, func_2(Struct_1(var_0.wxx, false, vec3<u32>(0u, var_0.x, var_0.x)), arg_1.x, Struct_1(vec3<u32>(var_0.x, var_0.x, var_0.x), true, vec3<u32>(1u, var_0.x, var_0.x))), 1u), all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), ~(vec3<u32>(var_0.x, 0u, var_0.x) >> (var_0.wyw % vec3<u32>(32u)))), any(vec4<bool>(all(vec4<bool>(arg_0.x, true, arg_0.x, false)), !arg_0.x, !arg_0.x, all(vec2<bool>(true, arg_0.x)))), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 9719u, var_0.x), vec3<u32>(21038u, var_0.x, 13482u)), arg_0.x, vec3<u32>(var_0.x, var_0.x, 1u) & var_0.yzz)), Struct_1(var_0.wyw, !(!arg_0.x), func_4(func_4(func_4(Struct_1(vec3<u32>(36275u, 26759u, 1u), arg_0.x, var_0.zyx), arg_0.x, Struct_1(var_0.xwz, false, var_0.yxz)), true, func_4(Struct_1(var_0.ywy, arg_0.x, var_0.zww), arg_0.x, Struct_1(vec3<u32>(1u, 15710u, var_0.x), false, vec3<u32>(14078u, 10550u, 0u)))), arg_0.x, Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 0u, 0u), var_0.xxz), any(vec2<bool>(true, true)), ~vec3<u32>(0u, 1023u, var_0.x))).c));
    let var_2 = vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(-2147483647i), u_input.a.x), vec2<i32>(u_input.a.x >> (var_1.c.x % 32u), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))), _wgslsmith_sub_i32(-26848i, _wgslsmith_add_i32(-35466i, _wgslsmith_sub_i32(u_input.a.x, -u_input.a.x))));
    return select(func_5(func_4(func_5(Struct_1(var_1.c, false, vec3<u32>(var_1.a.x, 22813u, 0u)), Struct_1(var_1.a, true, vec3<u32>(1342u, 11788u, var_0.x))), true | arg_0.x, Struct_1(var_1.a, arg_0.x, vec3<u32>(50881u, 4294967295u, var_1.a.x))), Struct_1(vec3<u32>(75007u, 137369u, 0u) << (vec3<u32>(var_0.x, var_1.c.x, 4294967295u) % vec3<u32>(32u)), true, vec3<u32>(var_1.c.x, var_1.a.x, 2781u))).b & true, func_5(func_5(func_4(func_5(Struct_1(vec3<u32>(4294967295u, 4294967295u, var_1.c.x), false, var_0.zwy), Struct_1(vec3<u32>(19192u, 62919u, 1u), false, vec3<u32>(var_0.x, 39756u, 0u))), var_1.b, Struct_1(var_0.wzw, var_1.b, vec3<u32>(0u, 1u, var_1.c.x))), func_5(Struct_1(var_1.c, true, vec3<u32>(4294967295u, 0u, 8767u)), Struct_1(var_0.yxy, arg_0.x, var_0.wzw))), Struct_1(abs(vec3<u32>(43620u, var_0.x, 4294967295u)), false, var_1.a | abs(var_1.a))).b, any(vec3<bool>(-9177i > var_2.x, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, true, func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-209f, 1055f, 240f, 631f), vec4<f32>(-793f, 1388f, -296f, 837f)))))), false);
    var var_1 = _wgslsmith_f_op_f32(1000f - -1259f);
    var var_2 = vec3<i32>(abs(-2147483647i), reverseBits(_wgslsmith_sub_i32(~(~(-2147483647i)), abs(u_input.a.x) | firstLeadingBit(u_input.a.x))), -u_input.a.x);
    let var_3 = vec3<u32>(~(~_wgslsmith_clamp_u32(9034u, 1u, 4294967295u)), _wgslsmith_mod_u32(~40966u >> (1u % 32u), ~(~4294967295u)), ~4294967295u) & firstTrailingBit(vec3<u32>(1u, 1u, 1u));
    var var_4 = u_input.a.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1358f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(230f))))));
    let var_5 = -_wgslsmith_add_vec4_i32(min(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-22274i, var_2.x, -15864i, u_input.a.x)), _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(-71701i, -1i, 21352i, u_input.a.x), u_input.a)), vec4<i32>(2147483647i, _wgslsmith_div_i32(var_2.x, 1i), firstTrailingBit(u_input.a.x), var_2.x)), u_input.a);
    let var_6 = func_4(Struct_1(abs(vec3<u32>(0u, var_3.x, 4294967295u) << (~var_3 % vec3<u32>(32u))), false, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_3.x, 43058u), func_4(Struct_1(var_3, false, vec3<u32>(34774u, 21704u, var_3.x)), false, Struct_1(var_3, var_0.x, var_3)).c) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_3.x, 4294967295u), ~var_3, vec3<u32>(var_3.x, var_3.x, 32604u))), true, func_4(Struct_1(max(~var_3, vec3<u32>(0u, var_3.x, var_3.x)), any(!var_0.xz), ~vec3<u32>(var_3.x, 17585u, 20960u)), !func_5(Struct_1(var_3, false, vec3<u32>(var_3.x, var_3.x, var_3.x)), func_4(Struct_1(vec3<u32>(var_3.x, 0u, var_3.x), var_0.x, var_3), true, Struct_1(var_3, var_0.x, vec3<u32>(4294967295u, 45157u, var_3.x)))).b, Struct_1(vec3<u32>(var_3.x, var_3.x, var_3.x), var_0.x, _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(6901u, 1u, 46007u)), reverseBits(vec3<u32>(var_3.x, 1u, 8073u)), var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_6.c.x, 1u), var_3), countOneBits(reverseBits(var_3.x))), select(max(var_6.a.xz, vec2<u32>(var_6.c.x, var_3.x)), (vec2<u32>(var_3.x, var_3.x) >> (vec2<u32>(var_3.x, var_6.a.x) % vec2<u32>(32u))) | _wgslsmith_add_vec2_u32(vec2<u32>(52451u, var_3.x), var_3.xx), var_0.yx)), ~vec4<u32>(~(~27455u), _wgslsmith_div_u32(1u, ~var_3.x), var_6.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_6.c.x, 17573u, var_3.x, 4294967295u), vec4<u32>(var_3.x, var_6.a.x, var_6.c.x, var_6.c.x) << (vec4<u32>(var_3.x, var_6.a.x, var_6.a.x, var_6.a.x) % vec4<u32>(32u)))));
}

