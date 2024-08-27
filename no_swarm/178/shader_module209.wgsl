struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(false, true, false, true, false, false, false, true, false, true, false, false, false, true, false, true);

var<private> global1: u32;

var<private> global2: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(19604i, 1i, -14404i, -26155i), vec4<i32>(56247i, -35325i, -38313i, 2147483647i), vec4<i32>(16253i, 15330i, -10187i, 1i), vec4<i32>(6222i, 1i, 59497i, 2147483647i), vec4<i32>(2147483647i, 0i, -3075i, i32(-2147483648)), vec4<i32>(1i, 0i, 17835i, 36273i), vec4<i32>(2147483647i, -1i, 1i, 0i), vec4<i32>(66415i, 2147483647i, -17306i, -18655i), vec4<i32>(1i, -1i, 6120i, 21255i), vec4<i32>(i32(-2147483648), 8323i, i32(-2147483648), -1501i), vec4<i32>(1i, 52268i, 2147483647i, 2147483647i), vec4<i32>(-14634i, 2147483647i, 2147483647i, 41052i), vec4<i32>(2147483647i, -12626i, -60032i, 36312i), vec4<i32>(1i, -11771i, -44935i, 17872i), vec4<i32>(16072i, i32(-2147483648), -30757i, -44174i), vec4<i32>(13709i, 0i, 62434i, 1i), vec4<i32>(2147483647i, 2147483647i, 0i, -65398i), vec4<i32>(0i, 0i, 0i, 24685i), vec4<i32>(-27233i, -9650i, 75033i, 0i), vec4<i32>(10053i, -1i, 22574i, 40372i), vec4<i32>(1i, i32(-2147483648), 2147483647i, 11323i), vec4<i32>(35003i, 1i, -14239i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, 2147483647i, 1i), vec4<i32>(17440i, i32(-2147483648), -1i, 0i), vec4<i32>(-25306i, i32(-2147483648), 2147483647i, -20393i), vec4<i32>(-4159i, 0i, -17710i, -15576i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32) -> i32 {
    let var_0 = -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(arg_0, u_input.a)), -vec2<i32>(arg_0, u_input.a), ~vec2<i32>(2147483647i, arg_1))), select(max(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1, u_input.a), vec2<i32>(33450i, arg_0)), select(vec2<i32>(1i, arg_1), vec2<i32>(arg_0, -54379i), false)), -vec2<i32>(-2147483647i, -31191i), true));
    var var_1 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, -3424i, -1i, arg_0) << (~vec4<u32>(33329u, 4294967295u, 7761u, 0u) % vec4<u32>(32u)), -min(vec4<i32>(-41557i, arg_0, arg_1, u_input.a), global2[_wgslsmith_index_u32(37873u, 26u)])), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, 11427i, arg_0) << (vec4<u32>(1u, 0u, 1u, 0u) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(~54278u, 26u)])));
    let var_2 = Struct_1(var_1.a);
    var var_3 = any(!(!(!select(vec2<bool>(global0[_wgslsmith_index_u32(22059u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(65160u, 16u)]), global0[_wgslsmith_index_u32(0u, 16u)]))));
    let var_4 = !global0[_wgslsmith_index_u32(0u, 16u)];
    return min(arg_1, 1i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = arg_0.a.x;
    var var_2 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(select(-2147483647i, 17451i, global0[_wgslsmith_index_u32(4294967295u, 16u)] & global0[_wgslsmith_index_u32(63917u, 16u)]), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, -1i, 26759i), vec3<i32>(10802i, u_input.a, arg_0.a.x)), select(func_3(u_input.a, 24596i), reverseBits(40026i), true), max(select(1i, 3110i, false), u_input.a)), -(~(arg_0.a << (vec4<u32>(1u, 4294967295u, 40920u, 6238u) % vec4<u32>(32u)))), vec4<i32>(-33712i, 6409i, arg_0.a.x, -21837i));
    var_0 = ~min(max(0u, ~4294967295u), 108146u);
    let var_3 = Struct_1(global2[_wgslsmith_index_u32(~(1u & firstTrailingBit(1u)), 26u)]);
    return Struct_1(abs(~arg_1.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    global1 = 5668u >> (_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(countOneBits(4336u), 1u), select(~25500u, 18756u >> (0u % 32u), false)), ~select(4294967295u, ~58331u, any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], true, global0[_wgslsmith_index_u32(0u, 16u)])))) % 32u);
    global0 = array<bool, 16>();
    var var_0 = func_2(arg_1, arg_0);
    let var_1 = Struct_1(vec4<i32>(arg_1.a.x, firstTrailingBit(arg_0.a.x), _wgslsmith_div_i32(_wgslsmith_add_i32(arg_1.a.x, arg_0.a.x), ~(~var_0.a.x)), i32(-1i) * -1i));
    global0 = array<bool, 16>();
    return var_1;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_0.xy - vec2<f32>(arg_0.x, arg_0.x))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), -1927f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_f32(var_0.x + -1285f)), _wgslsmith_f_op_f32(-arg_0.x));
    var var_2 = firstLeadingBit(vec4<u32>(45394u, firstTrailingBit(1u), 1u, reverseBits(1u)));
    var_2 = firstTrailingBit(select(_wgslsmith_sub_vec4_u32((vec4<u32>(84096u, 7964u, var_2.x, 4294967295u) << (vec4<u32>(1u, var_2.x, 92239u, 61202u) % vec4<u32>(32u))) << (~vec4<u32>(5639u, var_2.x, var_2.x, 63538u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_2.x, 4294967295u, 66028u, 26271u), vec4<u32>(var_2.x, 68031u, var_2.x, 4294967295u))), vec4<u32>(~_wgslsmith_mult_u32(var_2.x, 4294967295u), var_2.x, _wgslsmith_dot_vec3_u32(var_2.xxx, reverseBits(var_2.zyx)), ~(~var_2.x)), all(select(vec2<bool>(global0[_wgslsmith_index_u32(48u, 16u)], false), select(arg_2, arg_2, vec2<bool>(arg_2.x, true)), true | arg_2.x))));
    let var_3 = vec3<i32>(u_input.a, 1i, reverseBits(arg_1.a.x));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    let var_0 = arg_1;
    let var_1 = global2[_wgslsmith_index_u32(~4294967295u, 26u)];
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(~(-1i), ~max(u_input.a, arg_1.a.x), _wgslsmith_mult_i32(arg_1.a.x, func_5(_wgslsmith_div_vec3_f32(vec3<f32>(1350f, 632f, -2291f), vec3<f32>(-349f, 800f, 574f)), func_4(Struct_1(vec4<i32>(arg_0.a.x, u_input.a, 2147483647i, -2147483647i)), Struct_1(arg_1.a), vec2<f32>(-2120f, -978f)), vec2<bool>(global0[_wgslsmith_index_u32(15355u, 16u)], true), !arg_2).a.x)), var_0.a.wyy | var_1.xyy);
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1047f, 1445f, global0[_wgslsmith_index_u32(1u, 16u)]))) * _wgslsmith_f_op_f32(f32(-1f) * -666f)), _wgslsmith_f_op_f32(-432f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f) + _wgslsmith_f_op_f32(min(1661f, 391f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1901f, 341f, arg_2.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-861f - _wgslsmith_f_op_f32(-404f + 1000f))), -598f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-481f)))))));
    var var_4 = var_0.a;
    return firstLeadingBit(select(1u, 1u, global0[_wgslsmith_index_u32(countOneBits(1u), 16u)]));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = u_input.a;
    global1 = ~1u;
    var var_1 = select(41922i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 10391i, -1i, -1i), global2[_wgslsmith_index_u32(abs(35341u), 26u)]), !all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 16u)], !global0[_wgslsmith_index_u32(0u, 16u)])));
    let var_2 = vec2<u32>(func_6(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, -1726f, arg_0))) + vec3<f32>(arg_0, arg_0, arg_0)), func_4(func_2(Struct_1(vec4<i32>(16551i, u_input.a, 1i, 2147483647i)), Struct_1(vec4<i32>(-6599i, -31755i, 0i, u_input.a))), Struct_1(vec4<i32>(-8599i, 1i, u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), !vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 16u)]), select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 16u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], true, global0[_wgslsmith_index_u32(4294967295u, 16u)], false), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(25561u, 16u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(21061u, 16u)], true, global0[_wgslsmith_index_u32(4294967295u, 16u)])), true)), func_2(func_4(func_2(Struct_1(global2[_wgslsmith_index_u32(21563u, 26u)]), Struct_1(vec4<i32>(1i, -19602i, -2147483647i, u_input.a))), func_2(Struct_1(vec4<i32>(-1127i, u_input.a, -2147483647i, u_input.a)), Struct_1(global2[_wgslsmith_index_u32(102495u, 26u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), Struct_1(firstLeadingBit(vec4<i32>(-54198i, u_input.a, -11762i, -2147483647i)))), select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], true, true, false), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(4331u, 16u)], false), vec4<bool>(global0[_wgslsmith_index_u32(53285u, 16u)], true, global0[_wgslsmith_index_u32(42027u, 16u)], global0[_wgslsmith_index_u32(36691u, 16u)]), global0[_wgslsmith_index_u32(1u, 16u)]), false), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], false, global0[_wgslsmith_index_u32(0u, 16u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(17825u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], true, false), vec4<bool>(true, global0[_wgslsmith_index_u32(44331u, 16u)], true, global0[_wgslsmith_index_u32(1u, 16u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], true)), true), vec4<bool>(false, true, !global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(~47919u, 16u)]))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(reverseBits(48298u), 1u, 1u))));
    var var_3 = _wgslsmith_mod_vec4_u32(select(~_wgslsmith_mult_vec4_u32(min(vec4<u32>(var_2.x, 1u, 4294967295u, 41294u), vec4<u32>(1u, var_2.x, var_2.x, var_2.x)), vec4<u32>(var_2.x, var_2.x, var_2.x, 18290u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, var_2.x, var_2.x), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_2.x, var_2.x, 19516u, 1u)), abs(vec4<u32>(0u, var_2.x, var_2.x, var_2.x)), firstTrailingBit(vec4<u32>(var_2.x, var_2.x, var_2.x, 1u)))), global0[_wgslsmith_index_u32(~(var_2.x << (var_2.x % 32u)) & 78717u, 16u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(max(var_2.x, 4294967295u), 8469u, var_2.x, _wgslsmith_add_u32(var_2.x, var_2.x)), min(vec4<u32>(59890u, 54268u, var_2.x, 0u), vec4<u32>(var_2.x, var_2.x, 15790u, var_2.x) >> (vec4<u32>(var_2.x, 1u, 51203u, var_2.x) % vec4<u32>(32u))) & vec4<u32>(0u, var_2.x, var_2.x, 51224u)));
    return -739f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1174f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-185f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f) - _wgslsmith_f_op_f32(abs(-632f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(859f)))))) - _wgslsmith_f_op_f32(f32(-1f) * -910f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1274f)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1548f + 889f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-331f)), _wgslsmith_f_op_f32(356f * -727f))), -170f));
    var var_1 = !select(vec2<bool>(false, true), vec2<bool>(any(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 16u)]), false)), global0[_wgslsmith_index_u32(0u, 16u)] || global0[_wgslsmith_index_u32(firstLeadingBit(50413u), 16u)]), any(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(59410u, 16u)], global0[_wgslsmith_index_u32(29875u, 16u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(32990u, 23659u), 16u)])));
    let var_2 = ~(~(firstTrailingBit(1u) >> (0u % 32u)));
    let var_3 = vec2<u32>(var_2, countOneBits(4294967295u));
    let var_4 = func_5(_wgslsmith_f_op_vec3_f32(var_0.ywy - _wgslsmith_f_op_vec3_f32(-var_0.zzy)), func_4(func_4(func_2(Struct_1(vec4<i32>(u_input.a, u_input.a, 1i, -45687i)), Struct_1(global2[_wgslsmith_index_u32(0u, 26u)])), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.x, -893f)), func_4(Struct_1(vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), Struct_1(vec4<i32>(u_input.a, -26032i, u_input.a, u_input.a)), var_0.zw), vec2<bool>(true, true), vec4<bool>(global0[_wgslsmith_index_u32(var_2, 16u)], var_1.x, true, true)), var_0.zy), func_2(func_4(func_4(Struct_1(vec4<i32>(1i, u_input.a, -18498i, u_input.a)), Struct_1(global2[_wgslsmith_index_u32(var_3.x, 26u)]), vec2<f32>(-1093f, var_0.x)), Struct_1(vec4<i32>(8766i, -30309i, 2147483647i, 0i)), vec2<f32>(var_0.x, -451f)), Struct_1(firstTrailingBit(global2[_wgslsmith_index_u32(0u, 26u)]))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_0.zy)), vec2<f32>(var_0.x, var_0.x), !vec2<bool>(global0[_wgslsmith_index_u32(var_2, 16u)], true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zy * vec2<f32>(var_0.x, 1111f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_0.x)))))), !vec2<bool>(var_1.x && var_1.x, true), !select(select(!vec4<bool>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(4294967295u, 16u)], var_1.x), select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_3.x, 16u)], global0[_wgslsmith_index_u32(16843u, 16u)], false), vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false)), select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(true, global0[_wgslsmith_index_u32(var_3.x, 16u)], false, false), true)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_2, 16u)], global0[_wgslsmith_index_u32(var_2, 16u)], global0[_wgslsmith_index_u32(var_2, 16u)]), select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(var_3.x, 16u)], false, global0[_wgslsmith_index_u32(1u, 16u)])), select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(true, false, false, var_1.x))), var_1.x));
    global1 = max(79630u, func_6(var_4, Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(var_4.a.x, var_4.a.x, u_input.a, -38907i), func_2(var_4, var_4).a)), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(var_3.x, 16u)], true, var_1.x, false)), vec4<bool>(var_4.a.x == u_input.a, !var_1.x, false, var_1.x), select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_3.x, 16u)], false, true, var_1.x), vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(58687u, 16u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(var_3.x, 16u)], false, true, var_1.x), vec4<bool>(var_1.x, false, false, true), false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(360f + var_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - 474f)) - var_0.x), ~firstTrailingBit(~(~vec3<u32>(4294967295u, var_3.x, 20219u))), var_0.x, _wgslsmith_div_i32(firstLeadingBit(var_4.a.x) | ~(~var_4.a.x), -var_4.a.x), 54365u);
}

