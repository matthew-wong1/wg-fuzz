struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, false, true, true, false, false, true, false, true, false, true, true, true, false, true, false, true, false, true, true, false, true, true, true);

var<private> global1: Struct_5;

var<private> global2: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    var var_0 = Struct_4(firstTrailingBit(~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(7346u, 4294967295u, 4294967295u), vec3<u32>(global1.b.a.b, 41888u, u_input.b.x)))), all(!(!global1.b.d.wzw)), -(~(~(vec2<i32>(-2147483647i, arg_0.x) & arg_0.zx))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(296f, _wgslsmith_f_op_f32(-global1.c.x)))), (firstLeadingBit(~4294967295u) << (_wgslsmith_sub_u32(1u, ~u_input.a.x) % 32u)) | abs(global1.b.b.b));
    var var_1 = Struct_5(-(~29478i), Struct_2(global1.b.b, Struct_1(global0[_wgslsmith_index_u32(global1.b.b.b, 24u)], _wgslsmith_add_u32(4294967295u, ~var_0.e), ~global1.b.b.c), firstTrailingBit(vec2<i32>(global1.b.b.c, var_0.c.x)) ^ _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(arg_0.x, 0i)), arg_0.xx << (vec2<u32>(1u, var_0.e) % vec2<u32>(32u))), !global1.b.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c)));
    var_1 = Struct_5(-2147483647i, Struct_2(var_1.b.a, Struct_1(arg_1, 0u, var_0.c.x), ~global1.b.c, select(!select(vec4<bool>(false, var_1.b.d.x, false, false), global1.b.d, vec4<bool>(global0[_wgslsmith_index_u32(68338u, 24u)], global0[_wgslsmith_index_u32(274u, 24u)], var_0.b, true)), !(!vec4<bool>(false, global0[_wgslsmith_index_u32(71298u, 24u)], var_0.b, global1.b.d.x)), _wgslsmith_f_op_f32(trunc(var_0.d)) == -627f)), var_1.c);
    var var_2 = select(!(!vec2<bool>(u_input.b.x != 1u, global1.b.a.a)), var_1.b.d.zw, !select(global1.b.d.wx, global1.b.d.wx, vec2<bool>(true, 1000f >= global1.c.x)));
    let var_3 = 2147483647i;
    return var_1.c.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c.wyy + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-534f, 171f, arg_1))))))), arg_2.b, ~(-_wgslsmith_clamp_vec4_i32(-arg_2.d, vec4<i32>(arg_2.d.x, u_input.d.x, global1.b.b.c, u_input.d.x), ~vec4<i32>(32802i, -59240i, global1.b.a.c, 1i))), vec4<i32>(~max(u_input.c.x, _wgslsmith_clamp_i32(0i, arg_2.d.x, u_input.d.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(9840i, arg_2.d.x), arg_2.c.wy), countOneBits(2147483647i | arg_2.c.x)), arg_2.c.x, _wgslsmith_sub_i32(global1.a, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c.x, global1.a), ~arg_2.c.x))));
    var var_1 = Struct_4(vec3<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_2.b, 4294967295u), vec3<u32>(0u, u_input.a.x, u_input.b.x))), max(abs(39533u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, var_0.b, 14388u, u_input.b.x), vec4<u32>(arg_2.b, 0u, global1.b.b.b, 3529u))), _wgslsmith_clamp_u32(~global1.b.b.b, var_0.b, 11945u)) | _wgslsmith_mult_vec3_u32(~abs(vec3<u32>(global1.b.b.b, 57269u, arg_2.b)), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, u_input.a.x, 0u), vec3<u32>(var_0.b, 4294967295u, global1.b.b.b) | vec3<u32>(arg_2.b, 57556u, var_0.b))), true, select(firstTrailingBit(firstLeadingBit(firstLeadingBit(var_0.d.ww))), ~vec2<i32>(22351i, firstLeadingBit(-22142i)), select(!vec2<bool>(global0[_wgslsmith_index_u32(global1.b.b.b, 24u)], global1.b.b.a), select(global1.b.d.zy, vec2<bool>(global0[_wgslsmith_index_u32(var_0.b, 24u)], true), vec2<bool>(global1.b.b.a, global0[_wgslsmith_index_u32(53201u, 24u)])), ~global1.a < _wgslsmith_dot_vec4_i32(vec4<i32>(-10331i, u_input.c.x, -2635i, u_input.c.x), vec4<i32>(arg_2.d.x, -1i, -11326i, -35352i)))), -745f, 60588u);
    var var_2 = true;
    var var_3 = Struct_5(-5300i, global1.b, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1927f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(483f, var_0.a.x, false))), 1003f), arg_0)));
    let var_4 = !select(!select(select(global1.b.d.xz, var_3.b.d.yy, var_1.b), select(global1.b.d.zw, global1.b.d.ww, global0[_wgslsmith_index_u32(8845u, 24u)]), arg_2.b == 0u), global1.b.d.zz, !select(var_3.b.d.zy, !var_3.b.d.ww, vec2<bool>(global1.b.b.a, true)));
    return select(global1.b.d.xzz, var_3.b.d.wxy, select(!(-var_1.c.x <= (u_input.d.x >> (73797u % 32u))), var_0.b > ~(~8954u), var_1.b));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1974f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1663f * 392f), _wgslsmith_f_op_f32(531f - global1.c.x)), arg_1.c.x, true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(2594f, arg_1.c.x) * _wgslsmith_div_vec2_f32(arg_1.c.wz, vec2<f32>(1212f, arg_1.c.x)))))));
    var var_1 = select(select(vec4<u32>(arg_0.x, 0u, 0u, 1u), vec4<u32>(10412u, 20918u, 1u, 23830u), true) & arg_0, ~_wgslsmith_div_vec4_u32(arg_0, vec4<u32>(7427u, 4294967295u, 23190u, 83572u)), arg_1.c.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, var_0.x)))) ^ (min(arg_0, firstTrailingBit(arg_0)) ^ arg_0);
    let var_2 = arg_1.b.d;
    let var_3 = ~arg_0;
    let var_4 = func_4(_wgslsmith_f_op_vec4_f32(-arg_1.c), global1.c.x, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(615f, _wgslsmith_f_op_f32(func_3(vec3<i32>(arg_2, 1i, u_input.c.x), global0[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_f_op_f32(-135f + global1.c.x))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.b.a.b, var_3.x, 11296u), vec4<u32>(arg_3.b, 4294967295u, global1.b.b.b, 0u)), 45427u), _wgslsmith_mult_vec4_i32(-vec4<i32>(0i, 2147483647i, 1i, -49544i) << (arg_0 % vec4<u32>(32u)), -(vec4<i32>(-20747i, arg_1.b.a.c, 0i, arg_3.c) ^ vec4<i32>(35991i, global1.a, -22292i, arg_3.c))), ~abs(vec4<i32>(0i, 23776i, -1i, 1i) & vec4<i32>(arg_1.b.a.c, 1i, -20958i, arg_1.a))));
    return _wgslsmith_mod_i32(select(-arg_2, 0i, func_4(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1871f)), Struct_3(_wgslsmith_f_op_vec3_f32(arg_1.c.ywz - vec3<f32>(global1.c.x, var_0.x, var_0.x)), _wgslsmith_dot_vec3_u32(arg_0.wwz, vec3<u32>(4294967295u, arg_1.b.a.b, u_input.a.x)), vec4<i32>(1i, arg_1.a, arg_2, global1.b.b.c), ~vec4<i32>(1i, -1i, 10205i, 0i))).x), _wgslsmith_div_i32(global1.b.a.c, firstLeadingBit(-(~arg_2))));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(~func_2(vec4<u32>(arg_1, global1.b.a.b, arg_1, arg_1), Struct_5(global1.a, Struct_2(Struct_1(false, 0u, -1i), Struct_1(global0[_wgslsmith_index_u32(1284u, 24u)], arg_0.a.b, 1i), vec2<i32>(2799i, arg_0.b.c), global1.b.d), global1.c), u_input.c.x, Struct_1(global0[_wgslsmith_index_u32(14144u, 24u)], 0u, arg_0.b.c)), 11999i) ^ -_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(arg_0.b.c, 0i)), ~arg_0.c), countOneBits(vec2<i32>(-1i) * -arg_0.c));
    var var_1 = u_input.a >> (u_input.b % vec2<u32>(32u));
    let var_2 = _wgslsmith_mod_vec4_i32(select(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(16790i, u_input.d.x, global1.b.b.c, u_input.d.x), vec4<i32>(u_input.c.x, 2147483647i, 0i, -14042i), ~vec4<i32>(35673i, -18486i, 0i, var_0.x))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(global1.a, u_input.d.x, -2147483647i, var_0.x), countOneBits(vec4<i32>(u_input.c.x, -2541i, arg_0.c.x, 1i))), firstLeadingBit(max(vec4<i32>(var_0.x, u_input.d.x, arg_0.a.c, -1i), vec4<i32>(var_0.x, global1.b.a.c, global1.a, -29714i)))), true), select((~vec4<i32>(61054i, var_0.x, 42843i, 2147483647i) & countOneBits(vec4<i32>(12587i, arg_0.c.x, var_0.x, u_input.d.x))) | abs(abs(vec4<i32>(1i, global1.a, 0i, u_input.d.x))), ~select(max(vec4<i32>(1i, 1i, arg_0.b.c, 1i), vec4<i32>(global1.b.c.x, 3452i, global1.a, global1.a)), vec4<i32>(var_0.x, 2147483647i, -25286i, -2147483647i) & vec4<i32>(var_0.x, global1.b.b.c, var_0.x, global1.a), false), global1.b.d));
    let var_3 = min(global1.b.c, ~vec2<i32>(28782i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, 51854i, u_input.d.x, arg_0.a.c), vec4<i32>(global1.b.c.x, u_input.d.x, var_2.x, global1.b.c.x)), vec4<i32>(global1.a, global1.b.c.x, -23398i, arg_0.c.x))));
    let var_4 = vec4<f32>(-208f, _wgslsmith_f_op_f32(func_3(~var_2.xzw, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1761f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-923f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.c.x)), global1.c.x, any(vec2<bool>(global1.b.a.a, true))))))));
    return var_4.x;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_5) -> Struct_1 {
    var var_0 = -20433i;
    global0 = array<bool, 24>();
    var var_1 = !select(vec4<bool>(select(arg_2.b.b.a | arg_2.b.b.a, true, !arg_2.b.a.a), global1.a <= -arg_0, false, global0[_wgslsmith_index_u32(u_input.b.x, 24u)]), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(33597u, 24u)], global0[_wgslsmith_index_u32(arg_2.b.b.b, 24u)], arg_2.b.b.a, global0[_wgslsmith_index_u32(global1.b.a.b, 24u)])), vec4<bool>(!global0[_wgslsmith_index_u32(46261u, 24u)], true, true, true), global0[_wgslsmith_index_u32(arg_2.b.b.b, 24u)]), any(!arg_2.b.d));
    let var_2 = i32(-1i) * -2147483647i;
    let var_3 = global1.c.x;
    return arg_2.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~16868i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(global1.b.d.x, 0u, global1.b.c.x), Struct_1(global0[_wgslsmith_index_u32(1u, 24u)], u_input.a.x, 26839i), global1.b.c, vec4<bool>(global1.b.d.x, false, true, false)), u_input.a.x)) * 1032f)), Struct_5(~reverseBits(3955i), global1.b, vec4<f32>(-871f, _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * global1.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.x - global1.c.x), -352f))));
    var_0 = func_5(2147483647i, global1.c.x, Struct_5(reverseBits(func_5(global1.b.a.c, _wgslsmith_f_op_f32(global1.c.x - 2657f), Struct_5(u_input.c.x, Struct_2(Struct_1(var_0.a, 25197u, u_input.d.x), Struct_1(global1.b.b.a, 64530u, global1.a), global1.b.c, vec4<bool>(true, global1.b.a.a, true, true)), vec4<f32>(global1.c.x, global1.c.x, -964f, global1.c.x))).c), global1.b, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.c.x))), _wgslsmith_f_op_f32(1000f * -300f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.c.x + global1.c.x), 1778f, var_0.a)))));
    let var_1 = Struct_5(~1i, global1.b, _wgslsmith_div_vec4_f32(global1.c, vec4<f32>(-804f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.x - 544f), _wgslsmith_f_op_f32(f32(-1f) * -163f)), global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * 924f)))));
    let var_2 = vec4<i32>(u_input.d.x, ~countOneBits(u_input.d.x), _wgslsmith_mod_i32(~var_0.c, 45780i), -43753i) | ~(~_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.a, global1.b.a.c, var_1.b.c.x, global1.a), vec4<i32>(var_1.a, global1.b.b.c, 33578i, 0i)), ~vec4<i32>(62349i, 10386i, var_0.c, 75307i)));
    global0 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(u_input.d.x >> (var_0.b % 32u)), -4285i, var_2.x, firstLeadingBit(_wgslsmith_div_i32(var_1.b.c.x, -2147483647i))) & (var_2 << ((select(vec4<u32>(4294967295u, global1.b.a.b, 1u, 17359u), vec4<u32>(1u, var_1.b.a.b, var_0.b, var_1.b.a.b), false) << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, var_1.b.b.b, 0u), vec4<u32>(global1.b.a.b, global1.b.b.b, u_input.b.x, 80668u)) % vec4<u32>(32u))) % vec4<u32>(32u))), u_input.c.x, countOneBits(~firstLeadingBit(1u)), (var_1.b.a.b << (reverseBits(_wgslsmith_mod_u32(50805u, u_input.a.x)) % 32u)) >> (global1.b.b.b % 32u));
}

