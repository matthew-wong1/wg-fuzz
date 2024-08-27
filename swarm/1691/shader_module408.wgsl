struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<i32>;

var<private> global2: array<u32, 17>;

var<private> global3: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(0i, -54361i), vec2<i32>(1i, -35513i), vec2<i32>(69800i, -1i), vec2<i32>(16783i, 2147483647i), vec2<i32>(-20303i, 2147483647i), vec2<i32>(-18560i, -10240i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 26985i), vec2<i32>(-76593i, 31500i), vec2<i32>(-51782i, 46178i), vec2<i32>(2147483647i, 14596i), vec2<i32>(16870i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -16393i), vec2<i32>(-1491i, 31505i), vec2<i32>(2147483647i, 47327i), vec2<i32>(-1i, 0i), vec2<i32>(-34826i, 2708i), vec2<i32>(i32(-2147483648), 11403i), vec2<i32>(23684i, i32(-2147483648)), vec2<i32>(46312i, i32(-2147483648)), vec2<i32>(-20430i, 0i), vec2<i32>(2147483647i, -34440i), vec2<i32>(-34963i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-3085i, -19931i), vec2<i32>(43144i, -4265i), vec2<i32>(0i, 78487i), vec2<i32>(-7182i, i32(-2147483648)), vec2<i32>(27254i, i32(-2147483648)));

var<private> global4: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> f32 {
    var var_0 = Struct_1(vec3<bool>(false, (any(vec3<bool>(true, false, false)) & false) && true, any(vec3<bool>(all(vec3<bool>(true, false, false)), false, true))), global4.x);
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(select(-562f, 179f, true)), _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x)))), _wgslsmith_f_op_f32(floor(arg_0.a.x)), arg_0.a.x));
    var var_2 = Struct_2(max(vec3<i32>(i32(-1i) * -1i, abs(global4.x), -(~31640i)), vec3<i32>(-1i) * -abs(vec3<i32>(global1.x, global4.x, 17528i))));
    let var_3 = (any(select(var_0.a, !var_0.a, select(var_0.a, vec3<bool>(true, var_0.a.x, var_0.a.x), var_0.a))) | true) && true;
    let var_4 = all(!(!(!vec4<bool>(false, true, true, var_0.a.x))));
    return _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x);
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    global1 = _wgslsmith_add_vec2_i32(global4.zy, vec2<i32>(-2147483647i, global1.x ^ global4.x));
    var var_0 = abs(~vec3<u32>(global2[_wgslsmith_index_u32(~u_input.b.x, 17u)], ~0u, global2[_wgslsmith_index_u32(~0u, 17u)]) | ~_wgslsmith_mult_vec3_u32(firstTrailingBit(u_input.c), vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 17u)], 1u, 0u)));
    global0 = true;
    let var_1 = _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(global4.zx, vec2<i32>(-794i, _wgslsmith_mult_i32(global1.x, global1.x))), -(_wgslsmith_sub_vec2_i32(global4.yx, vec2<i32>(global1.x, global4.x)) & ~_wgslsmith_add_vec2_i32(global4.yz, global4.xx)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-910f, -458f, -779f, 1369f))) - vec4<f32>(-718f, 802f, -1321f, 1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-694f * 1000f), 1000f, _wgslsmith_f_op_f32(func_3(Struct_3(vec4<f32>(-1249f, -1354f, -1161f, -1033f)), global2[_wgslsmith_index_u32(arg_1, 17u)])), -914f) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(851f, 466f, 1000f, 365f)))))));
    return Struct_1(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), all(vec2<bool>(true, false))), false || select(false, false, false)), -2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec3<i32> {
    global0 = !(!(!func_2(_wgslsmith_mult_i32(1i, global1.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, u_input.c), 17u)]).a.x));
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1504f * -310f), 1f, _wgslsmith_f_op_f32(max(1108f, 1083f)), _wgslsmith_div_f32(3031f, -710f)), vec4<f32>(-424f, _wgslsmith_f_op_f32(f32(-1f) * -1773f), _wgslsmith_f_op_f32(ceil(-821f)), _wgslsmith_div_f32(-2402f, 1068f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-510f, -1261f, 638f, -572f) + vec4<f32>(-519f, -131f, 838f, 935f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 1068f, -384f, -804f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(-583f, -329f, -1989f, -778f)))));
    global2 = array<u32, 17>();
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-19587i, global1.x), -reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32(arg_2.yxx, arg_2.xzz), _wgslsmith_dot_vec4_i32(arg_2, arg_2))));
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, 481f, arg_0.a.x)), _wgslsmith_f_op_f32(abs(-298f)), var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1340f)));
    return ~vec3<i32>(abs(min(-global4.x, global4.x)), ~(~(i32(-1i) * -33500i)), ~(-1i));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = 853f;
    let var_1 = Struct_2(vec3<i32>(-1i) * -(~arg_2.a ^ ~arg_2.a));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.x)) - arg_0.a.x), -744f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(861f * -872f) * _wgslsmith_f_op_f32(-1051f + arg_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(225f, arg_0.a.x)) + _wgslsmith_div_f32(1251f, -202f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x) + arg_0.a.x))));
    global3 = array<vec2<i32>, 29>();
    global2 = array<u32, 17>();
    return var_1;
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> i32 {
    let var_0 = func_5(Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x - -965f), 1297f, arg_0.a.x, 1370f), vec4<f32>(-342f, arg_0.a.x, _wgslsmith_div_f32(-528f, arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.x ^ global1.x, firstTrailingBit(global1.x), global4.x), func_4(func_2(global1.x, u_input.b.x), vec2<i32>(-2147483647i, global1.x) << (u_input.b.xz % vec2<u32>(32u)), reverseBits(vec4<i32>(-15102i, -1i, global4.x, global4.x)), select(vec4<bool>(arg_1, false, false, true), vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(false, arg_1, arg_1, false)))), firstTrailingBit(_wgslsmith_add_vec3_i32(min(vec3<i32>(global1.x, global4.x, -2147483647i), vec3<i32>(global4.x, global1.x, -2147483647i)), -vec3<i32>(global1.x, global1.x, 0i)))), Struct_2(~vec3<i32>(0i, global1.x & 31033i, ~global1.x)), 9333u);
    global2 = array<u32, 17>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.yxx - vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), 686f, _wgslsmith_f_op_f32(f32(-1f) * -576f)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1994f, -1092f, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.x)) + _wgslsmith_f_op_f32(-617f * 2238f)), arg_0.a.x), arg_0.a.zxz)), !vec3<bool>(arg_1, arg_1, true)));
    let var_2 = Struct_2(func_4(Struct_1(!(!vec3<bool>(arg_1, arg_1, false)), ~_wgslsmith_sub_i32(-1i, global4.x)), vec2<i32>(~1i, 43493i), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 1i, _wgslsmith_sub_i32(1i, -1i), -1i), ~(-vec4<i32>(1i, 66425i, global4.x, 13465i))), vec4<bool>(firstTrailingBit(var_0.a.x) <= global4.x, true, arg_1, false)));
    let var_3 = _wgslsmith_f_op_f32(2301f + _wgslsmith_f_op_f32(round(509f)));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.a, vec3<i32>(global4.x, -1i, firstTrailingBit(abs(1i)))), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(var_0.a, var_2.a));
}

