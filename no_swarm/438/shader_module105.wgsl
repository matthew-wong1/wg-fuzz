struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17>;

var<private> global1: array<i32, 21>;

var<private> global2: array<i32, 17>;

var<private> global3: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(1u, 1u), vec2<u32>(6536u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(76367u, 16513u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-825f, arg_1.x), _wgslsmith_div_vec2_f32(vec2<f32>(1043f, -371f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(990f, -1000f)))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_1.x) * arg_1.xy))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1.xx * _wgslsmith_f_op_vec2_f32(vec2<f32>(-535f, arg_1.x) + vec2<f32>(-693f, arg_1.x))), vec2<f32>(_wgslsmith_div_f32(-984f, arg_1.x), _wgslsmith_div_f32(171f, arg_1.x))))));
    var var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2301f))), false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1265f * -1000f), _wgslsmith_f_op_f32(1358f + 1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_1.x)), var_0.x)))));
    global3 = array<vec2<u32>, 4>();
    var var_2 = abs(select(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), firstTrailingBit(vec4<u32>(u_input.a.x, 9532u, u_input.a.x, 54776u)) & (vec4<u32>(u_input.a.x, 18877u, 8600u, 77071u) << (vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, false, true, true), all(vec4<bool>(false, true, false, false)))) & _wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, 0u, 53816u, u_input.a.x), true), vec4<u32>(_wgslsmith_add_u32(1u, u_input.a.x), firstTrailingBit(4294967295u), firstLeadingBit(u_input.a.x), ~95366u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 5882u, u_input.a.x, 4294967295u), vec4<u32>(6921u, u_input.a.x, 0u, 10986u), vec4<u32>(u_input.a.x, 0u, 0u, 1u))));
    let var_3 = vec4<bool>(all(vec2<bool>(true, true)), 912f < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_1.x)))), false, false);
    return _wgslsmith_f_op_f32(1392f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(154f, -499f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(622f * -1643f), 696f)))), var_1.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(2247f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<i32>(1i, global2[_wgslsmith_index_u32(0u, 17u)]) | vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], -2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(683f, -421f, -428f)))), _wgslsmith_f_op_f32(-466f * _wgslsmith_f_op_f32(sign(1000f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1440f, 260f)))))), true, (_wgslsmith_f_op_f32(1412f + 1f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1844f, 1687f, false)))) != true);
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1261f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1187f, var_0.a)), var_0.c, false)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2867f, var_0.b.x, true))), -874f)), _wgslsmith_f_op_f32(sign(var_0.b.x)), all(!select(vec4<bool>(false, var_1.a.a.c, false, var_0.d), vec4<bool>(false, false, var_1.a.a.c, var_0.c), vec4<bool>(false, true, false, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(ceil(373f)))))), false, var_0.c);
    var var_3 = Struct_1(var_1.a.a.a, vec2<f32>(_wgslsmith_f_op_f32(1570f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + -562f) - -1368f)), _wgslsmith_f_op_f32(func_3(-_wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec2<i32>(-2147483647i, -2147483647i)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.x, var_1.a.a.a, var_1.a.a.a)))))))), !var_0.c, true);
    var var_4 = (global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(max(u_input.a.x, 0u), ~u_input.a.x), 17u)] ^ select(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], _wgslsmith_mod_vec4_i32(vec4<i32>(14780i, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), _wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(54464u, 17u)], -2147483647i, -1i, global1[_wgslsmith_index_u32(4294967295u, 21u)]), global0[_wgslsmith_index_u32(1u, 17u)])), true)) >> (_wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(64140u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 23912u, u_input.a.x, 1u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), ~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 33105u, u_input.a.x, 58549u)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u))) % vec4<u32>(32u));
    return Struct_2(var_2);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32((vec4<u32>(0u, 0u, 4525u, u_input.a.x) | vec4<u32>(u_input.a.x, 29857u, 1u, u_input.a.x)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 30374u), vec4<u32>(44413u, u_input.a.x, u_input.a.x, 33049u)) % vec4<u32>(32u)), abs(vec4<u32>(12770u, u_input.a.x, 21587u, 4294967295u)) << (~vec4<u32>(4294967295u, 12689u, 17030u, u_input.a.x) % vec4<u32>(32u)))), 4u)];
    global1 = array<i32, 21>();
    global3 = array<vec2<u32>, 4>();
    let var_2 = 0u;
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = vec2<i32>(~(-(arg_3 << (u_input.a.x % 32u))), _wgslsmith_add_i32(_wgslsmith_mult_i32(-13480i, _wgslsmith_mult_i32(arg_3, global1[_wgslsmith_index_u32(u_input.a.x, 21u)] << (45404u % 32u))), ~firstTrailingBit(-1i)));
    var var_1 = true;
    var_1 = abs(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 34365u), 18980u) & _wgslsmith_dot_vec4_u32(select(vec4<u32>(29788u, 5783u, 1u, 15363u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), arg_0.a.a.d), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))) < 4294967295u;
    var var_2 = !select(vec4<bool>(true, arg_1.x, true, arg_0.a.a.d), vec4<bool>(true, any(vec4<bool>(arg_1.x, arg_0.a.a.c, true, true)), all(select(vec2<bool>(arg_0.a.a.c, arg_0.a.a.d), arg_1, vec2<bool>(arg_0.a.a.d, true))), _wgslsmith_f_op_f32(f32(-1f) * -1842f) <= _wgslsmith_f_op_f32(-arg_0.a.a.a)), vec4<bool>(!arg_1.x, !arg_1.x & !arg_0.a.a.c, arg_1.x, (global1[_wgslsmith_index_u32(1u, 21u)] == var_0.x) && !arg_0.a.a.c));
    let var_3 = Struct_3(arg_0.a);
    return Struct_1(-364f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.b.x * _wgslsmith_f_op_f32(step(-1056f, var_3.a.a.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_3(vec2<i32>(arg_3, global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec3<f32>(arg_2, 1297f, arg_0.a.a.a)))))), var_3.a.a.d, false);
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    global3 = array<vec2<u32>, 4>();
    global3 = array<vec2<u32>, 4>();
    global0 = array<vec4<i32>, 17>();
    let var_0 = _wgslsmith_f_op_f32(floor(1180f)) >= _wgslsmith_f_op_f32(arg_2.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_1));
    var var_1 = abs(reverseBits(~select(vec4<u32>(arg_0, 18105u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 14635u, arg_0, 1u), vec4<bool>(true, arg_2.d, false, var_0)))) << ((countOneBits((vec4<u32>(u_input.a.x, 4294967295u, arg_0, u_input.a.x) ^ vec4<u32>(25161u, arg_0, 0u, 28974u)) << (vec4<u32>(42583u, 4294967295u, 25799u, 1u) % vec4<u32>(32u))) >> (vec4<u32>(~u_input.a.x >> (firstTrailingBit(78021u) % 32u), arg_0, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u));
    return Struct_3(Struct_2(func_2().a));
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = arg_1.a.a.a;
    let var_2 = ~global1[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(u_input.a.x, 49228u, 1u), ~u_input.a.x, any(!select(vec2<bool>(false, true), vec2<bool>(false, arg_1.a.a.c), vec2<bool>(false, true)))), 21u)];
    let var_3 = Struct_1(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(831f, arg_1.a.a.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.a.b.x, -948f))))), false, true | any(!(!vec4<bool>(arg_1.a.a.d, arg_1.a.a.d, true, true))));
    let var_4 = any(vec2<bool>(func_2().a.d, func_4(Struct_3(arg_1.a), vec2<bool>(var_3.c, all(vec3<bool>(var_3.d, var_3.d, false))), _wgslsmith_f_op_f32(min(403f, arg_1.a.a.b.x)), ~0i).c));
    return Struct_1(-378f, vec2<f32>(_wgslsmith_f_op_f32(-arg_0), var_3.b.x), func_5(select(_wgslsmith_clamp_u32(43765u, ~0u, u_input.a.x & u_input.a.x), 0u, !(1171f != arg_0)), arg_1.a.a.a, var_3, Struct_2(Struct_1(_wgslsmith_div_f32(166f, arg_0), _wgslsmith_f_op_vec2_f32(-var_3.b), var_2 <= var_2, true))).a.a.c, ~countOneBits(u_input.a.x) <= 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) - _wgslsmith_f_op_f32(-159f + -444f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(435f - -223f), _wgslsmith_f_op_f32(trunc(-588f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1246f * _wgslsmith_f_op_f32(min(1637f, 1299f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -910f) - 383f))), func_5(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), 396f, func_4(Struct_3(func_1(Struct_1(-272f, vec2<f32>(-564f, 1000f), true, true))), vec2<bool>(true, select(true, true, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -595f))), 0i), Struct_2(func_4(Struct_3(Struct_2(Struct_1(993f, vec2<f32>(1123f, -221f), true, false))), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), -971f, 1i))));
    let var_1 = func_5(min(1u, ~(~u_input.a.x)), func_6(_wgslsmith_f_op_f32(sign(var_0.b.x)), Struct_3(func_5(4294967295u, -303f, Struct_1(1767f, vec2<f32>(var_0.b.x, -1000f), false, var_0.c), func_5(28510u, var_0.a, var_0, Struct_2(var_0)).a).a)).a, func_4(func_5(u_input.a.x, var_0.b.x, func_1(func_2().a).a, func_5(1u, _wgslsmith_f_op_f32(-var_0.a), var_0, func_1(var_0)).a), select(select(vec2<bool>(true, false), !vec2<bool>(true, var_0.c), select(vec2<bool>(true, var_0.c), vec2<bool>(false, true), vec2<bool>(false, var_0.c))), vec2<bool>(var_0.d, !var_0.c), select(select(vec2<bool>(true, var_0.d), vec2<bool>(var_0.c, true), var_0.c), vec2<bool>(true, true), var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * -168f)), -(5079i << (_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(0u, 4u)], u_input.a) % 32u))), func_2());
    var var_2 = ~abs(countOneBits(~abs(vec3<u32>(u_input.a.x, 1u, 10963u))));
    var var_3 = _wgslsmith_div_vec2_i32(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(12910i, 6796i)), select(vec2<i32>(160i, global1[_wgslsmith_index_u32(var_2.x, 21u)]), _wgslsmith_sub_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(var_2.x, 17u)], -2147483647i), vec2<i32>(-47148i, -1i)), !vec2<bool>(true, var_0.c)), ~vec2<i32>(global1[_wgslsmith_index_u32(var_2.x, 21u)], -1i)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_2.x, 17u)]), vec2<i32>(-34230i, global1[_wgslsmith_index_u32(var_2.x, 21u)]) >> (vec2<u32>(34434u, u_input.a.x) % vec2<u32>(32u))), vec2<i32>(22177i, 1i))), ~vec2<i32>(-3857i, 54377i));
    var_3 = firstTrailingBit(~vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(0u, 17u)], vec4<i32>(var_3.x, global2[_wgslsmith_index_u32(var_2.x, 17u)], 1i, var_3.x)), vec4<i32>(-1i, global1[_wgslsmith_index_u32(54468u, 21u)], -2147483647i, 43481i)), -(i32(-1i) * -2147483647i)));
    var var_4 = Struct_2(Struct_1(var_1.a.a.a, func_6(-1033f, var_1).b, any(!vec2<bool>(false, var_1.a.a.d)), !(!any(vec3<bool>(var_0.c, false, var_0.c)))));
    global2 = array<i32, 17>();
    var var_5 = vec4<bool>(all(!(!vec4<bool>(var_0.c, var_0.c, false, false))), func_4(Struct_3(var_1.a), vec2<bool>(false, var_4.a.c & var_1.a.a.c), func_2().a.b.x, 1i).c, func_4(var_1, !vec2<bool>(var_2.x != 67651u, var_0.d && var_1.a.a.c), -588f, var_3.x).d, false);
    var_3 = vec2<i32>(-32269i, select(-_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.a.x, 21u)] & global1[_wgslsmith_index_u32(var_2.x, 21u)], 2147483647i), ~(-2147483647i), any(select(!vec4<bool>(var_1.a.a.d, true, var_0.d, var_5.x), select(vec4<bool>(false, var_5.x, var_1.a.a.d, false), vec4<bool>(false, var_5.x, var_0.d, var_0.c), var_0.d), var_5.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(select(~var_2.yx, vec2<u32>(0u, 19335u), var_5.ww), vec2<u32>(countOneBits(_wgslsmith_sub_u32(40937u, u_input.a.x)), 0u >> (u_input.a.x % 32u))), _wgslsmith_f_op_f32(select(var_0.a, var_4.a.a, var_0.c)), _wgslsmith_f_op_f32(-var_0.a));
}

