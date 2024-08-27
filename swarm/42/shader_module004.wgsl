struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(i32(-2147483648), -1i, 2147483647i, i32(-2147483648), -16985i, 56483i, 31710i, 1i, -41214i, -1i, 2147483647i, -961i, -32579i, -20670i, -19061i, 0i, i32(-2147483648), -27372i, 43792i, 0i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> vec3<f32> {
    let var_0 = vec3<bool>(arg_0.x, true, u_input.a > (u_input.a >> (firstTrailingBit(select(1u, 1u, arg_0.x)) % 32u)));
    global0 = array<i32, 20>();
    var var_1 = _wgslsmith_dot_vec3_i32(abs(u_input.b), u_input.b);
    global0 = array<i32, 20>();
    let var_2 = 280f;
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-494f, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), 412f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-815f, var_2, -337f) * vec3<f32>(339f, var_2, 1042f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_2, var_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(226f, var_2, var_2) - vec3<f32>(var_2, -238f, var_2)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 632f, 139f) - vec3<f32>(var_2, var_2, 438f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(491f, -1000f, var_2) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 1020f, -280f) * vec3<f32>(var_2, -966f, var_2))))), var_0))));
}

fn func_4(arg_0: Struct_2) -> bool {
    var var_0 = Struct_4(Struct_3(~vec4<u32>(u_input.a, _wgslsmith_add_u32(33059u, 0u), ~4294967295u, arg_0.b.x), vec2<f32>(-1000f, 1287f), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), !vec4<bool>(true, any(vec2<bool>(false, true)), true, any(vec4<bool>(true, false, false, true))));
    let var_1 = ~vec3<i32>(abs(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_0.a.a.x, 20u)], var_0.a.c)), firstTrailingBit(global0[_wgslsmith_index_u32(~(~arg_0.b.x), 20u)]), i32(-1i) * -15409i);
    var var_2 = arg_0;
    var var_3 = var_0.a.a;
    var_0 = Struct_4(Struct_3(vec4<u32>(1u, 31956u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0.b.x, var_3.x), _wgslsmith_clamp_u32(4294967295u, 0u, 81866u)), ~arg_0.b.x), _wgslsmith_div_vec2_f32(arg_0.a.yx, _wgslsmith_div_vec2_f32(arg_0.a.zy, _wgslsmith_f_op_vec2_f32(-arg_0.a.yz))), i32(-1i) * -11900i), select(!(!var_0.b), var_0.b, _wgslsmith_div_u32(~u_input.a, ~1137u) < (0u << (var_0.a.a.x % 32u))));
    return (~40020u ^ (~_wgslsmith_add_u32(var_2.b.x, var_2.b.x) & ~4294967295u)) != arg_0.b.x;
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> Struct_4 {
    let var_0 = vec4<bool>(arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)) == arg_0.a.b.x, func_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_0.b.xx, arg_1)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1018f, arg_0.a.b.x, arg_0.a.b.x) - vec3<f32>(-1161f, arg_0.a.b.x, arg_0.a.b.x))), vec3<u32>(arg_0.a.a.x, _wgslsmith_mult_u32(u_input.a, 83026u), arg_1))));
    var var_1 = Struct_3(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(~arg_0.a.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.a.x, 1u), vec2<u32>(26026u, 0u)), 51608u, 1u)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 12475u, 1u, 0u), vec4<u32>(arg_1, arg_0.a.a.x, arg_1, 0u)) ^ arg_0.a.a, ~vec4<u32>(4294967295u, arg_0.a.a.x, 1u, 42928u))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(arg_0.a.b.x * 336f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a.b, vec2<f32>(arg_0.a.b.x, 1184f)))))), ~select(min(global0[_wgslsmith_index_u32(~arg_1, 20u)], global0[_wgslsmith_index_u32(0u << (0u % 32u), 20u)]), i32(-1i) * -arg_0.a.c, true));
    var_1 = arg_0.a;
    var var_2 = vec4<bool>(select(~var_1.c == countOneBits(-global0[_wgslsmith_index_u32(u_input.a, 20u)]), false, all(vec3<bool>(var_0.x, arg_0.b.x, !var_0.x))), true, true, true);
    let var_3 = vec2<u32>(_wgslsmith_sub_u32(76460u, _wgslsmith_mult_u32(arg_1, ~u_input.a)) >> (~arg_0.a.a.x % 32u), ~69189u);
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_5) -> Struct_5 {
    global0 = array<i32, 20>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-func_2(arg_2.b, min(abs(countOneBits(1549u)), u_input.a >> (firstTrailingBit(42793u) % 32u))).a.b);
    let var_1 = countOneBits(_wgslsmith_mult_i32(arg_0.a.c, arg_1.x));
    let var_2 = arg_2.b;
    global0 = array<i32, 20>();
    return arg_2;
}

