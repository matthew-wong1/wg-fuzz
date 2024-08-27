struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(1633f, -1000f), vec2<f32>(-523f, 2216f), vec2<f32>(507f, -1554f), vec2<f32>(756f, 267f), vec2<f32>(-178f, 351f), vec2<f32>(-497f, 763f), vec2<f32>(359f, -2172f), vec2<f32>(1000f, -1442f), vec2<f32>(1000f, 376f), vec2<f32>(-421f, 781f), vec2<f32>(-1225f, -2506f), vec2<f32>(-118f, 2039f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3) -> i32 {
    var var_0 = ~(-arg_0.wxy);
    var var_1 = arg_1;
    var_1 = any(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, arg_1 != true), true), vec2<bool>(true, all(vec2<bool>(arg_1, arg_1))), vec2<bool>(arg_1, (arg_2.b.x & arg_2.b.x) >= -var_0.x)));
    return 69299i;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: vec4<bool>) -> u32 {
    let var_0 = Struct_2(3191i != func_3(vec4<i32>(-1i, 2147483647i, u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -1i, arg_2, u_input.a), vec4<i32>(-1i, u_input.b, 14969i, -1i))), true, Struct_3(33059i, ~vec3<i32>(1i, -1i, arg_2))), Struct_1(arg_1, vec2<i32>(abs(_wgslsmith_clamp_i32(arg_2, 18110i, u_input.d)), u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), vec2<f32>(927f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + global0[_wgslsmith_index_u32(55308u | arg_1, 20u)]))), arg_2);
    let var_1 = _wgslsmith_div_u32(0u ^ var_0.b.a, ~1u);
    global1 = array<vec2<f32>, 12>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_1, 20u)], var_0.c) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(76627u, 20u)], -1733f), vec2<f32>(global0[_wgslsmith_index_u32(arg_1, 20u)], -974f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_0.d.x) + vec2<f32>(-1510f, var_0.d.x)), arg_3.yx))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.d)) + _wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(1u, 12u)], var_0.d, vec2<bool>(var_0.a, var_0.a)))), var_0.d))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-108f, arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.d, var_0.d, false)))) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0, global0[_wgslsmith_index_u32(var_0.b.a, 20u)])))), _wgslsmith_f_op_f32(f32(-1f) * -869f))));
    var var_3 = vec4<i32>(-u_input.a, _wgslsmith_sub_i32(u_input.d, 1i) & abs(_wgslsmith_div_i32(_wgslsmith_sub_i32(19084i, u_input.c), firstTrailingBit(u_input.d))), -1i, arg_2);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, var_1, ~15860u), abs(1u)), ~vec2<u32>(_wgslsmith_mod_u32(0u, arg_1), 1u)) << (arg_1 % 32u);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> Struct_4 {
    let var_0 = global0[_wgslsmith_index_u32(90477u, 20u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(~44814u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_f_op_f32(f32(-1f) * -1066f), global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 20u)])), 4294967295u, u_input.a, !select(vec4<bool>(arg_2, true, arg_2, true), vec4<bool>(true, false, arg_2, false), vec4<bool>(false, true, arg_2, arg_2))), 20u)]));
    var var_2 = arg_1;
    let var_3 = Struct_1(_wgslsmith_clamp_u32(0u, ~_wgslsmith_mod_u32(1796u, 128345u), max(~4294967295u, ~87096u)) << (func_2(global0[_wgslsmith_index_u32(1u, 20u)], ~1u, 2147483647i & u_input.c, vec4<bool>(!arg_2, true, arg_2, true)) % 32u), min(~arg_1.b.zx, max(arg_0.b.yy, select(-arg_1.b.zy, ~var_2.b.yx, !vec2<bool>(true, arg_2)))));
    var var_4 = vec4<i32>(_wgslsmith_mult_i32(-2147483647i, var_2.a), firstTrailingBit(func_3(max(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -24237i, var_2.a), vec4<i32>(49757i, var_3.b.x, -35787i, arg_1.a)), vec4<i32>(var_2.a, arg_1.a, 19287i, -1i)), true, arg_0)), -16702i, i32(-1i) * -18702i);
    return Struct_4(Struct_1(var_3.a, var_3.b), arg_2);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    let var_0 = any(!select(!select(vec4<bool>(false, arg_0.b, true, arg_0.b), vec4<bool>(true, arg_0.b, arg_0.b, true), true), select(select(vec4<bool>(true, true, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, true, false, arg_0.b), vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b)), select(vec4<bool>(false, true, arg_0.b, false), vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), true), arg_0.b), select(arg_0.b, true, true)));
    global1 = array<vec2<f32>, 12>();
    global1 = array<vec2<f32>, 12>();
    global1 = array<vec2<f32>, 12>();
    let var_1 = select(!vec3<bool>(!var_0, all(vec2<bool>(arg_0.b, true)), true), vec3<bool>(!arg_0.b, any(!select(vec4<bool>(var_0, false, true, false), vec4<bool>(true, var_0, false, true), vec4<bool>(arg_0.b, arg_0.b, var_0, var_0))), var_0), !func_1(Struct_3(0i, vec3<i32>(arg_0.a.b.x, arg_1.a, 12942i)), arg_1, any(select(vec4<bool>(arg_0.b, var_0, arg_0.b, true), vec4<bool>(true, var_0, false, var_0), vec4<bool>(var_0, false, var_0, true)))).b);
    return Struct_1(16768u, arg_0.a.b);
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_4(func_1(Struct_3(_wgslsmith_add_i32(-9619i, _wgslsmith_mult_i32(u_input.a, -7006i)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_3.b.x, 1i, arg_3.b.x), vec3<i32>(-47948i, arg_3.b.x, arg_3.b.x)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.a, 0u, arg_3.a), vec3<u32>(arg_3.a, arg_3.a, 45880u)) % vec3<u32>(32u))), Struct_3(~func_1(Struct_3(u_input.b, vec3<i32>(0i, arg_3.b.x, u_input.b)), Struct_3(u_input.b, vec3<i32>(0i, -2147483647i, arg_3.b.x)), true).a.b.x, -select(vec3<i32>(arg_3.b.x, arg_3.b.x, u_input.d), vec3<i32>(u_input.b, u_input.b, 31137i), arg_2)), true), Struct_3(arg_3.b.x, select(_wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, 2147483647i, u_input.c), vec3<i32>(14124i, arg_3.b.x, u_input.d)), -vec3<i32>(u_input.b, 7886i, -32729i), vec3<bool>(arg_3.b.x == -2147483647i, 0u != arg_3.a, arg_2))));
    var_0 = arg_3;
    var_0 = Struct_1(~var_0.a, _wgslsmith_mod_vec2_i32(var_0.b, func_4(func_1(Struct_3(u_input.d, vec3<i32>(u_input.c, var_0.b.x, arg_3.b.x)), Struct_3(arg_3.b.x, vec3<i32>(13156i, 16522i, -1i)), arg_2), Struct_3(var_0.b.x, countOneBits(vec3<i32>(arg_3.b.x, -2401i, u_input.b)))).b));
    let var_1 = _wgslsmith_div_f32(-1203f, 1077f);
    return Struct_1(~_wgslsmith_mod_u32(~0u, var_0.a), _wgslsmith_sub_vec2_i32(max(vec2<i32>(u_input.a, reverseBits(arg_3.b.x)), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(-2147483647i, 1i), arg_3.b))), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, max(u_input.a, arg_3.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, arg_3.b.x), ~vec2<i32>(-25701i, 45989i)))));
}

