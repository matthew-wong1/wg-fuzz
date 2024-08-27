struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(-1i, -19482i, 0i, 1i, 0i, 0i, 0i, 0i, i32(-2147483648), -1i, -25354i, 7570i, -71698i);

var<private> global1: array<u32, 28>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global3: vec4<i32> = vec4<i32>(77460i, -1i, -55175i, i32(-2147483648));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = select(!select(select(vec4<bool>(true, false, global2.x, global2.x), select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(global2.x, global2.x, global2.x, arg_1)), select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(true, arg_1, global2.x, true), arg_1)), vec4<bool>(true, any(vec4<bool>(false, global2.x, global2.x, global2.x)), all(vec2<bool>(true, global2.x)), any(vec3<bool>(false, global2.x, false))), true), vec4<bool>(false, !any(select(vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(arg_1, global2.x, global2.x, global2.x), false)), false && any(select(vec4<bool>(true, arg_1, global2.x, global2.x), vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(false, global2.x, true, false))), true), any(vec3<bool>(arg_0.x > (-1i | arg_2.c.x), any(!vec3<bool>(global2.x, true, global2.x)), true)));
    global3 = firstTrailingBit(vec4<i32>(2147483647i, 1i, ~arg_0.x, arg_2.c.x));
    var_0 = select(vec4<bool>(any(select(global2.zz, !var_0.yx, true)), any(select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(true, global2.x, true, true), vec4<bool>(global2.x, var_0.x, global2.x, false))) & all(var_0.xw), !(!var_0.x), 34200i < global3.x), select(select(!(!vec4<bool>(var_0.x, true, false, true)), !(!vec4<bool>(global2.x, false, true, false)), true), vec4<bool>(false && (arg_2.a.x == arg_2.a.x), (1u > u_input.a.x) & any(var_0.zzz), _wgslsmith_f_op_f32(-arg_2.a.x) <= _wgslsmith_f_op_f32(155f - arg_2.b), true), vec4<bool>(true, all(vec2<bool>(var_0.x, false)), arg_2.a.x >= 1206f, any(var_0.zx))), var_0.x);
    var var_1 = _wgslsmith_mult_vec2_i32(arg_0.yz, global3.yy);
    var_1 = global3.zw;
    return max(4294967295u, min(1u, ~1u));
}

