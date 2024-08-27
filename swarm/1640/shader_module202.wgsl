struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1230f, 730f, true)) - -954f)), _wgslsmith_div_f32(-688f, _wgslsmith_f_op_f32(ceil(1293f))), true)), !vec3<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))), u_input.b.x <= 1u, true), _wgslsmith_div_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(9445u, 23u)], 2147483647i, u_input.c) ^ vec4<i32>(-12961i, global0[_wgslsmith_index_u32(43355u, 23u)], -19223i, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), -vec4<i32>(1i, 6757i, u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]))), vec4<i32>(~(~u_input.c), -(54120i | u_input.c), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.c) & global0[_wgslsmith_index_u32(0u, 23u)], _wgslsmith_add_i32(-1i, -1i))), 0u);
    let var_1 = abs(_wgslsmith_mod_vec3_u32(u_input.a, ~(select(u_input.a, u_input.a, true) & vec3<u32>(26830u, u_input.b.x, var_0.d))));
    var var_2 = var_0;
    let var_3 = var_0;
    let var_4 = var_3;
    return -1566f;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<f32> {
    var var_0 = ~(-2147483647i);
    let var_1 = _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.d, 24946u), vec2<u32>(1u, arg_2.d)), _wgslsmith_mod_u32(~4294967295u, 18852u | u_input.b.x), 4294967295u, ~u_input.a.x)), abs(min(vec4<u32>(_wgslsmith_mod_u32(1u, arg_3.x), ~5992u, arg_1.d, ~arg_3.x), firstTrailingBit(~vec4<u32>(u_input.a.x, 21037u, arg_2.d, 4294967295u)))));
    var_0 = ~(abs(countOneBits(-34648i) >> (abs(var_1.x) % 32u)) ^ global0[_wgslsmith_index_u32(countOneBits(4294967295u), 23u)]);
    global0 = array<i32, 23>();
    let var_2 = arg_1;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(2364f)), _wgslsmith_f_op_f32(f32(-1f) * -1585f), -309f, _wgslsmith_f_op_f32(abs(1124f))))) + vec4<f32>(var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 1986f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.a + 144f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1167f)) * _wgslsmith_f_op_f32(arg_1.a + arg_2.a)))), vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(692f, var_2.a) + _wgslsmith_f_op_f32(step(-993f, 1227f)))), var_2.a)));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec4<f32> {
    let var_0 = vec3<i32>(u_input.c, -47330i, abs(6097i));
    global0 = array<i32, 23>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1713f * -1281f), vec3<bool>(!any(select(arg_0.b.zx, arg_0.b.xx, arg_0.b.yz)), false, false), firstLeadingBit(_wgslsmith_clamp_vec4_i32(arg_0.c, ~arg_0.c, ~arg_0.c)) >> ((select(_wgslsmith_clamp_vec4_u32(vec4<u32>(18742u, 4294967295u, arg_0.d, arg_0.d), vec4<u32>(33987u, 40286u, 0u, 1u), vec4<u32>(1u, 0u, arg_1, arg_0.d)), ~vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.b.x), arg_0.b.x) >> (vec4<u32>(_wgslsmith_sub_u32(68905u, 0u), abs(arg_0.d), _wgslsmith_add_u32(1u, arg_0.d), arg_1) % vec4<u32>(32u))) % vec4<u32>(32u)), ~u_input.b.x);
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    return _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), arg_0, Struct_1(220f, select(select(vec3<bool>(true, arg_0.b.x, false), !arg_0.b, select(arg_0.b, vec3<bool>(false, var_1.b.x, arg_0.b.x), var_1.b)), !arg_0.b, vec3<bool>(var_1.b.x, arg_0.b.x, false)), var_1.c, abs(_wgslsmith_sub_u32(arg_0.d, 4294967295u >> (u_input.a.x % 32u)))), ~select(select(firstTrailingBit(vec2<u32>(arg_0.d, 0u)), vec2<u32>(1u, arg_1), !arg_0.b.zz), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 6453u), u_input.b) & u_input.b, select(vec2<bool>(true, var_1.b.x), vec2<bool>(arg_0.b.x, false), true))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = array<i32, 23>();
    let var_0 = _wgslsmith_dot_vec4_i32(~vec4<i32>(-arg_1.c.x, u_input.c, ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(60476u, u_input.b.x), 23u)], (i32(-1i) * -70087i) & arg_2.c.x), select(vec4<i32>((u_input.c << (arg_1.d % 32u)) ^ arg_1.c.x, u_input.c, reverseBits(_wgslsmith_add_i32(arg_2.c.x, arg_2.c.x)), ~global0[_wgslsmith_index_u32(4294967295u, 23u)]), max(reverseBits(arg_2.c ^ arg_2.c), vec4<i32>(arg_2.c.x, _wgslsmith_add_i32(0i, -1i), 52199i, ~(-2147483647i))), 1i < u_input.c));
    let var_1 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.c, arg_1.c.x), global0[_wgslsmith_index_u32(119886u, 23u)] << (arg_2.d % 32u)) >> (countOneBits(vec2<u32>(18899u, u_input.b.x)) % vec2<u32>(32u)), vec2<i32>(-1i) * -select(vec2<i32>(var_0, global0[_wgslsmith_index_u32(0u, 23u)]), vec2<i32>(1i, 0i), vec2<bool>(arg_2.b.x, arg_1.b.x)));
    let var_2 = u_input.b;
    var var_3 = countOneBits(vec2<u32>(4294967295u, 55188u));
    return _wgslsmith_f_op_f32(f32(-1f) * -128f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1180f, -747f))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(505f, vec3<bool>(false, false, false), vec4<i32>(global0[_wgslsmith_index_u32(0u, 23u)], u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], u_input.c), 4294967295u), 1u)), Struct_1(591f, vec3<bool>(false, false, false), vec4<i32>(u_input.c, 2147483647i, u_input.c, -2147483647i), u_input.a.x), Struct_1(-843f, vec3<bool>(true, false, false), vec4<i32>(-35120i, global0[_wgslsmith_index_u32(4792u, 23u)], -21170i, -1i), 49080u))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(651f, select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 2147483647i, u_input.c, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), firstLeadingBit(4294967295u)), ~1u)).x * _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(abs(1f))))));
    let var_1 = Struct_1(1147f, !select(vec3<bool>(all(vec3<bool>(false, true, true)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), (u_input.c <= global0[_wgslsmith_index_u32(u_input.b.x, 23u)]) && true), ~vec4<i32>(-_wgslsmith_div_i32(u_input.c, 21399i), countOneBits(u_input.c >> (u_input.a.x % 32u)), ~reverseBits(64795i), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], -1i, u_input.c), vec3<i32>(7489i, 0i, 11536i)))), (u_input.b.x << ((26163u | _wgslsmith_sub_u32(17465u, u_input.b.x)) % 32u)) >> (~4294967295u % 32u));
    global0 = array<i32, 23>();
    var var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(470f, 1202f, var_0, -366f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1250f, -1116f, 412f, 629f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, -593f, var_1.a, var_1.a), vec4<f32>(373f, 404f, 1581f, var_1.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 446f, 2237f)))))), u_input.a, _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_i32(2597i, -var_1.c.x), u_input.a.xx);
}

