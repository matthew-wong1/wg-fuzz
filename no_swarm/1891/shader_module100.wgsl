struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(1u, 1u, 4294967295u, 4294967295u, 4294967295u, 29610u, 38450u, 4294967295u, 1u, 28826u, 1u, 2893u, 54623u, 84226u, 1u, 1u, 27276u, 5976u);

var<private> global1: array<i32, 4> = array<i32, 4>(-1i, 2147483647i, 12015i, -17591i);

var<private> global2: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1.c.xx;
    global1 = array<i32, 4>();
    var var_1 = Struct_1(vec4<u32>(~select(1u, global0[_wgslsmith_index_u32(u_input.b.x, 18u)] ^ 1u, true), global2.a.b, 1u, arg_1.a.x), _wgslsmith_add_u32(abs(countOneBits(0u)), _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 0u), firstTrailingBit(global2.a.b)))), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(arg_1.c.x, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(31628u, 4u)], -15858i, -34852i), arg_1.c.x & global1[_wgslsmith_index_u32(1u, 4u)])), vec3<i32>(18620i, ~20085i, 35653i) & vec3<i32>(-89105i, global1[_wgslsmith_index_u32(4294967295u, 4u)] >> (1u % 32u), 0i)), ~arg_1.c.x, -359f);
    var var_2 = Struct_2(arg_1, ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.b, var_1.d, -1i, 0i), vec4<i32>(0i, arg_1.c.x, global2.b, 0i)), -vec4<i32>(var_0.x, 2147483647i, global2.a.c.x, 1i)), vec4<i32>(global2.a.d, -global1[_wgslsmith_index_u32(0u, 4u)], i32(-1i) * -2147483647i, 31753i)));
    let var_3 = var_0.x ^ select(64132i, min(var_1.c.x, max(-arg_1.c.x, var_0.x)), ~select(global1[_wgslsmith_index_u32(1u, 4u)], var_2.a.c.x, true) > 2147483647i);
    return _wgslsmith_dot_vec2_i32(vec2<i32>(max(countOneBits(-53466i), var_2.b), -var_1.d), ~(~(~vec2<i32>(var_0.x, 0i))));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(max(func_3(global1[_wgslsmith_index_u32(1u, 4u)], Struct_1(vec4<u32>(arg_2.a.b, 1u, 87741u, 1u), 34239u, vec3<i32>(-24529i, 2147483647i, global1[_wgslsmith_index_u32(0u, 4u)]), arg_2.a.c.x, global2.a.e)), ~global2.b), 2147483647i, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, 0u, 4294967295u, 18565u)), 4u)], _wgslsmith_clamp_i32(-19017i, -arg_2.b, _wgslsmith_clamp_i32(1232i, 23753i, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]))) | vec4<i32>(global2.a.d, arg_2.b, max(arg_2.b, -27617i >> (0u % 32u)), -2147483647i), max(vec4<i32>(arg_2.a.d, global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(38682u, global0[_wgslsmith_index_u32(1u, 18u)]), 4u)], _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_2.a.c.x, 0i), 18290i, ~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 18u)], 4u)]), max(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 4u)], -1i) ^ global1[_wgslsmith_index_u32(1u, 4u)]), -(~(-vec4<i32>(1793i, global2.a.d, 1i, global2.a.d)))));
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(global2.a.a, abs(~global2.a.a)), 1u, _wgslsmith_clamp_vec3_i32(abs(reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(111095u, 4u)], arg_2.a.c.x, arg_2.a.c.x) >> (vec3<u32>(79893u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.a.a.x, 18u)], 18u)], global0[_wgslsmith_index_u32(50320u, 18u)]) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(12790i, global2.a.d, arg_2.b)), vec3<i32>(0i, -16557i, arg_2.a.d) << (arg_2.a.a.yyy % vec3<u32>(32u))), -2147483647i, -(i32(-1i) * -25150i)), global2.a.c), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, firstTrailingBit(var_0.x), 48174i), firstLeadingBit(select(vec3<i32>(global2.a.d, 49812i, global2.a.d), vec3<i32>(0i, arg_2.a.c.x, 32489i), vec3<bool>(arg_1.x, arg_1.x, arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a.e), _wgslsmith_f_op_f32(f32(-1f) * -1585f), !arg_1.x))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1469f);
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    return arg_2;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = var_0.a.e;
    global2 = Struct_2(arg_1.a, -_wgslsmith_dot_vec3_i32(-var_0.a.c, ~arg_1.a.c) ^ (i32(-1i) * -1i));
    let var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(562f, var_0.a.e, arg_1.a.e), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1543f, 146f, -1169f), vec3<f32>(arg_0.x, var_2.e, arg_0.x)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(379f, arg_0.x, arg_0.x) * vec3<f32>(arg_2.a.e, -185f, 1000f)))))));
    return var_0.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec4<f32> {
    global1 = array<i32, 4>();
    let var_0 = global2.a;
    var var_1 = _wgslsmith_dot_vec2_i32(arg_2.c.xy, -global2.a.c.zz) & 16023i;
    var var_2 = true;
    var var_3 = func_2(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c, ~4294967295u), ~1u >> (global0[_wgslsmith_index_u32(~4294967295u, 18u)] % 32u)), arg_2.b), vec3<bool>(false, true, arg_1.b <= reverseBits(0u ^ arg_2.a.x)), func_2(1u, !select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), arg_2.e > arg_0.x), func_2(0u, vec3<bool>(true, true, true), func_2(1u, vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<u32>(60376u, 4294967295u, 78603u, 1u), arg_2.b, arg_2.c, 3832i, arg_0.x), -2147483647i))))).a;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, -1836f, -755f, var_3.e)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1101f, arg_1.e, arg_0.x, var_0.e)) * vec4<f32>(arg_0.x, 1054f, -976f, 779f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.e, global2.a.e, global2.a.e, global2.a.e) - vec4<f32>(arg_0.x, 1400f, 869f, 160f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.e, var_3.e, 150f, global2.a.e))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1610f, 1107f, arg_1.e, 518f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.e, arg_2.e, var_0.e, arg_0.x), vec4<f32>(arg_1.e, 917f, arg_1.e, -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.e, arg_2.e, global2.a.e, -447f) * vec4<f32>(1896f, arg_0.x, 1578f, arg_1.e)))))));
}

