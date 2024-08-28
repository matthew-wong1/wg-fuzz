struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1149f, -1271f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-964f, -1305f) * vec2<f32>(464f, -2703f)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(331f, -1000f), vec2<f32>(556f, -470f)))))), (select(vec4<i32>(u_input.a, u_input.a, -6328i, -1184i), reverseBits(vec4<i32>(u_input.a, 17469i, u_input.a, -34732i)), any(vec2<bool>(false, true))) | _wgslsmith_mult_vec4_i32(vec4<i32>(-16722i, u_input.a, u_input.a, 1i) | vec4<i32>(u_input.a, u_input.a, -34373i, -51177i), _wgslsmith_div_vec4_i32(vec4<i32>(11669i, -2147483647i, 7522i, u_input.a), vec4<i32>(1i, 0i, u_input.a, 37449i)))) & reverseBits(reverseBits(-vec4<i32>(u_input.a, -2147483647i, 24i, u_input.a))));
    let var_1 = countOneBits(~(select(vec3<i32>(19185i, u_input.a, u_input.a) | var_0.b.zxw, firstTrailingBit(vec3<i32>(var_0.b.x, u_input.a, u_input.a)), true) | -var_0.b.wyz));
    let var_2 = any(!vec3<bool>((2147483647i == var_0.b.x) && true, true, select(all(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, true, true)), any(vec4<bool>(false, false, false, true)))));
    let var_3 = _wgslsmith_mod_vec4_i32(var_0.b, vec4<i32>(1i, var_0.b.x, ~(-var_0.b.x), _wgslsmith_clamp_i32(reverseBits(-1i), -1i, -1i ^ u_input.a))) & -(~firstTrailingBit(vec4<i32>(var_0.b.x, -20921i, 2197i, 5161i)) << (~min(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 5066u), vec4<u32>(14093u, u_input.c.x, u_input.d.x, 0u)) % vec4<u32>(32u)));
    let var_4 = var_0;
    return vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1740f), 1f))), _wgslsmith_f_op_f32(min(var_4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool) -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, 620f, arg_1, arg_1))) + _wgslsmith_f_op_vec4_f32(func_3())) - vec4<f32>(829f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(1421f))), -583f, _wgslsmith_f_op_f32(f32(-1f) * -1564f))), Struct_1(vec2<f32>(_wgslsmith_div_f32(arg_1, 259f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-430f)) * _wgslsmith_f_op_f32(-arg_1))), countOneBits((vec4<i32>(-2147483647i, u_input.a, 58658i, -6748i) << (u_input.c % vec4<u32>(32u))) >> (select(vec4<u32>(18567u, u_input.b, 69674u, 4294967295u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u), vec4<bool>(arg_2, false, false, true)) % vec4<u32>(32u)))), 4294967295u, select(min(~select(vec2<u32>(u_input.d.x, u_input.d.x), u_input.c.zw, vec2<bool>(arg_2, arg_2)), u_input.c.xx), u_input.c.xy, !any(vec3<bool>(true, false, arg_2))), (arg_1 < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_1))))) & any(!select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(true, false, arg_2), vec3<bool>(true, arg_2, true))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a.x * 130f) - _wgslsmith_f_op_f32(469f * 1499f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.a.x, arg_1))), -1393f), var_0.a)), Struct_1(_wgslsmith_f_op_vec2_f32(abs(var_0.a.yz)), abs(~select(var_0.b.b, var_0.b.b, vec4<bool>(var_0.e, false, arg_2, false)))), var_0.c, _wgslsmith_add_vec2_u32(select(reverseBits(u_input.c.ww), vec2<u32>(var_0.c, select(u_input.b, u_input.d.x, arg_2)), false), var_0.d), true);
    let var_1 = var_0.b;
    var var_2 = var_0.b;
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 1000f, -284f, arg_1), var_0.a), _wgslsmith_f_op_vec4_f32(-var_0.a)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -954f), 173f, _wgslsmith_f_op_f32(-229f * var_0.a.x), -1811f))), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.b.a), var_1.b), ~u_input.b, var_0.d, ~((var_0.d.x | var_0.d.x) & 25409u) <= 1u);
    return vec4<f32>(_wgslsmith_f_op_f32(step(-2167f, var_0.a.x)), _wgslsmith_f_op_f32(min(-464f, _wgslsmith_f_op_f32(-var_1.a.x))), 335f, var_2.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<f32> {
    var var_0 = vec3<bool>(false, !arg_0.e, any(select(!(!vec3<bool>(arg_0.e, arg_0.e, true)), !vec3<bool>(arg_0.e, false, arg_0.e), arg_0.e)));
    let var_1 = all(select(!vec3<bool>(false, false, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x))), select(select(!vec3<bool>(arg_0.e, var_0.x, arg_0.e), select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, arg_0.e, arg_0.e), false), select(vec3<bool>(false, true, var_0.x), vec3<bool>(arg_0.e, var_0.x, var_0.x), true)), !(!vec3<bool>(false, false, arg_0.e)), vec3<bool>(true, !arg_0.e, arg_0.e || true)), !select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, var_0.x), vec3<bool>(arg_0.e, arg_0.e, var_0.x), vec3<bool>(arg_0.e, false, arg_0.e)), vec3<bool>(arg_0.e, false, arg_0.e))));
    var_0 = !vec3<bool>(true, _wgslsmith_div_u32(abs(0u), ~arg_1.x) == _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.x, arg_0.d.x), vec2<u32>(arg_1.x, arg_1.x)), select(arg_0.e, var_1, false));
    var_0 = select(select(select(vec3<bool>(arg_0.e, var_1, true), select(!vec3<bool>(var_0.x, var_1, var_1), vec3<bool>(arg_0.e, arg_0.e, arg_0.e), select(vec3<bool>(var_0.x, var_0.x, arg_0.e), vec3<bool>(true, true, true), vec3<bool>(var_1, true, var_0.x))), vec3<bool>(any(vec4<bool>(true, arg_0.e, var_1, false)), true, all(vec3<bool>(var_0.x, false, var_0.x)))), vec3<bool>(true, var_1, var_0.x), arg_0.e), vec3<bool>(false, true, true), false);
    var_0 = vec3<bool>(true, any(select(!vec4<bool>(true, var_1, var_0.x, false), vec4<bool>(false, 16067u != u_input.d.x, var_1, true), !(!vec4<bool>(false, true, arg_0.e, arg_0.e)))), all(select(select(vec4<bool>(var_0.x, false, arg_0.e, false), select(vec4<bool>(var_1, arg_0.e, arg_0.e, arg_0.e), vec4<bool>(true, false, true, true), var_0.x), vec4<bool>(var_0.x, arg_0.e, arg_0.e, var_1)), select(!vec4<bool>(var_1, var_0.x, var_0.x, var_1), vec4<bool>(var_1, true, arg_0.e, var_0.x), arg_0.e), all(vec4<bool>(var_1, var_1, true, var_0.x)) || false)));
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1896f, -159f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1587f, 1605f) + _wgslsmith_f_op_f32(338f * _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = !arg_1.wwy;
    var var_1 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(-1415i, _wgslsmith_div_f32(639f, arg_0.x), all(vec4<bool>(arg_1.x, arg_1.x, true, var_0.x)))))), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1588f)) * _wgslsmith_f_op_vec2_f32(max(arg_0.zz, arg_0.xz))))), reverseBits(abs(vec4<i32>(arg_2.x, -2147483647i, u_input.a, 1i)))), countOneBits(~(~_wgslsmith_sub_u32(u_input.b, 49550u))), ~u_input.d.yx, true);
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-arg_0.x)), 731f)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(arg_0, var_1.b, 92110u, vec2<u32>(var_1.d.x, 12277u), false), u_input.c)).x)))), -vec4<i32>(u_input.a, arg_2.x, -(-21794i | u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_2, arg_2), -var_1.b.b.ww)));
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0))) + _wgslsmith_f_op_vec4_f32(func_3())), var_1.b, 4294967295u, vec2<u32>(32154u, u_input.c.x), any(arg_1));
    var_0 = !select(arg_1.wyz, select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, var_0.x, true), vec3<bool>(false, var_1.e, var_1.e)), !(!vec3<bool>(arg_1.x, true, arg_1.x)), !vec3<bool>(true, var_1.e, true)), arg_1.zww);
    return var_1.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec2<i32>) -> f32 {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1922f, 775f, 1534f, -853f) + vec4<f32>(1838f, -220f, 333f, -1000f)), _wgslsmith_f_op_vec4_f32(func_2(-1i, 579f, true)))), Struct_1(vec2<f32>(892f, -606f), max(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, 2147483647i))), firstLeadingBit(0u), arg_1, false), ~_wgslsmith_sub_vec4_u32(min(u_input.c, u_input.c), vec4<u32>(arg_1.x, arg_0.x, arg_0.x, arg_1.x) & u_input.c))), !select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), true), vec4<bool>(select(false, false, true), true, all(vec4<bool>(false, false, false, true)), true), vec4<bool>(true, true, true, true)), vec2<i32>(~arg_2.x, _wgslsmith_sub_i32(arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, arg_2.x), vec3<i32>(53064i, -2147483647i, u_input.a))) << (arg_0.x % 32u)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(290f, 1000f)), vec2<f32>(var_0.a.x, 2251f)), _wgslsmith_f_op_vec4_f32(func_3()).xw), vec2<f32>(var_0.a.x, -416f))), -_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, var_0.b.x, arg_2.x, -15301i), ~reverseBits(var_0.b)));
    var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1946f, -1075f, var_0.a.x, var_0.a.x) + vec4<f32>(var_0.a.x, 1000f, var_0.a.x, 1349f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(824f, 937f, var_0.a.x, var_0.a.x) * vec4<f32>(145f, var_0.a.x, -1708f, var_0.a.x)))) + vec4<f32>(var_0.a.x, -518f, -1000f, _wgslsmith_f_op_f32(742f + func_5(vec4<f32>(var_0.a.x, -1747f, -478f, -932f), vec4<bool>(false, false, false, false), var_0.b.wy).a.x))), vec4<bool>(false, any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)))), true, true), var_0.b.wz);
    let var_1 = any(vec2<bool>(true, any(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_div_vec4_i32(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.x, -6094i, -46157i, var_0.b.x), vec4<i32>(u_input.a, -33066i, 16060i, -13222i), vec4<i32>(arg_2.x, 60765i, u_input.a, u_input.a)) << (vec4<u32>(arg_0.x, 1u, 4294967295u, 38213u) % vec4<u32>(32u))) << (~u_input.c % vec4<u32>(32u)), vec4<i32>(countOneBits(12181i), ~u_input.a, ~15787i, var_0.b.x));
    return -587f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(793f, -267f))) + -1231f), -848f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.d.zz, vec2<u32>(0u, 20293u), vec2<i32>(5864i, u_input.a)))) * _wgslsmith_f_op_f32(func_1(firstLeadingBit(vec2<u32>(28587u, 4294967295u)), select(vec2<u32>(u_input.c.x, u_input.b), vec2<u32>(u_input.b, 5365u), vec2<bool>(false, false)), vec2<i32>(16902i, 2147483647i))))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1762f - -1179f), _wgslsmith_f_op_f32(select(-2022f, 1288f, false))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1085f, -445f)))), -select(vec4<i32>(2147483647i, -61085i, u_input.a, u_input.a), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(false, true, false, false))), u_input.b & u_input.c.x, u_input.c.xx, any(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a), var_0.b, ~var_0.d.x, ~u_input.d.xy, all(select(!select(vec4<bool>(var_0.e, var_0.e, true, var_0.e), vec4<bool>(false, false, false, var_0.e), vec4<bool>(false, var_0.e, var_0.e, true)), !select(vec4<bool>(var_0.e, false, true, true), vec4<bool>(var_0.e, var_0.e, var_0.e, false), vec4<bool>(var_0.e, true, var_0.e, var_0.e)), !var_0.e)));
    var_0 = Struct_2(var_0.a, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0.a, vec4<f32>(var_0.a.x, -122f, var_0.b.a.x, -526f))), _wgslsmith_f_op_vec4_f32(-var_0.a))), select(select(select(vec4<bool>(var_0.e, false, false, var_0.e), vec4<bool>(true, true, var_0.e, false), false), vec4<bool>(true, var_0.e, true, true), false), select(vec4<bool>(false, var_0.e, true, var_0.e), select(vec4<bool>(var_0.e, var_0.e, false, var_0.e), vec4<bool>(var_0.e, var_0.e, var_0.e, true), vec4<bool>(var_0.e, var_0.e, true, false)), select(vec4<bool>(false, var_0.e, var_0.e, var_0.e), vec4<bool>(var_0.e, var_0.e, var_0.e, false), vec4<bool>(var_0.e, false, var_0.e, var_0.e))), false), _wgslsmith_clamp_vec2_i32(var_0.b.b.xy, min(min(var_0.b.b.xw, vec2<i32>(var_0.b.b.x, -31677i)), var_0.b.b.ww), firstTrailingBit(var_0.b.b.xx))), 35604u, ~vec2<u32>(var_0.d.x, ~firstTrailingBit(var_0.c)), !var_0.e);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + 518f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + -1074f) * _wgslsmith_f_op_f32(f32(-1f) * -1224f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) * _wgslsmith_f_op_f32(2275f - -966f)), _wgslsmith_f_op_f32(-1000f + 1307f))), func_5(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(step(1668f, _wgslsmith_f_op_f32(var_0.a.x - -518f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, 249f)))), !(!(!vec4<bool>(var_0.e, false, true, true))), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(var_0.b.b.x, var_0.b.b.x), u_input.a), u_input.a)), _wgslsmith_div_u32(~(95655u << (select(12151u, var_0.d.x, var_0.e) % 32u)), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(31946u, 16276u), ~var_0.c)), vec2<u32>(u_input.c.x, 1u), false);
    let var_1 = vec4<bool>(var_0.e, any(vec4<bool>(true, !var_0.e, var_0.e, true)), false, var_0.e);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a), func_5(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.a + var_0.a))), !var_1, var_0.b.b.xw), _wgslsmith_clamp_u32(abs(countOneBits(u_input.b)), ~var_0.c, 10961u), firstTrailingBit(vec2<u32>(0u, abs(_wgslsmith_clamp_u32(1u, u_input.c.x, 4294967295u)))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(834f, var_0.b.a.x, var_0.a.x, var_0.b.a.x)))) * vec4<f32>(_wgslsmith_f_op_f32(round(-1541f)), _wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(ceil(var_0.b.a.x)), _wgslsmith_f_op_f32(max(var_0.b.a.x, -1804f)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-366f)), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(vec4<f32>(var_0.a.x, -161f, var_0.b.a.x, 551f), var_0.b, 12575u, u_input.c.yy, var_1.x), u_input.c)).x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-256f + -643f), _wgslsmith_f_op_f32(trunc(var_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(1453f + -238f)), var_0.b.a.x)), func_5(_wgslsmith_f_op_vec4_f32(func_3()), select(var_1, var_1, true), _wgslsmith_add_vec2_i32(firstTrailingBit(var_0.b.b.wz), var_0.b.b.wz)).a.x);
}

