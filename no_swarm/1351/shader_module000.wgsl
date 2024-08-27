struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(true, true, true, true, true, true, false, false, true, true, true, false, false, false, false, true, true, false, true, false, false, false, true, false, false, false, true);

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<i32>(1i, -15677i), -503f), Struct_1(vec2<i32>(2147483647i, -22521i), -666f), Struct_1(vec2<i32>(21164i, 18884i), 1153f), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 188f), Struct_1(vec2<i32>(1i, 2147483647i), -645f), Struct_1(vec2<i32>(1i, 72172i), -1000f), Struct_1(vec2<i32>(1i, 0i), -135f), Struct_1(vec2<i32>(i32(-2147483648), -72503i), 1491f), Struct_1(vec2<i32>(31i, i32(-2147483648)), -1173f), Struct_1(vec2<i32>(19287i, -29969i), 861f), Struct_1(vec2<i32>(-1i, -5280i), 424f), Struct_1(vec2<i32>(-1i, -27838i), 392f), Struct_1(vec2<i32>(47252i, -1i), -1000f), Struct_1(vec2<i32>(-54815i, 1967i), 446f), Struct_1(vec2<i32>(0i, 1i), -1226f), Struct_1(vec2<i32>(i32(-2147483648), 43235i), -438f), Struct_1(vec2<i32>(1i, 29671i), -465f), Struct_1(vec2<i32>(-55847i, -33387i), -396f), Struct_1(vec2<i32>(1535i, -1i), 1209f), Struct_1(vec2<i32>(-16385i, -59316i), 824f), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 1344f), Struct_1(vec2<i32>(2147483647i, 0i), 317f), Struct_1(vec2<i32>(31338i, 2147483647i), 1831f), Struct_1(vec2<i32>(2147483647i, 1i), -949f), Struct_1(vec2<i32>(0i, -28254i), -361f), Struct_1(vec2<i32>(0i, -10572i), 884f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<u32> {
    var var_0 = global1[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(1u, u_input.d), _wgslsmith_sub_u32(4294967295u, u_input.e) & 73100u), 26u)];
    let var_1 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_mult_i32(u_input.b, ~var_0.a.x), ~6662i ^ ~var_0.a.x, -2147483647i);
    var var_2 = !global0[_wgslsmith_index_u32(8793u, 27u)];
    var_0 = global1[_wgslsmith_index_u32(1u, 26u)];
    var var_3 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(1i, select(var_1.x, var_1.x, false)), _wgslsmith_mod_i32(u_input.b, 21691i) ^ abs(u_input.a.x)), _wgslsmith_mult_vec2_i32(select(countOneBits(var_1.xy), vec2<i32>(u_input.b, -2147483647i) & u_input.a.zy, true), select(vec2<i32>(35711i, -11934i), var_0.a, !vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)], false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -917f))));
    return max(reverseBits(select(u_input.c, countOneBits(max(vec2<u32>(u_input.d, u_input.e), vec2<u32>(u_input.c.x, 0u))), any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 27u)], true)))), ~(vec2<u32>(~0u, ~u_input.d) | select(vec2<u32>(0u, u_input.e), vec2<u32>(50332u, u_input.d), global0[_wgslsmith_index_u32(u_input.d, 27u)])));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(~func_3(), _wgslsmith_mult_u32(7252u, _wgslsmith_mod_u32(4294967295u, 38369u << (u_input.c.x % 32u))), global1[_wgslsmith_index_u32(~u_input.d, 26u)], vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 27u)], true == global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.d), 27u)])), _wgslsmith_clamp_i32(i32(-1i) * -max(u_input.b, -16723i), -countOneBits(-63429i), 1i), select(vec4<i32>(i32(-1i) * -28999i, _wgslsmith_sub_i32(reverseBits(1i), ~1i), abs(0i), _wgslsmith_sub_i32(firstTrailingBit(-15224i), u_input.b)), -max(vec4<i32>(15589i, u_input.b, u_input.a.x, 2147483647i), ~vec4<i32>(u_input.a.x, -24923i, u_input.b, 0i)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~max(u_input.d, 30981u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.e) << (u_input.c % vec2<u32>(32u)), vec2<u32>(2301u, u_input.e))), 27u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(29970u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e, u_input.d, 70957u), select(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.e), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], true, false, global0[_wgslsmith_index_u32(u_input.e, 27u)]))), ~u_input.c.x)), 26u)], !vec2<bool>(any(select(vec4<bool>(true, global0[_wgslsmith_index_u32(33194u, 27u)], global0[_wgslsmith_index_u32(u_input.c.x, 27u)], global0[_wgslsmith_index_u32(u_input.d, 27u)]), vec4<bool>(false, true, false, false), global0[_wgslsmith_index_u32(1u, 27u)])), global0[_wgslsmith_index_u32(u_input.d, 27u)]));
    let var_1 = ~(~(~24318u));
    var var_2 = !select(!(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(135069u, 27u)])), !(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 27u)], false), vec3<bool>(global0[_wgslsmith_index_u32(21676u, 27u)], true, var_0.e.x), false)), vec3<bool>(var_0.e.x, any(select(vec3<bool>(global0[_wgslsmith_index_u32(var_1, 27u)], var_0.e.x, false), vec3<bool>(true, var_0.a.d.x, var_0.a.d.x), var_0.e.x)), any(vec4<bool>(false, var_0.e.x, true, true))));
    let var_3 = Struct_4(Struct_3(var_0.a, _wgslsmith_add_i32(firstTrailingBit(~var_0.d.a.x), abs(~u_input.a.x)), ~u_input.a ^ u_input.a, Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(15854i, var_0.a.c.a.x), u_input.a.xz ^ vec2<i32>(-13479i, 87320i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1083f * 1268f)))), select(var_2.yy, select(var_0.e, select(var_0.a.d, var_2.xy, var_2.yy), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 27u)], global0[_wgslsmith_index_u32(40304u, 27u)])), all(!vec4<bool>(false, true, var_0.e.x, false)))), Struct_1(u_input.a.yy, -449f), Struct_2(vec2<u32>(1u, 45277u), u_input.d, Struct_1(firstLeadingBit(_wgslsmith_div_vec2_i32(u_input.a.yx, vec2<i32>(12573i, 468i))), -1000f), var_2.xy), var_2.yz);
    var_0 = var_3.a;
    return var_3.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_2(arg_1.a.a.a & arg_2.c.a, ~abs(_wgslsmith_add_u32(arg_3, ~u_input.c.x)), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(549f, arg_1.a.d.b)), _wgslsmith_f_op_f32(534f * 357f)), vec2<f32>(_wgslsmith_f_op_f32(ceil(1490f)), 1910f))).d, select(func_2(vec2<f32>(1244f, _wgslsmith_f_op_f32(arg_2.a.a.c.b + arg_2.a.d.b))).a.d, select(!(!arg_2.d), !vec2<bool>(arg_2.d.x, true), arg_2.a.e), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.c.b, arg_1.a.a.c.b) * vec2<f32>(-468f, arg_2.a.a.c.b)))).e));
    var var_1 = _wgslsmith_mult_i32(-(~(-(arg_1.a.a.c.a.x & u_input.b))), _wgslsmith_mod_i32(arg_0.x & (u_input.a.x << (arg_3 % 32u)), ~(arg_2.a.a.c.a.x >> (~1u % 32u))));
    var var_2 = !(!(!vec4<bool>(arg_2.a.a.d.x || arg_1.d.x, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 31129u), 27u)], true)));
    let var_3 = ~vec4<u32>(21742u, 66112u, 50666u, var_0.b & (var_0.b & ~u_input.e));
    var var_4 = vec3<u32>(83470u, _wgslsmith_add_u32(var_3.x, var_3.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2.c.a.x), vec2<u32>(~(~var_3.x), arg_2.c.b)));
    return func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(666f, -1619f)), -1071f)), arg_2.c.c.b))).a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(func_4(vec4<i32>(~48081i, min(-34931i, _wgslsmith_div_i32(2147483647i, u_input.a.x)), select(1i, u_input.a.x, true) ^ 2147483647i, _wgslsmith_add_i32(u_input.b, -8310i) & ~1i), Struct_4(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2133f, -722f) - vec2<f32>(-1546f, 605f))), Struct_1(vec2<i32>(u_input.b, 2147483647i) ^ u_input.a.yy, 475f), Struct_2(u_input.c, _wgslsmith_mod_u32(4294967295u, 12477u), func_2(vec2<f32>(1691f, 141f)).d, !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 27u)])), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u | u_input.e, 27u)])), Struct_4(Struct_3(func_2(vec2<f32>(714f, -1712f)).a, u_input.a.x, ~vec4<i32>(u_input.b, u_input.b, u_input.b, 0i), func_2(vec2<f32>(588f, -1438f)).d, vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 27u)])), Struct_1(vec2<i32>(-1i, u_input.a.x), _wgslsmith_f_op_f32(abs(1537f))), Struct_2(vec2<u32>(1u, 1u), 8744u, global1[_wgslsmith_index_u32(~u_input.e, 26u)], vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 27u)])), !vec2<bool>(global0[_wgslsmith_index_u32(3429u, 27u)], global0[_wgslsmith_index_u32(u_input.c.x, 27u)])), 18037u), _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mult_i32(2147483647i, -u_input.a.x) & _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b))), abs(u_input.a ^ (u_input.a >> (vec4<u32>(84850u, 24668u, 13930u, 0u) % vec4<u32>(32u)))) ^ reverseBits(reverseBits(vec4<i32>(25366i, -1i, u_input.b, -10882i))), global1[_wgslsmith_index_u32(~u_input.e, 26u)], !(!select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(u_input.d, 27u)]), func_2(vec2<f32>(-575f, 967f)).e, vec2<bool>(true, true))));
    var var_1 = !vec4<bool>(false, any(vec4<bool>(true, true, all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], var_0.e.x, var_0.e.x, false)), any(vec4<bool>(false, false, var_0.a.d.x, true)))), false, true);
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.b, _wgslsmith_f_op_f32(-var_0.d.b)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-486f, 1000f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(848f, var_0.d.b))))));
    var var_3 = -select(firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(-30952i, u_input.a.x), max(-1i, 1i))), var_2.a.c.a ^ (vec2<i32>(var_0.a.c.a.x, -14672i) << (~var_2.a.a % vec2<u32>(32u))), false);
    var var_4 = func_4(var_2.c, Struct_4(var_0, func_4(-vec4<i32>(0i, 15873i, 18735i, u_input.a.x) & var_0.c, Struct_4(Struct_3(var_0.a, 2147483647i, vec4<i32>(var_0.b, 0i, -1i, var_2.b), Struct_1(vec2<i32>(var_3.x, 4287i), -1455f), vec2<bool>(false, false)), var_0.d, func_2(vec2<f32>(764f, -391f)).a, vec2<bool>(var_1.x, false)), Struct_4(func_2(vec2<f32>(2029f, var_0.a.c.b)), global1[_wgslsmith_index_u32(u_input.d & 0u, 26u)], var_2.a, var_0.e), func_4(-var_2.c, Struct_4(Struct_3(Struct_2(var_2.a.a, var_0.a.b, Struct_1(vec2<i32>(u_input.a.x, 0i), -302f), var_0.e), 30201i, vec4<i32>(2147483647i, 11169i, u_input.b, -14142i), Struct_1(var_2.c.yx, var_2.d.b), vec2<bool>(var_2.a.d.x, false)), var_2.a.c, Struct_2(vec2<u32>(4294967295u, u_input.d), u_input.e, var_0.d, vec2<bool>(true, false)), var_1.yw), Struct_4(var_0, var_0.d, var_0.a, vec2<bool>(true, var_0.a.d.x)), 4294967295u >> (1u % 32u)).b).c, var_2.a, vec2<bool>(!var_0.e.x, global0[_wgslsmith_index_u32(var_2.a.b, 27u)])), Struct_4(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.c.b, 649f)))), var_0.a.c, var_0.a, vec2<bool>(var_2.d.a.x >= -12274i, any(!var_1.xy))), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_2.a.a.x, var_0.a.b, 3801u << (var_2.a.b % 32u), ~18037u), vec4<u32>(u_input.d, var_2.a.b, var_0.a.b, ~u_input.d)))).c;
    return Struct_1(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_4.a.x, var_0.a.c.a.x), 551i), var_2.d.a.x) << (countOneBits(var_0.a.a) % vec2<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1041f - -963f), var_0.a.c.b) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -370f)))))));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = ~(-arg_0.a.x);
    let var_1 = 1422f;
    let var_2 = u_input.c.x;
    let var_3 = func_4(-u_input.a ^ firstTrailingBit(u_input.a | u_input.a), Struct_4(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b, var_1), vec2<f32>(arg_0.b, 1156f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, 1124f), vec2<f32>(arg_0.b, -159f), vec2<bool>(true, true))))), global1[_wgslsmith_index_u32(~var_2, 26u)], Struct_2(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, var_2), vec2<u32>(4294967295u, var_2)), 4294967295u, func_1(), vec2<bool>(global0[_wgslsmith_index_u32(var_2, 27u)] | true, global0[_wgslsmith_index_u32(min(u_input.d, 24484u), 27u)])), vec2<bool>(!all(vec3<bool>(global0[_wgslsmith_index_u32(var_2, 27u)], false, true)), global0[_wgslsmith_index_u32(~4294967295u >> (firstLeadingBit(4294967295u) % 32u), 27u)])), Struct_4(func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(731f, -257f))))), arg_0, func_2(vec2<f32>(2218f, arg_0.b)).a, !(!vec2<bool>(global0[_wgslsmith_index_u32(41896u, 27u)], true))), var_2);
    let var_4 = var_3.c.a.x;
    return func_2(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 26>();
    var var_0 = _wgslsmith_div_u32(17794u & ((~u_input.c.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(78961u, u_input.c.x, 73795u, 16819u), vec4<u32>(56059u, 98130u, u_input.e, u_input.c.x)) % 32u)) & u_input.e), ~u_input.c.x);
    var var_1 = Struct_4(Struct_3(func_5(func_1()), -(func_1().a.x | (u_input.a.x & -1i)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(4910i, u_input.a.x, u_input.b, 4981i), u_input.a)), func_4(abs(min(u_input.a, vec4<i32>(33010i, 0i, -1i, 119i))), Struct_4(Struct_3(Struct_2(vec2<u32>(6396u, 49649u), u_input.e, Struct_1(u_input.a.zz, -791f), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(u_input.c.x, 27u)])), -10720i, u_input.a, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], true)), func_1(), func_2(vec2<f32>(1323f, 185f)).a, vec2<bool>(global0[_wgslsmith_index_u32(7927u, 27u)], global0[_wgslsmith_index_u32(18693u, 27u)])), Struct_4(Struct_3(Struct_2(u_input.c, 45859u, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 27u)], false)), 2147483647i, u_input.a, global1[_wgslsmith_index_u32(1u, 26u)], vec2<bool>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(u_input.d, 27u)])), Struct_1(u_input.a.xz, 2689f), func_2(vec2<f32>(387f, 427f)).a, vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 27u)])), 96114u).c, !(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 27u)], global0[_wgslsmith_index_u32(u_input.d, 27u)]))), func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(625f, 561f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-429f, 1391f) * vec2<f32>(-1642f, -1471f))))).a.c, func_5(Struct_1(~vec2<i32>(-2147483647i, 24491i), -859f)), !select(func_4(countOneBits(vec4<i32>(-34996i, u_input.b, 17973i, 41682i)), Struct_4(Struct_3(Struct_2(vec2<u32>(u_input.c.x, 69562u), u_input.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 27u)])), 1i, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -68054i), Struct_1(u_input.a.zy, 307f), vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 27u)], global0[_wgslsmith_index_u32(u_input.e, 27u)])), Struct_1(vec2<i32>(10786i, 0i), 761f), Struct_2(vec2<u32>(28u, 49564u), 57610u, global1[_wgslsmith_index_u32(19117u, 26u)], vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 27u)], global0[_wgslsmith_index_u32(u_input.c.x, 27u)])), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 27u)], global0[_wgslsmith_index_u32(u_input.c.x, 27u)])), Struct_4(Struct_3(Struct_2(vec2<u32>(27434u, u_input.e), 0u, global1[_wgslsmith_index_u32(u_input.d, 26u)], vec2<bool>(true, false)), -22764i, u_input.a, global1[_wgslsmith_index_u32(25521u, 26u)], vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)])), Struct_1(u_input.a.xz, -1166f), Struct_2(vec2<u32>(48297u, u_input.d), 14873u, Struct_1(u_input.a.yx, -1422f), vec2<bool>(false, true)), vec2<bool>(global0[_wgslsmith_index_u32(39794u, 27u)], false)), u_input.e).d, vec2<bool>(true, all(vec4<bool>(false, global0[_wgslsmith_index_u32(27875u, 27u)], false, global0[_wgslsmith_index_u32(9535u, 27u)]))), all(vec4<bool>(true, true, true, true))));
    let var_2 = vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, ~var_1.a.a.a.x, var_1.c.a.x), var_1.c.b, 0u, var_1.c.b);
    let var_3 = -1293f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.b, var_1.a.d.b, true)));
    global1 = array<Struct_1, 26>();
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -678f);
    var var_5 = select(func_5(global1[_wgslsmith_index_u32(firstLeadingBit(func_4(vec4<i32>(var_1.a.a.c.a.x, 2147483647i, 30636i, 1796i), Struct_4(Struct_3(Struct_2(var_1.c.a, var_2.x, var_1.a.a.c, vec2<bool>(false, var_1.c.d.x)), 1i, vec4<i32>(u_input.b, u_input.b, 1i, 0i), var_1.c.c, var_1.c.d), Struct_1(var_1.b.a, -1000f), var_1.a.a, var_1.d), Struct_4(Struct_3(var_1.a.a, 1i, vec4<i32>(var_1.a.b, u_input.a.x, var_1.a.b, 0i), var_1.b, var_1.d), Struct_1(var_1.c.c.a, 1787f), var_1.a.a, vec2<bool>(var_1.d.x, false)), func_4(vec4<i32>(127i, var_1.c.c.a.x, u_input.b, 1i), Struct_4(var_1.a, var_1.b, var_1.c, vec2<bool>(global0[_wgslsmith_index_u32(var_2.x, 27u)], false)), Struct_4(Struct_3(Struct_2(vec2<u32>(1u, 4294967295u), u_input.d, global1[_wgslsmith_index_u32(0u, 26u)], vec2<bool>(false, var_3)), var_1.c.c.a.x, vec4<i32>(var_1.b.a.x, 1i, var_1.c.c.a.x, 3413i), Struct_1(u_input.a.yw, var_1.b.b), vec2<bool>(true, false)), Struct_1(u_input.a.wy, var_1.a.d.b), var_1.a.a, vec2<bool>(false, var_3)), 4294967295u).b).a.x), 26u)]).d, vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.b, 510f) + var_1.b.b) > _wgslsmith_f_op_f32(floor(var_1.a.d.b)), global0[_wgslsmith_index_u32(41299u, 27u)]), var_1.d.x);
    var var_6 = func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a.d.b, var_1.b.b), _wgslsmith_div_vec2_f32(vec2<f32>(992f, var_1.b.b), vec2<f32>(1000f, -588f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.b.b, var_1.a.a.c.b))))), all(var_1.a.e))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.d.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-448f, -1849f, _wgslsmith_f_op_f32(1098f + var_1.a.d.b), _wgslsmith_f_op_f32(exp2(var_6.d.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(811f, -1000f, 621f, -500f) - vec4<f32>(1408f, var_1.c.c.b, 288f, var_1.c.c.b)) + vec4<f32>(433f, var_1.b.b, var_6.a.c.b, 867f)))));
}