fn func_6(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = !select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, false, true), all(vec2<bool>(true, false)), true)), vec4<bool>(all(vec2<bool>(false, false)), !any(vec2<bool>(false, true)), all(vec3<bool>(true, true, true)), !all(vec3<bool>(false, false, false))), vec4<bool>(all(vec4<bool>(true, true, true, true)), (0u << (global2.a.a.x % 32u)) != u_input.c, true, false));
    var var_1 = global2.a.a.wy;
    global0 = array<u32, 18>();
    var var_2 = func_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global2.a.a.x), vec2<u32>(_wgslsmith_div_u32(global2.a.a.x, u_input.c), firstLeadingBit(global2.a.b))), select(select(vec3<bool>(false, true, !var_0.x), select(!var_0.wxx, var_0.xzx, false | var_0.x), true), select(!(!var_0.www), var_0.xyx, !(!var_0.x)), vec3<bool>(!var_0.x, true, true)), func_2(var_1.x, !vec3<bool>(true, true, all(vec3<bool>(var_0.x, true, var_0.x))), func_2(_wgslsmith_mod_u32(var_1.x, ~79257u), var_0.ywx, func_2(~1u, !var_0.wxx, Struct_2(Struct_1(vec4<u32>(global2.a.a.x, 59521u, var_1.x, u_input.a.x), u_input.a.x, global2.a.c, global1[_wgslsmith_index_u32(37561u, 4u)], -108f), global1[_wgslsmith_index_u32(0u, 4u)])))));
    let var_3 = var_0.zy;
    return var_2.a;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(global2.a.a, _wgslsmith_add_u32(_wgslsmith_add_u32(1u, arg_0), ~1u), vec3<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(global2.b, 41253i)), (0i << (u_input.c % 32u)) >> (~global0[_wgslsmith_index_u32(u_input.b.x, 18u)] % 32u), _wgslsmith_sub_i32(~0i, firstLeadingBit(global2.b))), 19089i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), global1[_wgslsmith_index_u32(u_input.a.x, 4u)]);
    var var_1 = func_6(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(364f, -619f)))), func_4(_wgslsmith_f_op_vec2_f32(exp2(arg_2.xz)), func_2(4294967295u, vec3<bool>(true, true, false), Struct_2(Struct_1(u_input.b, 2598u, vec3<i32>(var_0.a.c.x, global1[_wgslsmith_index_u32(5804u, 4u)], 22680i), -1i, var_0.a.e), arg_1)), Struct_2(Struct_1(vec4<u32>(global2.a.a.x, global0[_wgslsmith_index_u32(arg_0, 18u)], 62663u, 0u), 4294967295u, global2.a.c, global2.a.d, 1447f), 18962i), arg_0), func_4(arg_2.xz, Struct_2(Struct_1(var_0.a.a, 53565u, vec3<i32>(9827i, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global2.b), arg_1, -1000f), 1i), Struct_2(Struct_1(vec4<u32>(u_input.c, 64041u, u_input.b.x, 29816u), 58844u, global2.a.c, -39012i, 1107f), var_0.a.d), global0[_wgslsmith_index_u32(14089u, 18u)] | 33964u), -30963i)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.e, 1000f, _wgslsmith_f_op_f32(-887f + arg_2.x), _wgslsmith_f_op_f32(-294f * -1583f)))))));
    return 461f;
}