fn func_6(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1367f, 377f, 139f, -923f) * vec4<f32>(-233f, 2253f, 519f, 1167f)))))));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(var_0.a.x, 773f, 1201f, -2372f))) - _wgslsmith_f_op_vec4_f32(-var_0.a)));
    var_0 = Struct_3(var_0.a);
    var var_1 = all(select(!select(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), true), vec4<bool>(arg_0.x, any(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(arg_0.x, arg_0.x, false, false))), arg_0.x, !any(arg_0)), vec4<bool>(arg_0.x, true, true, func_2(global1.x, _wgslsmith_sub_u32(u_input.b.x, global2[_wgslsmith_index_u32(31324u, 17u)])).a.x)));
    var var_2 = func_5(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.a)) - vec4<f32>(1703f, 709f, -533f, var_0.a.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, var_0.a.x, -1000f, 1059f))) * _wgslsmith_f_op_vec4_f32(-var_0.a)))), ~(-_wgslsmith_sub_i32(949i, 2147483647i)), Struct_2(_wgslsmith_mod_vec3_i32(~select(vec3<i32>(2147483647i, arg_2.x, -2147483647i), vec3<i32>(global4.x, 52817i, -2147483647i), arg_0.x), vec3<i32>(18097i, -13199i, 1i))), global2[_wgslsmith_index_u32(countOneBits(((global2[_wgslsmith_index_u32(u_input.a.x, 17u)] & global2[_wgslsmith_index_u32(u_input.c.x, 17u)]) ^ 10536u) | (20052u ^ _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], 17u)], 0u))), 17u)]);
    return func_5(Struct_3(vec4<f32>(-578f, 1f, _wgslsmith_f_op_f32(-1078f * _wgslsmith_f_op_f32(f32(-1f) * -152f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, false)), var_0.a.x))), var_2.a.x, Struct_2(var_2.a), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), -_wgslsmith_div_i32(-_wgslsmith_mult_i32(global4.x, global1.x), (global1.x | global1.x) ^ (global1.x ^ 1i)), vec2<i32>(select(func_1(Struct_3(vec4<f32>(1392f, -312f, 997f, 326f)), false), 0i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global4.x), global4.yz), 1u >= _wgslsmith_dot_vec3_u32(vec3<u32>(34525u, u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)]), u_input.b)), -_wgslsmith_sub_i32(-global1.x, 1i)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-380f, _wgslsmith_f_op_f32(-1320f * _wgslsmith_f_op_f32(select(-1152f, -553f, true))), _wgslsmith_f_op_f32(min(1488f, _wgslsmith_f_op_f32(round(-1000f)))), 274f)));
    var var_2 = 10566u ^ u_input.c.x;
    global1 = ~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(~var_0.a.x, _wgslsmith_clamp_i32(-32040i, 0i, var_0.a.x)), func_5(Struct_3(vec4<f32>(802f, var_1.a.x, 113f, var_1.a.x)), 1i, func_6(vec3<bool>(true, true, false), global1.x, vec2<i32>(var_0.a.x, global1.x)), 4294967295u).a.xz), select(vec2<i32>(~(-1015i), 1i), _wgslsmith_add_vec2_i32(~vec2<i32>(global1.x, global1.x), -vec2<i32>(global1.x, global4.x)), func_2(-1i, ~33818u).a.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(max(var_1.a.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(344f, -632f)) - _wgslsmith_f_op_vec2_f32(-var_1.a.wx))) - vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(min(var_1.a.x, -571f))))));
    var var_4 = u_input.b.zx;
    var var_5 = _wgslsmith_f_op_f32(f32(-1f) * -386f);
    let x = u_input.a;
    s_output = StorageBuffer(1i & ~_wgslsmith_div_i32(i32(-1i) * -1i, select(global4.x, global1.x, true)), global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)]), 17u)]);
}

