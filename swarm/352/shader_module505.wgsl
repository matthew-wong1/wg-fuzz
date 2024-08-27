struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: vec3<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> f32 {
    global1 = select(vec3<bool>(all(arg_1.a.c.wwz), 1u != _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, 45752u, 72621u), vec4<u32>(u_input.b, 46722u, 4294967295u, u_input.b)), !all(arg_1.a.c.xxz)), !(!vec3<bool>(true, all(arg_1.a.c), true)), arg_1.a.c.x);
    let var_0 = false;
    let var_1 = arg_1.a;
    var var_2 = -358f;
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.a.zy)), vec2<f32>(arg_1.b, -1180f)), vec2<f32>(var_1.b, 389f)))));
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_2() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_3(265f, Struct_2(Struct_1(vec3<f32>(-651f, -1134f, -1349f), -1432f, vec4<bool>(false, false, false, global1.x)), 233f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-618f, -1000f))), _wgslsmith_f_op_f32(-877f - _wgslsmith_f_op_f32(f32(-1f) * -894f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1585f, -762f, 904f))))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1331f, 627f, var_0.x) + var_0) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) - vec3<f32>(312f, var_0.x, 1291f)))), _wgslsmith_f_op_f32(exp2(var_0.x)), !select(!(!vec4<bool>(false, global1.x, false, global1.x)), !select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x)), false));
    let var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.a.x, -1i, -1i)) | -vec3<i32>(u_input.a.x, -48382i, u_input.a.x), vec3<i32>(1i >> (countOneBits(global0[_wgslsmith_index_u32(9527u, 14u)]) % 32u), u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), _wgslsmith_div_i32(countOneBits(_wgslsmith_mod_i32(~1i, -17345i)), -_wgslsmith_dot_vec3_i32(min(vec3<i32>(-32709i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(0i, -1i, u_input.a.x), vec3<i32>(u_input.a.x, -18923i, u_input.a.x)))), 34772i);
    global0 = array<u32, 14>();
    let var_3 = Struct_2(var_1, 120f);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.zz + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xz) - vec2<f32>(var_0.x, -164f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(652f)), -1217f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(var_1.a.yx)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yz) + _wgslsmith_f_op_vec2_f32(var_0.xy * var_0.yz)))) * _wgslsmith_f_op_vec2_f32(-var_0.zx)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2.c.zyz;
    var var_1 = Struct_2(Struct_1(arg_2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1088f - 1f))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, global1.x, false), u_input.a.x >= u_input.a.x), arg_2.c, true)), _wgslsmith_f_op_vec2_f32(func_2()).x);
    var var_2 = select(var_1.b > 1518f, var_0.x, arg_2.c.x);
    let var_3 = ~arg_1;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(var_1.a.a)), arg_2.b, var_1.a.c);
    return arg_2;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: f32) -> Struct_2 {
    let var_0 = func_4(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2()), vec2<f32>(arg_0, 1213f), !global1.x))))), ~vec4<u32>(countOneBits(~u_input.b), 4294967295u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 14u)], 14u)] | 4294967295u, _wgslsmith_mod_u32(reverseBits(0u), reverseBits(4294967295u))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(arg_2, Struct_2(Struct_1(vec3<f32>(-1294f, arg_1, arg_1), arg_0, vec4<bool>(global1.x, false, global1.x, false)), -248f))))), _wgslsmith_f_op_f32(1290f - _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2, Struct_2(Struct_1(vec3<f32>(arg_2, arg_0, arg_1), -1000f, vec4<bool>(global1.x, global1.x, false, global1.x)), arg_2))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1082f)))), !(!vec4<bool>(true, global1.x, global1.x, false))));
    global1 = vec3<bool>(max(u_input.a.x, ~6901i) < _wgslsmith_clamp_i32(-(~u_input.a.x), ~1115i, abs(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), var_0.c.x, !any(!vec3<bool>(global1.x, false, var_0.c.x)));
    let var_1 = !(!(var_0.b == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1700f, Struct_2(var_0, 1628f))) + var_0.a.x)));
    var var_2 = var_0;
    let var_3 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(func_2()).x, vec4<bool>(global1.x, var_0.c.x, false, (41290u == u_input.b) || true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a.a) - var_0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-227f * _wgslsmith_div_f32(-595f, -1044f)), arg_1)), vec4<bool>(false, false, !global1.x, _wgslsmith_f_op_f32(-arg_1) <= -2457f)), arg_0);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: i32) -> vec4<u32> {
    var var_0 = false != arg_0.a.c.x;
    global1 = vec3<bool>(true, true, true);
    global0 = array<u32, 14>();
    var var_1 = Struct_1(func_4(arg_0.a.a.yy, ~countOneBits(max(vec4<u32>(20050u, 6153u, u_input.b, arg_2.x), vec4<u32>(0u, 22970u, global0[_wgslsmith_index_u32(87131u, 14u)], arg_2.x))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.a.a.x, -567f)), arg_0.a.a.x, 1314f), 1f, !(!arg_1.a.c))).a, -581f, arg_1.a.c);
    var var_2 = func_1(_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(-330f * arg_1.a.b)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(-1000f, 179f)), -918f);
    return _wgslsmith_div_vec4_u32(~vec4<u32>(~1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(37447u, 14u)], 4294967295u), firstLeadingBit(arg_2.x)), firstTrailingBit(~14958u), abs(~43058u)), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(1u, u_input.b, u_input.b, global0[_wgslsmith_index_u32(1u, 14u)])), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(12928u, 14u)], arg_2.x, global0[_wgslsmith_index_u32(u_input.b, 14u)], 1u), vec4<u32>(arg_2.x, u_input.b, u_input.b, 0u)), ~vec4<u32>(1u, u_input.b, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 14u)]))));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = select(arg_3.c.xzw, select(!vec3<bool>(!global1.x, false & global1.x, !global1.x), vec3<bool>(true, true, func_1(1144f, _wgslsmith_f_op_f32(floor(-2000f)), _wgslsmith_f_op_f32(sign(arg_2.x))).a.c.x), arg_3.c.zzy), !(!arg_3.c.zxy));
    global1 = select(!vec3<bool>(!var_0.x, true, true), vec3<bool>(!((1i >> (global0[_wgslsmith_index_u32(arg_0.x, 14u)] % 32u)) >= u_input.a.x), arg_3.c.x, global1.x | (arg_2.x <= 867f)), !select(func_1(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(arg_3.b * -368f)).a.c.zyz, select(vec3<bool>(var_0.x, arg_3.c.x, false), func_1(arg_3.b, arg_3.a.x, 825f).a.c.yzw, arg_3.c.xzw), vec3<bool>(var_0.x, 2258u >= arg_0.x, false)));
    var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_3.a.zy, _wgslsmith_f_op_vec2_f32(step(arg_1.zy, arg_3.a.xx)), select(arg_3.c.wx, vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 1000f) + vec2<f32>(arg_1.x, arg_1.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -720f)))) - vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(309f)) * _wgslsmith_f_op_f32(-arg_2.x)))), abs(vec4<u32>(174390u, 12041u, 1u, abs(firstTrailingBit(0u)))), func_1(-1106f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -566f) * arg_1.x), 772f).a).c.zxx;
    var var_1 = ~(~3126i);
    var var_2 = false;
    return vec3<f32>(_wgslsmith_div_f32(-284f, _wgslsmith_f_op_f32(-arg_3.a.x)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -137f) - arg_2.x))), Struct_2(arg_3, 1000f))), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(arg_3.b - arg_1.x)));
}