fn func_7(arg_0: f32, arg_1: vec3<bool>) -> Struct_2 {
    global0 = array<u32, 18>();
    let var_0 = global2.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a.e)));
    global2 = Struct_2(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.e, -187f, var_0.e, -1000f))))), firstLeadingBit(global2.b));
    global2 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1480f) - vec2<f32>(global2.a.e, _wgslsmith_div_f32(883f, 476f))), Struct_2(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(103340u, 18u)], 18u)], 0u, u_input.a.x, global2.a.b), ~4294967295u, ~vec3<i32>(29692i, -2147483647i, global2.a.d), -18635i, -659f), _wgslsmith_add_i32(_wgslsmith_sub_i32(5564i, 33552i), -global2.a.c.x)), Struct_2(Struct_1(~var_0.a, global2.a.b, var_0.c, _wgslsmith_dot_vec3_i32(global2.a.c, vec3<i32>(-18066i, var_0.c.x, global2.b)), _wgslsmith_f_op_f32(-var_0.e)), 1i), abs(54390u >> ((var_0.b | 4294967295u) % 32u))), 1i << ((0u | ~global0[_wgslsmith_index_u32(34230u, 18u)]) % 32u));
    return func_2(global2.a.b, vec3<bool>(false, all(!vec4<bool>(arg_1.x, false, arg_1.x, false)), true), Struct_2(global2.a, countOneBits(abs(~global1[_wgslsmith_index_u32(31002u, 4u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(_wgslsmith_dot_vec2_u32(global2.a.a.xw, vec2<u32>(global0[_wgslsmith_index_u32(65116u, 18u)], u_input.a.x)) >> (global2.a.b % 32u)) > ~72729u;
    global2 = func_7(_wgslsmith_div_f32(_wgslsmith_div_f32(317f, 1270f), global2.a.e), vec3<bool>(global2.a.e != _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(4294967295u, global1[_wgslsmith_index_u32(global2.a.b, 4u)], vec4<f32>(-633f, 2041f, -1000f, 1265f))), _wgslsmith_div_f32(global2.a.e, 721f)), any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, false, false), all(vec4<bool>(true, true, true, true)))), false));
    let var_1 = Struct_1((vec4<u32>(u_input.b.x, func_7(global2.a.e, vec3<bool>(true, true, false)).a.a.x, global2.a.b & 4294967295u, 4294967295u) << (~_wgslsmith_clamp_vec4_u32(global2.a.a, u_input.b, global2.a.a) % vec4<u32>(32u))) | min((global2.a.a >> (u_input.b % vec4<u32>(32u))) << (abs(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], u_input.c, global2.a.b)) % vec4<u32>(32u)), func_7(149f, select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)).a.a), _wgslsmith_mod_u32(global2.a.a.x, ~_wgslsmith_add_u32(min(u_input.b.x, 51655u), 1u)), ~global2.a.c, firstTrailingBit(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~40721u, u_input.c >> (1u % 32u)) >> (~65170u % 32u), 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.e + 400f)))));
    let var_2 = 1u;
    var_0 = true;
    var var_3 = Struct_2(Struct_1(var_1.a, var_2, -vec3<i32>(20642i, global1[_wgslsmith_index_u32(10593u, 4u)], 1i) & ~(~global2.a.c), reverseBits(min(func_4(vec2<f32>(var_1.e, var_1.e), Struct_2(var_1, global1[_wgslsmith_index_u32(var_1.a.x, 4u)]), Struct_2(var_1, global1[_wgslsmith_index_u32(0u, 4u)]), global2.a.b).c.x, 0i >> (u_input.b.x % 32u))), 480f), -496i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(_wgslsmith_add_vec2_i32(reverseBits(var_1.c.zx), ~var_1.c.xx))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global2.a.e, global2.a.e)), _wgslsmith_f_op_vec4_f32(func_5(vec2<f32>(global2.a.e, var_3.a.e), var_3.a, var_3.a, 30402i)).x)), _wgslsmith_f_op_f32(exp2(global2.a.e)), -1831f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1000f))))), _wgslsmith_div_i32(i32(-1i) * -51664i, abs(~abs(-25343i))), _wgslsmith_mod_i32(-2147i, ~func_2(_wgslsmith_div_u32(global2.a.b, global0[_wgslsmith_index_u32(var_3.a.a.x, 18u)]), vec3<bool>(true, true, true), func_2(0u, vec3<bool>(true, false, true), Struct_2(global2.a, -48091i))).b));
}

