struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), -32305i, 18468i, 0i), 1458f, true, vec2<f32>(114f, -790f));

var<private> global1: array<i32, 24> = array<i32, 24>(4149i, 1618i, -1i, -11090i, 1i, 2147483647i, 49916i, 36498i, 12944i, 1i, 2147483647i, 1i, -45615i, -18365i, 0i, -1i, 1i, 41303i, 0i, i32(-2147483648), 2147483647i, 2436i, 26586i, 59588i);

var<private> global2: Struct_1;

var<private> global3: i32;

var<private> global4: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> bool {
    global0 = Struct_1(global0.a, -472f, global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.d)) - vec2<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_div_f32(1274f, _wgslsmith_f_op_f32(-254f + -1000f)))));
    let var_0 = -2084f;
    let var_1 = Struct_1(select(~global2.a, -vec4<i32>(global2.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], arg_0, arg_0 << (u_input.a.x % 32u)), select(vec4<bool>(!global2.c, all(vec3<bool>(false, global2.c, global0.c)), global0.c, global2.c), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, global0.c), false), select(vec4<bool>(global2.c, false, false, false), vec4<bool>(true, global0.c, global2.c, global0.c), !vec4<bool>(global0.c, false, false, global2.c)))), _wgslsmith_div_f32(-143f, 758f), all(!select(select(vec3<bool>(global0.c, global0.c, true), vec3<bool>(global2.c, true, global0.c), vec3<bool>(global0.c, global0.c, global2.c)), select(vec3<bool>(global0.c, global2.c, global0.c), vec3<bool>(false, global2.c, global2.c), true), 2344f != global2.d.x)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(517f - _wgslsmith_f_op_f32(global2.b + global0.d.x)))), _wgslsmith_f_op_f32(exp2(var_0))));
    let var_2 = Struct_1(select(_wgslsmith_mod_vec4_i32(~var_1.a, ~vec4<i32>(var_1.a.x, global0.a.x, global1[_wgslsmith_index_u32(1u, 24u)], var_1.a.x)) ^ (_wgslsmith_mult_vec4_i32(global2.a, global2.a) & global0.a), -select(global0.a, var_1.a, false) & vec4<i32>(-9959i, global0.a.x, _wgslsmith_sub_i32(-2147483647i, -27068i), arg_0), select(select(vec4<bool>(true, true, global2.c, var_1.c), vec4<bool>(false, false, false, false), global0.c), !select(vec4<bool>(true, global2.c, global0.c, var_1.c), vec4<bool>(global2.c, global2.c, var_1.c, false), vec4<bool>(global0.c, false, var_1.c, false)), _wgslsmith_dot_vec3_u32(vec3<u32>(55577u, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, u_input.a.x)) != u_input.a.x)), -145f, var_1.c, global2.d);
    global0 = var_1;
    return select(_wgslsmith_dot_vec3_i32(global0.a.zyy, -vec3<i32>(global2.a.x, 2147483647i, 61990i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(global0.a), _wgslsmith_mod_vec4_i32(var_1.a, select(vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)], global0.a.x), vec4<i32>(35936i, 4347i, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], var_1.a.x), vec4<bool>(true, false, var_2.c, global0.c)))), var_2.c) < 13598i;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<f32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = reverseBits(~vec4<i32>(reverseBits(-19015i), global0.a.x | global2.a.x, 1i, ~global2.a.x | global2.a.x));
    let var_1 = 2241f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(238f + global0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + -707f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, -1372f) - global0.b)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2, vec3<f32>(-188f, global0.b, -1225f)) - arg_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) - arg_2))));
    var var_3 = Struct_1(global2.a, 393f, func_3(2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1185f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f)))))));
    global4 = _wgslsmith_f_op_f32(min(var_3.b, var_2.x));
    return Struct_1(_wgslsmith_mult_vec4_i32(var_0, global0.a), global0.d.x, !any(!select(vec4<bool>(var_3.c, true, global2.c, arg_3.x), vec4<bool>(true, global0.c, global2.c, false), vec4<bool>(false, global2.c, false, false))), global2.d);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -440f);
    var var_1 = Struct_1((_wgslsmith_mult_vec4_i32(min(arg_2.a, vec4<i32>(arg_1.a.x, global2.a.x, arg_1.a.x, 0i)), vec4<i32>(global2.a.x, global0.a.x, 21677i, global1[_wgslsmith_index_u32(u_input.a.x, 24u)])) ^ abs(arg_2.a)) << (_wgslsmith_mod_vec4_u32(select(~vec4<u32>(34227u, 7312u, 45887u, u_input.a.x), vec4<u32>(42316u, 3889u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(arg_0.x, arg_1.c, true, arg_3.x)), vec4<u32>(u_input.a.x, ~1u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global0.d.x, _wgslsmith_f_op_f32(step(795f, -502f))))))), true, arg_1.d);
    global2 = Struct_1(vec4<i32>(~arg_2.a.x, select(var_1.a.x, 1i, all(arg_0)) << (_wgslsmith_clamp_u32(~48140u, 0u, ~u_input.a.x) % 32u), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1680f), 972i, vec3<f32>(_wgslsmith_f_op_f32(1176f * var_1.d.x), -563f, _wgslsmith_div_f32(-617f, -747f)), vec3<bool>(!arg_2.c, !var_1.c, false)).a.x, -1i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(func_2(_wgslsmith_div_f32(146f, -651f), _wgslsmith_dot_vec2_i32(global2.a.wy, arg_1.a.ww), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(483f, arg_2.b, arg_1.d.x))), arg_0).b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global0.b)))))))), all(!select(select(vec4<bool>(true, arg_0.x, false, global0.c), vec4<bool>(global2.c, true, var_1.c, arg_3.x), vec4<bool>(true, arg_1.c, true, arg_2.c)), select(vec4<bool>(arg_1.c, global2.c, false, false), vec4<bool>(false, arg_1.c, global0.c, true), vec4<bool>(arg_3.x, true, true, true)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(2038f, 336f), vec2<f32>(var_1.d.x, global2.d.x)))), global0.d, !(!arg_0.zz)))));
    global0 = func_2(arg_1.b, _wgslsmith_mod_i32(abs(min(var_1.a.x, _wgslsmith_mod_i32(-2147483647i, -2987i))), 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-977f, -213f, global2.b)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-946f, -1150f, -2785f), vec3<f32>(-634f, -236f, var_1.d.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global2.b, global0.b)), vec3<f32>(-339f, global2.d.x, -696f))))), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(var_1.c, global2.c), vec2<bool>(global0.c, false))), any(!(!vec4<bool>(arg_0.x, false, false, global0.c))), false));
    var var_2 = Struct_1(-(~global0.a) ^ (-abs(global0.a) >> (firstLeadingBit(~vec4<u32>(54977u, u_input.a.x, 4294967295u, 0u)) % vec4<u32>(32u))), arg_2.d.x, all(!vec3<bool>(arg_1.c, 27822u != u_input.a.x, arg_1.d.x >= arg_1.d.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -112f), -1193f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.b, var_1.d.x)))) + _wgslsmith_f_op_vec2_f32(-arg_2.d)));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global4 = 271f;
    global0 = arg_0;
    global1 = array<i32, 24>();
    let var_0 = func_4(vec3<bool>(arg_0.c, arg_0.d.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - _wgslsmith_f_op_f32(-arg_1.d.x)), func_4(vec3<bool>(arg_0.c, true, true), func_4(!vec3<bool>(false, false, global0.c), Struct_1(global2.a, 1066f, global2.c, vec2<f32>(945f, global0.d.x)), arg_1, vec2<bool>(true, true)), func_4(!vec3<bool>(arg_0.c, false, false), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], arg_1.a.x, 2147483647i, global1[_wgslsmith_index_u32(56779u, 24u)]), arg_0.b, true, global0.d), arg_0, !vec2<bool>(true, global2.c)), select(select(vec2<bool>(true, false), vec2<bool>(arg_0.c, global2.c), vec2<bool>(true, false)), vec2<bool>(true, arg_0.c), !vec2<bool>(global2.c, false))).c), func_4(!(!(!vec3<bool>(false, true, arg_1.c))), arg_0, arg_1, !(!select(vec2<bool>(true, true), vec2<bool>(global2.c, global0.c), vec2<bool>(false, global2.c)))), Struct_1(vec4<i32>(-1i, ~global2.a.x, -_wgslsmith_mult_i32(-1i, arg_0.a.x), arg_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.d.x, arg_0.d.x, global2.c)) - -1057f)), (true != (true & global2.c)) && true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(global2.d))))), vec2<bool>(0u < u_input.a.x, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - arg_1.d.x) * _wgslsmith_f_op_f32(-2985f + 741f)), firstLeadingBit(24212i) & global0.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1456f, arg_0.b, 1503f), vec3<f32>(global2.b, -321f, -447f))), vec3<bool>(!global0.c, !arg_0.c, func_2(-633f, global2.a.x, vec3<f32>(global2.d.x, 346f, -1241f), vec3<bool>(arg_1.c, global0.c, true)).c)).c));
    var var_1 = Struct_1(func_4(!vec3<bool>(true, arg_0.c || false, true), func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b))), _wgslsmith_mult_i32(1i, var_0.a.x & global2.a.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.d.x, var_0.d.x, var_0.b))), !select(vec3<bool>(true, false, arg_1.c), vec3<bool>(true, global2.c, var_0.c), vec3<bool>(false, global0.c, true))), arg_1, vec2<bool>(!global2.c, select(select(var_0.c, true, global0.c), arg_1.c, true))).a, _wgslsmith_f_op_f32(trunc(global2.b)), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1742f, 798f), global2.d)));
    return _wgslsmith_div_f32(-504f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-836f + arg_1.d.x), _wgslsmith_f_op_f32(round(var_0.b))), 272f))));
}

