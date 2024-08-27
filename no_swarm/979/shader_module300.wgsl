struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-372f, -165f), vec2<f32>(499f, -1000f), vec2<f32>(-900f, 652f), vec2<f32>(229f, -345f), vec2<f32>(2050f, -1385f), vec2<f32>(-1025f, 1856f), vec2<f32>(-814f, -376f), vec2<f32>(-1000f, 130f), vec2<f32>(1000f, -697f), vec2<f32>(-1000f, -656f), vec2<f32>(2258f, -1099f), vec2<f32>(-1007f, 244f), vec2<f32>(-101f, -1371f), vec2<f32>(-684f, -874f), vec2<f32>(-715f, -234f), vec2<f32>(-647f, -1173f), vec2<f32>(-301f, 1344f), vec2<f32>(596f, 1000f), vec2<f32>(1213f, -2018f));

var<private> global1: vec4<bool>;

var<private> global2: array<u32, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<i32>) -> f32 {
    global0 = array<vec2<f32>, 19>();
    var var_0 = -1822f;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(411f, 441f) - global0[_wgslsmith_index_u32(u_input.d.x, 19u)])) - global0[_wgslsmith_index_u32(min(~4294967295u, _wgslsmith_sub_u32(12266u, 1u)), 19u)]) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1233f, 1222f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1000f, 256f)), _wgslsmith_f_op_f32(-365f * 1284f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(4294967295u, 19u)])))) - _wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(max(~0u, global2[_wgslsmith_index_u32(~18171u, 5u)]), 19u)], vec2<f32>(_wgslsmith_f_op_f32(556f - 820f), _wgslsmith_f_op_f32(-1226f + 768f)), !arg_0.wy))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-838f)));
    var var_3 = _wgslsmith_sub_vec4_i32(arg_2, vec4<i32>(_wgslsmith_div_i32(-2147483647i, _wgslsmith_div_i32(-2147483647i, u_input.b)) << (global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.d.x, u_input.a))), 5u)] % 32u), u_input.b, i32(-1i) * -7562i, -2147483647i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)) - -1566f);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    var var_0 = Struct_3(Struct_1(~(~vec4<i32>(u_input.b, arg_0.e.a.x, 28427i, arg_0.e.c)) ^ min(~arg_0.e.a, vec4<i32>(u_input.b, arg_0.d.c, u_input.b, 0i)), arg_0.d.b, arg_0.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-353f - -272f), -1614f)))), _wgslsmith_mod_vec4_i32(countOneBits(arg_0.c.a), vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(-arg_0.c.a, ~arg_0.c.a), firstTrailingBit(_wgslsmith_add_i32(u_input.b, u_input.b)), _wgslsmith_mult_i32(-10610i, min(108i, u_input.b)))), _wgslsmith_dot_vec4_u32(~min(abs(vec4<u32>(4294967295u, 37483u, 24284u, 4040u)), vec4<u32>(0u, u_input.d.x, arg_2.x, arg_2.x) >> (vec4<u32>(u_input.c.x, arg_0.b, 19646u, 1u) % vec4<u32>(32u))), abs((vec4<u32>(4294967295u, 26501u, 0u, u_input.a) ^ vec4<u32>(arg_0.b, 4294967295u, arg_1, arg_1)) ^ abs(vec4<u32>(41413u, 35838u, arg_0.b, global2[_wgslsmith_index_u32(4294967295u, 5u)])))), ~2147483647i);
    let var_1 = 1i;
    var var_2 = vec3<i32>(~var_1, var_1, _wgslsmith_dot_vec4_i32(var_0.a.a, _wgslsmith_sub_vec4_i32(var_0.b, select(vec4<i32>(arg_0.d.c, -1i, u_input.b, u_input.b), vec4<i32>(7253i, arg_0.e.a.x, -15699i, arg_0.c.c), 1000f < var_0.a.d))));
    let var_3 = Struct_2(true, ~arg_1 ^ 0u, arg_0.e, Struct_1(vec4<i32>(~var_2.x, _wgslsmith_dot_vec2_i32(-arg_0.e.a.zy, vec2<i32>(var_2.x, 2147483647i)), 5028i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -6398i, _wgslsmith_mult_i32(arg_0.e.c, arg_0.d.c))), !(!(!var_0.a.b)), _wgslsmith_mult_i32(1i, -firstLeadingBit(1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1667f + arg_0.d.d), _wgslsmith_f_op_f32(686f * -1083f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -384f), _wgslsmith_f_op_f32(max(534f, -2590f))))), Struct_1((_wgslsmith_div_vec4_i32(vec4<i32>(-61428i, var_0.d, 0i, arg_0.c.c), arg_0.d.a) | vec4<i32>(-28586i, u_input.b, u_input.b, var_0.b.x)) & arg_0.c.a, select(select(vec4<bool>(false, false, var_0.a.b.x, false), vec4<bool>(true, false, global1.x, true), select(vec4<bool>(var_0.a.b.x, arg_0.a, var_0.a.b.x, true), vec4<bool>(var_0.a.b.x, true, var_0.a.b.x, false), arg_0.d.b)), vec4<bool>(!global1.x, true, any(vec3<bool>(var_0.a.b.x, arg_0.a, global1.x)), any(vec4<bool>(var_0.a.b.x, true, true, global1.x))), select(select(arg_0.e.b, var_0.a.b, var_0.a.b), var_0.a.b, !vec4<bool>(false, false, arg_0.c.b.x, false))), -var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.d - 952f) - 1551f))));
    let var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(~arg_1, 19u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.c.d)) - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.c, global2[_wgslsmith_index_u32(u_input.d.x, 5u)]), vec3<u32>(var_3.b, 21530u, var_0.c)), 19u)])), var_0.a.b.yz))));
    return _wgslsmith_clamp_i32(var_2.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(var_0.b), arg_0.d.a >> (vec4<u32>(0u, 0u, arg_0.b, u_input.c.x) % vec4<u32>(32u))), vec4<i32>(u_input.b, var_2.x, ~var_1, ~var_1)), _wgslsmith_mod_i32(abs(_wgslsmith_sub_i32(var_0.b.x, -7331i)), firstLeadingBit(-1i) >> (global2[_wgslsmith_index_u32(arg_0.b, 5u)] % 32u))) ^ max(-(_wgslsmith_div_i32(0i, 15658i) | _wgslsmith_dot_vec4_i32(arg_0.e.a, var_3.d.a)), _wgslsmith_add_i32(var_3.c.a.x, arg_0.e.c));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_1(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.b, 2147483647i), u_input.b, ~0i) & vec4<i32>(countOneBits(1i), func_3(Struct_2(true, global2[_wgslsmith_index_u32(4958u, 5u)], Struct_1(vec4<i32>(1i, 2147483647i, -6995i, 31369i), vec4<bool>(false, false, true, global1.x), -1i, -1499f), Struct_1(vec4<i32>(-2673i, u_input.b, 2147483647i, 0i), vec4<bool>(global1.x, global1.x, true, global1.x), 0i, 1069f), Struct_1(vec4<i32>(22407i, -2478i, -1333i, u_input.b), vec4<bool>(global1.x, false, true, true), -1i, -768f)), 4294967295u, u_input.d), ~u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b)), vec4<bool>(global1.x, true, any(global1.wy) == global1.x, global1.x), 2147483647i, 435f), -min(min(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.b, -2147483647i, 0i), vec4<i32>(u_input.b, -1i, u_input.b, -44278i)), vec4<i32>(26537i, u_input.b, 0i, u_input.b)), -vec4<i32>(u_input.b, u_input.b, 1i, u_input.b) | vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~u_input.a), reverseBits(global2[_wgslsmith_index_u32(u_input.a, 5u)]) >> (30057u % 32u)), global2[_wgslsmith_index_u32(~u_input.a, 5u)]), 21131i);
    let var_1 = Struct_1(var_0.a.a << ((_wgslsmith_mod_vec4_u32(vec4<u32>(34869u, u_input.d.x, u_input.a, var_0.c), ~vec4<u32>(68591u, 26165u, 44165u, 1u)) >> (vec4<u32>(15065u, select(u_input.a, 1u, false), 4294967295u, ~var_0.c) % vec4<u32>(32u))) % vec4<u32>(32u)), !vec4<bool>(!var_0.a.b.x, var_0.a.b.x, global1.x, var_0.a.d == -347f), -2147483647i, _wgslsmith_f_op_f32(func_1(var_0.a.b, global1.x, var_0.a.a)));
    global1 = select(vec4<bool>(true, true && !global1.x, 1u <= ~countOneBits(var_0.c), !all(vec4<bool>(var_0.a.b.x, true, false, var_1.b.x))), var_1.b, var_0.a.b.x);
    var var_2 = var_1;
    var_0 = Struct_3(Struct_1(-var_0.b, !var_1.b, i32(-1i) * -u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-334f + 427f) + -1174f))), reverseBits(vec4<i32>(_wgslsmith_mod_i32(min(0i, -43212i), var_2.c), _wgslsmith_mult_i32(var_0.a.a.x, 35287i) ^ _wgslsmith_clamp_i32(var_2.a.x, 12178i, var_2.a.x), 1i, reverseBits(~(-2147483647i)))), ~1u, select(-reverseBits(abs(var_0.b.x)), ~(-21374i), all(!var_1.b)));
    return Struct_2(false, min(4294967295u, u_input.c.x), Struct_1(-max(var_0.a.a, ~var_1.a), select(!select(var_1.b, var_0.a.b, vec4<bool>(false, var_0.a.b.x, false, global1.x)), select(select(var_2.b, vec4<bool>(true, var_0.a.b.x, true, var_2.b.x), var_1.b), select(var_2.b, vec4<bool>(global1.x, false, var_0.a.b.x, false), vec4<bool>(var_2.b.x, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x)), select(var_0.a.b, var_2.b, var_1.b)), vec4<bool>(false && var_2.b.x, var_0.a.b.x, var_1.b.x, !var_0.a.b.x)), -(~(-var_1.c)), 1783f), Struct_1(-vec4<i32>(0i, var_1.a.x, var_2.a.x, firstLeadingBit(31325i)), vec4<bool>(any(select(vec4<bool>(true, var_0.a.b.x, var_0.a.b.x, var_2.b.x), var_1.b, var_2.b)), any(vec3<bool>(true, false, var_1.b.x)), (95169u & var_0.c) >= ~var_0.c, global1.x), min(var_1.a.x, ~15172i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)))), var_1);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = func_2();
    let var_1 = Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_1.c.c, 2147483647i, u_input.b, arg_1.d.a.x)), vec4<i32>(u_input.b, -41929i, 2147483647i, var_0.e.c)), vec4<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.b), 22507i, ~arg_1.c.a.x, 0i)), select(func_2().e.b, vec4<bool>(u_input.b > 12397i, -902f < var_0.c.d, false, false), var_0.e.b), var_0.c.c, 704f), var_0.d.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(1u, global2[_wgslsmith_index_u32(7893u, 5u)], arg_1.b)), vec3<u32>(1u, arg_1.b, u_input.a), reverseBits(vec3<u32>(u_input.a, var_0.b, 99390u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 25421u, 31317u, 78u), vec4<u32>(17771u, u_input.a, u_input.c.x, 45176u)), 1u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.d))) ^ (_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_div_u32(arg_1.b, u_input.a), firstTrailingBit(global2[_wgslsmith_index_u32(1u, 5u)])) | max(_wgslsmith_dot_vec2_u32(vec2<u32>(49909u, arg_1.b), vec2<u32>(4294967295u, var_0.b)), arg_1.b)), min(i32(-1i) * -2147483647i, ~arg_1.d.c));
    var_0 = arg_1;
    var var_2 = var_1;
    return StorageBuffer(-countOneBits(var_0.c.a), _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(var_1.b, var_2.b), -vec4<i32>(-1i, -2147483647i, var_2.b.x, arg_1.d.c)) ^ var_0.c.c, arg_1.c.a.xwx, ~(vec2<u32>(~var_2.c, _wgslsmith_add_u32(var_2.c, var_0.b)) | abs(u_input.c)), _wgslsmith_f_op_f32(var_0.e.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(arg_1.c.d - arg_1.c.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(-286f));
    let var_1 = 38315i >> ((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.c >> (vec2<u32>(u_input.c.x, 0u) % vec2<u32>(32u)), vec2<u32>(u_input.d.x, 1u)), 5u)], 5u)] | 32164u) % 32u);
    var var_2 = u_input.c.x;
    global2 = array<u32, 5>();
    let x = u_input.a;
    s_output = func_4(vec3<f32>(-435f, -327f, _wgslsmith_f_op_f32(func_1(!vec4<bool>(true, true, global1.x, false), !(global2[_wgslsmith_index_u32(38538u, 5u)] <= 14818u), -(vec4<i32>(-1i, -2147483647i, -2147483647i, u_input.b) ^ vec4<i32>(20916i, var_1, u_input.b, -22081i))))), func_2());
}