fn func_6(arg_0: Struct_5, arg_1: Struct_3) -> Struct_4 {
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    var var_0 = arg_0.b;
    var var_1 = -var_0.a.c;
    return arg_0.b;
}

fn func_7(arg_0: bool, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec4<i32> {
    var var_0 = Struct_1(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, ~(~4294967295u)), 20u)], true, !arg_1.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-103f, arg_3.x, arg_1.a.b.x))))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1046f), arg_1.a.b.x, _wgslsmith_f_op_f32(-1032f - arg_1.a.b.x)), arg_0))), 0i);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(-950f, arg_3.x, arg_1.a.b.x, _wgslsmith_f_op_f32(-var_0.d.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f) + _wgslsmith_f_op_f32(562f - 2660f))), 652f, -668f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1223f) + _wgslsmith_div_f32(-703f, var_0.d.x))));
    var var_2 = Struct_3(vec4<u32>(u_input.a, u_input.a, select(arg_1.a.a.x, arg_1.a.a.x, false), reverseBits(countOneBits(1u))), _wgslsmith_f_op_vec2_f32(func_2(Struct_4(func_5(Struct_4(arg_1.a, arg_1.b), arg_2.xz, Struct_5(vec2<u32>(u_input.a, 1u), arg_1, vec4<bool>(true, arg_1.b.x, arg_0, var_0.b))).b.a, arg_1.b), _wgslsmith_mod_u32(arg_1.a.a.x, func_5(arg_1, vec2<i32>(1i, var_0.e), Struct_5(arg_1.a.a.yw, Struct_4(arg_1.a, arg_1.b), vec4<bool>(true, true, var_0.b, var_0.b))).a.x)).a.b - _wgslsmith_div_vec2_f32(vec2<f32>(arg_3.x, arg_1.a.b.x), var_1.xx)), select(-_wgslsmith_mod_i32(countOneBits(var_0.a), 0i), ~_wgslsmith_add_i32(~u_input.b.x, arg_1.a.c), true));
    let var_3 = var_2.c;
    let var_4 = _wgslsmith_sub_u32(~(~(~1u)), arg_1.a.a.x);
    return vec4<i32>(40562i, ~arg_1.a.c, 1i, ~_wgslsmith_add_i32(abs(-24060i), 0i)) ^ (-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_0.e, -27343i, 2147483647i), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(100751u, 20u)], -2147483647i, global0[_wgslsmith_index_u32(var_2.a.x, 20u)]) | vec4<i32>(-2147483647i, 466i, 0i, global0[_wgslsmith_index_u32(var_2.a.x, 20u)])) >> (~(~vec4<u32>(4294967295u, 0u, 9929u, 4294967295u)) % vec4<u32>(32u)));
}

