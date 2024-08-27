struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(0i, -39671i);

var<private> global1: f32;

var<private> global2: array<Struct_1, 23>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> f32 {
    global0 = array<i32, 2>();
    let var_0 = 4294967295u;
    global0 = array<i32, 2>();
    var var_1 = ~(~(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-110398i, u_input.b.x, global0[_wgslsmith_index_u32(u_input.e.x, 2u)]), u_input.c), _wgslsmith_clamp_i32(u_input.b.x, u_input.d, global0[_wgslsmith_index_u32(0u, 2u)]), abs(u_input.a.x), -u_input.d)));
    var var_2 = -select(_wgslsmith_dot_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(0u, 2u)], 12266i), -(vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(var_0, 2u)]) ^ u_input.a.yy)), _wgslsmith_sub_i32(countOneBits(~global0[_wgslsmith_index_u32(u_input.e.x, 2u)]), _wgslsmith_clamp_i32(1i, countOneBits(47878i), i32(-1i) * -2147483647i)), arg_0.x);
    return arg_1;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: f32, arg_3: u32) -> f32 {
    let var_0 = vec4<i32>(~(16685i << (firstLeadingBit(arg_3) % 32u)), -1i, i32(-1i) * -15061i, ~firstLeadingBit(u_input.c.x & firstLeadingBit(2147483647i)));
    let var_1 = Struct_1(arg_0.xy, 193f);
    var var_2 = Struct_1(arg_0.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(arg_2 - -1380f)))))));
    var var_3 = _wgslsmith_add_u32(0u, ~firstLeadingBit(u_input.e.x));
    var_2 = Struct_1(vec2<f32>(-1694f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-714f * -530f))));
    return _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), 409f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1252f, arg_2.a.x, arg_1.b, 334f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a.x, arg_2.a.x, 1201f, arg_0.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1257f), _wgslsmith_f_op_f32(select(arg_1.b, arg_0.b, false)), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(func_2(vec4<f32>(119f, arg_2.a.x, arg_2.b, 879f), 4294967295u, arg_2.a.x, 10327u))), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-852f, 648f, 1815f, arg_1.a.x)) + vec4<f32>(arg_2.b, 262f, arg_0.b, arg_1.a.x)))))));
    global1 = -1238f;
    global2 = array<Struct_1, 23>();
    global0 = array<i32, 2>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-190f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(229f - arg_1.b) * var_0.x)))));
    return arg_2;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = func_4(Struct_1(vec2<f32>(arg_1.b, -1085f), arg_1.a.x), global2[_wgslsmith_index_u32(~arg_2, 23u)], func_4(Struct_1(arg_1.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.a.x, arg_1.b), 1f, arg_3 > 11687i))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, arg_0, arg_0, u_input.e.x)), max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2, 41637u, arg_2, 0u), vec4<u32>(arg_0, arg_2, 11652u, 47844u)), ~vec4<u32>(4294967295u, 0u, 0u, u_input.e.x))), 23u)], Struct_1(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 120f) * _wgslsmith_f_op_f32(arg_1.b * -1000f)))));
    global2 = array<Struct_1, 23>();
    var var_1 = -_wgslsmith_mod_i32(2147483647i, arg_3);
    global1 = 1908f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(var_0.b, var_0.b, var_0.a.x, arg_1.a.x), 0u, -1391f, 1u))), _wgslsmith_f_op_f32(1016f + 1000f)), var_0.a));
    return var_0;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<i32>) -> vec3<bool> {
    var var_0 = func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(arg_0), ~reverseBits(u_input.e.x)), vec2<u32>(u_input.e.x, arg_0)), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(826f, -786f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-586f, 355f)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_2(vec4<f32>(125f, 301f, 845f, -531f), arg_0, -1215f, 21348u)))), global2[_wgslsmith_index_u32(~arg_0 ^ _wgslsmith_mult_u32(arg_1.x, ~1u), 23u)], global2[_wgslsmith_index_u32(1u, 23u)]), arg_1.x ^ ~(reverseBits(arg_1.x) & ~32199u), 14548i);
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(var_0.b, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.a.x) + vec2<f32>(var_0.a.x, var_0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-178f, var_0.a.x)) * vec2<f32>(1437f, var_0.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1170f) + -1744f), _wgslsmith_f_op_f32(-1714f + -1164f)))), Struct_1(var_0.a, 404f), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-957f, var_0.b))), (var_0.b < 341f) | true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true), 582f)), -482f)))));
    var var_2 = ~(~(~min(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, arg_0, 0u, u_input.e.x), vec4<u32>(arg_0, u_input.e.x, 1u, u_input.e.x)), vec4<u32>(arg_1.x, arg_0, 4294967295u, arg_0))));
    let var_3 = ~(~(-vec2<i32>(0i, -1i) << ((var_2.xz >> (vec2<u32>(28179u, var_2.x) % vec2<u32>(32u))) % vec2<u32>(32u)))) >> (vec2<u32>(firstLeadingBit(~arg_0), u_input.e.x) % vec2<u32>(32u));
    global0 = array<i32, 2>();
    return select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), false)), select(select(vec3<bool>(select(false, false, true), true, false), vec3<bool>(true, any(vec2<bool>(true, true)), select(true, false, true)), var_1.a.x > _wgslsmith_f_op_f32(-var_1.b)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), any(vec2<bool>(true, false)), true)), true);
}

