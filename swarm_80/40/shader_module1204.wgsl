struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, 925f, -881f, -934f);

var<private> global1: array<vec2<i32>, 29>;

var<private> global2: array<Struct_1, 32>;

var<private> global3: array<vec3<bool>, 4>;

var<private> global4: vec4<u32> = vec4<u32>(21311u, 1u, 15124u, 0u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>) -> vec4<i32> {
    let var_0 = min(-abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.e.x, -33607i, 0i, 0i), u_input.e)), vec4<i32>(-2147483647i, min(reverseBits(-1i), u_input.e.x), 1i, _wgslsmith_dot_vec3_i32((u_input.d | u_input.d) ^ vec3<i32>(u_input.b.x, u_input.a, u_input.e.x), u_input.e.wxx << (vec3<u32>(global4.x, 4294967295u, 84980u) % vec3<u32>(32u)))));
    global3 = array<vec3<bool>, 4>();
    let var_1 = Struct_2(~vec4<i32>(min(-14586i, u_input.e.x) << (global4.x % 32u), 1i, -(~3336i), countOneBits(_wgslsmith_sub_i32(-27752i, u_input.b.x))), arg_0.yz, ~(-_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(var_0.x, -1i)) >> (global4.zy % vec2<u32>(32u))), _wgslsmith_div_f32(-510f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(839f * -669f), global0.x, arg_0.x)))), global2[_wgslsmith_index_u32(1u, 32u)]);
    let var_2 = var_1.d;
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(108f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(global0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -492f))), -900f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) + _wgslsmith_f_op_f32(select(-225f, 631f, false)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2, var_1.d, 844f, global0.x))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(697f, var_1.d, -1337f, -1000f))))))));
    return ~vec4<i32>(i32(-1i) * -18300i, -23622i, ~50314i, firstTrailingBit(-2147483647i) & ~20244i) | -abs(vec4<i32>(-2147483647i, var_1.a.x, ~var_0.x, 1i));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(func_3(vec3<bool>(true, true, true)), select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, all(select(global3[_wgslsmith_index_u32(47311u, 4u)], vec3<bool>(false, false, false), true))), any(vec3<bool>(true, global4.x < 1u, select(true, true, false)))), u_input.b.zz, global0.x, global2[_wgslsmith_index_u32(~1u, 32u)]);
    var var_1 = var_0;
    global1 = array<vec2<i32>, 29>();
    let var_2 = Struct_1(u_input.c.x, (~u_input.e.x >> (_wgslsmith_sub_u32(max(26757u, u_input.c.x), u_input.c.x) % 32u)) | var_0.c.x, vec3<i32>(var_0.e.e.x, 51135i, _wgslsmith_sub_i32(~(var_1.c.x >> (var_0.e.a % 32u)), _wgslsmith_div_i32(~24269i, 1i << (var_0.e.a % 32u)))), vec2<bool>(var_1.b.x, true), -abs(_wgslsmith_mod_vec3_i32(vec3<i32>(4677i, var_0.e.c.x, u_input.d.x) ^ u_input.d, func_3(global3[_wgslsmith_index_u32(var_1.e.a, 4u)]).wzz)));
    global3 = array<vec3<bool>, 4>();
    return Struct_2(abs(_wgslsmith_mod_vec4_i32(-u_input.e, (u_input.e & u_input.e) >> (select(vec4<u32>(5670u, 0u, u_input.c.x, 4294967295u), vec4<u32>(var_2.a, 4294967295u, global4.x, global4.x), vec4<bool>(var_0.e.d.x, var_1.e.d.x, true, false)) % vec4<u32>(32u)))), vec2<bool>(any(!vec3<bool>(var_2.d.x, true, false)), !var_2.d.x), select(vec2<i32>(_wgslsmith_mod_i32(var_2.b, var_2.e.x), 2147483647i), reverseBits(vec2<i32>(max(-1i, var_1.a.x), -28037i)), !var_1.e.d), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.x, var_0.d, false)), _wgslsmith_f_op_f32(-700f + var_0.d)) + -529f))), var_2);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global1 = array<vec2<i32>, 29>();
    let var_0 = func_2().e.d;
    global4 = select(~countOneBits(reverseBits(~vec4<u32>(global4.x, 1u, 35448u, 1u))), vec4<u32>((arg_0.e.a ^ 4294967295u) >> (arg_0.e.a % 32u), 2635u, firstLeadingBit(~arg_0.e.a), ~(~_wgslsmith_dot_vec3_u32(global4.zwy, global4.xyz))), vec4<bool>(var_0.x, true, !(var_0.x || (arg_0.e.a != 1u)), all(select(vec4<bool>(var_0.x, arg_0.b.x, arg_0.b.x, false), select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(arg_0.b.x, true, arg_0.e.d.x, var_0.x), false), false))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(967f, _wgslsmith_div_f32(-1825f, -1036f), -1249f, _wgslsmith_f_op_f32(abs(-1419f)))));
    let var_1 = select(_wgslsmith_mult_vec2_u32(global4.zz, _wgslsmith_add_vec2_u32((vec2<u32>(4294967295u, u_input.c.x) & vec2<u32>(arg_0.e.a, global4.x)) & vec2<u32>(arg_0.e.a, 0u), vec2<u32>(global4.x, ~4294967295u))), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_0.e.a) & global4.zx, ~select(global4.xw, u_input.c, var_0)), true);
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global2 = array<Struct_1, 32>();
    let var_0 = 1f;
    var var_1 = Struct_1(~min(1u >> (_wgslsmith_clamp_u32(arg_3.e.a, global4.x, arg_1.e.a) % 32u), 0u), -7830i, select(u_input.b, -_wgslsmith_mult_vec3_i32(arg_3.e.e, vec3<i32>(arg_1.a.x, 1i, 0i)), vec3<bool>(true, any(!vec2<bool>(false, arg_0)), !(u_input.a >= -2147483647i))), func_2().b, _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(2147483647i, arg_2.e.x, u_input.a) ^ arg_1.a.yzz, vec3<i32>(abs(arg_3.a.x), 2147483647i, -4586i)), arg_1.a.zyy));
    var var_2 = vec2<f32>(1215f, -287f);
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, 767f)) * vec2<f32>(_wgslsmith_f_op_f32(round(var_0)), arg_3.d)) - global0.ww), vec2<u32>(26828u, 4294967295u), -vec4<i32>(0i, 9683i, ~_wgslsmith_dot_vec2_i32(arg_1.a.wy, arg_1.c), -(~29538i)), global0.xzw, select(~(~min(vec4<u32>(u_input.c.x, arg_1.e.a, u_input.c.x, var_1.a), vec4<u32>(var_1.a, 4294967295u, arg_3.e.a, arg_3.e.a))), vec4<u32>(56917u, func_2().e.a, ~(~arg_1.e.a), _wgslsmith_add_u32(109130u, ~4294967295u)), vec4<bool>((arg_1.b.x & arg_2.d.x) != arg_0, select(arg_1.b.x, any(vec4<bool>(arg_1.e.d.x, arg_0, arg_2.d.x, true)), true), any(select(vec4<bool>(false, arg_0, var_1.d.x, false), vec4<bool>(true, true, arg_3.e.d.x, true), vec4<bool>(false, false, false, arg_2.d.x))), false)));
    return var_3.e.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: bool) -> Struct_3 {
    let var_0 = global2[_wgslsmith_index_u32(reverseBits(func_5(~(-1i) > u_input.b.x, func_4(func_2()), Struct_1(_wgslsmith_mult_u32(u_input.c.x, ~u_input.c.x), u_input.e.x, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, 46157i, 35135i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, u_input.d.x, -13306i), vec3<i32>(u_input.b.x, arg_1, arg_1))), !vec2<bool>(false, arg_2), vec3<i32>(abs(2147483647i), ~u_input.e.x, _wgslsmith_sub_i32(-1i, -1i))), func_2())), 32u)];
    let var_1 = func_4(Struct_2(~u_input.e, var_0.d, countOneBits(countOneBits(var_0.c.zz)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 73955u), u_input.c ^ vec2<u32>(4294967295u, var_0.a)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))), global2[_wgslsmith_index_u32(abs(2582u), 32u)])).e;
    var var_2 = firstLeadingBit(~vec4<u32>(0u, ~119460u, var_0.a, var_1.a));
    var var_3 = 352f;
    var var_4 = global2[_wgslsmith_index_u32(1u, 32u)];
    return Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1211f - arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -489f)))), vec2<u32>(~func_5(false, func_4(Struct_2(vec4<i32>(var_4.e.x, var_1.c.x, var_4.b, arg_1), var_4.d, vec2<i32>(2147483647i, var_0.c.x), global0.x, var_1)), global2[_wgslsmith_index_u32(18316u, 32u)], Struct_2(vec4<i32>(arg_1, -13186i, 2147483647i, 2147483647i), vec2<bool>(true, true), vec2<i32>(0i, var_0.c.x), -102f, Struct_1(global4.x, u_input.d.x, var_1.c, var_4.d, var_0.c))), ~select(min(81138u, var_4.a), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, var_0.a, var_2.x), vec4<u32>(global4.x, 11771u, 16177u, 4294967295u)), any(vec4<bool>(var_0.d.x, true, true, arg_2)))), func_2().a, vec3<f32>(2455f, 219f, _wgslsmith_f_op_f32(-arg_0.x)), vec4<u32>(~(_wgslsmith_div_u32(var_2.x, u_input.c.x) | ~var_2.x), var_0.a, _wgslsmith_dot_vec3_u32(abs(select(vec3<u32>(4294967295u, var_0.a, 34946u), vec3<u32>(var_1.a, global4.x, global4.x), var_4.d.x)), abs(reverseBits(vec3<u32>(62761u, var_1.a, 1u)))), (_wgslsmith_clamp_u32(29263u, 1u, 1u) << (abs(var_1.a) % 32u)) << (countOneBits(var_0.a & 1u) % 32u)));
}

