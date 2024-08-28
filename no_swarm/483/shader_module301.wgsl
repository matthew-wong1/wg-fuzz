struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(1111f, _wgslsmith_f_op_f32(f32(-1f) * -164f)));
    let var_1 = 25332i ^ firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_mult_i32(60571i, arg_1.x) >> (0u % 32u), 0i));
    let var_2 = Struct_1(select(vec4<bool>(true, false, true, true), vec4<bool>(select(true, true, true), true | any(vec4<bool>(true, true, true, true)), false, true), true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, false, select(false, false, false)), vec4<bool>(any(vec2<bool>(false, false)), true, any(vec3<bool>(true, false, false)), all(vec4<bool>(false, true, false, false))), vec4<bool>(select(false, true, false), true, true, true)), _wgslsmith_mult_u32(0u, ~arg_0.x) < 25072u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -110f), 534f, -941f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(501f)) * _wgslsmith_f_op_f32(abs(-816f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))))));
    var var_3 = var_2.b;
    var_3 = select(var_2.b, !select(vec4<bool>(var_3.x | var_2.a.x, arg_0.x > arg_0.x, select(var_3.x, true, var_3.x), any(vec2<bool>(false, var_2.b.x))), !select(vec4<bool>(false, var_2.a.x, var_3.x, false), vec4<bool>(var_2.a.x, var_2.b.x, var_3.x, var_3.x), true), true), select(vec4<bool>(var_3.x, false, !(arg_0.x <= arg_0.x), true), vec4<bool>(true, var_2.b.x, all(vec2<bool>(var_2.b.x, true)), true), true));
    return any(select(!select(select(vec3<bool>(var_3.x, true, true), vec3<bool>(var_2.b.x, var_3.x, false), var_2.b.x), var_2.a.yyz, var_3.xzz), vec3<bool>(var_3.x, true, var_3.x), false));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = vec4<i32>(1i, 0i, select(~(-u_input.a | -2147483647i), select(1i, _wgslsmith_clamp_i32(1i, u_input.a, 0i) | 2084i, max(u_input.b.x, u_input.a) < abs(-78080i)), any(select(!vec3<bool>(arg_1.a.x, arg_1.b.x, arg_1.b.x), vec3<bool>(arg_1.b.x, arg_1.a.x, true), vec3<bool>(arg_1.a.x, false, true)))), 0i);
    let var_1 = abs(u_input.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-135f, _wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(arg_1.c.x * arg_1.d))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_1.c.x)), _wgslsmith_f_op_f32(1028f + 1111f))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f - -1000f)), -1000f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-785f, -1486f, _wgslsmith_f_op_f32(-459f * 401f), _wgslsmith_f_op_f32(min(152f, var_2.x)))))));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_1(vec4<bool>(select(true, true, any(vec4<bool>(true, true, true, true))), select(firstLeadingBit(0u), ~1u, true) < 1u, true, true), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), false), vec4<bool>(true, true, true, true), false), vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -947f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(35447u, 28963u), 101906u, 64110u), Struct_1(select(var_0.a, !var_0.a, func_3(vec3<u32>(77447u, 27u, 4311u), vec2<i32>(u_input.b.x, u_input.b.x))), !(!var_0.a), var_0.c, -218f))));
    var var_2 = Struct_1(select(select(select(select(var_0.b, vec4<bool>(false, true, var_0.b.x, false), false), !var_0.a, var_0.a), vec4<bool>(var_0.b.x, true, select(false, var_0.a.x, var_0.b.x), !var_0.a.x), var_0.b), !var_0.a, !var_0.a.x), select(!(!(!var_0.b)), !vec4<bool>(any(vec2<bool>(true, var_0.a.x)), select(var_0.b.x, var_0.b.x, false), true, u_input.a < u_input.a), vec4<bool>(var_0.b.x, !var_0.a.x, true, false)), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - 701f), 710f)))), _wgslsmith_f_op_f32(1339f * _wgslsmith_div_f32(-117f, _wgslsmith_f_op_f32(round(838f))))), -1000f);
    let var_3 = Struct_2(u_input.a);
    var_0 = Struct_1(var_0.a, vec4<bool>(all(var_0.a), true, var_2.a.x, all(!vec3<bool>(var_0.b.x, var_2.a.x, var_2.a.x)) & all(var_2.b.xx)), _wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(-var_2.c)), _wgslsmith_f_op_f32(-var_0.c.x));
    return _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(39791u << (countOneBits(4321u) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1336u, 69505u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 29068u, 20974u, 82855u), countOneBits(vec4<u32>(1u, 77342u, 87233u, 4294967295u)))), ~_wgslsmith_add_u32(max(18681u, 0u), 1u)), vec2<u32>(_wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(7770u, 0u), vec2<u32>(55683u, 13304u), false), _wgslsmith_clamp_vec2_u32(vec2<u32>(73934u, 1u), vec2<u32>(4294967295u, 56890u), vec2<u32>(32333u, 0u)))), 42476u));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>) -> i32 {
    var var_0 = select(select(u_input.b, vec2<i32>(1i, firstLeadingBit(~(-2147483647i))), all(vec4<bool>(any(vec2<bool>(true, true)), false, false, true))), arg_0, any(vec2<bool>(true, true)));
    var_0 = _wgslsmith_div_vec2_i32(arg_0, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 20625i, arg_0.x, var_0.x), vec4<i32>(arg_0.x, var_0.x, u_input.a, u_input.a)), arg_0.x) << (((_wgslsmith_mult_vec2_u32(vec2<u32>(23009u, 0u), vec2<u32>(104896u, 0u)) ^ func_2()) >> (~vec2<u32>(13879u, 11024u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = select(vec4<bool>(true, true, false && select(true, any(vec4<bool>(false, true, false, false)), true), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(false, false, false)), any(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, false)))), vec4<bool>(false, true, true, false));
    var var_2 = Struct_2(_wgslsmith_clamp_i32(-1i, u_input.b.x, -2147483647i));
    var_1 = vec4<bool>(true, !(!all(select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, true, true, true), false))), false, select(true, var_1.x, var_1.x));
    return var_0.x;
}