fn func_6(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = min(1i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(1u, 1u, u_input.e.x, u_input.e.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, 1u, 1u, 10024u))), ~abs(vec4<u32>(61189u, u_input.e.x, u_input.e.x, u_input.e.x))), 2u)], -24287i));
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 23u)];
    var var_3 = arg_0;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(-763f, var_2.b), var_2.b);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-612f + var_2.a.x), -206f)) - _wgslsmith_f_op_f32(abs(378f))), -750f), _wgslsmith_div_f32(-180f, _wgslsmith_f_op_f32(-var_2.b)));
}

fn func_7(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(~firstTrailingBit(u_input.e.x), 23u)];
    global1 = arg_3;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - arg_2.a.x) + _wgslsmith_f_op_f32(arg_2.a.x - arg_0.b)) + 298f)))));
    global2 = array<Struct_1, 23>();
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, arg_0.a.x, arg_0.b, 257f) - vec4<f32>(var_0.a.x, 1409f, var_0.b, arg_3)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, arg_2.a.x, 133f, -390f) - vec4<f32>(var_0.a.x, 315f, -324f, 1023f)), false | arg_1.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1, arg_3, 1755f) + vec4<f32>(543f, var_1, arg_2.b, arg_0.a.x))))), any(select(arg_1, arg_1, arg_1))))));
    return func_4(Struct_1(arg_0.a, func_4(func_6(!vec3<bool>(false, arg_1.x, arg_1.x)), func_4(Struct_1(arg_2.a, arg_0.a.x), Struct_1(arg_2.a, var_2.x), func_6(vec3<bool>(false, arg_1.x, arg_1.x))), Struct_1(vec2<f32>(240f, var_0.b), var_2.x)).b), func_4(arg_0, arg_0, func_6(vec3<bool>(u_input.e.x < u_input.e.x, true, false))), arg_0);
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1010f * 237f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2059f - -122f) - _wgslsmith_f_op_f32(-arg_1.a.x))))));
    let var_0 = vec2<bool>(func_1(1u, vec2<u32>(~0u, 4294967295u), _wgslsmith_div_vec3_i32(countOneBits(max(vec3<i32>(u_input.d, -28471i, -3404i), vec3<i32>(-2147483647i, u_input.d, 0i))), select(countOneBits(vec3<i32>(700i, 0i, global0[_wgslsmith_index_u32(26287u, 2u)])), ~u_input.b.zyy, vec3<bool>(false, false, true)))).x, all(func_1(1u, ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.e.x), vec2<u32>(u_input.e.x, u_input.e.x)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(57765i, -52071i, u_input.c.x), vec3<i32>(global0[_wgslsmith_index_u32(19427u, 2u)], u_input.b.x, u_input.b.x)))).xy));
    var var_1 = any(vec4<bool>(var_0.x, var_0.x, all(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, false))), true));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(var_0.x, var_0.x, false), -1678f))))), arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_1.b)));
    global0 = array<i32, 2>();
    return _wgslsmith_div_f32(-139f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - 362f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + -1503f))), func_6(select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), false), !vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true))).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(4294967295u, _wgslsmith_div_u32(abs(28534u), ~u_input.e.x));
    global0 = array<i32, 2>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_8(func_7(func_6(func_1(u_input.e.x, vec2<u32>(u_input.e.x, 0u), vec3<i32>(global0[_wgslsmith_index_u32(1494u, 2u)], u_input.d, global0[_wgslsmith_index_u32(u_input.e.x, 2u)]))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), true), global2[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -364f) + _wgslsmith_div_f32(-121f, 1000f))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1488f + -1169f), _wgslsmith_f_op_f32(-1250f - 389f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(158f, -1148f, false)) * _wgslsmith_f_op_f32(round(225f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 760f, -209f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1045f, -115f, -634f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1098f), -452f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-105f, 425f, true)), _wgslsmith_f_op_f32(1992f * -297f), true)), -1000f))));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(393f, -465f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_8(Struct_1(vec2<f32>(597f, 1000f), -1742f), global2[_wgslsmith_index_u32(u_input.e.x, 23u)], vec3<f32>(-355f, -1002f, -591f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(941f - 1277f) - _wgslsmith_f_op_f32(min(-538f, 240f))) + _wgslsmith_f_op_f32(round(-728f)))), 1f);
    var var_3 = var_2;
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b - 138f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - -481f)))));
    var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, var_3.b) + vec2<f32>(264f, var_2.b)))) + var_3.a), _wgslsmith_div_f32(_wgslsmith_div_f32(-1665f, var_2.a.x), var_3.a.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.b, 1000f, var_3.a.x), vec3<f32>(var_2.a.x, -515f, var_3.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, 1260f, -682f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1524f, 1000f, var_3.b) + vec3<f32>(var_2.a.x, var_2.b, var_2.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1011f, -412f, -528f) - vec3<f32>(var_2.a.x, var_2.b, 468f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, -1773f, var_3.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.zy) * _wgslsmith_f_op_vec2_f32(vec2<f32>(786f, 926f) - vec2<f32>(1404f, var_4.x))) * vec2<f32>(_wgslsmith_div_f32(var_4.x, 1111f), _wgslsmith_f_op_f32(f32(-1f) * -473f))), var_2.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.a.x, var_2.b), var_2.b)) + var_2.a.x), 2039f, 153f), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(10674u, u_input.e.x, 1u, 19556u) & vec4<u32>(u_input.e.x, 1u, u_input.e.x, 7132u), vec4<u32>(u_input.e.x, 4529u, 0u, 4294967295u) ^ vec4<u32>(u_input.e.x, 33986u, 14379u, 49692u))), -257f, _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x));
}