fn func_1(arg_0: bool) -> Struct_3 {
    global0 = array<i32, 20>();
    let var_0 = -func_7(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 15438u, 33813u, u_input.a), vec4<u32>(u_input.a, 18671u, 15946u, u_input.a), arg_0), vec4<u32>(u_input.a, u_input.a, 28956u, u_input.a)) > ~firstLeadingBit(68970u), func_6(func_5(func_2(Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<f32>(427f, -2074f), global0[_wgslsmith_index_u32(50969u, 20u)]), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), u_input.a), vec2<i32>(u_input.b.x, 47309i), Struct_5(vec2<u32>(u_input.a, u_input.a), Struct_4(Struct_3(vec4<u32>(u_input.a, 48522u, u_input.a, u_input.a), vec2<f32>(744f, -480f), global0[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<bool>(false, arg_0, arg_0, false)), vec4<bool>(arg_0, false, arg_0, arg_0))), Struct_3(~vec4<u32>(u_input.a, u_input.a, 5403u, 0u), vec2<f32>(2345f, -2700f), -global0[_wgslsmith_index_u32(10665u, 20u)])), -(abs(u_input.b) | firstTrailingBit(u_input.b)), vec2<f32>(2608f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + -1000f), -727f))));
    global0 = array<i32, 20>();
    let var_1 = !func_5(Struct_4(Struct_3(~vec4<u32>(15728u, u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -425f) - vec2<f32>(740f, -1272f)), reverseBits(u_input.b.x)), !func_2(Struct_4(Struct_3(vec4<u32>(u_input.a, 1u, 44985u, 20145u), vec2<f32>(162f, -1978f), -1i), vec4<bool>(arg_0, true, true, false)), 38084u).b), _wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], var_0.x), abs(select(vec2<i32>(var_0.x, -25676i), u_input.b.yx, arg_0))), Struct_5(vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), _wgslsmith_mult_u32(4294967295u, u_input.a)), func_5(Struct_4(Struct_3(vec4<u32>(1u, u_input.a, u_input.a, 20625u), vec2<f32>(-306f, 395f), 0i), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), min(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], -38481i)), func_5(Struct_4(Struct_3(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec2<f32>(-1523f, -2000f), -47102i), vec4<bool>(arg_0, arg_0, false, arg_0)), vec2<i32>(var_0.x, 0i), Struct_5(vec2<u32>(u_input.a, u_input.a), Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, u_input.a, 41967u), vec2<f32>(727f, 715f), 1i), vec4<bool>(true, arg_0, false, true)), vec4<bool>(false, false, true, arg_0)))).b, select(func_6(Struct_5(vec2<u32>(u_input.a, u_input.a), Struct_4(Struct_3(vec4<u32>(u_input.a, 9030u, u_input.a, 1u), vec2<f32>(-522f, -611f), 2147483647i), vec4<bool>(true, false, arg_0, arg_0)), vec4<bool>(true, arg_0, true, true)), Struct_3(vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), vec2<f32>(-458f, -1000f), var_0.x)).b, vec4<bool>(true, arg_0, arg_0, true), func_6(Struct_5(vec2<u32>(0u, u_input.a), Struct_4(Struct_3(vec4<u32>(91921u, u_input.a, 27000u, 1u), vec2<f32>(828f, 1936f), var_0.x), vec4<bool>(false, arg_0, arg_0, arg_0)), vec4<bool>(arg_0, arg_0, true, false)), Struct_3(vec4<u32>(0u, u_input.a, 3066u, 1u), vec2<f32>(-961f, -1391f), 24313i)).b))).b.b.wx;
    var var_2 = reverseBits(select(select(vec2<u32>(4294967295u, 0u), ~(vec2<u32>(0u, 60889u) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))), var_1), vec2<u32>(4294967295u, func_5(func_5(Struct_4(Struct_3(vec4<u32>(4294967295u, 2276u, u_input.a, 9434u), vec2<f32>(569f, 1034f), 2147483647i), vec4<bool>(false, false, true, var_1.x)), u_input.b.yx, Struct_5(vec2<u32>(u_input.a, 20615u), Struct_4(Struct_3(vec4<u32>(u_input.a, 2130u, u_input.a, u_input.a), vec2<f32>(-1516f, 198f), 0i), vec4<bool>(var_1.x, var_1.x, var_1.x, arg_0)), vec4<bool>(true, true, arg_0, true))).b, ~var_0.xy, Struct_5(vec2<u32>(u_input.a, 38442u), Struct_4(Struct_3(vec4<u32>(66429u, u_input.a, u_input.a, u_input.a), vec2<f32>(-1107f, 232f), 0i), vec4<bool>(arg_0, true, arg_0, true)), vec4<bool>(arg_0, arg_0, var_1.x, var_1.x))).a.x), arg_0));
    return func_5(func_2(Struct_4(func_5(Struct_4(Struct_3(vec4<u32>(1u, 4294967295u, var_2.x, var_2.x), vec2<f32>(-795f, -687f), global0[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<bool>(false, false, var_1.x, false)), abs(vec2<i32>(var_0.x, var_0.x)), func_5(Struct_4(Struct_3(vec4<u32>(4294967295u, var_2.x, u_input.a, 4294967295u), vec2<f32>(1522f, -1649f), 10365i), vec4<bool>(arg_0, arg_0, true, false)), vec2<i32>(2147483647i, var_0.x), Struct_5(vec2<u32>(59530u, 0u), Struct_4(Struct_3(vec4<u32>(var_2.x, u_input.a, 1u, var_2.x), vec2<f32>(-599f, 1144f), u_input.b.x), vec4<bool>(var_1.x, arg_0, true, arg_0)), vec4<bool>(arg_0, true, arg_0, arg_0)))).b.a, func_2(func_5(Struct_4(Struct_3(vec4<u32>(4402u, var_2.x, var_2.x, 1u), vec2<f32>(-469f, 1175f), -1914i), vec4<bool>(true, true, var_1.x, arg_0)), vec2<i32>(var_0.x, var_0.x), Struct_5(vec2<u32>(0u, u_input.a), Struct_4(Struct_3(vec4<u32>(1u, 33547u, 122060u, u_input.a), vec2<f32>(696f, -556f), u_input.b.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<bool>(true, var_1.x, false, var_1.x))).b, 0u).b), 1u), countOneBits(_wgslsmith_add_vec2_i32(-vec2<i32>(1i, 1i), vec2<i32>(~global0[_wgslsmith_index_u32(4302u, 20u)], ~var_0.x))), Struct_5(~(~(~vec2<u32>(u_input.a, 1084u))), func_5(func_5(func_5(Struct_4(Struct_3(vec4<u32>(29012u, 14866u, 13109u, var_2.x), vec2<f32>(-1000f, -367f), -1i), vec4<bool>(arg_0, false, var_1.x, arg_0)), vec2<i32>(0i, global0[_wgslsmith_index_u32(var_2.x, 20u)]), Struct_5(vec2<u32>(4294967295u, u_input.a), Struct_4(Struct_3(vec4<u32>(u_input.a, 23110u, 132000u, 1u), vec2<f32>(412f, -295f), var_0.x), vec4<bool>(arg_0, true, true, true)), vec4<bool>(false, true, var_1.x, false))).b, _wgslsmith_mod_vec2_i32(u_input.b.yx, vec2<i32>(-41313i, 11997i)), Struct_5(vec2<u32>(82185u, var_2.x), Struct_4(Struct_3(vec4<u32>(u_input.a, 0u, u_input.a, var_2.x), vec2<f32>(1156f, -145f), 1i), vec4<bool>(var_1.x, var_1.x, true, true)), vec4<bool>(false, false, arg_0, false))).b, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, u_input.b.x), vec2<i32>(global0[_wgslsmith_index_u32(var_2.x, 20u)], var_0.x)), max(u_input.b.xz, vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(10172u, 20u)]))), func_5(func_2(Struct_4(Struct_3(vec4<u32>(12103u, u_input.a, u_input.a, var_2.x), vec2<f32>(337f, -1105f), global0[_wgslsmith_index_u32(var_2.x, 20u)]), vec4<bool>(false, var_1.x, var_1.x, true)), var_2.x), -var_0.xw, func_5(Struct_4(Struct_3(vec4<u32>(96678u, 22960u, 44373u, var_2.x), vec2<f32>(1831f, -1000f), u_input.b.x), vec4<bool>(false, false, false, var_1.x)), var_0.ww, Struct_5(vec2<u32>(91094u, 4294967295u), Struct_4(Struct_3(vec4<u32>(1u, 1u, var_2.x, u_input.a), vec2<f32>(1197f, 1392f), var_0.x), vec4<bool>(false, var_1.x, true, var_1.x)), vec4<bool>(true, false, true, true))))).b, vec4<bool>(all(vec4<bool>(var_1.x, false, true, arg_0)), ~u_input.b.x <= ~global0[_wgslsmith_index_u32(1u, 20u)], true, false))).b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(_wgslsmith_sub_u32(u_input.a ^ u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 56885u, u_input.a, 1u), vec4<u32>(93725u, u_input.a, u_input.a, u_input.a))) == u_input.a), func_2(func_2(Struct_4(func_1(true), vec4<bool>(true, false, true, false)), 4294967295u), (1u >> (func_1(true).a.x % 32u)) | max(~4294967295u, u_input.a)).b);
    let var_1 = Struct_5(~vec2<u32>(select(70506u, _wgslsmith_add_u32(1u, var_0.a.a.x), var_0.b.x), 62968u), func_5(var_0, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-16042i, 1i) | vec2<i32>(global0[_wgslsmith_index_u32(1u, 20u)], var_0.a.c), u_input.b.zz), _wgslsmith_mult_i32(var_0.a.c, 0i)), func_5(var_0, u_input.b.zy, Struct_5(vec2<u32>(u_input.a, var_0.a.a.x), func_2(Struct_4(var_0.a, vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x)), var_0.a.a.x), vec4<bool>(false, false, true, var_0.b.x)))).b, var_0.b);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(~(~62110u), 37129u), countOneBits(_wgslsmith_mod_u32(~75564u, ~var_0.a.a.x))), 1u), 20u)];
    global0 = array<i32, 20>();
    let var_3 = max(var_0.a.a.x, func_1(var_0.b.x).a.x) << (~((select(25151u, 1u, false) >> ((0u << (0u % 32u)) % 32u)) ^ var_1.a.x) % 32u);
    var_2 = firstTrailingBit(1i);
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-181f, var_0.a.b.x, _wgslsmith_f_op_f32(-var_1.b.a.b.x))))), var_0.a.a.xxx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(976f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.a.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b.a.b.x)) - _wgslsmith_f_op_f32(-var_4.a.x)))), ~var_0.a.a.yyz, ~4294967295u, -_wgslsmith_div_i32(83912i, -1i));
}