fn func_5(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = vec2<bool>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-48668i ^ u_input.b.x, -22261i), u_input.b.x, ~(-arg_1)) <= ((abs(39120i) >> (firstTrailingBit(4294967295u) % 32u)) & ~(~0i)), true);
    let var_1 = -2147483647i;
    return Struct_1(vec4<bool>(!var_0.x, max(~102638u, ~10408u) > ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1999u, 18215u, 64401u), vec4<u32>(1u, 3272u, 31542u, 20016u)), var_0.x, var_0.x), select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, false || var_0.x, any(vec3<bool>(var_0.x, var_0.x, true)), any(vec2<bool>(true, true))), ~16816u < func_2().x), vec4<bool>(true, true, true, var_0.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(false, var_0.x, false, true), !vec4<bool>(true, var_0.x, var_0.x, true)), !var_0.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_0.wwx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-289f, arg_0.x, -1074f))), vec3<f32>(_wgslsmith_f_op_vec4_f32(func_4(0u, Struct_1(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, var_0.x, var_0.x, true), vec3<f32>(-441f, -455f, arg_0.x), arg_0.x))).x, 1165f, -562f))))), arg_0.x);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> bool {
    var var_0 = -(vec3<i32>(-1i) * -(~(vec3<i32>(0i, 11939i, u_input.b.x) >> (vec3<u32>(55363u, 62112u, 9736u) % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_5(vec4<f32>(arg_1.c.x, arg_0.d, arg_1.d, arg_2), -32025i).c.x)) * _wgslsmith_f_op_f32(select(1423f, _wgslsmith_f_op_f32(select(arg_2, arg_1.c.x, arg_3.x)), all(vec4<bool>(true, true, true, arg_1.b.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.c.x))), arg_2), _wgslsmith_f_op_f32(-arg_0.d), arg_0.c.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-574f, 1134f, -1686f, -808f) + vec4<f32>(-626f, 776f, arg_0.d, 532f))))));
    let var_2 = vec4<u32>(firstTrailingBit(1u), max(~4294967295u, abs(51879u)) & _wgslsmith_add_u32(~34625u, func_2().x), 11873u, ~(~reverseBits(50990u))) >> (vec4<u32>(func_2().x, 4294967295u, 10112u, ~25000u) % vec4<u32>(32u));
    var var_3 = Struct_2(1i);
    let var_4 = arg_1;
    return func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, var_1.x, arg_1.d, var_1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 309f, -1385f, 631f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 354f, arg_1.d, 1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.d, 1219f, -816f, 906f), vec4<f32>(-541f, 804f, -397f, -953f)))))), _wgslsmith_div_i32(countOneBits(func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_0.zx), vec3<f32>(191f, 1192f, arg_1.c.x))), -1i)).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -139f))))));
    let var_1 = Struct_1(!vec4<bool>(false, all(vec3<bool>(true, true, true)), false, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)))), vec4<bool>(~abs(u_input.a) <= u_input.b.x, true, true, func_6(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(1030f, 2062f, -506f, -1901f) - vec4<f32>(1000f, -551f, 2405f, -370f)), func_1(vec2<i32>(u_input.a, u_input.b.x), vec3<f32>(1992f, -1000f, -1744f))), Struct_1(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(334f, 1668f, 1547f) + vec3<f32>(-401f, 114f, 867f)), 416f), 1593f, vec4<bool>(true, true, all(vec4<bool>(false, true, true, false)), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -817f, 268f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(135f, _wgslsmith_div_f32(382f, _wgslsmith_f_op_f32(f32(-1f) * -1734f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1797f, _wgslsmith_f_op_f32(abs(-171f)))))));
    var var_2 = vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(~(~u_input.b), _wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, vec2<i32>(u_input.a, u_input.a)) << (vec2<u32>(27430u, 49062u) % vec2<u32>(32u))) | _wgslsmith_sub_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, 23329i), vec3<i32>(u_input.b.x, 38726i, 36386i))), 0i));
    var var_3 = false;
    var var_4 = _wgslsmith_mult_i32(select(2147483647i, abs(max(_wgslsmith_div_i32(-2147483647i, var_2.x), 5223i)), any(vec2<bool>(false, var_1.b.x)) | false), min(u_input.b.x >> (max(0u, 0u) % 32u), -1i));
    let var_5 = func_5(vec4<f32>(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.d, var_1.c.x, 1105f, var_1.c.x), vec4<f32>(-1529f, 137f, var_1.d, var_1.d)))), max(_wgslsmith_div_i32(var_2.x, u_input.a), _wgslsmith_mod_i32(var_2.x, u_input.b.x))).c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.d, var_1.d, true))), _wgslsmith_f_op_f32(-func_5(vec4<f32>(-1000f, var_1.c.x, -1370f, var_1.c.x), -1i).c.x)), _wgslsmith_f_op_f32(round(var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d))))), var_2.x | ~u_input.a);
    let var_6 = Struct_1(vec4<bool>(false, var_1.b.x, false, true), vec4<bool>(var_5.a.x, (_wgslsmith_div_f32(var_5.d, var_5.c.x) > _wgslsmith_f_op_f32(-var_1.d)) == !all(var_5.b), var_5.a.x, var_1.a.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d, var_1.d, 1996f), _wgslsmith_f_op_vec4_f32(func_4(25677u, var_1)).yyx))))), var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

