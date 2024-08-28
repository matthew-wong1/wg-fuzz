struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(0u, 1u, 4294967295u, 4294967295u, 1u, 12491u);

var<private> global1: Struct_2 = Struct_2(-2165f, Struct_1(true, vec3<bool>(false, false, false), vec4<bool>(false, false, false, true), false, 1527f), vec3<bool>(false, true, false), Struct_1(false, vec3<bool>(true, false, false), vec4<bool>(false, false, false, false), false, -2075f), Struct_1(false, vec3<bool>(true, false, false), vec4<bool>(true, true, true, true), false, 587f));

var<private> global2: array<bool, 27> = array<bool, 27>(false, true, false, true, false, false, false, false, false, false, true, false, false, true, false, true, false, false, true, false, false, false, false, true, true, false, true);

var<private> global3: Struct_2 = Struct_2(-1340f, Struct_1(true, vec3<bool>(true, false, true), vec4<bool>(false, true, true, true), false, 407f), vec3<bool>(true, true, true), Struct_1(true, vec3<bool>(false, true, false), vec4<bool>(false, true, false, false), false, 753f), Struct_1(false, vec3<bool>(false, false, true), vec4<bool>(true, true, false, true), false, 809f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = reverseBits(~min(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -57103i, u_input.a), firstLeadingBit(vec3<i32>(0i, u_input.a, 21816i))), abs(vec3<i32>(u_input.a, 0i, u_input.a))));
    var var_1 = select(~(-_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.a, -1i), var_0), reverseBits(var_0))), firstLeadingBit(_wgslsmith_div_i32(-14218i, ~abs(u_input.a))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)], u_input.b), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(568u, 6u)], 6u)], 32250u)) ^ abs(vec3<u32>(global0[_wgslsmith_index_u32(1u, 6u)], u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 6u)], 6u)]) << (vec3<u32>(0u, u_input.b, 0u) % vec3<u32>(32u))), ~vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.b, u_input.b), ~85156u, _wgslsmith_sub_u32(u_input.b, u_input.b))), 27u)]);
    let var_2 = Struct_2(global3.e.e, arg_1.b, arg_0.b.b, Struct_1(true, arg_0.d.c.wwz, global3.b.c, true, 1159f), Struct_1(1000f != _wgslsmith_f_op_f32(arg_1.a * -250f), select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 27u)], arg_1.b.b.x, global1.b.c.x), vec3<bool>(true, false, global1.e.c.x), vec3<bool>(false, false, false)), arg_1.c, true), global1.d.b, all(select(vec2<bool>(false, global3.e.c.x), arg_1.c.xx, vec2<bool>(false, arg_0.d.c.x)))), global3.d.c, all(global3.d.c), global1.a));
    var_1 = var_0.x;
    var var_3 = -countOneBits(min(vec2<i32>(~var_0.x, 24701i << (global0[_wgslsmith_index_u32(u_input.b, 6u)] % 32u)), var_0.zz));
    return ~0i;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec4<i32> {
    let var_0 = vec2<u32>(~(~_wgslsmith_mod_u32(1u, arg_3)), u_input.b);
    let var_1 = select(u_input.a, -1i, false) ^ _wgslsmith_div_i32(func_3(Struct_2(_wgslsmith_f_op_f32(-1112f - arg_1.e), Struct_1(global1.e.c.x, arg_1.b, vec4<bool>(true, false, true, global3.c.x), true, global1.a), !vec3<bool>(true, false, global1.e.d), arg_1, Struct_1(true, vec3<bool>(arg_1.a, arg_0.x, false), arg_0, false, arg_1.e)), Struct_2(_wgslsmith_f_op_f32(-global1.b.e), Struct_1(arg_0.x, arg_0.zyx, vec4<bool>(true, arg_1.c.x, true, arg_0.x), false, global1.e.e), !vec3<bool>(global3.e.b.x, arg_0.x, false), Struct_1(arg_0.x, arg_1.c.xyx, arg_0, arg_0.x, -332f), Struct_1(arg_0.x, global1.b.c.xyz, arg_0, true, global1.d.e))), u_input.a);
    let var_2 = Struct_2(global3.b.e, Struct_1(all(vec4<bool>(arg_1.b.x, global1.e.b.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21256u, 6u)], 6u)], 6u)] ^ 8579u, 27u)], arg_1.b.x | true)), arg_1.b, select(select(arg_0, global1.d.c, vec4<bool>(global2[_wgslsmith_index_u32(arg_3, 27u)], true, false, global3.e.c.x)), select(vec4<bool>(arg_1.c.x, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12525u, 6u)], 27u)], true), vec4<bool>(true, global3.e.c.x, true, arg_1.a), u_input.a >= 35868i), global2[_wgslsmith_index_u32(min(var_0.x, firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 6u)])), 27u)]), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global3.d.e)))))), select(!vec3<bool>(global1.a <= arg_1.e, false & global1.b.a, all(vec4<bool>(false, true, global1.d.c.x, global1.b.c.x))), arg_0.xzx, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.e * 1488f)) > _wgslsmith_div_f32(arg_1.e, _wgslsmith_f_op_f32(min(-1935f, -229f))), vec3<bool>(global3.c.x, true, arg_1.d), vec4<bool>(all(!vec3<bool>(arg_0.x, global3.b.b.x, global3.c.x)), arg_1.e >= _wgslsmith_f_op_f32(min(global3.e.e, global3.e.e)), arg_1.b.x, !all(vec3<bool>(arg_0.x, true, global3.e.b.x))), global3.b.a, global1.e.e), Struct_1(true, vec3<bool>(true, arg_1.c.x, true), select(select(vec4<bool>(true, global1.c.x, arg_1.c.x, true), global3.e.c, global1.d.a), !vec4<bool>(global1.d.c.x, arg_0.x, arg_1.a, true), select(global1.d.c, select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(arg_3, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]), global3.b.c, global2[_wgslsmith_index_u32(var_0.x, 27u)]), arg_0.x)), all(select(vec2<bool>(true, true), vec2<bool>(global1.d.b.x, false), true)), -725f));
    var var_3 = firstLeadingBit(vec2<i32>(~abs(-36881i), -16112i) << (vec2<u32>(firstLeadingBit(firstLeadingBit(47489u)), reverseBits(_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(0u, global0[_wgslsmith_index_u32(arg_3, 6u)])))) % vec2<u32>(32u)));
    let var_4 = -1i;
    return vec4<i32>(max(_wgslsmith_clamp_i32(-var_3.x & min(8599i, -2147483647i), abs(var_3.x) | arg_2, _wgslsmith_mod_i32(countOneBits(var_4), -var_1)), max(arg_2, var_3.x | arg_2)), arg_2, firstLeadingBit(max(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(19042i, arg_2, var_4, arg_2)), -vec4<i32>(var_1, var_4, -2990i, arg_2)), -_wgslsmith_add_i32(u_input.a, -1i))), _wgslsmith_dot_vec2_i32(select(vec2<i32>(~var_1, ~42864i), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -6408i), vec2<i32>(-1i, -27081i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -24294i), vec2<i32>(29853i, var_4))), select(global3.d.c.wz, !arg_1.b.yz, false)), vec2<i32>(_wgslsmith_sub_i32(var_4, -28399i), -2147483647i) & (firstLeadingBit(vec2<i32>(var_3.x, 11022i)) << ((vec2<u32>(arg_3, arg_3) & var_0) % vec2<u32>(32u)))));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global3.b.e)))) - -595f) * -1343f), Struct_1(1i == arg_2, !global1.c, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, global3.e.c.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 27u)]), global0[_wgslsmith_index_u32(u_input.b, 6u)] > u_input.b), true, _wgslsmith_f_op_f32(ceil(-443f))), select(!vec3<bool>(global2[_wgslsmith_index_u32(90981u, 27u)], any(vec2<bool>(global3.b.c.x, true)), true), !select(global3.e.b, select(global1.c, global3.b.c.xxw, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 6u)], 27u)]), true), global2[_wgslsmith_index_u32(~0u, 27u)]), global3.b, Struct_1(false, vec3<bool>(true != !global3.d.d, !global3.e.d, select(all(vec4<bool>(true, false, global3.b.c.x, global3.c.x)), any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 27u)], global1.e.b.x, global1.d.c.x)), true)), !(!select(vec4<bool>(global3.c.x, global1.d.b.x, global3.c.x, global3.e.d), global3.b.c, false)), all(!global3.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d.e * _wgslsmith_f_op_f32(1534f + 865f)) - _wgslsmith_f_op_f32(abs(851f)))));
    var var_1 = vec3<bool>(false, !all(!var_0.d.c.xx), false);
    global2 = array<bool, 27>();
    var var_2 = arg_2;
    var var_3 = firstTrailingBit(reverseBits(reverseBits(0u)) >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 6u)]), 1999u) % 32u)) >> (~12374u % 32u);
    return var_0;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.e)))), countOneBits(~max(-vec4<i32>(u_input.a, -4992i, u_input.a, 0i), func_2(vec4<bool>(true, false, global1.d.d, global3.d.b.x), arg_0, 1i, u_input.b))), -5507i);
    var var_1 = !(!(!arg_0.d) & global1.b.a);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u & global0[_wgslsmith_index_u32(u_input.b, 6u)], ~96278u, countOneBits(u_input.b)) << ((_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 8764u), vec3<u32>(25472u, 1u, 35888u)) | ~vec3<u32>(4294967295u, 13908u, global0[_wgslsmith_index_u32(22059u, 6u)])) % vec3<u32>(32u)), vec3<u32>(~global0[_wgslsmith_index_u32(7350u, 6u)] >> (global0[_wgslsmith_index_u32(22156u, 6u)] % 32u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(32136u, u_input.b), min(0u, global0[_wgslsmith_index_u32(0u, 6u)]), firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b, 6u)])), min(select(4294967295u, 62172u, true), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26841u, 6u)], 6u)] >> (u_input.b % 32u)))), 6u)] | (countOneBits(76360u) ^ u_input.b);
    let var_3 = arg_0.e == _wgslsmith_f_op_f32(-1469f - _wgslsmith_f_op_f32(min(1619f, _wgslsmith_f_op_f32(min(190f, global3.a)))));
    global0 = array<u32, 6>();
    return func_4(_wgslsmith_div_f32(140f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(917f - 113f), _wgslsmith_div_f32(global3.e.e, global3.b.e), true))))), -((-vec4<i32>(u_input.a, -2147483647i, -1i, 2984i) >> (select(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 1u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 6u)], 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)], 0u), global1.b.c) % vec4<u32>(32u))) | vec4<i32>(38258i, 1i, select(2147483647i, u_input.a, global3.d.d), u_input.a)), reverseBits(_wgslsmith_div_i32(u_input.a >> (u_input.b % 32u), firstLeadingBit(1i)))).d;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(false, global3.b.c.xzx, func_1(Struct_1(any(global3.e.c), global1.c, !(!vec4<bool>(true, true, true, arg_0.d)), global1.e.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(424f, 634f)) * _wgslsmith_f_op_f32(f32(-1f) * -351f)))).c, !arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(2092f, _wgslsmith_div_f32(arg_0.e, 907f), 1026f >= global3.e.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(global3.b.e * 373f), func_5(func_1(global1.e)), select(global3.e.b, vec3<bool>(global3.c.x, func_1(func_1(Struct_1(global3.e.d, vec3<bool>(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 6u)], 27u)], true), global3.d.c, global1.d.c.x, 1000f))).d, !global2[_wgslsmith_index_u32(21256u, 27u)] && true), vec3<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 6u)], 6u)], 27u)], true, false)), true, select(global2[_wgslsmith_index_u32(u_input.b, 27u)], false, true) == global1.c.x)), Struct_1(false, func_4(global3.b.e, -vec4<i32>(0i, u_input.a, u_input.a, 24594i), abs(_wgslsmith_mod_i32(-1089i, u_input.a))).e.b, select(!vec4<bool>(global3.b.a, global1.e.c.x, true, global2[_wgslsmith_index_u32(0u, 27u)]), select(func_4(global3.d.e, vec4<i32>(6632i, u_input.a, -46563i, 16753i), u_input.a).e.c, !vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 6u)], 6u)], 27u)], false, global3.d.d, false), global1.e.c.x && true), true), global3.e.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global1.a, 528f)))), global1.d.e)), Struct_1(func_4(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(-1877f * -664f)), ~vec4<i32>(u_input.a, u_input.a, 16620i, u_input.a), u_input.a).c.x, vec3<bool>(_wgslsmith_f_op_f32(-global3.a) > _wgslsmith_f_op_f32(floor(global3.d.e)), all(vec2<bool>(global2[_wgslsmith_index_u32(10575u, 27u)], global2[_wgslsmith_index_u32(55505u, 27u)])), any(select(vec2<bool>(global2[_wgslsmith_index_u32(76819u, 27u)], false), global1.d.b.zz, global3.d.c.yx))), select(vec4<bool>(all(global3.e.c.yy), any(global1.b.c.zyx), true, false & global2[_wgslsmith_index_u32(u_input.b, 27u)]), vec4<bool>(true, false, all(global1.d.c), func_1(Struct_1(false, global3.d.c.xzw, global3.d.c, global3.b.b.x, global1.e.e)).a), select(!global1.d.c, select(global3.e.c, vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 27u)], true, global2[_wgslsmith_index_u32(u_input.b, 27u)], global3.e.b.x), global3.e.c), false)), global3.e.d, global3.d.e));
    global0 = array<u32, 6>();
    var var_1 = firstLeadingBit(6989u);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(-401f, global3.e.e)), var_0.b.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-390f, var_0.a) - vec2<f32>(819f, 158f))), func_4(_wgslsmith_f_op_f32(-var_0.a), vec4<i32>(u_input.a, 23826i, u_input.a, 1i) >> (vec4<u32>(global0[_wgslsmith_index_u32(1243u, 6u)], 4294967295u, u_input.b, 1u) % vec4<u32>(32u)), _wgslsmith_add_i32(u_input.a, -24112i)).c.xy)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.e, 1000f)) - vec2<f32>(-1507f, global1.b.e)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.d.e, 1532f), vec2<f32>(global1.d.e, 1000f))))), vec2<bool>(true, true)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(522f, _wgslsmith_f_op_f32(ceil(-1969f)))));
    var var_3 = abs(reverseBits(select(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), -vec3<i32>(17327i, u_input.a, -5568i), func_4(global3.e.e, vec4<i32>(-97081i, u_input.a, 0i, 54923i), u_input.a).c)) & ~countOneBits(reverseBits(vec3<i32>(2147483647i, u_input.a, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-33837i, u_input.a, var_3.x, var_3.x), -_wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, 1i, var_3.x), vec4<i32>(u_input.a, var_3.x, 0i, -25292i))), abs(-_wgslsmith_mult_i32(u_input.a, u_input.a))));
}

