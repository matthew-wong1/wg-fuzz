struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

var<private> global1: array<bool, 9>;

var<private> global2: Struct_2 = Struct_2(1u, false, -31053i, 14114u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<vec3<u32>, 1>();
    var var_0 = -abs(u_input.e);
    let var_1 = _wgslsmith_mod_i32(17094i, _wgslsmith_mult_i32(~(~(-global2.c)), _wgslsmith_sub_i32(-17220i, global2.c)));
    return _wgslsmith_f_op_f32(848f - -296f);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec2<u32>) -> u32 {
    global1 = array<bool, 9>();
    let var_0 = Struct_2(min(min(select(~1u, 75u, any(vec4<bool>(global1[_wgslsmith_index_u32(14473u, 9u)], global1[_wgslsmith_index_u32(arg_2.x, 9u)], false, global2.b))), _wgslsmith_add_u32(70829u, 1u)), _wgslsmith_mult_u32(~0u, _wgslsmith_add_u32(countOneBits(arg_2.x), abs(arg_0)))), false, ~min(global2.c, firstTrailingBit(-22365i)), _wgslsmith_div_u32(arg_0, arg_2.x));
    return ((0u | _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global2.a, arg_0, arg_2.x, 54792u)), vec4<u32>(4618u, 0u, 6739u, global2.a))) & max(12112u, _wgslsmith_add_u32(~20495u, _wgslsmith_mult_u32(37531u, arg_0)))) >> (arg_2.x % 32u);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = select(!vec2<bool>(global2.b, true), vec2<bool>(~(~1u) < arg_0, global2.b), false);
    var var_1 = func_4(~(_wgslsmith_mult_u32(u_input.c.x, ~22009u) | u_input.c.x), _wgslsmith_div_f32(-912f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-131f, _wgslsmith_f_op_f32(max(409f, -873f)), !global2.b)), _wgslsmith_f_op_f32(func_3(Struct_1(arg_2.zyw, 4294967295u)))))), min(reverseBits(u_input.c.xy), vec2<u32>(min(4294967295u, 4294967295u), ~_wgslsmith_mult_u32(16518u, 34968u))));
    let var_2 = Struct_2(~4294967295u, !(true || !global2.b), -3961i, 13498u);
    var var_3 = Struct_1(reverseBits(arg_2.zww), 0u);
    let var_4 = Struct_2(~(~(u_input.c.x >> (70416u % 32u))), -738f > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-919f * _wgslsmith_div_f32(-266f, 414f)))), ~u_input.e.x, _wgslsmith_sub_u32(34886u, countOneBits(abs(~arg_0))));
    return Struct_2(~_wgslsmith_sub_u32(~36736u, ~global2.a) | (_wgslsmith_clamp_u32(var_3.b & u_input.b.x, 4294967295u ^ var_3.b, _wgslsmith_add_u32(var_4.a, 56093u)) >> (~min(4294967295u, var_4.a) % 32u)), false, ~abs(abs(var_2.c)) & arg_2.x, 4294967295u);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_1 {
    global0 = array<vec3<u32>, 1>();
    global1 = array<bool, 9>();
    let var_0 = func_2(global2.a, u_input.a, _wgslsmith_sub_vec4_i32(-firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, 10864i, global2.c, -11712i), vec4<i32>(994i, -2147483647i, arg_2.x, u_input.a.x))), _wgslsmith_mult_vec4_i32(select(vec4<i32>(global2.c, u_input.a.x, arg_2.x, u_input.e.x), vec4<i32>(global2.c, -2147483647i, u_input.e.x, 1i), false), vec4<i32>(-2147483647i, u_input.a.x, -27879i, global2.c)) << (u_input.b % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(397f, arg_0, arg_0, arg_0), vec4<f32>(arg_0, 788f, arg_0, -1953f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(203f, arg_0, arg_0, 1814f) - vec4<f32>(arg_0, 1586f, arg_0, arg_0))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(711f, arg_0, -849f, arg_0), vec4<f32>(-654f, arg_0, 1361f, 405f))))))));
    var var_2 = _wgslsmith_dot_vec3_u32(max(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 18702u, 4294967295u), 1u)] | vec3<u32>(4294967295u, 4294967295u, u_input.c.x), firstTrailingBit(firstTrailingBit(u_input.b.wxx))), ~(~(~global0[_wgslsmith_index_u32(4294967295u, 1u)]))) > ~u_input.c.x;
    return Struct_1(select(firstLeadingBit(select(-vec3<i32>(var_0.c, arg_2.x, global2.c), -vec3<i32>(-3797i, -53560i, -1i), select(arg_1, vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(global2.a, 9u)], false), vec3<bool>(false, false, global1[_wgslsmith_index_u32(1u, 9u)])))), vec3<i32>(63604i, ~0i, 24356i) >> (global0[_wgslsmith_index_u32(var_0.d, 1u)] % vec3<u32>(32u)), any(arg_1)), _wgslsmith_sub_u32(95756u, _wgslsmith_div_u32(var_0.a, abs(0u))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_2(arg_1.b, -_wgslsmith_mod_vec2_i32(firstLeadingBit(u_input.a), -arg_1.a.zz), -(~(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 0i, -2147483647i, u_input.e.x), vec4<i32>(0i, -4782i, -2147483647i, 28062i)))));
    var_0 = func_2(~_wgslsmith_sub_u32(0u, ~global2.a) >> (0u % 32u), _wgslsmith_add_vec2_i32(func_1(arg_0.x, select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 9u)], var_0.b, global2.b), vec3<bool>(global1[_wgslsmith_index_u32(arg_1.b, 9u)], true, false), vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.d, 9u)], false)), vec3<bool>(false, var_0.b, global2.b), all(vec2<bool>(global2.b, false))), select(firstLeadingBit(vec2<i32>(-9581i, u_input.e.x)), arg_1.a.xy, true)).a.zx, _wgslsmith_clamp_vec2_i32(u_input.e.yz >> (vec2<u32>(1u, arg_1.b) % vec2<u32>(32u)), u_input.a, vec2<i32>(arg_1.a.x, arg_1.a.x)) << (vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(arg_1.b, arg_1.b)) % vec2<u32>(32u))), ~(~countOneBits(select(vec4<i32>(-31573i, -2147483647i, 2147483647i, arg_1.a.x), vec4<i32>(u_input.e.x, -9905i, 33395i, -4386i), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], false, true, var_0.b)))));
    var_0 = func_2(var_0.a, _wgslsmith_div_vec2_i32(u_input.e.xz, vec2<i32>(_wgslsmith_sub_i32(u_input.a.x << (u_input.c.x % 32u), arg_1.a.x), -1i)), vec4<i32>(select(_wgslsmith_mult_i32(u_input.a.x, arg_1.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c, -2147483647i), vec2<i32>(u_input.e.x, -1i)), func_1(arg_0.x, vec3<bool>(global2.b, global2.b, true), u_input.e.xz).a.zy), false), ~_wgslsmith_mod_i32(0i << (global2.d % 32u), -67000i), -u_input.a.x, abs(select(global2.c, global2.c, select(false, global1[_wgslsmith_index_u32(u_input.b.x, 9u)], global1[_wgslsmith_index_u32(var_0.d, 9u)])))));
    var_0 = func_2(~(~(reverseBits(0u) ^ _wgslsmith_clamp_u32(1u, 103459u, u_input.c.x))), abs(~vec2<i32>(-1i, arg_1.a.x)), select(vec4<i32>(~(~1i), 1i | global2.c, _wgslsmith_mult_i32(~(-2147483647i), u_input.a.x), _wgslsmith_sub_i32(1i, ~7938i)), vec4<i32>((22789i << (arg_1.b % 32u)) | abs(8702i), var_0.c, _wgslsmith_sub_i32(9347i, global2.c), -15730i), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 9u)])))));
    var var_1 = select(select(!vec3<bool>(!global2.b, true, all(vec4<bool>(true, var_0.b, true, var_0.b))), select(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(global2.a, 9u)]), vec3<bool>(var_0.b, global1[_wgslsmith_index_u32(1u, 9u)], false), true || global2.b), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], var_0.b, var_0.b), true), !select(global1[_wgslsmith_index_u32(var_0.d, 9u)], all(vec4<bool>(true, global1[_wgslsmith_index_u32(71920u, 9u)], true, false)), true)), !vec3<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(global2.d, 9u)], false, false)), -3431i == ~u_input.a.x), select(vec3<bool>(865f >= _wgslsmith_f_op_f32(-arg_0.x), !any(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 9u)])), global2.b), select(vec3<bool>(true, global2.b & false, global2.b), select(!vec3<bool>(var_0.b, true, false), vec3<bool>(true, false, true), !vec3<bool>(false, false, global2.b)), !(!vec3<bool>(var_0.b, global2.b, true))), -415f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), -186f)));
    return func_1(-350f, vec3<bool>(31383i < _wgslsmith_dot_vec2_i32(select(u_input.a, arg_1.a.yz, var_1.zy), vec2<i32>(arg_1.a.x, var_0.c)), var_0.b, any(select(vec4<bool>(var_1.x, false, global1[_wgslsmith_index_u32(var_0.d, 9u)], false), vec4<bool>(true, true, var_1.x, var_1.x), select(vec4<bool>(global1[_wgslsmith_index_u32(27807u, 9u)], var_1.x, var_0.b, var_1.x), vec4<bool>(global1[_wgslsmith_index_u32(global2.a, 9u)], global2.b, true, true), vec4<bool>(true, true, false, true))))), u_input.e.zy);
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    var var_0 = !select(vec4<bool>(select(true, any(vec4<bool>(global1[_wgslsmith_index_u32(88484u, 9u)], true, global2.b, false)), true && global2.b), !all(vec4<bool>(true, global2.b, global2.b, global1[_wgslsmith_index_u32(0u, 9u)])), any(vec4<bool>(false, true, global2.b, false)), false), vec4<bool>(!any(vec4<bool>(true, global1[_wgslsmith_index_u32(global2.a, 9u)], false, global2.b)), global1[_wgslsmith_index_u32(min(74912u, arg_0.b), 9u)], any(select(vec4<bool>(global2.b, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(arg_0.b, 9u)], true), vec4<bool>(global2.b, true, true, global1[_wgslsmith_index_u32(u_input.c.x, 9u)]), vec4<bool>(global2.b, true, false, global1[_wgslsmith_index_u32(137801u, 9u)]))), global1[_wgslsmith_index_u32(~arg_0.b, 9u)]), all(vec3<bool>(true, !global1[_wgslsmith_index_u32(28811u, 9u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.d, 4294967295u, arg_0.b), 9u)])));
    let var_1 = vec3<u32>(arg_0.b >> (_wgslsmith_mult_u32(u_input.b.x & global2.d, global2.a) % 32u), _wgslsmith_mod_u32(_wgslsmith_add_u32(global2.a, ~(~2672u)), 16663u), countOneBits(select(_wgslsmith_div_u32(global2.d, arg_0.b), 96559u, any(!vec2<bool>(false, var_0.x)))));
    var var_2 = global2.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(400f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 936f, _wgslsmith_f_op_f32(-891f - -1188f)) - vec4<f32>(1f, 1f, 1f, 1f))))));
    var_0 = vec4<bool>(global2.b, var_0.x, all(!select(vec3<bool>(global2.b, true, false), var_0.yzz, var_0.xxw)) | true, any(select(var_0.yxw, !vec3<bool>(true, var_0.x, false), var_0.wxw)));
    return Struct_2(1u, all(vec2<bool>(false, true)), i32(-1i) * -2147483647i, _wgslsmith_div_u32(_wgslsmith_add_u32(13072u, 1u) | func_4(3649u, var_3.x, var_1.zz), min(firstLeadingBit(4126u), abs(103112u))) << (func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3 + var_3)), arg_0).b % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-859f, -1000f)), -1851f, false)), -1196f, -1139f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-628f)), -946f)), func_1(-1134f, vec3<bool>(global2.b | true, !global2.b, all(vec2<bool>(true, false))), vec2<i32>(global2.c, -369i) & (u_input.e.xx & vec2<i32>(-2147483647i, 1i)))));
    var var_1 = func_6(func_5(vec4<f32>(_wgslsmith_f_op_f32(func_3(func_5(vec4<f32>(-528f, 2310f, -1156f, 773f), Struct_1(u_input.e, u_input.c.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1172f)))), _wgslsmith_f_op_f32(682f * _wgslsmith_f_op_f32(trunc(-1361f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(734f, -1000f))), func_5(vec4<f32>(_wgslsmith_f_op_f32(round(-136f)), 239f, -2000f, _wgslsmith_f_op_f32(-340f * -517f)), Struct_1(vec3<i32>(global2.c, -18621i, 23567i), 4294967295u << (global2.d % 32u)))));
    global0 = array<vec3<u32>, 1>();
    global0 = array<vec3<u32>, 1>();
    global0 = array<vec3<u32>, 1>();
    global0 = array<vec3<u32>, 1>();
    let var_2 = _wgslsmith_f_op_f32(func_3(Struct_1(firstTrailingBit(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e.x, global2.c, u_input.e.x), u_input.e)), 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(139f, vec4<f32>(var_2, var_2, var_2, -486f), func_1(645f, !select(!vec3<bool>(var_0.b, false, var_0.b), !vec3<bool>(false, false, var_0.b), global2.b), ((vec2<i32>(0i, var_0.c) >> (u_input.b.zx % vec2<u32>(32u))) << ((u_input.c.xy & u_input.c.yx) % vec2<u32>(32u))) ^ u_input.e.yz).a.x);
}

