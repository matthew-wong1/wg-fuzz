struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>) -> vec4<u32> {
    var var_0 = arg_1.x;
    let var_1 = vec3<u32>(arg_1.x & _wgslsmith_dot_vec3_u32(min(~vec3<u32>(u_input.a, 4294967295u, 1u), abs(vec3<u32>(1u, 4294967295u, u_input.a))), select(select(vec3<u32>(arg_1.x, u_input.a, 58214u), vec3<u32>(1u, u_input.a, 4294967295u), vec3<bool>(true, true, false)), vec3<u32>(68930u, u_input.a, 23533u), all(vec2<bool>(false, true)))), 4294967295u, min(u_input.a, ~_wgslsmith_clamp_u32(firstLeadingBit(arg_1.x), ~arg_1.x, ~arg_1.x)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-427f - 593f) * _wgslsmith_f_op_f32(sign(245f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(413f))), -273f))), 150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1781f), _wgslsmith_f_op_f32(min(-205f, -823f))))));
    return ~(~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.x, arg_1.x, 12500u, 0u), ~vec4<u32>(0u, 1406u, var_1.x, 4294967295u), ~vec4<u32>(0u, 14761u, u_input.a, var_1.x))));
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f - -1000f)) + _wgslsmith_f_op_f32(sign(509f)))), Struct_1(vec4<u32>(u_input.a, ~_wgslsmith_mult_u32(0u, u_input.a), 18165u, ~(~u_input.a)), vec3<i32>(arg_0, -22722i, 2147483647i)), Struct_1(_wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, u_input.a, 5985u, u_input.a)), func_3(vec3<i32>(arg_0, -2147483647i, -1i), vec2<u32>(18615u, 752u)) << (vec4<u32>(1u, 0u, u_input.a, 4294967295u) % vec4<u32>(32u))), -_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(5138i, -58628i, arg_0)), firstTrailingBit(vec3<i32>(arg_0, 2147483647i, 12510i)), abs(vec3<i32>(-28476i, 27595i, 51159i)))));
    var var_1 = -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_0.c.b.x, arg_0, 48742i)) | var_0.c.b, countOneBits(vec3<i32>(2147483647i, arg_0, -41156i))), abs(arg_0));
    let var_2 = _wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec2_u32(var_0.c.a.wz, var_0.b.a.zx)) & _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_0.b.a, vec4<u32>(0u, u_input.a, 22596u, 0u)), firstLeadingBit(1798u)), select(1u, 4294967295u, _wgslsmith_mult_u32(var_0.b.a.x, 0u) < (u_input.a | 5976u))) << (_wgslsmith_clamp_u32(u_input.a, u_input.a, ~(~(~u_input.a))) % 32u);
    var_1 = -_wgslsmith_sub_i32(abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), var_0.c.b.yz)), _wgslsmith_div_i32(5676i >> (1u % 32u), _wgslsmith_div_i32(46222i, 9941i)) ^ var_0.b.b.x);
    var_1 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_0, 1i, -72999i, -2147483647i), ~vec4<i32>(86i, 50907i, 1i, -37287i)), vec4<i32>(arg_0, reverseBits(0i), arg_0, var_0.c.b.x)) | -33811i;
    return -_wgslsmith_dot_vec3_i32(-(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, arg_0, var_0.c.b.x), var_0.c.b, vec3<i32>(arg_0, var_0.b.b.x, -38932i)) >> (~vec3<u32>(0u, var_0.c.a.x, 37544u) % vec3<u32>(32u))), -abs(var_0.c.b));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, 833f))), arg_1.x)) != _wgslsmith_f_op_f32(-1545f - _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -462f)), arg_1.x));
    var var_1 = ~vec3<i32>(1i | (_wgslsmith_mult_i32(arg_2.x, arg_2.x) << (countOneBits(u_input.a) % 32u)), arg_2.x, arg_2.x ^ -func_2(arg_2.x));
    var_1 = _wgslsmith_mod_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, -1i, var_1.x), vec3<i32>(46367i, 32164i, var_1.x)) & min(-vec3<i32>(arg_2.x, -2147483647i, var_1.x), vec3<i32>(~1i, max(0i, arg_2.x), var_1.x)), vec3<i32>(~(-1i), select(-2147483647i, -6969i, any(select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(true, true, false, false), var_0))), _wgslsmith_div_i32(arg_2.x, firstTrailingBit(-1i))));
    let var_2 = ~(-(~(-vec2<i32>(var_1.x, 0i)))) ^ -arg_2;
    var var_3 = vec2<bool>(true, true);
    return reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(func_3(vec3<i32>(-40534i, var_1.x, -2147483647i) | vec3<i32>(var_1.x, 2147483647i, var_2.x), ~vec2<u32>(u_input.a, 60335u)).ww, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)) << (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u))), u_input.a, _wgslsmith_clamp_u32(u_input.a, 4294967295u, 4294967295u), ~51040u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_3;
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(295f, arg_3.a), _wgslsmith_div_f32(529f, 631f)))) - var_0.a), arg_0, arg_3.c);
    let var_1 = true;
    var_0 = arg_3;
    var var_2 = var_0.a;
    return Struct_1(_wgslsmith_mod_vec4_u32(firstLeadingBit(min(vec4<u32>(1u, arg_3.c.a.x, arg_1.x, var_0.b.a.x), vec4<u32>(49852u, arg_3.b.a.x, arg_3.c.a.x, 14334u))), vec4<u32>(0u, arg_2.a.x, 42738u, arg_0.a.x)), vec3<i32>(22391i, -2147483647i, arg_3.b.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, any(!vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true)), select(false, any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true))), all(vec4<bool>(true, true, true, any(vec4<bool>(false, false, true, true))))));
    var var_1 = Struct_2(-406f, func_4(Struct_1(vec4<u32>(8413u, u_input.a, 12800u, u_input.a) & func_1(vec2<bool>(false, false), vec4<f32>(-1743f, -331f, 1925f, -385f), vec2<i32>(0i, 2147483647i)), -vec3<i32>(-25066i, -2147483647i, 2497i)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), ~(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(0u, u_input.a, 31814u) % vec3<u32>(32u)))), Struct_1(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(4294967295u, 0u, 1u, u_input.a)), ~vec4<u32>(4294967295u, u_input.a, 4294967295u, 22707u)), select(vec3<i32>(0i, 24950i, 13271i), vec3<i32>(-2147483647i, 2147483647i, -59795i), true) & _wgslsmith_mod_vec3_i32(vec3<i32>(2988i, 1i, 40238i), vec3<i32>(35065i, 1i, 30556i))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f) + _wgslsmith_div_f32(865f, 215f)), Struct_1(~vec4<u32>(936u, 22429u, u_input.a, 13007u), vec3<i32>(1i, 1i, 1i)), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(93589u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 6949u)), ~vec3<i32>(-1i, 5146i, 39593i)))), func_4(Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 70964u), vec4<u32>(3558u, u_input.a, 1u, u_input.a), vec4<u32>(7102u, u_input.a, u_input.a, 0u)) >> ((vec4<u32>(11679u, u_input.a, 45224u, 0u) ^ vec4<u32>(u_input.a, u_input.a, 21457u, 4294967295u)) % vec4<u32>(32u)), ~(-vec3<i32>(-48123i, 1i, 1i))), func_4(Struct_1(vec4<u32>(u_input.a, 41422u, u_input.a, u_input.a), vec3<i32>(35924i, 59355i, 8864i)), ~vec3<u32>(27183u, 4294967295u, u_input.a), Struct_1(~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), firstTrailingBit(vec3<i32>(0i, -13257i, 3704i))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -181f), func_4(Struct_1(vec4<u32>(40756u, u_input.a, 0u, u_input.a), vec3<i32>(6786i, 2147483647i, 2147483647i)), vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec3<i32>(-1103i, 4448i, 1655i)), Struct_2(-917f, Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec3<i32>(15534i, -10084i, 0i)), Struct_1(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec3<i32>(-2147483647i, -39120i, 1068i)))), func_4(Struct_1(vec4<u32>(5766u, 1u, 2630u, u_input.a), vec3<i32>(23410i, -2147483647i, -1i)), vec3<u32>(4294967295u, u_input.a, 1u), Struct_1(vec4<u32>(28643u, 4294967295u, u_input.a, 1u), vec3<i32>(0i, 0i, -2147483647i)), Struct_2(-176f, Struct_1(vec4<u32>(41529u, u_input.a, 65279u, 49478u), vec3<i32>(-47907i, -18559i, 0i)), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 5224u), vec3<i32>(0i, -7957i, -2147483647i)))))).a.xzx, func_4(func_4(func_4(Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 6183u), vec3<i32>(-2147483647i, 47i, 1i)), vec3<u32>(31109u, u_input.a, 0u), Struct_1(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 1u), vec3<i32>(36018i, -20971i, 31310i)), Struct_2(1153f, Struct_1(vec4<u32>(1u, 0u, 115687u, u_input.a), vec3<i32>(0i, 2147483647i, 0i)), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec3<i32>(13542i, 522i, -3015i)))), vec3<u32>(58560u, u_input.a, u_input.a), func_4(Struct_1(vec4<u32>(11461u, u_input.a, 0u, u_input.a), vec3<i32>(-1i, 18941i, -58400i)), vec3<u32>(0u, u_input.a, 1u), Struct_1(vec4<u32>(1u, 59349u, 1u, 27447u), vec3<i32>(-28830i, -15530i, -31275i)), Struct_2(-1489f, Struct_1(vec4<u32>(u_input.a, 1u, 58885u, u_input.a), vec3<i32>(-20316i, -2147483647i, 31120i)), Struct_1(vec4<u32>(1u, 4294967295u, u_input.a, u_input.a), vec3<i32>(33858i, -2147483647i, -2147483647i)))), Struct_2(1419f, Struct_1(vec4<u32>(0u, u_input.a, 1u, u_input.a), vec3<i32>(9749i, 0i, -2147483647i)), Struct_1(vec4<u32>(u_input.a, u_input.a, 28291u, u_input.a), vec3<i32>(31248i, -2147483647i, 0i)))), ~(vec3<u32>(1u, 0u, 19231u) ^ vec3<u32>(u_input.a, 28895u, 4294967295u)), func_4(Struct_1(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec3<i32>(1i, -2147483647i, 7577i)), vec3<u32>(31937u, 71429u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u)), func_4(Struct_1(vec4<u32>(u_input.a, 90832u, u_input.a, u_input.a), vec3<i32>(-1i, 2147483647i, 35838i)), vec3<u32>(u_input.a, u_input.a, 56398u), Struct_1(vec4<u32>(47265u, u_input.a, 44045u, u_input.a), vec3<i32>(2147483647i, 24807i, 36801i)), Struct_2(-1474f, Struct_1(vec4<u32>(49350u, 18048u, 0u, u_input.a), vec3<i32>(47161i, 6349i, 0i)), Struct_1(vec4<u32>(u_input.a, 1u, 0u, 0u), vec3<i32>(0i, -1i, -2147483647i)))), Struct_2(1000f, Struct_1(vec4<u32>(u_input.a, 35831u, u_input.a, u_input.a), vec3<i32>(-16270i, -1i, 0i)), Struct_1(vec4<u32>(1u, 1301u, u_input.a, u_input.a), vec3<i32>(14914i, 2147483647i, -2147483647i)))), Struct_2(_wgslsmith_f_op_f32(-176f + 346f), Struct_1(vec4<u32>(4294967295u, u_input.a, 31554u, u_input.a), vec3<i32>(13973i, -30213i, 70013i)), func_4(Struct_1(vec4<u32>(7041u, 4294967295u, 0u, u_input.a), vec3<i32>(2147483647i, -11302i, -21786i)), vec3<u32>(12124u, 1u, u_input.a), Struct_1(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a), vec3<i32>(1i, 81407i, -9556i)), Struct_2(-181f, Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec3<i32>(-15184i, 7253i, -31490i)), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 58747u), vec3<i32>(12497i, 0i, 1i)))))), Struct_2(_wgslsmith_f_op_f32(-804f * _wgslsmith_f_op_f32(-259f + 1000f)), Struct_1(vec4<u32>(u_input.a, 4999u, 0u, 1u), vec3<i32>(0i, -2147483647i, -1i)), func_4(Struct_1(vec4<u32>(0u, 0u, u_input.a, u_input.a), vec3<i32>(5974i, -2147483647i, -8106i)), ~vec3<u32>(u_input.a, 0u, 56881u), Struct_1(vec4<u32>(u_input.a, 102658u, 29939u, 7419u), vec3<i32>(10393i, -2147483647i, 0i)), Struct_2(1293f, Struct_1(vec4<u32>(u_input.a, 21481u, 0u, u_input.a), vec3<i32>(-1i, 20162i, 53575i)), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec3<i32>(-1i, -42768i, -1i)))))));
    var_0 = !vec3<bool>(select(~var_1.b.a.x < _wgslsmith_add_u32(u_input.a, u_input.a), var_0.x, var_0.x), false, !(!var_0.x));
    var_0 = !(!select(!(!vec3<bool>(var_0.x, true, false)), !select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x)), any(vec4<bool>(false, true, false, var_0.x)) && select(true, var_0.x, var_0.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(469f + var_1.a))))) + 359f), Struct_1(var_1.c.a, vec3<i32>(16705i, -(var_1.b.b.x ^ var_1.b.b.x), 0i)), Struct_1(var_1.c.a, ~select(_wgslsmith_div_vec3_i32(var_1.c.b, vec3<i32>(var_1.b.b.x, var_1.c.b.x, var_1.c.b.x)), -var_1.b.b, vec3<bool>(true, true, var_0.x))));
    var_0 = select(!(!vec3<bool>(!var_0.x, var_1.b.b.x >= var_1.c.b.x, any(vec3<bool>(true, true, var_0.x)))), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, (select(56065u, 0u, var_0.x) <= var_2.b.a.x) | var_0.x, true));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(208f + var_2.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))))));
    var_0 = vec3<bool>(var_0.x, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(0u), vec2<u32>(firstLeadingBit(~_wgslsmith_mod_u32(79995u, 1u)), _wgslsmith_mult_u32(var_2.c.a.x << ((var_2.b.a.x ^ var_1.b.a.x) % 32u), 80619u)), 4294967295u, var_3.x, ~abs(~16779u));
}

