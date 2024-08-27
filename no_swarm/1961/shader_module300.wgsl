struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: i32 = -7277i;

var<private> global2: array<vec4<bool>, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(442f + -447f))), 1214f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2190f)))));
    var var_1 = ~vec4<u32>(~0u, ~(22903u >> (1u % 32u)), 72545u, 4294967295u);
    var var_2 = Struct_2(_wgslsmith_dot_vec2_u32(min(vec2<u32>(_wgslsmith_add_u32(1u, 0u), 1u | var_1.x), var_1.xy), var_1.zw), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-108f * 412f)))), false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 1129f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1465f, -906f), vec2<f32>(-1093f, 206f), global0.x))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -917f), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(355f, var_0.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, 249f), vec2<f32>(var_0.x, 884f))), vec2<bool>(false, global0.x))))), !select(!vec2<bool>(false, global0.x), !vec2<bool>(global0.x, false), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), true)))));
    let var_3 = _wgslsmith_f_op_f32(floor(var_2.b));
    var var_4 = _wgslsmith_mult_u32(var_2.a, countOneBits(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a, 48883u, var_1.x, 640u), vec4<u32>(4294967295u, var_1.x, 0u, 5463u)), reverseBits(vec4<u32>(36831u, 28993u, var_2.a, 14647u)))));
    return var_2.d;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: u32) -> vec2<f32> {
    let var_0 = u_input.a;
    let var_1 = 0i;
    global0 = !vec2<bool>(global0.x, true);
    var var_2 = all(vec3<bool>(!global0.x, !global0.x, !any(!vec2<bool>(global0.x, global0.x))));
    global2 = array<vec4<bool>, 17>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, arg_0.x)) * arg_0) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = global0.x;
    let var_1 = !vec2<bool>(_wgslsmith_f_op_f32(floor(-647f)) <= _wgslsmith_f_op_f32(step(-1282f, -1313f)), all(select(!vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, false, true), global0.x), !vec3<bool>(global0.x, true, false))));
    var var_2 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, min(-arg_1.c.x, -1i), _wgslsmith_add_i32(min(arg_3.x, -6899i), arg_3.x), abs(_wgslsmith_dot_vec4_i32(arg_3, vec4<i32>(-2147483647i, 21578i, 2147483647i, u_input.b)))), select(_wgslsmith_div_vec4_i32(arg_3, arg_3 ^ vec4<i32>(1i, 1i, arg_3.x, u_input.a)), -(arg_3 | vec4<i32>(0i, arg_3.x, 2147483647i, 23631i)), select(vec4<bool>(var_1.x, false, var_1.x, false), !global2[_wgslsmith_index_u32(59874u, 17u)], false && global0.x)));
    global1 = _wgslsmith_mod_i32(i32(-1i) * -(~_wgslsmith_dot_vec4_i32(arg_3, vec4<i32>(arg_0.a.x, arg_3.x, 12503i, -1i))), 61315i);
    let var_3 = vec3<f32>(arg_0.b.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1770f)), arg_2.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.b.a, arg_0.b.a))) * arg_1.b.a))));
    return vec4<bool>(true, true, true, true);
}

fn func_2() -> Struct_2 {
    global0 = vec2<bool>(any(func_5(Struct_3(-vec3<i32>(u_input.a, u_input.b, u_input.b), Struct_1(-1000f), vec2<i32>(-5128i, u_input.b), vec3<i32>(23057i, -1i, 38203i)), Struct_3(vec3<i32>(0i, u_input.b, 0i), Struct_1(1920f), -vec2<i32>(0i, -1i), -vec3<i32>(1i, -1i, u_input.a)), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3()), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), 20535u)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 1i, -9550i), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.a, -1i))))), true);
    global0 = vec2<bool>(true, true);
    global0 = !func_5(Struct_3(vec3<i32>(-1i) * -vec3<i32>(6270i, u_input.a, -1032i), Struct_1(_wgslsmith_f_op_f32(step(761f, -837f))), vec2<i32>(~17365i, min(u_input.a, -74393i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2412i, u_input.b, 3103i))), Struct_3(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.a), vec3<i32>(-23663i, u_input.a, -22072i)), -u_input.a), Struct_1(-1154f), ~(vec2<i32>(13706i, -1357i) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, 28407i, u_input.a), abs(vec3<i32>(u_input.b, u_input.a, -2147483647i)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -122f), 1232f) * vec2<f32>(-318f, 823f)), vec4<i32>(u_input.b, 21145i, abs(u_input.a), ~2147483647i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 62819i, u_input.a, u_input.a), -vec4<i32>(u_input.a, -45301i, u_input.b, u_input.b))).xw;
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(0u, ~(~4294967295u), ~1u, 41614u), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, _wgslsmith_add_u32(20252u, 1u), ~25074u, ~16242u)), vec4<u32>(1u, reverseBits(1u), countOneBits(4294967295u), ~135694u), vec4<u32>(~_wgslsmith_mult_u32(0u, 4294967295u), 46589u, abs(1u), firstTrailingBit(4294967295u))));
    global0 = !vec2<bool>(global0.x, true);
    return Struct_2(~4294967295u << (~_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, var_0.x), _wgslsmith_dot_vec4_u32(var_0, var_0)) % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f), _wgslsmith_div_f32(516f, -490f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 955f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-172f)) - -1801f)) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_vec2_f32(func_4(vec2<f32>(-1499f, 396f), var_0, var_0, 38556u)).x, !global0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-486f, -1057f)))), true)), vec2<f32>(_wgslsmith_f_op_f32(754f + 680f), -603f));
}

