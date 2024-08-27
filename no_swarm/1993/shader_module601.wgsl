struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
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

var<private> global0: array<bool, 15>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0, vec2<f32>(-596f, arg_0.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, arg_0.x), arg_0)))))) + _wgslsmith_f_op_vec2_f32(exp2(arg_0)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0.x, arg_0.x, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, -950f, var_0.x, 229f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(-659f, arg_0.x, -1099f, var_0.x))))))));
    global0 = array<bool, 15>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1746f, -1743f, -776f, var_1.a.x) + var_1.a), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 436f, var_0.x, var_0.x), vec4<f32>(1113f, arg_0.x, var_1.a.x, 746f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.x, 1165f, var_0.x, -1000f), vec4<f32>(674f, -483f, var_0.x, arg_0.x)))))), var_1, var_1, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - 454f), var_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x * var_0.x)))))));
    let var_3 = Struct_2(var_1, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-2280f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.a.x * var_2.c.a.x), _wgslsmith_f_op_f32(var_1.a.x + var_2.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(227f, 206f))), _wgslsmith_f_op_f32(f32(-1f) * -236f))), Struct_1(var_2.d), _wgslsmith_f_op_vec4_f32(var_2.b.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a))));
    return 2147483647i;
}

fn func_2(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = -func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-369f, -1262f), vec2<f32>(686f, -1212f), arg_0))))), reverseBits(u_input.a));
    let var_1 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32((var_0 << (u_input.c % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(u_input.a.x, 1u, u_input.c)) % 32u), _wgslsmith_sub_i32(~29094i, var_0)), var_0 >> (~select(u_input.a.x, 4294967295u, true) % 32u), var_0), 542i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-566f, 695f, -1391f, 436f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1570f, 901f, 1154f, -199f) + vec4<f32>(-315f, -674f, -317f, 1668f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1241f, -343f, -2484f, 138f)))))));
    var var_3 = Struct_1(var_2.a);
    let var_4 = u_input.c;
    return arg_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = abs(vec4<i32>(-22125i & _wgslsmith_clamp_i32(~arg_1, 2025i ^ arg_1, ~arg_1), arg_1, arg_1 ^ arg_1, ~abs(-arg_1)));
    let var_1 = arg_3.a.a.zx;
    var var_2 = _wgslsmith_add_vec4_u32(firstLeadingBit(select(~(vec4<u32>(u_input.c, 35577u, 49022u, 33288u) & u_input.a), abs(vec4<u32>(u_input.b.x, u_input.a.x, u_input.c, u_input.b.x)) & ~vec4<u32>(8808u, 0u, u_input.c, u_input.b.x), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 15u)] | false)), _wgslsmith_sub_vec4_u32(~(~abs(vec4<u32>(u_input.c, u_input.b.x, u_input.c, u_input.c))), vec4<u32>(select(~46923u, ~0u, 1u != u_input.c), u_input.c, ~countOneBits(17082u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 56060u), u_input.a.wzx) & u_input.b.x)));
    var var_3 = select(_wgslsmith_sub_vec3_i32(-(var_0.xzz ^ ~vec3<i32>(var_0.x, var_0.x, arg_1)), var_0.wzy), vec3<i32>(arg_1, i32(-1i) * -arg_1, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, arg_1, arg_1, 1i), var_0) >> ((u_input.a >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(0i, var_0.x), ~(-16537i), 7796i, func_3(vec2<f32>(var_1.x, arg_3.b.a.x), vec4<u32>(50903u, 32178u, 2379u, var_2.x))))), arg_0.x);
    let var_4 = -2147483647i;
    return arg_3;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: f32, arg_3: bool) -> f32 {
    var var_0 = func_4(!(!(!func_2(vec2<bool>(arg_3, global0[_wgslsmith_index_u32(4294967295u, 15u)])))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.x, -1i, 52787i), arg_1.xyz), arg_1.zyw >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, u_input.b.x, u_input.b.x), u_input.b) % vec3<u32>(32u))), vec2<bool>(all(select(vec2<bool>(global0[_wgslsmith_index_u32(64520u, 15u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], false), false)), abs(u_input.a.x) >= u_input.b.x), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1337f, -515f, -218f, -1511f) - vec4<f32>(arg_2, arg_2, arg_2, arg_2)))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1662f, -518f, -1000f, arg_2)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, arg_2, arg_2, -959f), vec4<f32>(-1021f, 258f, -835f, 922f), vec4<bool>(false, true, arg_3, global0[_wgslsmith_index_u32(36187u, 15u)]))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-891f, arg_2, arg_2, arg_2))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-315f, arg_2, arg_2, arg_2)))));
    return _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -479f) - var_0.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-344f, var_0.c.a.x)), _wgslsmith_f_op_f32(step(arg_2, arg_2)))) * -573f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(true, all(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], true, false)));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-816f))) - 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(2830f * _wgslsmith_f_op_f32(func_1(15201u & u_input.c, vec4<i32>(20976i, -3975i, -1i, 2154i), _wgslsmith_div_f32(249f, -448f), var_0.x))))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(781f, var_1, var_1, 696f) * vec4<f32>(var_1, -2153f, var_1, var_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 532f, var_1, -118f) - vec4<f32>(var_1, var_1, 1428f, 573f)), !vec4<bool>(true, false, var_0.x, true))) - vec4<f32>(_wgslsmith_div_f32(var_1, -380f), _wgslsmith_f_op_f32(trunc(491f)), 956f, _wgslsmith_f_op_f32(select(var_1, -155f, var_0.x))))), func_4(vec2<bool>(all(vec3<bool>(false, var_0.x, var_0.x)), any(func_2(vec2<bool>(true, true)))), reverseBits(-12414i), vec2<bool>(all(vec2<bool>(true, global0[_wgslsmith_index_u32(17968u, 15u)])), var_0.x), func_4(select(select(var_0, var_0, var_0), vec2<bool>(global0[_wgslsmith_index_u32(0u, 15u)], true), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), abs(i32(-1i) * -993i), var_0, func_4(vec2<bool>(false, true), ~54499i, vec2<bool>(true, false), Struct_2(Struct_1(vec4<f32>(-1025f, var_1, var_1, var_1)), Struct_1(vec4<f32>(var_1, var_1, var_1, -703f)), Struct_1(vec4<f32>(694f, 305f, var_1, var_1)), vec4<f32>(-998f, var_1, var_1, var_1))))).c, Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, 196f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1016f, 1718f, -1499f, 2625f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, var_1)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(2209f, -1823f, var_1, -789f), vec4<f32>(var_1, 1000f, var_1, var_1))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, 614f, -1810f, var_1)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -2112f, 1532f, -178f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-123f, var_1, -1429f, var_1) + vec4<f32>(var_1, -1000f, 1000f, -356f))))));
    var var_3 = select(select(!(!(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 15u)], false))), !(!vec4<bool>(var_0.x, false, var_0.x, false)), vec4<bool>(false, global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, u_input.a.x), 15u)], all(select(var_0, var_0, vec2<bool>(false, global0[_wgslsmith_index_u32(35276u, 15u)]))), !func_2(vec2<bool>(true, true)).x)), vec4<bool>(false, global0[_wgslsmith_index_u32(4069u, 15u)], all(select(vec4<bool>(true, false, var_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 15u)]), !vec4<bool>(var_0.x, true, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(27319u, 15u)]), !vec4<bool>(true, var_0.x, false, global0[_wgslsmith_index_u32(u_input.b.x, 15u)]))), global0[_wgslsmith_index_u32(countOneBits(~min(4294967295u, 65185u)), 15u)]), select(vec4<bool>(any(var_0), all(func_2(vec2<bool>(false, var_0.x))), var_0.x, global0[_wgslsmith_index_u32(~(~u_input.c), 15u)]), !vec4<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], false, var_0.x)), global0[_wgslsmith_index_u32(0u, 15u)], !global0[_wgslsmith_index_u32(52698u, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)]), vec4<bool>(func_2(var_0).x, true, false, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], true, global0[_wgslsmith_index_u32(61860u, 15u)], false)))));
    var var_4 = ~((-1i << (u_input.b.x % 32u)) & _wgslsmith_add_i32(-min(-4145i, 21858i), 1i));
    var var_5 = var_2.c;
    let var_6 = _wgslsmith_clamp_vec3_u32(u_input.a.zzw, vec3<u32>(~51281u, u_input.a.x, max(0u, u_input.c)), vec3<u32>(max(~1u, ~(~4294967295u)), 1u, max(1u, ~countOneBits(u_input.c))));
    global0 = array<bool, 15>();
    let var_7 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, select(~2147483647i, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, -16586i), true), func_3(var_5.a.xz, _wgslsmith_mod_vec4_u32(u_input.a, u_input.a))), 2147483647i));
}