fn func_6(arg_0: i32, arg_1: Struct_4, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    global1 = array<vec2<f32>, 12>();
    global0 = array<f32, 20>();
    let var_0 = Struct_4(func_1(Struct_3(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0, -52261i), vec3<i32>(2147483647i, arg_2, 32121i)), vec3<i32>(_wgslsmith_add_i32(u_input.c, 9836i), ~(-40068i), -2147483647i)), Struct_3(select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.b.x, -2147483647i, u_input.c, -39347i), vec4<i32>(-2147483647i, arg_2, u_input.c, 16790i)), -1i, all(vec3<bool>(false, false, arg_1.b))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(16995i, 0i, u_input.a), vec3<i32>(arg_2, arg_1.a.b.x, arg_0), vec3<i32>(25660i, u_input.b, arg_1.a.b.x)), ~vec3<i32>(arg_1.a.b.x, -11415i, 68299i), !vec3<bool>(true, arg_1.b, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, global0[_wgslsmith_index_u32(57044u, 20u)]))) < -117f).a, true);
    var var_1 = max(~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -15090i, -22170i, -2147483647i), vec4<i32>(arg_0, 1i, u_input.c, arg_1.a.b.x)) << (firstTrailingBit(vec4<u32>(68515u, 4294967295u, arg_1.a.a, arg_1.a.a)) % vec4<u32>(32u)), vec4<i32>(~u_input.a, i32(-1i) * -1i, firstTrailingBit(arg_1.a.b.x), arg_1.a.b.x)), vec4<i32>(-1i << (reverseBits(_wgslsmith_mod_u32(var_0.a.a, 55440u)) % 32u), countOneBits(_wgslsmith_clamp_i32(-2147483647i, max(0i, arg_2), -u_input.d)), u_input.d ^ abs(~var_0.a.b.x), ~(-abs(0i))));
    return func_1(Struct_3(0i, ~select(vec3<i32>(arg_0, arg_1.a.b.x, u_input.b), firstLeadingBit(var_1.wyz), var_0.b)), Struct_3(~arg_2, firstTrailingBit(var_1.yxw & var_1.xyy)), any(vec3<bool>(false, true, ~var_0.a.a != 10748u))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 20>();
    var var_0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(~30470u, 45997u, 8227u << (0u % 32u), 1u), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(65111u, 3934u, 1u, 0u), vec4<u32>(0u, 63284u, 3043u, 14406u)), vec4<u32>(48908u, 61495u, 18789u, 4294967295u)), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(15528u, 11336u, 26960u, 1u), vec4<u32>(1u, 4294967295u, 59071u, 43415u), vec4<u32>(114941u, 0u, 27744u, 15907u))))) >> (abs(~_wgslsmith_sub_vec4_u32(~vec4<u32>(45571u, 1u, 0u, 52612u), vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u));
    global1 = array<vec2<f32>, 12>();
    var var_1 = func_6(u_input.c, Struct_4(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 20u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 20u)], global0[_wgslsmith_index_u32(var_0.x, 20u)], -1884f, global0[_wgslsmith_index_u32(var_0.x, 20u)]) * vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 20u)], 1294f, global0[_wgslsmith_index_u32(36908u, 20u)], global0[_wgslsmith_index_u32(38161u, 20u)]))), !select(true, false, true), func_4(func_1(Struct_3(1i, vec3<i32>(u_input.b, u_input.a, u_input.c)), Struct_3(0i, vec3<i32>(-2147483647i, u_input.a, -13029i)), true), Struct_3(18950i, vec3<i32>(2147483647i, u_input.b, 40737i)))), true), -(u_input.c & (i32(-1i) * -u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1132f * 1230f)))), global0[_wgslsmith_index_u32(var_0.x, 20u)]));
    var_0 = ~firstTrailingBit(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(24894u, 0u, var_1.a, 43710u), ~vec4<u32>(var_1.a, 11826u, 9198u, 48809u))));
    let var_2 = !select(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), global0[_wgslsmith_index_u32(30830u, 20u)] > global0[_wgslsmith_index_u32(26028u, 20u)])), select(true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), true && all(vec3<bool>(true, true, false))), true);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~var_1.a), 20u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 20u)], 643f));
    var var_4 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(65044u, 1u, var_0.x, 18766u), reverseBits(~vec4<u32>(var_1.a, var_1.a, 46690u, var_0.x)), vec4<u32>(var_0.x, ~var_0.x, 1u, func_2(global0[_wgslsmith_index_u32(var_0.x, 20u)], var_0.x, var_1.b.x, vec4<bool>(var_2, true, var_2, var_2)))), ~vec4<u32>(var_0.x, ~37469u, var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 68785u, var_1.a, 4294967295u), vec4<u32>(57266u, 48542u, 1u, 0u)))) >> (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(1u, 4294967295u, var_0.x, 0u)), ~vec4<u32>(56745u, 26092u, 99754u, var_1.a)) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(36754u, 95820u, 1u, 0u), vec4<u32>(54366u, 10143u, var_1.a, 18916u)), vec4<u32>(var_0.x, var_1.a, min(0u << (var_1.a % 32u), var_1.a), _wgslsmith_div_u32(~var_1.a, var_1.a >> (1u % 32u)))) % vec4<u32>(32u));
    let var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, var_0.x, ~(~0u), var_0.x, var_4.x);
}

