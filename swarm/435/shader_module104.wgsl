struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(1349f, 548f, -1000f, -1000f, -672f, 918f, -1217f, -2020f, 191f);

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(17612i, vec3<i32>(19217i, 22462i, -34596i)), Struct_1(53815i, vec3<i32>(-24088i, 7792i, -19625i)), Struct_1(2147483647i, vec3<i32>(0i, 1i, -47310i)), Struct_1(40283i, vec3<i32>(1i, -27646i, 0i)));

var<private> global3: Struct_1;

var<private> global4: array<vec4<bool>, 31>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> u32 {
    global4 = array<vec4<bool>, 31>();
    global4 = array<vec4<bool>, 31>();
    let var_0 = _wgslsmith_mult_vec3_i32(global3.b << (max(vec3<u32>(1u, u_input.d, u_input.d) & min(vec3<u32>(u_input.d, u_input.a, u_input.a), vec3<u32>(40296u, u_input.a, 22877u)), ~(~vec3<u32>(u_input.a, 4294967295u, u_input.a))) % vec3<u32>(32u)), abs(vec3<i32>(global3.b.x >> (0u % 32u), 2147483647i, -_wgslsmith_add_i32(global3.b.x, 17587i))));
    return u_input.a;
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(u_input.d), ~(u_input.a & (u_input.a << (~u_input.d % 32u)))), 4u)];
    let var_1 = (_wgslsmith_sub_u32(u_input.d, func_3(Struct_1(global3.a, global3.b), -725f, !arg_0.x)) | _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d, u_input.d, 84485u) ^ vec3<u32>(36993u, u_input.d, u_input.d)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(39853u, 1u, u_input.a), vec3<u32>(25039u, u_input.a, 1u)), ~vec3<u32>(u_input.d, u_input.a, 81301u)))) < ~(~(~u_input.d));
    global4 = array<vec4<bool>, 31>();
    global3 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 76604u), vec2<u32>(0u, u_input.a)), u_input.a, u_input.a), firstLeadingBit(79122u), ~_wgslsmith_mult_u32(4003u, u_input.d)), vec3<u32>(u_input.a, _wgslsmith_add_u32(~u_input.a, u_input.a), u_input.d)), 4u)];
    global1 = array<Struct_1, 14>();
    return var_0.a;
}

fn func_1() -> i32 {
    var var_0 = ~24932u;
    let var_1 = vec2<f32>(global0[_wgslsmith_index_u32(0u << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.d, 26298u), 97618u) % 32u), 9u)], 1f);
    var var_2 = 1i;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4333u, 9u)])) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-535f)))));
    var var_4 = Struct_1(~global3.b.x | global3.a, vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(24431i, -global3.a), global3.b.x), u_input.b, func_2(global4[_wgslsmith_index_u32(1u, 31u)])));
    return -2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = 2058f;
    global0 = array<f32, 9>();
    global3 = Struct_1(abs(-36975i), vec3<i32>(_wgslsmith_mod_i32(46988i, arg_0.a), -(i32(-1i) * -61163i) << (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 54973u, 27101u, u_input.a), vec4<u32>(arg_1, u_input.d, 1u, 4294967295u))) % 32u), 0i));
    var var_1 = vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.b.x, 1i), vec3<i32>(global3.a, -2147483647i, 2147483647i))), u_input.b << (~(100918u & arg_1) % 32u), u_input.c.x, firstLeadingBit(arg_0.b.x ^ ~58073i)) >> (~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, arg_1, 38090u, 0u) ^ vec4<u32>(0u, u_input.a, u_input.d, 4294967295u), vec4<u32>(u_input.d, arg_1, u_input.a, arg_1) >> (vec4<u32>(0u, u_input.d, u_input.a, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var_1 = ~select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, arg_0.b.x, var_1.x, arg_0.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c.x, -26808i, global3.a), vec4<i32>(u_input.b, 25841i, 0i, 2147483647i)), vec4<i32>(40090i, 1i, global3.a, u_input.b) | vec4<i32>(arg_0.a, 1i, var_1.x, global3.a)), ~select(vec4<i32>(1i, arg_0.b.x, 34881i, -1i), vec4<i32>(-385i, -1i, 0i, 0i), false), true) << (select(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, u_input.d, 1u, arg_1), firstLeadingBit(vec4<u32>(0u, 0u, 1u, 0u))), vec4<u32>(49971u, u_input.a, 4294967295u, arg_1) | vec4<u32>(0u, arg_1, 65364u, u_input.a), ~firstTrailingBit(vec4<u32>(arg_1, 24240u, 50535u, u_input.a))), max(~firstTrailingBit(vec4<u32>(39777u, 0u, 56764u, u_input.d)), select(vec4<u32>(33318u, 4294967295u, u_input.d, 1u), vec4<u32>(u_input.a, 4294967295u, u_input.d, u_input.d), vec4<bool>(true, false, false, false)) & vec4<u32>(u_input.d, u_input.d, 17533u, arg_1)), !global4[_wgslsmith_index_u32(arg_1, 31u)]) % vec4<u32>(32u));
    return global2[_wgslsmith_index_u32(arg_1, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_4(Struct_1(-func_1(), -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, u_input.b, 2147483647i), firstTrailingBit(vec3<i32>(39156i, global3.b.x, global3.a)))), min(_wgslsmith_mult_u32(max(firstLeadingBit(u_input.d), ~31171u), ~u_input.a), u_input.d));
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(51498u, u_input.d, u_input.a, u_input.d)), ~(~vec4<u32>(1u, 24919u, 84254u, 81852u))), vec4<u32>(~1u, ~min(4294967295u, 23759u), u_input.a, ~_wgslsmith_mult_u32(55143u, 12566u))) < u_input.d;
    global4 = array<vec4<bool>, 31>();
    var var_3 = func_4(Struct_1(u_input.c.x, ~vec3<i32>(-28102i, -var_1.b.x, 1i)), 34357u);
    let x = u_input.a;
    s_output = StorageBuffer(-31362i, vec3<u32>(_wgslsmith_clamp_u32(u_input.d, u_input.d << (firstTrailingBit(45676u) % 32u), u_input.d & _wgslsmith_mult_u32(1u, 10451u)), u_input.d, ~select(u_input.a, _wgslsmith_mod_u32(4946u, u_input.a), any(vec2<bool>(true, true)))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, ~u_input.a), 9u)], ~(func_2(select(global4[_wgslsmith_index_u32(u_input.a, 31u)], global4[_wgslsmith_index_u32(4294967295u, 31u)], false)) | 1i));
}