fn func_2() -> vec4<f32> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(~(4584u >> (1u % 32u))), _wgslsmith_mult_u32(~func_3(_wgslsmith_mult_vec3_i32(global3.xxx, global3.ywy), global2.x || false, Struct_1(vec3<f32>(-916f, -981f, 413f), 303f, vec2<i32>(global3.x, global0[_wgslsmith_index_u32(58856u, 13u)]))), ~1u)), 28u)];
    var var_1 = -1666f;
    var var_2 = _wgslsmith_f_op_f32(1039f * _wgslsmith_f_op_f32(1f * 1f));
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1279f, 670f, global2.x)), -1642f)))), 1287f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1221f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-350f, -988f)))), 2657f)), global3.yx);
    global3 = vec4<i32>(-1i) * -reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, 44786i), vec3<i32>(0i, global3.x, -21414i)), 0i, -4667i, var_3.c.x ^ global0[_wgslsmith_index_u32(0u, 13u)]));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1436f * 824f)))), var_3.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b * -1541f)))), 236f));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.xzx) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(arg_0.a, arg_1.yyy, global2.x)))))), arg_0.a.x, max(vec2<i32>(global0[_wgslsmith_index_u32(19511u, 13u)] & global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 1i) & (_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, arg_0.c.x), vec2<i32>(27978i, -2147483647i), global3.xx) << (u_input.a.zz % vec2<u32>(32u))), -arg_0.c));
    var var_1 = u_input.a.x < 46356u;
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(arg_0.a))));
    let var_3 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))));
    global3 = vec4<i32>(i32(-1i) * -1i, arg_2.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(~15473i, _wgslsmith_mult_i32(-67085i, -11814i)), abs(select(vec2<i32>(7603i, var_0.c.x), vec2<i32>(0i, -1i), global2.xz))), max(-arg_2.x, -countOneBits(arg_0.c.x)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.b)), -482f, var_3), var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f)) * _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), 1f), true && all(global2.zy)))), min(min(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(arg_2.zx, arg_0.c), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, global3.x), vec2<i32>(1i, arg_2.x), var_0.c)), vec2<i32>(global0[_wgslsmith_index_u32(0u, 13u)] << (0u % 32u), -17006i)), arg_0.c));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec3<f32> {
    var var_0 = global2.x;
    var var_1 = select(-(~3311i), arg_3, all(!(!vec2<bool>(true, global2.x))));
    let var_2 = vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 64324u);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.a.x)), 1000f);
    global0 = array<i32, 13>();
    return arg_1.a;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = abs(vec4<u32>(~min(_wgslsmith_add_u32(49242u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)]), global1[_wgslsmith_index_u32(9400u << (1u % 32u), 28u)]), u_input.a.x, 1u, 21541u));
    let var_1 = u_input.a;
    var var_2 = select(global3.xyx & vec3<i32>(arg_0, _wgslsmith_add_i32(abs(-25243i), firstTrailingBit(global0[_wgslsmith_index_u32(var_0.x, 13u)])), global3.x), global3.zzy, false);
    var var_3 = true & global2.x;
    let var_4 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(459f, -496f, 100f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1641f, -520f, 1401f) - vec3<f32>(264f, 136f, 324f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-423f, -2181f, -855f) + vec3<f32>(-1000f, -1041f, -255f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(490f, -1831f, 140f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(638f, -1508f, 1111f)), !global2.yzx)))), _wgslsmith_f_op_f32(-629f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(236f)), _wgslsmith_f_op_f32(f32(-1f) * -1535f)))), vec2<i32>(-2147483647i, -3322i));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_4(var_4, _wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_sub_vec3_i32(global3.zyy, vec3<i32>(var_2.x, 37273i, -2147483647i)), _wgslsmith_div_u32(773u, global1[_wgslsmith_index_u32(47877u, 28u)])), var_4, func_4(var_4, _wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_4.b, var_4.b, 204f), vec4<f32>(var_4.b, var_4.b, -1639f, 272f)), global3.xww, ~u_input.a.x), -1i)) * vec3<f32>(var_4.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_1(var_4.a, var_4.b, vec2<i32>(var_2.x, global0[_wgslsmith_index_u32(var_1.x, 13u)])), Struct_1(var_4.a, 241f, global3.zy), var_4, -2147483647i)).x), _wgslsmith_f_op_f32(-113f + _wgslsmith_f_op_f32(var_4.a.x - var_4.a.x)))), var_4.b, ~(vec2<i32>(i32(-1i) * -2147483647i, func_4(var_4, vec4<f32>(var_4.b, var_4.b, var_4.b, -1860f), vec3<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 28u)], 13u)], arg_0, global0[_wgslsmith_index_u32(var_1.x, 13u)]), var_0.x).c.x) & (vec2<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21104u, 28u)], 28u)], 13u)], var_2.x) ^ vec2<i32>(-1i, arg_0))));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = any(vec3<bool>(arg_1, global2.x, true));
    var var_1 = vec4<u32>(firstLeadingBit(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11960u, 28u)], 28u)], 28u)], 28u)] & global1[_wgslsmith_index_u32(u_input.a.x, 28u)], abs(4294967295u))), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~reverseBits(0u), 28u)], firstLeadingBit(u_input.a.x ^ 1u)) ^ min(select(global1[_wgslsmith_index_u32(4294967295u, 28u)], 73432u, !arg_1), 66257u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.a.yx, vec2<u32>(u_input.a.x, 29805u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(18667u, 28u)], u_input.a.x), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 28u)], 28u)], 28u)], 2741u, 60139u)), vec4<u32>(23298u, u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 28u)]) | vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31103u, 28u)], 28u)], 28u)], 13855u, 0u)), _wgslsmith_clamp_u32(countOneBits(4294967295u), u_input.a.x, firstTrailingBit(4294967295u))), ~vec3<u32>(global1[_wgslsmith_index_u32(0u, 28u)] & 1u, abs(72431u), 22079u)), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(select(64893u, ~0u, all(vec4<bool>(arg_1, arg_1, var_0, false))), u_input.a.x), 28u)], global1[_wgslsmith_index_u32(1u, 28u)]));
    let var_2 = arg_0.c;
    global2 = !vec4<bool>(true, (any(vec4<bool>(true, arg_1, var_0, true)) | !global2.x) && any(global2.ywz), global2.x, true);
    global1 = array<u32, 28>();
    return 47540u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (global1[_wgslsmith_index_u32(134890u, 28u)] ^ u_input.a.x) << ((4294967295u | _wgslsmith_mod_u32(countOneBits(~u_input.a.x), func_6(func_1(global3.x), global2.x & global2.x, func_1(global0[_wgslsmith_index_u32(u_input.a.x, 13u)])))) % 32u);
    var_0 = ~u_input.a.x;
    global3 = ~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1834u, 28u)], 28u)], 0u), 13u)], global3.x), 25499i), (i32(-1i) * -2147483647i) << (0u % 32u), select(_wgslsmith_dot_vec2_i32(vec2<i32>(48186i, 2147483647i), global3.wz), 0i, select(global2.x, global2.x, global2.x)) >> ((_wgslsmith_sub_u32(28269u, 0u) ^ ~u_input.a.x) % 32u), ~_wgslsmith_clamp_i32(global3.x, global3.x, -21722i));
    var var_1 = 1i;
    let var_2 = global3.x & _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(global3.x, 0i, 15404i, -1i)), -vec4<i32>(-15671i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 13u)], 6659i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 28u)], 13u)])), ~(-3823i));
    let var_3 = global2.zxx;
    let x = u_input.a;
    s_output = StorageBuffer(531f, u_input.a.yx, _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(min(-714f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -841f)))));
}