fn func_1() -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_5(func_4(!select(vec3<bool>(false, global2.c, global0.c), vec3<bool>(global2.c, false, global2.c), global2.c), func_2(global2.b, global2.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, 560f, 835f)), vec3<bool>(true, global2.c, global0.c)), Struct_1(-vec4<i32>(global0.a.x, global1[_wgslsmith_index_u32(4294967295u, 24u)], global2.a.x, global2.a.x), global2.d.x, false, vec2<f32>(-381f, global0.b)), !select(vec2<bool>(true, global2.c), vec2<bool>(global2.c, global0.c), vec2<bool>(false, true))), Struct_1(func_2(_wgslsmith_f_op_f32(-1227f + -1000f), _wgslsmith_sub_i32(global2.a.x, 36169i), vec3<f32>(global2.b, global0.b, global0.b), !vec3<bool>(true, global2.c, false)).a, 1000f, false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.d.x, -393f), vec2<f32>(global2.d.x, -408f))))))), _wgslsmith_f_op_f32(func_5(Struct_1(vec4<i32>(13822i & global1[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_clamp_i32(global2.a.x, global2.a.x, 1i), ~global0.a.x, _wgslsmith_sub_i32(global2.a.x, global2.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2.b, 994f))), any(select(vec2<bool>(true, global0.c), vec2<bool>(false, global0.c), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(global2.d * vec2<f32>(536f, global2.b))), Struct_1(vec4<i32>(-40931i, 2147483647i, 54059i, 1286i) << (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) - _wgslsmith_f_op_f32(-global2.b)), all(vec3<bool>(true, false, global0.c)), vec2<f32>(_wgslsmith_f_op_f32(706f + global2.d.x), _wgslsmith_f_op_f32(floor(global2.d.x)))))), -708f, _wgslsmith_f_op_f32(-global0.b));
    global0 = Struct_1(-(-vec4<i32>(-10532i, 2751i, 0i, global1[_wgslsmith_index_u32(27020u, 24u)]) | firstTrailingBit(global2.a)) & (global2.a ^ vec4<i32>(_wgslsmith_sub_i32(global0.a.x, 41918i), -2147483647i, _wgslsmith_clamp_i32(3170i, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 14256i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(11036u, u_input.a.x, u_input.a.x)), 24u)])), _wgslsmith_f_op_f32(253f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1795f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global2.d.x, -842f)))))), global2.c, var_0.wy);
    var var_1 = (vec2<i32>(36337i, func_4(!vec3<bool>(false, global2.c, true), Struct_1(global0.a, -215f, false, global2.d), func_2(1123f, global2.a.x, vec3<f32>(global0.b, global0.d.x, global2.b), vec3<bool>(false, false, global2.c)), vec2<bool>(true, false)).a.x) >> (~u_input.a % vec2<u32>(32u))) >> (vec2<u32>(abs(1u), u_input.a.x) % vec2<u32>(32u));
    let var_2 = func_4(!(!(!vec3<bool>(global2.c, false, false))), Struct_1(-min(vec4<i32>(global1[_wgslsmith_index_u32(10185u, 24u)], 41744i, global2.a.x, 28313i), ~global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_2(1000f, 7232i, var_0.wwz, vec3<bool>(false, global0.c, global2.c)).b))), any(select(select(vec4<bool>(global2.c, global0.c, false, global2.c), vec4<bool>(global0.c, false, false, false), vec4<bool>(global0.c, true, global2.c, global2.c)), !vec4<bool>(false, true, global2.c, global2.c), select(vec4<bool>(false, false, true, global2.c), vec4<bool>(true, global0.c, true, true), vec4<bool>(false, true, false, global0.c)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, global0.b)) - _wgslsmith_f_op_vec2_f32(var_0.wx - global0.d)))), Struct_1(_wgslsmith_mod_vec4_i32(global0.a, global0.a), 1000f, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-637f, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 906f))) * func_4(select(vec3<bool>(true, global0.c, global2.c), vec3<bool>(global2.c, global0.c, global0.c), vec3<bool>(global2.c, false, global0.c)), func_2(global2.d.x, -40206i, vec3<f32>(-351f, -1000f, -1000f), vec3<bool>(global2.c, true, false)), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], var_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global0.a.x), var_0.x, global0.c, vec2<f32>(1545f, global2.d.x)), !vec2<bool>(global0.c, false)).d)), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, global2.c), false), select(vec2<bool>(false, false), vec2<bool>(global2.c, false), vec2<bool>(global2.c, false))), vec2<bool>(true, true), !all(vec2<bool>(global0.c, global2.c))));
    let var_3 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], -809i, var_1.x, global0.a.x)), global0.a), (global0.a ^ vec4<i32>(var_2.a.x, global2.a.x, var_1.x, 1i)) >> (countOneBits(vec4<u32>(34522u, u_input.a.x, u_input.a.x, 1u)) % vec4<u32>(32u))) << (firstLeadingBit(~countOneBits(vec4<u32>(u_input.a.x, 27668u, 21487u, u_input.a.x))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-608f + _wgslsmith_f_op_f32(-660f + -2154f)), (global2.c & (_wgslsmith_mult_i32(-1i, var_2.a.x) >= min(230i, global1[_wgslsmith_index_u32(16786u, 24u)]))) || false, vec2<f32>(_wgslsmith_f_op_f32(func_5(Struct_1(firstLeadingBit(var_2.a), _wgslsmith_f_op_f32(838f - var_2.d.x), global2.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, global2.d.x) - global2.d)), func_2(-626f, min(41642i, global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec3<f32>(global2.d.x, -283f, 1152f), !vec3<bool>(true, var_2.c, global0.c)))), -1485f));
    return all(select(vec2<bool>(false, true), !select(vec2<bool>(false, var_3.c), !vec2<bool>(true, global2.c), vec2<bool>(true, true)), select(!vec2<bool>(global0.c, global0.c), !select(vec2<bool>(true, global2.c), vec2<bool>(false, var_2.c), global2.c), !select(vec2<bool>(var_3.c, true), vec2<bool>(false, var_2.c), vec2<bool>(true, var_2.c)))));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = vec3<u32>(~(_wgslsmith_dot_vec3_u32(vec3<u32>(41204u, arg_1.x, 4294967295u), select(vec3<u32>(24543u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, arg_1.x, arg_1.x), false)) ^ _wgslsmith_sub_u32(_wgslsmith_sub_u32(13260u, arg_1.x), 1u)), reverseBits(abs(30587u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(74241u, arg_1.x, 116u), vec3<u32>(118538u, u_input.a.x, 19908u)) % 32u)) & ~(~countOneBits(6366u)), arg_1.x);
    var_0 = ~(~vec3<u32>(reverseBits(_wgslsmith_mod_u32(15150u, var_0.x)), 27666u, arg_1.x));
    global3 = arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 482f)) * -955f), global2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(534f, _wgslsmith_f_op_f32(abs(global0.b)))))));
    var var_2 = Struct_1(reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(~arg_1.x, 24u)], global2.a.x, global2.a.x, -2147483647i)), global0.b, true, global0.d);
    return func_2(_wgslsmith_f_op_f32(min(global0.d.x, var_1.x)), min(global0.a.x, i32(-1i) * -2147483647i) | (arg_2 << (15835u % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2300f, -418f, 1793f))))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(select(vec3<bool>(true, (false && global2.c) && false, true), vec3<bool>(global0.c, false, true), vec3<bool>(true, (global2.d.x <= global0.d.x) || true, !func_1())), ~u_input.a, 2147483647i | min(global0.a.x, -58041i));
    global1 = array<i32, 24>();
    var var_1 = Struct_1(vec4<i32>(~2147483647i | -(~global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), countOneBits(var_0.a.x) | global0.a.x, 14477i, global0.a.x), 505f, ~4294967295u == _wgslsmith_dot_vec3_u32(~(~vec3<u32>(66432u, 4294967295u, 1u)), ~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global0.d - func_2(var_0.d.x, global2.a.x, vec3<f32>(global0.b, -506f, global2.b), vec3<bool>(true, global0.c, false)).d), _wgslsmith_f_op_vec2_f32(-global2.d))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, var_0.b) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d + global2.d) * vec2<f32>(-121f, global0.d.x)))));
    let var_2 = func_6(vec3<bool>(!all(!vec4<bool>(false, var_0.c, var_1.c, true)), ~70266i == min(-71630i, _wgslsmith_sub_i32(3373i, global0.a.x)), var_0.c), u_input.a, _wgslsmith_add_i32(i32(-1i) * -20001i, _wgslsmith_div_i32(~_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], var_1.a.x), _wgslsmith_dot_vec3_i32(var_0.a.yzw & global0.a.wyy, vec3<i32>(-1i, global2.a.x, 40375i)))));
    var var_3 = !(!(false & var_0.c));
    let var_4 = max(~u_input.a.x, max(abs(~u_input.a.x), 105939u) & ~u_input.a.x);
    global0 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1484f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(var_2, Struct_1(vec4<i32>(var_0.a.x, 1i, global1[_wgslsmith_index_u32(0u, 24u)], var_2.a.x), -341f, var_1.c, var_1.d))))))), countOneBits(-12079i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(317f, 211f, var_0.b)) * vec3<f32>(794f, 756f, -625f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-932f, global2.d.x, 620f) + vec3<f32>(528f, 148f, 213f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, -149f, -1321f)), !vec3<bool>(false, var_1.c, global2.c))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, var_2.d.x, var_2.b) * vec3<f32>(1000f, global2.d.x, 887f)))), !select(select(!vec3<bool>(var_1.c, global2.c, global0.c), select(vec3<bool>(var_2.c, var_0.c, false), vec3<bool>(var_2.c, false, true), vec3<bool>(global2.c, true, var_2.c)), !vec3<bool>(false, var_2.c, true)), !(!vec3<bool>(false, global0.c, true)), select(vec3<bool>(global2.c, true, false), !vec3<bool>(false, var_0.c, var_2.c), vec3<bool>(var_0.c, false, global2.c))));
    global2 = func_4(select(select(vec3<bool>(var_0.d.x != 513f, true, func_6(vec3<bool>(true, var_0.c, global2.c), u_input.a, var_0.a.x).c), !vec3<bool>(false, var_1.c, var_1.c), global2.c), !select(vec3<bool>(global0.c, global0.c, global2.c), vec3<bool>(global2.c, true, var_2.c), global1[_wgslsmith_index_u32(u_input.a.x, 24u)] == var_0.a.x), !select(!vec3<bool>(var_0.c, var_0.c, false), vec3<bool>(true, var_2.c, var_0.c), var_0.c)), func_4(vec3<bool>(false, !func_3(2147483647i), var_1.c), var_2, func_4(!vec3<bool>(true, false, global2.c), Struct_1(~vec4<i32>(2147483647i, 20544i, 2147483647i, 2147483647i), _wgslsmith_div_f32(var_2.d.x, global0.d.x), true, vec2<f32>(var_1.b, global2.b)), var_2, !select(vec2<bool>(true, global0.c), vec2<bool>(var_2.c, false), global0.c)), !(!(!vec2<bool>(var_1.c, false)))), Struct_1(-(~abs(vec4<i32>(var_2.a.x, global0.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], -2147483647i))), -736f, all(vec3<bool>(false, func_2(-1249f, var_0.a.x, vec3<f32>(var_1.d.x, 1048f, -889f), vec3<bool>(true, true, true)).c, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1216f, -907f)), _wgslsmith_f_op_f32(func_5(Struct_1(global2.a, var_0.b, true, global0.d), Struct_1(vec4<i32>(global2.a.x, 2147483647i, 47552i, 0i), 691f, false, global2.d))))), select(!vec2<bool>(global0.c, func_3(var_1.a.x)), !(!(!vec2<bool>(var_2.c, true))), var_2.c));
    global4 = func_4(!(!select(select(vec3<bool>(true, global2.c, global0.c), vec3<bool>(var_2.c, var_1.c, var_2.c), vec3<bool>(true, false, var_0.c)), vec3<bool>(var_2.c, false, var_1.c), !vec3<bool>(true, global0.c, var_0.c))), func_2(999f, i32(-1i) * -81460i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(735f, 1019f, 3210f)) * vec3<f32>(var_2.d.x, _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(1353f - -1470f))), select(select(!vec3<bool>(true, true, global2.c), vec3<bool>(true, global0.c, false), true), vec3<bool>(!global0.c, all(vec2<bool>(global0.c, global0.c)), var_0.c), vec3<bool>(var_4 >= 4294967295u, !global0.c, true))), Struct_1(~vec4<i32>(firstLeadingBit(global0.a.x), -17914i, -1i, countOneBits(-4462i)), _wgslsmith_f_op_f32(-350f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-243f, -1471f)), -1246f)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, global0.b)))), !vec2<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -203f) != global0.d.x)).d.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -1000f);
}

