struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-302f, -1223f, 1000f, 1319f, -1577f, 1701f, -1738f, -993f, -1000f, 1007f, 392f, -1530f, -1026f, -1550f, -1061f, 1337f, 2118f, 176f, -306f, -1000f, -526f, 1663f, -1000f, -199f, 162f, -959f, -261f, -429f);

var<private> global1: i32 = -7611i;

var<private> global2: array<bool, 16> = array<bool, 16>(false, false, false, true, false, false, false, false, true, false, false, true, true, false, true, true);

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global1 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(abs(select(-25896i, u_input.a, global2[_wgslsmith_index_u32(35677u, 16u)])), abs(countOneBits(u_input.a))), -2147483647i) ^ (u_input.a & -countOneBits(countOneBits(u_input.a)));
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(11998u, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)])), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(89652u, 1u), 28u)], _wgslsmith_f_op_f32(max(150f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)])), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.b.x, 28u)])))))), _wgslsmith_add_i32(u_input.a ^ (~u_input.a << (~u_input.b.x % 32u)), _wgslsmith_add_i32(~(-46495i), ~(-1i))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(max(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), countOneBits(1u)) ^ (u_input.b.x & ~21865u), _wgslsmith_sub_u32(38852u ^ ~u_input.b.x, _wgslsmith_div_u32(firstLeadingBit(u_input.b.x), u_input.b.x))), 19u)]);
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(7136i, var_0.b, var_0.c.b.x, u_input.a), vec4<i32>(-2147483647i, 1i, var_0.b, -1i))), select(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.b.x, 1i, u_input.a, u_input.a), vec4<i32>(0i, 8656i, u_input.a, 0i)), arg_0.x & global2[_wgslsmith_index_u32(1u, 16u)])), ~u_input.a), reverseBits(-_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-5196i, 25187i, -26901i, -6311i)), vec4<i32>(0i, 49141i, 0i, u_input.a) ^ vec4<i32>(u_input.a, 31423i, var_0.c.c.x, u_input.a))), -27648i);
    let var_2 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-994f, 879f, 515f, 746f) - _wgslsmith_f_op_vec4_f32(var_0.a * var_0.a)), any(vec2<bool>(true, true)))), var_0.a), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.x, 29784i), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.c.b.zx, vec2<i32>(2147483647i, 2147483647i)), var_1.yz, _wgslsmith_div_vec2_i32(var_1.zx, var_1.yy))), Struct_1(136566u, select(var_1, max(var_1, var_1), arg_0.x) | ~_wgslsmith_div_vec3_i32(var_1, vec3<i32>(0i, u_input.a, 2147483647i)), abs(-var_1.zz | vec2<i32>(u_input.a, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.d)) * 1300f)));
    global1 = var_1.x;
    return u_input.b.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = u_input.b.x;
    let var_1 = countOneBits(30957u);
    let var_2 = vec3<u32>(1u << (firstTrailingBit(u_input.b.x) % 32u), var_1, func_3(arg_1));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_1, 28u)])))), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~var_1, 28u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(17114u, 28u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 28u)]))), _wgslsmith_f_op_f32(f32(-1f) * -347f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1008f, -2274f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], -400f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(653f, 400f, -540f, global0[_wgslsmith_index_u32(92982u, 28u)]))))))));
    var var_4 = Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], arg_1, Struct_1(var_2.x, vec3<i32>(~(-1i), reverseBits(-30984i) | -u_input.a, ~u_input.a), vec2<i32>(-2147483647i, min(u_input.a, u_input.a)) << ((abs(var_2.xz) | ~vec2<u32>(u_input.b.x, 102419u)) % vec2<u32>(32u)), var_3.x), all(!arg_1), global3[_wgslsmith_index_u32(20433u, 19u)]);
    return global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(~u_input.b.x), var_2.x), 19u)];
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_3 {
    global1 = -2356i;
    let var_0 = global2[_wgslsmith_index_u32(abs(arg_1.c.a), 16u)] || arg_1.d;
    global3 = array<Struct_1, 19>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(firstLeadingBit(arg_1.e.a), 28u)], 397f), _wgslsmith_div_f32(-263f, global0[_wgslsmith_index_u32(3247u, 28u)]), _wgslsmith_f_op_f32(sign(1000f)), global0[_wgslsmith_index_u32(1u, 28u)])) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1276f), global0[_wgslsmith_index_u32(1u, 28u)], arg_1.a.d, _wgslsmith_f_op_f32(-arg_1.c.d))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-329f, arg_1.e.d, 1251f, -285f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.d, arg_1.c.d, arg_1.a.d, global0[_wgslsmith_index_u32(u_input.b.x, 28u)])))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(66087u, 28u)], global0[_wgslsmith_index_u32(45939u, 28u)], 447f, -467f)))));
    var var_2 = Struct_3(countOneBits(u_input.b), 1087f, 15682u, vec2<bool>(true, true));
    return Struct_3(_wgslsmith_sub_vec2_u32(var_2.a, u_input.b), global0[_wgslsmith_index_u32(arg_2.x, 28u)], abs(_wgslsmith_add_u32(~64154u, var_2.c) << (34437u % 32u)), arg_1.b.yx);
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    let var_0 = func_4(vec3<i32>(u_input.a, _wgslsmith_sub_i32(-u_input.a, ~16647i), 1637i << (reverseBits(0u) % 32u)) >> (~firstTrailingBit(firstTrailingBit(vec3<u32>(21263u, u_input.b.x, u_input.b.x))) % vec3<u32>(32u)), Struct_2(func_2(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 16u)] & arg_0.x), !(!arg_0)), vec3<bool>(any(select(vec4<bool>(arg_0.x, true, global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec4<bool>(false, true, false, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)], true, false))), !(!global2[_wgslsmith_index_u32(u_input.b.x, 16u)]), true), func_2(select(select(arg_0.xy, vec2<bool>(true, false), arg_0.xx), arg_0.zx, vec2<bool>(global2[_wgslsmith_index_u32(19599u, 16u)], global2[_wgslsmith_index_u32(0u, 16u)])), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global2[_wgslsmith_index_u32(0u, 16u)], arg_0.x)), arg_0.x, func_2(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 16u)], arg_0.x), select(arg_0.yz, vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, arg_0.x)), select(vec2<bool>(arg_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 16u)]), arg_0.zy, vec2<bool>(false, true))), select(arg_0, !arg_0, true))), ~vec3<u32>(0u, u_input.b.x, 117104u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(1u, u_input.b.x, 1u, 4294967295u), vec4<u32>(13843u, u_input.b.x, 19559u, var_0.a.x), vec4<bool>(true, true, var_0.d.x, arg_0.x)), _wgslsmith_add_vec4_u32(select(vec4<u32>(9082u, var_0.a.x, u_input.b.x, 2999u), vec4<u32>(var_0.c, 1u, u_input.b.x, u_input.b.x), true), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4280u, u_input.b.x, 50216u), vec4<u32>(var_0.c, 4294967295u, 4294967295u, 101051u)))), ~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 11185i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, 6153i, u_input.a))), ~_wgslsmith_clamp_vec2_i32(min(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(18080i, 1i)), min(vec2<i32>(-3921i, 2147483647i), vec2<i32>(-5217i, u_input.a)), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(abs(-1000f))), vec3<bool>(var_0.d.x, !select(global2[_wgslsmith_index_u32(4294967295u, 16u)], true, true) == arg_0.x, !select(global2[_wgslsmith_index_u32(u_input.b.x, 16u)] | global2[_wgslsmith_index_u32(14670u, 16u)], all(vec4<bool>(true, true, var_0.d.x, true)), global2[_wgslsmith_index_u32(~u_input.b.x, 16u)])), global3[_wgslsmith_index_u32(25171u, 19u)], !select(all(vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 16u)], true, false, arg_0.x)), true, false) || !any(vec3<bool>(false, true, true)), Struct_1(abs(0u), ~(~vec3<i32>(-1i, u_input.a, u_input.a) >> (~vec3<u32>(var_0.c, u_input.b.x, var_0.a.x) % vec3<u32>(32u))), countOneBits(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(-49489i, u_input.a), vec2<i32>(u_input.a, 62756i))), global0[_wgslsmith_index_u32(1u, 28u)]));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_1.c.a, 28u)], global0[_wgslsmith_index_u32(var_1.c.a, 28u)], var_1.e.d, var_0.b)))))), vec4<f32>(-1228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - 651f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.a.a, 0u), select(vec3<u32>(13838u, 25710u, 1u), vec3<u32>(var_1.c.a, 36908u, var_0.c), arg_0)), 28u)], -599f), !(-2147483647i >= u_input.a))), _wgslsmith_clamp_i32(-1i, max(var_1.e.c.x, var_1.c.b.x) ^ (var_1.a.b.x << (~6169u % 32u)), -max(firstLeadingBit(-59766i), select(-2147483647i, u_input.a, false))), var_1.a);
    global3 = array<Struct_1, 19>();
    let var_3 = !all(!vec4<bool>(var_0.b > var_1.a.d, var_2.c.a >= u_input.b.x, var_1.b.x, arg_0.x));
    return -(~select(firstLeadingBit(12935i) << (0u % 32u), -68219i, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<bool>(any(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.b.x, 16u)], false)) & global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, 0u << (u_input.b.x % 32u), _wgslsmith_mod_u32(24038u, 4294967295u)), 16u)], -46209i > u_input.a, true));
    var var_1 = false;
    global0 = array<f32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(56786u, u_input.b.x, 1571u) >> (vec3<u32>(38909u, u_input.b.x, 0u) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, 1u, u_input.b.x))), -vec3<i32>(~max(u_input.a, u_input.a), -1i, firstTrailingBit(38737i ^ u_input.a)), 8662i >> (_wgslsmith_clamp_u32(36795u << (u_input.b.x % 32u), func_2(vec2<bool>(true, false), !vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)])).a, abs(1u)) % 32u), _wgslsmith_add_vec3_i32(~vec3<i32>(~(-33324i), _wgslsmith_mult_i32(u_input.a, 1i), u_input.a ^ 0i), abs(~vec3<i32>(u_input.a, 1i, 1i)) ^ countOneBits(-vec3<i32>(u_input.a, u_input.a, u_input.a))));
}