fn func_7(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(865f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(403f, arg_2.b)))))));
    let var_1 = select(~firstTrailingBit(13467u), _wgslsmith_dot_vec2_u32(~arg_0, arg_0), all(!vec3<bool>(select(false, global1.x, false), !arg_2.c.x, arg_3.x)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2019f, arg_2.b))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1144f, _wgslsmith_f_op_f32(-1475f - -479f))));
    var var_2 = 1i;
    global1 = vec3<bool>(all(vec3<bool>(true, false, all(vec2<bool>(arg_2.c.x, true)) || true)), !arg_1 && select(false, true, all(func_1(arg_2.b, -3258f, -320f).a.c)), arg_3.x);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_2.a)), _wgslsmith_div_vec3_f32(arg_2.a, arg_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(-919f + _wgslsmith_f_op_f32(-arg_2.a.x))), !func_1(-1556f, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_div_f32(arg_2.b, 461f)).a.c), arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(u_input.b, 37731u))), vec2<u32>(firstTrailingBit(u_input.b), ~4294967295u) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(55179u, 919u, 27714u), vec3<u32>(4294967295u, 12627u, 41754u)), abs(1u))), true, Struct_1(_wgslsmith_f_op_vec3_f32(func_6(func_5(func_1(229f, -830f, 110f), Struct_2(Struct_1(vec3<f32>(-344f, -287f, 1752f), 271f, vec4<bool>(false, global1.x, false, false)), 1799f), ~vec3<u32>(global0[_wgslsmith_index_u32(1u, 14u)], u_input.b, 0u), _wgslsmith_sub_i32(0i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1093f, -574f, 1420f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1850f, -674f, -891f) + vec3<f32>(377f, 731f, 632f))), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(608f, 218f, 365f))), _wgslsmith_f_op_f32(f32(-1f) * -576f), !vec4<bool>(global1.x, true, global1.x, false)))), 1422f, func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-912f - 1001f), _wgslsmith_div_f32(400f, -493f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(366f * 952f))), -2560f).a.c), vec4<bool>(-8539i <= ~u_input.a.x, select((global1.x & global1.x) || global1.x, global1.x, true), global1.x, false));
    let var_1 = vec3<u32>(abs(~func_5(func_1(116f, 417f, -129f), func_1(-1578f, var_0.b, -333f), vec3<u32>(u_input.b, u_input.b, u_input.b), select(-7135i, u_input.a.x, false)).x), countOneBits(u_input.b), 0u);
    let var_2 = !func_7(reverseBits(~vec2<u32>(u_input.b, u_input.b)), func_4(vec2<f32>(var_0.a.b, var_0.b), vec4<u32>(11820u, 0u, u_input.b, 1u) | vec4<u32>(var_1.x, global0[_wgslsmith_index_u32(u_input.b, 14u)], 42986u, 52097u), var_0.a).c.x & !(!var_0.a.c.x), var_0.a, var_0.a.c).a.c.wxw;
    global0 = array<u32, 14>();
    global1 = !(!vec3<bool>(false || var_2.x, func_4(func_7(var_1.xx, false, var_0.a, var_0.a.c).a.a.yy, ~vec4<u32>(u_input.b, 3608u, 1u, 0u), Struct_1(vec3<f32>(var_0.a.a.x, -1739f, -856f), var_0.b, var_0.a.c)).c.x, false));
    global1 = func_7(var_1.xy, func_4(var_0.a.a.xx, abs(vec4<u32>(_wgslsmith_add_u32(1u, var_1.x), _wgslsmith_clamp_u32(1u, 13194u, 50347u), select(16317u, u_input.b, global1.x), 1u)), var_0.a).c.x, var_0.a, !(!var_0.a.c)).a.c.yzw;
    let x = u_input.a;
    s_output = StorageBuffer((reverseBits(-29869i ^ u_input.a.x) >> (~1u % 32u)) ^ u_input.a.x, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-62518i, u_input.a.x, u_input.a.x) & vec3<i32>(543i, u_input.a.x, 1i)) | _wgslsmith_mult_vec3_i32(abs(vec3<i32>(9770i, -19118i, u_input.a.x)), ~vec3<i32>(u_input.a.x, -14804i, u_input.a.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -3032i)), vec3<i32>(u_input.a.x, u_input.a.x, 5500i)), vec3<i32>(-u_input.a.x, u_input.a.x, -1i))), -((7087i >> (var_1.x % 32u)) >> (~firstLeadingBit(0u) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a.a.x, var_0.b, -575f)) * vec4<f32>(914f, var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -186f), _wgslsmith_f_op_f32(round(var_0.a.b))))));
}