fn func_6(arg_0: vec4<f32>, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> i32 {
    return _wgslsmith_div_i32(u_input.b ^ ((u_input.b ^ _wgslsmith_add_i32(u_input.b, u_input.b)) >> (0u % 32u)), 2147483647i ^ u_input.b);
}

fn func_7(arg_0: u32, arg_1: bool, arg_2: i32) -> Struct_3 {
    let var_0 = ~1u;
    global1 = ~(min(u_input.a, arg_2) & arg_2);
    let var_1 = ~_wgslsmith_mod_vec4_i32(max(~(~vec4<i32>(u_input.a, arg_2, u_input.a, -2147483647i)), vec4<i32>(37626i, 1414i, arg_2, -69391i) & abs(vec4<i32>(arg_2, arg_2, 2147483647i, arg_2))), max(vec4<i32>(arg_2, arg_2, -2147483647i, u_input.a) & ~vec4<i32>(-11412i, 0i, u_input.b, 1i), _wgslsmith_mult_vec4_i32(-vec4<i32>(arg_2, arg_2, 27232i, u_input.b), firstLeadingBit(vec4<i32>(1953i, 66902i, -2147483647i, -2147483647i)))));
    let var_2 = Struct_3(var_1.xwx, Struct_1(-244f), vec2<i32>(firstLeadingBit(_wgslsmith_clamp_i32(-46946i, var_1.x, 1i)), -27346i ^ func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, 639f, 207f, 229f)), arg_0, arg_0, Struct_2(var_0, -180f, true, vec2<f32>(-1059f, 523f)))), var_1.wzy);
    let var_3 = global0.x;
    return var_2;
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = ~_wgslsmith_add_vec2_i32(~vec2<i32>(~5745i, -arg_0.x), -(~vec2<i32>(49494i, -1i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-248f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(134f - 1000f))), 1008f))));
    var var_2 = func_7(1u, select(false, global0.x, true), _wgslsmith_mod_i32(-func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, 281f, var_1.x) + vec4<f32>(var_1.x, 428f, var_1.x, -734f)), 4294967295u, 44464u, func_2()), -6217i));
    return ~func_2().a;
}

fn func_8(arg_0: u32, arg_1: vec2<bool>, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3()).x - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-949f, _wgslsmith_f_op_f32(-381f + 585f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) * _wgslsmith_f_op_f32(trunc(-935f)))))));
    global2 = array<vec4<bool>, 17>();
    global2 = array<vec4<bool>, 17>();
    global2 = array<vec4<bool>, 17>();
    let var_1 = func_7(~(~(~arg_0 | func_1(vec4<i32>(u_input.b, u_input.b, u_input.a, 1i)))), global0.x, u_input.a).b;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a ^ 1i, u_input.b | max(firstTrailingBit(u_input.a), 0i), ~(-(0i >> (0u % 32u))), u_input.b >> (min(13122u, _wgslsmith_mult_u32(475u, 35173u)) % 32u)), reverseBits(-(~(-vec4<i32>(-38504i, 36086i, 1i, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_8(countOneBits(_wgslsmith_div_u32(_wgslsmith_mult_u32(firstLeadingBit(4294967295u), 0u), func_1(vec4<i32>(u_input.b, -3779i, u_input.b, u_input.b)))), select(!vec2<bool>(true && global0.x, false), vec2<bool>(true, global0.x), select(vec2<bool>(global0.x, false || global0.x), select(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), true), select(vec2<bool>(true, true), vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), !global0.x), all(vec4<bool>(global0.x, false, true, true)))), 62348u << (_wgslsmith_dot_vec2_u32(vec2<u32>(40778u, 0u), vec2<u32>(~1u, 33803u)) % 32u));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1053f, _wgslsmith_f_op_f32(f32(-1f) * -1323f)), _wgslsmith_f_op_f32(ceil(func_7(17274u, true, u_input.b).b.a)), _wgslsmith_f_op_vec2_f32(func_3()).x, -1022f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2769f, _wgslsmith_f_op_f32(round(784f)), _wgslsmith_f_op_f32(min(-211f, 769f)), _wgslsmith_f_op_f32(ceil(-394f))))));
    global1 = ~((-_wgslsmith_clamp_i32(1i, u_input.b, u_input.a) & ~(i32(-1i) * -1i)) >> (20716u % 32u));
    global0 = !vec2<bool>(global0.x, true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(countOneBits(1u), reverseBits(16788u)), _wgslsmith_clamp_u32(37530u, _wgslsmith_sub_u32(~109996u, _wgslsmith_div_u32(94781u, 23320u)), 1u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(var_0.zxw)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-272f, 177f, 1365f), var_0.xyz))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(487f, _wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) - var_0.wy))));
}