fn func_6(arg_0: bool, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = Struct_2(~arg_1.c, vec2<bool>(true, !func_4(Struct_2(vec4<i32>(-1i, u_input.b.x, arg_1.c.x, -1i), vec2<bool>(false, arg_0), arg_1.c.yx, arg_1.a.x, global2[_wgslsmith_index_u32(global4.x, 32u)])).b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, i32(-1i) * -25823i) | firstLeadingBit(vec2<i32>(arg_1.c.x, arg_1.c.x)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(u_input.c.x, 7751u), ~arg_1.b.x), 29u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global0.x))))) + -389f), global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~u_input.c.x, u_input.c.x)), 32u)]);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-160f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1443f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -333f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)));
    var var_1 = !(!global3[_wgslsmith_index_u32(u_input.c.x >> (_wgslsmith_add_u32(func_2().e.a, ~0u) % 32u), 4u)]);
    var_1 = vec3<bool>(false, !(928i <= abs(func_4(var_0).c.x)), true);
    let var_2 = vec3<u32>(1u, ~1u, ~_wgslsmith_mult_u32(~(~33560u), u_input.c.x));
    return vec2<u32>(~(~func_4(Struct_2(vec4<i32>(34527i, var_0.c.x, arg_1.c.x, -1i), vec2<bool>(var_0.b.x, var_1.x), global1[_wgslsmith_index_u32(0u, 29u)], var_0.d, var_0.e)).e.a), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(29905u, 95256u, 26730u)), ~vec3<u32>(0u, arg_1.e.x, var_0.e.a)), ~var_0.e.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 29>();
    var var_0 = _wgslsmith_dot_vec3_i32(~countOneBits(-(~vec3<i32>(0i, 2147483647i, u_input.a))), u_input.e.zxz);
    var var_1 = Struct_3(vec2<f32>(1364f, _wgslsmith_f_op_f32(f32(-1f) * -476f)), ~(func_6(true, func_1(vec4<f32>(-176f, global0.x, global0.x, 463f), -5185i, true)) & select(~u_input.c, ~global4.zx, false)), func_4(func_4(Struct_2(vec4<i32>(-32627i, -20830i, u_input.e.x, 1i), vec2<bool>(true, true), u_input.d.zx, -553f, Struct_1(global4.x, 2147483647i, u_input.b, vec2<bool>(true, true), vec3<i32>(-35579i, -9625i, -33105i))))).a & u_input.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global0.wxx)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(903f, global0.x, global0.x))), true)) - global0.wxw), max(vec4<u32>(u_input.c.x, 23276u, ~(~global4.x), _wgslsmith_sub_u32(_wgslsmith_mult_u32(23996u, 0u), global4.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global4.x, u_input.c.x, 0u, 80u) & vec4<u32>(51927u, 57249u, 1u, 0u), vec4<u32>(1u, u_input.c.x, 21071u, u_input.c.x)), ~vec4<u32>(global4.x, global4.x, u_input.c.x, u_input.c.x), ~(~vec4<u32>(4294967295u, global4.x, 66735u, 52718u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_2().d), 27918i, _wgslsmith_dot_vec3_i32(~min(var_1.c.zyy, vec3<i32>(-2147483647i, -23579i, var_1.c.x)), var_1.c.xzy) | (firstTrailingBit(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(58261u, 29u)], u_input.e.yw)) | var_1.c.x), max(34615i, var_1.c.x), _wgslsmith_sub_i32(2147483647i, var_1.c.x));
}

